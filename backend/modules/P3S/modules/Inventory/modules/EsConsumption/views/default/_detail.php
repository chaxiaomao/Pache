<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<div class="order-item-consumption-model-detail">

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
                'id',
            'order_id',
            'product_id',
            'material_id',
            'material_item_id',
            'quantity',
            'consumed_num',
            'subtotal',
            'measure_id',
            'memo',
            'status',
            'position',
            'created_at',
            'updated_at',
            'Column_15',
    ],
    ]) ?>

</div>

