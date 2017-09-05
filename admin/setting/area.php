<?php

defined('IN_SYSTEM') or exit('Access Denied');
$pid = intval($get['pid']) ? intval($get['pid']) : 0;
$this->loadBuiltinModel("area"); //

if ($pid) {
	$area = $this->area->getArea($pid);
} else {
	$area = array(
		"id" => "0",
		"areaid" => "0",
		"pid" => "0",
		"area" => "全国",
	);
}

$data['list'] = $this->area->listArea($pid);
$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['data'] = $data;
$DATA['area'] = $area;
$DATA['pid'] = $pid;

$this->display($DATA, $this->_C);
/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
