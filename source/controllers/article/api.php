<?php

defined('IN_SYSTEM') or exit('Access Denied');
set_time_limit(0);
ignore_user_abort();

$cid = intval($get['cid']);
//$sort = intval($get['sort']);
$len = intval($get['len']);
$page = intval($get['page']);


$cate = $CAT->getcat($cid);
$catelist = $CAT->getmodlist($m,"cate",0);
$where = "`status`='1'";
if ($cate) {
	if ($cate['child'] > 0) {
		$where.=" and `cid` IN ({$cate['childs']})";
	} else {
		$where.=" and `cid`='{$cid}'";
	}
}
$this->loadBuiltinModel("paged");
$this->paged->setRows($len);
$data = $this->paged->getList($page, "FROM `" . $this->table . "` WHERE {$where} ORDER BY `recom` DESC ,id DESC","`id`,`title`,`addtime`,`thumb`");




echo json_encode($data['list']); //输出json结构的数据





/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
