<?php

namespace backend\models\c2\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use backend\models\c2\entity\ProductSkuModel as ProductSkuModel;

/**
 * ProductSku represents the model behind the search form about `common\models\c2\entity\ProductSku`.
 */
class ProductSkuSearch extends ProductSkuModel
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'product_id', 'stock', 'is_released', 'status', 'position'], 'integer'],
            [['attr_params', 'hash', 'sku', 'name', 'label', 'code', 'created_at', 'updated_at'], 'safe'],
            [['sales_price',], 'number'],
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
        
        $query = ProductSkuModel::find();
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
            'product_id' => $this->product_id,
            'sales_price' => $this->sales_price,
            'stock' => $this->stock,
            'is_released' => $this->is_released,
            'status' => $this->status,
            'position' => $this->position,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'attr_params', $this->attr_params])
            ->andFilterWhere(['like', 'hash', $this->hash])
            ->andFilterWhere(['like', 'sku', $this->sku])
            ->andFilterWhere(['like', 'name', $this->name])
            ->andFilterWhere(['like', 'label', $this->label])
            ->andFilterWhere(['like', 'code', $this->code]);

        return $dataProvider;
    }
    
    public function getPageParamName($splitor = '-'){
        $name = "ProductSkuModelPage";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }
    
    public function getSortParamName($splitor = '-'){
        $name = "ProductSkuModelSort";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }
}
