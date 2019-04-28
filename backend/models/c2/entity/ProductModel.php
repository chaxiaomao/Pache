<?php

namespace backend\models\c2\entity;

use common\models\c2\entity\AttributeModel;
use common\models\c2\entity\ProductMaterialItemModel;
use common\models\c2\entity\ProductMaterialRsModel;
use common\models\c2\entity\ProductPackModel;
use common\models\c2\entity\ProductStock;
use common\models\c2\entity\WarehouseModel;
use common\models\c2\statics\ProductType;
use Yii;
use common\behaviors\CmsContentBehavior;
use common\models\c2\entity\EntityAttachment;
use common\models\c2\entity\EntityAttachmentImage;
use common\models\c2\entity\EntityAttachmentFile;
use cza\base\models\statics\EntityModelStatus;
use common\models\c2\entity\ProductModel as BaseModel;
use common\models\c2\statics\CheckoutPoint;
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
 * @property string $Product
 * @property string $label
 * @property string $meta_title
 * @property string $meta_keywords
 * @property string $meta_description
 * @property string $sales_price
 * @property string $cost_price
 * @property string $market_price
 * @property string $supplier_id
 * @property string $currency_id
 * @property string $measure_id
 * @property string $summary
 * @property string $description
 * @property integer $views_count
 * @property integer $comment_count
 * @property integer $require_setup
 * @property integer $is_released
 * @property string $released_at
 * @property string $created_by
 * @property string $updated_by
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class ProductModel extends BaseModel
{
    public $items;
    public $warehouse_id;
    public $packItems;

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return ArrayHelper::merge(parent::rules(), [
            [['items',], 'validateItems'],
            [['packItems', ], 'validatePack'],
            [['warehouse_id',], 'integer'],
        ]);
    }

    public function validatePack()
    {

    }

    public function loadDefaultValues($skipIfSet = true)
    {
        parent::loadDefaultValues($skipIfSet); // TODO: Change the autogenerated stub
        $this->type = ProductType::TYPE_PRODUCT;
        if (!$this->isNewRecord) {
            $this->warehouse_id = $this->warehouse->id;
        }
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
            'metaEavAttributesBehavior' => [
                'class' => \yii2tech\ar\linkmany\LinkManyBehavior::className(),
                'relation' => 'metaEavAttributes', // relation, which will be handled
                'relationReferenceAttribute' => 'meta_attributes_ids', // virtual attribute, which is used for related records specification
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

    public function getAttachmentImage($attribute)
    {
        return $this->getAttachmentImages($attribute)->one();
    }

    public function getAllAttachments()
    {
        $condition = ['entity_class' => BaseModel::className()];
        return $this->hasMany(EntityAttachment::className(), ['entity_id' => 'id'])
            ->andOnCondition($condition)
            ->orderBy(['position' => SORT_DESC, 'id' => SORT_ASC]);
    }

    public function getAttachmentImages($attribute = 'album')
    {
        $condition = !empty($attribute) ? ['entity_class' => BaseModel::className(), 'entity_attribute' => $attribute, 'status' => EntityModelStatus::STATUS_ACTIVE] : ['entity_class' => BaseModel::className(), 'status' => EntityModelStatus::STATUS_ACTIVE];
        return $this->hasMany(EntityAttachmentImage::className(), ['entity_id' => 'id'])
            ->andOnCondition($condition)
            ->orderBy(['position' => SORT_DESC, 'id' => SORT_ASC]);
    }

    public function getAttachmentFiles($attribute = 'files')
    {
        return $this->hasMany(EntityAttachmentFile::className(), ['entity_id' => 'id'])
            ->andOnCondition(['entity_class' => BaseModel::className(), 'entity_attribute' => $attribute, 'status' => EntityModelStatus::STATUS_ACTIVE])
            ->orderBy(['position' => SORT_DESC, 'id' => SORT_ASC]);
    }

    public function getMaterialItems()
    {
        return $this->hasMany(ProductMaterialItemModel::className(), ['id' => 'material_item_id'])
            ->orderBy(['position' => SORT_DESC])
            ->viaTable('{{%product_material_rs}}', ['product_id' => 'id']);
    }

    public function getMaterials()
    {
        return $this->hasMany(ProductMaterialModel::className(), ['id' => 'material_id'])
            ->orderBy(['position' => SORT_DESC])
            ->viaTable('{{%product_material_rs}}', ['product_id' => 'id']);
    }

    public function getProductMaterialRs()
    {
        return $this->hasMany(ProductMaterialRsModel::className(), ['product_id' => 'id']);
    }

    public function loadItems()
    {
        $this->items = $this->getProductMaterialRs()->all();
    }

    public function validateItems($attribute)
    {
        $requiredValidator = new RequiredValidator();

        foreach ($this->$attribute as $index => $row) {
            $error = null;
            $requiredValidator->validate($row['material_id'], $error);
            if (!empty($error)) {
                $key = $attribute . '[' . $index . '][material_id]';
                $this->addError($key, $error);
            }
            $requiredValidator->validate($row['material_item_id'], $error);
            if (!empty($error)) {
                $key = $attribute . '[' . $index . '][material_item_id]';
                $this->addError($key, $error);
            }
        }
    }

    public function afterSave($insert, $changedAttributes)
    {
        parent::afterSave($insert, $changedAttributes); // TODO: Change the autogenerated stub
        if ($insert) {
            $attrs = [
              'warehouse_id' => $this->warehouse_id,
              'product_id' => $this->id,
              'num' => 0,
            ];
            $productStock = new ProductStock();
            $productStock->setAttributes($attrs);
            $productStock->save();
        }
        if ($this->type == ProductType::TYPE_PRODUCT) {
            if (!empty($this->items)) {
                foreach ($this->items as $item) {
                    if (isset($item['id']) && $item['id'] == '') {
                        $model = new ProductMaterialRsModel();
                        $model->setAttributes(ArrayHelper::merge($item, [
                            'product_id' => $this->id
                        ]));
                        $model->save();
                    } elseif (isset($item['id'])) {
                        $model = ProductMaterialRsModel::findOne($item['id']);
                        $model->updateAttributes($item);
                    }
                }
            }
        }
    }

    public function getPackItems()
    {
        return $this->hasMany(ProductPackModel::className(), ['product_id' => 'id']);
    }

    public function loadPackItems()
    {
        $this->packItems = $this->getPackItems()->all();
    }

    public function getWarehouse()
    {
        return $this->hasOne(WarehouseModel::className(), ['id' => 'warehouse_id']);
    }

    public function getPackItemsOptions()
    {
        return ArrayHelper::map($this->getPackItems()->asArray()->all(), 'id', 'label');
    }

}
