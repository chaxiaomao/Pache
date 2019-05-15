<?php

use cza\base\models\statics\OperationEvent;
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

<?php Pjax::begin(['id' => $model->getDetailPjaxName(), 'formSelector' => $model->getBaseFormName(true), 'enablePushState' => false, 'clientOptions' => [
    'skipOuterContainers' => true
]]) ?>

<?php
$form = ActiveForm::begin([
    'action' => ['edit', 'id' => $model->entityModel->id],
    'options' => [
        'id' => $model->getBaseFormName(),
        'data-pjax' => true,
        'class' => 'container-fluid',
        'style' => 'padding-top:20px'
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

        <?php

        echo InfoBox::widget([
            'withWrapper' => false,
            'defaultMessageType' => InfoBox::TYPE_WARNING,
            'messages' => [Yii::t('app.c2', 'Pls fix the note items if there have wrongs.')],
        ]);
        ?>

        <div class="well">
            <?php

            $multipleItemsId = $model->getPrefixName('items');
            echo Form::widget([
                'model' => $model,
                'form' => $form,
                'columns' => 1,
                'attributes' => [
                    'items' => [
                        'type' => Form::INPUT_WIDGET,
                        'label' => Yii::t('app.c2', 'Checking for delivery note.') . $model->entityModel->code,
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
                                    'name' => 'name',
                                    'title' => Yii::t('app.c2', 'Name'),
                                    'options' => [
                                        'id' => "name-{multiple_index_{$multipleItemsId}}",
                                        'readonly' => true,
                                        'value' => function ($model) {
                                            return $model->product->name;
                                        }
                                    ],
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
            echo Html::a('<i class="fa fa-window-close-o"></i> ' . Yii::t('app.c2', 'Close'), ['index'], ['data-pjax' => '0', 'data-dismiss' => 'modal', 'class' => 'btn btn-default pull-right', 'title' => Yii::t('app.c2', 'Go Back'),]);
            echo Html::endTag('div');
            ?>
        </div>
    </div>
<?php ActiveForm::end(); ?>

<?php Pjax::end() ?>

<?php
$js = "";
$js .= "jQuery('.btn.multiple-input-list__btn.js-input-remove').off('click').on('click', function(){
    var itemId = $(this).closest('tr').data('id');
    if(itemId){
       $.ajax({url:'" . Url::toRoute('delete-subitem') . "',data:{id:itemId}}).done(function(result){
            var lifetime = 6500;
                                if(result._meta.result == '" . cza\base\models\statics\OperationResult::SUCCESS . "'){
                                    jQuery('#{$model->getPrefixName('grid')}').trigger('" . OperationEvent::REFRESH . "');
                                }
                                else{
                                  lifetime = 16500;
                                }
                                jQuery.msgGrowl ({
                                        type: result._meta.type, 
                                        title: '" . Yii::t('cza', 'Tips') . "',
                                        text: result._meta.message,
                                        position: 'top-center',
                                        lifetime: lifetime,
                                });
       }).fail(function(result){alert(result);});
    }
});\n";

$this->registerJs($js);
?>