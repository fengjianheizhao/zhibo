<?php

defined('IN_SYSTEM') or exit('Access Denied');
$mod = $get['mod'];
if (!$mod) {
	$this->goIndex(); //模块为空，则返回后台首页
} elseif (!$MODEL[$MODULE[$mod]['model']]['fields']) {
	$this->goIndex(); //查询该模块是否允许自定义字段
}
$formtype = $this->fieldstype;


$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['mod'] = $mod;
$DATA['formtype'] = $formtype;


$this->display($DATA, $this->_C);




/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
