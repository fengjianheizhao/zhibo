<?php

defined('IN_SYSTEM') or exit('Access Denied');

abstract class Model extends Kernel {

	public $table;

	public function __construct() {
		parent::__construct();
		$this->table = "{$this->DB->tabPre}module";
	}

	public function getModule($m = false, $hide = true) {
		$sqlStr = "";
		if ($hide) {
			$sqlStr = "and `hide`=0";
		}
		if ($m) {
			$mid = intval($m);
			if ($mid > 0) {
				$sql = "SELECT * FROM `{$this->table}`  WHERE `mid`='{$mid}'  {$sqlStr} ORDER BY `sort` DESC , `mid` DESC ";
			} else {
				$sql = "SELECT * FROM `{$this->table}`  WHERE `module`='{$m}'  {$sqlStr}  ORDER BY `sort` DESC , `mid` DESC ";
			}
			return $this->DB->getFirst($sql);
		} else {
			$sqlStr = trim($sqlStr, "and");
			$sql = "SELECT * FROM `{$this->table}` WHERE  {$sqlStr}  ORDER BY `sort` DESC , `mid` DESC ";
			return $this->DB->getResult($sql);
		}
	}

	public function addModule($data) {
		if ($data['name'] && $data['module'] && $this->CONFIG_MODEL[$data['model']]['reuse'] == 1 && preg_match("/^[0-9a-zA-Z]*$/", $data['module'])) {
			$insert = array(
				"name" => $data['name'],
				"module" => $data['module'],
				"model" => $data['model'],
				"sort" => $data['sort'],
				"template" => 0,
				"hide" => 0,
				"adminid" => $this->_ADMIN['adminid'],
				"addtime" => time(),
				"edittime" => time(),
			);
			$mid = $this->DB->insert($this->table, $insert);
			if ($mid > 0) {
				$this->writeModule();
				foreach ($this->_SC['device'] as $k => $v) {
					(!$v['enable']) or $this->createFile($insert, $v);
				}
			}
			return $mid;
		} else {
			return false;
		}
	}

	public function editModule($mid, $data) {
		if ($data['name'] && $this->CONFIG_MODEL[$data['model']]['reuse'] == 1) {
			$sql = "SELECT * FROM `{$this->table}`  WHERE `mid`='{$mid}' and  `hide`=0";
			$result = $this->DB->getFirst($sql);
			if ($result) {
				$insert = array(
					"name" => $data['name'] ? $data['name'] : $result['name'],
					//"module" => $data['module'] ? $data['module'] : $result['module'],
					"template" => $data['template'] ? $data['template'] : 0,
					"sort" => $data['sort'] ? $data['sort'] : $result['sort'],
					"adminid" => $this->_ADMIN['adminid'],
					"edittime" => time(),
				);
				$this->DB->update($this->table, $insert, "`mid` = '" . $mid . "' ");

				$this->writeModule();
				foreach ($this->_SC['device'] as $k => $v) {
					(!$v['enable']) or $this->createFile($insert, $v);
				}
				return true;
			}
		}
		return false;
	}

	public function removeModule($mid) {
		$mod = $this->getModule($mid);
		if ($mod) {
			$tables = $this->CONFIG_MODEL[$mod['model']]['table'];
			if ($tables && is_array($tables)) {
				foreach ($tables as $k => $v) {
					$t = @str_replace("{module}", $mod['module'], $v);
					$table = "{$this->DB->tabPre}{$t}_{$mod['mid']}";
					$sql = "DROP TABLE IF EXISTS `{$table}`;";
					$this->DB->exec($sql);
				}
			}

			//删除分类记录
			$category = $this->CONFIG_MODEL[$mod['model']]['category'];
			if ($category && is_array($category)) {
				foreach ($category as $k => $v) {
					$sql = "DELETE FROM `{$this->DB->tabPre}category`  WHERE (`mod`='{$mod['module']}' ) ";
					$this->DB->exec($sql);
				}
			}
			//删除自定义字段记录
			$sql = "DELETE FROM `{$this->DB->tabPre}fields`  WHERE (`mid`='{$mod['mid']}' ) ";
			$this->DB->exec($sql);
			//删除模块记录
			$sql = "DELETE FROM `{$this->table}`  WHERE (`mid`='{$mid}'  and  `hide`=0) ";
			$this->DB->exec($sql);
			$this->writeModule();
			//删除手机和电脑端模块的入口文件
			foreach ($this->_SC['device'] as $k => $v) {
				$this->removeFile($mod, $v);
			}
		}
	}

	//写入模块配置文件
	public function writeModule() {
		$sql = "SELECT * FROM `{$this->table}` ORDER BY `sort` ASC , `mid` ASC ";
		$module = $this->DB->getResult($sql);
		$module_file = $this->_APP_ROOT . "config/module.ini.php";
		$text = "<?php  return array( ";
		foreach ($module as $k => $v) {
			$text .= "\"{$v['module']}\" => array( ";
			$text .= "\"mid\" => \"{$v['mid']}\", ";
			$text .= "\"name\" => \"{$v['name']}\", ";
			$text .= "\"module\" => \"{$v['module']}\", ";
			$text .= "\"model\" => \"{$v['model']}\", ";
			$text .= "\"template\" => \"{$v['template']}\", ";
			$text .= "\"hide\" => \"{$v['hide']}\", ";
			$text .= "), ";
		}
		$text .= " );";
		return file_put_contents($module_file, $text, FILE_USE_INCLUDE_PATH);
	}

	public function createFile($module, $device) {


		$path = $this->_APP_ROOT . $device['path'] . "/" . $module['module'] . "/";
		$files = $this->CONFIG_MODEL[$module['model']]['files'];
		$content = '<?php
$m = "' . $module['module'] . '";
include_once "../common.inc.php";
LxzCmsRoot\LxzCms::Run();';

		create_folders($path);
		foreach ($files as $k => $v) {
			file_put_contents($path . $v . ".php", $content, FILE_USE_INCLUDE_PATH);
		}
	}

	public function removeFile($module, $device) {
		$path = $this->_APP_ROOT . $device['path'] . "/" . $module['module'] . "/";
		delDirAll($path, false); //false  不保留文件夹
		delDir($path);
	}

}

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */