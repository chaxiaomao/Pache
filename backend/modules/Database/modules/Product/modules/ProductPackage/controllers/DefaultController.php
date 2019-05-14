<?php

namespace backend\modules\Database\modules\Product\modules\ProductPackage\controllers;

use common\models\c2\entity\ProductPackageItemModel;
use cza\base\models\statics\EntityModelStatus;
use cza\base\models\statics\ResponseDatum;
use Yii;
use common\models\c2\entity\ProductPackageModel;
use common\models\c2\search\ProductPackageSearch;

use cza\base\components\controllers\backend\ModelController as Controller;
use yii\helpers\ArrayHelper;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * DefaultController implements the CRUD actions for ProductPackageModel model.
 */
class DefaultController extends Controller
{
    public $modelClass = 'common\models\c2\entity\ProductPackageModel';

    public function actions()
    {
        return ArrayHelper::merge(parent::actions(), [
            'product' => [
                'class' => 'common\components\actions\ProductOptionsAction',
            ],
        ]);
    }
    
    /**
     * Lists all ProductPackageModel models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ProductPackageSearch();
        $searchModel->status = EntityModelStatus::STATUS_ACTIVE;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'model' => $this->retrieveModel(),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single ProductPackageModel model.
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
     * create/update a ProductPackageModel model.
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
     * Finds the ProductPackageModel model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return ProductPackageModel the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = ProductPackageModel::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
    public function actionDeleteSubitem($id)
    {

        if (($model = ProductPackageItemModel::findOne($id)) !== null) {
            if ($model->delete()) {
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!!')], $id);
            }
        }
        return $this->asJson($responseData);
    }

    public function actionDelete($id) {
        if ($this->findModel($id)->updateAttributes(['status' => EntityModelStatus::STATUS_INACTIVE])) {
            $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
        } else {
            $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!!')], $id);
        }
        return $this->asJson($responseData);
    }

}
