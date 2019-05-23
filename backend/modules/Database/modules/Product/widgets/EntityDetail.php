<?php

namespace backend\modules\Database\modules\Product\widgets;

use common\models\c2\entity\ProductCombinationModel;
use common\models\c2\entity\ProductPackageModel;
use common\models\c2\entity\ProductStockModel;
use common\models\c2\search\ProductCombinationSearch;
use common\models\c2\search\ProductPackageSearch;
use common\models\c2\statics\ProductType;
use Yii;
use cza\base\widgets\ui\common\part\EntityDetail as DetailWidget;

/**
 * Entity Detail Widget
 *
 * @author Ben Bi <ben@cciza.com>
 * @link http://www.cciza.com/
 * @copyright 2014-2016 CCIZA Software LLC
 * @license
 */
class EntityDetail extends DetailWidget
{
    public $withTranslationTabs = false;

    public $withProfileTab = false;

    public $withCombinationTab = false;
    public $withPackageTab = false;
    public $withStockTab = false;

    public function getTabItems()
    {
        $items = [];

        if ($this->withStockTab) {
            $items[] = $this->getStockTab();
        }

        if ($this->withPackageTab) {
            $items[] = $this->getPackageTab();
        }

        if ($this->withCombinationTab) {
            $items[] = $this->getCombinationTab();
        }

        if ($this->withBaseInfoTab) {
            if ($this->model->type == ProductType::TYPE_PRODUCT) {
                $items[] = [
                    'label' => Yii::t('app.c2', 'Base Information'),
                    'content' => $this->controller->renderPartial('_production_form', ['model' => $this->model,]),
                    'active' => true,
                ];
            } else {
                $items[] = [
                    'label' => Yii::t('app.c2', 'Base Information'),
                    'content' => $this->controller->renderPartial('_material_form', ['model' => $this->model,]),
                    'active' => true,
                ];
            }

        }

        $items[] = [
            'label' => '<i class="fa fa-th"></i> ' . $this->tabTitle,
            'onlyLabel' => true,
            'headerOptions' => [
                'class' => 'pull-left header',
            ],
        ];

        return $items;
    }

    public function getCombinationTab()
    {
        if (!isset($this->_tabs['COMBINATION_TAB'])) {
            if (!$this->model->isNewRecord) {
                $searchModel = new ProductCombinationSearch();
                $searchModel->product_id = $this->model->id;
                $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
                $this->_tabs['COMBINATION_TAB'] = [
                    'label' => Yii::t('app.c2', 'Product Combination'),
                    'content' => $this->controller->renderPartial('/default/combination_index', [
                        'model' => new ProductCombinationModel(),
                        'searchModel' => $searchModel,
                        'dataProvider' => $dataProvider,
                        'product_id' => $this->model->id,
                    ]),
                    'enable' => true
                ];
            } else {
                $this->_tabs['COMBINATION_TAB'] = [
                    'label' => Yii::t('app.c2', 'Product Combination'),
                    'content' => "",
                    'enable' => false,
                ];
            }
            return $this->_tabs['COMBINATION_TAB'];
        }
    }

    public function getPackageTab()
    {
        if (!isset($this->_tabs['PACKAGE_TAB'])) {
            if (!$this->model->isNewRecord) {
                $searchModel = new ProductPackageSearch();
                $searchModel->product_id = $this->model->id;
                $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
                $this->_tabs['PACKAGE_TAB'] = [
                    'label' => Yii::t('app.c2', 'Product Package'),
                    'content' => $this->controller->renderPartial('/default/package_index', [
                        'model' => new ProductPackageModel(),
                        'searchModel' => $searchModel,
                        'dataProvider' => $dataProvider,
                        'product_id' => $this->model->id,
                    ]),
                    'enable' => true
                ];
            } else {
                $this->_tabs['PACKAGE_TAB'] = [
                    'label' => Yii::t('app.c2', 'Product Package'),
                    'content' => "",
                    'enable' => false,
                ];
            }
            return $this->_tabs['PACKAGE_TAB'];
        }
    }

    public function getStockTab()
    {
        if (!isset($this->_tabs['STOCK_TAB'])) {
            if (!$this->model->isNewRecord) {
                $productStockModel = $this->model->productStock;
                if (is_null($productStockModel)) {
                    $productStockModel = new ProductStockModel();
                    $productStockModel->product_id = $this->model->id;
                }
                $productStockModel->loadDefaultValues();
                $this->_tabs['STOCK_TAB'] = [
                    'label' => Yii::t('app.c2', 'Product Stock'),
                    'content' => $this->controller->renderPartial('/default/stock_form', [
                        'model' => $productStockModel,
                    ]),
                    'enable' => true
                ];
            } else {
                $this->_tabs['STOCK_TAB'] = [
                    'label' => Yii::t('app.c2', 'Product Stock'),
                    'content' => "",
                    'enable' => false,
                ];
            }
            return $this->_tabs['STOCK_TAB'];
        }
    }

}