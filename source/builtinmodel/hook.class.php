<?php

class hook implements setkernel {

	private $DB;
	private $Kernel;

	public function __construct() {
		
	}

	public function setKernel($Kernel) {
		$this->Kernel = $Kernel;
		$this->DB = $Kernel->DB;
	}

}
