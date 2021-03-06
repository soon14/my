<?php
// +----------------------------------------------------------------------
// | ETshop [ Rapid development framework for Cross border Mall ]
// +----------------------------------------------------------------------
// 版权所有 @ 深圳市润土信息技术有限公司 禁止任何企业和个人对程序代码以任何形式任何目的再发布。
// ----------------------------------------------------------------------
// | Copyright (c) 2015~2017 http://www.runtuer.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: theseaer <theseaer@qq.com>
// +----------------------------------------------------------------------
// | 微信跨境支付  Version 2016/11/25
// +----------------------------------------------------------------------
namespace seapays;

use app\common\libs\Seapyment;

class Wechat extends Seapyment
{
    /**
     * @Mark:扩展配置信息
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2016/9/15
     */
    public static function setup()
    {
        return array(
            'subjection'  => 'seapays',  //隶属
            'code'        => 'Wechat',    // 扩展器名称名
            'name'        => lang('Wechat_seapays'),      //扩展器名称翻译名
            'description' => lang('Wechat_seapays_desc'), //扩展器名称翻译描述
            'version'     => '1.0',                            //版本
            'author'      => 'Runtuer',                        //作者
            'website'     => 'http://www.runtuer.com',         //出处
            'upgrade'     => '/cmfup/ver2.php',                  //升级位置
            
            //限制平台
            'platform'    => array(
                'title'   => 'Platform',
                'type'    => 'radio',     //类型
                'default' => 'wap_app',    //默认值
                'tip'     => lang('In wechat'),    //提示
                'option'  => [            //列出的可选值
                    'wap_app' => 'Wap/App',
                ],
            ),
            
            //基本配置项
            'config'      => array(
                'pay_name'      => array(
                    'title'    => 'Pay name',
                    'type'     => 'string',
                    'validate' => 'required',
                ),
                'mchid'         => array(
                    'title'    => 'Mchid',
                    'type'     => 'string',
                    'validate' => 'required',
                ),
                'appid'         => array(
                    'title'    => 'Wechat Appid',
                    'type'     => 'string',
                    'validate' => 'required',
                ),
                'key'           => array(
                    'title'    => 'Wechat key',
                    'type'     => 'string',
                    'validate' => 'required',
                ),
                'secert'        => array(
                    'title'  => 'Wechat secert',
                    'tip'    => 'only JSAPI must',
                    'type'   => 'string',
                    'length' => 300,
                ),
                'currency_code' => array(
                    'title'    => 'Default currency_code',
                    'type'     => 'select',
                    'validate' => 'required',
                    'default'  => 'CNY',
                    'option'   => [
                        'CNY' => 'CNY',
                        'HKD' => 'HKD',
                        'USD' => 'USD',
                        'CAD' => 'CAD',
                        'EUR' => 'EUR',
                        'GBP' => 'GBP',
                        'AUD' => 'AUD',
                    ],
                ),
                'warehouse'     => array(
                    'title'    => 'Storehouse',
                    'type'     => 'string',
                    'length'   => 260,
                    'tip'      => 'A001;B001;C001;D001',
                    'validate' => 'required',
                ),
            ),
            //特殊配置项目，可自行定义
            'special'     => array(
                'logo'        => 'wechat.png',
                'appofficial' => 'https://mp.weixin.qq.com/',         //官方
                'country'     => ['zh-cn'],//适用国家
            ),
        );
    }
    
    /**
     * @Mark:异步通知停止
     * @return mixed
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2016/12/23
     */
    public function notifyStop()
    {
        die("<xml><return_code><![CDATA[SUCCESS]]></return_code><return_msg><![CDATA[OK]]></return_msg></xml>");
    }
    
    /**
     * @Mark:获取提交地址
     * @return mixed
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2016/12/23
     */
    public function getSubmitUrl()
    {
        return 'https://api.mch.weixin.qq.com/pay/unifiedorder';
    }
    
