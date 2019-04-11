<?php

use yii\helpers\Html;
use kartik\widgets\ActiveForm;
use kartik\builder\Form;
use cza\base\widgets\ui\adminlte2\InfoBox;
use cza\base\models\statics\EntityModelStatus;

$regularLangName = \Yii::$app->czaHelper->getRegularLangName();
// $messageName = $model->getMessageName();
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
    <?php //if (Yii::$app->session->hasFlash($messageName)): ?>
    <!--    --><?php //if (!$model->hasErrors()) {
    //         echo InfoBox::widget([
    //             'withWrapper' => false,
    //             'messages' => Yii::$app->session->getFlash($messageName),
    //         ]);
    //     } else {
    //         echo InfoBox::widget([
    //             'defaultMessageType' => InfoBox::TYPE_WARNING,
    //             'messages' => Yii::$app->session->getFlash($messageName),
    //         ]);
    //     }
    //     ?>
    <?php //endif; ?>

    <div class="well">
        <?php
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
                        'rowOptions' => function($model, $index, $context) {
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
                                'name' => 'is_selected',
                                'type' => 'dropDownList',
                                'title' => Yii::t('app.c2', 'Is Selected'),
                                'defaultValue' => 2,
                                'items' => \common\models\c2\statics\SeletedType::getHashMap('id', 'label'),
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
        ?>
    </div>
</div>
<?php ActiveForm::end(); ?>
