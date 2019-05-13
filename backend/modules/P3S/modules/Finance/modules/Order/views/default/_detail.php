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
            'code',
            'label',
            'production_date',
            'delivery_date',
            'created_by',
            'updated_by',
            'memo',
            'state',
            'status',
            'position',
            'created_at',
            'updated_at',
    ],
    ]) ?>

</div>

