<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<table class="table table-bordered mt10">

    <tr class="tc">
        <td class="box120">订单编号</td>
        <td class="box120">产品名称</td>
        <td class="box120">单位</td>
        <td class="box120">订购数量</td>
        <td class="box120">用料数量</td>
        <td class="box120">尺码</td>
        <td class="box120">毛重</td>
        <td class="box120">净重</td>
        <td class="memo">备注</td>
    </tr>

    <?php foreach ($model->orderItems as $item): ?>
        <tr class="tc">
            <td class="success"><?= $item->product->sku ?></td>
            <td class="success"><?= $item->product->name ?></td>
            <td class="success"><?= $item->getSummerProduct() ?></td>
            <td class="success"><?= $item->number ?></td>
            <td class="success"><?= $item->productPackage->label ?></td>
            <td class="success"></td>
            <td class="success"><?= $item->productPackage->gross_weight ?></td>
            <td class="success"><?= $item->productPackage->net_weight ?></td>
            <td class="success"><?= $item->memo ?></td>
        </tr>

    <?php endforeach; ?>


</table>

