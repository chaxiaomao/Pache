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
            <li class="list-group-item"><?= $datum['label'] .":".$datum['value'] ?></li>
    <?php endforeach; ?>
    <?php endif; ?>

</ul>