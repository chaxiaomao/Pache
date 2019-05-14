<?php

namespace common\models\c2\entity;

use Yii;

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
 * @property string $value
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

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['eshop_id', 'brand_id', 'supplier_id', 'currency_id', 'measure_id', 'views_count',
                'comment_count', 'sold_count', 'virtual_sold_count', 'created_by', 'updated_by', 'position'], 'integer'],
            [['label', 'name', 'sku'], 'required'],
            [['meta_description', 'summary', 'description'], 'string'],
            [['score', 'gift_score', 'install_price', 'low_price', 'sales_price', 'cost_price', 'market_price'], 'number'],
            [['released_at', 'created_at', 'updated_at'], 'safe'],
            [['type', 'is_score_exchange', 'score_exchange_method', 'require_setup', 'is_install', 'is_released'], 'integer', 'max' => 4],
            [['seo_code', 'sku', 'serial_number', 'breadcrumb', 'name', 'label', 'meta_title', 'meta_keywords', 'value'], 'string', 'max' => 255],
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
            'type' => Yii::t('app.c2', 'Type'),
            'seo_code' => Yii::t('app.c2', 'Seo Code'),
            'sku' => Yii::t('app.c2', 'Sku'),
            'serial_number' => Yii::t('app.c2', 'Serial Number'),
            'breadcrumb' => Yii::t('app.c2', 'Breadcrumb'),
            'name' => Yii::t('app.c2', 'Name'),
            'label' => Yii::t('app.c2', 'Label'),
            'value' => Yii::t('app.c2', 'Value'),
            'meta_title' => Yii::t('app.c2', 'Meta Title'),
            'meta_keywords' => Yii::t('app.c2', 'Meta Keywords'),
            'meta_description' => Yii::t('app.c2', 'Meta Description'),
            'is_score_exchange' => Yii::t('app.c2', 'Is Score Exchange'),
            'score_exchange_method' => Yii::t('app.c2', 'Score Exchange Method'),
            'score' => Yii::t('app.c2', 'Score'),
            'gift_score' => Yii::t('app.c2', 'Gift Score'),
            'require_setup' => Yii::t('app.c2', 'Require Setup'),
            'is_install' => Yii::t('app.c2', 'Is Install'),
            'install_price' => Yii::t('app.c2', 'Install Price'),
            'low_price' => Yii::t('app.c2', 'Low Price'),
            'sales_price' => Yii::t('app.c2', 'Sales Price'),
            'cost_price' => Yii::t('app.c2', 'Cost Price'),
            'market_price' => Yii::t('app.c2', 'Market Price'),
            'brand_id' => Yii::t('app.c2', 'Brand ID'),
            'supplier_id' => Yii::t('app.c2', 'Supplier'),
            'currency_id' => Yii::t('app.c2', 'Currency ID'),
            'measure_id' => Yii::t('app.c2', 'Measure ID'),
            'summary' => Yii::t('app.c2', 'Summary'),
            'description' => Yii::t('app.c2', 'Description'),
            'views_count' => Yii::t('app.c2', 'Views Count'),
            'comment_count' => Yii::t('app.c2', 'Comment Count'),
            'sold_count' => Yii::t('app.c2', 'Sold Count'),
            'virtual_sold_count' => Yii::t('app.c2', 'Virtual Sold Count'),
            'is_released' => Yii::t('app.c2', 'Is Released'),
            'released_at' => Yii::t('app.c2', 'Released At'),
            'created_by' => Yii::t('app.c2', 'Created By'),
            'updated_by' => Yii::t('app.c2', 'Updated By'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
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
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getProductCombination()
    {
        return $this->hasMany(ProductCombinationModel::className(), ['product_id' => 'id']);
    }

    public function getProductPackage()
    {
        return $this->hasMany(ProductPackageModel::className(), ['product_id' => 'id']);
    }

    public function afterSave($insert, $changedAttributes)
    {
        parent::afterSave($insert, $changedAttributes); // TODO: Change the autogenerated stub

    }

    public function getProductStock()
    {
        return $this->hasOne(ProductStockModel::className(), ['product_id' => 'id']);
    }

    public function getSupplier()
    {
        return $this->hasOne(SupplierModel::className(), ['id' => 'supplier_id']);
    }

}
