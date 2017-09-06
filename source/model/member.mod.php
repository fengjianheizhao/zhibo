<?php

defined('IN_SYSTEM') or exit('Access Denied');
abstract class Model extends Kernel {



	public function __construct() {
		parent::__construct();
		$this->loadBuiltinModel("fields,email,area");
		$this->fieldstype=$this->fields->getConfig();

		$this->table = $this->user->table;
		$this->table_group = $this->user->table_group;

		if (!$this->check()) {
			$this->install();
		}
		if (!defined('IN_ADMIN')) {
			$this->loginJump();
		}
	}

	//判断登录并跳转
	public function loginJump() {
		$notJumpLogin = array("login",);
		$uid = $this->comm->getSession("uid");

		if ($uid > 0 && in_array($this->ac, $notJumpLogin)) {
			$url = $this->url->setUrl("?m={$this->m}&ac=list");
			$this->redirect($url);
		}

		$notJumpLogin[] = "ajax";

		if (!($uid > 0) && !in_array($this->ac, $notJumpLogin)) {
			$jump = base64_encode($this->url->setUrl("?m={$this->m}&ac={$this->ac}"));
			$url = $this->url->setUrl("?m={$this->m}&ac=login&jump={$jump}");
			$this->redirect($url);
		}
	}

	//添加
	public function addMember($data) {
		$IP = getip();
		$TIME = time();
		$data['regip'] = $IP;
		$data['regtime'] = $TIME;
		$data['loginip'] = $IP;
		$data['logintime'] = $TIME;
		$data['lastlogintime'] = $TIME;
		$data['logins'] = 1;
		$data['status'] = 1; //0 封号，1，正常，2 限制登录
		return $this->DB->insert($this->table, $data);
	}

	//编辑
	public function editMember($uid, $data) {
		return $this->DB->update($this->table, $data, " `uid`='{$uid}'");
	}

	//检查手机号是否合法
	public function checkPhoneNum($value) {
		if (is_mobile($value)) {
			$sql="SELECT * FROM `" . $this->table . "` WHERE `phonenum` = '{$value}'";
			$user = $this->DB->getFirst($sql);
			if ($user) {
				return -1;
			} else {
				return 1;
			}
		} else {
			return 0;
		}
	}

	//检查手机号是否合法
	public function checkEmail($value) {
		if (is_email($value)) {
			$sql="SELECT * FROM `" . $this->table . "` WHERE `email` = '{$value}'";
			$user = $this->DB->getFirst($sql);
			if ($user) {
				return -1;
			} else {
				return 1;
			}
		} else {
			return 0;
		}
	}

	//检查手机验证码是否合法
	public function checkPhoneCode($value) {
		$code = $this->comm->getSession("smscode");
		if ($code) {
			if (preg_match("/^\d{6}$/", $value)) {
				if ($code == $value) {
					return 1;
				} else {
					return 0;
				}
			} else {
				return 0;
			}
		} else {
			return -1;
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
		if (in_array($this->table_group, $tables_arr) && in_array($this->table, $tables_arr)) {
			return true;
		} else {
			return false;
		}
	}

	//创建当前模块数据库表
	public function install() {
		//创建会员组表
		$sql = "CREATE TABLE  if not exists  `{$this->table_group}` (
			`gid` bigint(20) NOT NULL auto_increment,
			`gname` varchar(16) default NULL COMMENT '会员组名称',
			`status` tinyint(4) default NULL COMMENT '状态',
			`allow` text COMMENT '会员组权限', 
			`addtime` int(11) default NULL COMMENT '创建时间',
			`edittime` int(11) default NULL COMMENT '修改时间',
			`point` int(20) default NULL COMMENT '等级所需积分',
			`viewtme` int(20) default NULL COMMENT '允许观看时间',
			`enteradmin` tinyint(4) default NULL COMMENT '允许进入后台',
			 PRIMARY KEY  (`gid`)
			 ) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;";
		$this->DB->exec($sql);
		//创建会员表
		$sql = "CREATE TABLE  if not exists  `{$this->table}` (
			`uid` bigint(20) NOT NULL auto_increment,
			`gid` int(11) default NULL COMMENT '会员组id',
			`account` varchar(40) default NULL COMMENT '会员账号',
			`nickname` varchar(40) default NULL COMMENT '会员昵称',
			`avatar` varchar(255) default NULL COMMENT '会员头像',
			`password` varchar(255) default NULL COMMENT '密码',
			`phonenum` varchar(16) default NULL COMMENT '手机号',
			`email` varchar(50) default NULL COMMENT '会员邮箱',
			`qq` varchar(20) default NULL COMMENT '会员QQ',
			`sex` varchar(10) default NULL COMMENT '会员性别',
			`regip` varchar(50) default NULL COMMENT '注册ip',
			`regtime` int(11) default NULL COMMENT '注册时间',
			`loginip` varchar(50) default NULL COMMENT '登录ip',
			`logintime` int(11) default NULL COMMENT '登录时间',
			`lastlogintime` int(11) default NULL COMMENT '上次登录时间',
			`logins` int(11) default NULL COMMENT '登录次数',
			`status` tinyint(4) default NULL COMMENT '状态',
			`point1` int(20) default NULL COMMENT '积分1',
			`point2` int(20) default NULL COMMENT '积分2',
			`point3` int(20) default NULL COMMENT '积分3',
			`roomid` int(20) default NULL COMMENT '关注的房间',
			PRIMARY KEY  (`uid`)
			) ENGINE=MyISAM AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8;";
		$this->DB->exec($sql);
	}

}

/*
 * This file was created by Liu Xianzhong
 *  This file has ended
 */