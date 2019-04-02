<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\c2\search\ResumeSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="resume-model-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'name') ?>

    <?= $form->field($model, 'mobile_num') ?>

    <?= $form->field($model, 'email') ?>

    <?= $form->field($model, 'description') ?>

    <?php // echo $form->field($model, 'degree') ?>

    <?php // echo $form->field($model, 'school') ?>

    <?php // echo $form->field($model, 'major') ?>

    <?php // echo $form->field($model, 'industry') ?>

    <?php // echo $form->field($model, 'expect_salary') ?>

    <?php // echo $form->field($model, 'expect_industry') ?>

    <?php // echo $form->field($model, 'content') ?>

    <?php // echo $form->field($model, 'memo') ?>

    <?php // echo $form->field($model, 'status') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <?php // echo $form->field($model, 'updated_at') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app.c2', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app.c2', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
