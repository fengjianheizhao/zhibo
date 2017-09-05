<?php

defined('IN_SYSTEM') or exit('Access Denied');
$cid = intval($get['cid']);
$detail = $CAT->getcat($cid);
if (!$cid || !$detail) {
	$this->goIndex();
}
$type = $detail['type'];
$mod = $detail['mod'];
$pid = $detail['pid'];
$title = sprintf($MODEL[$MODULE[$mod]['model']]['category'][$type], $MODULE[$mod]['name']);
$cat_arr = $CAT->jieti($CAT->getmodlist($mod, $type), 0);




$DATA = array();
$DATA['title'] = $title;
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['cid'] = $cid;
$DATA['detail'] = $detail;
$DATA['type'] = $type;
$DATA['mod'] = $mod;
$DATA['pid'] = $pid;
$DATA['cat_arr'] = $cat_arr;



$this->display($DATA, $this->_C);


/* 
* This file was created by Liu Xianzhong
*  This file has ended
*/

