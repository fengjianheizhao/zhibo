<?php

defined('IN_SYSTEM') or exit('Access Denied');
$itemid = intval($get['itemid']);
if ($itemid) {
	$detail = $this->fields->getField($itemid);
}
if (!$detail) {
	$this->goIndex();
}

$formtype = $this->fieldstype;

$options = $pre_str = "";
if ($detail['options']) {
	$options_arr = json_decode($detail['options'], true);
	foreach ($options_arr as $k => $v) {
		$options.=$pre_str . $v['value'] . "|" . $v['key'];
		$pre_str = "\r\n";
	}
}

$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['itemid'] = $itemid;
$DATA['detail'] = $detail;
$DATA['formtype'] = $formtype;
$DATA['options'] = $options;




$this->display($DATA, $this->_C);




/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
