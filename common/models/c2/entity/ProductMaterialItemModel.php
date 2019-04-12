<?php

namespace common\models\c2\entity;

use Yii;

/**
 * This is the model class for table "{{%product_material_item}}".
 *
 * @property string $id
 * @property string $product_id
 * @property string $code
 * @property string $name
 * @property string $label
 * @property string $value
 * @property integer $num
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class ProductMaterialItemModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%product_material_item}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['product_id', 'position', 'num'], 'integer'],
            [['label'], 'required'],
            [['created_at', 'updated_at'], 'safe'],
            [['code', 'name', 'label', 'value'], 'string', 'max' => 255],
            [['code'], 'match', 'pattern' => '/\s/', 'not' => true],
            [['code'], 'match', 'pattern' => '/-/', 'not' => true],
            [['code',], 'unique'],
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
            'product_id' => Yii::t('app.c2', 'Product ID'),
            'code' => Yii::t('app.c2', 'Code'),
            'name' => Yii::t('app.c2', 'Name'),
            'label' => Yii::t('app.c2', 'Label'),
            'value' => Yii::t('app.c2', 'Value'),
            'num' => Yii::t('app.c2', 'Num'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\ProductMaterialItemQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\ProductMaterialItemQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getOwner() {
        return $this->hasOne(ProductModel::className(), ['id' => 'product_id']);
    }

}