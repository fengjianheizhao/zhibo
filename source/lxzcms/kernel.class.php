<?php

abstract class Kernel {

	public $_SOURCE_ROOT = null; //源目录
	public $_APP_SOURCE_ROOT = null; //应用源目录
	public $_ROOT = null; //系统根目录
	public $_APP_ROOT = null; //系统应用根目录
	/**/
	public $_LOG_START = true; //写日志功能是否开启
	public $_CACHE_START = true; //缓存功能是否开启
	public $_CACHE_PATH = true; //缓存存放目录
	public $_DEBUG_START = true; //调试模式是否开启
	protected $_EXPORT = null; //系统export对象


	/**/
	public $_GET = null; //系统的GET数组
	public $_POST = null; //系统的POST数组
	public $_REQUEST = null; //系统的REQUEST数组
	public $_COOKIE = null; //系统的COOKIE 数组

	/**/
	public $_USER = null; //系统用户信息
	public $_ADMIN = null; //系统管理员信息



	/**/
	public $_M = null; //被访问的模块名称
	public $_D = null; //访问的设备类型
	public $_L = null; //访问的语言类型
	public $_C = null; //访问的控制器名称
	public $_A = null; //访问的action

	/**/
	public $ADMIN_URL = null; //URL
	public $FILES_URL = null; //URL
	public $DEVICE_URL = null; //URL
	public $DEVICES = null; //设备列表
	public $DEVICE = null; //当前设备
	public $ClientIP = null; //当前访客的IP
	public $HOST = null; //当前服务器的HOST


	/**/
	public $_SC = null; //系统的配置数组
	public $MOD = null; //被访问的模块配置
	public $CONFIG_MODULE = null; //模块的配置参数
	public $CONFIG_MODEL = null; //模型配置参数
	public $CONFIG_SETTING = null; //系统设置参数


	/**/
	private $_DB_CONF = null; //框架数据库配置信息  private私有类型  子类无法访问 在体统框架中授权给内置模型
	private $DB_CONF = null; //应用数据库配置信息
	/**/
	private $_DB = null; //框架数据库配置信息  private私有类型  子类无法访问 在体统框架中授权给内置模型
	public $DB = null; //应用数据库配置信息

	/**/
	public $VERSION = null; //获取版本信息

	//抽象方法

	abstract public function view();

	abstract public function cache();

	protected function __construct() {
		$this->init(); //初始化系统参数

		/* 载入核心接口 */
		$this->loadRequire("setkernel", "interface");
		$this->loadRequire("config", "interface");



		/* 加载数据库配置信息 */
		$this->_DB_CONF = $this->LoadConf("db.core");
		$this->DB_CONF = $this->LoadConf("db");

		/* 连接数据库 */
		$this->_DB = $this->LoadClass("db", "builtinmodel", $this->_DB_CONF);
		$this->_DB->setRoot(LxzCmsRoot\LxzCms::$_ROOT); //设置db环境目录

		$this->DB = $this->LoadClass("db", "builtinmodel", $this->DB_CONF);
		$this->DB->setRoot(LxzCmsRoot\LxzCms::$_APP_ROOT); //设置db环境目录
		//自动加载配置文件指定资源
		$this->autoLoad();
		//初始化数据
	}

	private function autoLoad() {
		//加载设置自动加载的函数库
		if (isset($this->_SC['autoLoadFunction']) && !empty($this->_SC['autoLoadFunction'])) {
			$this->loadFunction($this->_SC['autoLoadFunction']);
		}

		//加载设置自动加载的系统参数
		if (isset($this->_SC['autoLoadGlobal']) && !empty($this->_SC['autoLoadGlobal'])) {
			$this->loadGlobals($this->_SC['autoLoadGlobal']);
		}

		//加载设置自动加载的内置模型
		if (isset($this->_SC['autoLoadBuiltinModel']) && !empty($this->_SC['autoLoadBuiltinModel'])) {
			$this->loadBuiltinModel($this->_SC['autoLoadBuiltinModel']);
		}
	}

