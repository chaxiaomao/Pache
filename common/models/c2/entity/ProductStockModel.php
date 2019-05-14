<?php

namespace common\models\c2\entity;

use cza\base\models\statics\EntityModelStatus;
use Yii;

/**
 * This is the model class for table "{{%product_stock}}".
 *
 * @property string $id
 * @property string $eshop_id
 * @property string $warehouse_id
 * @property string $product_id
 * @property integer $number
 * @property integer $state
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class ProductStockModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%product_stock}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['eshop_id', 'warehouse_id', 'product_id', 'number', 'position'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['state', 'status'], 'integer', 'max' => 4],
            [['state', 'status'], 'default', 'value' => 1],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app.c2', 'ID'),
            'eshop_id' => Yii::t('app.c2', 'Eshop ID'),
            'warehouse_id' => Yii::t('app.c2', 'Warehouse ID'),
            'product_id' => Yii::t('app.c2', 'Product ID'),
            'number' => Yii::t('app.c2', 'Number'),
            'state' => Yii::t('app.c2', 'State'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\ProductStockQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\ProductStockQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getWarehouse()
    {
        return $this->hasOne(WarehouseModel::className(), ['id' => 'warehouse_id']);
    }

    public function getProduct()
    {
        return $this->hasOne(ProductModel::className(), ['id' => 'product_id']);
    }

    public function getConsumptionProduct()
    {
        return $this->hasMany(OrderItemConsumptionModel::className(), ['product_id' => 'product_id']);
    }

    public function getActivityConsumptionProduct()
    {
        return $this->hasMany(OrderItemConsumptionModel::className(), ['product_id' => 'product_id'])
            ->where(['status' => EntityModelStatus::STATUS_ACTIVE]);
    }

    public function getProductConsumer()
    {
        $result = 0;
        foreach ($this->getActivityConsumptionProduct()->all() as $item) {
            $result += $item->subtotal;
        }
        return $result;
    }

}
