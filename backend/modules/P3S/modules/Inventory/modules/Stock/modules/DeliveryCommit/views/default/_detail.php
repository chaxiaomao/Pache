<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<div class="warehouse-delivery-commit-item-model-detail">

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
                'id',
            'note_id',
            'product_id',
            'product_sku_id',
            'sku_label',
            'customer_id',
            'quantity',
            'actual_quantity',
            'stock_quantity',
            'measure_id',
            'volume',
            'weight',
            'pieces',
            'product_price',
            'factory_price',
            'subtotal',
            'memo',
            'status',
            'position',
            'created_at',
            'updated_at',
    ],
    ]) ?>

</div>

