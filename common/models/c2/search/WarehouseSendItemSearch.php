<?php

namespace common\models\c2\search;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\c2\entity\WarehouseSendItemModel;

/**
 * WarehouseSendItemSearch represents the model behind the search form about `common\models\c2\entity\WarehouseSendItemModel`.
 */
class WarehouseSendItemSearch extends WarehouseSendItemModel
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'note_id', 'product_id', 'send_number', 'production_number', 'stock_number', 'position', 'product_combination_id', 'product_package_id',], 'integer'],
            [['memo', 'status', 'created_at', 'updated_at'], 'safe'],
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
        $query = WarehouseSendItemModel::find();

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
            'send_number' => $this->send_number,
            'production_number' => $this->production_number,
            'product_combination_id' => $this->product_combination_id,
            'product_package_id' => $this->product_package_id,
            'stock_number' => $this->stock_number,
            'position' => $this->position,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
        ]);

        $query
            ->andFilterWhere(['like', 'memo', $this->memo])
            ->andFilterWhere(['like', 'status', $this->status]);

        return $dataProvider;
    }
    
    public function getPageParamName($splitor = '-'){
        $name = "WarehouseSendItemModelPage";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }
    
    public function getSortParamName($splitor = '-'){
        $name = "WarehouseSendItemModelSort";
        return \Yii::$app->czaHelper->naming->toSplit($name);
    }
}
