<?php

use cza\base\models\statics\OperationEvent;
use yii\helpers\Html;
use kartik\widgets\ActiveForm;
use kartik\builder\Form;
use cza\base\widgets\ui\adminlte2\InfoBox;
use cza\base\models\statics\EntityModelStatus;

$regularLangName = \Yii::$app->czaHelper->getRegularLangName();
$messageName = $model->getMessageName();
?>

<?php
$form = ActiveForm::begin([
    'action' => ['edit-material', 'id' => $model->id],
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
                // 'eshop_id' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('eshop_id')]],
                'type' => [
                    'type' => Form::INPUT_DROPDOWN_LIST,
                    'items' => \common\models\c2\statics\ProductType::getHashMap('id', 'label'),
                    'options' => [
                        'readonly' => true
                    ]
                ],
                // 'seo_code' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('seo_code')]],
                'sku' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('sku')]],
                // 'serial_number' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('serial_number')]],
                // 'breadcrumb' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('breadcrumb')]],
                'name' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('name')]],
                'label' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('label')]],
                // 'meta_title' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('meta_title')]],
                // 'meta_keywords' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('meta_keywords')]],
                // 'meta_description' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\vova07\imperavi\Widget', 'options' => [
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
                // 'is_score_exchange' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\checkbox\CheckboxX', 'options' => [
                //     'pluginOptions' => ['threeState' => false],
                // ],],
                // 'score_exchange_method' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\checkbox\CheckboxX', 'options' => [
                //     'pluginOptions' => ['threeState' => false],
                // ],],
                // 'score' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('score')]],
                // 'gift_score' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('gift_score')]],
                // 'require_setup' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\checkbox\CheckboxX', 'options' => [
                //     'pluginOptions' => ['threeState' => false],
                // ],],
                // 'is_install' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\checkbox\CheckboxX', 'options' => [
                //     'pluginOptions' => ['threeState' => false],
                // ],],
                // 'install_price' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('install_price')]],
                // 'low_price' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('low_price')]],
                // 'sales_price' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('sales_price')]],
                // 'cost_price' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('cost_price')]],
                // 'market_price' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('market_price')]],
                // 'brand_id' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('brand_id')]],
                'supplier_id' => [
                    'type' => Form::INPUT_DROPDOWN_LIST,
                    'items' => \common\models\c2\entity\SupplierModel::getHashMap('id', 'label'),
                    'options' => ['placeholder' => $model->getAttributeLabel('supplier_id')]
                ],
                'value' => [
                    'type' => $model->type == \common\models\c2\statics\ProductType::TYPE_PRODUCT ? Form::INPUT_HIDDEN : Form::INPUT_TEXT,
                    'options' => [
                        'placeholder' => Yii::t('app.c2', 'Empty this value weather is product.')
                    ]
                ],
                // 'currency_id' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('currency_id')]],
                // 'measure_id' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('measure_id')]],
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
                // 'views_count' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('views_count')]],
                // 'comment_count' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('comment_count')]],
                // 'sold_count' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('sold_count')]],
                // 'virtual_sold_count' => ['type' => Form::INPUT_TEXT, 'options' => ['placeholder' => $model->getAttributeLabel('virtual_sold_count')]],
                // 'is_released' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\checkbox\CheckboxX', 'options' => [
                //     'pluginOptions' => ['threeState' => false],
                // ],],
                // 'released_at' => ['type' => Form::INPUT_WIDGET, 'widgetClass' => '\kartik\widgets\DateTimePicker', 'options' => [
                //     'options' => ['placeholder' => Yii::t('app.c2', 'Date Time...')], 'pluginOptions' => ['format' => 'yyyy-mm-dd hh:ii:ss', 'autoclose' => true],
                // ],],
                'status' => ['type' => Form::INPUT_DROPDOWN_LIST, 'items' => EntityModelStatus::getHashMap('id', 'label')],
                'description' => [
                    'type' => Form::INPUT_WIDGET,
                    'widgetClass' => '\vova07\imperavi\Widget', 'options' => [
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
                    ],
                ],
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
        echo Html::a('<i class="fa fa-window-close-o"></i> ' . Yii::t('app.c2', 'Close'), ['index'], ['data-pjax' => '0', 'data-dismiss' => 'modal', 'class' => 'btn btn-default pull-right', 'title' => Yii::t('app.c2', 'Go Back'),]);
        echo Html::endTag('div');
        ?>
    </div>
</div>
<?php ActiveForm::end(); ?>

