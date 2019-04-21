<?php

use cza\base\models\statics\OperationEvent;
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
            $this->registerJs(
                "jQuery('{$model->getPrefixName('grid', true)}').trigger('" . OperationEvent::REFRESH . "');"
            );
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
                'warehouse_id' => [
                    'type' => Form::INPUT_DROPDOWN_LIST,
                    'items' => \common\models\c2\entity\WarehouseModel::getHashMap('id', 'label'),
                    'options' => ['placeholder' => $model->getAttributeLabel('warehouse_id')]
                ],
                'product_id' => [
                    'widgetClass' => \kartik\select2\Select2::className(),
                    'type' => Form::INPUT_WIDGET,
                    'options' => [
                        'data' => ['0' => 'Select'] + \common\models\c2\entity\ProductModel::getHashMap('id', 'label'),
                        // 'placeholder' => $model->getAttributeLabel('product_id'),
                        'pluginEvents' => [
                            'change' => "function() {
                                            $.post('" . Url::toRoute(['materials']) . "', {'depdrop_all_params[product_id]':$(this).val(),'depdrop_parents[]':$(this).val()}, function(data) {
                                                if(data.output !== undefined) {
                                                    $('select#subcat-item').empty();
                                                    $.each(data.output, function(key, item){
                                                            $('select#subcat-item').append('<option value=' + item.id + '>' + item.label + '</option>');
                                                        });
                                                }
                                            })
                                        }",
                        ]
                    ],
                ],
                // 'sku' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('sku')]],
                // 'product_sku_id' => [
                //     'type' => Form::INPUT_DROPDOWN_LIST,
                //     // 'visible' => false,
                //     'items' => $model->isNewRecord ? [] : $model->materialProduct->getMaterialItemOptions(),
                //     'options' => [
                //         'id' => 'subcat-item2',
                //         'placeholder' => $model->getAttributeLabel('product_sku_id'),
                //     ]
                // ],
                'product_material_id' => [
                    'type' => Form::INPUT_DROPDOWN_LIST,
                    'items' => $model->isNewRecord ? [] : $model->materialProduct->getMaterialItemOptions(),
                    'options' => [
                        'id' => 'subcat-item',
                    ]
                ],
                'num' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('num')]],
                // 'state' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\checkbox\CheckboxX', 'options' => [
                //     'pluginOptions' => ['threeState' => false],
                // ],],
                'status' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => EntityModelStatus::getHashMap('id', 'label')],
                'position' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\touchspin\TouchSpin', 'options' => [
                    'pluginOptions' => [
                        'buttondown_txt' => '<i class="glyphicon glyphicon-minus-sign"></i>',
                        'buttonup_txt' => '<i class="glyphicon glyphicon-plus-sign"></i>',
                    ],
                ],],
            ]
        ]);
        echo Html::beginTag('div', ['class' => 'box-footer']);
        echo Html::submitButton('<i class="fa fa-save"></i> ' . Yii::t('app.c2', 'Save'), ['type' => 'button', 'class' => 'btn btn-primary pull-right']);
        echo Html::a('<i class="fa fa-arrow-left"></i> ' . Yii::t('app.c2', 'Close'), ['index'], ['data-dismiss' => 'modal', 'data-pjax' => '0', 'class' => 'btn btn-default pull-right', 'title' => Yii::t('app.c2', 'Close'),]);
        echo Html::endTag('div');
        ?>
    </div>
</div>
<?php ActiveForm::end(); ?>
