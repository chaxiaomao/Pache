<?php

namespace common\models\c2\entity;

use backend\models\c2\entity\rbac\BeUser;
use common\helpers\CodeGenerator;
use common\models\c2\statics\InventoryExeState;
use common\models\c2\statics\WarehouseCommitState;
use common\models\c2\statics\WarehouseCommitType;
use Yii;
use yii\behaviors\BlameableBehavior;
use yii\helpers\ArrayHelper;
use yii\validators\RequiredValidator;

/**
 * This is the model class for table "{{%inventory_delivery_note}}".
 *
 * @property string $id
 * @property integer $type
 * @property string $code
 * @property string $label
 * @property string $warehouse_id
 * @property string $sales_order_id
 * @property string $customer_id
 * @property string $occurrence_date
 * @property string $grand_total
 * @property string $contact_man
 * @property string $cs_name
 * @property string $sender_name
 * @property string $financial_name
 * @property string $payment_method
 * @property string $delivery_method
 * @property string $memo
 * @property string $remote_ip
 * @property integer $is_audited
 * @property string $audited_by
 * @property string $updated_by
 * @property string $created_by
 * @property integer $state
 * @property integer $status
 * @property integer $position
 * @property string $updated_at
 * @property string $created_at
 */
class InventoryDeliveryNoteModel extends \cza\base\models\ActiveRecord
{

