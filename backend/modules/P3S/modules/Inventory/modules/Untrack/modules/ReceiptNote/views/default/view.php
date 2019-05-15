<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\c2\entity\InventoryReceiptNoteModel */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app.c2', 'Inventory Receipt Note Models'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<?=  $this->render('_detail', ['model' => $model]); ?>

