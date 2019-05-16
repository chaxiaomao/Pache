<?php

namespace common\models\c2\entity;

use Yii;
use yii\validators\RequiredValidator;

/**
 * This is the model class for table "{{%product_combination}}".
 *
 * @property string $id
 * @property string $product_id
 * @property string $code
 * @property string $name
 * @property string $label
 * @property string $value
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class ProductCombinationModel extends \cza\base\models\ActiveRecord
{
    public $items;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%product_combination}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['product_id', 'position'], 'integer'],
            [['created_at', 'updated_at', 'items'], 'safe'],
            [['items'], 'validateItems'],
            [['name'], 'required'],
            [['code', 'name', 'label', 'value'], 'string', 'max' => 255],
            [['status'], 'integer', 'max' => 4],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app.c2', 'ID'),
            'product_id' => Yii::t('app.c2', 'Product ID'),
            'code' => Yii::t('app.c2', 'Code'),
            'name' => Yii::t('app.c2', 'Name'),
            'label' => Yii::t('app.c2', 'Label'),
            'value' => Yii::t('app.c2', 'Value'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\ProductCombinationQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\ProductCombinationQuery(get_called_class());
    }

    /**
     * setup default values
     **/
    public function loadDefaultValues($skipIfSet = true)
    {
        parent::loadDefaultValues($skipIfSet);
    }

    public function validateItems($attribute)
    {
        $items = $this->$attribute;

        foreach ($items as $index => $row) {
            $requiredValidator = new RequiredValidator();
            $error = null;
            $requiredValidator->validate($row['product_id'], $error);
            if (!empty($error)) {
                $key = $attribute . '[' . $index . '][product_id]';
                $this->addError($key, $error);
            }
        }
    }

    public function getProductCombinationItems()
    {
        return $this->hasMany(ProductCombinationItemModel::className(), ['combination_id' => 'id']);
    }

    public function loadItems()
    {
        $this->items = $this->getProductCombinationItems()->all();
    }

    public function afterSave($insert, $changedAttributes)
    {
        parent::afterSave($insert, $changedAttributes); // TODO: Change the autogenerated stub
        if (!empty($this->items)) {
            foreach ($this->items as $item) {
                $attributes = [
                    'product_id' => isset($item['product_id']) ? $item['product_id'] : 0,
                    'code' => isset($item['code']) ? $item['code'] : "",
                    'name' => isset($item['name']) ? $item['name'] : "",
                    'label' => isset($item['label']) ? $item['label'] : "",
                    'value' => isset($item['value']) ? $item['value'] : "",
                    'number' => isset($item['number']) ? $item['number'] : 1,
                ];
                if (isset($item['id']) && $item['id'] == '') {
                    $itemModel = new ProductCombinationItemModel();
                    $itemModel->setAttributes($attributes);
                    $itemModel->link('owner', $this);
                } elseif (isset($item['id'])) {
                    $itemModel = ProductCombinationItemModel::findOne($item['id']);
                    if (!is_null($item)) {
                        $itemModel->updateAttributes($attributes);
                    }
                }
            }
        }
    }

    public function getProduct()
    {
        return $this->hasOne(ProductModel::className(), ['id' => 'product_id']);
    }

    public function beforeDelete()
    {
        foreach ($this->getProductCombinationItems()->all() as $item) {
            $item->delete();
        }
        return parent::beforeDelete(); // TODO: Change the autogenerated stub
    }

}
