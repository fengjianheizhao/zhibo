<?php

defined('IN_SYSTEM') or exit('Access Denied');

class index extends Model {

	public $config;

	public function __construct() {
		parent::__construct();
	}

	public function view() {
		/* 载入模板控制类，视图控制类, template依赖display运行，靠display保护内核环境变量 */
		//$this->loadBuiltinmodel("display,template");

		/*
		  $_SC = &$this->_SC;
		  $USER = &$this->_USER;
		  $db = &$this->DB;
		  $m = &$this->m;
		  $ac = &$this->ac;
		  $get = &$this->_GET;
		  $post = &$this->_POST;
		  $MOD = &$this->MOD;
		  $TEMPLATE = &$this->_TEMPLATE;
		  $SKIN = &$this->_SKIN;
		  $SITEURL = $this->_SITEURL;
		  $SITENAME = $this->_SITENAME;
		  $MODULE = $this->MODULE;
		  $_SETTING = $this->_SETTING;
		  $CAT = $this->category;
		  $AD = $this->ads;
		  $URL = $this->url;
		 */
		$Controller = $this->getController();
		$Controller ? @include_once $Controller : $this->goIndex();




		/*
		  $_SC = &$this->_SC;
		  $USER = &$this->_USER;
		  $db = &$this->DB;
		  $m = &$this->m;
		  $ac = &$this->ac;
		  $get = &$this->_GET;
		  $post = &$this->_POST;
		  $MOD = &$this->MOD;
		  $TEMPLATE = &$this->_TEMPLATE;
		  $SKIN = &$this->_SKIN;
		  $SITEURL = $this->_SITEURL;
		  $SITENAME = $this->_SITENAME;
		  $MODULE = $this->MODULE;
		  $_SETTING = $this->_SETTING;
		  $CAT = $this->category;
		  $AD = $this->ads;
		  $URL = $this->url;
		  $TIMESUFFIX = date("Ymdhi");
		  $actionfile = $this->getControllers();
		  //echo  $actionfile;

		  $actionfile ? @include_once $actionfile : $this->goIndex();
		 * 
		 */
	}

	public function cache() {
		/*
		  //载入action内容

		  // ob_start();
		  // $actionfile ? @include_once $actionfile : $this->goIndex();
		  $html = ob_get_contents();
		  $html = clearBOM($html);
		  ob_clean();

		  if ($this->_SC['cache'] && $this->ac != "ajax" && $cacheDir) {//缓存已开启
		  if (!(in_array($m, $nocache_allow) && $this->ac == "list" && !$get['areaid'])) {
		  file_put_contents($cacheFile, $html);
		  }
		  }
		  echo $html;
		 */
	}

	//获取控制器文件
	protected function getController() {
		$controllersFile = $this->_APP_ROOT . "source/controllers/{$this->MOD['model']}/{$this->_C}.php";
		if (file_exists($controllersFile) && $this->_C) {
			return $controllersFile;
		} else {
			return false;
		}
	}

	public function getTemplatePath() {
		return $this->_APP_ROOT . "template/{$this->CONFIG_SETTING['template']}/{$this->DEVICE["path"]}/{$this->_L}/";
	}

	public function getTemplateFile($template = null) {
		if ($template === null) {
			$template = $this->_C;
		}
		if ($this->_M == "index") {
			return $this->getTemplatePath() . $template . $this->_SC["templatePrefix"];
		} else {
			return $this->getTemplatePath() . $this->_M . "/" . $template . $this->_SC["templatePrefix"];
		}
	}

	public function getSkin() {
		return $this->DEVICE_URL . "/skin/{$this->_L}/";
	}

}

/*
 * This file was created by Liu Xianzhong
 *  This file has ended
 */	