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
                    'items' => \common\models\c2\statics\InventoryDeliveryType::getHashMap('id', 'label')
                ],
                'code' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('code')]],
                'label' => [
                    'type' => Form::INPUT_TEXT,
                    'options' => [
                        'placeholder' => Yii::t('app.c2', 'To Company Name')
                    ]
                ],
                // 'warehouse_id' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('warehouse_id')]],
                'warehouse_id' => [
                    'type' => Form::INPUT_DROPDOWN_LIST,
                    'items' => \common\models\c2\entity\WarehouseModel::getHashMap('id', 'name', ['status' => EntityModelStatus::STATUS_ACTIVE]),
                    'options' => [
                        'placeholder' => $model->getAttributeLabel('warehouse_id')
                    ]
                ],
                'sales_order_id' => [
                    'type' => Form::INPUT_WIDGET,
                    'widgetClass' => \kartik\select2\Select2::className(),
                    'options' => [
                        'data' => ['' => 'select...'] + \common\models\c2\entity\OrderModel::getHashMap('id', 'code', [
                                'status' => EntityModelStatus::STATUS_ACTIVE,
                                'state' => \common\models\c2\statics\InventoryExeState::UNTRACK,
                            ]),
                    ]
                ],
                // 'customer_id' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('customer_id')]],
                'customer_id' => [
                    'type' => Form::INPUT_WIDGET,
                    'widgetClass' => \kartik\select2\Select2::className(),
                    'options' => [
                        'data' => ['' => 'select...'] + \common\models\c2\entity\FeUserModel::getHashMap('id', 'username', [
                                'status' => EntityModelStatus::STATUS_ACTIVE,
                                'type' => \common\models\c2\statics\FeUserType::TYPE_CUSTOMER
                            ]),
                        // 'placeholder' => $model->getAttributeLabel('receiver_name')
                    ]
                ],
                'occurrence_date' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\widgets\DateTimePicker', 'options' => [
                    'options' => ['placeholder' => Yii::t('app.c2', 'Date Time...')], 'pluginOptions' => ['format' => 'yyyy-mm-dd hh:ii:ss', 'autoclose' => true],
                ],],
                'grand_total' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => Yii::t('app.c2', 'Auto summary so you can empty this input.')]],
                // 'contact_man' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('contact_man')]],
                // 'cs_name' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('cs_name')]],
                // 'sender_name' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('sender_name')]],
                'sender_name' => [
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
                'payment_method' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('payment_method')]],
                'delivery_method' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('delivery_method')]],

                // 'remote_ip' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('remote_ip')]],
                // 'is_audited' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\checkbox\CheckboxX', 'options' => [
                //     'pluginOptions' => ['threeState' => false],
                // ],],
                // 'audited_by' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('audited_by')]],
                // 'state' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\checkbox\CheckboxX', 'options' => [
                //     'pluginOptions' => ['threeState' => false],
                // ],],
                // 'status' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => EntityModelStatus::getHashMap('id', 'label')],
                'position' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\touchspin\TouchSpin', 'options' => [
                    'pluginOptions' => [
                        'buttondown_txt' => '<i class="glyphicon glyphicon-minus-sign"></i>',
                        'buttonup_txt' => '<i class="glyphicon glyphicon-plus-sign"></i>',
                    ],
                ],],
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
                    'label' => Yii::t('app.c2', 'Add Delivery Note Items'),
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
                                            'type' => \common\models\c2\statics\ProductType::TYPE_PRODUCT,
                                            'is_released' => EntityModelStatus::STATUS_ACTIVE,
                                            'status' => EntityModelStatus::STATUS_ACTIVE,
                                        ]),
                                    'pluginEvents' => [
                                        'change' => "function() {
                                                $.post('" . Url::toRoute(['product-attachment']) . "', {'depdrop_all_params[product_id]':$(this).val(),'depdrop_parents[]':$(this).val()}, function(data) {
                                                    if(data.output !== undefined) {
                                                        $('select#combination-{multiple_index_{$multipleItemsId}}').empty();
                                                        $('select#package-{multiple_index_{$multipleItemsId}}').empty();
                                                        $.each(data.output.combination, function(key, item){
                                                                $('select#combination-{multiple_index_{$multipleItemsId}}').append('<option value=' + item.id + '>' + item.label + '</option>');
                                                            });
                                                        $.each(data.output.package, function(key, item){
                                                            $('select#package-{multiple_index_{$multipleItemsId}}').append('<option value=' + item.id + '>' + item.label + '</option>');
                                                        });
                                                    }
                                                })
                                            }",
                                    ],
                                ],
                            ],
                            [
                                'name' => 'product_combination_id',
                                'type' => 'dropDownList',
                                'items' => $model->isNewRecord ? [] : \common\models\c2\entity\ProductCombinationModel::getHashMap('id', 'label'),
                                'title' => Yii::t('app.c2', 'Product Combination'),
                                'options' => [
                                    'id' => "combination-{multiple_index_{$multipleItemsId}}",
                                ],
                            ],
                            [
                                'name' => 'product_package_id',
                                'type' => 'dropDownList',
                                'items' => $model->isNewRecord ? [] : \common\models\c2\entity\ProductPackageModel::getHashMap('id', 'label'),
                                'title' => Yii::t('app.c2', 'Product Package'),
                                'options' => [
                                    'id' => "package-{multiple_index_{$multipleItemsId}}",
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
                                'name' => 'quantity',
                                'title' => Yii::t('app.c2', 'Number'),
                                'enableError' => true,
                                'options' => [
                                    'type' => 'number',
                                    'min' => 0,
                                    'placeholder' => Yii::t('app.c2', 'Auto summary so you can empty this input.')
                                ]
                            ],
                            [
                                'name' => 'pieces',
                                'title' => Yii::t('app.c2', 'Pieces'),
                                'enableError' => true,
                                'defaultValue' => 1,
                                'options' => [
                                    'type' => 'number',
                                    'min' => 1,
                                ]
                            ],
                            // [
                            //     'name' => 'product_price',
                            //     'title' => Yii::t('app.c2', 'Product Price'),
                            //     'enableError' => true,
                            //     'defaultValue' => '0.00',
                            //     'options' => [
                            //         'type' => 'number',
                            //         'min' => '0',
                            //         'step' => '0.01',
                            //     ]
                            // ],
                            [
                                'name' => 'factory_price',
                                'title' => Yii::t('app.c2', 'Factory Price'),
                                'enableError' => true,
                                'defaultValue' => '0.00',
                                'options' => [
                                    'type' => 'number',
                                    'min' => '0',
                                    'step' => '0.01',
                                ]
                            ],
                            [
                                'name' => 'subtotal',
                                'title' => Yii::t('app.c2', 'Subtotal'),
                                'enableError' => true,
                                'options' => [
                                    'type' => 'number',
                                    'min' => '0',
                                    'step' => '0.01',
                                    'placeholder' => Yii::t('app.c2', 'Auto summary so you can empty this input.')
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
