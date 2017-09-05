<?php

defined('IN_SYSTEM') or exit('Access Denied');






$cid = intval($get['cid']) ? intval($get['cid']) : "0";
$catetree = $CAT->jieti($CAT->getmodlist($m, "cate"), 0);
$formtype = $this->fieldstype;
$fieldsList = $this->fields->listField($MOD['mid']);


$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['templateConfig'] = $this->CONFIG_TEMPLATE;
$DATA['cid'] = $cid;
$DATA['catetree'] = $catetree;
$DATA['formtype'] = $formtype;
$DATA['fieldsList'] = $fieldsList;

$this->display($DATA, $this->_C);




/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
