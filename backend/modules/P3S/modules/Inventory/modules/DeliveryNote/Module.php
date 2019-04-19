<?php

namespace backend\modules\P3S\modules\Inventory\modules\DeliveryNote;

/**
 * delivery-note module definition class
 */
class Module extends \yii\base\Module
{
    /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'backend\modules\P3S\modules\Inventory\modules\DeliveryNote\controllers';

    /**
     * {@inheritdoc}
     */
    public function init()
    {
        parent::init();
        $this->modules = [
            'untracked' => [

                'class' => 'backend\modules\P3S\modules\Inventory\modules\DeliveryNote\modules\Untracked\Module',

            ],

        ];
        // custom initialization code goes here
    }
}
