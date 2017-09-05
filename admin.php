<?php

define('IN_ADMIN', true); //
$m = (!empty($_GET['m']) && (preg_match("/^[0-9a-zA-Z]*$/", $_GET['m'])) && $_GET['m']) ? $_GET['m'] : "index";
$_GET['c'] = !empty($_GET['c']) && preg_match("/^[0-9a-zA-Z_-]*$/", $_GET['c']) && $_GET['c'] ? $_GET['c'] : "index";
$d = "web";
include_once "common.inc.php";
LxzCmsRoot\LxzCms::$_EXPORT_NAME = "manager";
LxzCmsRoot\LxzCms::Run();


/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */