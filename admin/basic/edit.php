<?php

defined('IN_SYSTEM') or exit('Access Denied');
$itemid = intval($get['itemid']);
$detail = $this->getItem($itemid);
if (!$itemid || !$detail) {
	$this->goIndex();
}

$catetree = $CAT->jieti($CAT->getmodlist($m, "cate"), 0);
$formtype = $this->fieldstype;
$fieldsList = $this->fields->listField($MOD['mid']);



$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['templateConfig'] = $this->CONFIG_TEMPLATE;
$DATA['itemid'] = $itemid;
$DATA['detail'] = $detail;
$DATA['catetree'] = $catetree;
$DATA['formtype'] = $formtype;
$DATA['fieldsList'] = $fieldsList;

$this->display($DATA, $this->_C);

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
