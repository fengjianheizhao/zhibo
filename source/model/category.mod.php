<?php

defined('IN_SYSTEM') or exit('Access Denied');

abstract class Model extends Kernel {

	public $config;

	public function __construct() {
		parent::__construct();
		//$this->config = $this->model[$this->MOD['model']];
	}

}

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */