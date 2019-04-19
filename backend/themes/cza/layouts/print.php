<?php

use yii\helpers\Html;

/* @var $this \yii\web\View */
/* @var $content string */

yii\bootstrap\BootstrapAsset::register($this);

// $theme = $this->theme;
// $this->registerCssFile($theme->getUrl('css/print.css'));
?>

<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
    <head>
        <meta charset="<?= Yii::$app->charset ?>"/>
        <meta name="screen-orientation" content="portrait">
        <?= Html::csrfMetaTags() ?>
        <title><?= Html::encode($this->title) ?></title>
        <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<!--        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">-->
        <?php $this->head() ?>
    </head>
    <body class="bg-f5">
        <?php $this->beginBody() ?>
        <?= $content ?>

        <?php $this->endBody() ?>
    </body>
</html>
<?php $this->endPage() ?>
