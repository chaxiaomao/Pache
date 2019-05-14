<?php

use yii\helpers\Html;
use yii\widgets\DetailView;


?>
<div class="product-model-detail">

    <?= DetailView::widget([
    'model' => $model,
    'attributes' => [
                'id',
            'eshop_id',
            'type',
            'seo_code',
            'sku',
            'serial_number',
            'breadcrumb',
            'name',
            'label',
            'meta_title',
            'meta_keywords',
            'meta_description:ntext',
            'is_score_exchange',
            'score_exchange_method',
            'score',
            'gift_score',
            'require_setup',
            'is_install',
            'install_price',
            'low_price',
            'sales_price',
            'cost_price',
            'market_price',
            'brand_id',
            'supplier_id',
            'currency_id',
            'measure_id',
            'summary:ntext',
            'description:ntext',
            'views_count',
            'comment_count',
            'sold_count',
            'virtual_sold_count',
            'is_released',
            'released_at',
            'created_by',
            'updated_by',
            'status',
            'position',
            'created_at',
            'updated_at',
    ],
    ]) ?>

</div>

