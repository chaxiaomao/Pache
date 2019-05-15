<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/15
 * Time: 14:18
 */

namespace backend\models\c2\form;


use common\models\c2\entity\InventoryReceiptNoteModel;
use common\models\c2\entity\WarehouseCommitItemModel;
use cza\base\models\ModelTrait;
use yii\base\Exception;
use yii\base\Model;
use yii\validators\RequiredValidator;

class WarehouseItemSendForm extends Model
{
    use ModelTrait;
    public $items;
    public $entityModel;

    public function init()
    {
        if ($this->entityModel == null) {
            new Exception('Entity model is null');
        }
        parent::init(); // TODO: Change the autogenerated stub
    }

    public function rules()
    {
        return [
            [['items'], 'validateItems'],
        ];
    }

    public function validateItems($attribute)
    {
        $items = $this->$attribute;

        foreach ($items as $index => $row) {
            $requiredValidator = new RequiredValidator();
            $error = null;
            $requiredValidator->validate($row['product_id'], $error);
            if (!empty($error)) {
                $key = $attribute . '[' . $index . '][product_id]';
                $this->addError($key, $error);
            }
        }
    }

    public function save()
    {
        if (!empty($this->items)) {
            foreach ($this->items as $item) {
                $attributes = [
                    'note_id' => $this->entityModel->id,
                    'product_id' => isset($item['product_id']) ? $item['product_id'] : 0,
                    'code' => isset($item['code']) ? $item['code'] : "",
                    'name' => isset($item['name']) ? $item['name'] : "",
                    'label' => isset($item['label']) ? $item['label'] : "",
                    'value' => isset($item['value']) ? $item['value'] : "",
                    'measure_id' => isset($item['measure_id']) ? $item['measure_id'] : 0,
                    'number' => isset($item['number']) ? $item['number'] : 0,
                    'memo' => isset($item['memo']) ? $item['memo'] : 0,
                ];
                if (isset($item['id']) && $item['id'] == '') {
                    $itemModel = new WarehouseCommitItemModel();
                    $itemModel->setAttributes($attributes);
                    $itemModel->save();
                } elseif (isset($item['id'])) {
                    $itemModel = WarehouseCommitItemModel::findOne($item['id']);
                    if (!is_null($item)) {
                        $itemModel->updateAttributes($attributes);
                    }
                }
            }
        }
        return true;
    }

}