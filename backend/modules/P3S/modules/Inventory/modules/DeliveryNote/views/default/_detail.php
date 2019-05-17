<h2 class="tc" style="font-size: 30px;">中山市祥丰家居用品有限公司</h2>
<h5 class="tc p20" style="font-size: 18px;">送货订单</h5>


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
        <td class="box120">件数</td>
        <td class="box120">数量</td>
        <td class="box120">单价</td>
        <td class="box120">金额/元</td>
        <td class="memo">备注</td>
    </tr>

    <?php foreach ($model->noteItems as $item): ?>
        <tr class="tc">
            <td class=""><?= $item->product->sku ?></td>
            <td class=""><?= $item->product->name ?></td>
            <td class=""><?= $item->measure->label ?></td>
            <td class=""><?= $item->pieces ?></td>
            <td class=""><?= $item->quantity ?></td>
            <td class=""><?= $item->factory_price ?></td>
            <td class=""><?= $item->subtotal ?></td>
            <td class=""><?= $item->memo ?></td>
            <?php $grand_total += $item->subtotal ?>
        </tr>

    <?php endforeach; ?>

    <tr class="">
        <td class="" colspan="6">合计金额大写(人民币)：元整</td>
        <td class="tc"><?= number_format($grand_total, 2) ?></td>
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