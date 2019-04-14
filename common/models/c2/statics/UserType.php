<?php

namespace common\models\c2\statics;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * ConfigType
 *
 * @author ben
 */
class UserType extends AbstractStaticClass {

    const TYPE_BUSINESS = 1;  // load in when demand
    const TYPE_EMPLOYEE = 2;  // load in when config settings init
    
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
                static::TYPE_BUSINESS => ['id' => static::TYPE_BUSINESS, 'label' => Yii::t('app.c2', 'User business')],
                static::TYPE_EMPLOYEE => ['id' => static::TYPE_EMPLOYEE, 'label' => Yii::t('app.c2', 'User employee')],
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
