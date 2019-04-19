<?php

namespace common\models\c2\entity;

use common\models\c2\statics\InventoryLogType;
use common\models\c2\statics\InventoryNoteType;
use Yii;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "{{%inventory_note_log}}".
 *
 * @property string $id
 * @property string $note_id
 * @property integer $type
 * @property string $label
 * @property string $warehouse_id
 * @property string $occurrence_date
 * @property string $memo
 * @property string $updated_by
 * @property string $created_by
 * @property integer $status
 * @property integer $position
 * @property string $updated_at
 * @property string $created_at
 */
class InventoryNoteLogModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%inventory_note_log}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['note_id', 'warehouse_id', 'updated_by', 'created_by', 'position'], 'integer'],
            [['occurrence_date', 'updated_at', 'created_at'], 'safe'],
            [['memo'], 'string'],
            [['type', 'status'], 'integer', 'max' => 4],
            [['label'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app.c2', 'ID'),
            'note_id' => Yii::t('app.c2', 'Note#'),
            'type' => Yii::t('app.c2', 'Type'),
            'label' => Yii::t('app.c2', 'Label'),
            'warehouse_id' => Yii::t('app.c2', 'Warehouse'),
            'occurrence_date' => Yii::t('app.c2', 'Occurrence Date'),
            'memo' => Yii::t('app.c2', 'Memo'),
            'updated_by' => Yii::t('app.c2', 'Updated By'),
            'created_by' => Yii::t('app.c2', 'Created By'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
            'created_at' => Yii::t('app.c2', 'Created At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\InventoryNoteLogQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\InventoryNoteLogQuery(get_called_class());
    }

    public function getCreator() {
        return $this->hasOne(\backend\models\c2\entity\rbac\BeUser::className(), ['id' => 'created_by']);
    }

    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public static function log($attributes) {
        $modelClass = static::className();
        $model = new $modelClass($attributes);
        $result = $model->save();
        if (!$result) {
            Yii::info($model->errors);
        }
    }

    public static function logReceiptNote($attributes) {
        $defaults = [
            'type' => InventoryLogType::TYPE_RECEIPT,
        ];
        return static::log(ArrayHelper::merge($defaults, $attributes));
    }

    public static function logDeliveryNote($attributes) {
        $defaults = [
            'type' => InventoryLogType::TYPE_DELIVERY,
        ];
        return static::log(ArrayHelper::merge($defaults, $attributes));
    }

    public static function logWarehouseCommitNote($attributes) {
        $defaults = [
            'type' => InventoryLogType::TYPE_WAREHOUSE,
        ];
        return static::log(ArrayHelper::merge($defaults, $attributes));
    }

    public function getTypeLabel() {
        return InventoryNoteType::getLabel($this->type);
    }

    public function behaviors() {
        return \yii\helpers\ArrayHelper::merge(parent::behaviors(), [
            \yii\behaviors\BlameableBehavior::className(), // record created_by and updated_by
        ]);
    }

    public function getWarehouse() {
        return $this->hasOne(WarehouseModel::className(), ['id' => 'warehouse_id']);
    }

    public function getNote() {
        if ($this->type == InventoryNoteType::TYPE_RECEIPT) {
            return $this->hasOne(InventoryReceiptNoteMOdel::className(), ['id' => 'note_id']);
        } else {
            return $this->hasOne(InventoryDeliveryNoteModel::className(), ['id' => 'note_id']);
        }
    }

}
