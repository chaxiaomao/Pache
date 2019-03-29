<?php

namespace common\behaviors;

use common\models\c2\entity\AttributeModel;
use Yii;
use yii\behaviors\AttributeBehavior;
use yii\db\ActiveRecord;
use cza\base\models\statics\EntityModelStatus;
use yii\helpers\ArrayHelper;
use yii\helpers\Json;

/**
 * refer to reshik84/yii2-eav-behavior
 * Modified by Ben
 */
class EavBehavior extends AttributeBehavior {

    private $_attributeKeys = [];
    private $_attributes = [];
    private $_metaAttributes = [];
    public $vModelClass;  // value model class
    public $aModelClass;  // value model class

    public function events() {
        return [
            ActiveRecord::EVENT_AFTER_FIND => 'eavAfterFind',
            ActiveRecord::EVENT_INIT => 'eavInit',
            ActiveRecord::EVENT_AFTER_INSERT => 'eavAfterInsert',
            ActiveRecord::EVENT_AFTER_UPDATE => 'eavAfterUpdate',
//            ActiveRecord::EVENT_AFTER_DELETE => 'eavAfterDelete'   // be handled by relationship behavior
        ];
    }

    public function eavInit() {
        if (!isset($this->vModelClass)) {
            throw new \Exception("vModelClass is required defintion!");
        }
    }

    /**
     * 
     * @param type $code
     * @return AttributeModel
     */
    public function getMetaEavAttribute($code) {
        if (isset($this->_attributeKeys[$code])) {
            return AttributeModel::findOne(['code' => $code, 'status' => EntityModelStatus::STATUS_ACTIVE]);
        }
        return null;
    }

    public function getEavValue($code) {
        return isset($this->_attributes[$code]) ? $this->_attributes[$code] : "";
    }

    public function getEavValues() {
        return $this->_attributes;
    }

    public function updateEavAttributes($values) {
        $modelClass = $this->vModelClass;
        $entityModel = $this->owner;
        foreach ($values as $k => $v) {
            $attribute = $this->getMetaAttribute($k);
            $value = $v;
            if ($attribute->isMultiple()) {
                $value = Json::encode($this->retrieveItems($v));
            }

            $modelClass::updateAll(['value' => $value], ['entity_id' => $entityModel->id, 'attribute_code' => $k]);
        }
    }

    /**
     * retrieve items $id=>$label hash map
     * @param type array
     */
    public function retrieveItems($v) {
        $result = \common\models\c2\entity\AttributeItemModel::getHashMap('id', 'label', ['id' => $v]);
//        Yii::info($result);
        return $result;
    }

    public function getEavAttributeCodes() {
        return $this->owner->getMetaEavAttributes()->select('code')->column();
    }

    public function getEavAttributeIds() {
        return $this->owner->getMetaEavAttributes()->select('id')->column();
    }

    public function canGetProperty($name, $checkVars = true) {
        if (!parent::canGetProperty($name, $checkVars)) {
            return in_array($name, $this->_attributeKeys);
        }
        return true;
    }

    public function canSetProperty($name, $checkVars = true) {
        if (!parent::canSetProperty($name, $checkVars)) {
            return in_array($name, $this->_attributeKeys);
        }
        return true;
    }

    public function getMetaAttribute($code) {
        $this->loadEavAttributeModels();
        if (isset($this->_metaAttributes[$code])) {
            return $this->_metaAttributes[$code];
        }
        return null;
    }

    public function loadEavAttributeModels($forceLoad = false) {
        if (empty($this->_metaAttributes) || $forceLoad) {
            $items = $this->owner->getMetaEavAttributes()->all();
            foreach ($items as $item) {
                $this->_metaAttributes[$item->code] = $item;
            }
        }
    }

    public function loadEavAttributes($forceLoad = false) {
        if (empty($this->_attributes) || $forceLoad) {
            $class = $this->vModelClass;
            $items = $class::find()->andWhere(['entity_id' => $this->owner->id, 'attribute_id' => $this->getEavAttributeIds()])->orderBy(['position' => SORT_DESC])->all();
            foreach ($items as $item) {
                $this->_attributes[$item->attribute_code] = $item->getEavValue();
            }
            $this->_attributeKeys = array_keys($this->_attributes);
        }
    }

    public function eavAfterFind() {
        $this->loadEavAttributes();
    }

    /**
     * 
     * @param type $ids array
     */
    public function linkEntityAttributesByIds($ids) {
        $aModelClass = $this->aModelClass;
        $attributes = $aModelClass::find()->active()->andWhere(['id' => $ids])->all();
        foreach ($attributes as $attribute) {
            $vClass = $this->vModelClass;
            $vModel = new $vClass();
            $vModel->setAttributes([
                'entity_id' => $this->owner->id,
                'attribute_id' => $attribute->id,
                'attribute_code' => $attribute->code,
            ]);
            $vModel->save();
        }
    }

    public function unlinkEntityAttributesByIds($ids) {
        $vClass = $this->vModelClass;
        $vClass::deleteAll(['entity_id' => $this->owner->id, 'attribute_id' => $ids]);
    }

    public function __get($name) {
        if (array_key_exists($name, $this->_attributes)) {
            return $this->_attributes[$name];
        }
    }

    public function __set($name, $value) {
        if (array_key_exists($name, $this->_attributes)) {
            $this->_attributes[$name] = $value;
        }
    }

    public function eavAfterInsert($event) {
        $attributes = $this->owner->getAttributesetAttributes();
        foreach ($attributes as $attribute) {
            $vClass = $this->vModelClass;
            $vModel = new $vClass();
            $vModel->setAttributes([
                'entity_id' => $this->owner->id,
                'attribute_id' => $attribute->id,
                'attribute_code' => $attribute->code,
            ]);
            $vModel->save();
        }
        $this->owner->loadEavAttributes(true);
    }

    public function eavAfterUpdate($event) {
        $attributes = $this->owner->getAttributesetAttributes();
        $newAttrIds = [];
        foreach ($attributes as $attribute) {
            $newAttrIds[] = $attribute->id;
        }

        $vClass = $this->vModelClass;
        $vOldModels = $vClass::find()->where(['entity_id' => $this->owner->id])->all();
        $oldAttrIds = [];
        foreach ($vOldModels as $vOldModel) {
            if (!in_array($vOldModel->attribute_id, $newAttrIds)) {
                $vOldModel->delete();
            } else {
                $oldAttrIds[] = $vOldModel->attribute_id;
            }
        }

        foreach ($attributes as $attribute) {
            if (!in_array($attribute->id, $oldAttrIds)) {
                $vModel = new $vClass();
                $vModel->setAttributes([
                    'entity_id' => $this->owner->id,
                    'attribute_id' => $attribute->id,
                    'attribute_code' => $attribute->code,
                ]);
                $vModel->save();
            }
        }
    }

    public function getVModel($code) {
        $class = $this->vModelClass;
        return $class::findOne(['entity_id' => $this->owner->id, 'attribute_code' => $code]);
    }

    public function getVModelClass() {
        return $this->vModelClass;
    }

//    public function eavAfterDelete() {
//        Yii::info("eavAfterDelete: " . $this->owner->id);
////        foreach ($this->_attributeKeys as $attribute) {
////            $attr_model = EavAttributes::find()->where(['entity_id' => $this->_entity->id, 'attribute' => $attribute])->one();
////            if ($attr_model) {
////                $val_model = EavValues::find()->where(['attribute_id' => $attr_model->id, 'id' => $this->owner->id])->one();
////                if ($val_model) {
////                    $val_model->delete();
////                }
////            }
////        }
//    }
}
