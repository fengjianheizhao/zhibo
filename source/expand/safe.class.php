<?php

class safe {

	private $db;
	private $_SC;
	private $comm;
	public $config;
	public $table;

	public function __construct($system) {
		$this->System = $system;
		$this->_SC = $system->_SC;
		$this->DB = $system->db;
		$this->comm = $system->comm;
		$this->table = "{$this->DB->tabPre}safe";
	}

	public function setSystem($system) {
		$this->System = $system;
		$this->_SC = $system->_SC;
		$this->DB = $system->db;
		$this->comm = $system->comm;
	}

	//添加记录
	public function addItem($data) {
		//"phonenum"  手机号
		//"event"  操作事件
		//"intro"   操作说明fff

		//$data['ip'] = getip();
		$data['addtime'] = time();
		return $this->DB->insert($this->table, $data);
	}

	public function test($event, $phonenum) {
		
	}

}
