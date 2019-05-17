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

<style>
    .order {
        background-color: lightblue;
        padding:10px;
        margin-bottom: 10px
    }
</style>

<div class="container-fluid">

    <p>订单快照</p>

    <div class="order">
        <h2 class="tc" style="font-size: 30px;text-align: center">中山市祥丰家居用品有限公司</h2>
        <h5 class="tc p20" style="font-size: 18px;text-align: center">采购订单</h5>

        <div class="row pt10">
            <div class="col-xs-3">订单编号：<?= $model->arrival_number ?></div>
            <div class="col-xs-3">ISO标号：</div>
            <div class="col-xs-3">订购日期：<?= date('Y-m-d', strtotime($model->occurrence_date)) ?></div>
            <div class="col-xs-3">交货日期：<?= date('Y-m-d', strtotime($model->arrival_date)) ?></div>
        </div>
        <div class="row pt10">
            <div class="col-xs-3">厂商名称：<?= $model->supplier->name ?></div>
            <div class="col-xs-3">联系人：<?= $model->supplier->contact_name ?></div>
            <div class="col-xs-3">传真：<?= $model->supplier->fax ?></div>
            <div class="col-xs-3">联系电话：<?= $model->supplier->contact_phone ?></div>
        </div>

        <div class="row pt10">
            <!--    <div class="col-xs-3">订购日期：</div>-->
            <div class="col-xs-3">地址：<?= strip_tags($model->supplier->description) ?></div>
            <div class="col-xs-3">运输方式：</div>
            <div class="col-xs-3">部门：<?= $model->dept_manager_name ?></div>
            <div class="col-xs-3">经手人：<?= $model->financial_name ?></div>
        </div>

        <table class="table table-bordered mt10">

            <tr class="tc">
                <td class="box120">料号</td>
                <td class="box120">品名</td>
                <td class="box120">单位</td>
                <td class="box120">数量</td>
                <td class="box120">价格</td>
                <td class="box120">金额</td>
                <td class="memo">备注</td>
            </tr>

            <?php foreach ($model->noteItems as $item): ?>
                <tr class="tc">
                    <td class=""><?= $item->product->sku ?></td>
                    <td class=""><?= $item->product->name ?></td>
                    <td class=""><?= $item->measure->name ?></td>
                    <td class=""><?= $item->number ?></td>
                    <td class=""><?= $item->until_price ?></td>
                    <td class=""><?= $item->subtotal ?></td>
                    <td class=""><?= $item->memo ?></td>
                </tr>

            <?php endforeach; ?>

        </table>

        <div class="container-fluid">
            <p>备注：<?= $model->memo ?></p>
        </div>
    </div>

    <div class="alert alert-warning" role="alert"><?= Yii::t('app.c2', 'Pls fix the note items if there have wrongs.') ?></div>

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
            'product.name',
            // 'number',
            [
                'attribute' => 'number',
            ],
            // 'measure_id',
            'measure.name',
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
                    return \common\models\c2\statics\WarehouseCommitState::getData($model->type, 'label');
                }
            ],
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
                'template' => '{delete}',
            ],

        ],
    ]); ?>

    <?php
    echo Html::beginTag('div', ['class' => 'box-footer']);
    echo Html::a('<i class="fa fa-arrow-left"></i> ' . Yii::t('app.c2', 'Go Back'), 'javascript:history.go(-1)', ['data-pjax' => '0', 'class' => 'btn btn-default pull-right', 'title' => Yii::t('app.c2', 'Go Back'),]);
    echo Html::endTag('div');
    ?>

</div>
