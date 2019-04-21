<?php

namespace common\models\c2\entity;

use backend\models\c2\entity\ProductMaterialModel;
use Yii;

/**
 * This is the model class for table "{{%warehouse_commit_item}}".
 *
 * @property string $id
 * @property string $note_id
 * @property integer $product_id
 * @property integer $product_sku_id
 * @property string $sku_label
 * @property string $supplier_id
 * @property integer $quantity
 * @property string $until_price
 * @property string $subtotal
 * @property string $measure_id
 * @property string $purcharse_order_code
 * @property string $memo
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class WarehouseReceiptCommitItemModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%warehouse_receipt_commit_item}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['note_id', 'product_id', 'product_sku_id', 'supplier_id', 'quantity', 'measure_id', 'position'], 'integer'],
            [['until_price', 'subtotal'], 'number'],
            [['created_at', 'updated_at'], 'safe'],
            [['sku_label', 'purcharse_order_code', 'memo'], 'string', 'max' => 255],
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
            'note_id' => Yii::t('app.c2', 'Receipt note code'),
            'product_id' => Yii::t('app.c2', 'Product ID'),
            'product_sku_id' => Yii::t('app.c2', 'Product Sku ID'),
            'sku_label' => Yii::t('app.c2', 'Sku Label'),
            'supplier_id' => Yii::t('app.c2', 'Supplier ID'),
            'quantity' => Yii::t('app.c2', 'Quantity'),
            'until_price' => Yii::t('app.c2', 'Until Price'),
            'subtotal' => Yii::t('app.c2', 'Subtotal'),
            'measure_id' => Yii::t('app.c2', 'Measure ID'),
            'purcharse_order_code' => Yii::t('app.c2', 'Purcharse Order Code'),
            'memo' => Yii::t('app.c2', 'Memo'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\WarehouseCommitItemQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\WarehouseCommitItemQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getProductMaterial()
    {
        return $this->hasOne(ProductMaterialModel::className(), ['id' => 'product_id']);
    }

    public function getOwner() {
        return $this->hasOne(InventoryReceiptNoteModel::className(), ['id' => 'note_id']);
    }

    public function getProductMaterialItem()
    {
        return $this->hasOne(ProductMaterialItemModel::className(), ['id' => 'product_sku_id']);
    }

    public function getMeasure()
    {
        return $this->hasOne(MeasureModel::className(), ['id' => 'measure_id']);
    }

    public function getSupplier()
    {
        return $this->hasOne(SupplierModel::className(), ['id' => 'supplier_id']);
    }

    public function getNote()
    {
        if (is_null($this->supplier)) {
            return $this->hasOne(InventoryDeliveryNoteModel::className(), ['id' => 'note_id']);
        } else {
            return $this->hasOne(InventoryReceiptNoteModel::className(), ['id' => 'note_id']);
        }
    }


}
