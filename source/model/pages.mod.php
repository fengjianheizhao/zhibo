<?php

defined('IN_SYSTEM') or exit('Access Denied');

abstract class Model extends Kernel {

	public $table;

	public function __construct() {
		parent::__construct();
		$this->loadBuiltinmodel("fields");
		$this->fieldstype = $this->fields->getConfig();
		$this->table = "{$this->DB->tabPre}{$this->MOD['module']}_{$this->MOD['mid']}";
		if (!$this->check()) {
			$this->install();
		}
	}

	//根据id返回信息
	public function getItem($itemid) {
		$itemid = intval($itemid);
		if ($itemid) {
			$sql = "SELECT * FROM `" . $this->table . "` WHERE `id` = '{$itemid}' ";
			return $this->DB->getFirst($sql);
		} else {
			return false;
		}
	}

	//添加
	public function addItem($data) {
		$data['status'] = 1;
		$data['addtime'] = time();
		$data['edittime'] = time();
		return $this->DB->insert($this->table, $data);
	}

	//编辑
	public function editItem($itemid, $data) {
		$data['edittime'] = time();
		return $this->DB->update($this->table, $data, " `id`='{$itemid}'");
	}

	//放入回收站
	function recycleItem($items) {
		if ($items && !is_array($items)) {
			$itemid = intval($items);
			return $this->DB->update($this->table, array("status" => 0), " `id`='{$itemid}'");
		} elseif ($items && is_array($items)) {
			foreach ($items as $val) {
				$this->recycleItem($val);
			}
		}
	}

	//还原信息
	function revertItem($items) {
		if ($items && !is_array($items)) {
			$itemid = intval($items);
			return $this->DB->update($this->table, array("status" => 1, 'edittime' => time()), " `id`='{$itemid}'");
		} elseif ($items && is_array($items)) {
			foreach ($items as $val) {
				$this->revertItem($val);
			}
		}
	}

	//删除
	function removeItem($items) {
		if ($items && !is_array($items)) {
			$itemid = intval($items);
			return $this->DB->delete($this->table, " `id`='{$itemid}'");
		} elseif ($items && is_array($items)) {
			foreach ($items as $val) {
				$this->removeItem($val);
			}
		}
	}

	//检查当前模块数据库表是否创建
	public function check() {
		$tables_arr = array();
		$sql = "show tables;";

		$result = $this->DB->getResult($sql);
		foreach ($result as $v) {
			$test = each($v);
			$tables_arr[] = $test['value'];
		}
		if (in_array($this->table, $tables_arr)) {
			return true;
		} else {
			return false;
		}
	}

	//创建当前模块数据库表
	public function install() {
		$sql = "CREATE TABLE  if not exists  `{$this->table}` (
			`id` bigint(20) NOT NULL AUTO_INCREMENT,
			`cid` bigint(20) DEFAULT NULL COMMENT '分类', 
			`title` varchar(255) DEFAULT NULL  COMMENT '标题',  
			`seotitle` varchar(255) DEFAULT NULL,
			`seokeyword` varchar(255) DEFAULT NULL,
			`thumb` varchar(255) DEFAULT NULL,
			
			`islink` tinyint(4) DEFAULT NULL,
			`linkurl` varchar(255) DEFAULT NULL  COMMENT '链接地址',  

			`status` tinyint(4) DEFAULT NULL,
			`content` text  COMMENT '内容', 
			`sort` int(11) DEFAULT NULL,
			`template` varchar(30) DEFAULT NULL COMMENT '渲染模板', 
			`hits` bigint(20) DEFAULT NULL COMMENT '浏览量', 
			`addtime` int(11) default NULL COMMENT '添加时间', 
			`edittime` int(11) default NULL COMMENT '更新时间', 
			`ip` varchar(255) DEFAULT NULL COMMENT '发布者ip', 
			`adminid` int(11) default NULL COMMENT '添加的管理员',
			PRIMARY KEY (`id`)
		) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;";
		$this->DB->exec($sql);
	}

}

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */