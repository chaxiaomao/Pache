<?php

namespace common\models\c2\statics;

use Yii;

/**
 * InventoryReceiptType
 *
 * @author ben
 */
class InventoryLogType extends AbstractStaticClass {

    const TYPE_DELIVERY = 1;  // normal
    const TYPE_RECEIPT = 2;  // reject order
    const TYPE_WAREHOUSE = 3;  // reject order
    const TYPE_ORDER = 4;  // reject order

    protected static $_data;

    /**
     * 
     * @param type $id
     * @param type $attr
     * @return string|array
     */
    public static function getData($id = '', $attr = '') {
        if (is_null(static::$_data)) {
            static::$_data = [
                static::TYPE_DELIVERY => ['id' => static::TYPE_DELIVERY, 'label' => Yii::t('app.c2', 'Inventory Delivery Notes')],
                static::TYPE_RECEIPT => ['id' => static::TYPE_RECEIPT, 'label' => Yii::t('app.c2', 'Inventory Receipt Notes')],
                static::TYPE_WAREHOUSE => ['id' => static::TYPE_WAREHOUSE, 'label' => Yii::t('app.c2', 'Inventory Warehouse Notes')],
                static::TYPE_ORDER => ['id' => static::TYPE_ORDER, 'label' => Yii::t('app.c2', 'Inventory Order Notes')],
            ];
        }
        if ($id !== '' && !empty($attr)) {
            return static::$_data[$id][$attr];
        }
        if ($id !== '' && empty($attr)) {
            return static::$_data[$id];
        }
        return static::$_data;
    }

}
