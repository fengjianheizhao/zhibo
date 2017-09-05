<?php

defined('IN_SYSTEM') or exit('Access Denied');
$page = $get['page'] ? $get['page'] : "1";

$title = sprintf($MODEL[$MODULE[$mod]['model']]['category'][$type], $MODULE[$mod]['name']);

$adstype = $this->ads->getConfig();

$this->loadBuiltinModel("paged");//加载分页模型
$this->paged->setRows("30");
$data = $this->paged->getList($page, "FROM `" . $this->DB->tabPre . "adszone` WHERE   1    ORDER BY  `sort` DESC,`id` DESC");


$DATA = array();
$DATA['title'] = $title;
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['detail'] = $this->ads->ads($itemid, false, false, false);
$DATA['page'] = $page;
$DATA['data'] = $data;
$DATA['adstype'] = $adstype;


$this->display($DATA, $this->_C);

/* 

* This file was created by Liu Xianzhong

*  This file has ended

*/

