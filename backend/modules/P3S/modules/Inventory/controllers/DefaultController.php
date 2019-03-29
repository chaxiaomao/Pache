<?php

namespace backend\modules\P3S\modules\Inventory\controllers;

use yii\web\Controller;

/**
 * Default controller for the `receipt-note` module
 */
class DefaultController extends Controller
{
    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        return $this->render('index');
    }
}
