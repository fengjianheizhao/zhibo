<?php

defined('IN_SYSTEM') or exit('Access Denied');
set_time_limit(0);
ignore_user_abort();
$ajax = array();
if ($this->_ADMIN) {
	switch ($this->_A) {
		case 'add':
			$detail = $post['detail'];
			$data = array();
			$data['account'] = trim($detail['account']);
			$data['gid'] = intval(trim($detail['gid']));
			$data['nickname'] = trim($detail['nickname']);
			$data['password'] = trim($detail['password']) ? encrypt(trim($detail['password'])) : "";
			$data['phonenum'] = trim($detail['phonenum']);
			$data['email'] = trim($detail['email']);
			$data['qq'] = trim($detail['qq']);
			$data['sex'] = trim($detail['sex']);
			$data['regip'] = getip();
			$data['regtime'] = time();

			$status = $this->addMember($data);
			if ($status) {
				$ajax['text'] = "修改成功！";
				$ajax['status'] = 1;
			} else {
				$ajax['text'] = "参数错误！";
				$ajax['status'] = 0;
			}
			break;
		case 'edit':
			$detail = $post['detail'];
			$uid = intval($detail['uid']);
			if ($uid) {
				$data = array();
				$data['account'] = trim($detail['account']);
				$data['gid'] = intval(trim($detail['gid']));
				$data['nickname'] = trim($detail['nickname']);
				$data['password'] = trim($detail['password']) ? encrypt(trim($detail['password'])) : "";
				$data['phonenum'] = trim($detail['phonenum']);
				$data['email'] = trim($detail['email']);
				$data['qq'] = trim($detail['qq']);
				$data['sex'] = trim($detail['sex']);

				$editData = array();
				foreach ($data as $k => $v) {
					if ($v === "") {
						
					} else {
						$editData[$k] = $v;
					}
				}

				if ($editData) {
					$this->editMember($uid, $editData);
					$ajax['text'] = "修改成功！";
					$ajax['status'] = 1;
				} else {
					$ajax['text'] = "参数错误！";
					$ajax['status'] = 0;
				}
			} else {
				$ajax['text'] = "参数错误！";
				$ajax['status'] = 0;
			}
			break;
		case 'groupadd':
			$detail = $post['detail'];
			$data = array(
				"gname" => trim($detail['gname']),
				"status" => ($detail['status'] == "1" ) ? 1 : 0,
				"allow" => trim($detail['allow']),
			);
			$gid = $this->user->addGroup($data);
			if ($gid) {
				$ajax['text'] = "添加成功！";
				$ajax['status'] = 1;
			} else {
				$ajax['text'] = "添加失败！";
				$ajax['status'] = 0;
			}
			break;
		case 'groupedit':
			$detail = $post['detail'];
			$groupId = intval($detail['gid']);
			$data = array(
				"gname" => trim($detail['gname']),
				"status" => ($detail['status'] == "1" ) ? 1 : 0,
				"allow" => trim($detail['allow']),
			);
			$status = $this->user->editGroup($groupId, $data);
			if ($status) {
				$ajax['text'] = "修改成功！";
				$ajax['status'] = 1;
			} else {
				$ajax['text'] = "修改失败！";
				$ajax['status'] = 0;
			}
			break;
		case 'groupdel':
			$itemid = intval($get['gid']);
			$itemids = $post['gids'];
			$items = $itemid ? $itemid : $itemids;
			if ($items) {
				$this->user->removeGroup($items);
				$ajax['status'] = 1;
				$ajax['itemid'] = $itemid;
			} else {
				$ajax['text'] = "请选择要删除的内容！";
				$ajax['status'] = 0;
			}
			break;
		default :
			$ajax['text'] = "参数错误！"; //参数错误
			$ajax['status'] = 0; //参数错误
			break;
	}
} else {
	$ajax['status'] = 0; //尚未登录
	$ajax['text'] = "您尚未登录，请先登录！";
}
echo json_encode($ajax); //输出json结构的数据

/* 
* This file was created by Liu Xianzhong
*  This file has ended
*/

