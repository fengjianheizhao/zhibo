<?php

defined('IN_SYSTEM') or exit('Access Denied');
if ($this->_A == "submit") {
	$detail = $post['detail'];
	$username = !empty($detail['username']) && preg_match("/^[0-9a-zA-Z]*$/", $detail['username']) && $detail['username'] ? $detail['username'] : "";
	$password = !empty($detail['password']) && $detail['password'] ? $detail['password'] : "";

	if ($username && $password) {
		$login = $this->admin->login($username, $password); //判断管理员是否登录
		if ($login) {
			$ajax['text'] = "";
			$ajax['status'] = 1;
		} else {
			$ajax['text'] = "登陆失败，用户名或密码错误！";
			$ajax['status'] = 0;
		}
	} else {
		$ajax['text'] = "登陆失败，用户名和密码不能为空！";
		$ajax['status'] = 0;
	}
	echo json_encode($ajax); //输出json结构的数据
} else {
	//@include $this->template();
	$DATA = array();
	$DATA['title'] = $_SETTING['seotitle'];
	$DATA['keywords'] = $_SETTING['seokeyword'];
	$DATA['description'] = $_SETTING['seodescription'];

	$this->display($DATA, $this->_C);
}


/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
