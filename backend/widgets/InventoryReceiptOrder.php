<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/5/17
 * Time: 21:04
 */

namespace backend\widgets;

class InventoryReceiptOrder extends \yii\base\Widget
{
    public $model;

    public function init()
    {
        parent::init(); // TODO: Change the autogenerated stub
    }


    public function run()
    {
        // parent::run(); // TODO: Change the autogenerated stub
        return $this->render('inventory_receipt_order', [
            'model' => $this->model
        ]);
    }
}