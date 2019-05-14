<?php

namespace backend\modules\Database\modules\Product\controllers;

use common\models\c2\statics\ProductType;
use cza\base\models\statics\EntityModelStatus;
use cza\base\models\statics\ResponseDatum;
use Yii;
use common\models\c2\entity\ProductModel;
use common\models\c2\search\ProductSearch;

use cza\base\components\controllers\backend\ModelController as Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * DefaultController implements the CRUD actions for ProductModel model.
 */
class DefaultController extends Controller
{
    public $modelClass = 'common\models\c2\entity\ProductModel';
    
    /**
     * Lists all ProductModel models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ProductSearch();
        $searchModel->is_released = EntityModelStatus::STATUS_ACTIVE;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'model' => $this->retrieveModel(),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single ProductModel model.
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
     * create/update a ProductModel model.
     * fit to pajax call
     * @return mixed
     */
    public function actionEdit($id = null) 
    {
        $model = $this->retrieveModel($id);
        $model->type = ProductType::TYPE_PRODUCT;
        
        if ($model->load(Yii::$app->request->post())) {
            if ($model->save()) {
                Yii::$app->session->setFlash($model->getMessageName(), [Yii::t('app.c2', 'Saved successful.')]);
            } else {
                Yii::$app->session->setFlash($model->getMessageName(), $model->errors);
            }
        }
        
        return (Yii::$app->request->isAjax) ? $this->renderAjax('edit', [ 'model' => $model,]) : $this->render('edit', [ 'model' => $model,]);
    }

    public function actionEditMaterial($id = null)
    {
        $model = $this->retrieveModel($id);
        $model->type = ProductType::TYPE_MATERIAL;

        if ($model->load(Yii::$app->request->post())) {
            if ($model->save()) {
                Yii::$app->session->setFlash($model->getMessageName(), [Yii::t('app.c2', 'Saved successful.')]);
            } else {
                Yii::$app->session->setFlash($model->getMessageName(), $model->errors);
            }
        }

        return (Yii::$app->request->isAjax) ? $this->renderAjax('edit_material', [ 'model' => $model,]) : $this->render('edit_material', [ 'model' => $model,]);
    }
    
    /**
     * Finds the ProductModel model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return ProductModel the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = ProductModel::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionDelete($id) {
        if ($this->findModel($id)->updateAttributes(['is_released' => EntityModelStatus::STATUS_INACTIVE])) {
            $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
        } else {
            $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!!')], $id);
        }
        return $this->asJson($responseData);
    }

    public function actionMultipleDelete(array $ids) {
        $models = ProductModel::findAll($ids);
        foreach ($models as $model) {
            $model->updateAttributes(['is_released' => EntityModelStatus::STATUS_INACTIVE]);
        }
        if (true) {
            $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $ids);
        } else {
            $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!!')], $ids);
        }
        return $this->asJson($responseData);
    }


}
