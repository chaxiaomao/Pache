<?php

use cza\base\widgets\ui\common\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;
use cza\base\models\statics\EntityModelStatus;
use cza\base\models\statics\OperationEvent;
use yii\bootstrap\Modal;
use yii\web\JsExpression;
use common\models\c2\statics\InventoryExeState;

/* @var $this yii\web\View */
/* @var $searchModel common\models\c2\search\InventoryDeliveryNote */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app.c2', 'Inventory Delivery Notes');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="<?= $model->getPrefixName('index') ?>">

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
                Html::button('<i class="glyphicon glyphicon-plus"></i>', [
                    'type' => 'button',
                    'title' => Yii::t('app.c2', 'Add'),
                    'class' => 'btn btn-success',
                    'onClick' => "jQuery(this).trigger('" . OperationEvent::CREATE . "', {url:'" . Url::toRoute('edit') . "'});",
                ]) . ' ' .
//                Html::button('<i class="glyphicon glyphicon-remove"></i>', [
//                    'class' => 'btn btn-danger',
//                    'title' => Yii::t('app.c2', 'Delete Selected Items'),
//                    'onClick' => "jQuery(this).trigger('" . OperationEvent::DELETE_BY_IDS . "', {url:'" . Url::toRoute('multiple-delete') . "'});",
//                ]) . ' ' .
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
                'detailUrl' => Url::toRoute('detail'),
                'value' => function ($model, $key, $index, $column) {
                    return GridView::ROW_COLLAPSED;
                },
            ],
//            'id',
//            'type',
            'code',
//            'label',
//            'warehouse_id',
            [
                'attribute' => 'type',
                'value' => function ($model, $key, $index, $column) {
                    return $model->getTypeLabel();
                },
            ],
            [
                'attribute' => 'warehouse_id',
                'value' => function ($model, $key, $index, $column) {
                    return $model->warehouse->label;
                },
            ],
            // 'sales_order_id',
            // 'customer_id',
            'occurrence_date',
            // 'grand_total',
            // 'arrival_number',
            // 'buyer_name',
            // 'dept_manager_name',
            // 'financial_name',
            // 'receiver_name',
            // 'payment_method',
            // 'delivery_method',
            // 'memo:ntext',
            // 'remote_ip',
            // 'is_audited',
            // 'audited_by',
            // 'updated_by',
            // 'created_by',
            // 'state',
            // 'status',
            // 'position',
            // 'updated_at',
            [
                'attribute' => 'created_by',
                'value' => function ($model, $key, $index, $column) {
                    return $model->creator->profile->fullname;
                },
            ],
            'created_at',
