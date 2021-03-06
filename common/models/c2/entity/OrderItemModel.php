<?php

namespace common\models\c2\entity;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "{{%order_item}}".
 *
 * @property string $id
 * @property string $order_id
 * @property string $product_id
 * @property string $code
 * @property string $label
 * @property string $quantity
 * @property string $pieces
 * @property string $product_pack_id
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

    public function behaviors()
    {
        return \yii\helpers\ArrayHelper::merge(parent::behaviors(), [
            'materialsBehavior' => [
                'class' => \yii2tech\ar\linkmany\LinkManyBehavior::className(),
                'relation' => 'productMaterialItems', // relation, which will be handled
                'relationReferenceAttribute' => 'material_ids', // virtual attribute, which is used for related records specification
                'extraColumns' => [
                    'created_at' => function() {
                        return date('Y-m-d H:i:s');
                    },
                    'updated_at' => function() {
                        return date('Y-m-d H:i:s');
                    },
                ],
            ],
        ]);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['product_id', 'position', 'order_id', 'product_pack_id', 'quantity', 'pieces'], 'integer'],
            [['created_at', 'updated_at',], 'safe'],
            // [['created_at', 'updated_at', 'material_ids'], 'safe'],
            [['code', 'label', 'memo',], 'string', 'max' => 255],
            // [['code', 'label', 'packing', 'size', 'gross_weight', 'net_weight', 'memo', 'type'], 'string', 'max' => 255],
            [['status', 'type'], 'integer', 'max' => 4],
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
            'code' => Yii::t('app.c2', 'Code'),
            'label' => Yii::t('app.c2', 'Label'),
            'product_pack_id' => Yii::t('app.c2', 'Product Pack ID'),
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

    public function getOwner() {
        return $this->hasOne(OrderModel::className(), ['id' => 'order_id']);
    }

    public function getProduct()
    {
        return $this->hasOne(ProductModel::className(), ['id' => 'product_id']);
    }

    public function getSaleProduct()
    {
        return $this->hasOne(\backend\models\c2\entity\ProductModel::className(), ['id' => 'product_id']);
    }

    public function getProductStock()
    {
        return $this->hasOne(ProductStock::className(), ['product_id' => 'product_id']);
    }

    public function getProductMaterialItems()
    {
        return $this->hasMany(ProductMaterialItemModel::className(), ['id' => 'material_item_id'])
            ->viaTable('{{%product_material_rs}}', ['product_id' => 'product_id']);
    }

    public function getProductPack() {
        return $this->hasOne(ProductPackModel::className(), ['id' => 'product_pack_id']);
    }

    public function getProductMaterialRs()
    {
        return $this->hasMany(ProductMaterialRsModel::className(), ['product_id' => 'product_id']);
    }

    public function getMaterialOptions($key = 'id', $val = 'label', $params = [])
    {
        $options = [];
        if (isset($params['withValue']) && $params['withValue']) {
            foreach ($this->productMaterialRs as $model) {
                $item = $model->productMaterialItem;
                $options[$item->id] = $item->label . ":" . $item->value . Yii::t('app.c2', 'Num {s1}', ['s1' => $model->num]);
            }
        } else {
            $options = self::getHashMap($key, $val);
        }
        return $options;
    }

}
