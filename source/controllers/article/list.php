<?php

defined('IN_SYSTEM') or exit('Access Denied');
$cid = intval($get['cid']) ? intval($get['cid']) : "0";
$page = intval($get['page']) ? intval($get['page']) : "1";
$keywd = htmlspecialchars(stripcslashes($get['kwd']));

$posi=  array();
if ($cid) {
	$posi = $CAT->getPosi($cid);
}

$title="";
foreach ($posi as $v){
	$title.=$v['name']."_".$title;
}
$title.=$MOD['name']."_".$_SETTING['sitename'];
$keywords = $_SETTING['seokeyword'];
$description = $_SETTING['seodescription'];






$cate = $CAT->getcat($cid);
$catelist = $CAT->getmodlist($m, "cate", 0);

$where = "`status`='1'";
if ($cate) {
	if($cate['child']>0){
		$where.=" and `cid` IN ({$cid},{$cate['childs']})";
	}else{
		$where.=" and `cid`='{$cid}'";
	}
}
if($keywd){
	$where.=" and `title` LIKE '%{$keywd}%'";
}
$this->loadBuiltinModel("paged");
$this->paged->setRows("10");
$data = $this->paged->getList($page, "FROM `" . $this->table . "` WHERE {$where} ORDER BY `recom` DESC ,id DESC");
//$data = $this->paged->getList($page, "FROM `lxz_area` WHERE 1");

@include $this->template($m . "/" . $ac);

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
