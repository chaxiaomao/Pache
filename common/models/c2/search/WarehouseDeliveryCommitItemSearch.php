<?php

namespace common\models\c2\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\c2\entity\WarehouseDeliveryCommitItemModel;

/**
 * WarehouseDeliveryCommitItemSearch represents the model behind the search form about `common\models\c2\entity\WarehouseDeliveryCommitItemModel`.
 */
class WarehouseDeliveryCommitItemSearch extends WarehouseDeliveryCommitItemModel
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'note_id', 'product_id', 'product_sku_id',  'quantity', 'actual_quantity', 'stock_quantity', 'measure_id', 'position'], 'integer'],
            [['sku_label',  'pieces', 'memo', 'status', 'created_at', 'updated_at'], 'safe'],
            [['product_price', 'factory_price', 'subtotal'], 'number'],
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
        $query = WarehouseDeliveryCommitItemModel::find();

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
            'note_id' => $this->note_id,
            'product_id' => $this->product_id,
            'product_sku_id' => $this->product_sku_id,
            'quantity' => $this->quantity,
            'actual_quantity' => $this->actual_quantity,
            'stock_quantity' => $this->stock_quantity,
            'measure_id' => $this->measure_id,
            'product_price' => $this->product_price,
            'factory_price' => $this->factory_price,
            'subtotal' => $this->subtotal,
            'position' => $this->position,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query->andFilterWhere(['like', 'sku_label', $this->sku_label])
            ->andFilterWhere(['like', 'pieces', $this->pieces])
            ->andFilterWhere(['like', 'memo', $this->memo])
            ->andFilterWhere(['like', 'status', $this->status]);

        return $dataProvider;
    }

    public function search1($params)
    {
        $query = WarehouseDeliveryCommitItemModel::find();

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
    }
    
    public function getPageParamName($splitor = '-'){
        $name = "WarehouseDeliveryCommitItemModelPage";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }
    
    public function getSortParamName($splitor = '-'){
        $name = "WarehouseDeliveryCommitItemModelSort";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }
}
