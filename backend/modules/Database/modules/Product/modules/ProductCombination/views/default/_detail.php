<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<div class="product-combination-model-detail">

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
                'id',
            'product_id',
            'code',
            'name',
            'label',
            'value',
            'status',
            'position',
            'created_at',
            'updated_at',
    ],
    ]) ?>

</div>

