<?php

/**
 * User: Ben and chenangel
 * Usage:
 * - 可在内容字段插入以下标签，由本Behavior进行解析
 * {{internal:SEO_CODE}} SEO_CODE CmsPage表的SEO_CODE字段，根据该字段获取对应文章
  {{block:CODE}} CODE 内容块的编码，根据code 获取指定内容块的content，并插入文章
  {{album_block:CODE}} CODE 相册的编码，根据code 获取指定相册块的轮播图集，并插入文章
  {{widget:\romkaChev\yii2\swiper\Swiper|params:{album_block=ALBUMS,items=2}}},该widget目前提供图集widget，传album_block参数指定 相册编码 ，items参数指定需要获取多少张图片
 * 
 * - 虽然可在Entity中attach，但最好在使用时才附加本Behavior，以减少实体在列表afterfind时的消耗
 */

namespace common\behaviors;

use Yii;
use common\components\SimpleHTMLDom;
use common\helpers\FileHelper;
use common\models\c2\entity\CmsBlock;
use common\models\c2\entity\CmsBlockItem;
use common\models\c2\entity\CmsPage;
use common\models\c2\entity\EntityAttachmentImage;
use common\models\c2\statics\EntityAttachmentType;
use cza\base\models\ActiveRecord;
use yii\base\Behavior;
use yii\helpers\Url;
use yii\helpers\Html;

class CmsContentBehavior extends Behavior {

    protected $_simpleHTML = [];
    protected $_patterns = array(
//        'file' => '/{{file:([\d]+)}}/i',
        'image' => '/{{image:([\w\d\._-]+)}}/i',
        'internal' => '/{{internal:([\w\d\._-]+)}}/i',
//       'email' => '/{{email:([\w\d!#$%&\'*+\\/=?^_`{|}~-]+(?:\.[\w\d!#$%&\'*+\\/=?^_`{|}~-]+)*@(?:[\w\d](?:[\w\d-]*[\w\d])?\.)+[\w\d](?:[\w\d-]*[\w\d])?)}}/i',
        'block' => '/{{block:([\w\d\._-]+)}}/i',
        'album_block' => '/{{album_block:([\w\d\._-]+)}}/i',
//        'widget' => '/{{widget:([^%&\',;=?$\x22]+[\s\S]+)}}/i',
        'widget' => '/{{widget:(.*?)\|params:\{(.*?)\}}}/i',
    );
    protected $_data = [];
    public $fields = [];
    public $config = [
        'entity_class' => '',
    ];

    /*
     * defines switch options on running, , it is array, default is
      array(
      'handleFiles' => true,
      'handleImages' => true,
      'pathCreate' => true,
      'cachingPolicy' => true,
      'renderBlock' => true,
      'renderWidget' => true,
      'renderAlbumBlock' => true,
      );
     */
    public $options = [];

    public function init() {
        parent::init();
        $defaults = [
            'renderWhenAttach' => false,
            'renderWhenAfterFind' => false,
            'renderImage' => true,
            'renderBlock' => true,
            'renderWidget' => true,
            'renderAlbumBlock' => true,
            'renderInternal' => true,
        ];
        $this->options = \yii\helpers\ArrayHelper::merge($defaults, $this->options);
    }

    public function attach($owner) {
        parent::attach($owner);
        if ($this->options['renderWhenAttach']) {
            $this->_render();
        }
    }

    public function events() {
        return [
            ActiveRecord::EVENT_AFTER_INSERT => 'afterSave',
            ActiveRecord::EVENT_AFTER_UPDATE => 'afterSave',
            ActiveRecord::EVENT_BEFORE_DELETE => 'beforeDelete',
            ActiveRecord::EVENT_AFTER_FIND => 'afterFind',
        ];
    }

    protected function setUp() {
        $simpleDom = new SimpleHTMLDom();
        foreach ($this->fields as $field) {
            $this->_simpleHTML[$field] = $simpleDom->str_get_html($this->owner->$field);
        }
    }

