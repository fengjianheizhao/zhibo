<?php

class setting implements setkernel {

	private $DB;
	private $_SC;
	private $Kernel;
	private $_USER;
	private $_POST;
	private $_GET;
	private $_APP_ROOT;
	private $table;

	public function __construct() {
		
	}

	public function getSetting() {
		$sql = "SELECT * FROM `{$this->table}` WHERE `id` = '1'";
		return $this->DB->getFirst($sql);
	}

	public function editSetting($data) {
		$this->DB->update($this->table, $data, " `id`='1'");
		$this->writeSetting();
	}

	//写入模块配置文件
	public function writeSetting() {
		$setting = $this->getSetting();
		$setting_file = $this->_APP_ROOT . "config/setting.ini.php";
		$text = "<?php  return array( ";
		foreach ($setting as $k => $v) {
			$v = saddslashes($v);
			$text .= "\"{$k}\" => \"{$v}\", ";
		}
		$text .= " );";
		return file_put_contents($setting_file, $text, FILE_USE_INCLUDE_PATH);
	}

	public function setKernel($Kernel) {
		$this->Kernel = $Kernel;
		$this->DB = $Kernel->DB;
		$this->_APP_ROOT = $Kernel->_APP_ROOT;
		$this->table = "{$this->DB->tabPre}setting";
	}

}
