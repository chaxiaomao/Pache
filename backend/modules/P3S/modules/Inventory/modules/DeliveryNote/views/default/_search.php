<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\c2\search\InventoryDeliveryNote */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="inventory-delivery-note-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'type') ?>

    <?= $form->field($model, 'code') ?>

    <?= $form->field($model, 'label') ?>

    <?= $form->field($model, 'warehouse_id') ?>

    <?php // echo $form->field($model, 'sales_order_id') ?>

    <?php // echo $form->field($model, 'customer_id') ?>

    <?php // echo $form->field($model, 'occurrence_date') ?>

    <?php // echo $form->field($model, 'grand_total') ?>

    <?php // echo $form->field($model, 'arrival_number') ?>

    <?php // echo $form->field($model, 'buyer_name') ?>

    <?php // echo $form->field($model, 'dept_manager_name') ?>

    <?php // echo $form->field($model, 'financial_name') ?>

    <?php // echo $form->field($model, 'receiver_name') ?>

    <?php // echo $form->field($model, 'payment_method') ?>

    <?php // echo $form->field($model, 'delivery_method') ?>

    <?php // echo $form->field($model, 'memo') ?>

    <?php // echo $form->field($model, 'remote_ip') ?>

    <?php // echo $form->field($model, 'is_audited') ?>

    <?php // echo $form->field($model, 'audited_by') ?>

    <?php // echo $form->field($model, 'updated_by') ?>

    <?php // echo $form->field($model, 'created_by') ?>

    <?php // echo $form->field($model, 'state') ?>

    <?php // echo $form->field($model, 'status') ?>

    <?php // echo $form->field($model, 'position') ?>

    <?php // echo $form->field($model, 'updated_at') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app.c2', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app.c2', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
