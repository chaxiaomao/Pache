<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<div class="resume-model-detail">

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
                'id',
            'name',
            'mobile_num',
            'email:email',
            'description',
            'education',
            'school',
            'major',
            'industry',
            'expect_salary',
            'expect_industry',
            'content',
            'memo',
            'status',
            'created_at',
            'updated_at',
    ],
    ]) ?>

</div>

