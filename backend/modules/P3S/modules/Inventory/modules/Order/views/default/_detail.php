<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>

<h2 class="tc" style="font-size: 30px;">中山市祥丰家居用品有限公司</h2>
<h5 class="tc p20" style="font-size: 18px;">销售订单</h5>

<div class="row pt10">
    <div class="col-xs-4">客户：<?= $model->user->username ?></div>
    <div class="col-xs-4">PO.NO:<?= $model->code ?></div>
    <div class="col-xs-4">排产日期：<?= date('Y-m-d', strtotime($model->production_date)) ?></div>
</div>
<div class="row pt10">
    <div class="col-xs-4">出货日期：<?= date('Y-m-d', strtotime($model->delivery_date))?></div>
</div>
<table class="table table-bordered mt10">

    <tr class="tc">
        <td class="box120">产品编号</td>
        <td class="box120">产品名称</td>
        <td class="box120">数量</td>
        <td class="box120">件数</td>
        <td class="box120">包装</td>
        <td class="box120">尺码</td>
        <td class="box120">毛重</td>
        <td class="box120">净重</td>
        <td class="memo">备注</td>
    </tr>

    <?php foreach ($model->orderItems as $item): ?>
        <tr class="tc">
            <td class="success"><?= $item->product->sku ?></td>
            <td class="success"><?= $item->label ?></td>
            <td class="success"><?= $item->productPack->pre_num ?></td>
            <td class="success"><?= $item->pieces ?></td>
            <td class="success"><?= $item->productPack->label ?></td>
            <td class="success"><?= $item->productPack->outpackMaterial->value ?></td>
            <td class="success"><?= $item->productPack->gross_weight ?></td>
            <td class="success"><?= $item->productPack->net_weight ?></td>
            <td class="success"><?= $item->memo ?></td>
        </tr>
    <?php foreach ($item->product->getMaterialOptions('id', 'label', ['withValue' => true]) as $item): ?>
        <tr class="tc">
            <td class=""></td>
            <td class=""><?= $item['label'] ?></td>
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

<div>
    <?= $model->memo ?>
</div>