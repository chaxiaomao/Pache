
<h2 class="tc" style="font-size: 30px;">中山市祥丰家居用品有限公司</h2>
<h5 class="tc p20" style="font-size: 18px;">送货订单</h5>


<div class="row pt10">
    <div class="col-xs-3">SO:0085</div>
    <div class="col-xs-3">电话：</div>
    <div class="col-xs-3">传真：<?= $model->warehouse->phone ?></div>
    <div class="col-xs-3">送货日期：<?= date('Y-m-d', strtotime($model->occurrence_date))?></div>
</div>

<div class="row pt10">
    <div class="col-xs-3">收货单位：</div>
</div>

<table class="table table-bordered mt10">

    <tr class="tc">
        <td class="">型号</td>
        <td class="">名称/规格</td>
        <td class="">单位</td>
        <td class="">数量</td>
        <td class="">单价</td>
        <td class="">金额/元</td>
        <td class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>

    <?php foreach ($model->activeNoteItems as $item): ?>
        <tr class="tc">
            <td class=""><?= $item->product->sku ?></td>
            <td class=""><?= $item->product->name ?></td>
            <td class=""><?= $item->measure->label ?></td>
            <td class=""><?= $item->quantity ?></td>
            <td class=""><?= $item->factory_price ?></td>
            <td class=""><?= $item->subtotal ?></td>
            <td class=""><?= $item->memo ?></td>
        </tr>

    <?php endforeach; ?>

</table>

<div class="row pt10">
    <div class="col-xs-6">送货单位：<?= $model->warehouse->name ?></div>
    <div class="col-xs-6">地址：<?= $model->warehouse->address ?></div>
</div>

<div>
    <p><?= $model->memo ?></p>
</div>