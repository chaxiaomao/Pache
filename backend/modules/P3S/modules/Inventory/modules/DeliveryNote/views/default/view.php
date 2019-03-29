<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\c2\entity\InventoryDeliveryNote */

$this->title = "# {$model->code}";
$this->params['breadcrumbs'][] = ['label' => Yii::t('app.c2', 'Inventory Delivery Notes'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<?= $this->render('_detail', ['model' => $model]); ?>