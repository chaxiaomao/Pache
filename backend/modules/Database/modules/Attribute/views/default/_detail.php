<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<div class="attribute-model-detail">

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
                'id',
            'eshop_id',
            'type',
            'code',
            'name',
            'label',
            'hint',
            'input_type',
            'default_value:ntext',
            'memo:ntext',
            'is_sku',
            'is_visible',
            'is_required',
            'is_unique',
            'is_depend',
            'depend_id',
            'status',
            'position',
            'created_at',
            'updated_at',
    ],
    ]) ?>

</div>

