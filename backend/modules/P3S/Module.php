<?php

namespace backend\modules\P3S;

/**
 * p3s module definition class
 */
class Module extends \yii\base\Module {

    /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'backend\modules\P3S\controllers';

    /**
     * {@inheritdoc}
     */
    public function init() {
        parent::init();
        $this->modules = [
            'inventory' => ['class' => 'backend\modules\P3S\modules\Inventory\Module',],
            'finance' => ['class' => 'backend\modules\P3S\modules\Finance\Module',],
            'logs' => ['class' => 'backend\modules\P3s\modules\Inventory\modules\Logs\Module',],
            'config' => [
                'class' => 'backend\modules\P3S\modules\Config\Module',
            ],
        ];
    }

}
