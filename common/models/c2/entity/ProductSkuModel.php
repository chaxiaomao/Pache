<?php

namespace common\models\c2\entity;

use Yii;

/**
 * This is the model class for table "{{%product_sku}}".
 *
 * @property string $id
 * @property string $product_id
 * @property string $attr_params
 * @property string $hash
 * @property string $sku
 * @property string $name
 * @property string $label
 * @property string $code
 * @property string $sales_price
 * @property integer $weight
 * @property integer $unit
 * @property integer $stock
 * @property string $summary
 * @property string $description
 * @property integer $is_released
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class ProductSkuModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%product_sku}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['product_id', 'weight', 'unit', 'stock', 'position'], 'integer'],
            [['attr_params', 'summary', 'description'], 'string'],
            [['sales_price'], 'number'],
            [['created_at', 'updated_at'], 'safe'],
            [['hash', 'sku', 'name', 'label'], 'string', 'max' => 255],
            [['code'], 'string', 'max' => 150],
            [['is_released', 'status'], 'string', 'max' => 4],
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
            'attr_params' => Yii::t('app.c2', 'Attr Params'),
            'hash' => Yii::t('app.c2', 'Hash'),
            'sku' => Yii::t('app.c2', 'Sku'),
            'name' => Yii::t('app.c2', 'Name'),
            'label' => Yii::t('app.c2', 'Label'),
            'code' => Yii::t('app.c2', 'Code'),
            'sales_price' => Yii::t('app.c2', 'Sales Price'),
            'weight' => Yii::t('app.c2', 'Weight'),
            'unit' => Yii::t('app.c2', 'Unit'),
            'stock' => Yii::t('app.c2', 'Stock'),
            'summary' => Yii::t('app.c2', 'Summary'),
            'description' => Yii::t('app.c2', 'Description'),
            'is_released' => Yii::t('app.c2', 'Is Released'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\ProductSkuQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\ProductSkuQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public static function createSku($attributes) {
        if (!ProductSkuModel::find()->where(['hash' => $attributes['hash']])->exists()) {
            $model = new ProductSkuModel();
            $model->setAttributes($attributes);
            if (!$model->save()) {
                //Yii::info($model->errors);
            }
            return $model;
        }
        return false;
    }

}
