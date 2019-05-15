<?php

namespace backend\modules\P3S\modules\Inventory\modules\ReceiptNote\controllers;

use common\models\c2\entity\InventoryReceiptNoteItemModel;
use common\models\c2\statics\InventoryExeState;
use cza\base\models\statics\ResponseDatum;
use Yii;
use common\models\c2\entity\InventoryReceiptNoteModel;
use common\models\c2\search\InventoryReceiptNoteSearch;

use cza\base\components\controllers\backend\ModelController as Controller;
use yii\helpers\ArrayHelper;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * DefaultController implements the CRUD actions for InventoryReceiptNoteModel model.
 */
class DefaultController extends Controller
{
    public $modelClass = 'common\models\c2\entity\InventoryReceiptNoteModel';

    public function actions()
    {
        return ArrayHelper::merge(parent::actions(), [
            'product' => [
                'class' => 'common\components\actions\ProductOptionsAction',
            ],
        ]);
    }
    
    /**
     * Lists all InventoryReceiptNoteModel models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new InventoryReceiptNoteSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'model' => $this->retrieveModel(),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single InventoryReceiptNoteModel model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        $this->layout = '/print_modal';
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * create/update a InventoryReceiptNoteModel model.
     * fit to pajax call
     * @return mixed
     */
    public function actionEdit($id = null) 
    {
        $model = $this->retrieveModel($id);
        
        if ($model->load(Yii::$app->request->post())) {
            if ($model->save()) {
                Yii::$app->session->setFlash($model->getMessageName(), [Yii::t('app.c2', 'Saved successful.')]);
            } else {
                Yii::$app->session->setFlash($model->getMessageName(), $model->errors);
            }
        }
        $model->loadItems();
        return (Yii::$app->request->isAjax) ? $this->renderAjax('edit', [ 'model' => $model,]) : $this->render('edit', [ 'model' => $model,]);
    }
    
    /**
     * Finds the InventoryReceiptNoteModel model based on its primary key value.
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

    public function actionNoteConfirm($id)
    {
        try {
            $model = $this->retrieveModel($id);
            if ($model) {
                $model->setStateToUntrack();
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!')], $id);
            }
        } catch (\Exception $ex) {
            $responseData = ResponseDatum::getErrorDatum(['message' => $ex->getMessage()], $id);
        }

        return $this->asJson($responseData);
    }

    public function actionNoteCancel($id)
    {
        try {
            $model = $this->retrieveModel($id);
            if ($model && $model->state != InventoryExeState::FINISH) {
                $model->setStateToCancel();
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'The note state has been change, pls reload.')], $id);
            }
        } catch (\Exception $ex) {
            $responseData = ResponseDatum::getErrorDatum(['message' => $ex->getMessage()], $id);
        }

        return $this->asJson($responseData);
    }

    public function actionNoteInit($id)
    {
        try {
            $model = $this->retrieveModel($id);
            if ($model) {
                $model->setStateToInit();
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!')], $id);
            }
        } catch (\Exception $ex) {
            $responseData = ResponseDatum::getErrorDatum(['message' => $ex->getMessage()], $id);
        }

        return $this->asJson($responseData);
    }

    public function actionDeleteSubitem($id)
    {

        if (($model = InventoryReceiptNoteItemModel::findOne($id)) !== null) {
            if ($model->delete()) {
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!!')], $id);
            }
        }
        return $this->asJson($responseData);
    }

}
