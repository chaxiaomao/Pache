<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\c2\search\WarehouseSendItemSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="warehouse-send-item-model-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'note_id') ?>

    <?= $form->field($model, 'product_id') ?>

    <?= $form->field($model, 'code') ?>

    <?= $form->field($model, 'name') ?>

    <?php // echo $form->field($model, 'label') ?>

    <?php // echo $form->field($model, 'value') ?>

    <?php // echo $form->field($model, 'send_number') ?>

    <?php // echo $form->field($model, 'production_number') ?>

    <?php // echo $form->field($model, 'stock_number') ?>

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
