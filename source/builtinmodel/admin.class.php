<?php

class admin implements setkernel {

	private $DB;
	private $_M;
	private $_C;
	private $_A;
	private $Kernel;
	public $_ADMIN;
	public $ClientIP;
	private $table;

	public function __construct() {
		
	}

	//后台管理员登录
	public function login($username, $password) {
		$admin = $this->DB->getFirst("SELECT * FROM `{$this->table}`   WHERE `username` = '" . $username . "' and password='" . md5($password) . "'");
		if ($admin) {
			$ip = $this->ClientIP;
			$data = array(
				"logins" => $admin['logins'] + 1,
				"logintime" => time(),
				"loginip" => $ip,
			);
			$this->DB->update($this->table, $data, "`adminid` = '" . $admin['adminid'] . "' ");
			$this->Kernel->setSession("adminid", $admin['adminid']);
			$this->Kernel->setSession("adminip", $ip); //保存登录ip，如果更换ip，即为未登录状态
			return $admin;
		} else {
			return false;
		}
	}

	//判断是否登录并返回登录管理员信息
	public function getAdmin() {
		$ip = $this->ClientIP;
		$adminid = $this->Kernel->getSession("adminid");
		$adminip = $this->Kernel->getSession("adminip"); //保存登录ip，如果更换ip，即为未登录状态
		if ($adminid && $adminip == $ip) {
			$admin = $this->DB->getFirst("SELECT * FROM `{$this->table}`   WHERE `adminid` = '" . $adminid . "' ");
			if ($admin) {
				$this->_ADMIN = $admin;
				return $admin;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}

	//判断管理员是否登录，

	public function isLogin() {
		$allow_c = array("login", "loginout");
		$allow_m = array("index");
		if (!((in_array($this->_C, $allow_c) && in_array($this->_M, $allow_m)) || $this->_C == "ajax")) {
			if (!$this->_ADMIN) {
				$redirect = base64_encode("http://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']);
				$this->Kernel->redirect("?m=index&c=login&redirect=" . $redirect);
				exit();
			}
		}
	}

	public function editAdmin($adminid, $data) {
		if ($adminid) {
			$admin = $this->DB->getFirst("SELECT * FROM `{$this->table}`   WHERE `adminid` = '" . $adminid . "' ");
			if ($admin) {
				$this->DB->update($this->table, $data, "`adminid` = '" . $adminid . "' ");
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}

	public function setKernel($Kernel) {
		$this->Kernel = $Kernel;
		$this->DB = &$Kernel->DB;
		$this->_C = &$Kernel->_C;
		$this->_A = &$Kernel->_A;
		$this->_M = &$Kernel->_M;
		$this->ClientIP = &$Kernel->ClientIP;
		$this->table = "{$this->DB->tabPre}admin";
	}

}
