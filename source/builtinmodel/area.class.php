<?php

class area implements setkernel {

	private $DB;
	private $Kernel;
	private $table;

	public function __construct($system) {
		
	}

	public function getArea($areaid) {
		return $this->DB->getFirst("SELECT * FROM `{$this->table}` WHERE `areaid` = '{$areaid}'");
	}

	public function listArea($pid) {
		return $this->DB->getResult("SELECT * FROM `{$this->table}` WHERE `pid` = '{$pid}'");
	}

	public function getAreaList($where, $index = 0) {
		$list = $this->DB->getResult("SELECT * FROM `{$this->table}` WHERE $where");
		$data = array();
		foreach ($list as $val) {
			if ($index == 0) {
				$data[$val['pid']][] = $val;
			} elseif ($index == 1) {
				$data[$val['areaid']] = $val;
			}
		}
		return $data;
	}

	public function addArea($data) {
		return $this->DB->insert("area", $data);
	}

	public function editArea($areaid, $data) {
		$this->DB->update($this->table, $data, " `areaid`='{$areaid}'");
	}

	public function editIdArea($id, $data) {
		$this->DB->update($this->table, $data, " `id`='{$id}'");
	}

	public function setKernel($Kernel) {
		$this->Kernel = $Kernel;
		$this->DB = $Kernel->DB;
		$this->table = "{$this->DB->tabPre}area";
	}

}
