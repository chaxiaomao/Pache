<?php

namespace common\models\c2\entity;

use Yii;

/**
 * This is the model class for table "{{%resume}}".
 *
 * @property string $id
 * @property string $name
 * @property string $mobile_num
 * @property string $email
 * @property string $description
 * @property string $education
 * @property string $school
 * @property string $major
 * @property string $industry
 * @property string $expect_salary
 * @property string $expect_industry
 * @property string $content
 * @property string $memo
 * @property integer $status
 * @property string $created_at
 * @property string $updated_at
 */
class ResumeModel extends \cza\base\models\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%resume}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['created_at', 'updated_at', 'description', 'content'], 'safe'],
            [['description', 'content'], 'string'],
            [['name', 'mobile_num', 'email', 'description', 'education', 'school',
                'major', 'industry', 'expect_salary', 'expect_industry', 'memo'], 'string', 'max' => 255],
            [['status'], 'integer', 'max' => 4],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app.c2', 'ID'),
            'name' => Yii::t('app.c2', 'Name'),
            'mobile_num' => Yii::t('app.c2', 'Mobile Num'),
            'email' => Yii::t('app.c2', 'Email'),
            'description' => Yii::t('app.c2', 'Description'),
            'education' => Yii::t('app.c2', 'Education'),
            'school' => Yii::t('app.c2', 'School'),
            'major' => Yii::t('app.c2', 'Major'),
            'industry' => Yii::t('app.c2', 'Industry'),
            'expect_salary' => Yii::t('app.c2', 'Expect Salary'),
            'expect_industry' => Yii::t('app.c2', 'Expect Industry'),
            'content' => Yii::t('app.c2', 'Content'),
            'memo' => Yii::t('app.c2', 'Memo'),
            'status' => Yii::t('app.c2', 'Status'),
            'created_at' => Yii::t('app.c2', 'Created At'),
            'updated_at' => Yii::t('app.c2', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     * @return \common\models\c2\query\ResumeQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new \common\models\c2\query\ResumeQuery(get_called_class());
    }
    
    /**
    * setup default values
    **/
    public function loadDefaultValues($skipIfSet = true) {
        parent::loadDefaultValues($skipIfSet);
    }

}
