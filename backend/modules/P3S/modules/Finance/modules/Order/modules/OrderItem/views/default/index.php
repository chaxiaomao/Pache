<?php

use cza\base\widgets\ui\common\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;
use cza\base\models\statics\EntityModelStatus;
use cza\base\models\statics\OperationEvent;

/* @var $this yii\web\View */
/* @var $searchModel common\models\c2\search\OrderItemSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app.c2', 'Order Item Models');
$this->params['breadcrumbs'][] = $this->title;
?>
    <div class="well order-item-model-index">

        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

        <?php echo GridView::widget([
            'dataProvider' => $dataProvider,
            // 'filterModel' => $searchModel,

            'pjax' => true,
            'hover' => true,
            // 'showPageSummary' => true,
            'panel' => ['type' => GridView::TYPE_PRIMARY, 'heading' => Yii::t('app.c2', 'Expend item to show product combination.')],
            'toolbar' => [
                [
                    'content' =>
                    // Html::a('<i class="glyphicon glyphicon-plus"></i>', ['edit'], [
                    //     'class' => 'btn btn-success',
                    //     'title' => Yii::t('app.c2', 'Add'),
                    //     'data-pjax' => '0',
                    // ]) . ' ' .
                    // Html::button('<i class="glyphicon glyphicon-remove"></i>', [
                    //     'class' => 'btn btn-danger',
                    //     'title' => Yii::t('app.c2', 'Delete Selected Items'),
                    //     'onClick' => "jQuery(this).trigger('" . OperationEvent::DELETE_BY_IDS . "', {url:'" . Url::toRoute('multiple-delete') . "'});",
                    // ]) . ' ' .
                        Html::a('<i class="glyphicon glyphicon-repeat"></i>', Url::current(), [
                            'class' => 'btn btn-default',
                            'title' => Yii::t('app.c2', 'Reset Grid')
                        ]),
                ],
                // '{export}',
                // '{toggleData}',
            ],
            'exportConfig' => [],
            'columns' => [
                // ['class' => 'kartik\grid\CheckboxColumn'],
                // ['class' => 'kartik\grid\SerialColumn'],
                // [
                //     'class' => 'kartik\grid\ExpandRowColumn',
                //     'expandIcon' => '<span class="fa fa-plus-square-o"></span>',
                //     'collapseIcon' => '<span class="fa fa-minus-square-o"></span>',
                //     'detailUrl' => Url::toRoute(['/p3s/finance/order/consumption/default/index', 'OrderItemConsumptionSearch[order_item_id]' => $model->id]),
                //     'value' => function ($model, $key, $index, $column) {
                //         return GridView::ROW_COLLAPSED;
                //     },
                // ],
                // 'id',
                // 'order_id',
                [
                    'attribute' => 'owner.code'
                ],
                // 'product_id',
                [
                    'attribute' => 'product.name'
                ],
                'product.sku',
                [
                    'attribute' => 'productCombination.name',
                    'label' => Yii::t('app.c2', 'Product Combination')
                ],
                [
                    'attribute' => 'productPackage.name',
                    'label' => Yii::t('app.c2', 'Package Method')
                ],
                'label',
                // 'measure_id',
                [
                    'attribute' => 'measure.name'
                ],
                'pieces',
                // 'number',
                [
                    'attribute' => 'number',
                    'label' => Yii::t('app.c2', 'Product Number')
                ],
                // 'product_combination_id',
                // 'product_package_id',
                'memo',
                // 'status',
                // 'position',
                // 'created_at',
                // 'updated_at',
                // [
                //     'attribute' => 'status',
                //     'class' => '\kartik\grid\EditableColumn',
                //     'editableOptions' => [
                //         'inputType' => \kartik\editable\Editable::INPUT_DROPDOWN_LIST,
                //         'formOptions' => ['action' => Url::toRoute('editColumn')],
                //         'data' => EntityModelStatus::getHashMap('id', 'label'),
                //         'displayValueConfig' => EntityModelStatus::getHashMap('id', 'label'),
                //     ],
                //     'filter' => EntityModelStatus::getHashMap('id', 'label'),
                //     'value' => function ($model) {
                //         return $model->getStatusLabel();
                //     }
                // ],
                [
                    'class' => '\kartik\grid\ActionColumn',
                    'template' => '{view}',
                    'buttons' => [
                        'view' => function ($url, $model, $key) {
                            $url = Url::toRoute(['/p3s/finance/order/consumption/default/index', 'OrderItemConsumptionSearch[order_item_id]' => $model->id]);
                            return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', $url, [
                                'title' => Yii::t('app', 'Info'),
                                'data-pjax' => '0',
                                'class' => 'view'
                            ]);
                        }
                    ]
                ],

            ],
        ]); ?>

    </div>

<?php
\yii\bootstrap\Modal::begin([
    'id' => 'edit-modal',
    'size' => 'modal-lg'
]);

\yii\bootstrap\Modal::end();

$js = "";

$js .= "jQuery(document).off('click', 'a.view').on('click', 'a.view', function(e) {
            e.preventDefault();
            jQuery('#edit-modal').modal('show').find('.modal-content').html('" . Yii::t('app.c2', 'Loading...') . "').load(jQuery(e.currentTarget).attr('href'));
        });";

$this->registerJs($js);
?>