    /**
     * @Mark:获取要发送的数据数组结构
     * @param $payment array 要传递的支付信息
     * $payment = [
     *      'OrderNO'   => '',
     *      'Name'      => '',
     *      'Amount'    => '',
     *      'appid'     =>
     *      'mch_id'    =>
     *      'key'       =>
     * ];
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/7/10
     */
    public function getSendData($payment)
    {
        $info   = self::setup();
        $where  = ['code' => $info['code'], 'subjection' => $info['subjection']];
        $config = self::config($where);
        
        //基本参数
        $return = [
            'appid'            => $payment['appid'] ? $payment['appid'] : $config['appid'],
            'mch_id'           => $payment['mch_id'] ? $payment['mch_id'] : $config['mch_id'],
            'nonce_str'        => rand(100000, 999999),
            'body'             => '微信支付',
            'out_trade_no'     => $payment['OrderNO'],
            'total_fee'        => $payment['Amount'] * 100,
            'spbill_create_ip' => get_client_ip(),
            'notify_url'       => $this->serverCallbackUrl,
            'trade_type'       => 'JSAPI',
            'openid'           => \app\common\libs\Wechat::getOpenId()
        ];
        
        //除去待签名参数数组中的空值和签名参数
        $para_filter = $this->paraFilter($return);
        
        //对待签名参数数组排序
        $para_sort = $this->argSort($para_filter);
        
        //生成签名结果
        $mysign = $this->buildMysign($para_sort, $payment['key'] ? $payment['key'] : $config['key']);
        
        //签名结果与签名方式加入请求提交参数组中
        $return['sign'] = $mysign;
        
        $xmlData = $this->array2xml($return);
        $result  = $this->curlSubmit($xmlData);
        
        //进行与支付订单处理
        $resultArray = $this->xml2array($result);
        if (is_array($resultArray)) {
            //处理正确
            if (isset($resultArray['return_code']) && $resultArray['return_code'] == 'SUCCESS') {
                $resultArray['key']      = $payment['key'] ? $payment['key'] : $config['key'];
                $resultArray['order_no'] = $payment['OrderNO'];
                return $resultArray;
            } else {
                die($resultArray['return_msg']);
            }
        } else {
            die($result);
        }
        return null;
    }
    
    /**
     * @Mark:同步支付回调
     * @param array $ExternalData 支付接口回传的数据
     * @param string $payment 支付接口类名
     * @param float $money 交易金额
     * @param string $message 信息
     * @param string $orderNo 订单号
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/8/13
     */
    public function callback($ExternalData, &$payment, &$money, &$message, &$orderNo)
    {
    }
    
    /**
     * @Mark:异步同步支付回调
     * @param array $callbackData 支付接口回传的数据
     * @param int|string $payment 支付接口ID
     * @param float $money 交易金额
     * @param string $message 信息
     * @param string $orderNo 订单号
     * @return bool
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/8/13
     */
    public function serverCallback($callbackData, &$payment, &$money, &$message, &$orderNo)
    {
        $postXML      = file_get_contents("php://input");
        $callbackData = $this->xml2array($postXML);
        
        //获取配置
        $info   = self::setup();
        $where  = ['code' => $info['code'], 'subjection' => $info['subjection']];
        $config = self::config($where);
        
        if (isset($callbackData['return_code']) && $callbackData['return_code'] == 'SUCCESS') {
            //除去待签名参数数组中的空值和签名参数
            $para_filter = $this->paraFilter($callbackData);
            
            //对待签名参数数组排序
            $para_sort = $this->argSort($para_filter);
            
            //生成签名结果
            $mysign = $this->buildMysign($para_sort, $payment['key'] ? $payment['key'] : $config['key']);
            
            //验证签名
            if ($mysign == $callbackData['sign']) {
                if ($callbackData['result_code'] == 'SUCCESS') {
                    $orderNo = $callbackData['out_trade_no'];
                    $money   = $callbackData['total_fee'] / 100;
                    
                    //记录回执流水号
                    if (isset($callbackData['transaction_id']) && $callbackData['transaction_id']) {
                        $callbackData['buyer']      = $callbackData['buyer_email']; //支付账户
                        $callbackData['time']       = strtotime($callbackData['notify_time']); //支付时间
                        $callbackData['collection'] = $callbackData['seller_email']; //收款账户
                        $this->writeTradeNo($callbackData, $payment);
                        
                        $resultArray['key']      = $payment['key'];
                        $resultArray['order_no'] = $payment['OrderNO'];
                        return $resultArray;
                    }
                    return true;
                } else {
                    $message = $callbackData['err_code_des'];
                }
            } else {
                $message = lang('Sign error');
            }
        }
        
        return ['code' => 0, 'msg' => $message ? $message : $callbackData['message']];
    }
    
