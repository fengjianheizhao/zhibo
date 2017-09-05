<?php



defined('IN_SYSTEM') or exit('Access Denied');



$cid = intval($get['cid']) ? intval($get['cid']) : "0";

$page = intval($get['page']) ? intval($get['page']) : "1";

$keywd = htmlspecialchars(stripcslashes($get['k']));



$posi=  array();

if ($cid) {

	$posi = $CAT->getPosi($cid);

}



$title = $_SETTING['seotitle'];

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

$this->paged->setRows("20");

$data = $this->paged->getList($page, "FROM `" . $this->table . "` WHERE {$where} ORDER BY `recom` DESC ,id DESC");







$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];

$this->template->display($DATA, $this->_C);



/* 

 * This file was created by Liu Xianzhong

 *  This file has ended

 */

