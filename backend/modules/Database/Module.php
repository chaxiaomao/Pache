<?php

namespace backend\modules\Database;

/**
 * database module definition class
 */
class Module extends \yii\base\Module
{
    /**
     * {@inheritdoc}
     */
    public $controllerNamespace = 'backend\modules\Database\controllers';

    /**
     * {@inheritdoc}
     */
    public function init()
    {
        parent::init();
        $this->modules = [
            'attribute' => [
                'class' => 'backend\modules\Database\modules\Attribute\Module',
            ],
            'attributeset' => [
                'class' => 'backend\modules\Database\modules\Attributeset\Module',
            ],
            'product' => [
                'class' => 'backend\modules\Database\modules\Product\Module',
            ],
            'users' => [
                'class' => 'backend\modules\Database\modules\User\Module',
            ],
        ];
        // custom initialization code goes here
    }
}
