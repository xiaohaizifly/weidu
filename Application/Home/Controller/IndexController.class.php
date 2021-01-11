<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
		// print_r($_GET);exit;
		// $Images = D("Images"); // 实例化User对象
		$data = M('Images')->where("parent_id = 0")->select(); 
		$list = M('Company')->limit(1)->find(); 
		$plate_menu = M('Plate')->where("parent_id = 0")->select(); 
		
		// print_r($list);exit;
		$this->assign('image_list',$data);	
		$this->assign('plate_menu',$plate_menu);	
		$this->assign('company',$list);	
		$this->display();
	}
}