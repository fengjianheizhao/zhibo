<?php

defined('IN_SYSTEM') or exit('Access Denied');

class manager extends Model {

	public $config;
	public $TEMPLATE;

	public function __construct() {
		parent::__construct();
		$this->DB->cache = 0; //进入后台，则关闭数据库缓存功能，保证后台管理的实时性
		$this->loadBuiltinmodel("admin"); //载入管理员模块
		$this->_ADMIN = $this->admin->getAdmin(); //获取管理员信息
		$this->admin->isLogin(); //判断管理员是否登录
	}

	public function view() {

		$_SC = &$this->_SC;
		// $user = &$this->_USER;
		$db = &$this->DB;
		$m = &$this->_M;
		$c = &$this->_C;
		$get = &$this->_GET;
		$post = &$this->_POST;
		$MOD = &$this->MOD;
		$MODEL = &$this->CONFIG_MODEL;
		$MODULE = &$this->CONFIG_MODULE;
		$_SETTING = &$this->CONFIG_SETTING;
		$CAT = $this->category;


		$SITENAME = $_SETTING['sitename'];
		$ADMIN = $this->_ADMIN;

		$Controller = $this->getController();
		$Controller ? @include_once $Controller : $this->goIndex();
	}

	public function goIndex() {
		$this->redirect("?m=index");
	}

	public function cache() {
		
	}

	//获取控制器文件
	protected function getController() {
		$controllersFile = $this->_APP_ROOT . "admin/{$this->MOD['model']}/{$this->_C}.php";
		if (file_exists($controllersFile) && $this->_C) {
			return $controllersFile;
		} else {
			return false;
		}
	}

	public function getTemplatePath() {
		return $this->_APP_ROOT . "admin/tpl/";
	}

	public function getTemplateFile($template = null) {
		if ($template === null) {
			$template = $this->_C;
		}
		return $this->getTemplatePath() . $this->MOD['model'] . "/" . $template . $this->_SC["templatePrefix"];
	}

	public function getSkin() {
		return $this->ADMIN_URL . "/admin/tpl/style/";
	}

}

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */