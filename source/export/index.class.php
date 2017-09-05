<?php

defined('IN_SYSTEM') or exit('Access Denied');

class index extends Model {

	public function __construct() {
		parent::__construct();
	}

	public function view() {

		$_GET = &$this->_GET;
		$_POST = &$this->_POST;
		$_REQUEST = &$this->_REQUEST;
		$_COOKIE = &$this->_COOKIE;



		$_SC = &$this->_SC;
		$CAT = $this->category;
		$AD = $this->ads;
		$MOD = &$this->MOD;

		$Controller = $this->getController();
		$Controller ? @include_once $Controller : $this->goIndex();
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
		//

		return $this->_APP_ROOT . "template/{$this->CONFIG_SETTING['template']}/{$this->DEVICE["path"]}/{$this->_L}/";
	}

	public function getTemplateFile($template = null) {
		if ($template === null) {
			$template = $this->_C;
		}
		if ($this->_M == "index") {
			return $this->getTemplatePath() . $template . $this->_SC["templatePrefix"];
		} else {
			$RULES_TEMPLATE = $this->CONFIG_TEMPLATE['rules'];
			if ($this->MOD['template'] && isset($RULES_TEMPLATE[$this->MOD['model']]) && $RULES_TEMPLATE[$this->MOD['model']]) {
				$_M = $this->MOD['template'];
			} else {
				$_M = $this->_M;
			}
			return $this->getTemplatePath() . $_M . "/" . $template . $this->_SC["templatePrefix"];

			/*
			 * 
			 * http://www.zhibo.com/web/pages/show.php?itemid=20
			  $RULES_TEMPLATE = $this->CONFIG_TEMPLATE['rules'];
			  if ($this->MOD['template'] && isset($RULES_TEMPLATE[$this->MOD['model']]) && $RULES_TEMPLATE[$this->MOD['model']]) {
			  $TEMPLATE = $RULES_TEMPLATE[$this->MOD['model']][$this->MOD['template']];
			  if (isset($TEMPLATE[$this->_C]) && $TEMPLATE[$this->_C]) {
			  $template = $TEMPLATE[$this->_C];
			  }
			  } */
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