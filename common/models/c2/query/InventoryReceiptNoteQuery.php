<?php

namespace common\models\c2\query;

/**
 * This is the ActiveQuery class for [[\common\models\c2\entity\InventoryReceiptNoteModel]].
 *
 * @see \common\models\c2\entity\InventoryReceiptNoteModel
 */
class InventoryReceiptNoteQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * @inheritdoc
     * @return \common\models\c2\entity\InventoryReceiptNoteModel[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\entity\InventoryReceiptNoteModel|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}
