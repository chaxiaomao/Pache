<?php

use yii\helpers\Html;
use yii\widgets\Pjax;
use backend\modules\P3S\modules\Inventory\modules\Order\widgets\EntityDetail;

/* @var $this yii\web\View */
/* @var $model common\models\c2\entity\OrderModel */

if($model->isNewRecord){
$this->title = Yii::t('app.c2', '{actionTips} {modelClass}: ', ['actionTips' => Yii::t('app.c2', 'Create'), 'modelClass' => Yii::t('app.c2', 'Order Model'),]);
$this->params['breadcrumbs'][] = ['label' => Yii::t('app.c2', 'Order Models'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
}
else{
$this->title = Yii::t('app.c2', '{actionTips} {modelClass}: ', ['actionTips' => Yii::t('app.c2', 'Update'), 'modelClass' => Yii::t('app.c2', 'Order Model'),]) . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app.c2', 'Order Models'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = Yii::t('app.c2', 'Update');
}

?>

<?php Pjax::begin(['id' => $model->getDetailPjaxName(),  'enablePushState' => false, 'clientOptions' =>[
    'skipOuterContainers'=>true
]]) ?>

<div class="modal-header">
    <button type="button" class="fa fa-close close" data-dismiss="modal" aria-hidden="true"></button>
    <button type="button" class="fa fa-window-maximize close"></button>
    <i class="fa fa-th"></i> <?=  $this->title ?>
</div>

<div class="modal-body">

<?php echo EntityDetail::widget([
    'model' => $model,
    'tabTitle' =>  $this->title,
]);
?>
</div>

<div class="modal-footer">
</div>

<?php $js = "";
$js.= "jQuery('{$model->getDetailPjaxName(true)}').off('pjax:send').on('pjax:send', function(){jQuery.fn.czaTools('showLoading', {selector:'.modal-content', 'msg':''});});\n";
$js.= "jQuery('{$model->getDetailPjaxName(true)}').off('pjax:complete').on('pjax:complete', function(){jQuery.fn.czaTools('hideLoading', {selector:'.modal-content'});});\n";
$this->registerJs($js);
?>
<?php  Pjax::end() ?>

