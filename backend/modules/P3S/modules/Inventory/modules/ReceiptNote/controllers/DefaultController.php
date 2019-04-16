<?php

namespace backend\modules\P3S\modules\Inventory\modules\ReceiptNote\controllers;

use common\models\c2\entity\InventoryReceiptNoteModel;
use Yii;
use common\models\c2\search\InventoryReceiptNoteSearch;
use cza\base\components\controllers\backend\ModelController as Controller;
use yii\web\NotFoundHttpException;
use cza\base\models\statics\ResponseDatum;

/**
 * DefaultController implements the CRUD actions for InventoryReceiptNote model.
 */
class DefaultController extends Controller
{

    public $modelClass = 'common\models\c2\entity\InventoryReceiptNoteModel';

    public function actions()
    {
        return \yii\helpers\ArrayHelper::merge(parent::actions(), [
            'attributes' => [
                'class' => 'common\components\actions\AttributesOptionsAction',
            ],
            'skus' => [
                'class' => 'common\components\actions\ProductSkuOptionsAction',
            ],
            'materials' => [
                'class' => 'common\components\actions\MaterialOptionsAction',
            ]
        ]);
    }

    //    public function actionTestDetail($id) {
    //        $this->layout = "/print";
    //        $model = $this->retrieveModel($id);
    //        return $this->render('_detail', ['model' => $model]);
    //    }

    public function actionDetail()
    {
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
     * Lists all InventoryReceiptNote models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new InventoryReceiptNoteSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'model' => $this->retrieveModel(),
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single InventoryReceiptNote model.
     * @param string $id
     * @return mixed
     */
    public function actionView($id)
    {
        $this->layout = "/print_modal";
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * create/update a InventoryReceiptNote model.
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
        return (Yii::$app->request->isAjax) ? $this->renderAjax('edit', ['model' => $model,]) : $this->render('edit', ['model' => $model,]);
    }

    public function actionDeleteSubitem($id)
    {
        if (($model = \common\models\c2\entity\InventoryReceiptNoteItemModel::findOne($id)) !== null) {
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

    /**
     * Finds the InventoryReceiptNote model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return InventoryReceiptNoteModel the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = InventoryReceiptNoteModel::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }

}
