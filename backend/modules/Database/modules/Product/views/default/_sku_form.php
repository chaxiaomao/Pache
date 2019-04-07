<?php

use backend\models\c2\search\ProductSkuSearch;
use common\models\c2\statics\EntityReleaseStatus;
use yii\helpers\Html;
use kartik\widgets\ActiveForm;
use kartik\builder\Form;
use cza\base\widgets\ui\adminlte2\InfoBox;
use yii\widgets\Pjax;
use yii\helpers\Url;
use cza\base\widgets\ui\common\grid\GridView;
use yii\helpers\ArrayHelper;
use yii\bootstrap\Modal;
use cza\base\models\statics\OperationEvent;

$messageName = $model->getMessageName();
$searchModel = new ProductSkuSearch();
$searchModel->product_id = $model->entityModel->id;
$params = ArrayHelper::merge(['product_id' => $model->entityModel->id], Yii::$app->request->queryParams);
$dataProvider = $searchModel->search($params);
$attributes = $model->getEavFormAttributes();

Modal::begin([
    'id' => 'img-modal',]);

$js = <<<JS
$(document).on('click', '.data-img', function(){
    content = $(this).attr('data-qrcode');
    console.log(content);
        
    $($(this).attr('data-target')).modal("show")
        .find(".modal-body")
        .html('<img class="qrcode">').css("text-align", "center");
    $(".qrcode").attr('src', content);
    return false;
});
JS;
$this->registerJs($js);

Modal::end();

$requestUpdateUrl = Url::toRoute('is-exchange');
$js = "
    $(document).on('click', '.is-exchange', function(){
        var keys = $('#eav-sku-form-grid').yiiGridView('getSelectedRows');
        var lib = window['krajeeDialog'];
        var operation = $(this).attr('data-operation');
        lib.confirm('" . Yii::t('app.c2', 'Warning : Please Confirm Operation!') . "', function (result) {
                    if (!result) {
                        return;
                    }
                    if(keys == 0){
                      lib.alert('请选择至少一项！');
                      return;
                    }
                    $.ajax({
                            url: '{$requestUpdateUrl}',
                            data: {id: keys, operation: operation},
                            success: function(data){
                                $('#eav-sku-form-grid').trigger('refreshEvent.inf');
                            }
                    });
        });
    });
";
$this->registerJs($js);


//$js = "function modal(data){ console.log(data);}";
//$this->registerJs($js);
?>

<?php Pjax::begin(['id' => $model->getPjaxName(), 'formSelector' => $model->getBaseFormName(true), 'enablePushState' => false]) ?>

<?php
$form = ActiveForm::begin([
    'action' => ['generate-skus'],
    'type' => ActiveForm::TYPE_HORIZONTAL,
    'options' => [
        'id' => $model->getBaseFormName(),
        'data-pjax' => 0,
    ],
    'fieldConfig' => [
        //                'showLabels' => true,
        'showHints' => false,
        //                'template' => "{label}\n{hint}\n{input}\n{error}",
        'horizontalCssClasses' => [
            'label' => 'col-sm-2',
            'offset' => 'col-sm-offset-2',
            'wrapper' => 'col-sm-4',
        ],
    ],
]);
?>

