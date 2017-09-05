<?php

defined('IN_SYSTEM') or exit('Access Denied');
$adstype = $this->ads->getConfig();
$itemid = intval($get['itemid']);
$detail = $this->ads->ads($itemid, false);
$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['detail'] = $detail;
$DATA['itemid'] = $itemid;
$DATA['adstype'] = $adstype;
if (!$DATA['itemid']) {
	$this->goIndex();
}

$this->display($DATA, $this->_C);


/* 
* This file was created by Liu Xianzhong
*  This file has ended
*/

