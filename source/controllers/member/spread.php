<?php



defined('IN_SYSTEM') or exit('Access Denied');



$cid = intval($get['cid']) ? intval($get['cid']) : "0";

$page = intval($get['page']) ? intval($get['page']) : "1";

$keywd = htmlspecialchars(stripcslashes($get['kwd']));





$title="我的推广";

$title.="_代理中心_".$_SETTING['sitename'];

$keywords = $_SETTING['seokeyword'];

$description = $_SETTING['seodescription'];





$where = "`proxy`='{$USER['uid']}' and `uid`=0";

$this->loadBuiltinModel("paged");

$this->paged->setRows("30");

$data = $this->paged->getList($page, "FROM `{$this->DB->tabPre}order_12` WHERE {$where} ORDER BY id DESC");





@include $this->template($m . "/" . $ac);



/* 

 * This file was created by Liu Xianzhong

 *  This file has ended

 */

