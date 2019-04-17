<?php

namespace backend\modules\P3S\modules\Inventory\modules\Order\controllers;

use common\models\c2\entity\ProductModel;
use cza\base\models\statics\ResponseDatum;
use Yii;
use common\models\c2\entity\OrderModel;
use common\models\c2\search\OrderSearch;

use cza\base\components\controllers\backend\ModelController as Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * DefaultController implements the CRUD actions for OrderModel model.
 */
class DefaultController extends Controller
{
    public $modelClass = 'common\models\c2\entity\OrderModel';

    public function actions()
    {
        return \yii\helpers\ArrayHelper::merge(parent::actions(), [
            'skus' => [
                'class' => 'common\components\actions\ProductSkuOptionsAction',
            ],
            'product-materials' => [
                'class' => 'common\components\actions\ProductMaterialOptionsAction',
            ]
        ]);
    }
    
    /**
     * Lists all OrderModel models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new OrderSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'model' => $this->retrieveModel(),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single OrderModel model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id) {
        $this->layout = "/print_modal";
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * create/update a OrderModel model.
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
        $model->loadItems();
        return (Yii::$app->request->isAjax) ? $this->renderAjax('edit', [ 'model' => $model,]) : $this->render('edit', [ 'model' => $model,]);
    }
    
    /**
     * Finds the OrderModel model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return OrderModel the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = OrderModel::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionProduct()
    {
        $params = Yii::$app->request->post();
        if (!isset($params['depdrop_all_params'])) {
            throw new \Exception('Require parameter "depdrop_all_params"!');
        }
        if (!isset($params['depdrop_parents'])) {
            throw new \Exception('Require parameter "depdrop_parents"!');
        }
        return ProductModel::findOne(['id' => $params['depdrop_all_params']['product_id']])->name;
    }

    public function actionDeleteSubitem($id)
    {
        if (($model = OrderModel::findOne($id)) !== null) {
            if ($model->delete()) {
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!')], $id);
            }
        } else {
            $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('app.c2', 'Error: Model not found!')], $id);
        }
        return $this->asJson($responseData);
    }

    public function actionEnsureDo($id)
    {
        try {
            $model = $this->retrieveModel($id);
            if ($model) {
                $model->setStateToFinish();
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!')], $id);
            }
        } catch (\Exception $ex) {
            $responseData = ResponseDatum::getErrorDatum(['message' => $ex->getMessage()], $id);
        }

        return $this->asJson($responseData);
    }
}
