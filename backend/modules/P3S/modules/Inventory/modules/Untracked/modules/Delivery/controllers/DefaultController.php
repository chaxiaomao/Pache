<?php

namespace backend\modules\P3S\modules\Inventory\modules\Untracked\modules\Delivery\controllers;

use backend\models\c2\form\WarehouseDeliveryCommitForm;
use common\models\c2\entity\InventoryDeliveryNoteModel;
use common\models\c2\entity\WarehouseDeliveryCommitItemModel;
use common\models\c2\search\InventoryDeliveryNoteSearch;
use common\models\c2\statics\InventoryExeState;
use cza\base\models\statics\ResponseDatum;
use Yii;
use cza\base\components\controllers\backend\ModelController as Controller;
use yii\web\NotFoundHttpException;

/**
 * Default controller for the `delivery-note` module
 */
class DefaultController extends Controller
{

    public $modelClass = 'common\models\c2\entity\InventoryDeliveryNoteModel';

    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new InventoryDeliveryNoteSearch();
        $searchModel->state = InventoryExeState::UNTRACKED;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'model' => $this->retrieveModel(),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionFinish()
    {
        $searchModel = new InventoryDeliveryNoteSearch();
        $searchModel->state = InventoryExeState::FINISH;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'model' => $this->retrieveModel(),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionCheck($id = null)
    {
        $model = $this->retrieveModel($id);
        $form = new WarehouseDeliveryCommitForm();

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
                $model->commit();
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
        if (($model = WarehouseDeliveryCommitItemModel::findOne($id)) !== null) {
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
     * @return InventoryDeliveryNoteModel the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = InventoryDeliveryNoteModel::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
