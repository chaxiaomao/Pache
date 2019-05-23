<?php

use cza\base\widgets\ui\common\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;
use cza\base\models\statics\EntityModelStatus;
use cza\base\models\statics\OperationEvent;

/* @var $this yii\web\View */
/* @var $searchModel common\models\c2\search\ProductPackageSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app.c2', 'Product Package Models');
$this->params['breadcrumbs'][] = $this->title;
?>

    <div class="well product-package-model-index">

        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

        <?php echo GridView::widget([
            'dataProvider' => $dataProvider,
            // 'filterModel' => $searchModel,
            'id' => $model->getPrefixName('grid'),
            'pjax' => true,
            'hover' => true,
            // 'showPageSummary' => true,
            'panel' => ['type' => GridView::TYPE_PRIMARY, 'heading' => Yii::t('app.c2', 'Items')],
            'toolbar' => [
                [
                    'content' =>
                        Html::a('<i class="glyphicon glyphicon-plus"></i>', [
                            '/database/product/product-package/default/edit',
                            'product_id' => $product_id
                        ], [
                            'class' => 'btn btn-success',
                            'id' => 'edit-product-package',
                            'title' => Yii::t('app.c2', 'Add'),
                            'data-pjax' => '0',
                        ]) . ' ' .
                        // Html::button('<i class="glyphicon glyphicon-remove"></i>', [
                        //     'class' => 'btn btn-danger',
                        //     'title' => Yii::t('app.c2', 'Delete Selected Items'),
                        //     'onClick' => "jQuery(this).trigger('" . OperationEvent::DELETE_BY_IDS . "', {url:'" . Url::toRoute('/database/product-package/default/multiple-delete') . "'});",
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
                //     'detailUrl' => Url::toRoute(['detail']),
                //     'value' => function ($model, $key, $index, $column) {
                //         return GridView::ROW_COLLAPSED;
                //     },
                // ],
                // 'id',
                'product_id',
                'code',
                'name',
                'label',
                // 'value',
                // 'number',
                // 'gross_weight',
                // 'net_weight',
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
                    'class' => '\common\widgets\grid\ActionColumn',
                    'template' => '{update} {delete}',
                    'buttons' => [
                        'update' => function ($url, $model, $key) {
                            return Html::a('<span class="glyphicon glyphicon-pencil"></span>', [
                                '/database/product/product-package/default/edit',
                                'id' => $model->id
                            ], [
                                'title' => Yii::t('app', 'Info'),
                                'data-pjax' => '0',
                                'class' => 'package-update'
                            ]);
                        },
                        'delete' => function ($url, $model, $key) {
                            return Html::a('<span class="glyphicon glyphicon-remove"></span>', [
                                '/database/product/product-package/default/delete',
                                'id' => $model->id
                            ], [
                                'title' => Yii::t('app', 'Delete'),
                                'data-pjax' => '0',
                            ]);
                        },
                    ]
                ],

            ],
        ]); ?>

    </div>
<?php
\yii\bootstrap\Modal::begin([
    'id' => 'edit-package-modal',
    'size' => 'modal-lg'
]);

\yii\bootstrap\Modal::end();

$js = "";

$js .= "jQuery(document).off('click', '#edit-product-package').on('click', '#edit-product-package', function(e) {
            e.preventDefault();
            jQuery('#edit-package-modal').modal('show').find('.modal-content').html('" . Yii::t('app.c2', 'Loading...') . "').load(jQuery(e.currentTarget).attr('href'));
        });";

$js .= "jQuery(document).off('click', 'a.package-update').on('click', 'a.package-update', function(e) {
            e.preventDefault();
            jQuery('#edit-package-modal').modal('show').find('.modal-content').html('" . Yii::t('app.c2', 'Loading...') . "').load(jQuery(e.currentTarget).attr('href'));
        });";

$this->registerJs($js);
?>