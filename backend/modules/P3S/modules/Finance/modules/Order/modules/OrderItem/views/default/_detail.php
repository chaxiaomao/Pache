<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<div class="order-item-model-detail">

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
                'id',
            'order_id',
            'product_id',
            'label',
            'number',
            'measure_id',
            'product_combination_id',
            'product_package_id',
            'memo',
            'status',
            'position',
            'created_at',
            'updated_at',
    ],
    ]) ?>

</div>

