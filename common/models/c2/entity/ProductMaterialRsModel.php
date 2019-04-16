<?php

namespace common\models\c2\entity;

use backend\models\c2\entity\ProductMaterialModel;
use Yii;

/**
 * This is the model class for table "{{%product_material_rs}}".
 *
 * @property string $id
 * @property string $product_id
 * @property string $material_id
 * @property string $material_item_id
 * @property integer $status
 * @property string $num
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class ProductMaterialRsModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%product_material_rs}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['product_id', 'material_id', 'material_item_id', 'num', 'position'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
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
            'material_id' => Yii::t('app.c2', 'Material ID'),
            'material_item_id' => Yii::t('app.c2', 'Material Item ID'),
            'status' => Yii::t('app.c2', 'Status'),
            'num' => Yii::t('app.c2', 'Num'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\ProductMaterialRsQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\ProductMaterialRsQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getOwner() {
        return $this->hasOne(\backend\models\c2\entity\ProductModel::className(), ['id' => 'product_id']);
    }

    public function getProductMaterial()
    {
        return $this->hasOne(ProductMaterialModel::className(), ['id' => 'material_id']);
    }

}
