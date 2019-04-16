<?php

namespace common\models\c2\entity;

use Yii;

/**
 * This is the model class for table "{{%order_item}}".
 *
 * @property string $id
 * @property string $order_id
 * @property string $product_id
 * @property string $code
 * @property string $label
 * @property integer $num
 * @property integer $pieces
 * @property string $packing
 * @property string $size
 * @property string $gross_weight
 * @property string $net_weight
 * @property string $memo
 * @property string $type
 * @property integer $position
 * @property integer $status
 * @property string $created_at
 * @property string $updated_at
 */
class OrderItemModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%order_item}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['product_id', 'num', 'pieces', 'position', 'order_id'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['code', 'label', 'packing', 'size', 'gross_weight', 'net_weight', 'memo', 'type'], 'string', 'max' => 255],
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
            'order_id' => Yii::t('app.c2', 'Order no'),
            'product_id' => Yii::t('app.c2', 'Product ID'),
            'code' => Yii::t('app.c2', 'Code'),
            'label' => Yii::t('app.c2', 'Label'),
            'num' => Yii::t('app.c2', 'Num'),
            'pieces' => Yii::t('app.c2', 'Pieces'),
            'packing' => Yii::t('app.c2', 'Packing'),
            'size' => Yii::t('app.c2', 'Size'),
            'gross_weight' => Yii::t('app.c2', 'Gross Weight'),
            'net_weight' => Yii::t('app.c2', 'Net Weight'),
            'memo' => Yii::t('app.c2', 'Memo'),
            'type' => Yii::t('app.c2', 'Type'),
            'position' => Yii::t('app.c2', 'Position'),
            'status' => Yii::t('app.c2', 'Status'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\OrderItemQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\OrderItemQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getOwner() {
        return $this->hasOne(OrderModel::className(), ['id' => 'order_id']);
    }

    public function getProduct()
    {
        return $this->hasOne(ProductModel::className(), ['id' => 'product_id']);
    }

    public function getProductStock()
    {
        return $this->hasOne(ProductStock::className(), ['product_id' => 'product_id']);
    }

}