    /**
     * @Mark:支付动作
     * @param $sendData
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/8/13
     */
    public function doPay($sendData)
    {
        //获取配置参数
        $info   = self::setup();
        $where  = ['code' => $info['code'], 'subjection' => $info['subjection']];
        $config = self::config($where);
        
        if (isset($sendData['prepay_id']) && $sendData['prepay_id']) {
            $return = array();
            
            //基本参数
            $return['appId']     = $config['appid'] ? $config['appid'] : $sendData['appid'];
            $return['timeStamp'] = time();
            $return['nonceStr']  = rand(100000, 999999);
            $return['package']   = "prepay_id=" . $sendData['prepay_id'];
            $return['signType']  = "MD5";
            
            //除去待签名参数数组中的空值和签名参数
            $para_filter = $this->paraFilter($return);
            
            //对待签名参数数组排序
            $para_sort = $this->argSort($para_filter);
            
            //生成签名结果
            $mysign = $this->buildMysign($para_sort, $config['key'] ? $config['key'] : $sendData['key']);
            
            //签名结果与签名方式加入请求提交参数组中
            $return['paySign']    = $mysign;
            $return['successUrl'] = Url::build('stools/payment/succ', ['class' => base64_encode(get_called_class()), 'platform' => $this->platform], true, true);
            $return['failUrl']    = Url::build('stools/payment/fail', ['class' => base64_encode(get_called_class()), 'platform' => $this->platform], true, true);
            
            include(dirname(__FILE__) . '/template/pay.php');
        } else {
            $message = $sendData['err_code_des'] ? $sendData['err_code_des'] : '微信下单API接口失败';
            die($message);
        }
    }
    
