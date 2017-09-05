<?php

defined('IN_SYSTEM') or exit('Access Denied');
abstract class Model extends Kernel {

	public $config;
	public $table;

	public function __construct() {
		parent::__construct();
		$this->loadBuiltinModel("fields");
		$this->fieldstype=$this->fields->getConfig();
		//$this->config = $this->model[$this->MOD['model']];
		$this->table = "{$this->DB->tabPre}{$this->MOD['module']}_{$this->MOD['mid']}";
		if (!$this->check()) {
			$this->install();
		}
	}

	//根据id返回信息
	public function getItem($itemid) {
		$itemid = intval($itemid);
		if ($itemid) {
			$sql="SELECT * FROM `" . $this->table . "` WHERE `id` = '{$itemid}' ";
			return $this->DB->getFirst($sql);
		} else {
			return false;
		}
	}

	public function sendEmail($data) {
		
		$guesttime = date("Y-m-d H:i:s");
		$guestIP = getip();
		$content = "";
		$content.="<h3>官方网站留言信息：</h3>";
		$content.="<div>留言人姓名：{$data['name']}</div>";
		$content.="<div>留言人手机：{$data['phonenum']}</div>";
		$content.="<div>留言人QQ：{$data['qq']}</div>";
		$content.="<div>留言人邮箱：{$data['email']}</div>";
		$content.="<div>留言内容：{$data['content']}</div>";
		$content.="<div>留言人时间：{$guesttime}</div>";
		$content.="<div>留言人IP：{$guestIP}</div>";
		
		$this->email->setFrom($this->_SC['emailUserName']); //设置发件人
		$this->email->setFromName($this->_SETTING['sitename']); //设置发件人姓名
		$this->email->setReceiver($this->_SC['emailNotice']); //设置收件人，多个收件人，调用多次
		$this->email->setMail("您有新的网站留言，请赶快查看！", $content);
		$status=$this->email->sendMail(); //发送
		
		//writeLog($status,"a");
		
	}

	//添加
	public function addItem($data) {
		//$this->sendEmail($data);
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

	function getType($type) {
		switch ($type) {
			case "2":
				return "咨询";
				break;
			case "3":
				return "投诉";
				break;
			case "4":
				return "建议";
				break;
			default :
				break;
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
		`id` bigint(20) NOT NULL auto_increment, 
		`mid` int(10) DEFAULT NULL, 
		`mod` varchar(255) default NULL,
		`recom` int(10) DEFAULT NULL COMMENT '推荐', 
		`status` tinyint(4) default NULL COMMENT '状态', 
		`sort` bigint(20) DEFAULT NULL COMMENT'排序',
		`addtime` int(11) default NULL COMMENT '添加时间',
		`edittime` int(11) default NULL COMMENT '更新时间', 
		`ip` varchar(255) DEFAULT NULL COMMENT '发布者ip', 
		`adminid` int(11) default NULL COMMENT '添加的管理员',
		PRIMARY KEY  (`id`)
		) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;";
		$this->DB->exec($sql);
	}

}

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */