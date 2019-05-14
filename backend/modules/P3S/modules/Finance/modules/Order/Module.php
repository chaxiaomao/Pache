<?php

namespace backend\modules\P3S\modules\Finance\modules\Order;

/**
 * order module definition class
 */
class Module extends \yii\base\Module
{
    /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'backend\modules\P3S\modules\Finance\modules\Order\controllers';

    /**
     * {@inheritdoc}
     */
    public function init()
    {
        parent::init();
        $this->modules = [
            'consumption' => [
                'class' => 'backend\modules\P3S\modules\Finance\modules\Order\modules\Consumption\Module',
            ],
            'order-item' => [
                'class' => 'backend\modules\P3S\modules\Finance\modules\Order\modules\OrderItem\Module',
            ],
        ];
        // custom initialization code goes here
    }
}
