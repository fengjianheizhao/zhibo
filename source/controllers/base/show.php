<?php

defined('IN_SYSTEM') or exit('Access Denied');
$itemid = intval($get['itemid']);
$detail = $this->getItem($itemid);
$this->editItem($detail['id'], array("hits" => $detail['hits'] + 1));
if (!$itemid || !$detail) {
	$this->goIndex();
}
$posi = array();
if ($detail['cid']) {
	$posi = $CAT->getPosi($detail['cid']);
}

$cate = $CAT->getcat($detail['cid']);
$catelist = $CAT->getmodlist($m, "cate", 0);
if ($detail['seotitle']) {
	$title = $detail['seotitle'];
} else {
	$title = $detail['title'] . "_";
	$title.=$MOD['name'] . "_" . $_SETTING['sitename'];
}
//$prev = $this->getPrevItem($detail);
//$next = $this->getNextItem($detail);

$keywords = $detail['seokeyword'] ? $detail['seokeyword'] : $_SETTING['seokeyword'];
$description = $_SETTING['seodescription'];



@include $this->template($m . "/" . $ac);

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
