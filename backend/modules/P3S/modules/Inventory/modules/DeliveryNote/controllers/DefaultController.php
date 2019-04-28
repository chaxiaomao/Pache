<?php

namespace backend\modules\P3S\modules\Inventory\modules\DeliveryNote\controllers;

use backend\models\c2\entity\ProductModel;
use Yii;
use common\models\c2\entity\InventoryDeliveryNoteModel;
use common\models\c2\search\InventoryDeliveryNoteSearch;
use cza\base\components\controllers\backend\ModelController as Controller;
use yii\helpers\ArrayHelper;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use cza\base\models\statics\ResponseDatum;
use common\models\c2\entity\InventoryDeliveryNoteItem;
use common\models\c2\entity\ProductStock;

/**
 * DefaultController implements the CRUD actions for InventoryDeliveryNote model.
 */
class DefaultController extends Controller {

    public $modelClass = 'common\models\c2\entity\InventoryDeliveryNoteModel';

    public function actions()
    {
        return ArrayHelper::merge(parent::actions(), [
            'skus' => [
                'class' => 'common\components\actions\ProductSkuOptionsAction',
            ],
            'search-order' => [
                'class' => '\cza\base\components\actions\common\OptionsListAction',
                'modelClass' => \common\models\c2\entity\OrderModel::className(),
                'listMethod' => 'getOptionsListCallable',
                'keyAttribute' => 'id',
                'valueAttribute' => 'code',
                'queryAttribute' => 'code',
                'checkAccess' => [$this, 'checkAccess'],
            ],
            'product-pack' => [
                'class' => 'common\components\actions\ProductPackOptionsAction'
            ]
        ]);
    }

    public function actionTestDetail($id) {
        $this->layout = "/print";
        $model = $this->retrieveModel($id);
        return $this->render('_detail', ['model' => $model]);
    }

    public function actionDetail() {
        $this->layout = "/print";
        $request = Yii::$app->request;
        if (!is_null($id = $request->post('id', $request->post('expandRowKey')))) {
            $model = $this->retrieveModel($id);
            return $this->render('_detail', ['model' => $model]);
        } else {
            return '<div class="alert alert-danger">No data found</div>';
        }
    }

    /**
     * Lists all InventoryDeliveryNote models.
     * @return mixed
     */
    public function actionIndex() {
        $searchModel = new InventoryDeliveryNoteSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
                    'model' => $this->retrieveModel(),
                    'searchModel' => $searchModel,
                    'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single InventoryDeliveryNote model.
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
     * create/update a InventoryDeliveryNote model.
     * fit to pajax call
     * @return mixed
     */
    public function actionEdit($id = null) {
        $model = $this->retrieveModel($id);

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

    public function actionDeleteSubitem($id) {
        if (($model = \common\models\c2\entity\InventoryDeliveryNoteItemModel::findOne($id)) !== null) {
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

    public function actionEnsureDo($id) {
        try {
            $model = $this->retrieveModel($id);
            if ($model) {
                $model->setStateToUntacked();
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $id);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!')], $id);
            }
        } catch (\Exception $ex) {
            $responseData = ResponseDatum::getErrorDatum(['message' => $ex->getMessage()], $id);
        }

        return $this->asJson($responseData);
    }

    /**
     * Finds the InventoryDeliveryNote model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return InventoryDeliveryNoteModel the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id) {
        if (($model = InventoryDeliveryNoteModel::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

    public function actionProduct()
    {
        $params = Yii::$app->request->post();
        if (isset($params['depdrop_all_params']['product_id'])) {
            $model = \common\models\c2\entity\ProductModel::findOne($params['depdrop_all_params']['product_id']);
            if (!is_null($model)) {
                $responseData = ResponseDatum::getSuccessDatum(['message' => Yii::t('cza', 'Operation completed successfully!')], $model->name);
            } else {
                $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!')], false);
            }
        } else {
            $responseData = ResponseDatum::getErrorDatum(['message' => Yii::t('cza', 'Error: operation can not finish!')], false);
        }


        return $this->asJson($responseData);
    }

}
