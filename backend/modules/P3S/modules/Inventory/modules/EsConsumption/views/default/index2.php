<?php

use cza\base\widgets\ui\common\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;
use cza\base\models\statics\EntityModelStatus;
use cza\base\models\statics\OperationEvent;

/* @var $this yii\web\View */
/* @var $searchModel common\models\c2\search\OrderItemConsumptionSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
/* @var $stock \common\models\c2\entity\ProductStock */

$this->title = Yii::t('app.c2', 'Order Item Consumption Models');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="well order-item-consumption-model-index">

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?php echo GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,

        'pjax' => true,
        'hover' => true,
        'showPageSummary' => true,
        // 'panel' => ['type' => GridView::TYPE_WARNING, 'heading' => Yii::t('app.c2', 'Items')],
        // 'toolbar' => [
        //     [
        //         'content' =>
        //             Html::a('<i class="glyphicon glyphicon-plus"></i>', ['edit'], [
        //                 'class' => 'btn btn-success',
        //                 'title' => Yii::t('app.c2', 'Add'),
        //                 'data-pjax' => '0',
        //             ]) . ' ' .
        //             Html::button('<i class="glyphicon glyphicon-remove"></i>', [
        //                 'class' => 'btn btn-danger',
        //                 'title' => Yii::t('app.c2', 'Delete Selected Items'),
        //                 'onClick' => "jQuery(this).trigger('" . OperationEvent::DELETE_BY_IDS . "', {url:'" . Url::toRoute('multiple-delete') . "'});",
        //             ]) . ' ' .
        //             Html::a('<i class="glyphicon glyphicon-repeat"></i>', Url::current(), [
        //                 'class' => 'btn btn-default',
        //                 'title' => Yii::t('app.c2', 'Reset Grid')
        //             ]),
        //     ],
        //     '{export}',
        //     '{toggleData}',
        // ],
        'exportConfig' => [],
        'columns' => [
            // ['class' => 'kartik\grid\CheckboxColumn'],
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
            // 'id',
            // 'order_id',
            [
                'attribute' => 'order_id',
                'value' => function ($model) {
                    return $model->owner->code;
                }
            ],
            // 'product_id',
            [
                'attribute' => 'product_id',
                'value' => function ($model) {
                    return $model->product->name;
                }
            ],
            // 'material_id',
            [
                'attribute' => 'material_id',
                'value' => function ($model) {
                    return $model->productMaterialItem->label;
                }
            ],
            // 'material_item_id',
            [
                'attribute' => 'material_item_id',
                'value' => function ($model) {
                    return $model->productMaterialItem->value;
                }
            ],
            'quantity',
            'consumed_num',
            // 'subtotal',
            [
                'attribute' => 'subtotal',
                'pageSummary' => true,
                'value' => function($model) {
                    return $model->subtotal;
                }
            ],
            // [
            //     'attribute' => 'stock',
            //     'value' => function ($model) {
            //         return $model->productMaterialItem->stock->num;
            //     }
            // ],
            // [
            //     'attribute' => 'exStock',
            //     'pageSummary' => true,
            //     'value' => function ($model) {
            //         return $model->getExStock();
            //     }
            // ],
            // [
            //     'attribute' => 'exception',
            //     'label' => Yii::info('app.c2', 'Stock exception'),
            //     'value' => function ($model) {
            //         return $model->getException() > 0 ? Yii::t('app.c2', 'Enough') : Yii::t('app.c2', 'Not enough');
            //     }
            // ],
            // 'measure_id',
            // 'memo',
            // 'status',
            // 'position',
            // 'created_at',
            // 'updated_at',
            // 'Column_15',
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
            // [
            //     'class' => '\kartik\grid\ActionColumn',
            //     'template' => '{detail}',
            //     'buttons' => [
            //         'detail' => function ($url, $model, $key) {
            //             return Html::a('<span class="glyphicon glyphicon-eye-open"></span>', ['index', 'OrderItemConsumptionSearch[material_id]' => $model->material_id], [
            //                 'title' => Yii::t('app.c2', 'View'),
            //                 'data-pjax' => '0',
            //             ]);
            //         }
            //     ]
            // ],

        ],
    ]); ?>

</div>

<?php
$exception = $stock->getException();
$result = $stock->num - $exception;
$materialProduct = $stock->productMaterialItem;
?>


<div class="container-fluid">
    <table class="table table-bordered">
        <tr>
            <td>材料</td>
            <td>规格</td>
            <td>当前库存</td>
            <td>预计消耗</td>
            <td>状态</td>
        </tr>
        <tr>
            <td><?= $materialProduct->label ?></td>
            <td><?= $materialProduct->value ?></td>
            <td><?= $stock->num ?></td>
            <td><?= $exception ?></td>
            <td><?= $result > 0 ? "充足" : "欠料：" . $result ?></td>
        </tr>
    </table>
</div>