	//初始化运行环境
	private function init() {
		/* 继承LxzCms类的数据属性 初始化 */
		$this->_SOURCE_ROOT = &LxzCmsRoot\LxzCms::$_SOURCE_ROOT; //源目录
		$this->_APP_SOURCE_ROOT = &LxzCmsRoot\LxzCms::$_APP_SOURCE_ROOT; //应用源目录
		$this->_ROOT = &LxzCmsRoot\LxzCms::$_ROOT; //系统根目录
		$this->_APP_ROOT = &LxzCmsRoot\LxzCms::$_APP_ROOT; //系统应用根目录

		$this->ClientIP = LxzCmsRoot\LxzCms::GetClientIp(); //当前访客的IP
		$this->HOST = LxzCmsRoot\LxzCms::GetHost(); //当前服务器的IP
		$this->VERSION = LxzCmsRoot\LxzCms::$VERSION; //当前服务器的IP


		/**/
		$this->_GET = &LxzCmsRoot\LxzCms::$_GET; //系统的GET数组
		$this->_POST = &LxzCmsRoot\LxzCms::$_POST; //系统的POST数组
		$this->_REQUEST = &LxzCmsRoot\LxzCms::$_REQUEST; //系统的REQUEST数组
		$this->_COOKIE = &LxzCmsRoot\LxzCms::$_COOKIE; //系统的COOKIE 数组

		/**/
		$this->_USER = &LxzCmsRoot\LxzCms::$_USER; //系统用户信息
		$this->_ADMIN = &LxzCmsRoot\LxzCms::$_ADMIN; //系统管理员信息

		/**/
		$this->_M = &LxzCmsRoot\LxzCms::$_M; //被访问的模块名称
		$this->_D = &LxzCmsRoot\LxzCms::$_D; //访问的设备类型
		$this->_L = &LxzCmsRoot\LxzCms::$_L; //访问的语言类型
		$this->_C = &LxzCmsRoot\LxzCms::$_C; //访问的控制器名称
		//action获取，主要用于ajax部分
		$this->_A = !empty($this->_GET['a']) && preg_match("/^[0-9a-zA-Z]*$/", $this->_GET['a']) && $this->_GET['a'] ? $this->_GET['a'] : "index";

		/**/
		$this->ADMIN_URL = &LxzCmsRoot\LxzCms::$ADMIN_URL; //URL
		$this->FILES_URL = &LxzCmsRoot\LxzCms::$FILES_URL; //URL
		$this->DEVICE_URL = &LxzCmsRoot\LxzCms::$DEVICE_URL; //URL
		$this->DEVICES = &LxzCmsRoot\LxzCms::$DEVICES; //设备列表
		$this->DEVICE = &LxzCmsRoot\LxzCms::$DEVICE; //当前设备

		/**/
		$this->_SC = &LxzCmsRoot\LxzCms::$_SC; //系统的配置数组
		$this->MOD = &LxzCmsRoot\LxzCms::$MOD; //被访问的模块配置
		$this->MID = &LxzCmsRoot\LxzCms::$MID; //被访问的模块ID

		$this->CONFIG_MODULE = &LxzCmsRoot\LxzCms::$CONFIG_MODULE; //模块的配置参数
		$this->CONFIG_MODEL = &LxzCmsRoot\LxzCms::$CONFIG_MODEL; //模型配置参数
		$this->CONFIG_SETTING = &LxzCmsRoot\LxzCms::$CONFIG_SETTING; //系统设置参数
		//$this->_TBPRE = $this->DB->tabPre; //表前缀
	}

	/*	 * **************************************************************************************************************** */

	/**
	 * 加载CLASS这类需要实例化的资源
	 * @name LoadResources
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::LoadResources($name, $type,$config);
	 * @param $name  资源名称
	 * @param $type  资源类型
	 * @param $config  资源所需参数
	 * @return 系统资源路径字符串
	 * @version 1.0
	 */
	protected function loadResources($name, $type, $config = null) {
		return LxzCmsRoot\LxzCms::LoadResources($name, $type, $config);
	}

	/**
	 * 加载CLASS这类需要实例化的资源
	 * @name LoadClass
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::LoadClass($name, $type,$config);
	 * @param $name  资源名称
	 * @param $type  资源类型
	 * @param $config  资源所需参数
	 * @return 系统资源路径字符串
	 * @version 1.0
	 */
	protected function loadClass($name, $type, $config = null) {
		return LxzCmsRoot\LxzCms::LoadClass($name, $type, $config);
	}

	/**
	 * 加载function,interface，父级类，接口这类不需要返回实例的资源
	 * @name LoadRequire
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::LoadRequire($name, $type,$config);
	 * @param $name  资源名称
	 * @param $type  资源类型
	 * @return 返回布尔值
	 * @version 1.0
	 */
	protected function loadRequire($name, $type) {
		return LxzCmsRoot\LxzCms::LoadRequire($name, $type);
	}

