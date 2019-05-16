<?php

namespace backend\modules\P3S\modules\Inventory;

/**
 * inventory module definition class
 */
class Module extends \yii\base\Module
{

    /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'backend\modules\P3S\modules\Inventory\controllers';

    /**
     * {@inheritdoc}
     */
    public function init()
    {
        parent::init();
        $this->modules = [
            'receipt-note' => ['class' => 'backend\modules\P3S\modules\Inventory\modules\ReceiptNote\Module',],
            'delivery-note' => ['class' => 'backend\modules\P3S\modules\Inventory\modules\DeliveryNote\Module',],
            'stock' => ['class' => 'backend\modules\P3S\modules\Inventory\modules\Stock\Module',],
            'logs' => ['class' => 'backend\modules\P3S\modules\Inventory\modules\Logs\Module',],
            'order' => ['class' => 'backend\modules\P3S\modules\Inventory\modules\Order\Module',],
            'commit-item' => ['class' => 'backend\modules\P3S\modules\Inventory\modules\CommitItem\Module',],
            'es-consumption' => ['class' => 'backend\modules\P3S\modules\Inventory\modules\EsConsumption\Module',],
            'product-stock' => ['class' => 'backend\modules\P3S\modules\Inventory\modules\ProductStock\Module',],
            'untrack' => ['class' => 'backend\modules\P3S\modules\Inventory\modules\Untrack\Module',],
            'warehouse-commit-storage' => [
                'class' => 'backend\modules\P3S\modules\Inventory\modules\WarehouseCommitStorage\Module',
            ],

            'warehouse-send' => ['class' => 'backend\modules\P3S\modules\Inventory\modules\WarehouseSend\Module',],
        ];
        // custom initialization code goes here
    }

}
