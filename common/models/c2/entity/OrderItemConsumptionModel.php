<?php

namespace common\models\c2\entity;

use backend\models\c2\entity\ProductMaterialModel;
use common\models\c2\statics\ConsumptionType;
use Yii;

/**
 * This is the model class for table "{{%order_item_consumption}}".
 *
 * @property string $id
 * @property string $order_id
 * @property integer $product_id
 * @property integer $material_id
 * @property integer $material_item_id
 * @property integer $quantity
 * @property integer $consumed_num
 * @property integer $subtotal
 * @property string $measure_id
 * @property string $memo
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class OrderItemConsumptionModel extends \cza\base\models\ActiveRecord
{

    public $stock;
    public $exStock;
    public $exception;

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
            [['order_id', 'product_id', 'material_id', 'material_item_id', 'quantity', 'consumed_num', 'subtotal', 'measure_id', 'position'], 'integer'],
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
            'order_id' => Yii::t('app.c2', 'Order ID'),
            'product_id' => Yii::t('app.c2', 'Product ID'),
            'material_id' => Yii::t('app.c2', 'Material ID'),
            'material_item_id' => Yii::t('app.c2', 'Material Item ID'),
            'quantity' => Yii::t('app.c2', 'Quantity'),
            'consumed_num' => Yii::t('app.c2', 'Consumed Num'),
            'subtotal' => Yii::t('app.c2', 'Subtotal'),
            'measure_id' => Yii::t('app.c2', 'Measure ID'),
            'memo' => Yii::t('app.c2', 'Memo'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
            'stock' => Yii::t('app.c2', 'Stock num'),
            'exception' => Yii::t('app.c2', 'Stock exception'),
            'exStock' => Yii::t('app.c2', 'Stock exception'),
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

    public function getOwner()
    {
        return $this->hasOne(OrderModel::className(), ['id' => 'order_id']);
    }

    public function getProductMaterialItem()
    {
        return $this->hasOne(ProductMaterialItemModel::className(), ['id' => 'material_item_id']);
    }

    public function getMaterialProduct()
    {
        return $this->hasOne(ProductMaterialModel::className(), ['id' => 'material_id']);
    }

    public function getProduct()
    {
        return $this->hasOne(ProductMaterialModel::className(), ['id' => 'product_id']);
    }

    public function getMaterialProductStock()
    {
        return $this->hasOne(ProductStock::className(), ['product_material_id' => 'material_item_id']);
    }

    public function getException()
    {
        $result = $this->getConsumption();
        if ($result > 0) {
            return ConsumptionType::getData(ConsumptionType::TYPE_ENOUGH, 'label');
        } else {
            return ConsumptionType::getData(ConsumptionType::TYPE_NOT_ENOUGH, 'label');
        }
    }

    public function getConsumption() {
        $materialStock = $this->productMaterialItem->stock;
        $result = $materialStock->num;
        foreach ($materialStock->activeConsumption as $item) {
            $result -= $item->subtotal;
        }
        return $result;
    }

}
