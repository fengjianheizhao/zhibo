<?php



defined('IN_SYSTEM') or exit('Access Denied');



/*

  $pinzhong = $this->fields->getFieldName("pinzhong", $this->MID);

  $options_pinzhong = $this->fields->getFieldValue($pinzhong);

 */



$cid = intval($get['cid']) ? intval($get['cid']) : "0";

$page = intval($get['page']) ? intval($get['page']) : "1";

$type = intval($get['type']) ? intval($get['type']) : "1";



$kword = htmlspecialchars(stripcslashes($get['kword']));

$posi = array();

if ($cid) {

	$posi = $CAT->getPosi($cid);

}



$title = "";



foreach ($posi as $v) {

	$title = $v['name'] . "_" . $title;

}



$title.=$MOD['name'] . "_" . $_SETTING['sitename'];



$keywords = $_SETTING['seokeyword'];

$description = $_SETTING['seodescription'];











$cate = $CAT->getcat($cid);

$catelist = $CAT->getmodlist($m, "cate", 1);

$where = "`status`='1'";

if ($cate) {

	$where.=" and `cid`='{$cid}'";

}



if ($type) {

	$where.=" and `type`='{$type}'";

}









if ($kword) {

	$where.=" and `title` LIKE '%{$kword}%'";

}





$this->loadBuiltinModel("paged");

$this->paged->setRows("10");

$data = $this->paged->getList($page, "FROM `" . $this->table . "` WHERE {$where} ORDER BY `recom` DESC  ,id DESC");

@include $this->template($m . "/" . $ac);



/* 

 * This file was created by Liu Xianzhong

 *  This file has ended

 */

