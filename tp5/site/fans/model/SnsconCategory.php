<?php
// +----------------------------------------------------------------------
// | ETshop [ Rapid development framework for Cross border Mall ]
// +----------------------------------------------------------------------
// 版权所有 @ 深圳市润土信息技术有限公司 禁止任何企业和个人对程序代码以任何形式任何目的再发布。
// +----------------------------------------------------------------------
// | Copyright (c) 2015~2017 http://www.runtuer.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: fancs
// +----------------------------------------------------------------------
// | Account.php  Version 2017/5/24
// +----------------------------------------------------------------------
namespace app\fans\model;

use app\common\model\Base;
use think\Db;

class SnsconCategory extends Base
{
    // 设置当前模型对应的完整数据表名称
    protected $table = '__FANS_SNSCON_CATEGORY__';
    //自动完成
    protected $auto     = [];
    protected $insert   = [];
    protected $update   = [];

}