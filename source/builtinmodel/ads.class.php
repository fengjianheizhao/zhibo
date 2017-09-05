<?php

class ads implements setkernel, config {

	private $DB;
	private $Kernel;
	private $Config;
	private $table_ads;
	private $table_adszone;

	public function __construct() {
		
	}

	public function adszoneadd($data) {
		$data['addtime'] = time();
		$data['edittime'] = time();
		return $this->DB->insert($this->table_adszone, $data);
	}

	public function adszoneedit($id, $data) {
		$data['edittime'] = time();
		$this->DB->update($this->table_adszone, $data, " `id`='{$id}'");
	}

	public function adszoneshow($id) {

		return $this->DB->getFirst("SELECT * FROM `{$this->table_adszone}` WHERE `id` = '{$id}' ");
	}

	public function adszoneremove($itemids) {
		if (is_array($itemids)) {
			foreach ($itemids as $v) {
				$this->adszoneremove($v);
			}
		} else {
			$id = intval($itemids);
			if ($id) {
				$this->DB->delete($this->table_adszone, "`id` = '{$id}'");
				$this->DB->delete($this->table_ads, "`aid` = '{$id}'");
			}
		}
	}

	public function adsadd($data) {
		$data['addtime'] = time();
		$data['edittime'] = time();
		return $this->DB->insert($this->table_ads, $data);
	}

	public function adsedit($id, $data) {
		$data['edittime'] = time();
		$this->DB->update($this->table_ads, $data, " `id`='{$id}'");
	}

	public function adsshow($id) {
		return $this->DB->getFirst("SELECT * FROM `{$this->table_ads}` WHERE `id` = '{$id}' ");
	}

	public function adsremove($id) {
		return $this->DB->exec("DELETE FROM `{$this->table_ads}` WHERE `id` = '{$id}' ");
	}

	public function adslist($where) {
		return $this->DB->getResult("SELECT * FROM `{$this->table_ads}` WHERE $where");
	}

	public function ads($id, $return = true, $template = null, $status = true) {
		$data = $this->adszoneshow($id);
		if ($data) {
			$sqladd = "";
			if ($status) {
				$sqladd .= " and `status`=1 ";
			}
			$data['list'] = $this->adslist("`aid`='{$id}' {$sqladd} ORDER BY  `sort` ASC , `id` DESC");
		}
		return $data;
	}

	public function setKernel($Kernel) {
		$this->Kernel = $Kernel;
		$this->DB = $Kernel->DB;
		$this->table_ads = "{$this->DB->tabPre}ads";
		$this->table_adszone = "{$this->DB->tabPre}adszone";
	}

	public function setConfig($config) {
		$this->Config = $config;
	}

	public function getConfig() {
		return $this->Config;
	}

}

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */

