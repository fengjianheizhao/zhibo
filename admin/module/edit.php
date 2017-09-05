<?php

defined('IN_SYSTEM') or exit('Access Denied');
$this->loadBuiltinModel("template");

$templateConfig = $this->template->getTemplateConfig();

$mid = intval($get['mid']);
if (!$mid) {
	$this->goIndex();
}
$detail = array();
$detail = $this->getModule($mid);
if (!$detail) {
	$this->goIndex();
}
$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['templateConfig'] = $templateConfig;
$DATA['mid'] = $mid;
$DATA['detail'] = $detail;

$this->display($DATA, $this->_C);


/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