    public $items;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%inventory_delivery_note}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['warehouse_id', 'sales_order_id', 'customer_id', 'audited_by', 'updated_by', 'created_by', 'position'], 'integer'],
            [['occurrence_date', 'updated_at', 'created_at'], 'safe'],
            [['grand_total'], 'number'],
            [['memo'], 'string'],
            [['items'], 'validateItems'],
            [['type', 'is_audited', 'state', 'status'], 'integer', 'max' => 4],
            [['code', 'label', 'contact_man', 'cs_name', 'sender_name', 'financial_name', 'payment_method',
                'delivery_method', 'remote_ip'], 'string', 'max' => 255],
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
            'warehouse_id' => Yii::t('app.c2', 'Warehouse ID'),
            'sales_order_id' => Yii::t('app.c2', 'Order Code'),
            'customer_id' => Yii::t('app.c2', 'Customer'),
            'occurrence_date' => Yii::t('app.c2', 'Occurrence Date'),
            'grand_total' => Yii::t('app.c2', 'Grand Total'),
            'contact_man' => Yii::t('app.c2', 'Contact Man'),
            'cs_name' => Yii::t('app.c2', 'Cs Name'),
            'sender_name' => Yii::t('app.c2', 'Sender Name'),
            'financial_name' => Yii::t('app.c2', 'Financial Name'),
            'payment_method' => Yii::t('app.c2', 'Payment Method'),
            'delivery_method' => Yii::t('app.c2', 'Delivery Method'),
            'memo' => Yii::t('app.c2', 'Memo'),
            'remote_ip' => Yii::t('app.c2', 'Remote Ip'),
            'is_audited' => Yii::t('app.c2', 'Is Audited'),
            'audited_by' => Yii::t('app.c2', 'Audited By'),
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
     * @return \common\models\c2\query\InventoryDeliveryNoteQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\InventoryDeliveryNoteQuery(get_called_class());
    }

    /**
     * setup default values
     **/
    public function loadDefaultValues($skipIfSet = true)
    {
        parent::loadDefaultValues($skipIfSet);
        if ($this->isNewRecord) {
            $this->code = CodeGenerator::getCodeByDate($this, 'DN');
        }
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

    public function behaviors()
    {
        return ArrayHelper::merge(parent::behaviors(), [
            BlameableBehavior::className()
        ]); // TODO: Change the autogenerated stub
    }

    public function getCreator()
    {
        return $this->hasOne(BeUser::className(), ['id' => 'created_by']);
    }

    public function getNoteItems()
    {
        return $this->hasMany(InventoryDeliveryNoteItemModel::className(), ['note_id' => 'id']);
    }

    public function loadItems()
    {
        $this->items = $this->getNoteItems()->all();
    }

    public function afterSave($insert, $changedAttributes)
    {
        InventoryNoteLogModel::logDeliveryNote([
            'note_id' => $this->id,
            'warehouse_id' => $this->warehouse_id,
            'occurrence_date' => $this->occurrence_date,
            'memo' => $this->memo,
        ]);
        if (!empty($this->items)) {
            foreach ($this->items as $item) {
                $product_package_id = isset($item['product_package_id']) ? $item['product_package_id'] : 0;
                $productPackageModel = ProductPackageModel::findOne($product_package_id);
                $quantity = 0;
                $pieces = isset($item['pieces']) ? $item['pieces'] : 0;
                if (!is_null($productPackageModel)) {
                    $quantity = (isset($item['quantity']) && $item['quantity'] != '') ? $item['quantity'] : $pieces * $productPackageModel->number;
                }
                $factory_price = isset($item['factory_price']) ? $item['factory_price'] : 0;
                $subtotal = (isset($item['subtotal']) && $item['subtotal'] != '') ? $item['subtotal'] : $factory_price * $quantity;

                $attributes = [
                    'product_id' => isset($item['product_id']) ? $item['product_id'] : 0,
                    'code' => isset($item['code']) ? $item['code'] : "",
                    'name' => isset($item['name']) ? $item['name'] : "",
                    'label' => isset($item['label']) ? $item['label'] : "",
                    'value' => isset($item['value']) ? $item['value'] : "",
                    'customer_id' => $this->customer_id,
                    'quantity' => $quantity,
                    'volume' => isset($item['volume']) ? $item['volume'] : "",
                    'weight' => isset($item['weight']) ? $item['weight'] : "",
                    'measure_id' => isset($item['measure_id']) ? $item['measure_id'] : 0,
                    'pieces' => $pieces,
                    'product_combination_id' => isset($item['product_combination_id']) ? $item['product_combination_id'] : 0,
                    'product_package_id' => $product_package_id,
                    'product_price' => isset($item['product_price']) ? $item['product_price'] : 0,
                    'factory_price' => $factory_price,
                    'subtotal' => $subtotal,
                    'memo' => isset($item['memo']) ? $item['memo'] : 0,
                ];
                if (isset($item['id']) && $item['id'] == '') {
                    $itemModel = new InventoryDeliveryNoteItemModel();
                    $itemModel->setAttributes($attributes);
                    $itemModel->link('owner', $this);
                } elseif (isset($item['id'])) {
                    $itemModel = InventoryDeliveryNoteItemModel::findOne($item['id']);
                    if (!is_null($item)) {
                        $itemModel->updateAttributes($attributes);
                    }
                }
            }
        }
        parent::afterSave($insert, $changedAttributes); // TODO: Change the autogenerated stub
    }

    public function isStateInit()
    {
        return ($this->state == InventoryExeState::INIT);
    }

    public function isStateUntrack()
    {
        return ($this->state == InventoryExeState::UNTRACK);
    }

    public function isStateCancel()
    {
        return ($this->state == InventoryExeState::CANCEL);
    }

    public function isStateFinish()
    {
        return ($this->state == InventoryExeState::FINISH);
    }

    public function getWarehouse()
    {
        return $this->hasOne(WarehouseModel::className(), ['id' => 'warehouse_id']);
    }

    public function getOrder()
    {
        return $this->hasOne(OrderModel::className(), ['id' => 'sales_order_id']);
    }

    public function getCustomer()
    {
        return $this->hasOne(FeUserModel::className(), ['id' => 'customer_id']);
    }

    public function getWarehouseSendItems()
    {
        return $this->hasMany(WarehouseSendItemModel::className(), ['note_id' => 'id']);
    }

    public function setStateToUntrack()
    {
        $items = $this->getNoteItems()->all();
        foreach ($items as $item) {
            $attributes = [
                'note_id' => $item->note_id,
                'product_id' => $item->product_id,
                'product_combination_id' => $item->product_combination_id,
                'product_package_id' => $item->product_package_id,
                'pieces' => $item->pieces,
                'send_number' => $item->quantity,
                'production_number' => $item->quantity,
                'stock_number' => 0,
                'measure_id' => $item->measure_id,
                'memo' => $item->memo,
            ];
            $model = new WarehouseSendItemModel();
            $model->setAttributes($attributes);
            $model->save();
        }
        $this->updateAttributes(['state' => InventoryExeState::UNTRACK]);
    }

    public function setStateToCancel()
    {
        $items = $this->getWarehouseSendItems()->all();
        foreach ($items as $item) {
            $item->delete();
        }
        $this->updateAttributes(['state' => InventoryExeState::CANCEL]);
    }

    public function setStateToInit()
    {
        $this->updateAttributes(['state' => InventoryExeState::INIT]);
    }

    public function commitWarehouseItems()
    {
        $sendItems = $this->getWarehouseSendItems()->all();

        $db = Yii::$app->db->beginTransaction();

        foreach ($sendItems as $sendItem) {
            // Commit note product items.
            if ($sendItem->stock_number != 0) {
                $attributes = [
                    'type' => WarehouseCommitType::TYPE_SEND,
                    'note_id' => $this->id,
                    'product_id' => $sendItem->product_id,
                    'number' => $sendItem->stock_number,
                    'measure_id' => $sendItem->measure_id,
                    'memo' => $sendItem->memo,
                    'state' => WarehouseCommitState::STATE_FINISH,
                ];
                $model = new WarehouseCommitSendItemModel($attributes);
                $model->setAttributes($attributes);
                if ($model->save()) {
                    $sendItem->productStock->updateCounters([
                        'number' => -($sendItem->stock_number)
                    ]);
                }
            }

            // Commit note product combination items;
            // $productPackageModel = $sendItem->productPackage;

            foreach ($sendItem->productCombinationItems as $productCombinationItem) {
                $attributes = [
                    'type' => WarehouseCommitType::TYPE_SEND,
                    'note_id' => $this->id,
                    'product_id' => $productCombinationItem->product_id,
                    // 'number' => $sendItem->production_number * $productPackageModel->number * $productCombinationItem->number,
                    'number' => $sendItem->production_number,
                    'measure_id' => $sendItem->measure_id,
                    'memo' => $sendItem->memo,
                    'state' => WarehouseCommitState::STATE_FINISH,
                ];
                $model = new WarehouseCommitSendItemModel();
                $model->setAttributes($attributes);
                if ($model->save()) {
                    $productCombinationItem->productStock->updateCounters([
                        'number' => -($model->number)
                    ]);
                }
            }

            // Commit note product package items;
            foreach ($sendItem->productPackageItems as $productPackageItem) {
                $attributes = [
                    'type' => WarehouseCommitType::TYPE_SEND,
                    'note_id' => $this->id,
                    'product_id' => $productPackageItem->product_id,
                    'number' => $sendItem->pieces * $productPackageItem->number,
                    'measure_id' => $sendItem->measure_id,
                    'memo' => $sendItem->memo,
                    'state' => WarehouseCommitState::STATE_FINISH,
                ];
                $model = new WarehouseCommitSendItemModel($attributes);
                $model->setAttributes($attributes);
                if ($model->save()) {
                    $productPackageItem->productStock->updateCounters([
                        'number' => -($model->number)
                    ]);
                }
            }

        }

        $db->commit();
        $this->updateAttributes(['state' => InventoryExeState::FINISH]);
        return true;

    }

}
