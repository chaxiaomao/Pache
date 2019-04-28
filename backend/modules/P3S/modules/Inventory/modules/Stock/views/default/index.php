<?php

use cza\base\widgets\ui\common\grid\GridView;
use yii\bootstrap\Modal;
use yii\helpers\Html;
use yii\helpers\Url;
use cza\base\models\statics\EntityModelStatus;
use cza\base\models\statics\OperationEvent;

/* @var $this yii\web\View */
/* @var $searchModel common\models\c2\search\ProductStock */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app.c2', 'Product Stock');
$this->params['breadcrumbs'][] = $this->title;
?>


<div class="panel panel-warning">
    <div class="panel-heading"><?= Yii::t('app.c2', 'Event Assigned') ?></div>
    <div class="panel-body">
        <a href="<?= Url::toRoute(['/p3s/inventory/untracked/receipt-note']) ?>" class="btn btn-app">
        <span class="badge bg-teal"><?= \common\models\c2\entity\InventoryReceiptNoteModel::find()
                ->select(['state'])->where(['state' => \common\models\c2\statics\InventoryExeState::UNTRACKED])->count() ?></span>
            <i class="fa fa-bullhorn"></i> <?= Yii::t('app.c2', 'Inventory Receipt Notes') ?>
        </a>
        <a href="<?= Url::toRoute(['/p3s/inventory/untracked/delivery-note']) ?>"
           class="btn btn-app">
        <span class="badge bg-teal"><?= \common\models\c2\entity\InventoryDeliveryNoteModel::find()
                ->select(['state'])->where(['state' => \common\models\c2\statics\InventoryExeState::UNTRACKED])->count() ?></span>
            <i class="fa fa-bullhorn"></i> <?= Yii::t('app.c2', 'Inventory Delivery Notes') ?>
        </a>
    </div>
</div>

<?php // echo $this->render('_search', ['model' => $searchModel]); ?>

<?php
echo GridView::widget([
    'id' => $model->getPrefixName('grid'),
    'dataProvider' => $dataProvider,
    'filterModel' => $searchModel,
    'pjax' => true,
    'hover' => true,
    'showPageSummary' => true,
    'panel' => ['type' => GridView::TYPE_PRIMARY, 'heading' => Yii::t('app.c2', 'Items')],
    'toolbar' => [
        [
            'content' =>
                Html::a('<i class="glyphicon glyphicon-plus"></i>', ['edit'], [
                    'class' => 'btn btn-success add',
                    'title' => Yii::t('app.c2', 'Add'),
                    'data-pjax' => '0',
                ]) . ' ' .
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
        '{export}',
        '{toggleData}',
    ],
    'exportConfig' => [],
    'columns' => [
        ['class' => 'kartik\grid\CheckboxColumn'],
        ['class' => 'kartik\grid\SerialColumn'],
        [
            'class' => 'kartik\grid\ExpandRowColumn',
            'expandIcon' => '<span class="fa fa-plus-square-o"></span>',
            'collapseIcon' => '<span class="fa fa-minus-square-o"></span>',
            'detailUrl' => Url::toRoute(['detail']),
            'value' => function ($model, $key, $index, $column) {
                return GridView::ROW_COLLAPSED;
            },
        ],
        //            'id',
        //            'eshop_id',
        [
            'attribute' => 'warehouse_id',
            'filter' => \common\models\c2\entity\WarehouseModel::getHashMap('id', 'label'),
            'value' => function ($model, $key, $index, $column) {
                return $model->warehouse->label;
            },
        ],
        //            'product_id',
        [
            'attribute' => 'product_id',
            'filter' => \common\models\c2\entity\ProductModel::getHashMap('id', 'label'),
            'value' => function ($model, $key, $index, $column) {
                return $model->product->label;
            },
        ],
        // 'sku',
        // 'label',
        // 'product_sku_id',
        [
            'attribute' => 'product_material_id',
            'label' => Yii::t('app.c2', 'Product Sku2'),
            'value' => function ($model) {
                return $model->productMaterialItem == null ? Yii::t('app.c2', 'Product') : $model->productMaterialItem->value;
            }
        ],
        'num',
        // 'stock',
        // 'state',
        // 'status',
        // 'position',
        // 'created_at',
        'updated_at',
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
            'template' => ' {update} {receipt} {delivery}',
            'visibleButtons' => [
                'delivery' => function ($model) {
                    return $model->isProduct();
                },
            ],
            'buttons' => [
                'update' => function ($url, $model, $key) {
                    return Html::a('<span class="glyphicon glyphicon-pencil"></span>', ['edit', 'id' => $model->id], [
                        'title' => Yii::t('app', 'Update'),
                        'data-pjax' => '0',
                    ]);
                },
                'receipt' => function ($url, $model, $key) {
                    return Html::a('<span class="glyphicon glyphicon-hourglass"></span>', ['/p3s/inventory/stock/receipt-commit/default/index',
                        'WarehouseReceiptCommitItemSearch[product_sku_id]' => $model->product_material_id,
                        'WarehouseReceiptCommitItemSearch[status]' => EntityModelStatus::STATUS_ACTIVE,
                    ], [
                            'title' => Yii::t('app', 'History'),
                            'data-pjax' => '0',
                            'class' => 'view'
                        ]
                    );
                },
                'delivery' => function ($url, $model, $key) {
                    return Html::a('<span class="glyphicon glyphicon-zoom-in"></span>', ['/p3s/inventory/stock/delivery-commit/default/index',
                        'WarehouseDeliveryCommitItemSearch[product_id]' => $model->product_id,
                        'WarehouseDeliveryCommitItemSearch[status]' => EntityModelStatus::STATUS_ACTIVE,
                    ], [
                        'title' => Yii::t('app', 'History'),
                        'data-pjax' => '0',
                        'class' => 'view'
                    ]);
                }
            ]
        ],
    ],
]);
?>

<?php
// Modal::begin([
//     'id' => 'stock-modal',
//     'size' => 'modal-lg',
// ]);
// Modal::end();
//
// $js = "";
//
// $js .= "jQuery(document).off('click', 'a.btn.btn-success.add').on('click', 'a.btn.btn-success.add', function(e) {
//                 e.preventDefault();
//                 jQuery('#stock-modal').modal('show').find('.modal-content').html('" . Yii::t('app.c2', 'Loading...') . "').load(jQuery(e.currentTarget).attr('href'));
//             });";
//
//
// $js .= "$.fn.modal.Constructor.prototype.enforceFocus = function(){};";   // fix select2 widget input-bug in popup
//
// $this->registerJs($js);
?>
