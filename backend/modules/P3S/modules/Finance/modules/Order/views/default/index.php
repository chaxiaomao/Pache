<?php

use cza\base\widgets\ui\common\grid\GridView;
use yii\bootstrap\Modal;
use yii\helpers\Html;
use yii\helpers\Url;
use cza\base\models\statics\EntityModelStatus;
use cza\base\models\statics\OperationEvent;

/* @var $this yii\web\View */
/* @var $searchModel common\models\c2\search\OrderSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app.c2', 'Order Models');
$this->params['breadcrumbs'][] = $this->title;
?>
    <div class="well order-model-index">

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
                        Html::a('<i class="glyphicon glyphicon-plus"></i>', ['edit'], [
                            'class' => 'btn btn-success',
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
                'id',
                // 'user_id',
                [
                    'attribute' => 'user_id',
                    'value' => function ($model) {
                        return $model->user->username;
                    },
                    'filter' => \common\models\c2\entity\FeUserModel::getHashMap('id', 'username')
                ],
                'code',
                'label',
                'production_date',
                'delivery_date',
                // 'created_by',
                // 'updated_by',
                [
                    'attribute' => 'created_by',
                    'value' => function ($model, $key, $index, $column) {
                        return $model->creator->profile->fullname;
                    },
                ],
                // 'memo',
                [
                    'attribute' => 'memo',
                    'format' => 'html'
                ],
                // 'state',
                // 'status',
                [
                    'attribute' => 'state',
                    'value' => function ($model) {
                        return \common\models\c2\statics\InventoryExeState::getData($model->state, 'label');
                    }
                ],
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
                    'width' => '240px',
                    'template' => '{order-confirm} {order-cancel} {order-finish} {order-init} {order-items} {update} {view}',
                    'visibleButtons' => [
                        'update' => function ($model) {
                            return $model->isStateInit();
                        },
                        'order-confirm' => function ($model) {
                            return $model->isStateInit();
                        },
                        'order-cancel' => function ($model) {
                            return $model->isStateInit() || $model->isStateUntrack();
                        },
                        'order-init' => function ($model) {
                            return $model->isStateCancel();
                        },
                        'order-finish' => function ($model) {
                            return $model->isStateUntrack();
                        },
                        // 'delete' => function ($model) {
                        //     return $model->isStateInit();
                        // },
                        'order-items' => function ($model) {
                            return $model->isStateUntrack();
                        },
                    ],
                    'buttons' => [
                        'update' => function ($url, $model, $key) {
                            return Html::a(Html::tag('span', '', ['class' => "glyphicon glyphicon-pencil"]), ['edit', 'id' => $model->id], [
                                'title' => Yii::t('app.c2', 'Update'),
                                'data-pjax' => '0',
                            ]);
                        },
                        'view' => function ($url, $model, $key) {
                            return Html::a(Html::tag('span', Yii::t('app.c2', 'Print'), ['class' => "glyphicon glyphicon-print"]), ['view', 'id' => $model->id], [
                                'title' => Yii::t('app.c2', 'Print'),
                                'data-pjax' => '0',
                                'target' => '_blank'
                            ]);
                        },
                        'order-confirm' => function ($url, $model, $key) {
                            return Html::a(Yii::t('app.c2', 'Confirm Action'), ['order-confirm', 'id' => $model->id], [
                                'title' => Yii::t('app.c2', 'Confirm Action'),
                                'data-pjax' => '0',
                                'class' => 'btn btn-success btn-xs confirm',
                            ]);
                        },
                        'order-init' => function ($url, $model, $key) {
                            return Html::a(Yii::t('app.c2', 'Init'), ['order-init', 'id' => $model->id], [
                                'title' => Yii::t('app.c2', 'Init'),
                                'data-pjax' => '0',
                                'class' => 'btn btn-success btn-xs init'
                            ]);
                        },
                        'order-cancel' => function ($url, $model, $key) {
                            return Html::a(Yii::t('app.c2', 'Cancel'), ['order-cancel', 'id' => $model->id], [
                                'title' => Yii::t('app.c2', 'Cancel'),
                                'data-pjax' => '0',
                                'class' => 'btn btn-danger btn-xs cancel'
                            ]);
                        },
                        'order-finish' => function ($url, $model, $key) {
                            return Html::a(Yii::t('app.c2', 'Finish'), ['order-finish', 'id' => $model->id], [
                                'title' => Yii::t('app.c2', 'Finish'),
                                'data-pjax' => '0',
                                'class' => 'btn btn-success btn-xs finish'
                            ]);
                        },
                        'order-items' => function ($url, $model, $key) {
                            return Html::a(Html::tag('span', Yii::t('app.c2', 'Order Items'), ['class' => "glyphicon glyphicon-list-alt"]), [
                                '/p3s/finance/order/order-item/default/index',
                                'OrderItemSearch[order_id]' => $model->id
                            ], [
                                'title' => Yii::t('app.c2', 'Order Item Models'),
                                'data-pjax' => '0',
                                'target' => '_blank'
                            ]);
                        },
                    ]
                ],

            ],
        ]); ?>

    </div>


<?php
Modal::begin([
    'id' => 'order-modal',
    'size' => 'modal-lg',
]);
Modal::end();

$js = "";
// $js .= "jQuery(document).off('" . OperationEvent::CREATE . "', '.order-model-index').on('" . OperationEvent::CREATE . "', '.order-model-index', function(e, data) {
//                     e.preventDefault();
//                     jQuery('#order-modal').modal('show').find('.modal-content').html('" . Yii::t('app.c2', 'Loading...') . "').load(data.url);
//                 });";
//
// $js .= "jQuery(document).off('click', '.order-model-index a.update').on('click', '.order-model-index a.update', function(e) {
//                 e.preventDefault();
//                 jQuery('#order-modal').modal('show').find('.modal-content').html('" . Yii::t('app.c2', 'Loading...') . "').load(jQuery(e.currentTarget).attr('href'));
//             });";

// $js .= "jQuery(document).off('click', '.order-model-index a.view').on('click', '.order-model-index a.view', function(e) {
//                 e.preventDefault();
//                 jQuery('#order-modal').modal('show').find('.modal-content').html('" . Yii::t('app.c2', 'Loading...') . "').load(jQuery(e.currentTarget).attr('href'));
//             });";

$js .= "jQuery(document).off('click', 'a.init').on('click', 'a.init', function(e) {
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

$js .= "jQuery(document).off('click', 'a.cancel').on('click', 'a.cancel', function(e) {
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

$js .= "jQuery(document).off('click', 'a.confirm').on('click', 'a.confirm', function(e) {
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

$js .= "jQuery(document).off('click', 'a.finish').on('click', 'a.finish', function(e) {
                e.preventDefault();
                var lib = window['krajeeDialog'];
                var url = jQuery(e.currentTarget).attr('href');
                lib.confirm('" . Yii::t('app.c2', 'Are you sure Finish order') . "', function (result) {
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