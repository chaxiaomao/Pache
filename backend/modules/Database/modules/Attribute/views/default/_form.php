<?php

use common\models\c2\statics\AttributeInputType;
use yii\helpers\Html;
use kartik\widgets\ActiveForm;
use kartik\builder\Form;
use cza\base\widgets\ui\adminlte2\InfoBox;
use cza\base\models\statics\EntityModelStatus;
use yii\helpers\Url;

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

<div class="<?= $model->getPrefixName('form') ?>
">
    <?php if (Yii::$app->session->hasFlash($messageName)): ?>
        <?php if (!$model->hasErrors()) {
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
                // 'eshop_id' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('eshop_id')]],
                'type' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => common\models\c2\statics\AttributeType::getHashMap('id', 'label')],
                'code' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('code')]],
                'name' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('name')]],
                'label' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('label')]],
                'hint' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('hint')]],
            ]
        ]);

        echo Form::widget([
            'model' => $model,
            'form' => $form,
            'columns' => 1,
            'attributes' => [
                'attributeset_ids' => ['type' => Form::INPUT_WIDGET,
                    'widgetClass' => '\kartik\widgets\Select2',
                    'options' => [
                        'language' => Yii::$app->language,
                        'data' => \common\models\c2\entity\AttributesetModel::getHashMap('id', 'label'),
                        'pluginOptions' => [
                            'multiple' => true
                        ],
                    ],
                ],
                'input_type' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => \common\models\c2\statics\AttributeInputType::getHashMap('id', 'label')],
            ]
        ]);

        echo Form::widget([
            'model' => $model,
            'form' => $form,
            'columns' => 1,
            'attributes' => [
                'items' => [
                    'type' => Form::INPUT_WIDGET,
                    'widgetClass' => unclead\multipleinput\MultipleInput::className(),
                    'options' => [
                        'data' => $model->items,
                        //                        'max' => 4,
                        'allowEmptyList' => true,
                        'rowOptions' => function($model, $index, $context) {
                            return ['data-id' => $model['id']];
                        },
                        'columns' => [
                            [
                                'name' => 'id',
                                'type' => 'hiddenInput',
                            ],
                            [
                                'name' => 'code',
                                'title' => Yii::t('app.c2', 'Code'),
                                'enableError' => true,
                                'options' => [
                                    'class' => 'input-priority'
                                ]
                            ],
                            [
                                'name' => 'label',
                                'title' => Yii::t('app.c2', 'Label'),
                                'enableError' => true,
                                'options' => [
                                    'class' => 'input-priority'
                                ]
                            ],
                            [
                                'name' => 'value',
                                'title' => Yii::t('app.c2', 'Value'),
                                'enableError' => true,
                                'options' => [
                                    'class' => 'input-priority'
                                ]
                            ],
                            [
                                'name' => 'is_selected',
                                'type' => 'dropDownList',
                                'title' => Yii::t('app.c2', 'Is Selected'),
                                'defaultValue' => 2,
                                'items' => \common\models\c2\statics\SeletedType::getHashMap('id', 'label'),
                            ],
                            [
                                'name' => 'position',
                                'type' => kartik\widgets\TouchSpin::className(),
                                'title' => Yii::t('app.c2', 'Position'),
                                'defaultValue' => 50,
                                'options' => [
                                    'pluginOptions' => [
                                        'buttondown_txt' => '<i class="glyphicon glyphicon-minus-sign"></i>',
                                        'buttonup_txt' => '<i class="glyphicon glyphicon-plus-sign"></i>',
                                    ],
                                ]
                            ],
                        ]
                    ],
                ],
            ]
        ]);

        echo Form::widget([
            'model' => $model,
            'form' => $form,
            'columns' => 1,
            'attributes' => [
                'default_value' => [
                    'fieldConfig' => [
                        'template' => "{label}\n{hint}\n{input}\n{error}",
                    ],
                    'type' => Form::INPUT_TEXTAREA,
                    //                    'hint' => Yii::t('app.c2', "if mulitiple input type, data should be json format."),
                ],
                'memo' => [
                    'type' => Form::INPUT_TEXTAREA,
                ],
            ]
        ]);

        echo Form::widget([
            'model' => $model,
            'form' => $form,
            'columns' => 1,
            'attributes' => [
                'is_depend' => ['type' => Form::INPUT_CHECKBOX,],
                'depend_id' => [
                    'type' => Form::INPUT_WIDGET,
                    'widgetClass' => '\kartik\widgets\Select2',
                    'options' => [
                        'language' => Yii::$app->language,
                        'data' => $model::getHashMap('id', 'label'),
                        'pluginOptions' => [
                            'allowClear' => false,
                            'placeholder' => Yii::t('app.c2', "Select options .."),
                        ],
                    ],
                ],
            ]
        ]);

        echo Form::widget([
            'model' => $model,
            'form' => $form,
            'columns' => 5,
            'attributes' => [
                'is_sku' => [
                    'type' => Form::INPUT_WIDGET, 'hint' => Yii::t('app.c2', "Tips: if checked, will be act as product sku attribute."), 'widgetClass' => '\kartik\checkbox\CheckboxX', 'options' => [
                        'pluginOptions' => ['threeState' => false],
                    ],],
                'is_visible' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\checkbox\CheckboxX', 'options' => [
                    'pluginOptions' => ['threeState' => false],
                ],],
                'is_required' => [
                    'type' => Form::INPUT_WIDGET, 'hint' => Yii::t('app.c2', "Tips: if checked, will be act as required attribute."),
                    'widgetClass' => '\kartik\checkbox\CheckboxX', 'options' => [
                        'pluginOptions' => ['threeState' => false],
                    ],],
                'is_unique' => [
                    'type' => Form::INPUT_WIDGET, 'hint' => Yii::t('app.c2', "Tips: if checked, will be validate unique when input."),
                    'widgetClass' => '\kartik\checkbox\CheckboxX', 'options' => [
                        'pluginOptions' => ['threeState' => false],
                    ],],
                'position' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\touchspin\TouchSpin', 'options' => [
                    'pluginOptions' => [
                        'buttondown_txt' => '<i class="glyphicon glyphicon-minus-sign"></i>',
                        'buttonup_txt' => '<i class="glyphicon glyphicon-plus-sign"></i>',
                    ],
                ],],
                'status' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => EntityModelStatus::getHashMap('id', 'label')],
            ]
        ]);

        echo Html::beginTag('div', ['class' => 'box-footer']);
        echo Html::submitButton('<i class="fa fa-save"></i> ' . Yii::t('app.c2', 'Save'), ['type' => 'button', 'class' => 'btn btn-primary pull-right']);
        echo Html::a('<i class="fa fa-arrow-left"></i> ' . Yii::t('app.c2', 'Go Back'), ['index'], ['data-pjax' => '0', 'class' => 'btn btn-default pull-right', 'title' => Yii::t('app.c2', 'Go Back'),]);
        echo Html::endTag('div');
        ?>
    </div>
