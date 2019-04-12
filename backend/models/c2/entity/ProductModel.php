<?php

namespace backend\models\c2\entity;

use common\models\c2\entity\AttributeModel;
use Yii;
use common\behaviors\CmsContentBehavior;
use common\models\c2\entity\EntityAttachment;
use common\models\c2\entity\EntityAttachmentImage;
use common\models\c2\entity\EntityAttachmentFile;
use cza\base\models\statics\EntityModelStatus;
use common\models\c2\entity\ProductModel as BaseModel;
use common\models\c2\statics\CheckoutPoint;
use yii\helpers\ArrayHelper;

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

}
