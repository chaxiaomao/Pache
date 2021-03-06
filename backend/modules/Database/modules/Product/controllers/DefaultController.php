<?php

namespace backend\modules\Database\modules\Product\controllers;

use backend\models\c2\entity\ProductMaterialModel;
use backend\models\c2\form\EavSkuForm;
use backend\models\c2\form\ProductPackForm;
use common\models\c2\entity\AttributeModel;
use common\models\c2\entity\ProductMaterialItemModel;
use common\models\c2\entity\ProductMaterialRsModel;
use common\models\c2\entity\ProductPackModel;
use common\models\c2\entity\ProductSkuModel;
use common\models\c2\statics\ProductType;
use cza\base\models\statics\ResponseDatum;
use Yii;
use common\models\c2\entity\ProductModel;
use common\models\c2\search\ProductSearch;

use cza\base\components\controllers\backend\ModelController as Controller;
use yii\web\HttpException;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * DefaultController implements the CRUD actions for ProductModel model.
 */
class DefaultController extends Controller
{
    public $modelClass = 'backend\models\c2\entity\ProductModel';
    public $materialModelClass = 'backend\models\c2\entity\ProductMaterialModel';

    public function actions()
    {
        return \yii\helpers\ArrayHelper::merge(parent::actions(), [
            'editColumn' => [// identifier for your editable action
                'class' => \backend\components\actions\EditableColumnAction::className(), // action class name
                'modelClass' => $this->modelClass, // the update model class
            ],
            'eav-save' => [
                'class' => \cza\base\components\actions\backend\EavSaveAction::className(),
                'modelClass' => \backend\models\c2\form\EavForm::className(),
                'checkAccess' => [$this, 'checkAccess'],
            ],
            'sku-edit-column' => [
                'class' => \kartik\grid\EditableColumnAction::className(), // action class name
                'modelClass' => ProductSkuModel::className(), // the update model class
            ],
            'attributes' => [
                'class' => 'common\components\actions\AttributesOptionsAction',
            ],
            'materials' => [
                'class' => 'common\components\actions\MaterialOptionsAction',
            ],
        ]);
    }

    /**
     * Lists all ProductModel models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new ProductSearch();
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

        if ($model->load(Yii::$app->request->post())) {
            if ($model->save()) {
                Yii::$app->session->setFlash($model->getMessageName(), [Yii::t('app.c2', 'Saved successful.')]);
            } else {
                Yii::$app->session->setFlash($model->getMessageName(), $model->errors);
            }
        }
        $model->loadItems();
        $model->loadPackItems();
        return (Yii::$app->request->isAjax) ? $this->renderAjax('edit', ['model' => $model,]) : $this->render('edit', ['model' => $model,]);
    }

    public function actionMaterialEdit($id = null)
    {
        $model = $this->retrieveMaterialModel($id);

        if ($model->load(Yii::$app->request->post())) {
            if ($model->save()) {
                Yii::$app->session->setFlash($model->getMessageName(), [Yii::t('app.c2', 'Saved successful.')]);
            } else {
                Yii::$app->session->setFlash($model->getMessageName(), $model->errors);
            }
        }
        $model->loadItems();
        return (Yii::$app->request->isAjax) ? $this->renderAjax('edit', ['model' => $model,]) : $this->render('edit', ['model' => $model,]);
    }

    public function retrieveMaterialModel($id = null, $allowReturnNew = true)
    {
        if (!is_null($id)) {
            if (($model = ProductMaterialModel::findOne($id)) !== null) {
                return $model;
            } else {
                throw new NotFoundHttpException('The requested page does not exist.');
            }
        } elseif (!$allowReturnNew) {
            throw new NotFoundHttpException('The requested page does not exist.');
        } else {
            $model = new $this->materialModelClass;
            $model->loadDefaultValues();
        }

        return $model;
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
        if (($model = \backend\models\c2\entity\ProductModel::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionGenerateSkus()
    {
        $request = Yii::$app->request;
        $params = Yii::$app->request->post();

        if (!isset($params['entity_id'])) {
            throw new HttpException(404, Yii::t('cza', "Missing parameter entity_id!"));
        }
        if (!isset($params['EavSkuForm'])) {
            throw new HttpException(404, Yii::t('cza', "Missing parameter EavSkuForm!"));
        }

        $entityModel = $this->retrieveModel($params['entity_id']);
        $formModel = new EavSkuForm(['entityModel' => $entityModel]);

        if ($request->isPost && Yii::$app->request->isAjax) {
            $formModel->load(Yii::$app->request->post());
        }

        // Yii::info($formModel->attributes);
        // Yii::info($params);
        if ($formModel->generateSkus($params['EavSkuForm'])) {

        }
        $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')]);
        return (Yii::$app->request->isAjax) ? $this->renderAjax('/default/_sku_form', ['model' => $formModel]) : $this->render('edit', ['model' => $entityModel,]);

        return $this->asJson($responseData);
    }

    public function actionDeleteSku($id)
    {
        try {
            $model = ProductSkuModel::findOne($id);
            if ($model->delete()) {
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!!')], $id);
            }
        } catch (\Exception $ex) {
            $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!!')], $id);
        }

        return $this->asJson($responseData);
    }

    public function actionDeleteSkus(array $ids)
    {
        try {
            $model = new ProductSkuModel();
            $model->multipleDeleteByIds($ids);
            if (true) {
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $ids);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!!')], $ids);
            }
        } catch (\Exception $ex) {
            $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!!')], $ids);
        }

        return $this->asJson($responseData);
    }

    public function actionDeleteSubitem($id)
    {
        if (($model = ProductMaterialItemModel::findOne($id)) !== null) {
            if ($model->delete()) {
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!!')], $id);
            }
        }
        return $this->asJson($responseData);
    }

    public function actionDeletePackSubitem($id)
    {
        if (($model = ProductPackModel::findOne($id)) !== null) {
            if ($model->delete()) {
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!!')], $id);
            }
        }
        return $this->asJson($responseData);
    }

    public function actionDeleteProductSubitem($id)
    {
        if (($model = ProductMaterialRsModel::findOne($id)) !== null) {
            if ($model->delete()) {
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!!')], $id);
            }
        }
        return $this->asJson($responseData);
    }

    public function actionProductPack($id = null)
    {
        $model = new ProductPackForm(['entityModel' => $model = $this->retrieveModel($id)]);
        if ($model->load(Yii::$app->request->post())) {
            if ($model->save()) {
                Yii::$app->session->setFlash($model->getMessageName(), [Yii::t('app.c2', 'Saved successful.')]);
            } else {
                Yii::$app->session->setFlash($model->getMessageName(), $model->errors);
            }
        }

        return (Yii::$app->request->isAjax) ? $this->renderAjax('_pack_form', ['model' => $model,]) : $this->render('_pack_form', ['model' => $model,]);
    }

}