	/**
	 * 加载conf这类需要包含且返回变量的资源
	 * @name LoadConf
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::LoadConf($name, $alias);
	 * @param $name  资源名称
	 * @param $alias  配置参数别名，如果别名被使用，则使用默认名
	 * @return 返回布尔值
	 * @version 1.0
	 */
	public function loadConf($name, $alias = null) {
		if ($alias !== null) {
			$this->$alias = LxzCmsRoot\LxzCms::LoadConf($name);
		} else {
			return LxzCmsRoot\LxzCms::LoadConf($name);
		}
	}

	/**
	 * 加载conf这类需要包含且返回变量的资源
	 * @name loadGlobal
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::LoadConf($name, $alias);
	 * @param $name  资源名称
	 * @param $alias  配置参数别名，如果别名被使用，则使用默认名
	 * @return 返回布尔值
	 * @version 1.0
	 */
	public function loadGlobal($name, $alias = null) {
		if ($alias !== null) {
			$key = $alias;
		} else {
			$key = "Global_" . $name;
		}
		$this->$key = LxzCmsRoot\LxzCms::LoadGlobal($name);
	}

	/*	 * **************************************************************************************************************** */

	/**
	 * 加载conf这类需要包含且返回变量的资源
	 * @name loadConfs
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::loadConfs($name, $alias);
	 * @param $name  资源名称
	 * @param $alias  配置参数别名，如果别名被使用，则使用默认名
	 * @return 返回布尔值
	 * @version 1.0
	 */
	public function loadGlobals($names) {
		if ($names) {
			$name_arr = explode(",", $names);
			$num = 0;
			foreach ($name_arr as $name) {
				$this->loadGlobal($name);
			}
			return $num;
		} else {
			return false;
		}
	}

	//加载函数库
	public function loadFunction($names) {
		if ($names) {
			$name_arr = explode(",", $names);
			$num = 0;
			foreach ($name_arr as $name) {
				$this->loadRequire($name, "function");
			}
			return $num;
		} else {
			return false;
		}
	}

	//加载内置模型库
	protected function loadBuiltinmodel($names) {
		if ($names) {
			$name_arr = explode(",", $names);
			$num = 0;
			foreach ($name_arr as $name) {
				$this->$name = $this->loadClass($name, "builtinmodel");
				if ($this->$name) {
					$interfaces = class_implements($name);
					if (in_array("setkernel", $interfaces)) {
						//对实现了setkernel接口的资源，加载后自动设置Kernel
						$this->$name->setKernel($this);
					}
					if (in_array("config", $interfaces)) {
						//对实现了config接口的模型，执行获取配置文件的方法，自动载入配置文件
						$this->$name->setConfig($this->loadConf($name));
					}
				}
			}
			return $num;
		} else {
			return false;
		}
	}

	//加载拓展
	public function loadExpand($names) {
		if ($names) {
			$name_arr = explode(",", $names);
			$num = 0;
			foreach ($name_arr as $name) {
				$this->$name = $this->loadClass($name, "expand");
				if ($this->$name) {
					$interfaces = class_implements($name);
					//对实现了setkernel接口的资源，加载后自动设置Kernel
					if (in_array("setkernel", $interfaces)) {
						$this->$name->setKernel($this);
					}
					if (in_array("config", $interfaces)) {
						$this->$name->setConfig($this->loadConf($name));
					}
				}
			}
			return $num;
		} else {
			return false;
		}
	}

	/*	 * **************************************************************************************************************** */

	public function redirect($url, $code = null) {
		LxzCmsRoot\LxzCms::Redirect($url, $code);
	}

	public function goIndex() {
		LxzCmsRoot\LxzCms::Redirect($this->DEVICE_URL);
	}

	/*	 * **************************************************************************************************************** */

	public function getSession($key) {
		if (defined('IN_ADMIN')) {
			$key = $this->_SC['sessionAdminPrefix'] . $key;
		} else {
			$key = $this->_SC['sessionUserPrefix'] . $key;
		}
		if (!empty($_SESSION[$key])) {
			return $_SESSION[$key];
		} else {
			return false;
		}
	}

