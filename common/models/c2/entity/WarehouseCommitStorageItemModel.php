<?php

namespace common\models\c2\entity;

use Yii;

/**
 * This is the model class for table "{{%warehouse_commit_storage_item}}".
 *
 * @property string $id
 * @property integer $type
 * @property string $note_id
 * @property integer $product_id
 * @property integer $number
 * @property string $measure_id
 * @property string $memo
 * @property integer $state
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class WarehouseCommitStorageItemModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%warehouse_commit_storage_item}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['note_id', 'product_id', 'number', 'measure_id', 'position'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['type', 'state', 'status'], 'integer', 'max' => 4],
            [['memo'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app.c2', 'ID'),
            'type' => Yii::t('app.c2', 'Type'),
            'note_id' => Yii::t('app.c2', 'Note ID'),
            'product_id' => Yii::t('app.c2', 'Product ID'),
            'number' => Yii::t('app.c2', 'Number'),
            'measure_id' => Yii::t('app.c2', 'Measure ID'),
            'memo' => Yii::t('app.c2', 'Memo'),
            'state' => Yii::t('app.c2', 'State'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\WarehouseCommitStorageItemQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\WarehouseCommitStorageItemQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getNote()
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

    public function getProductStock()
    {
        return $this->hasOne(ProductStockModel::className(), ['product_id' => 'product_id']);
    }

}
