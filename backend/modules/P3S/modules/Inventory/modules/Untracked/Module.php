<?php

namespace backend\modules\P3S\modules\Inventory\modules\Untracked;

/**
 * untracked module definition class
 */
class Module extends \yii\base\Module
{
    /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'backend\modules\P3S\modules\Inventory\modules\Untracked\\controllers';

    /**
     * {@inheritdoc}
     */
    public function init()
    {
        parent::init();
        $this->modules = [
            'receipt-note' => [
                'class' => 'backend\modules\P3S\modules\Inventory\modules\Untracked\modules\Receipt\Module',
            ],
            'delivery-note' => [
                'class' => 'backend\modules\P3S\modules\Inventory\modules\Untracked\modules\Delivery\Module',
            ],
        ];
        // custom initialization code goes here
    }
}