<div class="<?= $model->getPrefixName('form') ?>">
    <?php if (Yii::$app->session->hasFlash($messageName)): ?>
        <?php
        if (!$model->hasErrors()) {
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
        if (count($attributes) > 0) {
            echo Form::widget([
                'model' => $model,
                'form' => $form,
                'columns' => 4,
                'attributes' => $attributes,
            ]);
            echo Html::hiddenInput('entity_id', $model->entityModel->id);

            echo Html::beginTag('div', ['class' => 'box-footer']);
            echo Html::submitButton('<i class="fa fa-save"></i> ' . Yii::t('app.c2', 'Generate'), ['type' => 'button', 'class' => 'btn btn-primary pull-right']);
            echo Html::a('<i class="fa fa-arrow-left"></i> ' . Yii::t('app.c2', 'Go Back'), ['index'], ['class' => 'btn btn-default pull-right', 'title' => Yii::t('app.c2', 'Go Back'),]);
            echo Html::endTag('div');
        } else {
            echo Html::beginTag('div', ['class' => 'box-footer']);
            echo Yii::t('app.c2', 'There are not available attributes for now!');
            echo Html::a('<i class="fa fa-arrow-left"></i> ' . Yii::t('app.c2', 'Go Back'), ['index'], ['class' => 'btn btn-default pull-right', 'title' => Yii::t('app.c2', 'Go Back'),]);
            echo Html::endTag('div');
        }
        ?>
    </div>
</div>
<?php ActiveForm::end(); ?>

<div class="well">
    <?php
    echo GridView::widget([
        'id' => $model->getPrefixName('grid'),
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'pjax' => true,
        //        'pjaxSettings' => [
        //            'neverTimeout' => true,
        //            'options' => [
        //                'id'=>uniqid(),
        //                'enablePushState' => false,
        //                'clientOptions' => [
        //                    'push' => false,
        //                    'skipOuterContainers' => true,
        //                   // 'replaceRedirect' => false
        //                ]
        //            ]
        //        ],
        'hover' => true,
        'showPageSummary' => true,
        'panel' => ['type' => GridView::TYPE_PRIMARY, 'heading' => Yii::t('app.c2', 'Items'),],
        'toolbar' => [
            //            [
            //                'content' =>
            //                '<div class="btn-group">
            //                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
            //                        ' . Yii::t('app.c2', 'Is Score Exchange') . '<span class="caret"></span>
            //                    </button>
            //                    <ul class="dropdown-menu" role="menu">
            //                      <li><a data-operation=' . \common\models\c2\statics\IsExchangeState::TYPE_NO . ' class="is-exchange">' . Yii::t('app.c2', 'Remove Exchange') . '</a></li>
            //                      <li><a data-operation=' . \common\models\c2\statics\IsExchangeState::TYPE_YES . ' class="is-exchange">' . Yii::t('app.c2', 'Add To Exchange') . '</a></li>
            //                    </ul>
            //                  </div>'
            //            ],
            [
                'content' =>
                    Html::a('<i class="glyphicon glyphicon-repeat"></i>' . Yii::t('app.c2', 'Refresh'), [Url::current()], [
                        'class' => 'btn btn-default',
                        'title' => Yii::t('app.c2', 'Refresh'),
                    ]) . ' ' .
                    Html::button('<i class="glyphicon glyphicon-remove"></i>', [
                        'class' => 'btn btn-danger',
                        'title' => Yii::t('app.c2', 'Delete Selected Items'),
                        'onClick' => "jQuery(this).trigger('" . OperationEvent::DELETE_BY_IDS . "', {url:'" . Url::toRoute('delete-skus') . "'});",
                    ]),
            ],
            '{export}',
            '{toggleData}',
        ],
        'exportConfig' => [],
        'columns' => [
            ['class' => 'kartik\grid\CheckboxColumn'],
            ['class' => 'kartik\grid\SerialColumn'],
            //            [
            //                'class' => 'kartik\grid\ExpandRowColumn',
            //                'expandIcon' => '<span class="fa fa-plus-square-o"></span>',
            //                'collapseIcon' => '<span class="fa fa-minus-square-o"></span>',
            //                'detailUrl' => Url::toRoute('detail'),
            //                'value' => function ($model, $key, $index, $column) {
            //                    return GridView::ROW_COLLAPSED;
            //                },
            //            ],
            //            'id',
            //            'product_id',
            //            'attr_params:ntext',
            //            'hash',
            //            'sku',
            //            'name',
            //
            [
                'class' => 'kartik\grid\EditableColumn',
                'attribute' => 'sku',
                'editableOptions' => [
                    'formOptions' => ['action' => Url::toRoute('sku-edit-column')],
                    'inputType' => \kartik\editable\Editable::INPUT_TEXT,
                    'pjaxContainerId' => $model->getPjaxName(),
                ],
                'vAlign' => 'middle',
                // 'width' => '200px',
                'pageSummary' => false,
            ],
            // [
            //     'class' => 'kartik\grid\EditableColumn',
            //     'attribute' => 'logo',
            //     'refreshGrid' => false,
            //     'editableOptions' => [
            //         'formOptions' => ['action' => Url::toRoute('sku-logo-upload'), 'options' => ['enctype' => 'multipart/form-data']],
            //         'inputType' => \kartik\editable\Editable::INPUT_FILEINPUT,
            //         'asPopover' => false,
            //         'options' => [
            //             'pluginOptions' => [
            //                 'data-pjax' => false,
            //                 'showPreview' => true,
            //                 'showCaption' => false,
            //                 'showRemove' => false,
            //                 'showUpload' => false,
            //                 'browseClass' => 'btn btn-primary btn-block',
            //                 'browseIcon' => '<i class="glyphicon glyphicon-camera"></i> ',
            //                 'browseLabel' => Yii::t('app.c2', "Select Photo"),
            //             ]
            //         ],
            //         'pjaxContainerId' => $model->getPjaxName(),
            //     ],
            //     'format' => 'raw',
            //     'value' => function ($model) {
            //         if ($model->getIconUrl('logo')) {
            //             return '<a class="data-img" data-toggle="modal" data-target="#img-modal" data-id="img-modal" data-qrcode="' . $model->getOriginalUrl('logo') . '">' .
            //                 Html::img($model->getIconUrl('logo')) . '</a>';
            //         } else {
            //             return Yii::t('app.c2', "No setting");
            //         }
            //     },
            //     'vAlign' => 'middle',
            //     'width' => '200px',
            //     'pageSummary' => false,
            // ],
            // [
            //     'attribute' => Yii::t('app.c2', 'Sku Icon'),
            //     'format' => 'raw',
            //     'value' => function ($model) {
            //         //                    Yii::info($model);
            //         //                    Yii::info($model->getIconUrl('addto_cart_sku'));
            //         return '<a class="data-img" data-toggle="modal" data-target="#img-modal" data-id="img-modal" data-qrcode="' . $model->getOriginalUrl('addto_cart_sku') . '">' .
            //             Html::img($model->getIconUrl('addto_cart_sku')) . '</a>';
            //     }
            // ],
            [
                'class' => 'kartik\grid\EditableColumn',
                'attribute' => 'label',
                'editableOptions' => [
                    'formOptions' => ['action' => Url::toRoute('sku-edit-column')],
                    'inputType' => \kartik\editable\Editable::INPUT_TEXT,
                    'pjaxContainerId' => $model->getPjaxName(),
                ],
                'vAlign' => 'middle',
                // 'width' => '200px',
                'pageSummary' => false,
            ],
            // 'code',
            [
                'class' => 'kartik\grid\EditableColumn',
                'attribute' => 'sales_price',
                'editableOptions' => [
                    'formOptions' => ['action' => Url::toRoute('sku-edit-column')],
                    'inputType' => \kartik\editable\Editable::INPUT_TEXT,
                    //                    'inputType' => \kartik\editable\Editable::INPUT_MONEY,
                    'options' => ['pluginOptions' => ['min' => 0, 'max' => 1000000.0]],
                    'pjaxContainerId' => $model->getPjaxName(),
                ],
                'hAlign' => 'right',
                'vAlign' => 'middle',
                // 'width' => '100px',
                'format' => ['decimal', 2],
                'pageSummary' => true,
            ],
            // [
            //     'class' => 'kartik\grid\EditableColumn',
            //     'attribute' => 'cost_price',
            //     'editableOptions' => [
            //         'formOptions' => ['action' => Url::toRoute('sku-edit-column')],
            //         'inputType' => \kartik\editable\Editable::INPUT_TEXT,
            //         //                    'inputType' => \kartik\editable\Editable::INPUT_MONEY,
            //         'options' => ['pluginOptions' => ['min' => 0, 'max' => 1000000.0]],
            //         'pjaxContainerId' => $model->getPjaxName(),
            //     ],
            //     'hAlign' => 'right',
            //     'vAlign' => 'middle',
            //     'width' => '100px',
            //     'format' => ['decimal', 2],
            //     'pageSummary' => true,
            // ],
            // [
            //     'class' => 'kartik\grid\EditableColumn',
            //     'attribute' => 'market_price',
            //     'editableOptions' => [
            //         'formOptions' => ['action' => Url::toRoute('sku-edit-column')],
            //         'inputType' => \kartik\editable\Editable::INPUT_TEXT,
            //         //                    'inputType' => \kartik\editable\Editable::INPUT_MONEY,
            //         'options' => ['pluginOptions' => ['min' => 0, 'max' => 1000000.0]],
            //         'pjaxContainerId' => $model->getPjaxName(),
            //     ],
            //     'hAlign' => 'right',
            //     'vAlign' => 'middle',
            //     'width' => '100px',
            //     'format' => ['decimal', 2],
            //     'pageSummary' => true,
            // ],
            [
                'class' => 'kartik\grid\EditableColumn',
                'attribute' => 'stock',
                'editableOptions' => [
                    'formOptions' => ['action' => Url::toRoute('sku-edit-column')],
                    'inputType' => \kartik\editable\Editable::INPUT_TEXT,
                    'options' => ['pluginOptions' => ['min' => 0, 'max' => 500000]],
                    'pjaxContainerId' => $model->getPjaxName(),
                ],
                'hAlign' => 'right',
                'vAlign' => 'middle',
                // 'width' => '100px',
                'format' => ['integer'],
                'pageSummary' => true,
            ],
            // [
            //     'class' => 'kartik\grid\EditableColumn',
            //     'attribute' => 'install_price',
            //     'value' => function ($model) {
            //         return $model->getInstallPrice();
            //     },
            //     'editableOptions' => [
            //         'formOptions' => ['action' => Url::toRoute('sku-edit-column')],
            //         'inputType' => \kartik\editable\Editable::INPUT_TEXT,
            //         'options' => ['pluginOptions' => ['min' => 0, 'max' => 500000]],
            //         'pjaxContainerId' => $model->getPjaxName(),
            //     ],
            //     'refreshGrid' => false,
            //     'hAlign' => 'right',
            //     'vAlign' => 'middle',
            //     'width' => '100px',
            //     'format' => ['decimal', 2],
            //     'pageSummary' => true,
            // ],
            //            'is_released',
            // 'status',
            // 'position',
            //            'created_at',
            // 'updated_at',
            [
                'attribute' => 'is_released',
                'class' => '\kartik\grid\EditableColumn',
                'editableOptions' => [
                    'inputType' => \kartik\editable\Editable::INPUT_DROPDOWN_LIST,
                    'formOptions' => ['action' => Url::toRoute('sku-edit-column')],
                    'data' => EntityReleaseStatus::getHashMap('id', 'label'),
                    'displayValueConfig' => EntityReleaseStatus::getHashMap('id', 'label'),
                    'pjaxContainerId' => $model->getPjaxName(),
                ],
                'filter' => EntityReleaseStatus::getHashMap('id', 'label'),
                'value' => function ($model) {
                    return $model->getStatusLabel();
                }
            ],
            //            [
            //                'attribute' => 'is_score_exchange',
            //                'value' => function($model) {
            //                    return $model->is_score_exchange == 1 ? "是" : "否";
            //                }
            //            ],
            // [
            //     'class' => 'kartik\grid\EditableColumn',
            //     'attribute' => 'score',
            //     'editableOptions' => [
            //         'formOptions' => ['action' => Url::toRoute('sku-edit-column')],
            //         'inputType' => \kartik\editable\Editable::INPUT_TEXT,
            //         //                    'inputType' => \kartik\editable\Editable::INPUT_MONEY,
            //         'options' => ['pluginOptions' => ['min' => 0, 'max' => 1000000.0]],
            //         'pjaxContainerId' => $model->getPjaxName(),
            //     ],
            //     'hAlign' => 'right',
            //     'vAlign' => 'middle',
            //     'width' => '100px',
            //     'pageSummary' => true,
            // ],
            // [
            //     'class' => 'kartik\grid\EditableColumn',
            //     'attribute' => 'gift_score',
            //     'editableOptions' => [
            //         'formOptions' => ['action' => Url::toRoute('sku-edit-column')],
            //         'inputType' => \kartik\editable\Editable::INPUT_TEXT,
            //         //                    'inputType' => \kartik\editable\Editable::INPUT_MONEY,
            //         'options' => ['pluginOptions' => ['min' => 0, 'max' => 1000000.0]],
            //         'pjaxContainerId' => $model->getPjaxName(),
            //     ],
            //     'hAlign' => 'right',
            //     'vAlign' => 'middle',
            //     'width' => '100px',
            //     'pageSummary' => true,
            // ],
            [
                'class' => '\common\widgets\grid\ActionColumn',
                'template' => '{delete}',
                'urlCreator' => function ($action, $model, $key, $index) {
                    if ($action === 'delete') {
                        return Url::toRoute(['delete-sku', 'id' => $model->id]);
                    }
                },
            ],
        ],
    ]);


    //    echo Html::beginTag('div', ['class' => 'box-footer']);
    //    echo Html::dropDownList('exchange', common\models\c2\statics\IsExchangeState::TYPE_EMPTY, common\models\c2\statics\IsExchangeState::getHashMap('id', 'label'), ['class' => 'is-exchange pull-right']);
    //    echo Html::endTag('div');
    ?>

</div>
<?php Pjax::end(); ?>
