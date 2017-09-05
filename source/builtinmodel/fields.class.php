<?php

class fields implements setkernel, config {

	private $DB;
	private $Kernel;
	private $Config;
	private $table;

	public function __construct() {
		
	}

	public function checkField($table, $field) {
		$sql = "describe  `{$this->DB->tabPre}{$table}`  `{$field}`";
		return $this->DB->getFirst($sql);
	}

	public function addField($table, $data) {
		$data['table'] = $table;
		$data['addtime'] = time();
		$data['edittime'] = time();
		$fieldid = $this->DB->insert($this->table, $data);
		if ($fieldid) {
			//添加的字段只能在模块主表上，即以模块标识为名称的表上
			switch ($data['type']) {
				case "bigint":
					$type = "BIGINT( 20 ) ";
					break;
				case "tinyint":
					$type = "tinyint(1)";
					break;
				case "decimal":
					$type = "DECIMAL( 10, 2 )  ";
					break;
				case "text":
					$type = "TEXT";
					break;
				case "varchar":
					$type = "VARCHAR( 255 )";
					break;
				default :
					$type = "VARCHAR( 255 )";
					break;
			}
			$sql = "ALTER TABLE `{$this->DB->tabPre}{$table}` ADD `{$data['name']}`  {$type}  NULL  COMMENT  '{$data['title']}' ";
			$this->DB->exec($sql);
			return $fieldid;
		} ELSE {
			return false;
		}
	}

	public function editField($fid, $data) {
		$field = $this->getField($fid);
		if ($field) {
			$data['edittime'] = time();
			$this->DB->update($this->table, $data, "`id` = '" . $fid . "' ");
			$type = "";
			switch ($data['type']) {
				case "bigint":
					$type = "BIGINT( 20 ) ";
					break;
				case "tinyint":
					$type = "tinyint(1)";
					break;
				case "decimal":
					$type = " DECIMAL( 10, 2)  ";
					break;
				case "text":
					$type = "TEXT";
					break;
				case "varchar":
					$type = "VARCHAR( 255 )";
					break;
				default :
					$type = "VARCHAR( 255 )";
					break;
			}
			$sql = "ALTER TABLE `{$this->DB->tabPre}{$field['table']}`   CHANGE    `{$field['name']}`   `{$field['name']}`  {$type}   NULL  COMMENT  '{$data['title']}'  ";
			return $this->DB->exec($sql);
		}
	}

	public function listEditField($itemids, $listData) {
		foreach ($itemids as $k => $v) {
			$itemid = intval($v);
			if ($itemid) {
				$data = array();
				$data = $listData[$itemid];
				$data['prompt'] = $data['prompt'] ? $data['prompt'] : "";
				$data['sort'] = intval($data['sort']);
				if ($data['title']) {
					///$this->cateedit($itemid, $data);
					$data['edittime'] = time();
					$this->DB->update($this->table, $data, "`id` = '" . $itemid . "' ");
				}
			}
		}
	}

	public function delField($fid) {
		$field = $this->getField($fid);
		if ($field) {
			$sql = "DELETE FROM `{$this->table}`  WHERE (`id`='{$fid}' ) ";
			$this->DB->exec($sql);
			if ($this->checkField($field['table'], $field['name'])) {
				$sql = "ALTER TABLE `{$this->DB->tabPre}{$field['table']}` DROP `{$field['name']}` ";
				$this->DB->exec($sql);
			}
		}
	}

	public function getField($fid) {
		$sql = "SELECT * FROM `{$this->table}` WHERE `id`='{$fid}'  ORDER BY `sort` ASC , `id` ASC ";
		return $this->DB->getFirst($sql);
	}

	public function getFieldName($name, $mid) {
		$sql = "SELECT * FROM `{$this->table}` WHERE `mid` = '{$mid}' AND `name` = '{$name}'  ORDER BY `sort` ASC , `id` ASC ";
		return $this->DB->getFirst($sql);
	}

	public function getFieldValue($field, $value = false) {
		$options = json_decode($field['options'], true);
		$result = array();
		foreach ($options as $k => $v) {
			if ($value) {
				$result[] = $v['value'];
			} else {
				$result[$v['value']] = $v['key'];
			}
		}
		return $result;
	}

	public function listField($mid) {
		$sql = "SELECT * FROM `{$this->table}` WHERE `mid`='{$mid}'  ORDER BY `sort` ASC , `id` ASC ";
		return $this->DB->getResult($sql);
	}

	public function setKernel($Kernel) {
		$this->Kernel = $Kernel;
		$this->DB = $Kernel->DB;
		$this->table = "{$this->DB->tabPre}fields";
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
