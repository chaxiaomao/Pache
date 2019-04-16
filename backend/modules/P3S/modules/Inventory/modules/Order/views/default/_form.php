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
                'user_id' => [
                    'widgetClass' => \kartik\select2\Select2::className(),
                    'type' => Form::INPUT_WIDGET,
                    'options' => [
                        'data' => \common\models\c2\entity\FeUserModel::getHashMap('id', 'username', ['type' => \common\models\c2\statics\UserType::TYPE_BUSINESS]),
                    ]
                ],
                'order_no' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('order_no')]],
                'production_date' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\widgets\DateTimePicker', 'options' => [
                    'options' => ['placeholder' => Yii::t('app.c2', 'Date Time...')], 'pluginOptions' => ['format' => 'yyyy-mm-dd hh:ii:ss', 'autoclose' => true],
                ],],
                'delivery_date' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\widgets\DateTimePicker', 'options' => [
                    'options' => ['placeholder' => Yii::t('app.c2', 'Date Time...')], 'pluginOptions' => ['format' => 'yyyy-mm-dd hh:ii:ss', 'autoclose' => true],
                ],],
                'status' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => EntityModelStatus::getHashMap('id', 'label')],
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
                        // 'max' => 4,
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
                                'title' => Yii::t('app.c2', 'Product Code'),
                                'type' => \kartik\select2\Select2::className(),
                                'options' => [
                                    'data' => \common\models\c2\entity\ProductModel::getHashMap('id', 'sku', ['status' => EntityModelStatus::STATUS_ACTIVE, 'type' => \common\models\c2\statics\ProductType::TYPE_PRODUCT]),
                                    'pluginOptions' => [
                                        'placeholder' => $model->getAttributeLabel('Select options ..')
                                    ],
                                    'pluginEvents' => [
                                        'change' => "function() {
                                            $.post('" . Url::toRoute(['product-materials']) . "', {'depdrop_all_params[product_id]':$(this).val(),'depdrop_parents[]':$(this).val()}, function(data) {
                                                if(data.output !== undefined) {
                                                    // $('select#subcat-{multiple_index_{$multipleItemsId}}').empty();
                                                    $.each(data.output, function(key, item){
                                                            $('#subcat-{multiple_index_{$multipleItemsId}}').append('<li class=" . 'list-group-item' . ">' + item.label + ':' + item.value + '</li>');
                                                        });
                                                }
                                            })
                                        }",
                                    ]
                                ],
                            ],
                            [
                                'name' => 'product_material',
                                'type' => 'static',
                                'title' => Yii::t('app.c2', 'Material'),
                                'enableError' => true,
                                'value' => $model->isNewRecord ? function() use($multipleItemsId) {return '<ul id="'."subcat-{multiple_index_{$multipleItemsId}}".'"class="list-group">';} :
                                    function ($data) use ($multipleItemsId, $model) {
                                        if (is_object($data)) {
                                            return $this->render('_item', [
                                                'data' => $data,
                                                'model' => $model,
                                                'multipleItemsId' => "subcat-{multiple_index_{$multipleItemsId}}",
                                            ]);
                                        }
                                    },
                                // 'items' => $model->isNewRecord ? [] : function ($data) {
                                //     if (is_object($data)) {
                                //         // return $data->ownerAttribute->getItemsHashMap();
                                //         return $data->product->getProductSkuOptionsList();
                                //     }
                                //     return [];
                                // },
                                'options' => [
                                ],
                            ],
                            [
                                'name' => 'num',
                                'type' => kartik\widgets\TouchSpin::className(),
                                'title' => Yii::t('app.c2', 'Quantity'),
                                'defaultValue' => 1,
                                'options' => [
                                    'pluginOptions' => [
                                        'buttondown_txt' => '<i class="glyphicon glyphicon-minus-sign"></i>',
                                        'buttonup_txt' => '<i class="glyphicon glyphicon-plus-sign"></i>',
                                    ],
                                ]
                            ],
                            [
                                'name' => 'pieces',
                                'type' => kartik\widgets\TouchSpin::className(),
                                'title' => Yii::t('app.c2', 'Pieces'),
                                'defaultValue' => 1,
                                'options' => [
                                    'pluginOptions' => [
                                        'buttondown_txt' => '<i class="glyphicon glyphicon-minus-sign"></i>',
                                        'buttonup_txt' => '<i class="glyphicon glyphicon-plus-sign"></i>',
                                    ],
                                ]
                            ],
                            [
                                'name' => 'packing',
                                'title' => Yii::t('app.c2', 'Packing'),
                                'enableError' => true,
                                'options' => [
                                ],
                            ],
                            [
                                'name' => 'size',
                                'title' => Yii::t('app.c2', 'Size'),
                                'enableError' => true,
                                'options' => [
                                ],
                            ],
                            [
                                'name' => 'gross_weight',
                                'title' => Yii::t('app.c2', 'Gross weight'),
                                'enableError' => true,
                                'options' => [
                                ],
                            ],
                            [
                                'name' => 'net_weight',
                                'title' => Yii::t('app.c2', 'Net weight'),
                                'enableError' => true,
                                'options' => [
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

$this->registerJs($js);
?>