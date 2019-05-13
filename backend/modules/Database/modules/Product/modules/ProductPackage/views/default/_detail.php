<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<div class="product-package-model-detail">

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
                'id',
            'product_id',
            'code',
            'name',
            'label',
            'value',
            'number',
            'gross_weight',
            'net_weight',
            'status',
            'position',
            'created_at',
            'updated_at',
    ],
    ]) ?>

</div>

