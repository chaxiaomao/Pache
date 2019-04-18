<?php

namespace common\models\c2\entity;

use backend\models\c2\entity\ProductMaterialModel;
use Yii;

/**
 * This is the model class for table "{{%inventory_delivery_note_item}}".
 *
 * @property string $id
 * @property string $note_id
 * @property string $product_id
 * @property string $product_sku_id
 * @property string $sku_label
 * @property string $customer_id
 * @property integer $quantity
 * @property string $measure_id
 * @property string $volume
 * @property string $weight
 * @property string $pieces
 * @property string $product_price
 * @property string $factory_price
 * @property integer $subtotal
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class InventoryDeliveryNoteItemModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%inventory_delivery_note_item}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['note_id', 'product_id', 'product_sku_id', 'customer_id', 'quantity', 'measure_id', 'position'], 'integer'],
            [['product_price', 'factory_price', 'subtotal'], 'number'],
            [['created_at', 'updated_at'], 'safe'],
            [['product_price', 'factory_price'], 'default', 'value' => 0],
            [['sku_label', 'volume', 'weight', 'pieces'], 'string', 'max' => 255],
            [['status'], 'string', 'max' => 4],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app.c2', 'ID'),
            'note_id' => Yii::t('app.c2', 'Note ID'),
            'product_id' => Yii::t('app.c2', 'Product ID'),
            'product_sku_id' => Yii::t('app.c2', 'Product Sku ID'),
            'sku_label' => Yii::t('app.c2', 'Sku Label'),
            'customer_id' => Yii::t('app.c2', 'Customer ID'),
            'quantity' => Yii::t('app.c2', 'Quantity'),
            'measure_id' => Yii::t('app.c2', 'Measure ID'),
            'volume' => Yii::t('app.c2', 'Volume'),
            'weight' => Yii::t('app.c2', 'Weight'),
            'pieces' => Yii::t('app.c2', 'Pieces'),
            'product_price' => Yii::t('app.c2', 'Product Price'),
            'factory_price' => Yii::t('app.c2', 'Factory Price'),
            'subtotal' => Yii::t('app.c2', 'Subtotal'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\Query the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\Query(get_called_class());
    }

    /**
     * setup default values
     **/
    public function loadDefaultValues($skipIfSet = true)
    {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getOwner()
    {
        return $this->hasOne(InventoryDeliveryNoteModel::className(), ['id' => 'note_id']);
    }

    public function getProduct()
    {
        return $this->hasOne(ProductModel::className(), ['id' => 'product_id']);
    }

    public function getProductSku()
    {
        return $this->hasOne(ProductSkuModel::className(), ['id' => 'product_sku_id']);
    }

    public function getCustomer()
    {
        return $this->hasOne(Customer::className(), ['id' => 'customer_id']);
    }

    public function getMeasure()
    {
        return $this->hasOne(MeasureModel::className(), ['id' => 'measure_id']);
    }

    public function getProductMaterial()
    {
        return $this->hasOne(ProductMaterialModel::className(), ['id' => 'product_id']);
    }

    public function getProductMaterialRs()
    {
        return $this->hasMany(ProductMaterialRsModel::className(), ['product_id' => 'product_id']);
    }

}
