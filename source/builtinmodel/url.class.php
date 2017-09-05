<?php

class url implements setkernel {

	private $DB;
	private $Kernel;
	private $DEVICE;
	private $SITE_URL;
	private $CONFIG_MODULE;
	private $CONFIG_MODEL;
	private $CONFIG_SETTING;

	public function __construct() {
		
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

		if ($this->CONFIG_SETTING['rewrite'] == "1") {
			if (!$param_arr['m']) {
				return $this->SITE_URL . "index.html";
			} else {
				$m = $param_arr['m'];
				//$ac = $param_arr['ac'];
				$mod = $this->CONFIG_MODULE[$m];
				if (!$mod) {
					return $this->SITE_URL . "index.html";
				} else {

					$noac_mod_allow = array("pages"); //无需ac参数的模块

					if (!$param_arr['c'] && !in_array($m, $noac_mod_allow)) {
						return $this->SITE_URL . "{$m}/index.html";
					}
					$model = $this->CONFIG_MODEL[$mod['model']];
					$ac = $param_arr['c'] ? $param_arr['c'] : $model['default_ac'];
					unset($param_arr['m']);
					unset($param_arr['c']);

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

					return $this->SITE_URL . "{$m}/{$ac}{$param_suffix}.html";
				}
			}
		} else {
			if (!$param_arr['m']) {
				return $this->_SITEURL . "index.php";
			} else {
				$m = $param_arr['m'];
				$mod = $this->CONFIG_MODULE[$m];
				if (!$mod) {
					return $this->SITE_URL . "index.php";
				} else {
					$noac_mod_allow = array("pages"); //无需ac参数的模块
					if (!$param_arr['c'] && !in_array($m, $noac_mod_allow)) {
						return $this->SITE_URL . "{$m}/index.php";
					}
					$model = $this->CONFIG_MODEL[$mod['model']];
					$ac = $param_arr['c'] ? $param_arr['c'] : $model['default_ac'];
					unset($param_arr['m']);
					unset($param_arr['c']);

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
					return $this->SITE_URL . "{$m}/{$ac}.php{$param_str}";
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

	public function setKernel($Kernel) {
		$this->Kernel = $Kernel;
		$this->DB = $Kernel->DB;
		$this->DEVICE = $Kernel->DEVICE;
		$this->CONFIG_MODULE = $Kernel->CONFIG_MODULE;
		$this->CONFIG_MODEL = $Kernel->CONFIG_MODEL;
		$this->CONFIG_SETTING = $Kernel->CONFIG_SETTING;
	}

}
