<?php

namespace common\behaviors;

use Yii;
use yii\base\Exception;
use yii\helpers\ArrayHelper;
use yii\helpers\Json;

/**
 * @Author Ben <bennybi@qq.com>
 */
class SnapshotBehavior extends yii\base\Behavior {

    public $snapshotClass;
    public $primaryKey;

    /**
     * 
     * @param string $checkpoint - log the checkpoint
     * @return boolean
     * @throws Exception
     */
    public function takeSnapshot($checkpoint = "", $params = ['condition' => []]) {
        try {
            if (!Yii::$app->redis) {
                return false;
            }
            $snapshotClass = $this->snapshotClass;

            $condition = !empty($params['condition']) ?
                    ArrayHelper::merge($params['condition'], [$this->primaryKey => $this->owner->{$this->primaryKey}, 's_checkpoint' => $checkpoint]) : [$this->primaryKey => $this->owner->{$this->primaryKey}, 's_checkpoint' => $checkpoint];
            $ssModel = $snapshotClass::findOne($condition);
//            $ssModel = $snapshotClass::findOne(ArrayHelper::merge($params, [$this->primaryKey => $this->owner->{$this->primaryKey}, 's_checkpoint' => $checkpoint]));
//            $ssModel = $snapshotClass::findOne([$this->primaryKey => $this->owner->{$this->primaryKey}, 's_checkpoint' => $checkpoint,]);

            if (is_null($ssModel)) {
                $ssModel = new $snapshotClass();
            }
            $attributes = $this->owner->getSnapshotAttributes();
            if ($checkpoint) {
                $attributes = $this->owner->getSnapshotAttributes() + [
                    's_checkpoint' => $checkpoint,
                ];
            }
            if (!empty($params['condition'])){
                $attributes = ArrayHelper::merge($attributes,$params['condition']);
//                Yii::info($attributes);
                //Yii::info('$params[condition]');
                //Yii::info($params['condition']);
            }
            $ssModel->setAttributes($attributes);
//            Yii::info($ssModel->errors);
            if (!$ssModel->save()) {
                Yii::info($ssModel->errors);
                throw new Exception("Cannot save!");
            }
            return true;
        } catch (\Exception $ex) {
            Yii::info($ex->getMessage());
            return false;
        }
    }

    public function getSnapshot($checkpoint = "", $params = []) {
        $snapshotClass = $this->snapshotClass;

        if ($checkpoint) {
            $condition = !empty($params['condition']) ?
                    ArrayHelper::merge($params['condition'], [$this->primaryKey => $this->owner->{$this->primaryKey}, 's_checkpoint' => $checkpoint]) : [$this->primaryKey => $this->owner->{$this->primaryKey}, 's_checkpoint' => $checkpoint];
        } else {
            $condition = !empty($params['condition']) ?
                    ArrayHelper::merge($params['condition'], [$this->primaryKey => $this->owner->{$this->primaryKey}]) : [$this->primaryKey => $this->owner->{$this->primaryKey}];
        }
        return $snapshotClass::findOne($condition);
    }

    public function deleteSnapshot($checkpoint = "", $params = []) {
        $snapshotClass = $this->snapshotClass;
        if ($checkpoint) {
            $condition = !empty($params['condition']) ?
                    ArrayHelper::merge($params['condition'], [$this->primaryKey => $this->owner->{$this->primaryKey}, 's_checkpoint' => $checkpoint]) : [$this->primaryKey => $this->owner->{$this->primaryKey}, 's_checkpoint' => $checkpoint];
        } else {
            $condition = !empty($params['condition']) ?
                    ArrayHelper::merge($params['condition'], [$this->primaryKey => $this->owner->{$this->primaryKey}]) : [$this->primaryKey => $this->owner->{$this->primaryKey}];
        }
        $ssModel = $snapshotClass::findOne($condition);

        if ($ssModel) {
            return $ssModel->delete();
        }
        return true;
    }

    public function getSnapshotAttributes() {
        return $this->owner->attributes;
    }

}
