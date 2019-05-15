<?php

namespace backend\modules\P3S\modules\Inventory\modules\Untrack;

/**
 * untrack module definition class
 */
class Module extends \yii\base\Module
{
    /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'backend\modules\P3S\modules\Inventory\modules\Untrack\controllers';

    /**
     * {@inheritdoc}
     */
    public function init()
    {
        parent::init();
        $this->modules = [
            'delivery-note' => [
                'class' => 'backend\modules\P3S\modules\Inventory\modules\Untrack\modules\DeliveryNote\Module',
            ],
            'receipt-note' => [
                'class' => 'backend\modules\P3S\modules\Inventory\modules\Untrack\modules\ReceiptNote\Module',
            ],

        ];
        // custom initialization code goes here
    }
}
