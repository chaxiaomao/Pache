<?php

namespace backend\modules\Database\modules\Product;

/**
 * product module definition class
 */
class Module extends \yii\base\Module
{
    /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'backend\modules\Database\modules\Product\controllers';

    /**
     * {@inheritdoc}
     */
    public function init()
    {
        parent::init();
        $this->modules = [
            'product-combination' => [
                'class' => 'backend\modules\Database\modules\Product\modules\ProductCombination\Module',
            ],
            'product-package' => [
                'class' => 'backend\modules\Database\modules\Product\modules\ProductPackage\Module',
            ],
        ];
        // custom initialization code goes here
    }
}
