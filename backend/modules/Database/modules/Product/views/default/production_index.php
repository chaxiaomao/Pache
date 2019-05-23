<?php

use cza\base\widgets\ui\common\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;
use cza\base\models\statics\EntityModelStatus;
use cza\base\models\statics\OperationEvent;

/* @var $this yii\web\View */
/* @var $searchModel common\models\c2\search\ProductSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app.c2', 'Product Models');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="well product-model-index">

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?php echo GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'id' => $model->getPrefixName('grid'),
        'pjax' => true,
        'hover' => true,
        'showPageSummary' => true,
        'panel' => ['type' => GridView::TYPE_PRIMARY, 'heading' => Yii::t('app.c2', 'Items')],
        'toolbar' => [
            [
                'content' =>
                    Html::a('<i class="glyphicon glyphicon-plus">' . Yii::t('app.c2', 'Product Add') . '</i>', ['edit'], [
                        'class' => 'btn btn-success',
                        'title' => Yii::t('app.c2', 'Add'),
                        'data-pjax' => '0',
                    ]) . ' ' .
                    Html::button('<i class="glyphicon glyphicon-remove"></i>', [
                        'class' => 'btn btn-danger',
                        'title' => Yii::t('app.c2', 'Delete Selected Items'),
                        'onClick' => "jQuery(this).trigger('" . OperationEvent::DELETE_BY_IDS . "', {url:'" . Url::toRoute('multiple-delete') . "'});",
                    ]) . ' ' .
                    Html::a('<i class="glyphicon glyphicon-repeat"></i>', Url::current(), [
                        'class' => 'btn btn-default',
                        'title' => Yii::t('app.c2', 'Reset Grid')
                    ]),
            ],
            '{export}',
            '{toggleData}',
        ],
        'exportConfig' => [],
        'columns' => [
            ['class' => 'kartik\grid\CheckboxColumn'],
            // ['class' => 'kartik\grid\SerialColumn'],
            // [
            //     'class' => 'kartik\grid\ExpandRowColumn',
            //     'expandIcon' => '<span class="fa fa-plus-square-o"></span>',
            //     'collapseIcon' => '<span class="fa fa-minus-square-o"></span>',
            //     'detailUrl' => Url::toRoute(['detail']),
            //     'value' => function ($model, $key, $index, $column) {
            //         return GridView::ROW_COLLAPSED;
            //     },
            // ],
            'id',
            // 'eshop_id',
            // 'type',
            [
                'attribute' => 'type',
                'value' => function ($model) {
                    return \common\models\c2\statics\ProductType::getData($model->type, 'label');
                },
                // 'filter' => \common\models\c2\statics\ProductType::getHashMap('id', 'label')
            ],
            // 'seo_code',
            // 'sku',
            // 'serial_number',
            // 'breadcrumb',
            'name',
            'label',
            // 'value',
            // 'meta_title',
            // 'meta_keywords',
            // 'meta_description:ntext',
            // 'is_score_exchange',
            // 'score_exchange_method',
            // 'score',
            // 'gift_score',
            // 'require_setup',
            // 'is_install',
            // 'install_price',
            // 'low_price',
            // 'sales_price',
            // 'cost_price',
            // 'market_price',
            // 'brand_id',
            // 'supplier_id',
            [
                'attribute' => 'supplier_id',
                'value' => function ($model) {
                    return $model->supplier->label;
                },
                'filter' => \common\models\c2\entity\SupplierModel::getHashMap('id', 'label')
            ],
            // 'currency_id',
            // 'measure_id',
            // 'summary:ntext',
            // 'description:ntext',
            // 'views_count',
            // 'comment_count',
            // 'sold_count',
            // 'virtual_sold_count',
            // 'is_released',
            // 'released_at',
            // 'created_by',
            // 'updated_by',
            // 'status',
            // 'position',
            // 'created_at',
            // 'updated_at',
            [
                'attribute' => 'status',
                'class' => '\kartik\grid\EditableColumn',
                'editableOptions' => [
                    'inputType' => \kartik\editable\Editable::INPUT_DROPDOWN_LIST,
                    'formOptions' => ['action' => Url::toRoute('editColumn')],
                    'data' => EntityModelStatus::getHashMap('id', 'label'),
                    'displayValueConfig' => EntityModelStatus::getHashMap('id', 'label'),
                ],
                'filter' => EntityModelStatus::getHashMap('id', 'label'),
                'value' => function ($model) {
                    return $model->getStatusLabel();
                }
            ],
            [
                'class' => '\common\widgets\grid\ActionColumn',
                'template' => '{update} {delete}',
                'buttons' => [
                    'update' => function ($url, $model, $key) {
                        return Html::a('<span class="glyphicon glyphicon-pencil"></span>', ['edit', 'id' => $model->id], [
                            'title' => Yii::t('app', 'Info'),
                            'data-pjax' => '0',
                        ]);
                    },
                ]
            ],

        ],
    ]); ?>

</div>