<?php

namespace backend\modules\P3S\modules\Inventory\modules\Untrack\modules\DeliveryNote\controllers;

use common\models\c2\search\InventoryDeliveryNoteSearch;
use common\models\c2\statics\InventoryExeState;
use cza\base\components\controllers\backend\ModelController as Controller;
use Yii;

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
}