    public function afterSave($event) {
        $this->setUp();

        $fieldsContent = [];
        foreach ($this->fields as $field) {
            $content = $this->_handleImages($field);
            if ($this->owner->$field != $content) {
                $fieldsContent[$field] = $content;
            }
        }

        if (!empty($fieldsContent)) {
            $this->owner->updateAttributes($fieldsContent);
        }
//        $this->_render();
    }

    public function beforeDelete($event) {
        $this->_delImages();
    }

    public function afterFind($event) {
        if ($this->options['renderWhenAfterFind']) {
            $this->_render();
        }
    }

    public function renderContent() {
        $this->_render();
    }

    protected function _render() {
//        Yii::info("_render");
        foreach ($this->fields as $field) {
            if ($this->options['renderImage']) {
//                Yii::info("{$this->owner->className()}: {$field} : _renderImage");
                $this->_renderImages($field);
            }

            if ($this->options['renderBlock']) {
//                Yii::info("{$this->owner->className()}: {$field} : _renderBlock");
                $this->_renderBlock($field);
            }
//
            if ($this->options['renderInternal']) {
//                Yii::info("{$this->owner->className()}: {$field} : _renderInternal");
                $this->_renderInternal($field);
            }
//
            if ($this->options['renderAlbumBlock']) {
//                Yii::info("{$this->owner->className()}: {$field} : _renderAlbumBlock");
                $this->_renderAlbumBlock($field);
            }

            if ($this->options['renderWidget']) {
                $this->_renderWidget($field);
            }
        }
    }

    protected function _renderWidget($field) {
        $matches = array();
        preg_match_all($this->_patterns['widget'], $this->owner->$field, $matches);

//        Yii::info($matches);
        foreach ($matches[1] as $index => $name) {
            parse_str($matches[2][$index], $params);
//            Yii::info($params);
            $this->getWidgetRendering($field, $matches[0][$index], $matches[1][$index], $params);
        }
    }

    protected function getWidgetRendering($field, $replaceStr, $widget, $params) {
        $widgetHtmls = $widget::widget($params);
        $this->owner->$field = str_replace($replaceStr, $widgetHtmls, $this->owner->$field);
    }

    protected function _renderAlbumBlock($field) {
        $matches = array();
        preg_match_all($this->_patterns['album_block'], $this->owner->$field, $matches);
        foreach ($matches[1] as $index => $name) {
            $this->getAlbumHtmlWithCode($field, $matches[0][$index], $name);
        }
    }

    public function getAlbumHtmlWithCode($field, $replaceStr, $code) {
        $block = CmsBlock::find()->andWhere(['code' => $code])->one();
        $block->renderContent();
        $album_items = CmsBlockItem::find()->andWhere(['block_id' => $block->id])->all();
        $albumHtmls = '<div class="swiper-container"><div class="swiper-wrapper">';
        foreach ($album_items as $album_item) {
            $entity = EntityAttachmentImage::find()->andWhere(['hash' => $album_item->link])->one();
            if (!is_null($entity)) {
                $src = \Yii::$app->params['config']['upload']['accessUrl'] . '/' . $entity->logic_path . $entity->hash . '.' . $entity->extension;
                $title = $entity->hash . '.' . $entity->extension;
                $img = '<img class="center-block" src="' . $src . '" title="' . $title . '" alt="' . $title . '"/>';
                $albumHtmls .= '<div class="swiper-slide">' . $img . '</div>';
            }
        }
        $albumHtmls .= '</div><div class="swiper-pagination"></div></div>';

        $this->owner->$field = str_replace($replaceStr, $albumHtmls, $this->owner->$field);
    }

    protected function _renderInternal($field) {
        $matches = array();
        preg_match_all($this->_patterns['internal'], $this->owner->$field, $matches);
        foreach ($matches[1] as $index => $name) {
            $this->getInternalHtmlWithCode($field, $matches[0][$index], $name);
        }
    }

