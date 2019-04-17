<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>

<h2 class="tc" style="font-size: 30px;">中山市祥丰家居用品有限公司</h2>
<h5 class="tc p20" style="font-size: 18px;">销售订单</h5>

<div class="row pt10">
    <div class="col-xs-4">客户：<?= $model->user->username ?></div>
    <div class="col-xs-4">PO.NO:<?= $model->order_no ?></div>
    <div class="col-xs-4">排产日期：<?= date('Y-m-d', strtotime($model->production_date)) ?></div>
</div>
<div class="row pt10">
    <div class="col-xs-4">出货日期：<?= date('Y-m-d', strtotime($model->delivery_date))?></div>
</div>
<table class="table table-bordered mt10">

    <tr class="tc">
        <td class="">产品编号</td>
        <td class="">产品名称</td>
        <td class="">数量</td>
        <td class="">件数</td>
        <td class="">包装</td>
        <td class="">尺码</td>
        <td class="">毛重</td>
        <td class="">净重</td>
        <td class="">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    </tr>

    <?php foreach ($model->orderItems as $item): ?>
        <tr class="tc">
            <td class=""><?= $item->product->sku ?></td>
            <td class=""><?= $item->product->name ?></td>
            <td class=""><?= $item->num ?></td>
            <td class=""><?= $item->pieces ?></td>
            <td class=""><?= $item->packing ?></td>
            <td class=""><?= $item->size ?></td>
            <td class=""><?= $item->gross_weight ?></td>
            <td class=""><?= $item->net_weight ?></td>
            <td class=""><?= $item->memo ?></td>
        </tr>
    <?php foreach ($item->product->getMaterialOptions('id', 'label', ['withValue' => true]) as $item): ?>
        <tr class="tc">
            <td class=""></td>
            <td class=""><?= $item ?></td>
            <td class=""></td>
            <td class=""></td>
            <td class=""></td>
            <td class=""></td>
            <td class=""></td>
            <td class=""></td>
            <td class=""></td>
        </tr>
        <?php endforeach; ?>

    <?php endforeach; ?>

</table>

