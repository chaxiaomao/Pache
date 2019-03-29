<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<div class="product-model-detail">

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
                'id',
            'type',
            'sku',
            'serial_number',
            'breadcrumb',
            'name',
            'label',
            'sales_price',
            'summary:ntext',
            'description:ntext',
            'currency_id',
            'measure_id',
            'is_released',
            'released_at',
            'created_by',
            'updated_by',
            'status',
            'position',
            'created_at',
            'updated_at',
    ],
    ]) ?>

</div>