    public function getInternalHtmlWithCode($field, $replaceStr, $code) {
        $internals = CmsPage::find()->andWhere(['like', 'seo_code', $code])->all();
        $internalHtmls = '';
        foreach ($internals as $internal) {
            if (!is_null($internals)) {
                $internalHtmls .= Html::a($internal->title, Url::toRoute('/page/' . $code));
            }
        }
        $this->owner->$field = str_replace($replaceStr, $internalHtmls, $this->owner->$field);
    }

    /**
     * block render
     */
    protected function _renderBlock($field) {
        if (preg_match_all($this->_patterns['block'], $this->owner->$field, $matchs)) {
            foreach ($matchs[1] as $index => $match) {
                $this->getBlockHtmlWithCode($field, $matchs[0][$index], $match);
            }
        }
    }

    public function getBlockHtmlWithCode($field, $replaceStr, $code) {
        $block = CmsBlock::find()->andWhere(['code' => $code])->one();
        $block->renderContent();
        if (!is_null($block)) {
            $this->owner->$field = str_replace($replaceStr, $block->content, $this->owner->$field);
        }
    }

    /**
     * Image all action
     */
    protected function _delImages() {
        $entitys = EntityAttachmentImage::find()->andWhere(['entity_id' => $this->owner->id])->all();
        foreach ($entitys as $entity) {
            $entity->delete();
        }
    }

    public function getImgPath($entity) {
        $path = Yii::getAlias('@appimage') . '/' . $entity->logic_path . $entity->hash . '.' . $entity->extension;
        return $path;
    }

    protected function _renderImages($field) {
        $html = $this->owner->$field;

        if (preg_match_all($this->_patterns['image'], $html, $matchs)) {
            foreach ($matchs[1] as $index => $match) {
                $this->getImgHtmlWithEntityHash($field, $matchs[0][$index], $match);
            }
        }
    }

    public function getEntityClass() {
        return empty($this->config['entity_class']) ? $this->owner->className() : $this->config['entity_class'];
    }

    public function getImgHtmlWithEntityHash($field, $replaceStr, $hash) {
        $entity = EntityAttachmentImage::find()->andWhere(['hash' => $hash, 'entity_class' => $this->getEntityClass()])->one();
        if (!is_null($entity)) {
            $src = $entity->getOriginalUrl();
            $title = $entity->hash . '.' . $entity->extension;
            $img = Html::img($src, [
                        'title' => $title,
                        'alt' => $title,
            ]);

            $this->owner->$field = str_replace($replaceStr, $img, $this->owner->$field);
        }
    }

