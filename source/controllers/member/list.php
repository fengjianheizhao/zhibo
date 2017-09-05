<?php



defined('IN_SYSTEM') or exit('Access Denied');




$page = intval($get['page']) ? intval($get['page']) : "1";







$title="托管产品";

$title.="_代理中心_".$_SETTING['sitename'];

$keywords = $_SETTING['seokeyword'];

$description = $_SETTING['seodescription'];



$where = "`status`='1' and `tg_status`<4";

$this->loadBuiltinModel("paged");

$this->paged->setRows("30");

$data = $this->paged->getList($page, "FROM `{$this->DB->tabPre}zhongchou_11` WHERE {$where} ORDER BY `recom` DESC ,id DESC");





@include $this->template($m . "/" . $ac);



/* 

 * This file was created by Liu Xianzhong

 *  This file has ended

 */

