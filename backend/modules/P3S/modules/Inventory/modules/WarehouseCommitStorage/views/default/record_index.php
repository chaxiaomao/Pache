<?php

use cza\base\widgets\ui\common\grid\GridView;
use yii\helpers\Html;
use yii\helpers\Url;
use cza\base\models\statics\EntityModelStatus;
use cza\base\models\statics\OperationEvent;

/* @var $this yii\web\View */
/* @var $searchModel common\models\c2\search\WarehouseCommitStorageItemSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app.c2', 'Warehouse Commit Storage Item Models');
$this->params['breadcrumbs'][] = $this->title;
?>


    <div class="order">

        <?php echo GridView::widget([
            'dataProvider' => $dataProvider,
            // 'filterModel' => $searchModel,

            'pjax' => true,
            'hover' => true,
            // 'showPageSummary' => true,
            // 'panel' => ['type' => GridView::TYPE_PRIMARY, 'heading' => Yii::t('app.c2', 'Items')],
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
                //     'detailUrl' => Url::toRoute(['detail']),
                //     'value' => function ($model, $key, $index, $column) {
                //         return GridView::ROW_COLLAPSED;
                //     },
                // ],
                // 'id',
                // 'type',
                [
                    'attribute' => 'type',
                    'value' => function ($model) {
                        return \common\models\c2\statics\WarehouseCommitType::getData($model->type, 'label');
                    }
                ],
                'note.code',
                'product.sku',
                'product.name',
                'product.value',
                // 'number',
                [
                    'attribute' => 'number',
                ],
                // 'measure_id',
                // 'measure.name',
                // 'memo',
                // [
                //     'attribute' => 'memo',
                //     'format' => 'html'
                // ],
                [
                    'attribute' => 'memo',
                    'format' => 'html'
                ],
                // 'state',
                [
                    'attribute' => 'state',
                    'value' => function ($model) {
                        return \common\models\c2\statics\WarehouseCommitState::getData($model->state, 'label');
                    }
                ],
                // 'status',
                // 'position',
                'created_at',
                'updated_at',
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
                // [
                //     'class' => '\common\widgets\grid\ActionColumn',
                //     'template' => '{delete}',
                // ],

            ],
        ]); ?>


    </div>
<?php
echo Html::beginTag('div', ['class' => 'box-footer']);
echo Html::a('<i class="fa fa-arrow-left"></i> ' . Yii::t('app.c2', 'Go Back'), 'javascript:history.go(-1)', ['data-pjax' => '0', 'class' => 'btn btn-default pull-right', 'title' => Yii::t('app.c2', 'Go Back'),]);
echo Html::endTag('div');
?>