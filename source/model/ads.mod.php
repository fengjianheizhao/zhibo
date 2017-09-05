<?php

defined('IN_SYSTEM') or exit('Access Denied');

abstract class Model extends Kernel {

	public $adstype;

	public function __construct() {
		parent::__construct();
		$this->adstype = $this->ads->getConfig();
	}

}

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */