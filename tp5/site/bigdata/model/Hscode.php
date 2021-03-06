<?php
// +----------------------------------------------------------------------
// | ETshop [ Rapid development framework for Cross border Mall ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://www.runtuer.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: theseaer <theseaer@qq.com>
// +----------------------------------------------------------------------
// | Hscode.php  Version 2017/5/17 商品海关编码MODEL
// +----------------------------------------------------------------------
namespace app\bigdata\model;

use app\common\model\Base;

class Hscode extends Base
{
    // 设置当前模型对应的完整数据表名称
    protected $table = '__BIGDATA_HSCODE__';
    
    //定义时间戳字段名create_time, update_time
    protected $autoWriteTimestamp = true;
    //自动完成
    protected $auto     = ['status'];
    protected $insert   = [];
    protected $update   = [];
}