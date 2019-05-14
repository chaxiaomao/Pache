<?php

namespace common\models\c2\entity;

use Yii;

/**
 * This is the model class for table "{{%order_item_consumption}}".
 *
 * @property string $id
 * @property string $order_id
 * @property string $order_item_id
 * @property integer $product_id
 * @property integer $product_number
 * @property integer $consumed_number
 * @property integer $subtotal
 * @property string $memo
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class OrderItemConsumptionModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%order_item_consumption}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['order_id', 'order_item_id', 'product_id', 'product_number', 'consumed_number', 'subtotal', 'position'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['memo'], 'string', 'max' => 255],
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
            'order_id' => Yii::t('app.c2', 'Order ID'),
            'product_id' => Yii::t('app.c2', 'Product ID'),
            'product_number' => Yii::t('app.c2', 'Product Number'),
            'consumed_number' => Yii::t('app.c2', 'Consumed Number'),
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
     * @return \common\models\c2\query\OrderItemConsumptionQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\OrderItemConsumptionQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getProduct()
    {
        return $this->hasOne(ProductModel::className(), ['id' => 'product_id']);
    }

    public function getOrder()
    {
        return $this->hasOne(OrderModel::className(), ['id' => 'order_id']);
    }

    public function getConsumerException()
    {
        $productStockModel = $this->product->productStock;
        if ($productStockModel->number >= $this->subtotal) {
            return '<span class="label label-success">'.Yii::t('app.c2', 'Enough').'</span>';
        }
        return '<span class="label label-warning">'.Yii::t('app.c2', 'Not Enough').'</span>';
    }

}
