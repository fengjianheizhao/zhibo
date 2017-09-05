<?php

defined('IN_SYSTEM') or exit('Access Denied');
$itemid = intval($get['itemid']);
$detail = $this->getItem($itemid);
if (!$itemid || !$detail) {
	$this->goIndex();
}


$formtype = $this->fieldstype;
$fieldsList = $this->fields->listField($MOD['mid']);
$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['formtype'] = $formtype;
$DATA['fieldsList'] = $fieldsList;
$DATA['detail'] = $detail;
$DATA['itemid'] = $itemid;



$this->display($DATA, $this->_C);

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
