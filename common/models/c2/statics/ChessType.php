<?php

namespace common\models\c2\statics;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * ConfigType
 *
 * @author ben
 */
class ChessType extends AbstractStaticClass {

    const TYPE_DEFAULT = 0;  // load in when demand

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
                static::TYPE_DEFAULT => ['id' => static::TYPE_DEFAULT, 'label' => Yii::t('app.c2', 'System Settings Type')],
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
