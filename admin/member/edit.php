<?php

defined('IN_SYSTEM') or exit('Access Denied');
$itemid = intval($get['itemid']);
$detail = $this->user->getUser($itemid);
if (!$itemid || !$detail) {
	$this->goIndex();
}
 $grouplist=$this->user->getGroupList();

$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['itemid'] = $itemid;
$DATA['detail'] = $detail;
$DATA['grouplist'] = $grouplist;


$this->display($DATA, $this->_C);

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
