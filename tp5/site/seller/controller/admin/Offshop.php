<?php
// +----------------------------------------------------------------------
// | ETshop [ Rapid development framework for Cross border Mall ]
// +----------------------------------------------------------------------
// 版权所有 @ 深圳市润土信息技术有限公司 禁止任何企业和个人对程序代码以任何形式任何目的再发布。
// +----------------------------------------------------------------------
// | Copyright (c) 2015~2017 http://www.runtuer.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: yang <502204678@qq.com>
// +----------------------------------------------------------------------
// | 线下门店  Version 1.0  2017/5/31
// +----------------------------------------------------------------------
namespace app\seller\controller\admin;

use app\admin\controller\Admin;
use app\dbs\controller\admin\Request;
use app\seller\service\Offshop as Offshops;
use app\crossbbcg\service\Goods as GoodsApi;

class Offshop extends Admin
{
    public function _initialize()
    {
        parent::_initialize(); // TODO: Change the autogenerated stub
        $option = \app\seller\service\Shopcat::catList(['status' => 1]);
        $this->assign('option', $option);
    }
    
    /**
     * @Mark:线下店铺列表
     * @return mixed
     * @Author: yang <502204678@qq.com>
     * @Version 2017/7/5
     */
    public function index()
    {
        $this->conDb = 'Offshop';
        $data = Offshops::getlist($this->conDb);
        $this->assign('list', $data['list']);
        $this->assign("meta_title", lang('Offshop'));
        return $this->fetch();
    }
    
    /**
     * @Mark:新增线下店铺
     * @return string
     * @Author: yang <502204678@qq.com>
     * @Version 2017/5/31
     */
    public function savedata()
    {
        $data = $this->request->param();
        $re = Offshops::addShop($data);
        if ($re === true) {
            $this->success(lang('successful'), $this->jumpUrl);
        } else {
            return json($re);
        }
    }
    
    /**
     * @Mark:修改线下门店
     * @return string
     * @Author: yang <502204678@qq.com>
     * @Version 2017/5/31
     */
    public function editdata()
    {
        $data = $this->request->param();
        $re = Offshops::editShop($data);
        if ($re === true) {
            $this->success(lang('successful'), $this->jumpUrl);
        } else {
            return json($re);
        }
    }
}