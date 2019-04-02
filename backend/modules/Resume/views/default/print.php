<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/2
 * Time: 21:03
 */

use yii\helpers\Html;

?>

<style>
    a {
        font-size: 14px;
    }
    .mb10 {
        margin-bottom: 10px;
    }
</style>

<div class="container">
    <ul class="nav nav-tabs mb10">
        <li role="presentation" class="active"><a href="#"><?= Yii::t('app.c2', 'Self Profile') ?></a></li>
        <li role="presentation"><a href="#"><?= Yii::t('app.c2', 'Experience') ?></a></li>
    </ul>
    <div class="row">
        <div class="col-xs-6">
            <div class="input-group mb10">
                <span class="input-group-addon" id="basic-addon1"><a class="glyphicon glyphicon-user"></a></span>
                <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1" value="<?= $model->name ?>">
            </div>
            <div class="input-group mb10">
                <span class="input-group-addon" id="basic-addon1"><a class="glyphicon glyphicon-earphone"></a></span>
                <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1" value="<?= $model->mobile_num ?>">
            </div>
        </div>
        <div class="col-xs-6">
            <div class="input-group mb10">
                <input type="text" class="form-control" placeholder="Recipient's username" aria-describedby="basic-addon2" value="<?= $model->email ?>">
                <span class="input-group-addon" id="basic-addon2">@qq.com</span>
            </div>
            <div class="input-group mb10">
                <span class="input-group-addon" id="basic-addon1"><a class="glyphicon glyphicon-education"></a></span>
                <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1" value="<?= $model->education ?>">
            </div>
        </div>
        <div class="col-xs-6">
            <div class="input-group mb10">
                <span class="input-group-addon" id="basic-addon1"><a class="glyphicon glyphicon-map-marker"></a></span>
                <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1" value="东莞">
            </div>
        </div>
        <div class="col-xs-6">
            <div class="input-group mb10">
                <span class="input-group-addon" id="basic-addon1"><a class="glyphicon glyphicon-wrench"></a></span>
                <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1" value="<?= $model->industry ?>">
            </div>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading"><?= Yii::t('app.c2', 'Self Profile') ?></div>
        <div class="panel-body">
            <?= $model->description ?>
        </div>
    </div>


    <ul class="nav nav-tabs mb10">
        <li role="presentation"><a href="#"><?= Yii::t('app.c2', 'Self Profile') ?></a></li>
        <li role="presentation" class="active"><a href="#"><?= Yii::t('app.c2', 'Experience') ?></a></li>
    </ul>

    <div class="panel panel-default">
        <div class="panel-heading"><?= Yii::t('app.c2', 'Experience') ?></div>
        <div class="panel-body">
            <?= $model->content ?>
        </div>
    </div>

    <div class="panel panel-default">
        <div class="panel-heading"><?= Yii::t('app.c2', 'Situation') ?></div>
        <div class="panel-body">
            <?= $model->memo ?>
        </div>
    </div>

</div>


