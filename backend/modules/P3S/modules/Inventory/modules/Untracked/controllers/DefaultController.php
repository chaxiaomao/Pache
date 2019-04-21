<?php

namespace backend\modules\P3S\modules\Inventory\modules\Untracked\controllers;

use yii\web\Controller;

/**
 * Default controller for the `untracked` module
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
