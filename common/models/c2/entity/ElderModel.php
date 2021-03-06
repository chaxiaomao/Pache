<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/3/26
 * Time: 17:34
 */

namespace common\models\c2\entity;


use common\models\c2\statics\FeUserType;
use cza\base\models\statics\EntityModelStatus;
use yii\helpers\ArrayHelper;

class ElderModel extends FeUserModel
{
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
        $this->type = FeUserType::TYPE_ELDER;
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\FeUserQuery the active query used by this AR class.
     */
    public static function find() {
        return parent::find()->elders();
    }

    public static function getLordHashMap($keyField, $valField, $condition = '') {
        if (empty($_data['elderHashMap'])) {
            $lord = LordProfileModel::find()->joinWith(['allLord'])
                ->andWhere(['{{%fe_user}}.type' => FeUserType::TYPE_ELDER]);
            $_data['elderHashMap'] = ArrayHelper::map($lord->select([$keyField, $valField])->andWhere($condition)->asArray()->all(), $keyField, $valField);
            return $_data['elderHashMap'];
        }
    }


}