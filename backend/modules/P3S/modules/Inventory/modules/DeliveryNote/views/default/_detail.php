<?php

use yii\helpers\Html;
use yii\widgets\DetailView;
?>
<div class="delivery">
    <div class="delivery_page fs-12"></div>
    <div class="delivery_title fs-20">中山市可比科技有限公司</div>
    <div class="delivery_lasttitle fs-18">发&nbsp;货&nbsp;单</div>
    <div class="delivery_cusxinxi">
        <div class="delivery_customer">
            <div class="delivery_customer_name overText">客户名称 : <?= $model->salesOrder->salesOrderAddress->fullname; ?></div>
            <div class="delivery_customer_name overText">联系人 : <?= $model->contact_man; ?></div>
        </div>
        <div class="delivery_time">
            <div class="delivery_timethis overText">订单号: <?= $model->salesOrder->code; ?></div>
            <div class="delivery_timethis overText">单号: <?= $model->code; ?></div>
        </div>
    </div>
    <div class="delivery_cusxinxi">
        <div class="delivery_customer">
            <div class="delivery_customeraddress overText">客户地址 : <?= $model->salesOrder->salesOrderAddress->address; ?></div>
        </div>
        <div class="delivery_time">
            <div class="delivery_timethis overText">电话: <?= $model->salesOrder->salesOrderAddress->phone; ?></div>
            <div class="delivery_timethis overText">发货日期: <?= $model->occurrence_date; ?></div>
        </div>
    </div>
    <div class="delivery_body">
        <ul class="overText deliveryfirstul">
            <li class="delivery_li1 delivery_linecenter fs-12">产品名称</li>
            <li class="delivery_li21 delivery_linecenter fs-12">规格</li>
            <li class="delivery_li3 delivery_linecenter fs-12">单位</li>
            <li class="delivery_li4 delivery_linecenter fs-12">数量</li>
            <li class="delivery_li5 delivery_linecenter fs-12">标准价</li>
            <li class="delivery_li6 delivery_linecenter fs-12">金额</li>
            <li class="delivery_li7 delivery_linecenter fs-12">件数</li>
            <li class="delivery_li8 delivery_linecenter delivery_noright fs-12">体积</li>
        </ul>
        <?php
        $qtyTotal = 0;
        $piecesTotal = 0;
        $volumeTotal = 0;
        $i = 0;
        foreach ($model->activeNoteItems as $item) {
            $qtyTotal += $item->quantity;
            $piecesTotal += $item->pieces;
            $volumeTotal += $item->volume;
            echo Html::beginTag('ul', ['class' => "deliverylastul"]);
            echo Html::tag('li', $item->product->label, ['class' => 'delivery_li1 delivery_linecenter fs-12']);
            echo Html::tag('li', $item->sku_label, ['class' => 'delivery_li21 delivery_linecenter fs-12']);
            echo Html::tag('li', $item->measure->label, ['class' => 'delivery_li3 delivery_linecenter fs-12']);
            echo Html::tag('li', $item->quantity, ['class' => 'delivery_li4 delivery_linecenter fs-12']);
//            echo Html::tag('li', $item->product_price, ['class' => 'delivery_li5 delivery_linecenter fs-12']);
            echo Html::tag('li', '', ['class' => 'delivery_li5 delivery_linecenter fs-12']);
            echo Html::tag('li', $item->factory_price, ['class' => 'delivery_li6 delivery_linecenter fs-12']);
            echo Html::tag('li', $item->pieces, ['class' => 'delivery_li7 delivery_linecenter fs-12']);
            echo Html::tag('li', $item->volume, ['class' => 'delivery_li8 delivery_linecenter delivery_noright fs-12']);
            echo Html::endTag('ul');
            $i++;
        }
        ?>
        <!--        <ul class="overText deliverylastulje">
                    <li class="delivery_li1 delivery_lineleft fs-12">每页合计:</li>
                    <li class="delivery_li2 delivery_linecenter fs-12"></li>
                    <li class="delivery_li3 delivery_linecenter fs-12"></li>
                    <li class="delivery_li4 delivery_linecenter fs-12">142.00</li>
                    <li class="delivery_li5 delivery_linecenter fs-12"></li>
                    <li class="delivery_li6 delivery_linecenter fs-12">3190.60</li>
                    <li class="delivery_li7 delivery_linecenter fs-12">8.00</li>
                    <li class="delivery_li8 delivery_linecenter delivery_noright fs-12">0.84</li>
                </ul>-->
        <ul class="overText deliverylastulje">
            <li class="delivery_li1 delivery_linecenter fs-12">合计</li>
            <li class="delivery_li2 delivery_linecenter fs-12"></li>
            <li class="delivery_li3 delivery_linecenter fs-12"></li>
            <li class="delivery_li4 delivery_linecenter fs-12"><?= $qtyTotal; ?></li>
            <li class="delivery_li5 delivery_linecenter fs-12"></li>
            <li class="delivery_li6 delivery_linecenter fs-12"><?= $model->grand_total; ?></li>
            <li class="delivery_li7 delivery_linecenter fs-12"><?= $piecesTotal; ?></li>
            <li class="delivery_li8 delivery_linecenter delivery_noright fs-12"><?= $volumeTotal; ?></li>
        </ul>
    </div>
    <div class="delivery_payment">
        <div class="delivery_pay fs-12 overText">付款方式 : <?= $model->payment_method; ?></div>
        <div class="delivery_pay fs-12 overText">运输方式(托运方式) : <?= $model->delivery_method; ?> </div>
    </div>
    <div class="delivery_payment">
        <div class="delivery_name fs-12 overText">白联 : 仓库</div>
        <div class="delivery_name fs-12 overText">红联 : 客户</div>
        <div class="delivery_name fs-12 overText">蓝联 : 留底</div>
        <div class="delivery_name fs-12 overText">绿联 : 财务</div>
        <div class="delivery_name fs-12 overText">黄联 : 审核</div>
    </div>
    <div class="delivery_payment">
        <div class="delivery_payname fs-12 overText">制&nbsp;单&nbsp;人 : <?= $model->creator->profile->fullname; ?></div>
        <div class="delivery_payname fs-12 overText">客服审核 : <?= $model->cs_name; ?></div>
        <div class="delivery_payname fs-12 overText">发货人 : <?= $model->sender_name; ?></div>
        <div class="delivery_payname fs-12 overText">财务审核 : <?= $model->financial_name; ?></div>
    </div>
    <footer class="delivery_address fs-12 overText">
        <div class="delivery_addressphone fs-12 overText">地址 : 中山市小榄镇埒西一海威路</div> 
        <div class="delivery_addressphone fs-12 overText">电话 : 0760-86167761/22550976</div> 
        <div class="delivery_addressphone fs-12 overText">传真 : 0760-86167760</div>
    </footer>
</div>
