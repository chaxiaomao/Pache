<?php

namespace backend\modules\P3S\modules\Inventory\modules\Untrack\modules\ReceiptNote\controllers;

use backend\models\c2\form\WarehouseItemCommitForm;
use common\models\c2\entity\InventoryReceiptNoteModel;
use common\models\c2\entity\WarehouseCommitItemModel;
use common\models\c2\search\InventoryReceiptNoteSearch;
use common\models\c2\statics\InventoryExeState;
use cza\base\components\controllers\backend\ModelController as Controller;
use cza\base\models\statics\ResponseDatum;
use Yii;
use yii\helpers\ArrayHelper;
use yii\web\NotFoundHttpException;

/**
 * Default controller for the `receipt-note` module
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
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        $searchModel = new InventoryReceiptNoteSearch();
        $searchModel->state = InventoryExeState::UNTRACK;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'model' => $this->retrieveModel(),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionView($id)
    {
        $this->layout = '/print_modal';
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    public function actionEdit($id = null)
    {
        $noteModel = $this->retrieveModel($id);
        $model = new WarehouseItemCommitForm(['entityModel' => $noteModel, 'items' => $noteModel->warehouseCommitItems]);
        if ($model->load(Yii::$app->request->post())) {
            if ($model->save()) {
                Yii::$app->session->setFlash($model->getMessageName(), [Yii::t('app.c2', 'Saved successful.')]);
            } else {
                Yii::$app->session->setFlash($model->getMessageName(), $model->errors);
            }
        }

        return (Yii::$app->request->isAjax) ? $this->renderAjax('checkout_form', [ 'model' => $model,]) : $this->render('checkout_form', [ 'model' => $model,]);
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

    public function actionNoteCommit($id)
    {

        $model = $this->findModel($id);
        if ($model->state == InventoryExeState::UNTRACK) {
            if ($model->commitWarehouseItems()) {
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!!')], $id);
            }
        } else {
            $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!!')], $id);
        }
        return $this->asJson($responseData);
    }

    public function actionDeleteSubitem($id)
    {

        if (($model = WarehouseCommitItemModel::findOne($id)) !== null) {
            if ($model->inventoryReceiptNote->state == InventoryExeState::UNTRACK) {
                if ($model->delete()) {
                    $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
                } else {
                    $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!!')], $id);
                }
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('app.c2', 'The note state has been change, pls reload.')], $id);
            }
        } else {
            $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('app.c2', 'The note state has been change, pls reload.')], $id);
        }
        return $this->asJson($responseData);
    }

}
