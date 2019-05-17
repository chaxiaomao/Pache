<?php

namespace backend\modules\P3S\modules\Inventory\modules\WarehouseSend;

/**
 * warehouse-send module definition class
 */
class Module extends \yii\base\Module
{
    /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'backend\modules\P3S\modules\Inventory\modules\WarehouseSend\controllers';

    /**
     * {@inheritdoc}
     */
    public function init()
    {
        parent::init();
        $this->modules = [
            'commit-send' => [
                'class' => 'backend\modules\p3s\modules\Inventory\modules\WarehouseSend\modules\CommitSend\Module',
            ],
        ];
        // custom initialization code goes here
    }
}
