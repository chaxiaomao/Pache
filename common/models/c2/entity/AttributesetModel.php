<?php

namespace common\models\c2\entity;

use cza\base\models\statics\EntityModelStatus;
use Yii;

/**
 * This is the model class for table "{{%attributeset}}".
 *
 * @property string $id
 * @property string $eshop_id
 * @property integer $type
 * @property string $code
 * @property string $name
 * @property string $label
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class AttributesetModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%attributeset}}';
    }

    public function behaviors()
    {
        return \yii\helpers\ArrayHelper::merge(parent::behaviors(), [
            'attrsBehavior' => [
                'class' => \yii2tech\ar\linkmany\LinkManyBehavior::className(),
                'relation' => 'attrs', // relation, which will be handled
                'relationReferenceAttribute' => 'attrs_ids', // virtual attribute, which is used for related records specification
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
            [['eshop_id', 'position'], 'integer'],
            [['label'], 'required'],
            [['created_at', 'updated_at'], 'safe'],
            [['type', 'status'], 'integer', 'max' => 4],
            [['attrs_ids'], 'safe'],
            [['code', 'name', 'label'], 'string', 'max' => 255],
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
            'code' => Yii::t('app.c2', 'Code'),
            'name' => Yii::t('app.c2', 'Name'),
            'label' => Yii::t('app.c2', 'Label'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
            'attrs_ids' => Yii::t('app.c2', 'Attrs'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\AttributesetQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\AttributesetQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getAllAttr()
    {
        return AttributeModel::find()->where(['status' => EntityModelStatus::STATUS_ACTIVE])->all();
    }

    public function getAttrs()
    {
        return $this->hasMany(AttributeModel::className(), ['id' => 'attribute_id'])
            ->where(['status' => EntityModelStatus::STATUS_ACTIVE])
            ->viaTable('{{%attributeset_attribute_rs}}', ['attributeset_id' => 'id']);
    }

    public function getProducts()
    {
        return $this->hasMany(ProductModel::className(), ['id' => 'product_id'])
            ->where(['status' => EntityModelStatus::STATUS_ACTIVE])
            ->viaTable('{{%product_attributeset_rs}}', ['attributeset_id' => 'id']);
    }

    public function afterSave($insert, $changedAttributes)
    {
        //        Yii::info('before: ');
        //        Yii::info($this->getAttrs()->select('id')->column());
        $oldAttrIds = $this->getAttrs()->select('id')->column();

        parent::afterSave($insert, $changedAttributes);

        //        Yii::info('after: ');
        //        Yii::info($this->getAttrs()->select('id')->column());
        $newAttrIds = $this->getAttrs()->select('id')->column();
        $minusIds = array_diff($oldAttrIds, $newAttrIds);
        $plusIds = array_diff($newAttrIds, $oldAttrIds);
        //        Yii::info('minus diff: ');
        //        Yii::info($minusIds);
        //        Yii::info('plus diff: ');
        //        Yii::info($plusIds);

        if (!empty($minusIds) || !empty($plusIds)) {
            $products = $this->products;

            if (!empty($minusIds)) {
                foreach ($products as $product) {
                    $product->unlinkEntityAttributesByIds($minusIds);
                }
            }

            if (!empty($plusIds)) {
                foreach ($products as $product) {
                    $product->linkEntityAttributesByIds($plusIds);
                }
            }
        }
    }

}
