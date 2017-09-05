<?php

defined('IN_SYSTEM') or exit('Access Denied');
$data = array();

$data['list'] = $this->getModule();


$DATA = array();
$DATA['title'] = $_SETTING['seotitle'];
$DATA['keywords'] = $_SETTING['seokeyword'];
$DATA['description'] = $_SETTING['seodescription'];
$DATA['data'] = $data;

$this->display($DATA, $this->_C);

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
