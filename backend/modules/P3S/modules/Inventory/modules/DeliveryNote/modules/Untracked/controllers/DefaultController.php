<?php

namespace backend\modules\P3S\modules\Inventory\modules\DeliveryNote\modules\Untracked\controllers;

use cza\base\components\controllers\backend\ModelController as Controller;

/**
 * Default controller for the `untracked` module
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
        return $this->render('index');
    }
}
