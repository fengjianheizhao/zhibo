<?php

defined('IN_SYSTEM') or exit('Access Denied');
$ajax = array();
if ($this->_ADMIN) {
	switch ($this->_A) {
		case "add":
			$detail = $post['detail'];
			$ajax = array();
			if ($detail && $detail['module']) {
				//$sql = "SELECT * FROM `{$this->DB->tabPre}module`  WHERE `module`='{$detail['module']}' ";
				//$result = $this->DB->getFirst($sql);
				$result = $this->getModule($detail['module'], false);
				if (!$result) {
					$status = $this->addModule($detail);
					if ($status) {
						$ajax['text'] = "添加成功！";
						$ajax['status'] = 1;
					} else {
						if (!preg_match("/^[0-9a-zA-Z]*$/", $data['module'])) {
							$ajax['text'] = "模块标记必须是英文和数字的组合！";
						} else {
							$ajax['text'] = "参数不完整，添加失败!";
						}
						$ajax['status'] = 0;
					}
				} else {
					$ajax['text'] = "模块标记重复，请重新填写！";
					$ajax['status'] = 0;
				}
			} else {
				$ajax['text'] = "参数不完整，添加失败！";
				$ajax['status'] = 0;
			}
			break;
		case "edit":
			$detail = $post['detail'];
			$itemid = intval($post['itemid']);
			$ajax = array();
			if ($itemid > 0 && $detail) {
				$status = $this->editModule($itemid, $detail);
				if ($status) {
					$ajax['text'] = "修改成功！";
					$ajax['status'] = 1;
				} else {
					$ajax['text'] = "参数不完整，修改失败！";
					$ajax['status'] = 0;
				}
			} else {
				$ajax['text'] = "参数不完整，修改失败！";
				$ajax['status'] = 0;
			}
			break;
		case "remove":
			$mid = intval($get['mid']);
			if ($mid) {
				$this->removeModule($mid);
				$ajax['msg'] = "删除成功！";
				$ajax['itemid'] = $mid;
				$ajax['status'] = 1;
			} else {
				$ajax['msg'] = "请选择需要删除的对象！";
				$ajax['status'] = 0;
			}
			break;
		default :
			break;
	}
} else {
	$ajax['status'] = 0; //尚未登录
	$ajax['text'] = "您尚未登录，请先登录！";
}

//ob_clean();
echo json_encode($ajax); //输出json结构的数据

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
