<?php

namespace backend\modules\P3S\modules\Finance\\\controllers;

use yii\web\Controller;

/**
 * Default controller for the `finance` module
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
