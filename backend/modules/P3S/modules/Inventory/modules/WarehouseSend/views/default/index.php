<?php

use cza\base\widgets\ui\common\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;
use cza\base\models\statics\EntityModelStatus;
use cza\base\models\statics\OperationEvent;

/* @var $this yii\web\View */
/* @var $searchModel common\models\c2\search\WarehouseSendItemSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app.c2', 'Warehouse Send Item Models');
$this->params['breadcrumbs'][] = $this->title;
?>
    <div class="well warehouse-send-item-model-index">

        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

        <?php echo GridView::widget([
            'dataProvider' => $dataProvider,
            // 'filterModel' => $searchModel,
            'id' => $model->getPrefixName('grid'),
            'pjax' => true,
            'hover' => true,
            'showPageSummary' => true,
            'panel' => [
                'type' => GridView::TYPE_PRIMARY,
                'heading' => Yii::t('app.c2', 'Warehouse Send Item Models')
            ],
            'toolbar' => [
                [
                    'content' =>
                    // Html::a('<i class="glyphicon glyphicon-plus"></i>', ['edit'], [
                    //     'class' => 'btn btn-success edit',
                    //     'title' => Yii::t('app.c2', 'Add'),
                    //     'data-pjax' => '0',
                    // ]) . ' ' .
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
                // '{export}',
                // '{toggleData}',
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
                // 'id',
                // 'note_id',
                [
                    'attribute' => 'note.code',
                ],
                'product.name',
                'product.sku',
                // 'productCombination.name',
                [
                    'attribute' => 'productCombination.name',
                    'label' => Yii::t('app.c2', 'Product Combination')
                ],
                // 'productPackage.name',
                [
                    'attribute' => 'productPackage.name',
                    'label' => Yii::t('app.c2', 'Product Package')
                ],
                // 'code',
                // 'name',
                // 'label',
                // 'value',
                // 'send_number',
                [
                    'attribute' => 'send_number',
                    'class' => '\kartik\grid\EditableColumn',
                    'editableOptions' => [
                        'inputType' => \kartik\editable\Editable::INPUT_TEXT,
                        'formOptions' => ['action' => Url::toRoute('editColumn')],
                        // 'data' => EntityModelStatus::getHashMap('id', 'label'),
                        // 'displayValueConfig' => EntityModelStatus::getHashMap('id', 'label'),
                    ],
                ],
                // 'production_number',
                [
                    'attribute' => 'production_number',
                    'class' => '\kartik\grid\EditableColumn',
                    'editableOptions' => [
                        'inputType' => \kartik\editable\Editable::INPUT_TEXT,
                        'formOptions' => ['action' => Url::toRoute('editColumn')],
                        // 'data' => EntityModelStatus::getHashMap('id', 'label'),
                        // 'displayValueConfig' => EntityModelStatus::getHashMap('id', 'label'),
                    ],
                ],
                // 'stock_number',
                [
                    'attribute' => 'stock_number',
                    'class' => '\kartik\grid\EditableColumn',
                    'editableOptions' => [
                        'inputType' => \kartik\editable\Editable::INPUT_TEXT,
                        'formOptions' => ['action' => Url::toRoute('editColumn')],
                        // 'data' => EntityModelStatus::getHashMap('id', 'label'),
                        // 'displayValueConfig' => EntityModelStatus::getHashMap('id', 'label'),
                    ],
                ],
                'memo',
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
                    'width' => '200px',
                    'template' => '{view} {delete}',
                    'buttons' => [
                        'view' => function ($url, $model, $key) {
                            return Html::a(Yii::t('app.c2', 'Send Items'), ['view', 'id' => $model->id], [
                                'title' => Yii::t('app', 'Info'),
                                'data-pjax' => '0',
                                'class' => 'view',
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