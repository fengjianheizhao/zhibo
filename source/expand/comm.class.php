<?php

class comm {

	private $db;
	private $_SC;
	private $System;
	private $_USER;
	private $_POST;
	private $_GET;
	private $_TEMPLATE;

	public function __construct($system) {
		$this->System = $system;
		$this->_SC = $system->_SC;
		$this->_TEMPLATE = $system->_TEMPLATE;
		$this->url = $system->url;
	}

	public function setSystem($system) {
		$this->System = $system;
		$this->_SC = $system->_SC;
		$this->DB = $system->db;
		$this->_USER = $system->_USER;
		$this->_POST = $system->_POST;
		$this->_GET = $system->_GET;
	}

	public function getSession($key) {
		if (defined('IN_ADMIN')) {
			$key = $this->_SC['adminsessionpre'] . $key;
		} else {
			$key = $this->_SC['sessionpre'] . $key;
		}
		if (!empty($_SESSION[$key])) {
			return $_SESSION[$key];
		} else {
			return false;
		}
	}

	public function setSession($key, $value) {
		if (defined('IN_ADMIN')) {
			$key = $this->_SC['adminsessionpre'] . $key;
		} else {
			$key = $this->_SC['sessionpre'] . $key;
		}
		$_SESSION[$key] = $value;
	}

	public function unsetSession($key) {
		if (defined('IN_ADMIN')) {
			$key = $this->_SC['adminsessionpre'] . $key;
		} else {
			$key = $this->_SC['sessionpre'] . $key;
		}
		unset($_SESSION[$key]);
	}

	public function getCookie($key) {
		global $_COOKIE;
		$key = $this->_SC['cookiepre'] . $key;
		return empty($_COOKIE[$key]) or $_COOKIE[$key];
	}

	public function setCookie($key, $value, $time = 0) {
		$key = $this->_SC['cookiepre'] . $key;
		$time = $time > 0 ? (time() + $time) : $this->_SC['cookietime'];
		setcookie($key, $value, $time, "/");
	}

	public function get_template($tempfile, $data) {
		$URL = $this->url;
		ob_start();
		if (is_array($data)) {
			extract($data);
		}

		$file = $this->_TEMPLATE . $tempfile . $this->_SC['template_prefix'];
		ob_clean();
		if (file_exists($file)) {
			include $file;
		} else {
			echo '<div style="color:red">模板文件：' . $file . '不存在！</div>';
		}
		$out = ob_get_contents();
		$out = clearBOM($out);
		ob_clean();
		return $out;
	}





}
