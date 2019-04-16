<?php

use cza\base\models\statics\EntityModelStatus;
use cza\base\widgets\ui\adminlte2\InfoBox;
use kartik\builder\Form;
use kartik\widgets\ActiveForm;
use yii\helpers\Html;
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
                'type' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => \common\models\c2\statics\ProductType::getHashMap('id', 'label')],
                'sku' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('sku')]],
                // 'serial_number' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('serial_number')]],
                // 'breadcrumb' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('breadcrumb')]],
                'name' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('name')]],
                'label' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('label')]],
                'sales_price' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('sales_price')]],
                // 'attributeset_ids' => ['type' => Form::INPUT_WIDGET,
                //     'widgetClass' => '\kartik\widgets\Select2',
                //     'labelOptions' => [
                //         'class' => 'control-label col-md-2',
                //     ],
                //     'options' => [
                //         'language' => Yii::$app->language,
                //         'data' => \common\models\c2\entity\AttributesetModel::getHashMap('id', 'label'),
                //         'pluginOptions' => [
                //             'multiple' => true
                //         ],
                //     ],
                // ],
                // 'summary' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\vova07\imperavi\Widget', 'options' => [
                //     'settings' => [
                //         'minHeight' => 150,
                //         'buttonSource' => true,
                //         'lang' => $regularLangName,
                //         'plugins' => [
                //             'fontsize',
                //             'fontfamily',
                //             'fontcolor',
                //             'table',
                //             'textdirection',
                //             'fullscreen',
                //         ],
                //     ]
                // ],],
                // 'description' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\vova07\imperavi\Widget', 'options' => [
                //     'settings' => [
                //         'minHeight' => 150,
                //         'buttonSource' => true,
                //         'lang' => $regularLangName,
                //         'plugins' => [
                //             'fontsize',
                //             'fontfamily',
                //             'fontcolor',
                //             'table',
                //             'textdirection',
                //             'fullscreen',
                //         ],
                //     ]
                // ],],
                'supplier_id' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => \common\models\c2\entity\SupplierModel::getHashMap('id', 'label'), 'options' => ['placeholder' => $model->getAttributeLabel('currency_id')]],
                // 'measure_id' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('measure_id')]],
                // 'is_released' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\checkbox\CheckboxX', 'options' => [
                //     'pluginOptions' => ['threeState' => false],
                // ],],
                // 'released_at' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\widgets\DateTimePicker', 'options' => [
                //     'options' => ['placeholder' => Yii::t('app.c2', 'Date Time...')], 'pluginOptions' => ['format' => 'yyyy-mm-dd hh:ii:ss', 'autoclose' => true],
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

        $multipleItemsId = $model->getPrefixName('items');
        echo Form::widget([
            'model' => $model,
            'form' => $form,
            'columns' => 1,
            'attributes' => [
                'items' => [
                    'type' => Form::INPUT_WIDGET,
                    'widgetClass' => unclead\multipleinput\MultipleInput::className(),
                    'options' => [
                        'id' => $multipleItemsId,
                        'data' => $model->items,
                        //                        'max' => 4,
                        'allowEmptyList' => true,
                        'rowOptions' => function ($model, $index, $context) use ($multipleItemsId) {
                            return ['id' => "row{multiple_index_{$multipleItemsId}}", 'data-id' => $model['id']];
                        },
                        'columns' => [
                            [
                                'name' => 'id',
                                'type' => 'hiddenInput',
                            ],
                            [
                                'name' => 'material_id',
                                'title' => Yii::t('app.c2', 'Code'),
                                'type' => \kartik\select2\Select2::className(),
                                'enableError' => true,
                                'options' => [
                                    'data' => ['' => Yii::t("app.c2", "Select options ..")] + \common\models\c2\entity\ProductModel::getHashMap('id', 'sku', [
                                            'type' => \common\models\c2\statics\ProductType::TYPE_MATERIAL,
                                            'status' => EntityModelStatus::STATUS_ACTIVE,
                                        ]),
                                    // 'pluginOptions' => [
                                    //     'placeholder' => $model->getAttributeLabel('Select options ..')
                                    // ],
                                    'pluginEvents' => [
                                        'change' => "function() {
                                                $.post('" . Url::toRoute(['materials']) . "', {'depdrop_all_params[product_id]':$(this).val(),'depdrop_parents[]':$(this).val()}, function(data) {
                                                    if(data.output !== undefined) {
                                                        $('select#subcat-{multiple_index_{$multipleItemsId}}').empty();
                                                        $.each(data.output, function(key, item){
                                                                $('select#subcat-{multiple_index_{$multipleItemsId}}').append('<option value=' + item.id + '>' + item.name + '</option>');
                                                            });
                                                    }
                                                })
                                            }",
                                    ],
                                ]
                            ],
                            [
                                'name' => 'material_item_id',
                                'type' => 'dropDownList',
                                'title' => Yii::t('app.c2', 'Material Num'),
                                'enableError' => true,
                                'items' => $model->isNewRecord ? [] : function ($data) {
                                    if (is_object($data)) {
                                        return \common\models\c2\entity\ProductMaterialItemModel::getHashMap('id', 'value');
                                        // return $data->owner->getMaterialOptionsList();
                                    }
                                    return [];
                                },
                                'options' => [
                                    'id' => "subcat-{multiple_index_{$multipleItemsId}}",
                                ],
                            ],
                            [
                                'name' => 'num',
                                'type' => kartik\widgets\TouchSpin::className(),
                                'title' => Yii::t('app.c2', 'Quantity'),
                                'defaultValue' => 1,
                                'options' => [

                                ]
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

        echo Html::beginTag('div', ['class' => 'box-footer']);
        echo Html::submitButton('<i class="fa fa-save"></i> ' . Yii::t('app.c2', 'Save'), ['type' => 'button', 'class' => 'btn btn-primary pull-right']);
        echo Html::a('<i class="fa fa-arrow-left"></i> ' . Yii::t('app.c2', 'Go Back'), ['index'], ['data-pjax' => '0', 'class' => 'btn btn-default pull-right', 'title' => Yii::t('app.c2', 'Go Back'),]);
        echo Html::endTag('div');
        ?>
    </div>
</div>
<?php ActiveForm::end(); ?>
