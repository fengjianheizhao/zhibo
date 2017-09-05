<?php

defined('IN_SYSTEM') or exit('Access Denied');
$page = intval($get['page']) ? intval($get['page']) : "1";
$mod = $get['mod'];
//$mod = $MODULE[$mod]['mid'] ? $mod : $m;

$where = "`status`='1'";


$this->loadBuiltinModel("paged");
$this->paged->setRows("50");
$data = $this->paged->getList($page, "FROM `" . $this->table . "` WHERE {$where} ORDER BY `id` DESC ");

$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['page'] = $page;
$DATA['mod'] = $mod;
$DATA['data'] = $data;




$this->display($DATA, $this->_C);

/* 
* This file was created by Liu Xianzhong
*  This file has ended
*/

