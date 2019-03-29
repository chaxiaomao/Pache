<?php

namespace common\widgets\galleryManager;

use Yii;
use yii\base\Exception;
use yii\base\Widget;
use yii\db\ActiveRecord;
use yii\helpers\Json;
use yii\helpers\Url;

/**
 * Widget to manage gallery.
 * Requires Twitter Bootstrap styles to work.
 *
 * @author Bogdan Savluk <savluk.bogdan@gmail.com>
 */
class GalleryManager extends Widget
{
    /** @var ActiveRecord */
    public $model;

    /** @var string */
    public $behaviorName;

    /** @var GalleryBehavior Model of gallery to manage */
    protected $behavior;

    /** @var string Route to gallery controller */
    public $apiRoute = false;

    public $options = array();
    public $editUrl;

    public function init()
    {
        parent::init();
        $this->behavior = $this->model->getBehavior($this->behaviorName);
        $this->registerTranslations();
    }

    public function registerTranslations()
    {
        $i18n = Yii::$app->i18n;
        $i18n->translations['galleryManager/*'] = [
            'class' => 'yii\i18n\PhpMessageSource',
            'sourceLanguage' => 'en-US',
            'basePath' => '@apolle/yii2/galleryManager/messages',
            'fileMap' => [],
        ];
    }


    /** Render widget */
    public function run()
    {
        if ($this->apiRoute === null) {
            throw new Exception('$apiRoute must be set.', 500);
        }

        $images = array();
        foreach ($this->behavior->getImages() as $image) {
            $images[] = array(
                'id' => $image->id,
                'position' => $image->position,
                'label' => (string)$image->label,
                'content' => (string)$image->content,
                'preview' => $image->getUrl('preview'),
                'link' => $image->link
            );
        }

        $baseUrl = [
//            $this->apiRoute,
            'galleryapi',
            'type' => $this->behavior->type,
            'behaviorName' => $this->behaviorName,
            'galleryId' => $this->behavior->getGalleryId()
        ];

        $opts = array(
            'hasName' => $this->behavior->hasName ? true : false,
            'hasDesc' => $this->behavior->hasDescription ? true : false,
            'uploadUrl' => Url::to($baseUrl + ['action' => 'ajaxUpload']),
            'deleteUrl' => Url::to($baseUrl + ['action' => 'delete']),
            'updateUrl' => $this->editUrl,
            'arrangeUrl' => Url::to($baseUrl + ['action' => 'order']),
            'moreUrl' => Url::to($baseUrl + ['action' => 'more']),
            'nameLabel' => Yii::t('galleryManager/main', 'Name'),
            'descriptionLabel' => Yii::t('galleryManager/main', 'Description'),
            'page' => 1,
            'pid' => Yii::$app->request->get('pid'),
            'photos' => $images,
        );

        //Yii::info('排序路径' .  Url::to($baseUrl + ['action' => 'order']));
        //Yii::info($baseUrl);

        $opts = Json::encode($opts);
        $view = $this->getView();
        GalleryManagerAsset::register($view);
        $view->registerJs("$('#{$this->id}').galleryManager({$opts});");
        $this->options['id'] = $this->id;
        $this->options['class'] = 'gallery-manager';

        return $this->render('galleryManager');
    }

}