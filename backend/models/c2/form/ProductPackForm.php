<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/27
 * Time: 21:08
 */

namespace backend\models\c2\form;


use common\models\c2\entity\ProductPackModel;
use cza\base\models\ModelTrait;
use yii\base\Model;
use yii\helpers\ArrayHelper;
use yii\validators\RequiredValidator;

class ProductPackForm extends Model
{
    use ModelTrait;
    public $entityModel;
    public $items;

    public function rules()
    {
        return [
          [['items',], 'validatePack']
        ];
    }

    public function validatePack($attribute)
    {
        // $requiredValidator = new RequiredValidator();
        // foreach ($this->$attribute as $index => $row) {
        //     $error = null;
        //     $requiredValidator->validate($row['label'], $error);
        //     if (!empty($error)) {
        //         $key = $attribute . '[' . $index . '][label]';
        //         $this->addError($key, $error);
        //     }
        // }
    }

    public function save()
    {
        if (!empty($this->items)) {
            foreach ($this->items as $item) {
                if (isset($item['id']) && $item['id'] == '') {
                    $model = new ProductPackModel();
                    $model->setAttributes(ArrayHelper::merge($item, [
                        'product_id' => $this->entityModel->id
                    ]));
                    $model->save();
                } elseif(isset($item['id'])) {
                    $model = ProductPackModel::findOne($item['id']);
                    $model->updateAttributes($item);
                }
            }
        }
        return true;
    }

}