    //handle image and insert EntityAttachment
    protected function _handleImages($field) {
        $html = &$this->_simpleHTML[$field];
        $images = [
            'new' => [],
            'old' => [],
        ];
        if (!is_object($html)) {
            return "";
        }

        foreach ($html->find('img') as &$element) {
            if (!preg_match('/^^((https|http|ftp|rtsp|mms)?:\/\/)[^\s]+$/', $element->src, $matches)) {
                $filename = basename($element->src);
                $key = explode('.', $filename)[0];
                $filepath = Yii::getAlias('@backend') . '/web' . $element->src;
                if (@file_exists($filepath)) {
                    $images['new'][$key] = [
                        'src' => $element->src,
                        'title' => $element->title,
                        'alt' => isset($element->alt) ? $element->alt : '',
                    ];


                    $logicPath = $this->getLogicPath($field, $element->src, $element->title);
                    $realPath = $this->moveToRealPath($element->src, $logicPath);

                    if ($realPath) {
                        $imgInfo = $this->getImageInfo($realPath);
                        $entity = new EntityAttachmentImage();
                        $entity->loadDefaultValues();
                        $entity->setEnableVersions(false);
                        $attributeValues = [
                            'name' => $filename,
                            'entity_class' => $this->getEntityClass(),
                            'entity_attribute' => $field,
                            'hash' => $key,
                            'size' => $imgInfo['size'],
                            'extension' => $imgInfo['type'],
                            'type' => EntityAttachmentType::TYPE_IMAGE,
                            'mime_type' => 'image/' . $imgInfo['type'],
                            'logic_path' => $logicPath,
                            'entity_id' => $this->owner->id
                        ];
                        $entity->setAttributes($attributeValues);
                        if ($entity->validate()) {
                            $entity->save();
                            $html = str_replace($element, '{{image:' . $key . '}}', $html);
                        } else {
                            $errors = $entity->errors;
                            Yii::info($errors);
                        }
                    }
                }
            }
            //old image and entityAttachment must have
            if (preg_match('/^^((https|http|ftp|rtsp|mms)?:\/\/)[^\s]+$/', $element->src, $matches) && strstr($element, 'bulletelc.com')) {
                $filename = basename($element->src);
                $key = explode('.', $filename)[0];
                if (EntityAttachmentImage::find()->andWhere(['hash' => $key])->one()) {
                    $images['old'][$key] = [
                        'src' => $element->src,
                        'title' => $element->title,
                        'alt' => $element->alt,
                    ];
                    $html = str_replace($element, '{{image:' . $key . '}}', $html);
                }
            }
        }

        if (count($images['new']) > 0) {
            foreach ($images['new'] as $k => $newOne) {
                $newFilePath = $this->getTmpUploadPath() . $newOne['src'];
                if (@file_exists($newFilePath)) {
                    @unlink($newFilePath);
                }
            }
        }

        return $html;
    }

    public function getUploadPath() {
        if (!isset($this->_data['UploadPath'])) {
            $this->_data['UploadPath'] = Yii::getAlias(Yii::$app->params['config']['upload']['storePath']);
        }
        return $this->_data['UploadPath'];
    }

    public function getTmpUploadPath() {
        if (!isset($this->_data['TmpUploadPath'])) {
            $this->_data['TmpUploadPath'] = Yii::getAlias('@backend') . '/web';
        }
        return $this->_data['TmpUploadPath'];
    }

    public function moveToRealPath($imgPath, $logicPath) {
        $newDir = $this->getUploadPath() . DIRECTORY_SEPARATOR . $logicPath;
//        $realPath = $newDir . DIRECTORY_SEPARATOR . basename($imgPath);
        $realPath = $newDir . basename($imgPath);
        $filepath = $this->getTmpUploadPath() . $imgPath;

//        Yii::info("imgPath: " . $imgPath);
//        Yii::info("realPath: " . $realPath);
//        Yii::info("newDir: " . $newDir);
//        Yii::info("logicPath: " . $logicPath);


        if (FileHelper::createDir($newDir)) {
            if (copy($filepath, $realPath)) {
                $oldDir = dirname($filepath);
                //                @unlink($filepath);
//                FileHelper::unlinkDir($oldDir);
//                Yii::info('$oldDir：' .$oldDir);

                return $realPath;
            }
        }
        return false;
    }

    //id1 replace ,del '/uploads/' and del 'title'
    public function getLogicPath($field, $imgPath, $title) {
        $newPath = $this->owner->formName() . "/{$this->owner->id}/{$field}/";
        return $newPath;
    }

    //get imgInfo
    public function getImageInfo($img) {
        $img_info = getimagesize($img);
        switch ($img_info[2]) {
            case 1:
                $imgtype = "gif";
                break;
            case 2:
                $imgtype = "jpg";
                break;
            case 3:
                $imgtype = "png";
                break;
        }
        $img_type = $imgtype;
        $img_size = ceil(filesize($img));
        $new_img_info = array(
            "width" => $img_info[0],
            "height" => $img_info[1],
            "type" => $img_type,
            "size" => $img_size
        );
        return $new_img_info;
    }

}
