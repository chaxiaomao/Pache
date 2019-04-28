<?php

namespace common\models\c2\statics;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * ConfigType
 *
 * @author ben
 */
class SaleType extends AbstractStaticClass {

    const TYPE_RETAIL = 1;  // load in when demand
    const TYPE_PACKING = 2;  // load in when config settings init
    
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
                static::TYPE_RETAIL => ['id' => static::TYPE_RETAIL, 'label' => Yii::t('app.c2', 'Retail')],
                static::TYPE_PACKING => ['id' => static::TYPE_PACKING, 'label' => Yii::t('app.c2', 'Packing bag')],
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
