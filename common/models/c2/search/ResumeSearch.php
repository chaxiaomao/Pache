<?php

namespace common\models\c2\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\c2\entity\ResumeModel;

/**
 * ResumeSearch represents the model behind the search form about `common\models\c2\entity\ResumeModel`.
 */
class ResumeSearch extends ResumeModel
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'integer'],
            [['name', 'mobile_num', 'email', 'description', 'education', 'school', 'major', 'industry', 'expect_salary', 'expect_industry', 'content', 'memo', 'status', 'created_at', 'updated_at'], 'safe'],
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
        $query = ResumeModel::find();

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
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'mobile_num', $this->mobile_num])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['like', 'description', $this->description])
            ->andFilterWhere(['like', 'education', $this->education])
            ->andFilterWhere(['like', 'school', $this->school])
            ->andFilterWhere(['like', 'major', $this->major])
            ->andFilterWhere(['like', 'industry', $this->industry])
            ->andFilterWhere(['like', 'expect_salary', $this->expect_salary])
            ->andFilterWhere(['like', 'expect_industry', $this->expect_industry])
            ->andFilterWhere(['like', 'content', $this->content])
            ->andFilterWhere(['like', 'memo', $this->memo])
            ->andFilterWhere(['like', 'status', $this->status]);

        return $dataProvider;
    }
    
    public function getPageParamName($splitor = '-'){
        $name = "ResumeModelPage";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }
    
    public function getSortParamName($splitor = '-'){
        $name = "ResumeModelSort";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }
}
