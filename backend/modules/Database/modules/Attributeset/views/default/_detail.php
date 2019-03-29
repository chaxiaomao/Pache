<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<div class="attributeset-model-detail">

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
                'id',
            'eshop_id',
            'type',
            'code',
            'name',
            'label',
            'status',
            'position',
            'created_at',
            'updated_at',
    ],
    ]) ?>

</div>

