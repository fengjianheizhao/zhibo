<?php

defined('IN_SYSTEM') or exit('Access Denied');

$page = intval($get['page']) ? intval($get['page']) : "1";


$group = $this->user->getGroupList();

$this->loadBuiltinModel("paged");
$this->paged->setRows("20");
$data = $this->paged->getList($page, "FROM `" . $this->table . "` WHERE 1 ORDER BY `uid` DESC ");

$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['page'] = $page;
$DATA['group'] = $group;
$DATA['data'] = $data;



$this->display($DATA, $this->_C);

/* 
* This file was created by Liu Xianzhong
*  This file has ended
*/

