<?php

defined('IN_SYSTEM') or exit('Access Denied');
set_time_limit(0);
ignore_user_abort();
$ajax = array();
if ($this->_ADMIN) {
	switch ($this->_A) {
		case 'add':
			$detail = $post['detail'];
			if ($detail['title']&&$detail['cid']) {
				$data = array(
					"cid" => $detail['cid'],
					"title" => $detail['title'],
					"islink" => intval($detail['islink']) ? intval($detail['islink']) : 0,
					"linkurl" => $detail['linkurl'],
					"seotitle" => $detail['seotitle'],
					"seokeyword" => $detail['seokeyword'],
					"hits" => $detail['hits'],
					"adminid" => $this->_ADMIN['adminid'],
				);
				$fieldsList = $this->fields->listField($MOD['mid']);
				foreach ($fieldsList as $k => $v) {
					if ($v['formtype'] == "checkbox") {
						if (is_array($detail[$v['name']])) {
							$data[$v['name']] = json_encode($detail[$v['name']]);
						}
					} elseif ($v['formtype'] == "date" || $v['formtype'] == "time") {
						$data[$v['name']] = strtotime($detail[$v['name']]);
					} else {
						$data[$v['name']] = $detail[$v['name']];
					}
				}
				$ajax['id'] = $this->addItem($data);
				$ajax['status'] = 1;
				//$this->delCacheFiles("{$m}/list");
				//$this->delCacheFiles("{$m}/index");
			} else {
				if (!$detail['title']) {
					$ajax['status'] = 0;
					$ajax['text'] = "标题不能为空！";
				}elseif(!$detail['cid']){
					$ajax['status'] = 0;
					$ajax['text'] = "分类不能为空！";
				} else {
					$ajax['status'] = 0;
					$ajax['text'] = "参数错误！";
				}
			}
			break;
		case 'edit':
			$detail = $post['detail'];
			$itemid = intval($detail['id']);
			if ($detail['title']&&$detail['cid']) {
				$data = array(
					"cid" => $detail['cid'],
					"title" => $detail['title'],
					"islink" => intval($detail['islink']) ? intval($detail['islink']) : 0,
					"linkurl" => $detail['linkurl'],
					"seotitle" => $detail['seotitle'],
					"seokeyword" => $detail['seokeyword'],
					"hits" => $detail['hits'],
				);
				$fieldsList = $this->fields->listField($MOD['mid']);
				foreach ($fieldsList as $k => $v) {
					if ($v['formtype'] == "checkbox") {
						if (is_array($detail[$v['name']])) {
							$data[$v['name']] = json_encode($detail[$v['name']]);
						}
					} elseif ($v['formtype'] == "date" || $v['formtype'] == "time") {
						$data[$v['name']] = strtotime($detail[$v['name']]);
					} else {
						$data[$v['name']] = $detail[$v['name']];
					}
				}
				$ajax['id'] = $this->editItem($itemid, $data);
				$ajax['status'] = 1;
			} else {
				if (!$detail['title']) {
					$ajax['status'] = 0;
					$ajax['text'] = "标题不能为空！";
				}elseif(!$detail['cid']){
					$ajax['status'] = 0;
					$ajax['text'] = "分类不能为空！";
				} else {
					$ajax['status'] = 0;
					$ajax['text'] = "参数错误！";
				}
			}
			break;
		case 'recommend':
			$itemid = intval($get['itemid']);
			$item = $this->getItem($itemid);
			if ($item) {
				$recom = $item['recom'] == 0 ? time() : 0;
				$data = array(
					"recom" => $recom,
				);

				$this->editItem($itemid, $data);
				$ajax['recom'] = $recom;
				$ajax['status'] = 1;
				$ajax['itemid'] = $itemid;
			} else {
				$ajax['status'] = 0;
				$ajax['itemid'] = $itemid;
				$ajax['text'] = "参数错误！";
			}
			break;
		case 'recycle':
			$itemid = intval($get['itemid']);
			$itemids = $post['itemids'];
			$items = $itemid ? $itemid : $itemids;
			if ($items) {
				$this->recycleItem($items);
				$ajax['status'] = 1;
				$ajax['itemid'] = $itemid;
				//$this->delCacheFiles("{$m}/list");
				//$this->delCacheFiles("{$m}/index");
			} else {
				$ajax['text'] = "请选择要删除的内容！";
				$ajax['status'] = 0;
			}
			break;
		case 'revert':
			$itemid = intval($get['itemid']);
			$itemids = $post['itemids'];
			$items = $itemid ? $itemid : $itemids;
			if ($items) {
				$this->revertItem($items);
				$ajax['status'] = 1;
				$ajax['itemid'] = $itemid;
				//$this->delCacheFiles("{$m}/list");
				//$this->delCacheFiles("{$m}/index");
			} else {
				$ajax['text'] = "请选择要恢复的内容！";
				$ajax['status'] = 0;
			}
			break;
		case 'remove':
			$itemid = intval($get['itemid']);
			$itemids = $post['itemids'];
			$items = $itemid ? $itemid : $itemids;
			if ($items) {
				$this->removeItem($items);
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

