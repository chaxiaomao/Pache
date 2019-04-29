<?php

namespace common\models\c2\entity;

use common\models\c2\statics\InventoryDeliveryType;
use common\models\c2\statics\InventoryExeState;
use cza\base\models\statics\EntityModelStatus;
use Yii;
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
            [['code',], 'unique'],
            [['code', 'warehouse_id', 'occurrence_date'], 'required'],
            [['is_audited', 'type', 'warehouse_id', 'sales_order_id', 'customer_id', 'audited_by', 'updated_by', 'created_by', 'position'], 'integer'],
            [['occurrence_date', 'updated_at', 'created_at'], 'safe'],
            [['grand_total'], 'number'],
            [['grand_total'], 'default', 'value' => 0],
            [['memo'], 'string'],
            [['items',], 'validateItems'],
            [['state', 'status'], 'integer', 'max' => 4],
            [['code', 'label', 'contact_man', 'cs_name', 'sender_name', 'financial_name', 'payment_method', 'delivery_method', 'remote_ip'], 'string', 'max' => 255],
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
            'sales_order_id' => Yii::t('app.c2', 'Sales Order ID'),
            'customer_id' => Yii::t('app.c2', 'Customer ID'),
            'occurrence_date' => Yii::t('app.c2', 'Occurrence Date'),
            'grand_total' => Yii::t('app.c2', 'Grand Total'),
            'contact_man' => Yii::t('app.c2', 'Contact Man'),
            'cs_name' => Yii::t('app.c2', 'Customer Service Name'),
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
            'items' => Yii::t('app.c2', 'Product Items'),
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
            $this->code = \common\helpers\CodeGenerator::getCodeByDate($this, 'DN');
        }
        $this->grand_total = number_format($this->grand_total, 2);
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
        return $this->hasOne(Customer::className(), ['id' => 'customer_id']);
    }

    public function getActiveNoteItems()
    {
        return $this->hasMany(InventoryDeliveryNoteItemModel::className(), ['note_id' => 'id'])->onCondition(['status' => EntityModelStatus::STATUS_ACTIVE]);
    }

    public function getAllNoteItems()
    {
        return $this->hasMany(InventoryDeliveryNoteItemModel::className(), ['note_id' => 'id']);
    }

    public function getTypeLabel()
    {
        return InventoryDeliveryType::getLabel($this->type);
    }

    public function getCreator()
    {
        return $this->hasOne(\backend\models\c2\entity\rbac\BeUser::class, ['id' => 'created_by']);
    }

    public function getUpdater()
    {
        return $this->hasOne(\backend\models\c2\entity\rbac\BeUser::class, ['id' => 'updated_by']);
    }

    public function commit()
    {
        InventoryNoteLogModel::logWarehouseCommitNote([
            'note_id' => $this->id,
            'warehouse_id' => $this->warehouse_id,
            'occurrence_date' => $this->occurrence_date,
            'memo' => $this->memo,
        ]);
        $transaction = Yii::$app->db->beginTransaction();
        $this->loadCommitItems();
        if (!empty($this->items)) {
            foreach ($this->items as $item) {
                $productPackModel = $item->productPack;
                if (!empty($productPackModel)) {
                    // Inpack stock consumption
                    if (!empty($productPackModel->inpack_id)) {
                        $inpackStockModel = $productPackModel->inpackStock;
                        $packConsumption = $productPackModel->inpack_num * $item->pieces;
                        $attrs = [
                            'note_id' => $item->note_id,
                            'product_id' => $productPackModel->inpackMaterial->product_id,
                            'product_sku_id' => $productPackModel->inpackMaterial->id,
                            'quantity' => -$packConsumption,
                            // 'measure_id' => $item->measure_id,
                        ];
                        $model = new WarehouseReceiptCommitItemModel();
                        $model->setAttributes($attrs);
                        if ($model->save()) {
                            $inpackStockModel->updateCounters([
                                'num' => -$packConsumption
                            ]);
                        } else {
                            $transaction->rollBack();
                        }
                    }
                    // Outpack stock consumption
                    if (!empty($productPackModel->outpack_id)) {
                        $outPackStockModel = $productPackModel->outpackStock;
                        $packConsumption = $productPackModel->outpack_num * $item->pieces;
                        $attrs = [
                            'note_id' => $item->note_id,
                            'product_id' => $productPackModel->outpackMaterial->product_id,
                            'product_sku_id' => $productPackModel->outpackMaterial->id,
                            'quantity' => -$packConsumption,
                            // 'measure_id' => $item->measure_id,
                        ];
                        $model = new WarehouseReceiptCommitItemModel();
                        $model->setAttributes($attrs);
                        if ($model->save()) {
                            $outPackStockModel->updateCounters([
                                'num' => -$packConsumption
                            ]);
                        }
                    }
                }
                // Product material stock consumption
                $productStock = $item->product->stock;
                if ($productStock) {
                    $productStock->updateCounters([
                        'num' => -($item->stock_quantity)
                    ]);
                }
                $rs = $item->productMaterialRs;
                foreach ($rs as $r) {
                    $materialProductStock = $r->productMaterialItem->stock;
                    if ($materialProductStock) {
                        $consumption = $r->num * $item->actual_quantity;
                        $materialProductStock->updateCounters([
                            'num' => -$consumption
                        ]);
                        // Record product material items consumption.
                        $attrs = [
                            'note_id' => $item->note_id,
                            'product_id' => $r->material_id,
                            'product_sku_id' => $r->material_item_id,
                            'quantity' => -$consumption,
                            'measure_id' => $item->measure_id,
                        ];
                        $model = new WarehouseReceiptCommitItemModel();
                        $model->setAttributes($attrs);
                        $model->save();
                    }
                }
            }
        }
        $transaction->commit();
        return $this->updateAttributes(['state' => InventoryExeState::FINISH]);
    }

    public function commitWarehouseDeliveryItems()
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
                $productStock = $item->product->stock;
                if ($productStock) {
                    $productStock->updateCounters([
                        'num' => -($item->stock_quantity)
                    ]);
                }
                $rs = $item->productMaterialRs;
                foreach ($rs as $r) {
                    $materialProductStock = $r->productMaterialItem->stock;
                    if ($materialProductStock) {
                        $consumption = $r->num * $item->actual_quantity;
                        $materialProductStock->updateCounters([
                            'num' => -$consumption
                        ]);
                        // record product material items consumption
                        $attrs = [
                            'note_id' => $item->note_id,
                            'product_id' => $r->material_id,
                            'product_sku_id' => $r->material_item_id,
                            'quantity' => -$consumption,
                            'measure_id' => $item->measure_id,
                        ];
                        $model = new WarehouseReceiptCommitItemModel();
                        $model->setAttributes($attrs);
                        $model->save();
                    }
                }
            }
            $order = $this->order;
            $items = $order->orderItemConsumption;
            foreach ($items as $item) {
                $item->updateAttributes([
                    'status' => EntityModelStatus::STATUS_INACTIVE
                ]);
            }
        }
        return $this->updateAttributes(['state' => InventoryExeState::FINISH]);
    }

    public function afterSave($insert, $changedAttributes)
    {
        parent::afterSave($insert, $changedAttributes); // TODO: Change the autogenerated stub
        $this->setInventoryItems();
    }

    public function setInventoryItems()
    {
        $grand_total = 0;
        if (!empty($this->items)) {
            foreach ($this->items as $item) {
                $productPack = ProductPackModel::findOne($item['product_pack_id']);
                if (!empty($productPack)) {
                    $piece = isset($item['pieces']) ? $item['pieces'] : 1;
                    $quantity = $productPack->pre_num * $piece;
                    $factory_price = isset($item['factory_price']) ? $item['factory_price'] : 0.00;
                    $subtotal = $factory_price * $quantity;
                    $grand_total += $subtotal;
                    $attributes = [
                        'product_id' => $item['product_id'],
                        'sku_label' => $item['sku_label'],
                        'quantity' => $quantity,
                        'factory_price' => $factory_price,
                        'measure_id' => $item['measure_id'],
                        'pieces' => $piece,
                        'product_pack_id' => $item['product_pack_id'],
                        'subtotal' => $subtotal,
                        'memo' => isset($item['memo']) ? $item['memo'] : "",
                    ];
                    if (isset($item['id']) && $item['id'] == 0) {  // create new items
                        $itemModel = new InventoryDeliveryNoteItemModel();
                        $itemModel->setAttributes($attributes);
                        $itemModel->link('owner', $this);
                    } elseif (isset($item['id'])) {  // update itemes
                        $itemModel = InventoryDeliveryNoteItemModel::findOne(['id' => $item['id']]);
                        if (!is_null($itemModel)) {
                            $itemModel->updateAttributes($attributes);
                        }
                    }
                }
            }
        }
        return $this->updateAttributes(['grand_total' => $grand_total]);
    }

    public function lordOrderItem($insert)
    {
        if ($insert) {
            if (!empty($this->sales_order_id)) {
                $this->addOrderItem();
            }
        } else {
            if (isset($changedAttributes['sales_order_id'])) {
                foreach ($this->allNoteItems as $item) {
                    $item->delete();
                }
                $this->addOrderItem();
            } else {
                if (!empty($this->items)) {
                    foreach ($this->items as $item) {
                        // $productSku = isset($item['product_sku_id']) ? ProductSku::findOne(['id' => $item['product_sku_id']]) : null;
                        $attributes = [
                            'product_id' => isset($item['product_id']) ? $item['product_id'] : 0,
                            'product_sku_id' => isset($item['product_sku_id']) ? $item['product_sku_id'] : 0,
                            'sku_label' => isset($item['sku_label']) ? $item['sku_label'] : "",
                            'measure_id' => isset($item['measure_id']) ? $item['measure_id'] : 0,
                            'quantity' => isset($item['quantity']) ? $item['quantity'] : 50,
                            'factory_price' => isset($item['factory_price']) ? $item['factory_price'] : "",
                            'subtotal' => isset($item['subtotal']) ? $item['subtotal'] : "",
                            'memo' => isset($item['memo']) ? $item['memo'] : "",
                        ];
                        if (isset($item['id']) && $item['id'] == 0) {  // create new items
                            $itemModel = new InventoryDeliveryNoteItemModel();
                            $itemModel->setAttributes($attributes);
                            $itemModel->link('owner', $this);
                        } elseif (isset($item['id'])) {  // update itemes
                            $itemModel = InventoryDeliveryNoteItemModel::findOne(['id' => $item['id']]);
                            if (!is_null($itemModel)) {
                                $itemModel->updateAttributes($attributes);
                            }
                        }
                    }
                }
            }
        }
    }

    public function addOrderItem()
    {
        $order = OrderModel::findOne(['id' => $this->sales_order_id]);

        foreach ($order->orderItems as $item) {
            $attributes = [
                'note_id' => $this->id,
                'product_id' => $item->product->id,
                'sku_label' => $item->product->name,
                'quantity' => $item->num,
            ];
            $itemModel = new InventoryDeliveryNoteItemModel();
            $itemModel->setAttributes($attributes);
            $itemModel->link('owner', $this);
        }
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
            $requiredValidator->validate($row['sku_label'], $error);
            if (!empty($error)) {
                $key = $attribute . '[' . $index . '][sku_label]';
                $this->addError($key, Yii::t('app.c2', '{attribute} can not be empty!', ['attribute' => Yii::t('app.c2', 'Product Sku')]));
            }
            $requiredValidator->validate($row['product_pack_id'], $error);
            if (!empty($error)) {
                $key = $attribute . '[' . $index . '][product_pack_id]';
                $this->addError($key, Yii::t('app.c2', '{attribute} can not be empty!', ['attribute' => Yii::t('app.c2', 'Product')]));
            }
            $requiredValidator->validate($row['measure_id'], $error);
            if (!empty($error)) {
                $key = $attribute . '[' . $index . '][measure_id]';
                $this->addError($key, Yii::t('app.c2', '{attribute} can not be empty!', ['attribute' => Yii::t('app.c2', 'Product')]));
            }
        }
    }

    public function setStateToUntacked()
    {
        $this->loadItems();
        if (!empty($this->items)) {
            foreach ($this->items as $item) {
                $attributes = [
                    // 'note_id' => $this->note_id,
                    'product_id' => $item->product_id,
                    'sku_label' => $item->sku_label,
                    'quantity' => $item->quantity,
                    'pieces' => $item->pieces,
                    'actual_quantity' => $item->quantity,
                    'stock_quantity' => 0,
                    'product_pack_id' => $item->product_pack_id,
                    'measure_id' => $item->measure_id,
                    'statue' => EntityModelStatus::STATUS_INACTIVE,
                ];
                $itemModel = new WarehouseDeliveryCommitItemModel();
                $itemModel->setAttributes($attributes);
                $itemModel->link('owner', $this);
            }
        }
        return $this->updateAttributes(['state' => InventoryExeState::UNTRACKED]);
    }

    public function setStateToFinish()
    {
        InventoryNoteLogModel::logDeliveryNote([
            'note_id' => $this->id,
            'warehouse_id' => $this->warehouse_id,
            'occurrence_date' => $this->occurrence_date,
            'memo' => $this->memo,
        ]);

        foreach ($this->activeNoteItems as $item) {
            $attributes = [
                // 'note_id' => $this->note_id,
                'product_id' => $item->product_id,
                'sku_label' => $item->sku_label,
                'quantity' => $item->quantity,
                'actual_quantity' => $item->quantity,
                'measure_id' => $item->measure_id,
            ];
            $itemModel = new WarehouseDeliveryCommitItemModel();
            $itemModel->setAttributes($attributes);
            $itemModel->link('owner', $this);
        }
        return $this->updateAttributes(['state' => InventoryExeState::UNTRACKED]);
    }

    public function updateStock()
    {
        $items = $this->activeNoteItems;
        foreach ($items as $item) {
            $rs = $item->productMaterialRs;
            foreach ($rs as $r) {
                $stock = $r->productMaterialItem->stock;
                if ($stock) {
                    $stock->num -= $r->num * $item->quantity;
                    $stock->save();
                }
            }
        }
    }

    public function isStateInit()
    {
        return ($this->state == InventoryExeState::INIT);
    }

    public function isStateFinish()
    {
        return ($this->state == InventoryExeState::FINISH) || ($this->state == InventoryExeState::UNTRACKED);
    }

    public function loadItems()
    {
        $this->items = $this->getActiveNoteItems()->all();
    }

    public function behaviors()
    {
        return \yii\helpers\ArrayHelper::merge(parent::behaviors(), [
            \yii\behaviors\BlameableBehavior::className(), // record created_by and updated_by
        ]);
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

    public function getSupplier()
    {
        return $this->hasOne(SupplierModel::className(), ['id' => 'supplier_id']);
    }

    public function getUser()
    {
        return $this->hasOne(FeUserModel::className(), ['id' => 'customer_id']);
    }

    public function isStateUntracked()
    {
        return ($this->state == InventoryExeState::UNTRACKED);
    }

    public function loadCommitItems()
    {
        $this->items = $this->getWarehouseDeliveryCommitItems()->all();
    }

    public function getWarehouseDeliveryCommitItems()
    {
        return $this->hasMany(WarehouseDeliveryCommitItemModel::className(), ['note_id' => 'id']);
    }

    public function getMeasure()
    {
        return $this->hasOne(MeasureModel::className(), ['id' => 'measure_id']);
    }

}
