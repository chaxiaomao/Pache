<?php

namespace common\models\c2\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\c2\entity\InventoryNoteLogModel;

/**
 * InventoryNoteLog represents the model behind the search form about `common\models\c2\entity\InventoryNoteLog`.
 */
class InventoryNoteLogSearch extends InventoryNoteLogModel {

    /**
     * @inheritdoc
     */
    public function rules() {
        return [
            [['id', 'note_id', 'warehouse_id', 'updated_by', 'created_by', 'position'], 'integer'],
            [['type', 'label', 'occurrence_date', 'memo', 'status', 'updated_at', 'created_at'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios() {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params) {
        $query = InventoryNoteLogModel::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'sort' => [
                'sortParam' => $this->getSortParamName(),
            ],
            'pagination' => [
                'pageParam' => $this->getPageParamName(),
                'pageSize' => 20,
            ],
        ]);

        $dataProvider->setSort([
            'attributes' => [
                'id',
                'created_at',
                'position',
            ],
            'defaultOrder' => ['position' => SORT_DESC, 'id' => SORT_DESC],
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'note_id' => $this->note_id,
            'warehouse_id' => $this->warehouse_id,
            'occurrence_date' => $this->occurrence_date,
            'updated_by' => $this->updated_by,
            'created_by' => $this->created_by,
            'position' => $this->position,
            'updated_at' => $this->updated_at,
            'created_at' => $this->created_at,
        ]);

        $query->andFilterWhere(['like', 'type', $this->type])
            ->andFilterWhere(['like', 'label', $this->label])
            ->andFilterWhere(['like', 'memo', $this->memo])
            ->andFilterWhere(['like', 'status', $this->status]);

        return $dataProvider;
    }

    public function getPageParamName($splitor = '-') {
        $name = "InventoryNoteLogModelPage";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }

    public function getSortParamName($splitor = '-') {
        $name = "InventoryNoteLogModelSort";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }

}
