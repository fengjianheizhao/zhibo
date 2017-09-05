<?php
defined('IN_SYSTEM') or exit('Access Denied');
set_time_limit(0);
ignore_user_abort();
$ajax = array();
if ($this->_ADMIN) {
	switch ($this->_A) {
		case 'add':
			$type = $get['type'];
			$mod = $get['mod'];
			$pid = intval($get['pid']) ? intval($get['pid']) : "0";
			if (!$mod || !$type || !$MODEL[$MODULE[$mod]['model']]['category'][$type]) {
				$ajax['text'] = "参数错误！";
				$ajax['status'] = 0;
			} else {
				$category = $post['category'];
				$pid = intval($category['pid']) ? intval($category['pid']) : 0;
				if ($pid > 0) {
					$parent = $CAT->getcat($pid);
					if (!$parent) {
						$ajax['text'] = "父级分类不正确！";
						$ajax['status'] = 0;
						echo json_encode($ajax);
						exit();
					}
				}
				if ($category['name']) {
					$catename = explode("\n", $category['name']);
					$data = array(
						"pid" => intval($category['pid']) ? intval($category['pid']) : 0,
						"sort" => intval($category['sort']) ? intval($category['sort']) : 0,
						"level" => intval($category['level']) ? intval($category['level']) : 0,
						"color" => $category['color'] ? $category['color'] : "",
						"logo" => $category['logo'] ? $category['logo'] : "",
						"mod" => $mod,
						"type" => $type,
					);
					foreach ($catename as $value) {
						if ($value) {
							$data['name'] = trim($value);
							$data['alias'] = trim($value);
							$CAT->cateadd($data);
						}
					}
					$CAT->cateinit($mod, $type);
					$ajax['status'] = 2;
					$ajax['jump'] = "?m=category&c=list&mod={$mod}&type={$type}&pid={$pid}";
				} else {
					$ajax['text'] = "分类名称不能为空！";
					$ajax['status'] = 0;
				}
			}
			break;
		case 'edit':
			$category = $post['category'];
			$pid = intval($category['pid']) ? intval($category['pid']) : 0;
			if ($pid > 0) {
				$parent = $CAT->getcat($pid);
				if (!$parent) {
					$ajax['text'] = "父级分类不正确！";
					$ajax['status'] = 0;
					echo json_encode($ajax);
					exit();
				}
			}
			$cid = intval($category['cid']);
			$detail = $CAT->getcat($cid);
			if ($category['name'] && $detail) {
				$data = array(
					"pid" => intval($category['pid']) ? intval($category['pid']) : 0,
					"sort" => intval($category['sort']) ? intval($category['sort']) : 0,
					"level" => intval($category['level']) ? intval($category['level']) : 0,
					"name" => trim($category['name']),
					"alias" => trim($category['alias']),
					"color" => $category['color'],
					"logo" => $category['logo'],
				);
				$CAT->cateedit($cid, $data);
				$CAT->cateinit($detail['mod'], $detail['type']);
				$ajax['status'] = 1;
				$ajax['jump'] = "?m=category&c=list&mod={$detail['mod']}&type={$detail['type']}&pid={$pid}";
			} else {
				$ajax['text'] = "参数错误，修改失败！";
				$ajax['status'] = 0;
			}
			break;
		case 'listedit':
			$itemids = $post['itemid'];
			$category = $post['category'];
			if ($itemids && is_array($itemids) && $category && is_array($category)) {
				$CAT->cateListEdit($itemids, $category);
				$ajax['status'] = 4;
			} else {
				$ajax['text'] = "请选择要修改的内容！";
				$ajax['status'] = 0;
			}
			break;
		case 'remove':
			$itemid = intval($get['itemid']);
			$itemids = $post['itemid'];
			if ($itemid) {
				$CAT->cateremove($itemid);
				$ajax['itemid'] = $itemid;
				$ajax['status'] = 1;
			} else if ($itemids && is_array($itemids)) {
				$CAT->cateremove($itemids);
				$ajax['status'] = 1;
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
ob_clean();
echo json_encode($ajax); //输出json结构的数据

/* 
* This file was created by Liu Xianzhong
*  This file has ended
*/

