<?php

use yii\helpers\Html;
use kartik\widgets\ActiveForm;
use kartik\builder\Form;
use cza\base\widgets\ui\adminlte2\InfoBox;
use cza\base\models\statics\EntityModelStatus;
use yii\helpers\Url;
use yii\widgets\Pjax;

$regularLangName = \Yii::$app->czaHelper->getRegularLangName();
$messageName = $model->getMessageName();

?>
<?php Pjax::begin(['id' => $model->getPjaxName(), 'formSelector' => $model->getBaseFormName(true), 'enablePushState' => false]) ?>
<?php
$form = ActiveForm::begin([
    'action' => ['product-pack', 'id' => $model->entityModel->id],
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

        $multipleItemsId = $model->getPrefixName('items');
        echo Form::widget([
            'model' => $model,
            'form' => $form,
            'columns' => 1,
            'id' => 'multiple-input2',
            'attributes' => [
                'items' => [
                    'label' => Yii::t('app.c2', 'Packing method'),
                    'type' => Form::INPUT_WIDGET,
                    'widgetClass' => unclead\multipleinput\MultipleInput::className(),
                    'options' => [
                        'data' => $model->entityModel->packItems,
                        //                        'max' => 4,
                        'allowEmptyList' => true,
                        'rowOptions' => function ($model, $index, $context) {
                            return ['data-id' => $model['id']];
                        },
                        'columns' => [
                            [
                                'name' => 'id',
                                'type' => 'hiddenInput',
                            ],
                            [
                                'name' => 'label',
                                'enableError' => true,
                                'title' => Yii::t('app.c2', 'Label'),
                                'options' => [

                                ]
                            ],
                            [
                                'name' => 'pre_num',
                                'title' => Yii::t('app.c2', 'Quantity'),
                                'defaultValue' => 1,
                                'options' => [
                                    'type' => 'number'
                                ]
                            ],
                            [
                                'name' => 'inpack_id',
                                'title' => Yii::t('app.c2', 'InPack size'),
                                'type' => \kartik\select2\Select2::className(),
                                'enableError' => true,
                                'options' => [
                                    'data' => ['' => Yii::t("app.c2", "Select options ..")] + \common\models\c2\entity\ProductMaterialItemModel::getMaterialLV(),
                                    // 'pluginOptions' => [
                                    //     'placeholder' => $model->getAttributeLabel('Select options ..')
                                    // ],
                                    'pluginEvents' => [
                                        'change' => new \yii\web\JsExpression("function() {
                                                $.post('" . Url::toRoute(['materials']) . "', {'depdrop_all_params[product_id]':$(this).val(),'depdrop_parents[]':$(this).val()}, function(data) {
                                                    console.log(data);
                                                    if(data.output !== undefined) {
                                                        $('select#subcat-{multiple_index_{$multipleItemsId}}').empty();
                                                        $.each(data.output, function(key, item){
                                                                $('select#subcat-{multiple_index_{$multipleItemsId}}').append('<option value=' + item.id + '>' + item.label + '</option>');
                                                            });
                                                    }
                                                })
                                            }"),
                                    ],
                                ]
                            ],
                            [
                                'name' => 'inpack_num',
                                'title' => Yii::t('app.c2', 'Quantity'),
                                'defaultValue' => 1,
                                'options' => [
                                    'type' => 'number',
                                    'min' => 1,
                                ]
                            ],
                            [
                                'name' => 'outpack_id',
                                'title' => Yii::t('app.c2', 'OutPack size'),
                                'type' => \kartik\select2\Select2::className(),
                                'enableError' => true,
                                'options' => [
                                    'data' => ['' => Yii::t("app.c2", "Select options ..")] + \common\models\c2\entity\ProductMaterialItemModel::getMaterialLV(),
                                    // 'pluginOptions' => [
                                    //     'placeholder' => $model->getAttributeLabel('Select options ..')
                                    // ],
                                    'pluginEvents' => [
                                        'change' => new \yii\web\JsExpression("function() {
                                                $.post('" . Url::toRoute(['materials']) . "', {'depdrop_all_params[product_id]':$(this).val(),'depdrop_parents[]':$(this).val()}, function(data) {
                                                    console.log(data);
                                                    if(data.output !== undefined) {
                                                        $('select#subcat-{multiple_index_{$multipleItemsId}}').empty();
                                                        $.each(data.output, function(key, item){
                                                                $('select#subcat-{multiple_index_{$multipleItemsId}}').append('<option value=' + item.id + '>' + item.label + '</option>');
                                                            });
                                                    }
                                                })
                                            }"),
                                    ],
                                ]
                            ],
                            [
                                'name' => 'outpack_num',
                                'title' => Yii::t('app.c2', 'Quantity'),
                                'defaultValue' => 1,
                                'options' => [
                                    'type' => 'number',
                                    'min' => 1,
                                ]
                            ],
                            [
                                'name' => 'gross_weight',
                                'title' => Yii::t('app.c2', 'Gross weight'),
                                'options' => [

                                ]
                            ],
                            [
                                'name' => 'net_weight',
                                'title' => Yii::t('app.c2', 'Net weight'),
                                'options' => [

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
<?php Pjax::end(); ?>
<?php
$js = "";

$js .= "jQuery('#multiple-input2 .btn.multiple-input-list__btn.js-input-remove').off('click').on('click', function(){
    var itemId = $(this).closest('tr').data('id');
    if(itemId){
       $.ajax({url:'" . Url::toRoute('delete-pack-subitem') . "',data:{id:itemId}}).done(function(result){;}).fail(function(result){alert(result);});
    }
});";
$this->registerJs($js);


?>
