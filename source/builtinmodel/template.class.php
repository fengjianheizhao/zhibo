<?php

class template implements setkernel {
	/* 构造函数 */

	private $DB;
	private $Kernel;


	/**/
	public $_SC;
	public $_APP_ROOT;
	public $MOD;
	public $CONFIG_SETTING;
	public $CONFIG_MODEL;
	public $CONFIG_MODULE;
	/**/
	public $_GET;
	public $_POST;
	public $_REQUEST;
	public $_COOKIE;

	/**/
	public $DEVICE;
	public $DEVICES;
	/**/
	public $_USER;
	public $_ADMIN;
	/**/
	public $_M;
	public $_D;
	public $_L;
	public $_C;
	public $_A;
	public $table;

	public function __construct() {
		
	}

	public function getTemplateConfig($template = null) {
		//Template
		if ($template == null) {
			$template = $this->CONFIG_SETTING['template'];
		}
		return include $this->_APP_ROOT . "/template/" . $template . "/template.ini.php";
	}

	public function setKernel($Kernel) {
		$this->Kernel = $Kernel;
		$this->DB = $Kernel->DB;
		$this->_APP_ROOT = $Kernel->_APP_ROOT;
		$this->CONFIG_SETTING = $Kernel->CONFIG_SETTING;
		$this->table = "{$this->DB->tabPre}template";
	}

}
