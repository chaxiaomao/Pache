<?php

namespace backend\modules\P3S\modules\Inventory\modules\ReceiptNote;

/**
 * receipt-note module definition class
 */
class Module extends \yii\base\Module
{
    /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'backend\modules\P3S\modules\Inventory\modules\ReceiptNote\controllers';

    /**
     * {@inheritdoc}
     */
    public function init()
    {
        parent::init();
        $this->modules = [
            'untracked' => [

                'class' => 'backend\modules\P3S\modules\Inventory\modules\ReceiptNote\modules\Untracked\Module',

            ],
        ];
        // custom initialization code goes here
    }
}
