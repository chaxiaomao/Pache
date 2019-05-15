<?php

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
                    'type' => [
                        'type' => Form::INPUT_DROPDOWN_LIST,
                        'items' => \common\models\c2\statics\InventoryReceiptType::getHashMap('id', 'label')
                    ],
                    'code' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('code')]],
                    'label' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('label')]],
                    'warehouse_id' => [
                        'type' => Form::INPUT_DROPDOWN_LIST,
                        'items' => \common\models\c2\entity\WarehouseModel::getHashMap('id', 'name', ['status' => EntityModelStatus::STATUS_ACTIVE]),
                        'options' => [
                            'placeholder' => $model->getAttributeLabel('warehouse_id')
                        ]
                    ],
                    'supplier_id' => [
                        'type' => Form::INPUT_DROPDOWN_LIST,
                        'items' => \common\models\c2\entity\SupplierModel::getHashMap('id', 'name', ['status' => EntityModelStatus::STATUS_ACTIVE]),
                        'options' => [
                            'placeholder' => $model->getAttributeLabel('supplier_id')
                        ]
                    ],
                    'arrival_date' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\widgets\DateTimePicker', 'options' => [
                        'options' => ['placeholder' => Yii::t('app.c2', 'Date Time...')], 'pluginOptions' => ['format' => 'yyyy-mm-dd hh:ii:ss', 'autoclose' => true],
                    ],],
                    'occurrence_date' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\widgets\DateTimePicker', 'options' => [
                        'options' => ['placeholder' => Yii::t('app.c2', 'Date Time...')], 'pluginOptions' => ['format' => 'yyyy-mm-dd hh:ii:ss', 'autoclose' => true],
                    ],],
                    // 'arrival_number' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('arrival_number')]],
                    // 'buyer_name' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('buyer_name')]],
                    'buyer_name' => [
                        'type' => Form::INPUT_WIDGET,
                        'widgetClass' => \kartik\select2\Select2::className(),
                        'options' => [
                            'data' => ['' => 'select...'] + \common\models\c2\entity\FeUserModel::getHashMap('id', 'username', [
                                    'status' => EntityModelStatus::STATUS_ACTIVE,
                                    'type' => \common\models\c2\statics\FeUserType::TYPE_EMPLOYEE
                                ]),
                            // 'placeholder' => $model->getAttributeLabel('receiver_name')
                        ]
                    ],
                    'dept_manager_name' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('dept_manager_name')]],
                    // 'financial_name' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('financial_name')]],
                    'financial_name' => [
                        'type' => Form::INPUT_WIDGET,
                        'widgetClass' => \kartik\select2\Select2::className(),
                        'options' => [
                            'data' => ['' => 'select...'] + \common\models\c2\entity\FeUserModel::getHashMap('id', 'username', [
                                    'status' => EntityModelStatus::STATUS_ACTIVE,
                                    'type' => \common\models\c2\statics\FeUserType::TYPE_EMPLOYEE
                                ]),
                            // 'placeholder' => $model->getAttributeLabel('receiver_name')
                        ]
                    ],
                    'receiver_name' => [
                        'type' => Form::INPUT_WIDGET,
                        'widgetClass' => \kartik\select2\Select2::className(),
                        'options' => [
                            'data' => ['' => 'select...'] + \common\models\c2\entity\FeUserModel::getHashMap('id', 'username', [
                                    'status' => EntityModelStatus::STATUS_ACTIVE,
                                    'type' => \common\models\c2\statics\FeUserType::TYPE_EMPLOYEE
                                ]),
                            // 'placeholder' => $model->getAttributeLabel('receiver_name')
                        ]
                    ],
                    'position' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\touchspin\TouchSpin', 'options' => [
                        'pluginOptions' => [
                            'buttondown_txt' => '<i class="glyphicon glyphicon-minus-sign"></i>',
                            'buttonup_txt' => '<i class="glyphicon glyphicon-plus-sign"></i>',
                        ],
                    ],],
                    // 'remote_ip' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('remote_ip')]],
                    // 'state' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\checkbox\CheckboxX', 'options' => [
                    //     'pluginOptions' => ['threeState' => false],
                    // ],],
                    // 'status' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => EntityModelStatus::getHashMap('id', 'label')],
                ]
            ]);

            echo Form::widget([
                'model' => $model,
                'form' => $form,
                'columns' => 1,
                'attributes' => [
                    'memo' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\vova07\imperavi\Widget', 'options' => [
                        'settings' => [
                            'minHeight' => 150,
                            'buttonSource' => true,
                            'lang' => $regularLangName,
                            'plugins' => [
                                'fontsize',
                                'fontfamily',
                                'fontcolor',
                                'table',
                                'textdirection',
                                'fullscreen',
                            ],
                        ]
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
                        'label' => Yii::t('app.c2', 'Add Receipt Note Items'),
                        'widgetClass' => unclead\multipleinput\MultipleInput::className(),
                        'options' => [
                            'id' => $multipleItemsId,
                            'data' => $model->items,
                            //  'max' => 4,
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
                                    'name' => 'product_id',
                                    // 'type' => 'dropDownList',
                                    'title' => Yii::t('app.c2', 'Sku'),
                                    'enableError' => true,
                                    // 'items' => ['' => Yii::t("app.c2", "Select options ..")] + \common\models\c2\entity\ProductModel::getHashMap('id', 'sku', ['status' => EntityModelStatus::STATUS_ACTIVE]),
                                    'type' => \kartik\select2\Select2::className(),
                                    'options' => [
                                        'data' => [
                                                '' => Yii::t("app.c2", "Select options ..")] + \common\models\c2\entity\ProductModel::getHashMap('id', 'sku', [
                                                'type' => \common\models\c2\statics\ProductType::TYPE_MATERIAL,
                                                'is_released' => EntityModelStatus::STATUS_ACTIVE,
                                                'status' => EntityModelStatus::STATUS_ACTIVE,
                                            ]),
                                        'pluginEvents' => [
                                            'change' => "function() {
                                                $.post('" . Url::toRoute(['product']) . "', {'depdrop_all_params[product_id]':$(this).val(),'depdrop_parents[]':$(this).val()}, function(data) {
                                                    if(data.output !== undefined) {
                                                        $('#code-{multiple_index_{$multipleItemsId}}').val(data.output.sku);
                                                        $('#name-{multiple_index_{$multipleItemsId}}').val(data.output.name);
                                                        $('#value-{multiple_index_{$multipleItemsId}}').val(data.output.value);
                                                    }
                                                })
                                            }",
                                        ],
                                    ],
                                ],
                                [
                                    'name' => 'code',
                                    'title' => Yii::t('app.c2', 'Code'),
                                    'options' => [
                                        'id' => "code-{multiple_index_{$multipleItemsId}}",
                                        'readonly' => true
                                    ],
                                ],
                                [
                                    'name' => 'name',
                                    'title' => Yii::t('app.c2', 'Name'),
                                    'options' => [
                                        'id' => "name-{multiple_index_{$multipleItemsId}}",
                                        'readonly' => true
                                    ],
                                ],
                                [
                                    'name' => 'value',
                                    'title' => Yii::t('app.c2', 'Value'),
                                    'options' => [
                                        'id' => "value-{multiple_index_{$multipleItemsId}}",
                                        'readonly' => true
                                    ],
                                ],
                                [
                                    'name' => 'label',
                                    'title' => Yii::t('app.c2', 'Label'),
                                    'options' => [
                                    ],
                                ],
                                [
                                    'name' => 'measure_id',
                                    'title' => Yii::t('app.c2', 'Measure'),
                                    'type' => 'dropDownList',
                                    'enableError' => true,
                                    'items' => \common\models\c2\entity\MeasureModel::getHashMap('id', 'label', [
                                        'status' => EntityModelStatus::STATUS_ACTIVE,
                                    ]),
                                    'options' => [

                                    ]
                                ],
                                [
                                    'name' => 'number',
                                    'title' => Yii::t('app.c2', 'Number'),
                                    'enableError' => true,
                                    'defaultValue' => '1',
                                    'options' => [
                                        'type' => 'number',
                                        'min' => 1,
                                    ]
                                ],
                                [
                                    'name' => 'until_price',
                                    'title' => Yii::t('app.c2', 'Until Price'),
                                    'enableError' => true,
                                    'defaultValue' => '0.00',
                                    'options' => [
                                        'type' => 'number',
                                        'step' => '0.01',
                                        'min' => 0,
                                    ]
                                ],
                                [
                                    'name' => 'subtotal',
                                    'title' => Yii::t('app.c2', 'Subtotal'),
                                    'enableError' => true,
                                    'options' => [
                                        'placeholder' => Yii::t('app.c2', 'Auto summary so you can empty this input.'),
                                        'type' => 'number',
                                        'step' => '0.01',
                                        'min' => 0,
                                    ]
                                ],
                                [
                                    'name' => 'memo',
                                    'title' => Yii::t('app.c2', 'Memo'),
                                    'options' => [
                                    ],
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
<?php
$js = "";
$js .= "jQuery('.btn.multiple-input-list__btn.js-input-remove').off('click').on('click', function(){
    var itemId = $(this).closest('tr').data('id');
    if(itemId){
       $.ajax({url:'" . Url::toRoute('delete-subitem') . "',data:{id:itemId}}).done(function(result){;}).fail(function(result){alert(result);});
    }
});\n";

$this->registerJs($js);
?>