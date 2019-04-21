<?php

namespace backend\modules\P3S\modules\Inventory\modules\Stock;

/**
 * stock module definition class
 */
class Module extends \yii\base\Module
{
    /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'backend\modules\P3S\modules\Inventory\modules\Stock\controllers';

    /**
     * {@inheritdoc}
     */
    public function init()
    {
        parent::init();
        $this->modules = [
            'receipt-commit' => [
                'class' => 'backend\modules\P3S\modules\Inventory\modules\Stock\modules\ReceiptCommit\Module',
            ],
            'delivery-commit' => [
                'class' => 'backend\modules\P3S\modules\Inventory\modules\Stock\modules\DeliveryCommit\Module',
            ],
        ];
        // custom initialization code goes here
    }
}
