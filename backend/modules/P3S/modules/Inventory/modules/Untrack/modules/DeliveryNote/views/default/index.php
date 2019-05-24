<?php

use cza\base\widgets\ui\common\grid\GridView;
use yii\bootstrap\Modal;
use yii\helpers\Html;
use yii\helpers\Url;
use cza\base\models\statics\EntityModelStatus;
use cza\base\models\statics\OperationEvent;

/* @var $this yii\web\View */
/* @var $searchModel common\models\c2\search\InventoryDeliveryNoteSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app.c2', 'Untrack Delivery Notes');
$this->params['breadcrumbs'][] = $this->title;
?>
    <div class="well inventory-delivery-note-model-index">

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
                // 'id',
                // 'type',
                [
                    'attribute' => 'type',
                    'value' => function ($model) {
                        return \common\models\c2\statics\InventoryDeliveryType::getData($model->type, 'label');
                    },
                    'filter' => \common\models\c2\statics\InventoryDeliveryType::getHashMap('id', 'label')
                ],
                'code',
                'label',
                // 'warehouse_id',
                [
                    'attribute' => 'warehouse_id',
                    'value' => function ($model) {
                        return $model->warehouse->name;
                    },
                    'filter' => \common\models\c2\entity\WarehouseModel::getHashMap('id', 'name')
                ],
                // 'sales_order_id',
                [
                    'attribute' => 'sales_order_id',
                    'value' => function ($model) {
                        return $model->order->code;
                    },
                ],
                // 'customer_id',
                [
                    'attribute' => 'customer_id',
                    'value' => function ($model) {
                        return $model->customer->username;
                    },
                    'filter' => \common\models\c2\entity\FeUserModel::getHashMap('id', 'username', [
                        'type' => \common\models\c2\statics\FeUserType::TYPE_CUSTOMER
                    ])
                ],
                // 'occurrence_date',
                // 'grand_total',
                // 'contact_man',
                // 'cs_name',
                // 'sender_name',
                // 'financial_name',
                // 'payment_method',
                // 'delivery_method',
                // 'memo:ntext',
                [
                    'attribute' => 'memo',
                    'format' => 'html'
                ],
                // 'remote_ip',
                // 'is_audited',
                // 'audited_by',
                // 'updated_by',
                // 'created_by',
                [
                    'attribute' => 'created_by',
                    'value' => function ($model, $key, $index, $column) {
                        return $model->creator->profile->fullname;
                    },
                ],
                // 'state',
                [
                    'attribute' => 'state',
                    'value' => function ($model) {
                        return \common\models\c2\statics\InventoryExeState::getData($model->state, 'label');
                    },
                    'filter' => \common\models\c2\statics\InventoryExeState::getHashMap8Ids([\common\models\c2\statics\InventoryExeState::UNTRACK,
                        \common\models\c2\statics\InventoryExeState::FINISH])
                ],
                // 'status',
                // 'position',
                // 'updated_at',
                // 'created_at',
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
                    'width' => '200px',
                    'template' => '{note-checkout} {note-commit} {view}',
                    'visibleButtons' => [
                        'view' => function ($model) {
                            return $model->isStateFinish();
                        },
                        'note-checkout' => function ($model) {
                            return $model->isStateUntrack();
                        },
                        'note-commit' => function ($model) {
                            return $model->isStateUntrack();
                        },
                    ],
                    'buttons' => [
                        'note-checkout' => function ($url, $model, $key) {
                            return Html::a(Yii::t('app.c2', 'Checkout'), [
                                '/p3s/inventory/warehouse-send',
                                'WarehouseSendItemSearch[note_id]' => $model->id
                            ], [
                                'title' => Yii::t('app.c2', 'Checkout'),
                                'data-pjax' => '0',
                                'class' => 'btn btn-success btn-xs checkout',
                                // 'target' => '_blank',
                            ]);
                        },
                        'note-commit' => function ($url, $model, $key) {
                            return Html::a(Yii::t('app.c2', 'Commit Send'), ['note-commit', 'id' => $model->id], [
                                'title' => Yii::t('app.c2', 'Commit Send'),
                                'data-pjax' => '0',
                                'class' => 'btn btn-danger btn-xs note-commit',
                            ]);
                        },
                        'view' => function ($url, $model, $key) {
                            return Html::a(Yii::t('app.c2', 'View'), [
                                '/p3s/inventory/warehouse-send/default/view-index',
                                'WarehouseSendItemSearch[note_id]' => $model->id
                            ], [
                                'title' => Yii::t('app.c2', 'View'),
                                'data-pjax' => '0',
                                'class' => 'btn btn-success btn-xs view',
                            ]);
                        },
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

// $js .= "jQuery(document).off('click', 'a.view').on('click', 'a.view', function(e) {
//             e.preventDefault();
//             jQuery('#edit-modal').modal('show').find('.modal-content').html('" . Yii::t('app.c2', 'Loading...') . "').load(jQuery(e.currentTarget).attr('href'));
//         });";

$js .= "jQuery(document).off('click', 'a.note-commit').on('click', 'a.note-commit', function(e) {
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

$this->registerJs($js);
?>