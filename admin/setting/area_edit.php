<?php

defined('IN_SYSTEM') or exit('Access Denied');
$this->loadBuiltinModel("area"); //
$areaid = intval($get['areaid']);
$detail = $this->area->getArea($areaid);
$areas = array();
if ($detail['pid']) {
	$areas[] = $this->area->getArea($detail['pid']);
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
$DATA['detail'] = $detail;
$DATA['areaid'] = $areaid;

$this->display($DATA, $this->_C);

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
