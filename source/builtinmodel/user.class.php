<?php

class user implements setkernel{

	private $DB;
	private $Kernel;
	public $table;
	public $table_group;
	public $table_signin;
	public $levelRules;

	public function __construct($config) {
		/*
		  $this->table = "{$this->DB->tabPre}user";
		  $this->table_group = "{$this->DB->tabPre}user_group";
		  $this->table_signin = "{$this->DB->tabPre}user_signin";
		 */
		$this->table = "user";
		$this->table_group = "user_group";
		$this->table_signin = "user_signin";
	}

	public function setLevelRules($levelRules) {
		$this->levelRules = $levelRules;
	}

	public function getUser($uid) {
		$user = $this->DB->getFirst("SELECT * FROM `" . $this->DB->tabPre . $this->table . "` WHERE `uid` = '{$uid}'");
		return $user;
	}

	public function editUser($uid, $data) {
		return $this->DB->update($this->table, $data, " `uid`='{$uid}'");
	}

	public function getGroup($gid) {
		$gid = intval($gid);
		if ($gid) {
			return $this->DB->getFirst("SELECT * FROM `" . $this->DB->tabPre . $this->table_group . "` WHERE `gid` = '{$gid}' ");
		} else {
			return false;
		}
	}

	public function getGroupList() {
		$list = $this->DB->getResult("SELECT * FROM `" . $this->DB->tabPre . $this->table_group . "` WHERE 1 ");
		$data = array();
		foreach ($list as $k => $v) {
			$data[$v['gid']] = $v;
		}
		return $data;
	}

	public function addGroup($data) {
		$data['addtime'] = time();
		$data['edittime'] = time();
		return $this->DB->insert($this->table_group, $data);
	}

	public function editGroup($gid, $data) {
		$data['edittime'] = time();
		return $this->DB->update($this->table_group, $data, " `gid`='{$gid}'");
	}

	//
	public function removeGroup($items) {
		if ($items && !is_array($items)) {
			$itemid = intval($items);
			return $this->DB->delete($this->table_group, " `gid`='{$itemid}'");
		} elseif ($items && is_array($items)) {
			foreach ($items as $val) {
				$this->removeGroup($val);
			}
		}
	}

	public function getuserSignIn($uid) {
		$uid = intval($uid);
		if ($uid) {
			return $this->DB->getFirst("SELECT * FROM `" . $this->DB->tabPre . $this->table_signin . "` WHERE `uid` = '{$uid}' ORDER BY `time` DESC LIMIT 1");
		} else {
			return false;
		}
	}
	
	public function setKernel($Kernel) {
		$this->Kernel = $Kernel;
		$this->DB = $Kernel->DB;
	}

}
