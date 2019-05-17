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
        <h5 class="tc p20" style="font-size: 18px;text-align: center">送货订单</h5>


        <div class="row pt10">
            <div class="col-xs-3">SO:0085</div>
            <div class="col-xs-3">电话：<?= $model->warehouse->contact_phone ?></div>
            <div class="col-xs-3">传真：<?= $model->warehouse->fax ?></div>
            <div class="col-xs-3">送货日期：<?= date('Y-m-d', strtotime($model->occurrence_date))?></div>
        </div>

        <div class="row pt10">
            <div class="col-xs-3">收货单位：<?= $model->label ?></div>
        </div>

        <table class="table table-bordered mt10">
            <?php
            $grand_total = 0;
            ?>
            <tr class="tc">
                <td class="box120" >型号</td>
                <td class="box120">名称/规格</td>
                <td class="box120">单位</td>
                <td class="box120">数量</td>
                <td class="box120">件数</td>
                <td class="box120">单价</td>
                <td class="box120">金额/元</td>
                <td class="memo">备注</td>
            </tr>

            <?php foreach ($model->noteItems as $item): ?>
                <tr class="tc">
                    <td class=""><?= $item->product->sku ?></td>
                    <td class=""><?= $item->product->name ?></td>
                    <td class=""><?= $item->measure->label ?></td>
                    <td class=""><?= $item->quantity ?></td>
                    <td class=""><?= $item->pieces ?></td>
                    <td class=""><?= $item->product_price ?></td>
                    <td class=""><?= $item->subtotal ?></td>
                    <td class=""><?= $item->memo ?></td>
                    <?php $grand_total += $item->subtotal ?>
                </tr>

            <?php endforeach; ?>

            <tr class="">
                <td class="" colspan="5">合计金额大写(人民币)：元整</td>
                <td class="tc"><?= number_format($grand_total, 2) ?></td>
                <td class=""></td>
                <td class=""></td>
            </tr>

        </table>

        <div class="row pt10">
            <div class="col-xs-6">送货单位：<?= $model->warehouse->name ?></div>
            <div class="col-xs-6">地址：<?= $model->warehouse->address ?></div>
        </div>

        <div>
            <?= $model->memo ?>
        </div>
    </div>
    <div class="alert alert-warning" role="alert"><?= Yii::t('app.c2', 'Pls fix the note items if there have wrongs.') ?></div>

    <?php echo GridView::widget([
        'dataProvider' => $dataProvider,
        // 'filterModel' => $searchModel,
        'id' => $model->getPrefixName('grid'),
        'pjax' => true,
        'hover' => true,
        // 'showPageSummary' => true,
        // 'panel' => [
        //     'type' => GridView::TYPE_PRIMARY,
        //     'heading' => Yii::t('app.c2', 'Warehouse Send Item Models')
        // ],
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
            ],
            // 'production_number',
            [
                'attribute' => 'production_number',
            ],
            // 'stock_number',
            [
                'attribute' => 'stock_number',
            ],
            // 'memo',
            [
                'attribute' => 'memo',
                'format' => 'html'
            ],
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

    <?php
    echo Html::beginTag('div', ['class' => 'box-footer']);
    echo Html::a('<i class="fa fa-arrow-left"></i> ' . Yii::t('app.c2', 'Go Back'), 'javascript:history.go(-1)', ['data-pjax' => '0', 'class' => 'btn btn-default pull-right', 'title' => Yii::t('app.c2', 'Go Back'),]);
    echo Html::endTag('div');
    ?>

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