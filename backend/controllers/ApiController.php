<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/4/10
 * Time: 17:15
 */

namespace backend\controllers;


use yii\web\Controller;

class ApiController extends Controller
{

    private $appKey = '65fe2ad655a91b8f61cb5d71d0157549';
    private $companyCode = 'EWBZSMTDSYXGS';
    private $sign = 'UISZ';

    public $result;

    public function actionAssess()
    {
        $config = $this->appKey + time();
        $data = $this->getDigest($config);
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $this->url);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));

        $returnStr = curl_exec($ch);
        curl_close($ch);
    }

    public function getDigest($plainText)
    {
        return base64_encode(md5($plainText));
    }

}