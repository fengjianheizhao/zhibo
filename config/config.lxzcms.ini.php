<?php

\session_start();
\ob_start();
defined('IN_SYSTEM') or exit('Access Denied');
header("Content-type: text/html; charset=utf-8");
ini_set('date.timezone', 'Asia/Shanghai');

//子站可以覆盖这两个设置
defined('LogEnabled') or define('LogEnabled', TRUE);//日志开关
defined('DEBUG') or define('DEBUG', TRUE);
if (DEBUG) {
	ini_set('display_errors', '1');
	ini_set('error_log', dirname(__FILE__) . "/../log/debug/log_" . date("Y-m-d") . ".log");
	error_reporting(E_ALL);
} else {
	ini_set("display_errors", 0);
	error_reporting(0);
}





/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */