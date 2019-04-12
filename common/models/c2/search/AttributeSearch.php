<?php

namespace common\models\c2\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\c2\entity\AttributeModel;

/**
 * AttributeSearch represents the model behind the search form about `common\models\c2\entity\AttributeModel`.
 */
class AttributeSearch extends AttributeModel
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'eshop_id', 'depend_id', 'position'], 'integer'],
            [['type', 'code', 'name', 'label', 'hint', 'input_type', 'default_value', 'memo', 'is_sku', 'is_visible', 'is_required', 'is_unique', 'is_depend', 'status', 'created_at', 'updated_at'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
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
    public function search($params)
    {
        $query = AttributeModel::find();

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

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'eshop_id' => $this->eshop_id,
            'depend_id' => $this->depend_id,
            'position' => $this->position,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'type', $this->type])
            ->andFilterWhere(['like', 'code', $this->code])
            ->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'label', $this->label])
            ->andFilterWhere(['like', 'hint', $this->hint])
            ->andFilterWhere(['like', 'input_type', $this->input_type])
            ->andFilterWhere(['like', 'default_value', $this->default_value])
            ->andFilterWhere(['like', 'memo', $this->memo])
            ->andFilterWhere(['like', 'is_sku', $this->is_sku])
            ->andFilterWhere(['like', 'is_visible', $this->is_visible])
            ->andFilterWhere(['like', 'is_required', $this->is_required])
            ->andFilterWhere(['like', 'is_unique', $this->is_unique])
            ->andFilterWhere(['like', 'is_depend', $this->is_depend])
            ->andFilterWhere(['like', 'status', $this->status]);

        return $dataProvider;
    }
    
    public function getPageParamName($splitor = '-'){
        $name = "AttributeModelPage";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }
    
    public function getSortParamName($splitor = '-'){
        $name = "AttributeModelSort";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }
}
