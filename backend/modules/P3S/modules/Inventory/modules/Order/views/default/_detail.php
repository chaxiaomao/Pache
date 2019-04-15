<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<div class="order-model-detail">

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
                'id',
            'user_id',
            'order_no',
            'production_date',
            'delivery_date',
            'created_by',
            'updated_by',
            'status',
            'created_at',
            'updated_at',
    ],
    ]) ?>

</div>

