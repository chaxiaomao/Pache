<?php

namespace common\models\c2\entity;

use backend\models\c2\entity\ProductMaterialModel;
use common\models\c2\query\ProductStockQuery;
use common\models\c2\statics\ProductType;
use cza\base\models\statics\EntityModelStatus;
use Yii;
use yii\helpers\ArrayHelper;

/**
 * This is the model class for table "{{%product_stock}}".
 *
 * @property string $id
 * @property string $eshop_id
 * @property string $warehouse_id
 * @property string $product_id
 * @property string $sku
 * @property string $product_sku_id
 * @property string $product_material_id
 * @property integer $num
 * @property integer $state
 * @property integer $status
 * @property integer $position
 * @property string $created_at
 * @property string $updated_at
 */
class ProductStock extends \cza\base\models\ActiveRecord {

    /**
     * @inheritdoc
     */
    public static function tableName() {
        return '{{%product_stock}}';
    }

    public function getWarehouse() {
        return $this->hasOne(WarehouseModel::className(), ['id' => 'warehouse_id']);
    }

    public function getProduct() {
        return $this->hasOne(ProductModel::className(), ['id' => 'product_id']);
    }

    public function getProductSku() {
        return $this->hasOne(ProductSkuModel::className(), ['id' => 'product_sku_id']);
    }

    /**
     *  add product stocks by inventory receipt note
     * @param InventoryReceiptNote $note
     * @throws Exception
     */
    public static function takeinByReceiptNote(InventoryReceiptNoteModel $note) {
        $transaction = static::getDb()->beginTransaction();
        try {
            // Step 1: plus new quantity 
            foreach ($note->activeNoteItems as $item) {
                $model = static::findOne([
                            'warehouse_id' => $note->warehouse_id,
                            'product_sku_id' => $item->product_sku_id,
                ]);
                if ($model) {
                    $model->num += $item->quantity;
                } else {
                    $modelClass = static::class;
                    $model = new $modelClass([
                        'warehouse_id' => $note->warehouse_id,
                        'product_id' => $item->product_id,
                        'product_sku_id' => $item->product_sku_id,
                        'sku' => $item->sku_label,
                        'num' => $item->quantity,
                        'state' => 1,
                    ]);
                }
                if (!$model->save()) {
                    throw new \Exception(implode(',', $model->getErrorSummary()));
                }
                $model = null;
            }
            $transaction->commit();
        } catch (\Exception $e) {
            $transaction->rollBack();
            throw $e;
        } catch (\Throwable $e) {
            $transaction->rollBack();
            throw $e;
        }
        return true;
    }

    /**
     *  minus product stocks by inventory receipt note
     * @param Null/InventoryReceiptNote $oldNote
     * @param InventoryReceiptNote $note
     * @throws Exception
     */
    public static function takeoutByDeliveryNote(InventoryDeliveryNoteModel $note) {
        $transaction = static::getDb()->beginTransaction();
        try {
            // Step 1: Test stock
            $testErrors = [];
            foreach ($note->activeNoteItems as $item) {
                $model = static::findOne([
                            'warehouse_id' => $note->warehouse_id,
                            'product_sku_id' => $item->product_sku_id,
                ]);
                if ($model) {
                    $model->num -= $item->quantity;
                    if ($model->num <0 ) {
                        $testErrors[] = Yii::t("app.c2", "Error: There are {s1} {s2} pieces in warehouse {s3}, cannot satisfy {s4} requirement!" , [
                            's1' => $item->product->label . " " . $item->sku_label . "({$item->product_sku_id})",
                            's2' => $model->num,
                            's3' => $note->warehouse->label,
                            's4' => $item->quantity,
                            ]);
                    }
                } else {
                    throw new \Exception(Yii::t('app.c2', "{s1} Not Found!", ['s1' => $item->sku_label]));
                }

                $model = null;
            }
            
            if(!empty($testErrors)){
                 throw new \Exception(implode(",\n<br/>", $testErrors));
            }

            // Step 2: minus new quantity 
            foreach ($note->activeNoteItems as $item) {
                $model = static::findOne([
                            'warehouse_id' => $note->warehouse_id,
                            'product_sku_id' => $item->product_sku_id,
                ]);
                if ($model) {
                    $model->num -= $item->quantity;
                    if (!$model->save()) {
                        throw new \Exception(implode(',', $model->getErrorSummary()));
                    }
                } else {
                    throw new \Exception(Yii::t('app.c2', "{s1} Not Found!", ['s1' => $item->sku_label]));
                }

                $model = null;
            }
            $transaction->commit();
        } catch (\Exception $e) {
            $transaction->rollBack();
            throw $e;
        } catch (\Throwable $e) {
            $transaction->rollBack();
            throw $e;
        }
        return true;
    }

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['warehouse_id', 'product_id'], 'required'],
            [['product_material_id'], 'validateMaterialProduct',],
            [['product_id'], 'validateProduct'],
            [['eshop_id', 'warehouse_id', 'product_id', 'product_sku_id', 'num', 'state', 'status', 'position', 'product_material_id'], 'integer'],
            [['created_at', 'updated_at'], 'safe'],
            [['sku'], 'string', 'max' => 255],
        ];
    }

    public function validateProduct($attribute, $params)
    {
        if (!$this->hasErrors()) {
            $product = $this->product;
            if ($product->stock && $product->type == ProductType::TYPE_PRODUCT) {
                $this->addError($attribute, Yii::t('app.c2', 'Multiple stock'));
            }
        }
    }

    public function validateMaterialProduct($attribute, $params)
    {
        if (!$this->hasErrors()) {
            if ($this->productMaterialItem->stock) {
                $this->addError($attribute, Yii::t('app.c2', 'Multiple stock'));
            }
        }
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels() {
        return [
            'id' => Yii::t('app.c2', 'ID'),
            'eshop_id' => Yii::t('app.c2', 'Eshop ID'),
            'warehouse_id' => Yii::t('app.c2', 'Warehouse'),
            'product_id' => Yii::t('app.c2', 'Product ID'),
            'product_material_id' => Yii::t('app.c2', 'Material'),
            'sku' => Yii::t('app.c2', 'Sku'),
            'product_sku_id' => Yii::t('app.c2', 'Product Sku ID'),
            'num' => Yii::t('app.c2', 'Quantity'),
            'state' => Yii::t('app.c2', 'State'),
            'status' => Yii::t('app.c2', 'Status'),
            'position' => Yii::t('app.c2', 'Position'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return ProductStockQuery the active query used by this AR class.
     */
    public static function find() {
        return new ProductStockQuery(get_called_class());
    }

    /**
     * setup default values
     * */
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

    public function getProductMaterialItem()
    {
        return $this->hasOne(ProductMaterialItemModel::className(), ['id' => 'product_material_id']);
    }

    public function getMaterialProduct()
    {
        return $this->hasOne(ProductMaterialModel::className(), ['id' => 'product_id']);
    }

    public function isProduct()
    {
        return ($this->product->type == ProductType::TYPE_PRODUCT);
    }

    public function getActiveConsumption() {
        return $this->hasMany(OrderItemConsumptionModel::className(), ['material_id' => 'product_material_id'])->where(['status' => EntityModelStatus::STATUS_ACTIVE]);
    }

    public function getActiveMaterialConsumption() {
        return $this->hasMany(OrderItemConsumptionModel::className(), ['material_item_id' => 'product_material_id'])->where(['status' => EntityModelStatus::STATUS_ACTIVE]);
    }

    public function getException()
    {
        $result = 0;
        foreach ($this->activeMaterialConsumption as $item) {
            $result += $item->subtotal;
        }
        return $result;
    }

}
