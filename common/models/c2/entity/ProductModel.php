<?php

namespace common\models\c2\entity;

use cza\base\models\statics\EntityModelStatus;
use Yii;

/**
 * This is the model class for table "{{%product}}".
 *
 * @property string $id
 * @property integer $type
 * @property string $sku
 * @property string $serial_number
 * @property string $breadcrumb
 * @property string $name
 * @property string $label
 * @property string $sales_price
 * @property string $summary
 * @property string $description
 * @property string $currency_id
 * @property string $measure_id
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

    protected $_data = [];

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%product}}';
    }

    public function behaviors() {
        return \yii\helpers\ArrayHelper::merge(parent::behaviors(), [
            \yii\behaviors\BlameableBehavior::className(), // record created_by and updated_by
            'attributesetBehavior' => [
                'class' => \yii2tech\ar\linkmany\LinkManyBehavior::className(),
                'relation' => 'attributesets', // relation, which will be handled
                'relationReferenceAttribute' => 'attributeset_ids', // virtual attribute, which is used for related records specification
                'extraColumns' => [
                    'created_at' => function() {
                        return date('Y-m-d H:i:s');
                    },
                    'updated_at' => function() {
                        return date('Y-m-d H:i:s');
                    },
                ],
            ],
            'eavBehavior' => [
                'class' => \common\behaviors\EavBehavior::className(),
                'vModelClass' => ProductEavModel::className(),
                'aModelClass' => AttributeModel::className(),
            ],
            'attachmentsBehavior' => [
                'class' => \cza\base\modules\Attachments\behaviors\AttachmentBehavior::className(),
                'attributesDefinition' => [
                    'avatar' => [
                        'class' => EntityAttachmentImage::className(),
                        'validator' => 'image',
                        'rules' => [
                            'maxFiles' => 1,
                            'extensions' => Yii::$app->params['config']['upload']['imageWhiteExts'],
                            'maxSize' => Yii::$app->params['config']['upload']['maxFileSize'],
                        ]
                    ],
                    'ad_avatar' => [
                        'class' => EntityAttachmentImage::className(),
                        'validator' => 'image',
                        'rules' => [
                            'maxFiles' => 1,
                            'extensions' => Yii::$app->params['config']['upload']['imageWhiteExts'],
                            'maxSize' => Yii::$app->params['config']['upload']['maxFileSize'],
                        ]
                    ],
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
            [['eshop_id', 'type', 'supplier_id', 'currency_id', 'measure_id', 'views_count', 'comment_count', 'is_released', 'created_by', 'updated_by', 'status', 'position', 'is_score_exchange', 'score_exchange_method', 'is_install', 'brand_id', 'sold_count', 'virtual_sold_count', 'require_setup'], 'integer'],
            [['sku', 'name', 'label', 'attributeset_ids', 'sales_price',], 'required'],
            [['sku', 'name', 'serial_number',], 'unique'],
            [['meta_description', 'summary'], 'string'],
            [['sales_price', 'cost_price', 'market_price', 'score', 'gift_score', 'install_price', 'low_price'], 'number'],
            [['sales_price', 'score', 'attributeset_ids', 'released_at', 'child_ids', 'created_at', 'updated_at', 'description', 'views_count', 'gift_score', 'is_install', 'brand_id', 'low_price'], 'safe'],
            [['seo_code', 'sku', 'serial_number', 'breadcrumb', 'meta_title', 'meta_keywords'], 'string', 'max' => 255],
            [['name'], 'string', 'length' => [1, 50]],
            [['label'], 'string', 'length' => [1, 30]],
            [['sku'], 'match', 'pattern' => '/^[A-Za-z0-9_-]+$/u'],
            // [['sku'], 'match', 'pattern' => '/[A-Za-z0-9]+\-\w+/'],
            [['sku'], 'match', 'pattern' => '/[\x{4e00}-\x{9fa5}]+/u', 'not' => true],
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
            'virtual_sold_count' => Yii::t('app.c2', 'Virtual Sold Count')
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

    public function getAttributesets() {
        return $this->hasMany(AttributesetModel::className(), ['id' => 'attributeset_id'])
            ->where(['status' => EntityModelStatus::STATUS_ACTIVE])
            ->viaTable('{{%product_attributeset_rs}}', ['product_id' => 'id']);
    }

    public function afterSave($insert, $changedAttributes) {
        if ($insert) {
            $hash = Yii::$app->czaHelper->password->hexEncode($this->sku);
            ProductSkuModel::createSku([
                'product_id' => $this->id,
                'sku' => $this->sku,
                'hash' => $hash,
                'name' => $this->name,
                'label' => $this->label,
            ]);
        }
        // $this->updateAttributes(['low_price' => $this->getLowestPrice()]);

        parent::afterSave($insert, $changedAttributes);
    }

    public function beforeSave($insert) {
        // convert to array and save by link behavior
        $this->save_category_ids = !empty($this->category_ids) ? explode(',', $this->category_ids) : [];
        return parent::beforeSave($insert);
    }

}
