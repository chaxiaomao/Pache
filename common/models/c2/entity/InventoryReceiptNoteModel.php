<?php

namespace common\models\c2\entity;

use common\models\c2\statics\InventoryDeliveryType;
use common\models\c2\statics\InventoryExeState;
use common\models\c2\statics\InventoryLogType;
use common\models\c2\statics\InventoryReceiptType;
use cza\base\models\statics\EntityModelStatus;
use Yii;
use yii\helpers\ArrayHelper;
use yii\validators\RequiredValidator;

/**
 * This is the model class for table "{{%inventory_receipt_note}}".
 *
 * @property string $id
 * @property integer $type
 * @property string $code
 * @property string $label
 * @property string $warehouse_id
 * @property string $supplier_id
 * @property string $arrival_date
 * @property string $occurrence_date
 * @property string $arrival_number
 * @property string $buyer_name
 * @property string $dept_manager_name
 * @property string $financial_name
 * @property string $receiver_name
 * @property string $memo
 * @property string $remote_ip
 * @property string $updated_by
 * @property string $created_by
 * @property integer $state
 * @property integer $status
 * @property integer $position
 * @property string $updated_at
 * @property string $created_at
 */
class InventoryReceiptNoteModel extends \cza\base\models\ActiveRecord
{
    public $items;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%inventory_receipt_note}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['code',], 'unique'],
            [['code', 'warehouse_id', 'arrival_number', 'supplier_id', 'occurrence_date'], 'required'],
            [['type', 'warehouse_id', 'supplier_id', 'updated_by', 'created_by', 'position'], 'integer'],
            [['occurrence_date', 'arrival_date', 'updated_at', 'created_at'], 'safe'],
            [['memo'], 'string'],
            [['items',], 'validateItems'],
            [['state', 'status'], 'integer', 'max' => 4],
            [['code', 'label', 'arrival_number', 'buyer_name', 'dept_manager_name', 'financial_name', 'receiver_name', 'remote_ip'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app.c2', 'ID'),
            'type' => Yii::t('app.c2', 'Type'),
            'code' => Yii::t('app.c2', 'Code'),
            'label' => Yii::t('app.c2', 'Label'),
            'warehouse_id' => Yii::t('app.c2', 'Warehouse'),
            'supplier_id' => Yii::t('app.c2', 'Supplier'),
            'received_date' => Yii::t('app.c2', 'Received Date'),
            'occurrence_date' => Yii::t('app.c2', 'Occurrence Date'),
            'arrival_number' => Yii::t('app.c2', 'Arrival Number'),
            'buyer_name' => Yii::t('app.c2', 'Buyer Name'),
            'dept_manager_name' => Yii::t('app.c2', 'Dept Manager Name'),
            'financial_name' => Yii::t('app.c2', 'Financial Name'),
            'receiver_name' => Yii::t('app.c2', 'Receiver Name'),
            'memo' => Yii::t('app.c2', 'Memo'),
            'remote_ip' => Yii::t('app.c2', 'Remote Ip'),
            'updated_by' => Yii::t('app.c2', 'Updated By'),
            'created_by' => Yii::t('app.c2', 'Created By'),
            'state' => Yii::t('app.c2', 'State'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
            'created_at' => Yii::t('app.c2', 'Created At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\InventoryReceiptNoteQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\InventoryReceiptNoteQuery(get_called_class());
    }

    /**
     * setup default values
     **/
    public function loadDefaultValues($skipIfSet = true)
    {
        parent::loadDefaultValues($skipIfSet);
        if ($this->isNewRecord) {
            $this->code = \common\helpers\CodeGenerator::getCodeByDate($this, 'RN');
        }
    }

    public function behaviors()
    {
        return \yii\helpers\ArrayHelper::merge(parent::behaviors(), [
            \yii\behaviors\BlameableBehavior::className(), // record created_by and updated_by
        ]);
    }

    public function getWarehouse()
    {
        return $this->hasOne(WarehouseModel::className(), ['id' => 'warehouse_id']);
    }

    public function getSupplier()
    {
        return $this->hasOne(SupplierModel::className(), ['id' => 'supplier_id']);
    }

    public function getActiveNoteItems()
    {
        return $this->hasMany(InventoryReceiptNoteItemModel::className(), ['note_id' => 'id'])->onCondition(['status' => EntityModelStatus::STATUS_ACTIVE]);
    }

    public function getAllNoteItems()
    {
        return $this->hasMany(InventoryReceiptNoteItemModel::className(), ['note_id' => 'id']);
    }

    public function getTypeLabel()
    {
        return InventoryReceiptType::getLabel($this->type);
    }

    public function isStateInit()
    {
        return ($this->state == InventoryExeState::INIT);
    }

    public function isStateFinish()
    {
        return ($this->state == InventoryExeState::FINISH);
    }

    public function isStateUntracked()
    {
        return ($this->state == InventoryExeState::UNTRACKED);
    }

    public function getCreator()
    {
        return $this->hasOne(\backend\models\c2\entity\rbac\BeUser::class, ['id' => 'created_by']);
    }

    public function getUpdater()
    {
        return $this->hasOne(\backend\models\c2\entity\rbac\BeUser::class, ['id' => 'updated_by']);
    }

    public function setStateToFinish()
    {
        InventoryNoteLogModel::logReceiptNote([
            'note_id' => $this->id,
            'warehouse_id' => $this->warehouse_id,
            'occurrence_date' => $this->occurrence_date,
            'memo' => $this->memo,
        ]);
        $this->loadItems();
        if (!empty($this->items)) {
            foreach ($this->items as $item) {
                $attributes = [
                    'product_id' => isset($item['product_id']) ? $item['product_id'] : 0,
                    'product_sku_id' => isset($item['product_sku_id']) ? $item['product_sku_id'] : 0,
                    'sku_label' => isset($item['sku_label']) ? $item['sku_label'] : "",
                    'measure_id' => isset($item['measure_id']) ? $item['measure_id'] : 0,
                    'quantity' => isset($item['quantity']) ? $item['quantity'] : 0,
                    'until_price' => $item['until_price'],
                    'subtotal' => $item['subtotal'],
                    'supplier_id' => $this->supplier_id,
                    'memo' => isset($item['memo']) ? $item['memo'] : "",
                ];
                $itemModel = new WarehouseReceiptCommitItemModel();
                $itemModel->setAttributes($attributes);
                $itemModel->link('owner', $this);
            }
        }
        return $this->updateAttributes(['state' => InventoryExeState::UNTRACKED]);
    }

    public function commitWarehouseReceiptItems()
    {
        InventoryNoteLogModel::logWarehouseCommitNote([
            'note_id' => $this->id,
            'warehouse_id' => $this->warehouse_id,
            'occurrence_date' => $this->occurrence_date,
            'memo' => $this->memo,
        ]);
        $this->loadCommitItems();
        if (!empty($this->items)) {
            foreach ($this->items as $item) {
                $model = $item->productMaterialItem->stock;
                if (is_null($model)) {
                    $model = new ProductStock();
                    $model->setAttributes([
                        'warehouse_id' => $this->warehouse_id,
                        'product_id' => $item->product_id,
                        'product_material_id' => $item->product_sku_id,
                        'num' => $item->quantity,
                    ]);
                    $model->save();
                } else {
                    $model->updateCounters([
                        'num' => $item->quantity,
                    ]);
                }
            }
        }
        return $this->updateAttributes(['state' => InventoryExeState::FINISH]);
    }

    public function validateItems($attribute)
    {
        $requiredValidator = new RequiredValidator();
        foreach ($this->$attribute as $index => $row) {
            $error = null;
            $requiredValidator->validate($row['product_id'], $error);
            if (!empty($error)) {
                $key = $attribute . '[' . $index . '][product_id]';
                $this->addError($key, Yii::t('app.c2', '{attribute} can not be empty!', ['attribute' => Yii::t('app.c2', 'Product')]));
            }
            $requiredValidator->validate($row['product_sku_id'], $error);
            if (!empty($error)) {
                $key = $attribute . '[' . $index . '][product_sku_id]';
                $this->addError($key, Yii::t('app.c2', '{attribute} can not be empty!', ['attribute' => Yii::t('app.c2', 'Product Sku')]));
            }
        }
    }

    public function loadItems()
    {
        $this->items = $this->getActiveNoteItems()->all();
    }

    public function loadCommitItems()
    {
        $this->items = $this->getWarehouseReceiptCommitItems()->all();
    }

    public function afterSave($insert, $changedAttributes)
    {
        parent::afterSave($insert, $changedAttributes);
        if (!empty($this->items)) {
            foreach ($this->items as $item) {
                $attributes = [
                    'product_id' => isset($item['product_id']) ? $item['product_id'] : 0,
                    'product_sku_id' => isset($item['product_sku_id']) ? $item['product_sku_id'] : 0,
                    'sku_label' => isset($item['sku_label']) ? $item['sku_label'] : "",
                    'measure_id' => isset($item['measure_id']) ? $item['measure_id'] : 0,
                    'quantity' => isset($item['quantity']) ? $item['quantity'] : 0,
                    'until_price' => $item['until_price'],
                    'subtotal' => $item['subtotal'],
                    'supplier_id' => $this->supplier_id,
                    'memo' => isset($item['memo']) ? $item['memo'] : "",
                ];
                if (isset($item['id']) && $item['id'] == 0) {  // create new items
                    $itemModel = new InventoryReceiptNoteItemModel();
                    $itemModel->setAttributes($attributes);
                    $itemModel->link('owner', $this);
                } elseif (isset($item['id'])) {  // update itemes
                    $itemModel = InventoryReceiptNoteItemModel::findOne(['id' => $item['id']]);
                    if (!is_null($itemModel)) {
                        $itemModel->updateAttributes($attributes);
                    }
                }
            }
        }
    }

    public function getStateLabel()
    {
        return InventoryExeState::getLabel($this->state);
    }

    public function beforeDelete()
    {
        foreach ($this->allNoteItems as $item) {
            $item->delete();
        }
        return parent::beforeDelete();
    }


    public function getWarehouseReceiptCommitItems()
    {
        return $this->hasMany(WarehouseReceiptCommitItemModel::className(), ['note_id' => 'id']);
    }

}
