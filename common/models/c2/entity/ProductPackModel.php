<?php

namespace common\models\c2\entity;

use Yii;

/**
 * This is the model class for table "{{%product_pack}}".
 *
 * @property string $id
 * @property string $product_id
 * @property integer $pre_num
 * @property string $code
 * @property string $label
 * @property string $inpack_id
 * @property integer $inpack_num
 * @property string $outpack_id
 * @property integer $outpack_num
 * @property string $gross_weight
 * @property string $net_weight
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class ProductPackModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%product_pack}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['product_id', 'pre_num', 'inpack_id', 'inpack_num', 'outpack_id', 'outpack_num', 'position'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['code', 'label', 'gross_weight', 'net_weight'], 'string', 'max' => 255],
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
            'pre_num' => Yii::t('app.c2', 'Pre Num'),
            'code' => Yii::t('app.c2', 'Code'),
            'label' => Yii::t('app.c2', 'Label'),
            'inpack_id' => Yii::t('app.c2', 'Inpack ID'),
            'inpack_num' => Yii::t('app.c2', 'Inpack Num'),
            'outpack_id' => Yii::t('app.c2', 'Outpack ID'),
            'outpack_num' => Yii::t('app.c2', 'Outpack Num'),
            'gross_weight' => Yii::t('app.c2', 'Gross Weight'),
            'net_weight' => Yii::t('app.c2', 'Net Weight'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\ProductPackQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\ProductPackQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getOutpackMaterial()
    {
        return $this->hasOne(ProductMaterialItemModel::className(), ['id' => 'outpack_id']);
    }

    public function getInpackMaterial()
    {
        return $this->hasOne(ProductMaterialItemModel::className(), ['id' => 'inpack_id']);
    }

    public function getOutpackStock()
    {
        return $this->hasOne(ProductStock::className(), ['product_material_id' => 'outpack_id']);
    }

    public function getInpackStock()
    {
        return $this->hasOne(ProductStock::className(), ['product_material_id' => 'inpack_id']);
    }

}