	public function setSession($key, $value) {
		if (defined('IN_ADMIN')) {
			$key = $this->_SC['sessionAdminPrefix'] . $key;
		} else {
			$key = $this->_SC['sessionUserPrefix'] . $key;
		}
		$_SESSION[$key] = $value;
	}

	public function unsetSession($key) {
		if (defined('IN_ADMIN')) {
			$key = $this->_SC['sessionAdminPrefix'] . $key;
		} else {
			$key = $this->_SC['sessionUserPrefix'] . $key;
		}
		unset($_SESSION[$key]);
	}

	public function getCookie($key) {
		$key = $this->_SC['cookiePrefix'] . $key;
		return empty(LxzCmsRoot\LxzCms::$_COOKIE[$key]) or LxzCmsRoot\LxzCms::$_COOKIE[$key];
	}

	public function setCookie($key, $value, $time = 0) {
		$key = $this->_SC['cookiePrefix'] . $key;
		$time = $time > 0 ? (time() + $time) : $this->_SC['cookieTimeOut'];
		setcookie($key, $value, $time, "/");
	}

	public function display($DATA, $template=null) {
		//echo $template;
		/**/
		$DATA["USER"] = $this->_USER;
		$DATA["ADMIN"] = $this->_ADMIN;
		$DATA["_POST"] = $this->_POST;
		$DATA["_GET"] = $this->_GET;
		$DATA["_REQUEST"] = $this->_REQUEST;
		$DATA["_COOKIE"] = $this->_COOKIE;
		/**/
		$DATA["_SC"] = $this->_SC;
		$DATA["_M"] = $this->_M;
		$DATA["m"] = $this->_M;
		$DATA["_D"] = $this->_D;
		$DATA["d"] = $this->_D;
		$DATA["_L"] = $this->_L;
		$DATA["l"] = $this->_L;
		$DATA["_C"] = $this->_C;
		$DATA["c"] = $this->_C;
		$DATA["_A"] = $this->_A;
		$DATA["a"] = $this->_A;
		/**/
		$DATA["ADMIN_URL"] = $this->ADMIN_URL;
		$DATA["FILES_URL"] = $this->FILES_URL;
		$DATA["DEVICE_URL"] = $this->DEVICE_URL;


		/**/
		$DATA["MOD"] = $this->MOD;
		$DATA["MID"] = $this->MID;

		$DATA["DEVICES"] = $this->DEVICES;
		$DATA["DEVICE"] = $this->DEVICE;
		$DATA["CONFIG_MODULE"] = $this->CONFIG_MODULE;
		$DATA["CONFIG_MODEL"] = $this->CONFIG_MODEL;
		$DATA["CONFIG_SETTING"] = $this->CONFIG_SETTING;
		$DATA["_SETTING"] = $this->CONFIG_SETTING;


		/* 设置必要的内置模型模块 */
		$DATA["CAT"] = $this->category;
		$DATA["URL"] = $this->url;

		$DATA["sourceUrl"] = $this->getSourceUrl();
		$DATA["redirect"] = $this->getRedirect();


		$DATA["TEMPLATE_PATH"] = $this->getTemplatePath();
		$DATA["TEMPLATE_FILE"] = $this->getTemplateFile($template);
		$DATA["SKIN"] = $this->getSkin();


		$TEMPLATE_FILE = $DATA["TEMPLATE_FILE"];


		//$this->display->initialize($DATA)->display($DATA, $TEMPLATE_FILE);
		$this->display->initialize($DATA);
		$this->display->display($DATA, $TEMPLATE_FILE);
	}

	public function getSourceUrl() {
		if (empty($_SERVER["HTTP_REFERER"])) {
			return false;
		} else {
			$sUrl = parse_url($_SERVER["HTTP_REFERER"]);
			//$mUrl = parse_url($this->_SC['siteurl']);
			if ($sUrl['host'] == $_SERVER['HTTP_HOST']) {
				return $_SERVER["HTTP_REFERER"];
			} else {//从别的网站跳过来的，则不作为来源地址
				return false;
			}
		}
	}

	public function getRedirect() {
		if (!empty($this->_GET['redirect'])) {
			return base64_decode($this->_GET['redirect']);
		} else {
			return $this->getSourceUrl();
		}
	}

	public function getTemplateList() {
		
	}

	/*
	  public function getTemplateList() {
	  if (!empty($this->_GET['redirect'])) {
	  return base64_decode($this->_GET['redirect']);
	  } else {
	  return $this->getSourceUrl();
	  }
	  } */
}

/*
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
	