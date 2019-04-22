<?php

namespace common\models\c2\statics;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * ConfigType
 *
 * @author ben
 */
class ConsumptionType extends AbstractStaticClass {

    const TYPE_ENOUGH = 1;  // load in when demand
    const TYPE_NOT_ENOUGH = 2;  // load in when demand

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
                static::TYPE_ENOUGH => ['id' => static::TYPE_ENOUGH, 'label' => Yii::t('app.c2', 'Enough')],
                static::TYPE_NOT_ENOUGH => ['id' => static::TYPE_NOT_ENOUGH, 'label' => Yii::t('app.c2', 'Not enough')],
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
