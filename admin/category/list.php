<?php

defined('IN_SYSTEM') or exit('Access Denied');
$type = $get['type'];
$mod = $get['mod'];
$page = intval($get['page']) ? intval($get['page']) : "1";
$pid = intval($get['pid']) ? intval($get['pid']) : "0";
if ($pid > 0) {
	$parent = $CAT->getcat($pid);
	if (!$parent) {
		$this->goIndex(); //父级分类大于0，但是分类不存在，则跳回首页
	}
}
if (!$mod || !$type) {
	$this->goIndex(); //模块或类型为空，则返回后台首页
} elseif (!$MODEL[$MODULE[$mod]['model']]['category'][$type]) {
	$this->goIndex(); //分类类型没有注册，则返回后台首页
}
$title = sprintf($MODEL[$MODULE[$mod]['model']]['category'][$type], $MODULE[$mod]['name']);


$this->loadBuiltinModel("paged");
$this->paged->setRows("20");
$data = $this->paged->getList($page, "FROM `" . $this->DB->tabPre . "category` WHERE `pid` = '{$pid}' AND `mod` = '{$mod}' AND `type` = '{$type}' ORDER BY `sort` ASC, `cid` ASC");

$DATA = array();
$DATA['title'] = $title;
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['type'] = $type;
$DATA['mod'] = $mod;
$DATA['pid'] = $pid;
$DATA['parent'] = $parent;
$DATA['data'] = $data;



$this->display($DATA, $this->_C);

/* 
* This file was created by Liu Xianzhong
*  This file has ended
*/