</div>
<?php ActiveForm::end(); ?>

<?php
$js = "";
$js .= "var inputType = '#" . Html::getInputId($model, 'input_type') . "'\n";
$js .= "var item = '#" . Html::getInputId($model, 'item') . "'\n";
$js .= "var isDepend = '#" . Html::getInputId($model, 'is_depend') . "'\n";
$js .= "var dependId = '#" . Html::getInputId($model, 'depend_id') . "'\n";

// handle items input
if ($model->isNewRecord || !$model->isMultiple()) {
    $js .= "$('.field-attributemodel-items').hide();\n";
}
if ($model->isMultiple()) {
    $js .= "$('.field-attributemodel-default_value').hide();\n";
}

$js .= "jQuery('.btn.multiple-input-list__btn.js-input-remove').off('click').on('click', function(){
    var itemId = $(this).closest('tr').data('id');
    if(itemId){
       $.ajax({url:'" . Url::toRoute('delete-subitem') . "',data:{id:itemId}}).done(function(result){;}).fail(function(result){alert(result);});
    }
});\n";

$js .= "jQuery(inputType).change(function(){
    if($.inArray($(this).val(), ['" . AttributeInputType::INPUT_TEXT . "', '" . AttributeInputType::INPUT_TEXTAREA . "', '" . AttributeInputType::INPUT_RICHTEXT . "']) !== -1){
        $('.field-attributemodel-default_value').show();
        $('.field-attributemodel-items').hide();
    }
    else{
        $('.field-attributemodel-default_value').hide();
        $('.field-attributemodel-items').show();
    }
});\n";

// handle dependent input
if ($model->isNewRecord || !$model->is_depend) {
    $js .= "jQuery('.field-attributemodel-depend_id').hide();\n";
}
$js .= "jQuery(isDepend).change(function() {     
    $(dependId).parent().toggle();
});\n";
$this->registerJs($js);
?>
