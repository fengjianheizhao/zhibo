<?php

defined('IN_SYSTEM') or exit('Access Denied');
abstract class Model extends Kernel {



	public function __construct() {
		parent::__construct();
		$this->loadBuiltinModel("fields");
		$this->fieldstype=$this->fields->getConfig();

	}

	
}

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */