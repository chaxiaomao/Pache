<?php

namespace backend\modules\P3S\modules\Inventory\modules\ReceiptNote\modules\Untracked\controllers;

use common\models\c2\entity\InventoryReceiptNoteModel;
use common\models\c2\entity\WarehouseCommitItemModel;
use common\models\c2\search\InventoryReceiptNoteSearch;
use cza\base\components\controllers\backend\ModelController as Controller;
use cza\base\models\statics\ResponseDatum;
use Yii;
use yii\web\NotFoundHttpException;

/**
 * Default controller for the `untracked` module
 */
class DefaultController extends Controller
{

    public $modelClass = 'common\models\c2\entity\InventoryReceiptNoteModel';
    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new InventoryReceiptNoteSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('untracked', [
            'model' => $this->retrieveModel(),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    public function actionUntracked()
    {
        $searchModel = new InventoryReceiptNoteSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('untracked', [
            'model' => $this->retrieveModel(),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionCheck($id = null)
    {
        $model = $this->retrieveModel($id);
        $form = new WarehouseReceiptCommitForm();

        if ($form->load(Yii::$app->request->post())) {
            $form->entityModel = $model;
            if ($form->save()) {
                Yii::$app->session->setFlash($form->getMessageName(), [Yii::t('app.c2', 'Saved successful.')]);
            } else {
                Yii::$app->session->setFlash($form->getMessageName(), $form->errors);
            }
        }

        $model->loadCommitItems();
        return (Yii::$app->request->isAjax) ? $this->renderAjax('_commit_form', ['model' => $model,]) : $this->render('_commit_form', ['model' => $model,]);
    }

    public function actionCommit($id = null)
    {
        try {
            $model = $this->retrieveModel($id);
            if ($model) {
                $model->commitWarehouseReceiptItem();
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!')], $id);
            }
        } catch (\Exception $ex) {
            $responseData = ResponseDatum::getErrorDatum(['message' => $ex->getMessage()], $id);
        }

        return $this->asJson($responseData);
    }

    public function actionDeleteCommitSubitem($id)
    {
        if (($model = WarehouseCommitItemModel::findOne($id)) !== null) {
            if ($model->delete()) {
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!')], $id);
            }
        } else {
            $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('app.c2', 'Error: Model not found!')], $id);
        }
        return $this->asJson($responseData);
    }

    /**
     * Finds the InventoryReceiptNote model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return InventoryReceiptNoteModel the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = InventoryReceiptNoteModel::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }


}
