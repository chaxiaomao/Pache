<?php

namespace backend\modules\P3S\modules\Inventory\modules\WarehouseCommitStorage\controllers;

use common\models\c2\entity\InventoryDeliveryNoteModel;
use common\models\c2\entity\InventoryReceiptNoteModel;
use Yii;
use common\models\c2\entity\WarehouseCommitStorageItemModel;
use common\models\c2\search\WarehouseCommitStorageItemSearch;

use cza\base\components\controllers\backend\ModelController as Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * DefaultController implements the CRUD actions for WarehouseCommitStorageItemModel model.
 */
class DefaultController extends Controller
{
    public $modelClass = 'common\models\c2\entity\WarehouseCommitStorageItemModel';
    
    /**
     * Lists all WarehouseCommitStorageItemModel models.
     * @return mixed
     */
    public function actionIndex()
    {
        $this->layout = '/main-block';
        $searchModel = new WarehouseCommitStorageItemSearch();
        $params = Yii::$app->request->queryParams;
        $model = InventoryReceiptNoteModel::findOne($params['WarehouseCommitStorageItemSearch']['note_id']);
        $dataProvider = $searchModel->search($params);

        return $this->render('index', [
            'model' => $model,
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single WarehouseCommitStorageItemModel model.
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
     * create/update a WarehouseCommitStorageItemModel model.
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
     * Finds the WarehouseCommitStorageItemModel model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return WarehouseCommitStorageItemModel the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = WarehouseCommitStorageItemModel::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