//            [
//                'attribute' => 'status',
//                'class' => '\kartik\grid\EditableColumn',
//                'editableOptions' => [
//                    'inputType' => \kartik\editable\Editable::INPUT_DROPDOWN_LIST,
//                    'formOptions' => ['action' => Url::toRoute('editColumn')],
//                    'data' => EntityModelStatus::getHashMap('id', 'label'),
//                    'displayValueConfig' => EntityModelStatus::getHashMap('id', 'label'),
//                ],
//                'filter' => EntityModelStatus::getHashMap('id', 'label'),
//                'value' => function($model) {
//                    return $model->getStatusLabel();
//                }
//            ],
            [
                'attribute' => 'state',
                'filter' => InventoryExeState::getHashMap('id', 'label'),
                'value' => function($model) {
                    return $model->getStateLabel();
                }
            ],
            [
                'class' => '\common\widgets\grid\ActionColumn',
                'template' => '{ensure-do} {update} {delete} {view}',
                'width' => '100px',
                'visibleButtons' => [
                    'view' => function ($model) {
                        return $model->isStateFinish();
                    },
                    'update' => function ($model) {
                        return $model->isStateInit();
                    },
                    'delete' => function ($model) {
                        return $model->isStateInit();
                    },
                    'ensure-do' => function ($model) {
                        return $model->isStateInit();
                    },
                ],
                'buttons' => [
                    'view' => function ($url, $model, $key) {
                        $title = Yii::t('app.c2', 'View');
                        return Html::a(Html::tag('span', '', ['class' => "glyphicon glyphicon-print"]), [$url,], [
                                    'title' => $title,
                                    'aria-label' => $title,
                                    'data-pjax' => '0',
                                    'class' => 'view'
                        ]);
                    },
                    'update' => function ($url, $model, $key) {
                        $title = Yii::t('app.c2', 'Update');
                        return Html::a(Html::tag('span', '', ['class' => "glyphicon glyphicon-pencil"]), ['edit', 'id' => $model->id], [
                                    'title' => $title,
                                    'aria-label' => $title,
                                    'data-pjax' => '0',
                                    'class' => 'update'
                        ]);
                    },
                    'ensure-do' => function ($url, $model, $key) {
                        $title = Yii::t('app.c2', 'Ensure To Do');
                        return Html::a(Html::tag('span', '', ['class' => "glyphicon glyphicon-check"]), ['ensure-do', 'id' => $model->id], [
                                    'title' => $title,
                                    'aria-label' => $title,
                                    'data-pjax' => '0',
                                    'class' => 'ensure-do'
                        ]);
                    },
                ],
            ],
        ],
    ]);
    ?>

    <?php
    Modal::begin([
        'id' => 'inventory-delivery-note-modal',
        'size' => 'modal-lg',
    ]);
    Modal::end();

    $js = "";
    $js .= "jQuery(document).on('" . OperationEvent::CREATE . "', '.inventory-delivery-note-index', function(e, data) {
                    e.preventDefault();
                    jQuery('#inventory-delivery-note-modal').modal('show').find('.modal-content').html('" . Yii::t('app.c2', 'Loading...') . "').load(data.url);
                });";

    $js .= "jQuery(document).on('click', '.inventory-delivery-note-index a.update', function(e) {
                e.preventDefault();
                jQuery('#inventory-delivery-note-modal').modal('show').find('.modal-content').html('" . Yii::t('app.c2', 'Loading...') . "').load(jQuery(e.currentTarget).attr('href'));
            });";


    $js .= "jQuery(document).off('click', '.inventory-delivery-note-index a.view').on('click', '.inventory-delivery-note-index a.view', function(e) {
                e.preventDefault();
                jQuery('#inventory-delivery-note-modal').modal('show').find('.modal-content').html('" . Yii::t('app.c2', 'Loading...') . "').load(jQuery(e.currentTarget).attr('href'));
            });";
    
    $js .= "jQuery(document).off('click', '.inventory-delivery-note-index a.ensure-do').on('click', '.inventory-delivery-note-index a.ensure-do', function(e) {
                e.preventDefault();
                var lib = window['krajeeDialog'];
                var url = jQuery(e.currentTarget).attr('href');
                lib.confirm('" . Yii::t('app.c2', 'Are you sure?') . "', function (result) {
                    if (!result) {
                        return;
                    }
                    
                    jQuery.ajax({
                            url: url,
                            success: function(data) {
                                var lifetime = 6500;
                                if(data._meta.result == '" . cza\base\models\statics\OperationResult::SUCCESS . "'){
                                    jQuery('#{$model->getPrefixName('grid')}').trigger('" . OperationEvent::REFRESH . "');
                                }
                                else{
                                  lifetime = 16500;
                                }
                                jQuery.msgGrowl ({
                                        type: data._meta.type, 
                                        title: '" . Yii::t('cza', 'Tips') . "',
                                        text: data._meta.message,
                                        position: 'top-center',
                                        lifetime: lifetime,
                                });
                            },
                            error :function(data){alert(data._meta.message);}
                    });
                });
            });";

    $js .= "$.fn.modal.Constructor.prototype.enforceFocus = function(){};";   // fix select2 widget input-bug in popup    

    $this->registerJs($js);
    ?>
</div>
