<?php

defined('IN_SYSTEM') or exit('Access Denied');
$gid = intval($get['gid']);
$detail = $this->user->getGroup($gid);
if (!$gid || !$detail) {
	$this->goIndex();
}


$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['gid'] = $gid;
$DATA['detail'] = $detail;



$this->display($DATA, $this->_C);

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
