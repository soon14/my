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
// | Sae  Version 2016/7/23 SAE图片服务
// +----------------------------------------------------------------------
namespace images;

use app\common\libs\Image;

class Sae extends Image
{
    /**
     * @Mark:扩展配置信息
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2016/9/15
     */
    static public function setup(){
        return array(
            'subjection'    => 'images',    //隶属
            'code'          => 'Sae',     // 扩展器名称名
            'name'          => lang('Sae_image'), // 扩展器名称翻译名
            'description'   => lang('Sae_image_desc'), // 扩展器名称翻译描述
            'version'       => '1.0',                                    //版本
            'author'        => 'Runtuer',                                //作者
            'website'       => 'http://www.runtuer.com',                 //出处
            'upgrade'     => '/cmfup/ver2.php',                            //升级位置
            //基本配置项
            'config'        => array(),
            //特殊配置项目，可自行定义
            'special'       => array(
                'logo'      => 'sae.png',
                'appofficial'  => 'http://www.runtuer.com',         //官方
            ),
        );
    }
    
    /**
     * @Mark:上传
     * @return mixed
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/7/12
     */
    public function add()
    {
        // TODO: Implement add() method.
    }
    
    /**
     * @Mark:修改
     * @return mixed
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/7/12
     */
    public function edit()
    {
        // TODO: Implement edit() method.
    }
    
    /**
     * @Mark:列表
     * @return mixed
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/7/12
     */
    public function lists()
    {
        // TODO: Implement lists() method.
    }
    
    /**
     * @Mark:删除
     * @return mixed
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/7/12
     */
    public function delete()
    {
        // TODO: Implement delete() method.
    }
    
    
}