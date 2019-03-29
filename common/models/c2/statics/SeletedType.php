<?php

namespace common\models\c2\statics;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * SeletedType
 *
 * @author ben
 */
class SeletedType extends AbstractStaticClass {

    const TYPE_SELECTED = 1;
    const TYPE_UNSELECTED = 2;

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
                static::TYPE_SELECTED => ['id' => static::TYPE_SELECTED, 'label' => Yii::t('app.c2', 'Yes')],
                static::TYPE_UNSELECTED => ['id' => static::TYPE_UNSELECTED, 'label' => Yii::t('app.c2', 'No')],
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
