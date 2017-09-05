<?php

defined('IN_SYSTEM') or exit('Access Denied');

$pid = intval($get['pid']) ? intval($get['pid']) : 0;
$this->loadBuiltinModel("area"); //
$areas = array();
if ($pid) {
	$areas[] = $this->area->getArea($pid);
	if ($areas[0]['pid']) {
		$areas[] = $this->area->getArea($areas[0]['pid']);
		if ($areas[1]['pid']) {
			$areas[] = $this->area->getArea($areas[1]['pid']);
		}
	}
	$areas = array_reverse($areas);
}

//$data['list'] = $this->area->listArea($pid);
$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['areas'] = $areas;
$DATA['pid'] = $pid;


$this->display($DATA, $this->_C);
/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
