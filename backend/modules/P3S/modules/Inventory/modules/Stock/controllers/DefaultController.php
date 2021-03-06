<?php

namespace backend\modules\P3S\modules\Inventory\modules\Stock\controllers;

use backend\models\c2\search\ProductSkuSearch;
use Yii;
use common\models\c2\entity\ProductStock;
use common\models\c2\search\ProductStock as ProductStockSearch;

use cza\base\components\controllers\backend\ModelController as Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * DefaultController implements the CRUD actions for ProductStock model.
 */
class DefaultController extends Controller
{
    public $modelClass = 'common\models\c2\entity\ProductStock';
    // public $modelClass = 'common\models\c2\entity\ProductSkuModel';

    public function actions() {
        return \yii\helpers\ArrayHelper::merge(parent::actions(), [
            'materials' => [
                'class' => 'common\components\actions\MaterialOptionsAction',
            ],
        ]);
    }

    /**
     * Lists all ProductStock models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ProductStockSearch();
        // $searchModel = new ProductSkuSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'model' => $this->retrieveModel(),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single ProductStock model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * create/update a ProductStock model.
     * fit to pajax call
     * @return mixed
     */
    public function actionEdit($id = null) 
    {
        $model = $this->retrieveModel($id);
        
        if ($model->load(Yii::$app->request->post())) {
            if ($model->save()) {
                Yii::$app->session->setFlash($model->getMessageName(), [Yii::t('app.c2', 'Saved successful.')]);
            } else {
                Yii::$app->session->setFlash($model->getMessageName(), $model->errors);
            }
        }
        
        return (Yii::$app->request->isAjax) ? $this->renderAjax('edit', [ 'model' => $model,]) : $this->render('edit', [ 'model' => $model,]);
    }
    
    /**
     * Finds the ProductStock model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return ProductStock the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = ProductStock::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
