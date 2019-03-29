<?php

namespace backend\modules\P3S\modules\Config;

/**
 * config module definition class
 */
class Module extends \yii\base\Module
{
    /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'backend\modules\P3S\modules\Config\controllers';

    /**
     * {@inheritdoc}
     */
    public function init()
    {
        parent::init();
        $this->modules = [
            'measure' => [
                'class' => 'backend\modules\P3S\modules\Config\modules\Measure\Module',
            ],
            'supplier' => [
                'class' => 'backend\modules\P3S\modules\Config\modules\Supplier\Module',
            ],
            'currency' => [
                'class' => 'backend\modules\P3S\modules\Config\modules\Currency\Module',
            ],
            'warehouse' => [
                'class' => 'backend\modules\P3S\modules\Config\modules\Warehouse\Module',
            ],
        ];
        // custom initialization code goes here
    }
}
