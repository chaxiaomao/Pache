<?php

namespace backend\modules\P3S\modules\Inventory\modules\EsConsumption\controllers;

use common\models\c2\entity\ProductMaterialItemModel;
use common\models\c2\entity\ProductStock;
use cza\base\models\statics\EntityModelStatus;
use Yii;
use common\models\c2\entity\OrderItemConsumptionModel;
use common\models\c2\search\OrderItemConsumptionSearch;

use cza\base\components\controllers\backend\ModelController as Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * DefaultController implements the CRUD actions for OrderItemConsumptionModel model.
 */
class DefaultController extends Controller
{
    public $modelClass = 'common\models\c2\entity\OrderItemConsumptionModel';
    
    /**
     * Lists all OrderItemConsumptionModel models.
     * @return mixed
     */
    public function actionIndex()
    {
        $this->layout = '/print';
        $searchModel = new OrderItemConsumptionSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'model' => $this->retrieveModel(),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    public function actionIndex2()
    {
        $this->layout = '/print';
        $searchModel = new OrderItemConsumptionSearch();
        $searchModel->status = EntityModelStatus::STATUS_ACTIVE;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $material_id = Yii::$app->request->queryParams['OrderItemConsumptionSearch']['material_item_id'];
        $model = ProductMaterialItemModel::findOne($material_id);
        return $this->render('index2', [
            'model' => $this->retrieveModel(),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'stock' => $model->stock,
        ]);
    }

    /**
     * Displays a single OrderItemConsumptionModel model.
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
     * create/update a OrderItemConsumptionModel model.
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
     * Finds the OrderItemConsumptionModel model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return OrderItemConsumptionModel the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = OrderItemConsumptionModel::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
