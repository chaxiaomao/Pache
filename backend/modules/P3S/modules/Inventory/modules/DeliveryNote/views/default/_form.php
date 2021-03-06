<?php

use yii\helpers\Html;
use kartik\widgets\ActiveForm;
use kartik\builder\Form;
use cza\base\models\statics\OperationEvent;
use cza\base\widgets\ui\adminlte2\InfoBox;
use cza\base\models\statics\EntityModelStatus;
use yii\helpers\Url;
use common\models\c2\entity\Product;
use common\models\c2\entity\ProductSku;
use yii\web\JsExpression;

$regularLangName = \Yii::$app->czaHelper->getRegularLangName();
$messageName = $model->getMessageName();

$css = ".form-control-static{padding:0;min-height:0;}";
$this->registerCss($css);
?>

<?php
$form = ActiveForm::begin([
    'action' => ['edit', 'id' => $model->id],
    'options' => [
        'id' => $model->getBaseFormName(),
        'data-pjax' => true,
    ]]);
?>

    <div class="<?= $model->getPrefixName('form') ?>">
        <?php if (Yii::$app->session->hasFlash($messageName)): ?>
            <?php
            if (!$model->hasErrors()) {
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
                'columns' => 3,
                'attributes' => [
                    'code' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('code')]],
                    'label' => [
                        'label' => Yii::t('app.c2', 'Receive company'),
                        'type' => Form::INPUT_TEXT,
                        'options' => ['placeholder' => Yii::t('app.c2', 'Receive company')]
                    ],
                    'type' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => \common\models\c2\statics\InventoryDeliveryType::getHashMap('id', 'label')],
                    'warehouse_id' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => \common\models\c2\entity\WarehouseModel::getHashMap('id', 'label')],
                    'customer_id' => [
                        'widgetClass' => \kartik\select2\Select2::className(),
                        'type' => Form::INPUT_WIDGET,
                        'options' => [
                            'data' => ['0' => ''] + \common\models\c2\entity\FeUserModel::getHashMap('id', 'username', ['type' => \common\models\c2\statics\UserType::TYPE_BUSINESS]),
                        ]
                    ],
                    'sales_order_id' => [
                        'type' => Form::INPUT_WIDGET,
                        'widgetClass' => '\kartik\widgets\Select2',
                        'label' => Yii::t('app.c2', 'Sales order Code'),
                        'options' => [
                            'language' => Yii::$app->language,
                            'initValueText' => $model->isNewRecord ? "" : $model->order->code,
                            'options' => [
                                'multiple' => false,
                                'placeholder' => Yii::t('app.c2', 'Search {s1}...', ['s1' => Yii::t('app.c2', 'Sales order Code')]),
                            ],
                            'pluginOptions' => [
                                //                            'dropdownParent' => '$("#inventory-delivery-note-modal")',
                                'allowClear' => true,
                                'minimumInputLength' => 1,
                                'ajax' => [
                                    'url' => Url::toRoute('search-order'),
                                    'dataType' => 'json',
                                    'data' => new JsExpression('function(params) { return {q:params.term}; }')
                                ],
                                'escapeMarkup' => new JsExpression('function (markup) { return markup; }'),
                                'templateResult' => new JsExpression('function(data) { return data.text; }'),
                                'templateSelection' => new JsExpression('function (data) { return data.text; }'),
                            ],
                        ],
                    ],
                    'occurrence_date' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\widgets\DateTimePicker', 'options' => [
                        'options' => ['placeholder' => Yii::t('app.c2', 'Date Time...')], 'pluginOptions' => ['format' => 'yyyy-mm-dd hh:ii:ss', 'autoclose' => true],
                    ],],
                    'grand_total' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('grand_total')]],
                    'payment_method' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('payment_method')]],
                    'delivery_method' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('delivery_method')]],
                    // 'contact_man' => [
                    //     'widgetClass' => \kartik\select2\Select2::className(),
                    //     'type' => Form::INPUT_WIDGET,
                    //     'options' => [
                    //         'data' => ['0' => ''] + \common\models\c2\entity\FeUserModel::getHashMap('id', 'username', ['type' => \common\models\c2\statics\UserType::TYPE_EMPLOYEE]),
                    //     ]
                    // ],
                    // 'sender_name' => [
                    //     'widgetClass' => \kartik\select2\Select2::className(),
                    //     'type' => Form::INPUT_WIDGET,
                    //     'options' => [
                    //         'data' => ['0' => ''] + \common\models\c2\entity\FeUserModel::getHashMap('id', 'username', ['type' => \common\models\c2\statics\UserType::TYPE_EMPLOYEE]),
                    //     ]
                    // ],
                ]
            ]);

            // echo Form::widget([
            //     'model' => $model,
            //     'form' => $form,
            //     'columns' => 4,
            //     'attributes' => [
            //         'cs_name' => [
            //             'widgetClass' => \kartik\select2\Select2::className(),
            //             'type' => Form::INPUT_WIDGET,
            //             'options' => [
            //                 'data' => ['0' => ''] + \common\models\c2\entity\FeUserModel::getHashMap('id', 'username', ['type' => \common\models\c2\statics\UserType::TYPE_EMPLOYEE]),
            //             ]
            //         ],
            //         'financial_name' => [
            //             'widgetClass' => \kartik\select2\Select2::className(),
            //             'type' => Form::INPUT_WIDGET,
            //             'options' => [
            //                 'data' => ['0' => ''] + \common\models\c2\entity\FeUserModel::getHashMap('id', 'username', ['type' => \common\models\c2\statics\UserType::TYPE_EMPLOYEE]),
            //             ]
            //         ],
            //     ]
            // ]);

            echo Html::beginTag('div', ['class' => 'well', 'style' => 'background-color:#fff;']);
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
                                    'name' => 'product_id',
                                    // 'type' => 'dropDownList',
                                    'title' => Yii::t('app.c2', 'Product Sku2'),
                                    'enableError' => true,
                                    // 'items' => ['' => Yii::t("app.c2", "Select options ..")] + \common\models\c2\entity\ProductModel::getHashMap('id', 'sku', ['status' => EntityModelStatus::STATUS_ACTIVE]),
                                    'type' => \kartik\select2\Select2::className(),
                                    'options' => [
                                        'data' => ['' => Yii::t("app.c2", "Select options ..")] + \common\models\c2\entity\ProductModel::getHashMap('id', 'sku'),
                                        'pluginEvents' => [
                                            'change' => "function() {
                                                $.post('" . Url::toRoute(['product']) . "', {'depdrop_all_params[product_id]':$(this).val(),'depdrop_parents[]':$(this).val()}, function(data) {
                                                    $('#name-{multiple_index_{$multipleItemsId}}').val(data._data);
                                                    // if(data.output !== undefined) {
                                                    //     $('select#subcat-{multiple_index_{$multipleItemsId}}').empty();
                                                    //     $.each(data.output, function(key, item){
                                                    //             $('select#subcat-{multiple_index_{$multipleItemsId}}').append('<option value=' + item.id + '>' + item.name + '</option>');
                                                    //         });
                                                    // }
                                                })
                                                $.post('" . Url::toRoute(['product-pack']) . "', {'depdrop_all_params[product_id]':$(this).val(),'depdrop_parents[]':$(this).val()}, function(data){
                                                        if(data.output !== undefined){
                                                            $('select#subcat-{multiple_index_{$multipleItemsId}}').empty();
                                                            $.each(data.output, function(key, item){
                                                                $('select#subcat-{multiple_index_{$multipleItemsId}}').append('<option value=' + item.id + '>' + item.label + '</option>');
                                                            });
                                                        }
                                                    });
                                            }",
                                        ],
                                    ],
                                ],
                                [
                                    'name' => 'sku_label',
                                    'title' => Yii::t('app.c2', 'Product/Sku'),
                                    'options' => [
                                        'id' => "name-{multiple_index_{$multipleItemsId}}",
                                    ],
                                ],
                                [
                                    'name' => 'measure_id',
                                    'title' => Yii::t('app.c2', 'Measure'),
                                    'type' => 'dropDownList',
                                    'enableError' => true,
                                    'items' => \common\models\c2\entity\MeasureModel::getHashMap('id', 'label'),
                                ],
                                [
                                    'name' => 'factory_price',
                                    'title' => Yii::t('app.c2', 'PrePrice'),
                                    'defaultValue' => '0.00',
                                    'enableError' => true,
                                    'options' => [
                                        'id' => "price-{multiple_index_{$multipleItemsId}}",
                                    ],
                                ],
                                // [
                                //     'name' => 'quantity',
                                //     // 'type' => kartik\widgets\TouchSpin::className(),
                                //     'title' => Yii::t('app.c2', 'Quantity'),
                                //     'defaultValue' => 1,
                                //     'options' => [
                                //         'type' => 'number',
                                //         'min' => 0,
                                //         'id' => "quantity-{multiple_index_{$multipleItemsId}}",
                                //     ]
                                // ],
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
                                [
                                    'name' => 'product_pack_id',
                                    'title' => Yii::t('app.c2', 'Packing'),
                                    'type' => 'dropDownList',
                                    'enableError' => true,
                                    'items' => $model->isNewRecord ? [] : function ($data) {
                                        if (is_object($data)) {
                                            return $data->saleProduct->getPackItemsOptions();
                                        }
                                        return [];
                                    },
                                    'options' => [
                                        'id' => "subcat-{multiple_index_{$multipleItemsId}}",
                                    ],
                                ],
                                // [
                                //     'name' => 'comment',
                                //     'type' => 'static',
                                //     'value' => function ($model) use ($multipleItemsId) {
                                //         return Html::button(Yii::t('app.c2', 'Calculate'), [
                                //             'class' => 'btn btn-success',
                                //             'onclick' => "(function(e) {
                                //                     var price = $('#price-{multiple_index_{$multipleItemsId}}').val();
                                //                     var num = $('#quantity-{multiple_index_{$multipleItemsId}}').val();
                                //                      $('#subtotal-{multiple_index_{$multipleItemsId}}').val(strip(num * price).toFixed(2));
                                //                 })();",
                                //             // 'id' => "calculate-{multiple_index_{$multipleItemsId}}",
                                //         ]);
                                //     },
                                //     'headerOptions' => [
                                //         // 'style' => 'width: 70px;',
                                //     ],
                                //     'options' => [
                                //
                                //     ]
                                // ],
                                [
                                    'name' => 'subtotal',
                                    'title' => Yii::t('app.c2', 'Subtotal'),
                                    'enableError' => true,
                                    'defaultValue' => '0.00',
                                    'options' => [
                                        'id' => "subtotal-{multiple_index_{$multipleItemsId}}",
                                    ],
                                ],
                                [
                                    'name' => 'memo',
                                    'title' => Yii::t('app.c2', 'Memo'),
                                    'enableError' => true,
                                ],
                            ]
                        ],
                    ],
                ]
            ]);


            echo Html::endTag('div');

            echo Form::widget([
                'model' => $model,
                'form' => $form,
                'columns' => 1,
                'attributes' => [
                    'memo' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\vova07\imperavi\Widget', 'options' => [
                        'settings' => [
                            'minHeight' => 80,
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

            echo Form::widget([
                'model' => $model,
                'form' => $form,
                'columns' => 2,
                'attributes' => [
                    //                'is_audited' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\checkbox\CheckboxX', 'options' => [
                    //                        'pluginOptions' => ['threeState' => false],
                    //                    ],],
                    //                'audited_by' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('audited_by')]],
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
            echo Html::a('<i class="fa fa-close"></i> ' . Yii::t('app.c2', 'Close'), ['index'], ['data-dismiss' => 'modal', 'class' => 'btn btn-default pull-right', 'title' => Yii::t('app.c2', 'Close'),]);
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

// $js .= "$(function () {
//   $('[data-toggle=\"tooltip\"]').tooltip()
// })";

$this->registerJs($js);
?>

<script>
    function strip(num, precision = 12) {
        return +parseFloat(num.toPrecision(precision));
    }
</script>
