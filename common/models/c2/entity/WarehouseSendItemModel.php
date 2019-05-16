<?php

namespace common\models\c2\entity;

use Yii;

/**
 * This is the model class for table "{{%warehouse_send_item}}".
 *
 * @property string $id
 * @property string $note_id
 * @property string $product_id
 * @property string $product_combination_id
 * @property string $product_package_id
 * @property integer $send_number
 * @property integer $production_number
 * @property integer $stock_number
 * @property integer $measure_id
 * @property string $created_by
 * @property string $updated_by
 * @property string $memo
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class WarehouseSendItemModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%warehouse_send_item}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['note_id', 'product_id', 'product_combination_id', 'product_package_id', 'send_number', 'production_number',
                'stock_number', 'created_by', 'updated_by', 'position', 'measure_id'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['memo'], 'string', 'max' => 255],
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
            'product_combination_id' => Yii::t('app.c2', 'Product Combination ID'),
            'product_package_id' => Yii::t('app.c2', 'Product Package ID'),
            'send_number' => Yii::t('app.c2', 'Send Number'),
            'production_number' => Yii::t('app.c2', 'Production Number'),
            'stock_number' => Yii::t('app.c2', 'Stock Number'),
            'measure_id' => Yii::t('app.c2', 'Measure'),
            'created_by' => Yii::t('app.c2', 'Created By'),
            'updated_by' => Yii::t('app.c2', 'Updated By'),
            'memo' => Yii::t('app.c2', 'Memo'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\WarehouseSendItemQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\WarehouseSendItemQuery(get_called_class());
    }

    /**
     * setup default values
     **/
    public function loadDefaultValues($skipIfSet = true)
    {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getNote()
    {
        return $this->hasOne(InventoryDeliveryNoteModel::className(), ['id' => 'note_id']);
    }

    public function getProduct()
    {
        return $this->hasOne(ProductModel::className(), ['id' => 'product_id']);
    }

    public function getProductCombinationItems()
    {
        return $this->hasMany(ProductCombinationItemModel::className(), ['combination_id' => 'product_combination_id']);
    }

    public function getProductPackageItems()
    {
        return $this->hasMany(ProductPackageItemModel::className(), ['package_id' => 'product_package_id']);
    }

    public function getProductCombination()
    {
        return $this->hasOne(ProductCombinationModel::className(), ['id' => 'product_combination_id']);
    }

    public function getProductPackage()
    {
        return $this->hasOne(ProductPackageModel::className(), ['id' => 'product_package_id']);
    }

    public function getMeasure()
    {
        return $this->hasOne(MeasureModel::className(), ['id' => 'measure_id']);
    }

}
