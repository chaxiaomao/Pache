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
    'action' => ['material-edit', 'id' => $model->id],
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
                'warehouse_id' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => \common\models\c2\entity\WarehouseModel::getHashMap('id', 'label'), 'options' => ['placeholder' => $model->getAttributeLabel('sku')]],
                // 'serial_number' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('serial_number')]],
                // 'breadcrumb' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('breadcrumb')]],
                'name' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('name')]],
                'label' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('label')]],
                'sales_price' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('sales_price')]],
                'supplier_id' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => \common\models\c2\entity\SupplierModel::getHashMap('id', 'name'), 'options' => ['placeholder' => $model->getAttributeLabel('currency_id')]],
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
                        'data' => $model->items,
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
                                'name' => 'code',
                                'title' => Yii::t('app.c2', 'Code'),
                                'enableError' => true,
                                'options' => [
                                    'class' => 'input-priority'
                                ]
                            ],
                            [
                                'name' => 'label',
                                'title' => Yii::t('app.c2', 'Label'),
                                'enableError' => true,
                                'options' => [
                                    'class' => 'input-priority'
                                ]
                            ],
                            [
                                'name' => 'value',
                                'title' => Yii::t('app.c2', 'Value'),
                                'enableError' => true,
                                'options' => [
                                    'class' => 'input-priority'
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
