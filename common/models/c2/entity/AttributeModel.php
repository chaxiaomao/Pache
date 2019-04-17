<?php

namespace common\models\c2\entity;

use common\models\c2\statics\AttributeInputType;
use common\models\c2\statics\SeletedType;
use cza\base\models\statics\EntityModelStatus;
use Yii;
use yii\helpers\ArrayHelper;
use yii\validators\RequiredValidator;

/**
 * This is the model class for table "{{%attribute}}".
 *
 * @property string $id
 * @property string $eshop_id
 * @property integer $type
 * @property string $code
 * @property string $name
 * @property string $label
 * @property string $hint
 * @property string $input_type
 * @property string $default_value
 * @property string $memo
 * @property integer $is_sku
 * @property integer $is_visible
 * @property integer $is_required
 * @property integer $is_unique
 * @property integer $is_depend
 * @property string $depend_id
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class AttributeModel extends \cza\base\models\ActiveRecord
{

    public $items;  // for attribute_item

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%attribute}}';
    }

    public function behaviors() {
        return \yii\helpers\ArrayHelper::merge(parent::behaviors(), [
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
        ]);
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['eshop_id', 'type', 'is_required', 'is_sku', 'is_unique', 'is_depend', 'is_visible', 'depend_id', 'status', 'position'], 'integer'],
            [['code', 'label'], 'required'],
            [['items',], 'validateItems'],
            [['code'], 'match', 'pattern' => '/\s/', 'not' => true],
            [['code'], 'match', 'pattern' => '/-/', 'not' => true],
            [['code',], 'unique'],
            [['default_value', 'memo'], 'string'],
            [['attributeset_ids', 'created_at', 'updated_at'], 'safe'],
            [['code', 'name', 'label', 'hint', 'input_type'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app.c2', 'ID'),
            'attributeset_ids' => Yii::t('app.c2', 'Attributeset'),
            'eshop_id' => Yii::t('app.c2', 'EShops'),
            'type' => Yii::t('app.c2', 'Type'),
            'code' => Yii::t('app.c2', 'Code'),
            'name' => Yii::t('app.c2', 'Name'),
            'label' => Yii::t('app.c2', 'Label'),
            'hint' => Yii::t('app.c2', 'Hint'),
            'input_type' => Yii::t('app.c2', 'Input Type'),
            'default_value' => Yii::t('app.c2', 'Default Value'),
            'memo' => Yii::t('app.c2', 'Memo'),
            'is_sku' => Yii::t('app.c2', 'Is Sku Attribute'),
            'is_visible' => Yii::t('app.c2', 'Is Visible'),
            'is_required' => Yii::t('app.c2', 'Is Required'),
            'is_unique' => Yii::t('app.c2', 'Is Unique'),
            'is_depend' => Yii::t('app.c2', 'Is Depend'),
            'depend_id' => Yii::t('app.c2', 'Depend Attribute'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
            'items' => Yii::t('app.c2', 'Sub Items Management'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\AttributeQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\AttributeQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
        $this->is_sku = 1;
    }

    public function getEavDefaultValue() {
        switch ($this->input_type) {
            case AttributeInputType::INPUT_DROPDOWN_LIST:
            case AttributeInputType::INPUT_RADIO_LIST:
                return implode(',', $this->getAttributeItems()->select(['id'])->andWhere(['is_selected' => SeletedType::TYPE_SELECTED])->column());
            case AttributeInputType::INPUT_CHECKBOX_LIST:
                return $this->getAttributeItems()->select(['id'])->andWhere(['is_selected' => SeletedType::TYPE_SELECTED])->column();
            case AttributeInputType::INPUT_RICHTEXT:
            case AttributeInputType::INPUT_TEXT:
            case AttributeInputType::INPUT_TEXTAREA:
            default:
                return $this->default_value;
        }
    }

    public function getTitle() {
        return !empty($this->label) ? $this->label : $this->name;
    }

    public function getItemsHashMap($keyField = 'id', $valField = 'label', $condition = '') {
        $options = ArrayHelper::map($this->getAttributeItems()->all(), $keyField, $valField);
        return $options;
    }

    public function getAttributeItems() {
        return $this->hasMany(AttributeItemModel::className(), ['attribute_id' => 'id'])->orderBy(['position' => SORT_DESC, 'id' => SORT_ASC]);
    }

    public function getAttributesets() {
        return $this->hasMany(AttributesetModel::className(), ['id' => 'attributeset_id'])
            ->where(['status' => EntityModelStatus::STATUS_ACTIVE])
            ->viaTable('{{%attributeset_attribute_rs}}', ['attribute_id' => 'id']);
    }

    public function getProductEavAttributes() {
        return $this->hasMany(ProductEav::className(), ['attribute_id' => 'id']);
    }

    public function getDependObj() {
        return $this->hasOne(static::className(), ['depend_id' => 'id']);
    }

    public function getDependObjLabel() {
        return !is_null($this->dependObj) ? $this->dependObj->label : "";
    }

    public function getDependObjId() {
        return !is_null($this->dependObj) ? $this->dependObj->id : "";
    }

    public function afterDelete() {
        parent::afterDelete();
    }

    public function validateItems($attribute) {
        $requiredValidator = new RequiredValidator();

        foreach ($this->$attribute as $index => $row) {
            $error = null;
            $requiredValidator->validate($row['label'], $error);
            if (!empty($error)) {
                $key = $attribute . '[' . $index . '][label]';
                $this->addError($key, $error);
            }
            $requiredValidator->validate($row['value'], $error);
            if (!empty($error)) {
                $key = $attribute . '[' . $index . '][value]';
                $this->addError($key, $error);
            }
        }
    }

    public function loadItems() {
        $this->items = $this->getAttributeItems()->all();
        Yii::info($this->attributeset_ids);
    }

    public function beforeDelete() {
        foreach ($this->attributeItems as $item) {
            $item->delete();
        }
        return parent::beforeDelete();
    }

    public function isMultiple() {
        if (is_null($this->input_type)) {
            return 0;
        }
        return AttributeInputType::isMultiple($this->input_type);
    }

    public function getInputTypeLabel() {
        return AttributeInputType::getLabel($this->input_type);
    }

    public function beforeSave($insert) {
        if (!$insert && ($this->code != $this->getOldAttribute('code'))) {
            ProductEavModel::updateAll(['attribute_code' => $this->code], ['attribute_id' => $this->id]);
        }
        return parent::beforeSave($insert);
    }

    public function afterSave($insert, $changedAttributes) {
        parent::afterSave($insert, $changedAttributes);
        if (AttributeInputType::isMultiple($this->input_type)) {
            foreach ($this->items as $item) {
                $attributes = [
                    'code' => isset($item['code']) ? $item['code'] : "",
                    'name' => isset($item['name']) ? $item['name'] : "",
                    'label' => isset($item['label']) ? $item['label'] : "",
                    'value' => isset($item['value']) ? $item['value'] : "",
                    'is_selected' => isset($item['is_selected']) ? $item['is_selected'] : 0,
                    'position' => isset($item['position']) ? $item['position'] : 50,
                ];
                if (isset($item['id']) && $item['id'] == '') {  // create new items
                    $itemModel = new AttributeItemModel();
                    $itemModel->setAttributes($attributes);
                    $itemModel->link('owner', $this);
                } elseif (isset($item['id'])) {  // update itemes
                    $itemModel = AttributeItemModel::findOne(['id' => $item['id']]);
                    if (!is_null($itemModel)) {
                        $itemModel->updateAttributes($attributes);
                    }
                }
            }
        }
    }

    public function getEavValue($pid){
        return ProductEavModel::find()->andWhere(['entity_id'=>$pid,'attribute_id'=>$this->id])->one()->value;
    }

    public function getEshop() {
        return $this->hasOne(Eshop::className(), ['id' => 'eshop_id']);
    }

    public function getIsRequire()
    {
        return $this->is_unique;
    }

}
