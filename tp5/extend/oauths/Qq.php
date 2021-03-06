<?php
// +----------------------------------------------------------------------
// | LTHINK [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2015-2016 http://LTHINK.cn All rights reserved.
// +----------------------------------------------------------------------
// | Author: 涛哥 <liangtao.gz@foxmail.com>
// +----------------------------------------------------------------------
// | QqSDK.class.php 2015-12-02
// +----------------------------------------------------------------------
namespace oauths;

use app\common\libs\Oauth;
use think\Request;

class Qq extends Oauth
{
    /**
     * @Mark:扩展配置信息
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2016/9/15
     */
    public static function setup(){
        return array(
            'subjection'    => 'oauths',    //隶属
            'code'          => 'Qq',     // 扩展器名称名
            'name'          => lang('Qq_oauth'), // 扩展器名称翻译名
            'description'   => lang('Qq_oauth_desc'), // 扩展器名称翻译描述
            'version'       => '1.0',                                    //版本
            'author'        => 'Runtuer',                                //作者
            'website'       => 'http://www.runtuer.com',                 //出处
            'upgrade'     => '/cmfup/ver2.php',                            //升级位置
            //基本配置项
            'config'        => array(
                'appKey' => array(
                    'title'     => 'App Key',
                    'type'      => 'string',
                    'validate'  => 'required',
                ),
                'appSecret' => array(
                    'title'     => 'App Secret',
                    'type'      => 'string',
                    'validate'  => 'required',
                ),
            ),
            //特殊配置项目，可自行定义
            'special'       => array(
                'logo'          => 'qq.png',
                'appofficial'   => 'http://open.qq.com/',         //官方
                'country'       => ['zh-cn'],   //适用国家
            ),
        );
    }
    
    /**
     * @Mark:登录地址
     * @return mixed
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/9/20
     */
    public function getLoginUrl()
    {
        // TODO: Implement getLoginUrl() method.
    }
    
    /**
     * @Mark:状态检查
     * @param $parms
     * @return mixed
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/9/20
     */
    public function checkStatus($parms)
    {
        // TODO: Implement checkStatus() method.
    }
    
    /**
     * @Mark:获取访问TOKEN
     * @param $parms
     * @return mixed
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/9/20
     */
    public function getAccessToken($parms)
    {
        // TODO: Implement getAccessToken() method.
    }
    
    /**
     * @Mark:获取用户信息
     * @return mixed
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/9/20
     */
    public function getUserInfo()
    {
        // TODO: Implement getUserInfo() method.
    }
}
