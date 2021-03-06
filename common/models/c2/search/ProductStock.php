<?php

namespace common\models\c2\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\c2\entity\ProductStock as ProductStockModel;

/**
 * ProductStock represents the model behind the search form about `common\models\c2\entity\ProductStock`.
 */
class ProductStock extends ProductStockModel
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'eshop_id', 'warehouse_id', 'product_id', 'product_sku_id', 'num', 'position', 'product_material_id'], 'integer'],
            [['sku', 'state', 'status', 'created_at', 'updated_at'], 'safe'],
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
        $query = ProductStockModel::find();

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
            'product_material_id' => $this->product_material_id,
            'warehouse_id' => $this->warehouse_id,
            'product_id' => $this->product_id,
            'product_sku_id' => $this->product_sku_id,
            'num' => $this->num,
            'position' => $this->position,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'sku', $this->sku])
            ->andFilterWhere(['like', 'state', $this->state])
            ->andFilterWhere(['like', 'status', $this->status]);

        return $dataProvider;
    }
    
    public function getPageParamName($splitor = '-'){
        $name = "ProductStockModelPage";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }
    
    public function getSortParamName($splitor = '-'){
        $name = "ProductStockModelSort";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }
}
