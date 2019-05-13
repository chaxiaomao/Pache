<?php

namespace common\models\c2\entity;

use Yii;
use yii\validators\RequiredValidator;
use yiiunit\extensions\redis\data\ar\OrderItem;

/**
 * This is the model class for table "{{%order}}".
 *
 * @property string $id
 * @property string $user_id
 * @property string $code
 * @property string $label
 * @property string $production_date
 * @property string $delivery_date
 * @property string $created_by
 * @property string $updated_by
 * @property string $memo
 * @property integer $state
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class OrderModel extends \cza\base\models\ActiveRecord
{
    public $items;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%order}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['user_id', 'created_by', 'updated_by', 'position'], 'integer'],
            [['production_date', 'delivery_date', 'created_at', 'updated_at'], 'safe'],
            [['code', 'label', 'memo'], 'string', 'max' => 255],
            [['items'], 'validateItems'],
            [['state', 'integer'], 'string', 'max' => 4],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app.c2', 'ID'),
            'user_id' => Yii::t('app.c2', 'Customer'),
            'code' => Yii::t('app.c2', 'Order Code'),
            'label' => Yii::t('app.c2', 'Label'),
            'production_date' => Yii::t('app.c2', 'Production Date'),
            'delivery_date' => Yii::t('app.c2', 'Delivery Date'),
            'created_by' => Yii::t('app.c2', 'Created By'),
            'updated_by' => Yii::t('app.c2', 'Updated By'),
            'memo' => Yii::t('app.c2', 'Memo'),
            'state' => Yii::t('app.c2', 'State'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\OrderQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\OrderQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
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

    public function getOrderItems()
    {
        return $this->hasMany(OrderItemModel::className(), ['order_id' => 'id']);
    }

    public function loadItems()
    {
        $this->items = $this->getOrderItems()->all();
    }

}
