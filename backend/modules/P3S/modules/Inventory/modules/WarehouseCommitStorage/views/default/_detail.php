<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<div class="warehouse-commit-storage-item-model-detail">

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
                'id',
            'type',
            'note_id',
            'product_id',
            'number',
            'measure_id',
            'memo',
            'state',
            'status',
            'position',
            'created_at',
            'updated_at',
    ],
    ]) ?>

</div>

