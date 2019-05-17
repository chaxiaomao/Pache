<?php

namespace common\models\c2\entity;

use Yii;

/**
 * This is the model class for table "{{%order_item}}".
 *
 * @property string $id
 * @property string $order_id
 * @property string $product_id
 * @property string $label
 * @property integer $number
 * @property string $measure_id
 * @property integer $pieces
 * @property string $product_combination_id
 * @property string $product_package_id
 * @property integer $type
 * @property string $memo
 * @property integer $status
 * @property integer $position
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
            [['order_id', 'product_id', 'number', 'measure_id', 'pieces', 'product_combination_id', 'product_package_id', 'position'], 'integer'],
            [['product_id'], 'required'],
            [['created_at', 'updated_at'], 'safe'],
            [['label', 'memo'], 'string', 'max' => 255],
            [['type', 'status'], 'integer', 'max' => 4],
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
            'label' => Yii::t('app.c2', 'Label'),
            'number' => Yii::t('app.c2', 'Number'),
            'measure_id' => Yii::t('app.c2', 'Measure ID'),
            'pieces' => Yii::t('app.c2', 'Pieces'),
            'product_combination_id' => Yii::t('app.c2', 'Product Combination'),
            'product_package_id' => Yii::t('app.c2', 'Product Package'),
            'type' => Yii::t('app.c2', 'Type'),
            'memo' => Yii::t('app.c2', 'Memo'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
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

    public function getOwner()
    {
        return $this->hasOne(OrderModel::className(), ['id' => 'order_id']);
    }

    public function getProduct()
    {
        return $this->hasOne(ProductModel::className(), ['id' => 'product_id']);
    }

    public function getProductCombination()
    {
        return $this->hasOne(ProductCombinationModel::className(), ['id' => 'product_combination_id']);
    }

    public function getProductPackage()
    {
        return $this->hasOne(ProductPackageModel::className(), ['id' => 'product_package_id']);
    }

    public function getSummerProduct()
    {
        $packageModel = $this->productPackage;
        if (!is_null($packageModel)) {
            return $this->number * $packageModel->number;
        }
        return $this->number;
    }

    public function getMeasure()
    {
        return $this->hasOne(MeasureModel::className(), ['id' => 'measure_id']);
    }


}
