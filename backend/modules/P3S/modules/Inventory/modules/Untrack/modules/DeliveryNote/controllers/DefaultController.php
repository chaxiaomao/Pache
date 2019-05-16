<?php

namespace backend\modules\P3S\modules\Inventory\modules\Untrack\modules\DeliveryNote\controllers;

use backend\models\c2\form\WarehouseItemSendForm;
use common\models\c2\entity\InventoryDeliveryNoteModel;
use common\models\c2\search\InventoryDeliveryNoteSearch;
use common\models\c2\statics\InventoryExeState;
use cza\base\components\controllers\backend\ModelController as Controller;
use cza\base\models\statics\ResponseDatum;
use Yii;
use yii\helpers\ArrayHelper;
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
        $searchModel->state = InventoryExeState::UNTRACK;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'model' => $this->retrieveModel(),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionNoteCommit($id)
    {
        try {
            $model = $this->retrieveModel($id);
            if ($model) {
                if ($model->state == InventoryExeState::UNTRACK) {
                    if ($model->commitWarehouseItems()) {
                        $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
                    } else {
                        $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!')], $id);
                    }
                } else {
                    $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('app.c2', 'The note state has been change, pls reload.')], $id);
                }
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!')], $id);
            }
        } catch (\Exception $ex) {
            $responseData = ResponseDatum::getErrorDatum(['message' => $ex->getMessage()], $id);
        }

        return $this->asJson($responseData);
    }

}
