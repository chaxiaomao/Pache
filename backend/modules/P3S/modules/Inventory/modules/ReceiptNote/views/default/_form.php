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
                'label' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('label')]],
                'type' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => \common\models\c2\statics\InventoryReceiptType::getHashMap('id', 'label')],
                'warehouse_id' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => \common\models\c2\entity\WarehouseModel::getHashMap('id', 'label')],
                'supplier_id' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => \common\models\c2\entity\SupplierModel::getHashMap('id', 'label')],
                'arrival_number' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('arrival_number')]],
                'occurrence_date' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\widgets\DateTimePicker', 'options' => [
                    'options' => ['placeholder' => Yii::t('app.c2', 'Date Time...')], 'pluginOptions' => ['format' => 'yyyy-mm-dd hh:ii:ss', 'autoclose' => true],
                ],],
                'buyer_name' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('buyer_name')]],
                'dept_manager_name' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('dept_manager_name')]],
                'financial_name' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('financial_name')]],
                'receiver_name' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('receiver_name')]],
            ]
        ]);

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
                                'title' => Yii::t('app.c2', 'Product Num'),
                                'type' => \kartik\select2\Select2::className(),
                                'options' => [
                                    'data' => \common\models\c2\entity\AttributeModel::getHashMap('id', 'label', ['status' => EntityModelStatus::STATUS_ACTIVE]),
                                    'pluginOptions' => [
                                        'placeholder' => $model->getAttributeLabel('Select options ..')
                                    ],
                                    'pluginEvents' => [
                                        'change' => "function() {
                                            $.post('".Url::toRoute(['attributes'])."', {'depdrop_all_params[attribute_id]':$(this).val(),'depdrop_parents[]':$(this).val()}, function(data) {
                                                if(data.output !== undefined) {
                                                    $('select#subcat-{multiple_index_{$multipleItemsId}}').empty();
                                                    $.each(data.output, function(key, item){
                                                            $('select#subcat-{multiple_index_{$multipleItemsId}}').append('<option value=' + item.id + '>' + item.name + '</option>');
                                                        });
                                                }
                                            })
                                        }",
                                    ]
                                ],
                            ],
                            [
                                'name' => 'product_sku_id',
                                'type' => 'dropDownList',
                                'title' => Yii::t('app.c2', 'Material Num'),
                                'enableError' => true,
                                'items' => $model->isNewRecord ? [] : function($data) {
                                    if (is_object($data)) {
                                        return $data->attribute->getItemsHashMap();
                                    }
                                    return [];
                                },
                                'options' => [
                                    'id' => "subcat-{multiple_index_{$multipleItemsId}}",
                                ],
                            ],
                            [
                                'name' => 'measure_id',
                                'title' => Yii::t('app.c2', 'Measure'),
                                'type' => 'dropDownList',
                                // 'headerOptions' => ['style' => 'width: 70px',],
                                'enableError' => true,
                                'items' => \common\models\c2\entity\MeasureModel::getHashMap('id', 'label'),
                            ],
                            [
                                'name' => 'until_price',
                                'title' => Yii::t('app.c2', 'Until Price'),
                                'defaultValue' => 0,
                                'enableError' => true,
                                'options' => [
                                    'id' => "price-multiple_index_{$multipleItemsId}",
                                ],
                            ],
                            [
                                'name' => 'quantity',
                                'type' => kartik\widgets\TouchSpin::className(),
                                'title' => Yii::t('app.c2', 'Quantity'),
                                'defaultValue' => 1,
                                'options' => [
                                    'pluginOptions' => [
                                        'buttondown_txt' => '<i class="glyphicon glyphicon-minus-sign"></i>',
                                        'buttonup_txt' => '<i class="glyphicon glyphicon-plus-sign"></i>',
                                    ],
                                    'pluginEvents' => [
                                        "touchspin.on.startspin" => "function() {
                                             var price = $('#price-multiple_index_{$multipleItemsId}').val();
                                             $('#subtotal-multiple_index_{$multipleItemsId}').val(strip($(this).val() * price));
                                         }",
                                        'change' => "function() {
                                            var price = $('#price-multiple_index_{$multipleItemsId}').val();
                                             $('#subtotal-multiple_index_{$multipleItemsId}').val(strip($(this).val() * price));
                                        }"
                                    ]
                                ]
                            ],
                            // [
                            //     'name' => 'purcharse_order_code',
                            //     'title' => Yii::t('app.c2', 'Purcharse Order Code'),
                            //     'enableError' => true,
                            // ],
                            [
                                'name' => 'subtotal',
                                'title' => Yii::t('app.c2', 'Subtotal'),
                                'enableError' => true,
                                'options' => [
                                    'id' => "subtotal-multiple_index_{$multipleItemsId}",
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

$js = "function strip(num, precision = 12) {
  return +parseFloat(num.toPrecision(precision));
}";

$this->registerJs($js);
?>
