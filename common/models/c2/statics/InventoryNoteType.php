<?php

namespace common\models\c2\statics;

use Yii;

/**
 * 入仓/出仓 单据类型
 * InventoryNoteType
 *
 * @author ben
 */
class InventoryNoteType extends AbstractStaticClass {

    const TYPE_RECEIPT = 1;  // reject
    const TYPE_DELIVERY = 2;  // delivery
    
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
                static::TYPE_RECEIPT => ['id' => static::TYPE_RECEIPT, 'label' => Yii::t('app.c2', 'Inventory Receipt Notes')],
                static::TYPE_DELIVERY => ['id' => static::TYPE_DELIVERY, 'label' => Yii::t('app.c2', 'Inventory Delivery Notes')],
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
