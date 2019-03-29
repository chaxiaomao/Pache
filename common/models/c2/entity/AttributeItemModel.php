<?php

namespace common\models\c2\entity;

use Yii;

/**
 * This is the model class for table "{{%attribute_item}}".
 *
 * @property string $id
 * @property string $attribute_id
 * @property string $code
 * @property string $name
 * @property string $label
 * @property string $value
 * @property integer $is_selected
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class AttributeItemModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%attribute_item}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['attribute_id', 'position'], 'integer'],
            [['label'], 'required'],
            [['created_at', 'updated_at'], 'safe'],
            [['code', 'name', 'label', 'value'], 'string', 'max' => 255],
            [['is_selected', 'status'], 'string', 'max' => 4],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app.c2', 'ID'),
            'attribute_id' => Yii::t('app.c2', 'Attribute ID'),
            'code' => Yii::t('app.c2', 'Code'),
            'name' => Yii::t('app.c2', 'Name'),
            'label' => Yii::t('app.c2', 'Label'),
            'value' => Yii::t('app.c2', 'Value'),
            'is_selected' => Yii::t('app.c2', 'Is Selected'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\AttributeItemQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\AttributeItemQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getOwner() {
        return $this->hasOne(AttributeModel::className(), ['id' => 'attribute_id']);
    }

}
