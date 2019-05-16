<?php

namespace common\models\c2\statics;

use Yii;
use yii\helpers\ArrayHelper;

/**
 * FeUserType
 *
 * @author cjh
 */
class WarehouseCommitType extends AbstractStaticClass {

    const TYPE_STORAGE = 1;
    const TYPE_SEND = 2;

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
                static::TYPE_STORAGE => ['id' => static::TYPE_STORAGE, 'label' => Yii::t('app.c2', 'Warehouse Storage')],
                static::TYPE_SEND => ['id' => static::TYPE_SEND, 'label' => Yii::t('app.c2', 'Warehouse Send')],
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
}