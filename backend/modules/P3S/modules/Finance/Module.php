<?php

namespace backend\modules\P3S\modules\Finance;

/**
 * finance module definition class
 */
class Module extends \yii\base\Module
{
    /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'backend\modules\P3S\modules\Finance\\\controllers';

    /**
     * {@inheritdoc}
     */
    public function init()
    {
        parent::init();
        $this->modules = [
            'order' => [
                'class' => 'backend\modules\P3S\modules\Finance\modules\Order\Module',
            ],
        ];
        // custom initialization code goes here
    }
}
