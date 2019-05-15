<?php

namespace backend\modules\P3S\modules\Inventory\modules\Untrack\modules\DeliveryNote\controllers;

use backend\models\c2\form\WarehouseItemSendForm;
use common\models\c2\entity\InventoryDeliveryNoteModel;
use common\models\c2\search\InventoryDeliveryNoteSearch;
use common\models\c2\statics\InventoryExeState;
use cza\base\components\controllers\backend\ModelController as Controller;
use Yii;
use yii\helpers\ArrayHelper;
use yii\web\NotFoundHttpException;

/**
 * Default controller for the `delivery-note` module
 */
class DefaultController extends Controller
{
    public $modelClass = 'common\models\c2\entity\InventoryDeliveryNoteModel';

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
        $searchModel = new InventoryDeliveryNoteSearch();
        $searchModel->state = InventoryExeState::UNTRACK;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'model' => $this->retrieveModel(),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }
    public function actionEdit($id = null)
    {
        $noteModel = $this->retrieveModel($id);
        $model = new WarehouseItemSendForm(['entityModel' => $noteModel, 'items' => $noteModel->warehouseSendItems]);
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
