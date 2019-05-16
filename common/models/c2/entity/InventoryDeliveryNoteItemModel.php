<?php

namespace common\models\c2\entity;

use Yii;

/**
 * This is the model class for table "{{%inventory_delivery_note_item}}".
 *
 * @property string $id
 * @property string $note_id
 * @property string $product_id
 * @property string $code
 * @property string $name
 * @property string $label
 * @property string $value
 * @property string $customer_id
 * @property integer $quantity
 * @property string $measure_id
 * @property string $volume
 * @property string $weight
 * @property string $pieces
 * @property string $product_combination_id
 * @property string $product_package_id
 * @property string $product_price
 * @property string $factory_price
 * @property string $subtotal
 * @property string $memo
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
            [['note_id', 'product_id', 'customer_id', 'quantity', 'measure_id', 'product_combination_id', 'product_package_id', 'position'], 'integer'],
            [['product_price', 'factory_price', 'subtotal', 'pieces'], 'number'],
            [['created_at', 'updated_at'], 'safe'],
            [['code', 'name', 'label', 'value', 'volume', 'weight', 'memo'], 'string', 'max' => 255],
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
            'note_id' => Yii::t('app.c2', 'Note ID'),
            'product_id' => Yii::t('app.c2', 'Product ID'),
            'code' => Yii::t('app.c2', 'Code'),
            'name' => Yii::t('app.c2', 'Name'),
            'label' => Yii::t('app.c2', 'Label'),
            'value' => Yii::t('app.c2', 'Value'),
            'customer_id' => Yii::t('app.c2', 'Customer ID'),
            'quantity' => Yii::t('app.c2', 'Quantity'),
            'measure_id' => Yii::t('app.c2', 'Measure ID'),
            'volume' => Yii::t('app.c2', 'Volume'),
            'weight' => Yii::t('app.c2', 'Weight'),
            'pieces' => Yii::t('app.c2', 'Pieces'),
            'product_combination_id' => Yii::t('app.c2', 'Product Combination ID'),
            'product_package_id' => Yii::t('app.c2', 'Product Package ID'),
            'product_price' => Yii::t('app.c2', 'Product Price'),
            'factory_price' => Yii::t('app.c2', 'Factory Price'),
            'subtotal' => Yii::t('app.c2', 'Subtotal'),
            'memo' => Yii::t('app.c2', 'Memo'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\InventoryDeliveryNoteItemQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\InventoryDeliveryNoteItemQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
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

    public function getCustomer()
    {
        return $this->hasOne(FeUserModel::className(), ['id' => 'customer_id']);
    }

    public function getMeasure()
    {
        return $this->hasOne(MeasureModel::className(), ['id' => 'measure_id']);
    }

}
