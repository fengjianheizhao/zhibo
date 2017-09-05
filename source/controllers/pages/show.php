<?php

defined('IN_SYSTEM') or exit('Access Denied');
$itemid = intval($get['itemid']);
$detail = $this->getItem($itemid);
if (!$itemid || !$detail) {
	$this->goIndex();
}
$posi = array();
if ($detail['cid']) {
	$posi = $CAT->getPosi($detail['cid']);
}

$cate=$CAT->getcat($detail['cid']);

if ($detail['seotitle']) {
	$title = $detail['seotitle'];
} else {
	$title = $detail['title'] . "_";
	/*foreach ($posi as $v) {
		$title= $title.$v['name'] . "_" ;
	}*/
	$title.= $_SETTING['sitename'];
}

$keywords = $detail['seokeyword'] ? $detail['seokeyword'] : $_SETTING['seokeyword'];
$description = $_SETTING['seodescription'];


$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];

$this->template->display($DATA, $this->_C);







/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