    /**
     * @Mark:提交数据
     * @param $xmlData 要发送的xml数据
     * @return xml 返回数据
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/8/13
     */
    private function curlSubmit($xmlData)
    {
        //接收xml数据的文件
        $url = $this->getSubmitUrl();
        
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_URL, $url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HEADER, false);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Accept: application/xml', 'Content-Type: application/xml'));
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $xmlData);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_TIMEOUT, 30);
        
        $response = curl_exec($ch);
        if ($response) {
            curl_close($ch);
            return $response;
        } else {
            $error = curl_errno($ch);
            echo "call faild, errorCode:$error\n";
            curl_close($ch);
            return false;
        }
    }
    
    /**
     * @Mark:从array到xml转换数据格式
     * @param $arrayData
     * @return string
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/8/13
     */
    private function array2xml($arrayData)
    {
        $xml = '<xml>';
        foreach ($arrayData as $key => $val) {
            $xml .= '<' . $key . '><![CDATA[' . $val . ']]></' . $key . '>';
        }
        $xml .= '</xml>';
        return $xml;
    }
    
    /**
     * @Mark:从xml到array转换数据格式
     * @param $xmlData xml
     * @return array
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/8/13
     */
    private function xml2array($xmlData)
    {
        $result    = array();
        $xmlHandle = xml_parser_create();
        xml_parse_into_struct($xmlHandle, $xmlData, $resultArray);
        
        foreach ($resultArray as $key => $val) {
            if ($val['tag'] != 'XML') {
                $result[$val['tag']] = $val['value'];
            }
        }
        return array_change_key_case($result);
    }
    
    /**
     * @Mark:除去数组中的空值和签名参数
     * @param $para 签名参数组
     * @return array  去掉空值与签名参数后的新签名参数组
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/8/13
     */
    private function paraFilter($para)
    {
        $para_filter = array();
        foreach ($para as $key => $val) {
            if ($key == "sign" || $key == "sign_type" || $val == "") {
                continue;
            } else {
                $para_filter[$key] = $para[$key];
            }
        }
        return $para_filter;
    }
    
    /**
     * @Mark:对数组排序
     * @param $para 排序前的数组
     * @return string 排序后的数组
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/8/13
     */
    private function argSort($para)
    {
        ksort($para);
        reset($para);
        return $para;
    }
    
    /**
     * @Mark:生成签名结果
     * @param $sort_para  要签名的数组
     * @param $key  交易安全校验码
     * @param string $sign_type 签名类型 默认值：MD5
     * @return string  签名结果字符串
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/8/13
     */
    private function buildMysign($sort_para, $key, $sign_type = "MD5")
    {
        //把数组所有元素，按照“参数=参数值”的模式用“&”字符拼接成字符串
        $prestr = $this->createLinkstring($sort_para);
        //把拼接后的字符串再与安全校验码直接连接起来
        $prestr = $prestr . '&key=' . $key;
        //把最终的字符串签名，获得签名结果
        $mysgin = md5($prestr);
        return strtoupper($mysgin);
    }
    
    /**
     * @Mark:把数组所有元素，按照“参数=参数值”的模式用“&”字符拼接成字符串
     * @param $para  需要拼接的数组
     * @return string 拼接完成以后的字符串
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/8/13
     */
    private function createLinkstring($para)
    {
        $arg = "";
        foreach ($para as $key => $val) {
            $arg .= $key . "=" . $val . "&";
        }
        
        //去掉最后一个&字符
        $arg = trim($arg, '&');
        
        //如果存在转义字符，那么去掉转义
        if (function_exists('get_magic_quotes_gpc') && get_magic_quotes_gpc()) {
            $arg = stripslashes($arg);
        }
        
        return $arg;
    }
    
    /**
     * @Mark: 退款
     * @param $sendData
     * @return mixed
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/9/19
     */
    public function dorefund($sendData)
    {
        //获取配置参数
        $info   = self::setup();
        $where  = ['code' => $info['code'], 'subjection' => $info['subjection']];
        $config = self::config($where);
        
        //退款参数
        $refundorder         = array(
            'appid'          => $config['appid'],
            'mch_id'         => $config['mch_id'],
            'nonce_str'      => self::getNonceStr(),
            'transaction_id' => $sendData['transaction_id'],
            'out_refund_no'  => $sendData['out_refund_no'],
            'total_fee'      => $sendData['total_fee'] * 100,
            'refund_fee'     => $sendData['refund_fee'] * 100
        );
        $refundorder['sign'] = self::makeSign($refundorder);
        
        //请求数据,进行退款
        $xmldata = self::array2xml($refundorder);
        $url     = 'https://api.mch.weixin.qq.com/secapi/pay/refund';
        $res     = self::post($url, $xmldata);
        if (!$res) {
            return ['code' => 0, 'msg' => "Can't connect the server"];
        }
        
        $content = self::xml2array($res);
        if (strval($content['result_code']) == 'FAIL') {
            return ['status' => 0, 'msg' => strval($content['err_code']) . ':' . strval($content['err_code_des'])];
        }
        if (strval($content['return_code']) == 'FAIL') {
            return ['status' => 0, 'msg' => strval($content['return_msg'])];
        }
        
        return $content;
    }
    
    
}