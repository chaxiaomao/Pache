<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<div class="inventory-note-log-detail">

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
                'id',
            'note_id',
            'type',
            'label',
            'warehouse_id',
            'occurrence_date',
            'memo:ntext',
            'updated_by',
            'created_by',
            'status',
            'position',
            'updated_at',
            'created_at',
    ],
    ]) ?>

</div>

