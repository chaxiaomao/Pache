<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
$css = "
.w25{width: 25%;}
.w05{width: 5%;}
.w08{width: 8%;}
.w12{width: 12%;}
.w20{width: 20%;}
.w50{width:50%;}
";
$this->registerCss($css);
?>
<div class="receipt">
    <div class="receipt_page fs-12"></div>
    <div class="receipt_title fs-20">中山市可比优居家居用品有限公司</div>
    <div class="receipt_lasttitle fs-18">采购入库单</div>
    <div class="receipt_body">
        <div class="receipt_left verCenter">
            <div class="receipt_leftlttitle fontw fs-14">供货单位 : <?= $model->supplier->label; ?></div>
            <div class="receipt_leftlttitle fs-14">到货单号 : <?= $model->arrival_number; ?></div>
            <div class="receipt_leftlttitle fs-14">备注 : <?= $model->memo; ?></div>
        </div>
        <div class="receipt_right verCenter">
            <div class="receipt_rightlttitle fs-14">入库单号 : <?= $model->code; ?></div>
            <div class="receipt_rightlttitle fs-14">入库日期 : <?= $model->occurrence_date; ?></div>
            <div class="receipt_rightlttitle fs-14">入库仓库 : <?= $model->warehouse->label; ?></div>
        </div>
    </div>
    <div class="receipt_body">
        <ul class="overText firstul">
            <li class="w25 fs-12">料号</li>
            <li class="w25 fs-12">品名</li>
            <li class="w05 fs-12">单位</li>
            <li class="w05 fs-12">数量</li>
            <li class="w08 fs-12">单价</li>
            <li class="w12 fs-12">金额</li>
            <li class="w20 receipt_noright fs-12">备注</li>
        </ul>
        <?php
        $i = 0;
        $sum = 0;
        $grantTotal = 0.00;
        foreach ($model->activeNoteItems as $item) {
            echo Html::beginTag('ul', ['class' => "overText lastul"]);
            // echo Html::tag('li', $i + 1, ['class' => "w25 fs-12"]);
            echo Html::tag('li', $item->product->label, ['class' => 'w25 fs-12']);
            echo Html::tag('li', $item->product->label, ['class' => 'w25 fs-12']);
            echo Html::tag('li', $item->measure->label, ['class' => 'w05 fs-12']);
            echo Html::tag('li', $item->quantity, ['class' => 'w05 fs-12']);
            echo Html::tag('li', $item->until_price, ['class' => 'w08 fs-12']);
            echo Html::tag('li', $item->subtotal, ['class' => 'w12 fs-12']);
            echo Html::tag('li', $item->purcharse_order_code, ['class' => 'w20 receipt_noright fs-12']);
            echo Html::endTag('ul');
            $i++;
            $sum += $item->quantity;
            $grantTotal += $item->subtotal;
        }
        ?>
        <ul class="overText">
            <li class="w50 fs-12">合计</li>
            <li class="w05 fs-12"></li>
            <li class="w05 fs-12"><?= $sum ?></li>
            <li class="w08 fs-12"></li>
            <li class="w12 fs-12"><?= number_format($grantTotal, 2) ?></li>
            <li class="w20 fs-12 receipt_noright"></li>
        </ul>
    </div>
    <div class="receipt_namebody">
        <div class="receipt_name fs-12 overText">制单人 : <?= $model->creator->profile->fullname; ?></div>
        <div class="receipt_name fs-12 overText">部门主管 : <?= $model->dept_manager_name; ?></div>
        <div class="receipt_name fs-12 overText">采购 : <?= $model->buyer_name; ?></div>
        <div class="receipt_name fs-12 overText">财务 : <?= $model->financial_name; ?></div>
        <div class="receipt_name fs-12 overText">收货人 : <?= $model->receiver_name; ?></div>
        <div class="receipt_name fs-12 overText">红联 : 财务</div>
        <div class="receipt_name fs-12 overText">黄联 : 供应商</div>
        <div class="receipt_name fs-12 overText">白联 : 仓库</div>
    </div>
    <footer class="receipt_address fs-12 overText">
        地址 : <?= $model->warehouse->address; ?>
    </footer>
</div>

