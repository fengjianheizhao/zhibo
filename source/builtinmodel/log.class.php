<?php

class log  implements setkernel {

	private $DB;
	private $_SC;
	private $System;
	private $_USER;
	private $_POST;
	private $_GET;
	private $_TEMPLATE;

	public function __construct($system) {
		$this->System = $system;
		$this->_SC = $system->_SC;
		$this->_SETTING = $system->_SETTING;
		$this->_SITEURL = $system->_SITEURL;
		$this->MODULE = $system->MODULE;
		$this->model = $system->model;
		$this->LG = $system->LG;
	}

	public function setSystem($system) {
		$this->System = $system;
		$this->_SC = $system->_SC;
		$this->DB = $system->db;
	}

	public function setUrl($url, $data = false) {
		if ($data) {
			if ($data['islink'] == "1" && $data['linkurl'] != "") {
				return $data['linkurl'];
			}
		}

		if (substr($url, 0, 7) == "http://" || substr($url, 0, 8) == "https://") {
			return $url;
		}

		list($page, $canshu) = explode("?", $url);
		$param_arr = array();
		if ($canshu) {
			$arr = explode("&", $canshu);
			foreach ($arr as $k => $v) {
				list($key, $val) = explode("=", $v);
				$param_arr[$key] = $val;
			}
		}
		$this->LG == reset($this->_SC['language']) or $param_arr['lg'] = $this->LG;


		if ($this->_SETTING['rewrite'] == "1") {
			if (!$param_arr['m']) {
				return $this->_SITEURL . "index.html";
			} else {
				$m = $param_arr['m'];
				//$ac = $param_arr['ac'];
				$mod = $this->MODULE[$m];
				if (!$mod) {
					return $this->_SITEURL . "index.html";
				} else {

					$noac_mod_allow = array("pages"); //无需ac参数的模块

					if (!$param_arr['ac'] && !in_array($m, $noac_mod_allow)) {
						return $this->_SITEURL . "{$m}/index.html";
					}
					$model = $this->model[$mod['model']];
					$ac = $param_arr['ac'] ? $param_arr['ac'] : $model['default_ac'];
					unset($param_arr['m']);
					unset($param_arr['ac']);

					ksort($param_arr);

					//$allow = array("page", "cid", "itemid", "gid", "step", "s");
					$param_str = $param_suffix = "";
					foreach ($param_arr as $k => $v) {
						if ($v == "") {
							$v = 0;
						}
						//if (isset($param_arr[$v])) {
						$param_suffix .= "-{$k}-{$v}";
						//unset($param_arr[$v]);
						//}
					}

					return $this->_SITEURL . "{$m}/{$ac}{$param_suffix}.html";
				}
			}
		} else {
			if (!$param_arr['m']) {
				return $this->_SITEURL . "index.php";
			} else {
				$m = $param_arr['m'];
				$mod = $this->MODULE[$m];
				if (!$mod) {
					return $this->_SITEURL . "index.php";
				} else {
					$noac_mod_allow = array("pages"); //无需ac参数的模块
					if (!$param_arr['ac'] && !in_array($m, $noac_mod_allow)) {
						return $this->_SITEURL . "{$m}/index.php";
					}
					$model = $this->model[$mod['model']];
					$ac = $param_arr['ac'] ? $param_arr['ac'] : $model['default_ac'];
					unset($param_arr['m']);
					unset($param_arr['ac']);

					ksort($param_arr);
					$delimiter = "";
					if ($param_arr) {
						$param_str = "?";
						foreach ($param_arr as $k => $v) {
							$param_str .= "{$delimiter}{$k}={$v}";
							$delimiter = "&";
						}
					}
					//$param_str = urlencode($param_str);
					return $this->_SITEURL . "{$m}/{$ac}.php{$param_str}";
				}
			}


			//return $url;
		}
	}

	public function getUrl($get) {
		if (!empty($get['param'])) {
			$param_str = urldecode($get['param']);
			$param_arr = explode(";", $param_str);
			$params = array();
			foreach ($param_arr as $value) {
				list($k, $v) = explode(":", $value);
				$params[$k] = $v;
				if (empty($get[$k]) && $k) {
					$get[$k] = $v;
				}
			}
			unset($get['param']);
		}
		return $get;
	}

}
