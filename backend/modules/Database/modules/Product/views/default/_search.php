<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\c2\search\ProductSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="product-model-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'eshop_id') ?>

    <?= $form->field($model, 'type') ?>

    <?= $form->field($model, 'seo_code') ?>

    <?= $form->field($model, 'sku') ?>

    <?php // echo $form->field($model, 'serial_number') ?>

    <?php // echo $form->field($model, 'breadcrumb') ?>

    <?php // echo $form->field($model, 'name') ?>

    <?php // echo $form->field($model, 'label') ?>

    <?php // echo $form->field($model, 'meta_title') ?>

    <?php // echo $form->field($model, 'meta_keywords') ?>

    <?php // echo $form->field($model, 'meta_description') ?>

    <?php // echo $form->field($model, 'is_score_exchange') ?>

    <?php // echo $form->field($model, 'score_exchange_method') ?>

    <?php // echo $form->field($model, 'score') ?>

    <?php // echo $form->field($model, 'gift_score') ?>

    <?php // echo $form->field($model, 'require_setup') ?>

    <?php // echo $form->field($model, 'is_install') ?>

    <?php // echo $form->field($model, 'install_price') ?>

    <?php // echo $form->field($model, 'low_price') ?>

    <?php // echo $form->field($model, 'sales_price') ?>

    <?php // echo $form->field($model, 'cost_price') ?>

    <?php // echo $form->field($model, 'market_price') ?>

    <?php // echo $form->field($model, 'brand_id') ?>

    <?php // echo $form->field($model, 'supplier_id') ?>

    <?php // echo $form->field($model, 'currency_id') ?>

    <?php // echo $form->field($model, 'measure_id') ?>

    <?php // echo $form->field($model, 'summary') ?>

    <?php // echo $form->field($model, 'description') ?>

    <?php // echo $form->field($model, 'views_count') ?>

    <?php // echo $form->field($model, 'comment_count') ?>

    <?php // echo $form->field($model, 'sold_count') ?>

    <?php // echo $form->field($model, 'virtual_sold_count') ?>

    <?php // echo $form->field($model, 'is_released') ?>

    <?php // echo $form->field($model, 'released_at') ?>

    <?php // echo $form->field($model, 'created_by') ?>

    <?php // echo $form->field($model, 'updated_by') ?>

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
