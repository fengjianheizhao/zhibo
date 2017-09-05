<?php

defined('IN_SYSTEM') or exit('Access Denied');

$page = intval($get['page']) ? intval($get['page']) : "1";
$cid = intval($get['cid']) ? intval($get['cid']) : "0";


$cate = $CAT->getcat($cid);
$catelist = $CAT->getmodlist($m, "cate", 1);
$where = "`status`='0'";
if ($cate) {
	$where.=" and `cid`='{$cid}'";
}
$this->loadBuiltinModel("paged");
$this->paged->setRows("20");
$data = $this->paged->getList($page, "FROM `" . $this->table . "` WHERE {$where}  ORDER BY `recom` DESC ,`id` DESC");

$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['data'] = $data;
$DATA['page'] = $page;
$DATA['cid'] = $cid;
$DATA['cate'] = $cate;
$DATA['catelist'] = $catelist;


$this->display($DATA, $this->_C);

/* 
* This file was created by Liu Xianzhong
*  This file has ended
*/

