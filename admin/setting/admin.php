<?php

defined('IN_SYSTEM') or exit('Access Denied');
if ($this->s == "submit") {
	$detail = $post['detail'];
	if ($detail) {
		$password = $detail['password'];
		if (!$password) {
			$ajax['status'] = 0;
			$ajax['text'] = "请输入密码！";
		} elseif ($this->_ADMIN['password'] != md5($password)) {
			$ajax['status'] = 0;
			$ajax['text'] = "密码错误！";
		} elseif (strlen(trim($detail['username'])) < 5 || strlen(trim($detail['username'])) > 16) {
			$ajax['status'] = 0;
			$ajax['text'] = "用户名长度必须在5-16位之间！";
		} else {
			$data = array();
			$data['username'] = $detail['username'];
			if ($detail['newpassword']) {
				if (strlen(trim($detail['newpassword'])) >= 6 && strlen(trim($detail['newpassword'])) <= 16) {
					if ($detail['newpassword'] == $detail['repassword']) {
						$data['password'] = md5($detail['newpassword']);
						$status = $this->admin->editAdmin($this->_ADMIN['adminid'], $data);
						if ($status) {
							$ajax['status'] = 1;
							$ajax['text'] = "修改管理员信息成功！";
						} else {
							$ajax['status'] = 0;
							$ajax['text'] = "参数错误！";
						}
					} else {
						$ajax['status'] = 0;
						$ajax['text'] = "修改失败，两次输入密码不一样！";
					}
				} else {
					$ajax['status'] = 0;
					$ajax['text'] = "新密码长度必须在6-16位之间！";
				}
			} else {
				$status = $this->admin->editAdmin($this->_ADMIN['adminid'], $data);
				if ($status) {
					$ajax['status'] = 1;
					$ajax['text'] = "修改管理员信息成功！";
				} else {
					$ajax['status'] = 0;
					$ajax['text'] = "参数错误！";
				}
			}
		}
	} else {
		$ajax['status'] = 0;
		$ajax['text'] = "修改管理员信息失败！";
	}
	echo json_encode($ajax); //输出json结构的数据
} else {
	$DATA = array();
	$DATA['title'] = $_SETTING['seotitle'];
	$DATA['keywords'] = $_SETTING['seokeyword'];
	$DATA['description'] = $_SETTING['seodescription'];
	$DATA['detail'] = $detail;

	$this->display($DATA, $this->_C);
}


/*
 * This file was created by Liu Xianzhong
 *  This file has ended
 */