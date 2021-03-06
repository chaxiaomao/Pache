<?php

use yii\helpers\Html;
use kartik\widgets\ActiveForm;
use kartik\builder\Form;
use cza\base\widgets\ui\adminlte2\InfoBox;
use cza\base\models\statics\EntityModelStatus;

$regularLangName = \Yii::$app->czaHelper->getRegularLangName();
$messageName = $model->getMessageName();
?>

<?php
$form = ActiveForm::begin([
'action' => ['edit', 'id' => $model->id],
'options' => [
'id' => $model->getBaseFormName(),
'data-pjax' => true,
]]);
?>

<div class="<?=$model->getPrefixName('form') ?>
">
    <?php if (Yii::$app->session->hasFlash($messageName)): ?>
    <?php    if (!$model->hasErrors()) {
    echo InfoBox::widget([
    'withWrapper' => false,
    'messages' => Yii::$app->session->getFlash($messageName),
    ]);
    } else {
    echo InfoBox::widget([
    'defaultMessageType' => InfoBox::TYPE_WARNING,
    'messages' => Yii::$app->session->getFlash($messageName),
    ]);
    }
    ?>
    <?php endif; ?>

    <div class="well">
        <?php
        echo Form::widget([
        'model' => $model,
        'form' => $form,
        'columns' => 2,
        'attributes' => [
         'order_id' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('order_id')]],
 'product_id' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('product_id')]],
 'material_id' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('material_id')]],
 'material_item_id' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('material_item_id')]],
 'quantity' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('quantity')]],
 'consumed_num' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('consumed_num')]],
 'subtotal' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('subtotal')]],
 'measure_id' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('measure_id')]],
 'memo' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('memo')]],
 'status' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => EntityModelStatus::getHashMap('id', 'label')],
 'position' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\touchspin\TouchSpin', 'options' => [
                            'pluginOptions' => [
                                'buttondown_txt' => '<i class="glyphicon glyphicon-minus-sign"></i>',
                                'buttonup_txt' => '<i class="glyphicon glyphicon-plus-sign"></i>',
                            ],
                        ],],
 'Column_15' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('Column_15')]],
        ]
        ]);
        echo Html::beginTag('div', ['class' => 'box-footer']);
        echo Html::submitButton('<i class="fa fa-save"></i> ' . Yii::t('app.c2', 'Save'), ['type' => 'button', 'class' => 'btn btn-primary pull-right']);
        echo Html::a('<i class="fa fa-arrow-left"></i> ' . Yii::t('app.c2', 'Go Back'), ['index'], [ 'data-pjax' => '0', 'class' => 'btn btn-default pull-right', 'title' => Yii::t('app.c2', 'Go Back'),]);
        echo Html::endTag('div');
        ?>
    </div>
</div>
<?php ActiveForm::end(); ?>
