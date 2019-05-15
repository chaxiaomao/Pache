<?php

namespace common\models\c2\statics;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * Entity Model Status
 *
 * @author ben
 */
class InventoryExeState {

    const INIT = 1;
    const CANCEL = 2;
    const UNTRACK = 3;
    const FINISH = 4;

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
                static::INIT => ['id' => static::INIT, 'label' => Yii::t('app.c2', 'Init')],
                static::CANCEL => ['id' => static::CANCEL, 'label' => Yii::t('app.c2', 'Cancel')],
                static::UNTRACK => ['id' => static::UNTRACK, 'label' => Yii::t('app.c2', 'Untrack')],
                static::FINISH => ['id' => static::FINISH, 'label' => Yii::t('app.c2', 'Finish')],
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

    public static function getLabel($id) {
        return static::getData($id, 'label');
    }

    public static function getHashMap($keyField, $valField) {
        $key = __CLASS__ . Yii::$app->language . $keyField . $valField;
        $data = Yii::$app->cache->get($key);

        if ($data === false) {
            $data = ArrayHelper::map(static::getData(), $keyField, $valField);
            Yii::$app->cache->set($key, $data);
        }

        return $data;
    }

    public static function getHashMap8Ids(array $ids)
    {
        $arr = [];
        foreach ($ids as $id) {
            array_push($arr, static::getData($id));
        }
        return ArrayHelper::map($arr, 'id', 'label');
    }

}
