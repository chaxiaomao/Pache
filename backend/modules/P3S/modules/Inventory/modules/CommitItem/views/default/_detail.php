<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<div class="warehouse-commit-item-model-detail">

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
                'id',
            'note_id',
            'product_id',
            'product_sku_id',
            'sku_label',
            'supplier_id',
            'quantity',
            'until_price',
            'subtotal',
            'measure_id',
            'purcharse_order_code',
            'memo',
            'status',
            'position',
            'created_at',
            'updated_at',
    ],
    ]) ?>

</div>

