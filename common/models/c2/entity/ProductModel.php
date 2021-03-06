<?php

namespace common\models\c2\entity;

use common\models\c2\statics\ProductType;
use cza\base\models\statics\EntityModelStatus;
use Yii;
use yii\helpers\ArrayHelper;
use yii\validators\RequiredValidator;

/**
 * This is the model class for table "{{%product}}".
 *
 * @property string $id
 * @property string $eshop_id
 * @property integer $type
 * @property string $seo_code
 * @property string $sku
 * @property string $serial_number
 * @property string $breadcrumb
 * @property string $name
 * @property string $label
 * @property string $meta_title
 * @property string $meta_keywords
 * @property string $meta_description
 * @property integer $is_score_exchange
 * @property integer $score_exchange_method
 * @property string $score
 * @property string $gift_score
 * @property integer $require_setup
 * @property integer $is_install
 * @property string $install_price
 * @property string $low_price
 * @property string $sales_price
 * @property string $cost_price
 * @property string $market_price
 * @property string $brand_id
 * @property string $supplier_id
 * @property string $currency_id
 * @property string $measure_id
 * @property string $summary
 * @property string $description
 * @property integer $views_count
 * @property integer $comment_count
 * @property integer $sold_count
 * @property integer $virtual_sold_count
 * @property integer $is_released
 * @property string $released_at
 * @property string $created_by
 * @property string $updated_by
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class ProductModel extends \cza\base\models\ActiveRecord
{

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%product}}';
    }

    public function behaviors()
    {
        return \yii\helpers\ArrayHelper::merge(parent::behaviors(), [
            \yii\behaviors\BlameableBehavior::className(), // record created_by and updated_by
            'attributesetBehavior' => [
                'class' => \yii2tech\ar\linkmany\LinkManyBehavior::className(),
                'relation' => 'attributesets', // relation, which will be handled
                'relationReferenceAttribute' => 'attributeset_ids', // virtual attribute, which is used for related records specification
                'extraColumns' => [
                    'created_at' => function () {
                        return date('Y-m-d H:i:s');
                    },
                    'updated_at' => function () {
                        return date('Y-m-d H:i:s');
                    },
                ],
            ],
            'eavBehavior' => [
                'class' => \common\behaviors\EavBehavior::className(),
                'vModelClass' => ProductEavModel::className(),
                'aModelClass' => AttributeModel::className(),
            ],
            'materialsBehavior' => [
                'class' => \yii2tech\ar\linkmany\LinkManyBehavior::className(),
                'relation' => 'productMaterialItems', // relation, which will be handled
                'relationReferenceAttribute' => 'material_ids', // virtual attribute, which is used for related records specification
                'extraColumns' => [
                    'created_at' => function () {
                        return date('Y-m-d H:i:s');
                    },
                    'updated_at' => function () {
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
            [['eshop_id', 'type', 'supplier_id', 'currency_id', 'measure_id', 'views_count',
                'comment_count', 'is_released', 'created_by', 'updated_by', 'status', 'position',
                'is_score_exchange', 'score_exchange_method', 'is_install', 'brand_id', 'sold_count', 'virtual_sold_count', 'require_setup'], 'integer'],
            // [['sku', 'name', 'label', 'seo_code', 'description', 'breadcrumb', 'category_ids', 'attributeset_ids', 'sales_price',], 'required'],
            // [['sku', 'name', 'serial_number',], 'unique'],
            [['name', 'serial_number',], 'unique'],
            [['meta_description', 'summary'], 'string'],
            [['sales_price', 'cost_price', 'market_price', 'score', 'gift_score', 'install_price', 'low_price'], 'number'],
            [['sales_price', 'score', 'attributeset_ids', 'material_ids', 'released_at', 'child_ids', 'created_at', 'updated_at', 'description', 'views_count', 'gift_score', 'is_install', 'brand_id', 'low_price'], 'safe'],
            [['seo_code', 'sku', 'serial_number', 'breadcrumb', 'meta_title', 'meta_keywords'], 'string', 'max' => 255],
            [['name'], 'string', 'length' => [1, 50]],
            [['label'], 'string', 'length' => [1, 30]],
            [['sku'], 'match', 'pattern' => '/^[A-Za-z0-9_-]+$/u'],
            // [['sku'], 'match', 'pattern' => '/[A-Za-z0-9]+\-\w+/'],
            [['sku'], 'match', 'pattern' => '/[\x{4e00}-\x{9fa5}]+/u', 'not' => true],
            // [['items',], 'validateItems'],
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
            'warehouse_id' => Yii::t('app.c2', 'Warehouse'),
            'stock_num' => Yii::t('app.c2', 'Stock num'),
            'type' => Yii::t('app.c2', 'Type'),
            'seo_code' => Yii::t('app.c2', 'Seo Code'),
            'sku' => Yii::t('app.c2', 'Sku'),
            'serial_number' => Yii::t('app.c2', 'Serial Number'),
            'breadcrumb' => Yii::t('app.c2', 'Breadcrumb'),
            'name' => Yii::t('app.c2', 'Name'),
            'label' => Yii::t('app.c2', 'Label'),
            'meta_title' => Yii::t('app.c2', 'Meta Title'),
            'meta_keywords' => Yii::t('app.c2', 'Meta Keywords'),
            'meta_description' => Yii::t('app.c2', 'Meta Description'),
            'sales_price' => Yii::t('app.c2', 'Sales Price'),
            'low_price' => Yii::t('app.c2', 'Lowest Price'),
            'cost_price' => Yii::t('app.c2', 'Cost Price'),
            'market_price' => Yii::t('app.c2', 'Market Price'),
            'brand_id' => Yii::t('app.c2', 'Brands'),
            'supplier_id' => Yii::t('app.c2', 'Supplier'),
            'currency_id' => Yii::t('app.c2', 'Currency'),
            'measure_id' => Yii::t('app.c2', 'Measure'),
            'summary' => Yii::t('app.c2', 'Summary'),
            'description' => Yii::t('app.c2', 'Description'),
            'views_count' => Yii::t('app.c2', 'Views Count'),
            'comment_count' => Yii::t('app.c2', 'Comment Count'),
            'is_released' => Yii::t('app.c2', 'Is Released'),
            'released_at' => Yii::t('app.c2', 'Released At'),
            'created_by' => Yii::t('app.c2', 'Created By'),
            'updated_by' => Yii::t('app.c2', 'Updated By'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
            'category_ids' => Yii::t('app.c2', '{s1} Category', ['s1' => Yii::t('app.c2', 'Product')]),
            'attributeset_ids' => Yii::t('app.c2', 'Attributeset'),
            'avatar' => Yii::t('app.c2', '{s1} avatar', ['s1' => Yii::t('app.c2', 'Product')]),
            'ad_avatar' => Yii::t('app.c2', '{s1} avatar', ['s1' => Yii::t('app.c2', 'Product Advertisement')]),
            'score_exchange_method' => Yii::t('app.c2', 'Score Exchange Method'),
            'is_score_exchange' => Yii::t('app.c2', 'Is Score Exchange'),
            'require_setup' => Yii::t('app.c2', 'Require Setup'),
            'sold_count' => Yii::t('app.c2', 'Sold Count'),
            'virtual_sold_count' => Yii::t('app.c2', 'Virtual Sold Count'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\ProductQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\ProductQuery(get_called_class());
    }

    /**
     * setup default values
     **/
    public function loadDefaultValues($skipIfSet = true)
    {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getAttributesets()
    {
        return $this->hasMany(AttributesetModel::className(), ['id' => 'attributeset_id'])
            ->where(['status' => EntityModelStatus::STATUS_ACTIVE])
            ->viaTable('{{%product_attributeset_rs}}', ['product_id' => 'id']);
    }

    /**
     * retrieve meta attributes according to attributesets
     * @return array attributes
     */
    public function getAttributesetAttributes()
    {
        if (!isset($this->_data['META_ATTRIBUTES'])) {
            $data = [];
            foreach ($this->attributesets as $attributeset) {
                foreach ($attributeset->attrs as $attr) {
                    if (!isset($data[$attr->code])) {
                        $data[$attr->code] = $attr;
                    }
                }
            }
            $this->_data['META_ATTRIBUTES'] = $data;
        }
        return $this->_data['META_ATTRIBUTES'];
    }

    public function getParams()
    {
        $eav = $this->getMetaEavAttributes()->all();
        $attrIds = ArrayHelper::getColumn(AttributeModel::find()->andWhere(['is_sku' => 0])->orderBy(['position' => SORT_DESC])->all(), 'id');
        $params = ProductEavModel::find()->andWhere(['AND', ['entity_id' => $this->id], ['attribute_id' => $attrIds]])->all();
        $array = [];
        foreach ($params as $param) {
            if (!is_null($param->value)) {
                $array[] = $param;
            }
        }
        return $array;
    }

    /**
     * eav behavior required method
     * @return type
     */
    public function getMetaEavAttributes($condition = [])
    {
        return $this->hasMany(AttributeModel::className(), ['id' => 'attribute_id'])
            ->where(['status' => EntityModelStatus::STATUS_ACTIVE])
            ->andWhere($condition)
            ->viaTable('{{%product_eav}}', ['entity_id' => 'id'])
            ->orderBy(['position' => SORT_DESC]);
    }

    // public function getIconUrl($attribute = 'avatar') {
    //     return $this->getImageUrl($attribute, ImageSize::ICON);
    // }

    public function getProductSkus()
    {
        return $this->hasMany(ProductSkuModel::className(), ['product_id' => 'id']);
    }

    /**
     * @return array dropdown list options
     */
    public function getProductSkuOptionsList($key = 'id', $val = 'label', $params = [])
    {
        $options = ArrayHelper::map($this->getProductSkus()->all(), $key, $val);
        return $options;
    }

    public function getPrice($checkoutPoint = 0)
    {
        if (!isset($this->_data['price'])) {
            $this->_data['price'] = Yii::$app->activityHelper->getSingleProductPrice($this, [], $checkoutPoint, true);
        }
        return $this->_data['price'];
    }

    public function beforeDelete()
    {
        foreach ($this->productSkus as $item) {
            $item->delete();
        }
        return parent::beforeDelete();
    }

    // public function getProductAttributes()
    // {
    //     return $this->hasMany(AttributeModel::className(), ['id' => 'attribute_id'])
    //         ->where(['status' => EntityModelStatus::STATUS_ACTIVE])
    //         ->viaTable('{{%product_attribute_rs}}', ['product_id' => 'id']);
    // }

    public function getProductMaterialItems()
    {
        return $this->hasMany(ProductMaterialItemModel::className(), ['id' => 'material_item_id'])
            ->viaTable('{{%product_material_rs}}', ['product_id' => 'id']);
    }

    public function getProductMaterialRs()
    {
        return $this->hasMany(ProductMaterialRsModel::className(), ['product_id' => 'id']);
    }

    public function getProductMaterialOptions()
    {
        return $this->getProductMaterialItems()->asArray()->all();
    }

    public function getMaterialItemOptions($key = 'id', $val = 'value', $params = [])
    {
        $options = ArrayHelper::map($this->getProductMaterialItems()->all(), $key, $val);
        return $options;
    }

    public function getProductMaterialVer()
    {
        $str = "";
        foreach ($this->productMaterialRs as $model) {
            $item = $model->productMaterialItem;
            $str .= "<p>" . $item->label . ':' . $item->value . Yii::t('app.c2', 'Num {s1}', ['s1' => $model->num]) . "</p> ";
        }
        return $str;
    }

    public function getMaterialOptions($key = 'id', $val = 'label', $params = [])
    {
        $options = [];
        if (isset($params['withValue']) && $params['withValue']) {
            foreach ($this->productMaterialRs as $model) {
                $item = $model->productMaterialItem;
                $options[] = [
                    'label' => $item->label . ":" . $item->value . Yii::t('app.c2', 'Num {s1}', ['s1' => $model->num]),
                    'code' => $item->code
                ];
            }
        } else {
            $options = self::getHashMap($key, $val);
        }
        Yii::info($options);
        return $options;
    }

    public function afterSave($insert, $changedAttributes)
    {
        parent::afterSave($insert, $changedAttributes); // TODO: Change the autogenerated stub
    }

    public function getStock()
    {
        return $this->hasOne(ProductStock::className(), ['product_id' => 'id']);
    }

   public function delete()
   {
       if ($this->type == ProductType::TYPE_MATERIAL) {
           foreach ($this->materialItems as $item) {
               $item->delete();
           }
       }
       return parent::delete(); // TODO: Change the autogenerated stub
   }

    public function getMaterialItems()
    {
        return $this->hasMany(ProductMaterialItemModel::className(), ['product_id' => 'id'])->orderBy(['position' => SORT_DESC]);
    }

}
