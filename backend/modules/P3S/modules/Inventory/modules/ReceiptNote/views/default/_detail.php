

<h2 class="tc" style="font-size: 30px;">中山市祥丰家居用品有限公司</h2>
<h5 class="tc p20" style="font-size: 18px;">采购订单</h5>

<div class="row pt10">
    <div class="col-xs-3">订单编号：<?= $model->arrival_number ?></div>
    <div class="col-xs-3">ISO标号：</div>
    <div class="col-xs-3">结算方式：</div>
    <div class="col-xs-3">交货日期：<?= date('Y-m-d', strtotime($model->occurrence_date))?></div>
</div>
<div class="row pt10">
<!--    <div class="col-xs-3">订购日期：</div>-->

    <div class="col-xs-3">厂商名称：</div>
    <div class="col-xs-3">联系人：<?= $model->receiver_name ?></div>
    <div class="col-xs-3">传真：</div>
    <div class="col-xs-3">联系电话：</div>
</div>

<div class="row pt10">
    <!--    <div class="col-xs-3">订购日期：</div>-->
    <div class="col-xs-3">地址：</div>
    <div class="col-xs-3">运输方式：<?= $model->receiver_name ?></div>
    <div class="col-xs-3">部门：</div>
    <div class="col-xs-3">经手人：</div>
</div>

<table class="table table-bordered mt10">

    <tr class="tc">
        <td class="">料号</td>
        <td class="">品名</td>
        <td class="">单位</td>
        <td class="">数量</td>
        <td class="">价格</td>
        <td class="">金额</td>
        <td class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>

    <?php foreach ($model->activeNoteItems as $item): ?>
        <tr class="tc">
            <td class=""><?= $item->product->sku ?></td>
            <td class=""><?= $item->product->name ?></td>
            <td class=""><?= $item->measure->label ?></td>
            <td class=""><?= $item->quantity ?></td>
            <td class=""><?= $item->until_price ?></td>
            <td class=""><?= $item->subtotal ?></td>
            <td class=""><?= $item->memo ?></td>
        </tr>


    <?php endforeach; ?>

</table>