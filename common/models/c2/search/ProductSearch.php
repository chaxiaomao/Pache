<?php

namespace common\models\c2\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\c2\entity\ProductModel;

/**
 * ProductSearch represents the model behind the search form about `common\models\c2\entity\ProductModel`.
 */
class ProductSearch extends ProductModel
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'eshop_id', 'brand_id', 'supplier_id', 'currency_id', 'measure_id', 'views_count', 'comment_count', 'sold_count',
                'virtual_sold_count', 'created_by', 'updated_by', 'position'], 'integer'],
            [['type', 'seo_code', 'sku', 'serial_number', 'breadcrumb', 'name', 'label', 'value', 'meta_title', 'meta_keywords',
                'meta_description', 'is_score_exchange', 'score_exchange_method', 'require_setup', 'is_install',
                'summary', 'description', 'is_released', 'released_at', 'status', 'created_at', 'updated_at'], 'safe'],
            [['score', 'gift_score', 'install_price', 'low_price', 'sales_price', 'cost_price', 'market_price'], 'number'],
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
        $query = ProductModel::find();

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
            'score' => $this->score,
            'gift_score' => $this->gift_score,
            'install_price' => $this->install_price,
            'low_price' => $this->low_price,
            'sales_price' => $this->sales_price,
            'cost_price' => $this->cost_price,
            'market_price' => $this->market_price,
            'brand_id' => $this->brand_id,
            'supplier_id' => $this->supplier_id,
            'currency_id' => $this->currency_id,
            'measure_id' => $this->measure_id,
            'views_count' => $this->views_count,
            'comment_count' => $this->comment_count,
            'sold_count' => $this->sold_count,
            'virtual_sold_count' => $this->virtual_sold_count,
            'released_at' => $this->released_at,
            'created_by' => $this->created_by,
            'updated_by' => $this->updated_by,
            'position' => $this->position,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'type', $this->type])
            ->andFilterWhere(['like', 'seo_code', $this->seo_code])
            ->andFilterWhere(['like', 'sku', $this->sku])
            ->andFilterWhere(['like', 'serial_number', $this->serial_number])
            ->andFilterWhere(['like', 'breadcrumb', $this->breadcrumb])
            ->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'label', $this->label])
            ->andFilterWhere(['like', 'value', $this->value])
            ->andFilterWhere(['like', 'meta_title', $this->meta_title])
            ->andFilterWhere(['like', 'meta_keywords', $this->meta_keywords])
            ->andFilterWhere(['like', 'meta_description', $this->meta_description])
            ->andFilterWhere(['like', 'is_score_exchange', $this->is_score_exchange])
            ->andFilterWhere(['like', 'score_exchange_method', $this->score_exchange_method])
            ->andFilterWhere(['like', 'require_setup', $this->require_setup])
            ->andFilterWhere(['like', 'is_install', $this->is_install])
            ->andFilterWhere(['like', 'summary', $this->summary])
            ->andFilterWhere(['like', 'description', $this->description])
            ->andFilterWhere(['like', 'is_released', $this->is_released])
            ->andFilterWhere(['like', 'status', $this->status]);

        return $dataProvider;
    }
    
    public function getPageParamName($splitor = '-'){
        $name = "ProductModelPage";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }
    
    public function getSortParamName($splitor = '-'){
        $name = "ProductModelSort";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }
}
