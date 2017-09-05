<?php

defined('IN_SYSTEM') or exit('Access Denied');
$type = $get['type'];
$mod = $get['mod'];
$pid = intval($get['pid']) ? intval($get['pid']) : "0";

if (!$mod || !$type) {
	$this->goIndex(); //模块或类型为空，则返回后台首页
} elseif (!$MODEL[$MODULE[$mod]['model']]['category'][$type]) {
	$this->goIndex(); //分类类型没有注册，则返回后台首页
}

$title = sprintf($MODEL[$MODULE[$mod]['model']]['category'][$type], $MODULE[$mod]['name']);
$cat_arr = $CAT->jieti($CAT->getmodlist($mod, $type), 0);


$DATA = array();
$DATA['title'] = $title;
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['type'] = $type;
$DATA['mod'] = $mod;
$DATA['pid'] = $pid;
$DATA['cat_arr'] = $cat_arr;



$this->display($DATA, $this->_C);


/* 

* This file was created by Liu Xianzhong

*  This file has ended

*/

