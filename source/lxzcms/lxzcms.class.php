<?php

namespace LxzCmsRoot;

/**
 * 系统运行入口
 * @name LxzCms
 * @type class
 * @author Liu Xianzhong<825471072@qq.com>
 * @copyright lxzcms.com
 * @version 1.0
 * 本地测试域名：www.lxzcms.cc
 */
class LxzCms {

	public static $_SOURCE_ROOT = null; //源目录
	public static $_APP_SOURCE_ROOT = null; //应用源目录
	public static $_ROOT = null; //系统根目录
	public static $_APP_ROOT = null; //系统应用根目录

	/**/
	public static $_LOG_START = true; //写日志功能是否开启
	public static $_CACHE_START = true; //缓存功能是否开启
	public static $_CACHE_PATH = true; //缓存存放目录
	public static $_DEBUG_START = true; //调试模式是否开启
	public static $_EXPORT = null; //系统export对象
	public static $_EXPORT_NAME = "index"; //系统export对象


	/**/
	public static $_GET = null; //系统的GET数组
	public static $_POST = null; //系统的POST数组
	public static $_REQUEST = null; //系统的REQUEST数组
	public static $_COOKIE = null; //系统的COOKIE 数组

	/**/
	public static $_USER = null; //系统用户信息
	public static $_ADMIN = null; //系统管理员信息



	/**/
	public static $_M = null; //被访问的模块名称
	public static $_D = null; //访问的设备类型
	public static $_L = null; //访问的语言类型
	public static $_C = null; //访问的控制器名称

	/**/
	public static $ADMIN_URL = null; //URL
	public static $FILES_URL = null; //URL
	public static $DEVICE_URL = null; //URL
	public static $DEVICES = null; //设备列表
	public static $DEVICE = null; //当前设备


	/**/
	public static $_SC = null; //系统的配置数组
	public static $MOD = null; //被访问的模块配置
	public static $MID = null; //被访问的模块id
	public static $CONFIG_MODULE = null; //模块的配置参数
	public static $CONFIG_MODEL = null; //模型配置参数
	public static $CONFIG_SETTING = null; //系统设置参数

	/**/
	public static $VERSION = "v1.0.0"; //系统设置参数

	/**
	 * 启动系统，初始化并开始运行
	 * @name Run
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::Run();
	 * @return 无返回值
	 * @version 1.0
	 */

	public static function Run() {

		self::InitInput(); //格式化传入参数

		self::InitSet(); //设置环境

		self::Start(); //启动系统
	}

	/**
	 * 加载系统核心文件，并开始运行
	 * @name Start
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::Start();
	 * @return 无返回值
	 * @version 1.0
	 */
	protected static function Start() {
		try {
			self::LoadKernel();
			self::LoadResources(self::$MOD['model'], "model"); //加载model当前访问的模块
			self::$_EXPORT = self::LoadClass(self::$_EXPORT_NAME, "export"); //加载并创建export
			if (self::$_EXPORT != null) {
				self::$_EXPORT->view();
				!self::$_CACHE_START or self::$_EXPORT->cache();
			}
		} catch (\Exception $e) {
			if (self::$_DEBUG_START) {
				echo $e->getMessage();
			} else {
				self::Stop();
			}
		}
	}

	/**
	 * 停止程序运行，并提升网站关闭
	 * @name Stop
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::Stop();
	 * @return 无返回值
	 * @version 1.0
	 */
	protected static function Stop() {
		echo "网站已关闭，请联系管理员。";
		exit();
	}

	/**
	 * 设置并初始化系统配置信息
	 * @name InitSet
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::InitSet();
	 * @return 无返回值
	 * @version 1.0
	 */
	protected static function InitSet() {
		self::SetRoot(); //设置获取根目录
		self::SetConfig(); //设置配置参数

		self::SetM(); //设置模型
		self::SetD(); //设置浏览设备
		self::SetL(); //设置模板语言
		self::SetC(); //设置控制器

		self::$ADMIN_URL = self::$_SC['adminUrl'];
		self::$FILES_URL = self::$_SC['filesUrl'];
	}

	/**
	 * 设置系统配置信息
	 * @name SetConfig
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::SetConfig();
	 * @return 无返回值
	 * @version 1.0
	 */
	protected static function SetConfig() {
		self::$_SC = self::LoadGlobal("config");
		self::$CONFIG_MODULE = self::LoadGlobal("module");
		self::$CONFIG_SETTING = self::LoadGlobal("setting");
		self::$CONFIG_MODEL = self::LoadGlobal("model");
	}

	/**
	 * 初始化访问模块名称
	 * @name SetM
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::SetM();
	 * @return 无返回值
	 * @version 1.0
	 */
	protected static function SetM() {
		if (!empty($GLOBALS['m'])) {//从路由文件中获取
			self::$_M = $GLOBALS['m'];
		} elseif (!empty(self::$_GET['m'])) {//路由文件没有，则去get中获取
			self::$_M = self::$_GET['m'];
		}
		if (empty(self::$CONFIG_MODULE[self::$_M])) {//没有获取到则设置为默认值
			self::$_M = "index";
		}

		//设置被访问的模块信息
		self::$MOD = self::$CONFIG_MODULE[self::$_M];
		self::$MID = self::$CONFIG_MODULE[self::$_M]['mid'];
	}

	/**
	 * 初始化访问设备类型
	 * @name SetD
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::SetD();
	 * @return 无返回值
	 * @version 1.0
	 */
	protected static function SetD() {
		self::$DEVICES = self::$_SC['device']; //设置设备列表
		if (!empty($GLOBALS['device'])) {//从文件中读取
			self::$_D = $GLOBALS['device'];
		} elseif (!empty(self::$_GET['d'])) {//否则从get获取
			self::$_D = self::$_GET['d'];
		}
		if (empty(self::$DEVICES[self::$_D])) {//没有获取到则设置为默认值
			$DEFAULT_DEVICE = reset(self::$DEVICES);
			self::$_D = $DEFAULT_DEVICE['index'];
		}

		self::$DEVICE = self::$DEVICES[self::$_D]; //设置设备列表
		self::$DEVICE_URL = self::$DEVICE['siteurl'];
	}

	/**
	 * 初始化模板语言
	 * @name SetL
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::SetL();
	 * @return 无返回值
	 * @version 1.0
	 */
	protected static function SetL() {
		if (!empty(self::$_GET['l'])) {//否则从get获取
			self::$_L = self::$_GET['l'];
		}
		if (empty(self::$_L) || !in_array(self::$_L, self::$_SC['language'])) {//没有获取到则设置为默认值
			self::$_L = reset(self::$_SC['language']);
		}
	}

	/**
	 * 初始化控制器名称
	 * @name SetC
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::SetC();
	 * @return 无返回值
	 * @version 1.0
	 */
	protected static function SetC() {
		if (!empty(self::$_GET['c'])) {//从get获取控制器名称
			self::$_C = self::$_GET['c'];
		} else {
			//根据文件名获取控制器名
			$PHP_SELF = \explode("/", ($_SERVER['SCRIPT_NAME']));
			list(self::$_C) = \explode(".", end($PHP_SELF));
		}
	}

	/**
	 * 将$_GET，$_POST，$_REQUEST全部添加转义
	 * @name InitInput
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::InitInput();
	 * @return 无返回值
	 * @version 1.0
	 */
	protected static function InitInput() {
		//global $_COOKIE;
		$_COOKIE = &$GLOBALS['_COOKIE'];
		if (!get_magic_quotes_gpc()) {
			self::$_GET = self::Saddslashes($_GET);
			self::$_POST = self::Saddslashes($_POST);
			self::$_REQUEST = self::Saddslashes($_REQUEST);
			self::$_COOKIE = self::Saddslashes($_COOKIE);
		} else {
			self::$_GET = &$_GET;
			self::$_POST = &$_POST;
			self::$_REQUEST = &$_REQUEST;
			self::$_COOKIE = &$_COOKIE;
		}
		unset($_GET);
		unset($_POST);
		unset($_REQUEST);
		//unset($_COOKIE);
	}

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
	public static function LoadResources($name, $type, $config = null) {
		if ($type == "conf") {
			return self::LoadConf($name);
		} elseif (in_array($type, array("function", "interface", "model"))) {
			return self::LoadRequire($name, $type);
		} else {
			return self::LoadClass($name, $type, $config);
		}
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
	public static function LoadClass($name, $type, $config = null) {
		$ResourcesPath = self::GetResourcesPath($name, $type);
		if (file_exists($ResourcesPath)) {
			require_once $ResourcesPath;
			//$name="\LxzCmsRoot\{$name}";
			if (class_exists($name)) {
				return new $name($config);
			} else {
				$msg = "Can not find this class：{$name} at this file:{$ResourcesPath}，The function:" . __METHOD__ . "({$name}, {$type}) !  error in " . __FILE__ . " at line " . __LINE__;
				self::writeLog($msg);
				return null;
			}
		} else {
			$msg = "Can not find this file：{$ResourcesPath}，The function:" . __METHOD__ . "({$name}, {$type}) !  error in " . __FILE__ . " at line " . __LINE__;
			self::writeLog($msg);
			throw new \Exception($msg);
			return null;
		}
	}

	/**
	 * 加载function,interface，父级类，接口这类不需要返回实例的资源
	 * @name LoadRequire
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::LoadRequire($name, $type);
	 * @param $name  资源名称
	 * @param $type  资源类型
	 * @return 返回布尔值
	 * @version 1.0
	 */
	public static function LoadRequire($name, $type) {
		$ResourcesPath = self::GetResourcesPath($name, $type);
		if (file_exists($ResourcesPath)) {
			require_once $ResourcesPath;
			return true;
		} else {
			$msg = "Can not find this file：{$ResourcesPath}，The function:" . __METHOD__ . "({$name}, {$type}) !  error in " . __FILE__ . " at line " . __LINE__;
			$backtrace = debug_backtrace(false, 4);
			foreach ($backtrace as $k => $v) {
				$msg .= "\r\n回溯信息：{$v['file']} in line {$v['line']}  at use function {$v['function']} ";
			}
			self::writeLog($msg);
			throw new \Exception($msg);
			return false;
		}
	}

	/**
	 * 加载conf这类需要包含且返回变量的资源
	 * @name LoadConf
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::LoadConf($name);
	 * @param $name  资源名称
	 * @return 返回布尔值
	 * @version 1.0
	 */
	public static function LoadConf($name) {
		$ResourcesPath = self::GetResourcesPath($name, "conf");
		if (file_exists($ResourcesPath)) {
			return include $ResourcesPath;
		} else {
			$msg = "Can not find this file：{$ResourcesPath}，The function:" . __METHOD__ . "({$name}) !  error in " . __FILE__ . " at line " . __LINE__;
			self::writeLog($msg);
			throw new \Exception($msg);
			return false;
		}
	}

	/**
	 * 加载conf这类需要包含且返回变量的资源
	 * @name LoadGlobal
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::LoadGlobal($name);
	 * @param $name  资源名称
	 * @return 返回布尔值
	 * @version 1.0
	 */
	public static function LoadGlobal($name) {
		$ResourcesPath = self::GetResourcesPath($name, "global");
		if (file_exists($ResourcesPath)) {
			return include $ResourcesPath;
		} else {
			$msg = "Can not find this file：{$ResourcesPath}，The function:" . __METHOD__ . "({$name}) !  error in " . __FILE__ . " at line " . __LINE__;
			self::writeLog($msg);
			throw new \Exception($msg);
			return false;
		}
	}

	/**
	 * 加载kernel.class
	 * @name LoadKernel
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::LoadKernel();
	 * @return 无返回值
	 * @version 1.0
	 */
	protected static function LoadKernel() {
		require_once __DIR__ . "/kernel.class.php";
	}

	/**
	 * 设置$_ROOT的值
	 * @name SetRoot
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::SetRoot();
	 * @return 无返回值
	 * @version 1.0
	 */
	protected static function SetRoot() {
		//设置程序和APPsource目录
		self::$_SOURCE_ROOT = dirname(dirname(__FILE__)) . DIRECTORY_SEPARATOR;
		self::$_APP_SOURCE_ROOT = self::$_SOURCE_ROOT;

		//设置程序和APP根目录
		self::$_ROOT = dirname(self::$_SOURCE_ROOT) . DIRECTORY_SEPARATOR;
		self::$_APP_ROOT = self::$_ROOT;
	}

	/**
	 * 获取系统资源路径
	 * @name GetResourcesPath
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::GetResourcesPath($name, $type);
	 * @param $name
	 * @param $type
	 * @return 系统资源路径字符串
	 * @version 1.0
	 */
	protected static function GetResourcesPath($name, $type) {
		//以后会指定一些加载只能从框架系统目录加载,比如model.inc,module.mod等等核心资源
		$ResourcesPath = null;
		switch ($type) {
			case "conf"://系统配置文件 加载即可返回数组
				$ResourcesPath = self::$_ROOT . "config/" . $name . ".ini.php"; //首先在主框架系统config目录找文件
				if (!file_exists($ResourcesPath)) {//找不到文件则去框架目录找文件
					$ResourcesPath = self::$_SOURCE_ROOT . "conf/" . $name . ".conf.php"; //最后在主框架系统conf目录找文件
				}
				break;
			case "global"://系统配置文件 加载即可返回数组
				$ResourcesPath = self::$_APP_ROOT . "config/" . $name . ".ini.php"; //首先在应用config目录找文件
				if (!file_exists($ResourcesPath)) {//找不到文件则去框架目录找文件
					$ResourcesPath = self::$_APP_SOURCE_ROOT . "global/" . $name . ".inc.php"; //然后在应用global目录找文件
					if (!file_exists($ResourcesPath)) {//找不到文件则去框架目录找文件
						$ResourcesPath = self::$_SOURCE_ROOT . "global/" . $name . ".inc.php"; //最后在主框架系统global目录找文件
					}
				}
				break;
			case "builtinmodel"://内置模型 加载即可创建实例
				$ResourcesPath = self::$_APP_SOURCE_ROOT . "builtinmodel/" . $name . ".class.php";
				if (!file_exists($ResourcesPath)) {//找不到文件则去框架目录找文件
					$ResourcesPath = self::$_SOURCE_ROOT . "builtinmodel/" . $name . ".class.php";
				}
				break;
			case "expand"://拓展 加载即可创建实例
				$ResourcesPath = self::$_APP_SOURCE_ROOT . "expand/" . $name . ".class.php";
				if (!file_exists($ResourcesPath)) {//找不到文件则去框架目录找文件
					$ResourcesPath = self::$_SOURCE_ROOT . "expand/" . $name . ".class.php";
				}
				break;
			case "export"://系统输出口 加载即可创建实例
				$ResourcesPath = self::$_APP_SOURCE_ROOT . "export/" . $name . ".class.php";
				if (!file_exists($ResourcesPath)) {//找不到文件则去框架目录找文件
					$ResourcesPath = self::$_SOURCE_ROOT . "export/" . $name . ".class.php";
				}
				break;
			case "function"://自定义方法  加载后直接使用
				$ResourcesPath = self::$_APP_SOURCE_ROOT . "function/" . $name . ".fun.php";
				if (!file_exists($ResourcesPath)) {//找不到文件则去框架目录找文件
					$ResourcesPath = self::$_SOURCE_ROOT . "function/" . $name . ".fun.php";
				}
				break;
			case "interface"://接口定义目录，如果某个拓展要实现一个接口，则需要先加载此接口，比如支付，三方登录等等
				$ResourcesPath = self::$_APP_SOURCE_ROOT . "interface/" . $name . ".interface.php";
				if (!file_exists($ResourcesPath)) {//找不到文件则去框架目录找文件
					$ResourcesPath = self::$_SOURCE_ROOT . "interface/" . $name . ".interface.php";
				}
				break;
			case "model"://模型  被export继承
				$ResourcesPath = self::$_APP_SOURCE_ROOT . "model/" . $name . ".mod.php";
				if (!file_exists($ResourcesPath)) {//找不到文件则去框架目录找文件
					$ResourcesPath = self::$_SOURCE_ROOT . "model/" . $name . ".mod.php";
				}
				break;
		}
		return $ResourcesPath;
	}

	/**
	 * 将数组或者字符串添加转义
	 * @name Saddslashes
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::Saddslashes($param);
	 * @param $param  要转义的变量
	 * @return 返回数组或字符串
	 * @version 1.0
	 */
	public static function Saddslashes($param) {
		if (is_array($param)) {
			foreach ($param as $k => $v) {
				$param[$k] = self::Saddslashes($v);
			}
		} else {
			$param = addslashes($param);
		}
		return $param;
	}

	/**
	 * 写入日志文件
	 * @name WriteLog
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::WriteLog($msg);
	 * @param $msg  写入日志的内容
	 * @param $fileName  写入日志的文件名，也可通过文件名来设定目录，文件名会自动加后缀
	 * @param $Suffix  日志的后缀名，默认自动加上日期，""空字符串则无后缀
	 * @return 返回布尔值
	 * @version 1.0
	 */
	public static function WriteLog($msg, $fileName = false, $Suffix = null) {
		$fileName or $fileName = "lxzcms";
		!self::$_LOG_START or self::WLog($msg, "lxzcms/" . $fileName, $Suffix);
	}

	/**
	 * 强制写入日志文件 不受$_LOG_START的影响，在必须写入文件时使用
	 * @name WLog
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::WLog($msg);
	 * @param $msg  写入日志的内容
	 * @param $fileName  写入日志的文件名，也可通过文件名来设定目录，文件名会自动加后缀
	 * @param $Suffix  日志的后缀名，默认自动加上日期，""空字符串则无后缀
	 * @return 返回布尔值
	 * @version 1.0
	 */
	public static function WLog($msg, $fileName = false, $Suffix = null) {
		self::$_APP_ROOT or self::SetRoot();
		$LogFilePath = self::$_APP_ROOT . "log/";
		if ($Suffix === null) {
			$logFile = $LogFilePath . $fileName . "_" . date('Y-m-d') . '.php';
		} else {
			$logFile = $LogFilePath . $fileName . $Suffix . '.php';
		}
		if (self::CreateFolders(dirname($logFile))) {
			$msg = "<?php\r\n/*\r\n" . date('Y-m-d H:i:s') . "\r\n" . $msg . " \r\n*/\r\n?>\r\n";
			if (file_put_contents($logFile, $msg, FILE_APPEND)) {
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}

	/**
	 * 强制写入日志文件 不受$_LOG_START的影响，在必须写入文件时使用
	 * @name WDataCache
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::WDataCache($cacheFile,$data);
	 * @param $cacheFile  写入日志的内容
	 * @param $data  写入日志的文件名，也可通过文件名来设定目录，文件名会自动加后缀
	 * @return 返回布尔值
	 * @version 1.0
	 */
	public static function WDataCache($cacheFile, $data) {
		$text = "<?php\r\n";
		$text .= "return ";
		$text .= var_export($data, true);
		$text .= ";";
		self::CreateFolders(dirname($cacheFile));
		if (file_put_contents($cacheFile, $text, LOCK_EX)) {
			return true;
		} else {
			return false;
		}
	}

	//递归删除文件夹下内容 $isDelFolder  false 不保留，删除文件夹  true 保留，不删除文件夹
	public static function delDirAll($delDir, $isStayFolder = false) {
		if (is_dir($delDir)) {
			if ($df = opendir($delDir)) {
				while ($file = readdir($df)) {
					if ($file != "." && $file != "..") {
						$fullpath = $delDir . "/" . $file;
						if (is_dir($fullpath)) {
							self::delDirAll($fullpath);
						} else {
							unlink($fullpath);
						}
					}
				}
				closedir($df);
			}
			$isStayFolder or rmdir($delDir);
		} elseif (file_exists($delDir)) {
			unlink($delDir);
		}
	}

	/**
	 * 递归检查并创建文件夹
	 * @name CreateFolders
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::CreateFolders($dir);
	 * @param $dir  要检查的目录
	 * @return 返回布尔值
	 * @version 1.0
	 */
	public static function CreateFolders($dir) {
		//echo "<br />--{".$dir."}\r\n";
		return is_dir($dir) or ( self::CreateFolders(dirname($dir)) and mkdir($dir, 0755));
	}

	/**
	 * 页面重定向
	 * @name Redirect
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::Redirect($url);
	 * @param $redirectUrl  要跳转的url
	 * @param $code  http状态码
	 * @return 无返回
	 * @version 1.0
	 */
	public static function Redirect($redirectUrl, $code = null) {
		!$code or self::HTTPStatusCode($code);
		header("location:" . $redirectUrl);
		exit();
	}

	/**
	 * 设置HTTP状态码
	 * @name HTTPStatusCode
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::HTTPStatusCode($code);
	 * @param $code  http状态码
	 * @return 无返回
	 * @version 1.0
	 */
	public static function HTTPStatusCode($code) {
		switch ($code) {
			case "301"://资源永久转移到新的url，改版网站做seo的时候使用
				header("HTTP/1.1 301 Moved Permanently");
				break;
			case "302"://资源临时重定向到新的url
				header("HTTP/1.1 302 Found");
				break;
			case "303"://对应当前请求的响应可以在另一个 URI 上被找到 ，303响应禁止被缓存
				header("HTTP/1.1 303 See Other");
				break;
			case "307"://连同POST信息一起被重定向到新的url
				header("HTTP/1.1 307 Temporary Redirect");
				break;
		}
	}

	/**
	 * 设置HTTP状态码
	 * @name HTTPStatusCode
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::GetClientIp();
	 * @return 获取访客的IP
	 * @version 1.0
	 */
	public static function GetClientIp() {
		if (getenv('HTTP_CLIENT_IP') && strcasecmp(getenv('HTTP_CLIENT_IP'), 'unknown')) {
			$ip = getenv('HTTP_CLIENT_IP');
		} elseif (getenv('HTTP_X_FORWARDED_FOR') && strcasecmp(getenv('HTTP_X_FORWARDED_FOR'), 'unknown')) {
			$ip = getenv('HTTP_X_FORWARDED_FOR');
		} elseif (getenv('REMOTE_ADDR') && strcasecmp(getenv('REMOTE_ADDR'), 'unknown')) {
			$ip = getenv('REMOTE_ADDR');
		} elseif (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], 'unknown')) {
			$ip = $_SERVER['REMOTE_ADDR'];
		}
		preg_match("/[\d\.]{7,15}/", $ip, $onlineipmatches);
		$ip = empty($onlineipmatches[0]) ? 'unknown' : $onlineipmatches[0];
		return $ip;
	}

	/**
	 * 设置HTTP状态码
	 * @name HTTPStatusCode
	 * @author Liu Xianzhong<825471072@qq.com>
	 * @copyright lxzcms.com
	 * @example 示例:self::GetHost();
	 * @return 获取服务器的IP
	 * @version 1.0
	 */
	public static function GetHost() {
		return isset($_SERVER['HTTP_X_FORWARDED_HOST']) ? $_SERVER['HTTP_X_FORWARDED_HOST'] : (isset($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : '');
	}

}

/*
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
	