
<?php

$productPackageModel = $model->productPackage;
?>



<div class="container-fluid pt10">

    <div class="panel panel-default">
        <div class="panel-heading">材料出仓细项</div>
        <div class="panel-body">
            <table class="table table-bordered mt10" style="background-color: lightgoldenrodyellow">

                <tr class="tc">
                    <td class="">名称/规格</td>
                    <td class="">名称</td>
                    <td class="">型号</td>
                    <td class="">组成个数</td>
                    <td class="">单位</td>
                    <td class="">个/<?= $model->measure->name ?></td>
                    <td class="">件数</td>
                    <td class="">总和</td>
                </tr>

                <?php foreach ($model->productCombinationItems as $item): ?>

                    <tr class="tc">
                        <td class=""><?= $item->product->sku ?></td>
                        <td class=""><?= $item->product->name ?></td>
                        <td class=""><?= $item->product->value ?></td>
                        <td class=""><?= $item->number ?></td>
                        <td class=""><?= $model->measure->name ?></td>
                        <td class=""><?= $productPackageModel->number ?></td>
                        <td class=""><?= $model->production_number ?></td>
                        <td class=""><?= $model->production_number * $productPackageModel->number *$item->number ?></td>
                    </tr>

                <?php endforeach; ?>

            </table>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading">包装出仓细项</div>
        <div class="panel-body">
            <table class="table table-bordered" style="background-color: lightgoldenrodyellow">

                <tr class="tc">
                    <td class="">名称/规格</td>
                    <td class="">名称</td>
                    <td class="">型号</td>
                    <td class="">个数</td>
                    <td class="">件数</td>
                    <td class="">总和</td>
                </tr>

                <?php foreach ($model->productPackageItems as $item): ?>

                    <tr class="tc">
                        <td class=""><?= $item->product->sku ?></td>
                        <td class=""><?= $item->product->name ?></td>
                        <td class=""><?= $item->product->value ?></td>
                        <td class=""><?= $item->number ?></td>
                        <td class=""><?= $model->production_number ?></td>
                        <td class=""><?= $model->production_number * $item->number ?></td>
                    </tr>

                <?php endforeach; ?>

            </table>
        </div>
    </div>




</div>
