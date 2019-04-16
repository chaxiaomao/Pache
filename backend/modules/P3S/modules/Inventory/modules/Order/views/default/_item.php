<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/15
 * Time: 23:26
 */
?>

<ul id="<?= $multipleItemsId ?>" class="list-group">
    <?php if ($model->isNewRecord): ?>
    <?php else: ?>
    <?php foreach ($data->product->getProductMaterialOptions() as $datum): ?>
            <span class="badge"><?= $datum['label'] .":".$datum['value'] ?></span>
    <?php endforeach; ?>
    <?php endif; ?>

</ul>