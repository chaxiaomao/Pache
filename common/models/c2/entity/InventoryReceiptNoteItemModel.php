<?php

namespace common\models\c2\entity;

use Yii;

/**
 * This is the model class for table "{{%inventory_receipt_note_item}}".
 *
 * @property string $id
 * @property string $note_id
 * @property string $product_id
 * @property string $code
 * @property string $name
 * @property string $label
 * @property string $value
 * @property string $supplier_id
 * @property string $measure_id
 * @property integer $number
 * @property string $until_price
 * @property string $subtotal
 * @property string $purcharse_order_code
 * @property string $memo
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class InventoryReceiptNoteItemModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%inventory_receipt_note_item}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['note_id', 'product_id', 'supplier_id', 'measure_id', 'number', 'position'], 'integer'],
            [['until_price', 'subtotal'], 'number'],
            [['created_at', 'updated_at'], 'safe'],
            [['code', 'name', 'label', 'value', 'purcharse_order_code', 'memo'], 'string', 'max' => 255],
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
            'code' => Yii::t('app.c2', 'Code'),
            'name' => Yii::t('app.c2', 'Name'),
            'label' => Yii::t('app.c2', 'Label'),
            'value' => Yii::t('app.c2', 'Value'),
            'supplier_id' => Yii::t('app.c2', 'Supplier ID'),
            'measure_id' => Yii::t('app.c2', 'Measure ID'),
            'number' => Yii::t('app.c2', 'Number'),
            'until_price' => Yii::t('app.c2', 'Until Price'),
            'subtotal' => Yii::t('app.c2', 'Subtotal'),
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
     * @return \common\models\c2\query\InventoryReceiptNoteItemQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\InventoryReceiptNoteItemQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getOwner()
    {
        return $this->hasOne(InventoryReceiptNoteModel::className(), ['id' => 'note_id']);
    }

    public function getProduct()
    {
        return $this->hasOne(ProductModel::className(), ['id' => 'product_id']);
    }

    public function getMeasure()
    {
        return $this->hasOne(MeasureModel::className(), ['id' => 'measure_id']);
    }

}
