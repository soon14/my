<?php
// +----------------------------------------------------------------------
// | ETshop [ Rapid development framework for Cross border Mall ]
// +----------------------------------------------------------------------
// 版权所有 @ 深圳市润土信息技术有限公司 禁止任何企业和个人对程序代码以任何形式任何目的再发布。
// +----------------------------------------------------------------------
// | Copyright (c) 2015~2017 http://www.runtuer.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: theseaer <theseaer@qq.com>
// +----------------------------------------------------------------------
// | b2b2c.config.php  Version 1.0  2016/3/14
// +----------------------------------------------------------------------

return array(
    // 模块信息
    'info' => array(
        'name'        => 'Thrower',
        'title'       => '投射终端系统',
        'icon'        => '',
        'icon_color'  => '',
        'image'       => 'thrower.png',
        'description' => '新零售，流量入口工具，管理线下可投射资源设备，含数据统计，资源',
        'author'   	  => 'Runtuer',
        'website'     => 'http://www.runtuer.com',
        'version'     => '1.0.0',
        'upgrade'     => '/cmfup/ver.php',     //升级地址
        'depends' => array(
            'Admin'   => '1.0.0',
            'Cms'    => '1.0.0',
        ),
        //依赖扩展
        'extend' => array(

        ),
    ),

    // 用户中心导航
    'user_nav' => array(
        
    ),

    // 模块配置
    'config' => array(
        
    ),

    // 后台菜单及权限节点配置
    'admin_menu' => array(
        /**
        '节点名' =>array('父节点'， '位置', 'url'， 'css class', 'data-showbar="1" data-width="700" data-height="620"', 排序, 是否权限控制),
        位置：l:左路，r：右，h：隐藏
        是否权限控制 ：1，是，0：否
         **/
        'Thrower'  => array('','l', 'thrower/admin.index/index', 'shoperp.png', '', 1, 1),
          'Dianb'   => array('Thrower','l', 'thrower/admin.index/index', '', '', 0, 1),
            'Dianlist'=> array('Dianb','r', 'thrower/admin.index/index', 'list-icon', '', 0, 1),
            'Dianitem'=> array('Dianb','r', 'thrower/admin.item/index', 'cat-icon', '', 1, 1),
            'Dianconf'=> array('Dianconf','r', 'thrower/admin.config/index', 'conf-icon', '', 2, 1),
          'Diancrowd'=> array('Thrower','l', 'thrower/admin.index/index', '', '', 0, 1),
            'Crowd'   => array('Diancrowd','r', 'thrower/admin.index/index', 'list-icon', '', 0, 1),
            'Crowdlist'=> array('Diancrowd','r', 'thrower/admin.item/index', 'cat-icon', '', 1, 1),
    )
);