<?php

defined('IN_SYSTEM') or exit('Access Denied');
set_time_limit(0);
ignore_user_abort();
$ajax = array();
if ($this->_ADMIN) {
	switch ($this->_A) {
		case 'add':
			$detail = $post['detail'];
			$adsdata = $post['ads'];
			$allows = array();
			foreach ($this->adstype as $k => $v) {
				$allows[] = $k;
			}
			if ($detail['title'] && in_array($detail['type'], $allows)) {
				if ($detail['type'] == 3) {
					$data = array(
						"title" => $detail['title'],
						"type" => $detail['type'],
						"content" => $detail['content'],
						"status" => 1,
					);
					$adszone = $this->ads->adszoneadd($data);
				} else {
					$data = array(
						"title" => $detail['title'],
						"type" => $detail['type'],
						"width" => $detail['width'],
						"height" => $detail['height'],
						"status" => 1,
					);
					$adszone = $this->ads->adszoneadd($data);
					$adscount = array();
					$adscount['title'] = count($adsdata['title']);
					$adscount['thumb'] = count($adsdata['thumb']);
					$adscount['linkurl'] = count($adsdata['linkurl']);
					$adscount['sort'] = count($adsdata['sort']);
					$adscount['status'] = count($adsdata['status']);
					for ($i = 0; $i < $adscount['title']; $i++) {
						$adsinst = array(
							"aid" => $adszone,
							"title" => $adsdata['title'][$i],
							"thumb" => $adsdata['thumb'][$i],
							"linkurl" => $adsdata['linkurl'][$i],
							"sort" => intval($adsdata['sort'][$i]),
							"status" => $adsdata['status'][$i] ? $adsdata['status'][$i] : "0",
						);
						$adsid = $this->ads->adsadd($adsinst);
					}
				}

				$ajax['status'] = 1;
			} else {
				if (!$detail['title']) {
					$ajax['text'] = "广告标题不能为空！";
				} else {
					$ajax['text'] = "广告类型错误！";
				}
				$ajax['status'] = 0;
			}
			break;
		case 'edit':
			$itemid = intval($get['itemid']);
			$detail = $post['detail'];
			$adsdata = $post['ads'];
			$allows = array();
			foreach ($this->adstype as $k => $v) {
				$allows[] = $k;
			}
			if ($detail['id'] && $detail['title'] && in_array($detail['type'], $allows)) {
				if ($detail['type'] == 3) {
					$data = array(
						"title" => $detail['title'],
						"type" => $detail['type'],
						"content" => $detail['content'],
						"status" => 1,
					);
					$adszone = $this->ads->adszoneedit($detail['id'], $data);
				} else {
					$data = array(
						"title" => $detail['title'],
						"type" => $detail['type'],
						"width" => $detail['width'],
						"height" => $detail['height'],
						"status" => 1,
					);
					$adszone = $this->ads->adszoneedit($detail['id'], $data);
					$adscount = array();
					$adscount['title'] = count($adsdata['title']);
					$adscount['thumb'] = count($adsdata['thumb']);
					$adscount['linkurl'] = count($adsdata['linkurl']);
					$adscount['sort'] = count($adsdata['sort']);
					$adscount['status'] = count($adsdata['status']);
					for ($i = 0; $i < $adscount['title']; $i++) {
						if (intval($adsdata['itemid'][$i]) > 0) {
							$adsinst = array(
								"title" => $adsdata['title'][$i],
								"thumb" => $adsdata['thumb'][$i],
								"linkurl" => $adsdata['linkurl'][$i],
								"sort" => intval($adsdata['sort'][$i]),
								"status" => $adsdata['status'][$i] ? $adsdata['status'][$i] : "0",
							);
							$adsid = $this->ads->adsedit($adsdata['itemid'][$i], $adsinst);
						} else {
							$adsinst = array(
								"aid" => $detail['id'],
								"title" => $adsdata['title'][$i],
								"thumb" => $adsdata['thumb'][$i],
								"linkurl" => $adsdata['linkurl'][$i],
								"sort" => intval($adsdata['sort'][$i]),
								"status" => $adsdata['status'][$i] ? $adsdata['status'][$i] : "0",
							);
							$adsid = $this->ads->adsadd($adsinst);
						}
					}
				}
				$ajax['jump'] = "?m={$m}&c=list";
				$ajax['status'] = 1;
			} else {
				if (!$detail['title']) {
					$ajax['text'] = "广告标题不能为空！";
				} elseif (!in_array($detail['type'])) {
					$ajax['text'] = "广告类型错误！";
				} else {
					$ajax['text'] = "参数错误！";
				}
				$ajax['status'] = 0;
			}
			break;
		case 'remove':

			$itemid = intval($get['itemid']);
			$itemids = $post['itemid'];
			if ($itemid) {
				$this->ads->adszoneremove($itemid);
				$ajax['itemid'] = $itemid;
				$ajax['status'] = 1;
			} else if ($itemids && is_array($itemids)) {
				$this->ads->adszoneremove($itemids);
				$ajax['status'] = 1;
			} else {
				$ajax['text'] = "请选择要删除的内容！";
				$ajax['status'] = 0;
			}
			$ajax['text'] = "广告位删除成功！"; //
			$ajax['status'] = 1; //
			$ajax['itemid'] = $itemid; //
			break;
		case 'removeads':
			$itemid = intval($get['itemid']);

			$status = $this->ads->adsremove($itemid);
			if ($status) {
				$ajax['status'] = 1; //
				$ajax['text'] = "广告图片删除成功！"; //
				$ajax['itemid'] = $itemid; //
			} else {
				$ajax['status'] = 0; //
				$ajax['text'] = "广告图片删除失败！"; //
				$ajax['itemid'] = $itemid; //
			}

			break;
		default :
			$ajax['status'] = 0; //参数错误
			$ajax['text'] = "参数错误！";
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

