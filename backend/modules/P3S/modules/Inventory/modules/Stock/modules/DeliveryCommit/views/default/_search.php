<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\c2\search\WarehouseDeliveryCommitItemSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="warehouse-delivery-commit-item-model-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'note_id') ?>

    <?= $form->field($model, 'product_id') ?>

    <?= $form->field($model, 'product_sku_id') ?>

    <?= $form->field($model, 'sku_label') ?>

    <?php // echo $form->field($model, 'customer_id') ?>

    <?php // echo $form->field($model, 'quantity') ?>

    <?php // echo $form->field($model, 'actual_quantity') ?>

    <?php // echo $form->field($model, 'stock_quantity') ?>

    <?php // echo $form->field($model, 'measure_id') ?>

    <?php // echo $form->field($model, 'volume') ?>

    <?php // echo $form->field($model, 'weight') ?>

    <?php // echo $form->field($model, 'pieces') ?>

    <?php // echo $form->field($model, 'product_price') ?>

    <?php // echo $form->field($model, 'factory_price') ?>

    <?php // echo $form->field($model, 'subtotal') ?>

    <?php // echo $form->field($model, 'memo') ?>

    <?php // echo $form->field($model, 'status') ?>

    <?php // echo $form->field($model, 'position') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <?php // echo $form->field($model, 'updated_at') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app.c2', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app.c2', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
