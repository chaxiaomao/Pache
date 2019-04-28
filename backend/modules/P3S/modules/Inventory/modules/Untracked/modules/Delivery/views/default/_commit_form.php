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
use yii\widgets\Pjax;

$regularLangName = \Yii::$app->czaHelper->getRegularLangName();
$messageName = $model->getMessageName();

$css = ".form-control-static{padding:0;min-height:0;}";
$this->registerCss($css);
?>
<div class="modal-header">
    <button type="button" class="fa fa-close close" data-dismiss="modal" aria-hidden="true"></button>
    <button type="button" class="fa fa-window-maximize close"></button>
    <i class="fa fa-th"></i> <h2><?= Yii::t('app.c2', 'Commit note') ?> : <?= $model->code ?></h2>
</div>

<div class="modal-body">
    <?php Pjax::begin(['id' => 'inventory-receipt-note-pjax', 'enablePushState' => false, 'clientOptions' => [
        'skipOuterContainers' => true
    ]]) ?>

    <?php
    $form = ActiveForm::begin([
        'action' => ['check', 'id' => $model->id],
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
                                                    $('#subcat-{multiple_index_{$multipleItemsId}}').val(data._data);
                                                    // if(data.output !== undefined) {
                                                    //     $('select#subcat-{multiple_index_{$multipleItemsId}}').empty();
                                                    //     $.each(data.output, function(key, item){
                                                    //             $('select#subcat-{multiple_index_{$multipleItemsId}}').append('<option value=' + item.id + '>' + item.name + '</option>');
                                                    //         });
                                                    // }
                                                })
                                            }",
                                        ],
                                    ],
                                ],
                                [
                                    'name' => 'material_ids',
                                    'title' => Yii::t('app.c2', 'Material'),
                                    'type' => \kartik\select2\Select2::className(),
                                    'options' => [
                                        'id' => "subcat-{multiple_index_{$multipleItemsId}}",
                                        'data' => $model->isNewRecord ? [] : \common\models\c2\entity\ProductMaterialRsModel::getProductMaterialHashMap('material_item_id', 'num'),
                                        'pluginOptions' => [
                                            'multiple' => true,
                                            'placeholder' => $model->getAttributeLabel('Select options ..'),
                                        ],
                                    ],
                                ],
                                [
                                    'name' => 'sku_label',
                                    'title' => Yii::t('app.c2', 'Product/Sku'),
                                    'options' => [
                                        'id' => "subcat-{multiple_index_{$multipleItemsId}}",
                                    ],
                                ],
                                // [
                                //     'name' => 'measure_id',
                                //     'title' => Yii::t('app.c2', 'Measure'),
                                //     'type' => 'dropDownList',
                                //     'headerOptions' => ['style' => 'width: 70px',],
                                //     'enableError' => true,
                                //     'items' => \common\models\c2\entity\MeasureModel::getHashMap('id', 'label'),
                                // ],
                                [
                                    'name' => 'product_pack_id',
                                    'title' => Yii::t('app.c2', 'Packing'),
                                    'type' => 'dropDownList',
                                    'enableError' => true,
                                    'items' => \common\models\c2\entity\ProductPackModel::getHashMap('id', 'label'),
                                ],
                                [
                                    'name' => 'pieces',
                                    // 'type' => kartik\widgets\TouchSpin::className(),
                                    'title' => Yii::t('app.c2', 'Pieces'),
                                    'defaultValue' => 1,
                                    'options' => [
                                        'type' => 'number',
                                        'min' => 1,
                                    ]
                                ],
                                [
                                    'name' => 'quantity',
                                    // 'type' => kartik\widgets\TouchSpin::className(),
                                    'title' => Yii::t('app.c2', 'Quantity'),
                                    'defaultValue' => 0,
                                    'options' => [
                                        'type' => 'number',
                                        'min' => 0,
                                        'disabled' => true,
                                        'id' => "quantity-{multiple_index_{$multipleItemsId}}",
                                    ]
                                ],
                                [
                                    'name' => 'actual_quantity',
                                    // 'type' => kartik\widgets\TouchSpin::className(),
                                    'title' => Yii::t('app.c2', 'Actual quantity'),
                                    'defaultValue' => 0,
                                    'options' => [
                                        'type' => 'number',
                                        'min' => 0,
                                        'id' => "actual_quantity-{multiple_index_{$multipleItemsId}}",
                                        'oninput' => new JsExpression("
                                            var num1 = $('#quantity-{multiple_index_{$multipleItemsId}}').val();
                                            var num2 = $('#actual_quantity-{multiple_index_{$multipleItemsId}}').val();
                                            $('#stock_quantity-{multiple_index_{$multipleItemsId}}').val(num1 - num2)
                                        ")
                                    ]
                                ],
                                [
                                    'name' => 'stock_quantity',
                                    // 'type' => kartik\widgets\TouchSpin::className(),
                                    'title' => Yii::t('app.c2', 'Stock quantity'),
                                    'defaultValue' => 0,
                                    'options' => [
                                        'type' => 'number',
                                        'min' => 0,
                                        'id' => "stock_quantity-{multiple_index_{$multipleItemsId}}",
                                        'oninput' => new JsExpression("
                                            var num1 = $('#quantity-{multiple_index_{$multipleItemsId}}').val();
                                            var num2 = $('#stock_quantity-{multiple_index_{$multipleItemsId}}').val();
                                            $('#actual_quantity-{multiple_index_{$multipleItemsId}}').val(num1 - num2)
                                        ")
                                    ]
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

            echo Html::beginTag('div', ['class' => 'box-footer']);
            echo Html::submitButton('<i class="fa fa-save"></i> ' . Yii::t('app.c2', 'Save'), ['type' => 'button', 'class' => 'btn btn-primary pull-right']);
            echo Html::a('<i class="fa fa-close"></i> ' . Yii::t('app.c2', 'Close'), ['index'], ['data-dismiss' => 'modal', 'class' => 'btn btn-default pull-right', 'title' => Yii::t('app.c2', 'Close'),]);
            echo Html::endTag('div');
            ?>
        </div>
    </div>
    <?php ActiveForm::end(); ?>

    <?php Pjax::end() ?>
</div>
<?php
$js = "";
$js .= "jQuery('.btn.multiple-input-list__btn.js-input-remove').off('click').on('click', function(){
    var itemId = $(this).closest('tr').data('id');
    if(itemId){
       $.ajax({url:'" . Url::toRoute('delete-subitem') . "',data:{id:itemId}}).done(function(result){;}).fail(function(result){alert(result);});
    }
});\n";

$js .= "function strip(num, precision = 12) {
  return +parseFloat(num.toPrecision(precision));
}";

$js .= "$(function () {
  $('[data-toggle=\"tooltip\"]').tooltip()
})";

$this->registerJs($js);
?>


