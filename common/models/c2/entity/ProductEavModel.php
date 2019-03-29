<?php

namespace common\models\c2\entity;

use common\models\c2\statics\AttributeInputType;
use Yii;
use yii\helpers\Json;

/**
 * This is the model class for table "{{%product_eav}}".
 *
 * @property string $id
 * @property string $entity_id
 * @property string $attribute_id
 * @property string $attribute_code
 * @property string $value
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class ProductEavModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%product_eav}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['entity_id', 'attribute_id', 'position'], 'integer'],
            [['value'], 'string'],
            [['created_at', 'updated_at'], 'safe'],
            [['attribute_code'], 'string', 'max' => 255],
            [['status'], 'integer', 'max' => 4],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app.c2', 'ID'),
            'entity_id' => Yii::t('app.c2', 'Entity ID'),
            'attribute_id' => Yii::t('app.c2', 'Attribute ID'),
            'attribute_code' => Yii::t('app.c2', 'Attribute Code'),
            'value' => Yii::t('app.c2', 'Value'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\ProductEavQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\ProductEavQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getEavAttribute() {
        return $this->hasOne(AttributeModel::className(), ['id' => 'attribute_id']);
    }

    public function getEavValue() {
        if (AttributeInputType::isMultiple($this->eavAttribute->input_type)) {
            $this->value = Json::decode($this->value);
            if (is_array($this->value)) {
                $this->value = array_keys($this->value);
            }
            return $this->value;
        }
        return $this->value;
    }

}
