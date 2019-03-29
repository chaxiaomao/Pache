<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<div class="product-stock-detail">

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
                'id',
            'eshop_id',
            'warehouse_id',
            'product_id',
            'sku',
            'product_sku_id',
            'num',
            'state',
            'status',
            'position',
            'created_at',
            'updated_at',
    ],
    ]) ?>

</div>

