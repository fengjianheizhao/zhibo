<?php

defined('IN_SYSTEM') or exit('Access Denied');
set_time_limit(0);
ignore_user_abort();
$ajax = array();
if ($this->_ADMIN) {
	switch ($this->_A) {
		case 'area':
			$this->loadBuiltinModel("area"); //
			$pid = intval($get['pid']) ? intval($get['pid']) : 0;
			if ($pid) {
				$area = $this->area->getArea($pid);
				if ($area) {
					$data['list'] = $this->area->listArea($pid);
					$data['pid'] = $pid;
					$data['area'] = $area;
					$ajax['text'] = $this->comm->get_template($MOD['model'] . "/" . $ac . "/" . $this->s, $data);
					$ajax['status'] = 1;
					break;
				}
			}
			$ajax['text'] = "";
			$ajax['status'] = 1;
			break;
		case 'areaadd':
			$this->loadBuiltinModel("area"); //
			$detail = $post['detail'];
			$area_level = 0;
			$area = $detail['area'];
			if ($area && is_array($area)) {
				$detail['area'] = array_reverse($area);
				$area_level = count($area);
			}
			if ($area_level > 0) {
				if ($detail['area'][0]) {
					$area_level = $area_level;
					$pid = intval($detail['area'][0]);
				} else {
					$area_level = $area_level - 1;
					$pid = intval($detail['area'][1]);
				}
			} else {
				$pid = 0;
			}
			if ($pid == 0) {
				$area_level = 1;
			}
			if ($pid > 0) {
				$parent = $this->area->getArea($pid);
				if (!$parent) {
					$ajax['text'] = "父级地区不正确！";
					$ajax['status'] = 0;
					echo json_encode($ajax);
					exit();
				}
			}
			if ($detail['name']) {
				$areasname = explode("\n", $detail['name']);
				$data = array(
					"areaid" => "",
					"pid" => $pid,
					"status" => "1",
					"type" => intval($detail['type']),
					"level" => $area_level,
					"child" => "0",
					"childstatus" => intval($detail['childstatus']) == "1" ? 1 : 0,
				);
				foreach ($areasname as $value) {
					if ($value) {
						$data['area'] = trim($value);
						$areaid = $this->area->addArea($data);
						$this->area->editIdArea($areaid, array("areaid" => $areaid));
					}
				}
				$ajax['status'] = 2;
				$ajax['jump'] = "?m=setting&c=area&pid={$pid}";
			} else {
				$ajax['text'] = "地区名称不能为空！";
				$ajax['status'] = 0;
			}
			break;
		case 'areaedit':
			$this->loadBuiltinModel("area"); //
			$detail = $post['detail'];
			$areaid = intval($detail['areaid']);
			$area_level = 0;
			$area = $detail['area'];
			if ($area && is_array($area)) {
				$detail['area'] = array_reverse($area);
				$area_level = count($area);
			}
			if ($area_level > 0) {
				if ($detail['area'][0]) {
					$area_level = $area_level;
					$pid = intval($detail['area'][0]);
				} else {
					$area_level = $area_level - 1;
					$pid = intval($detail['area'][1]);
				}
			} else {
				$pid = 0;
			}
			if ($pid == 0) {
				$area_level = 1;
			}
			if ($pid > 0) {
				$parent = $this->area->getArea($pid);
				if (!$parent) {
					$ajax['text'] = "父级地区不正确！";
					$ajax['status'] = 0;
					echo json_encode($ajax);
					exit();
				}
			}
			if ($detail['name']) {
				$data = array(
					"pid" => $pid,
					"area" => trim($detail['name']),
					"type" => intval($detail['type']),
					"level" => $area_level,
					"childstatus" => intval($detail['childstatus']) == "1" ? 1 : 0,
				);
				$this->area->editArea($areaid, $data);
				$ajax['status'] = 2;
				$ajax['jump'] = "?m=setting&c=area&pid={$pid}";
			} else {
				$ajax['text'] = "地区名称不能为空！";
				$ajax['status'] = 0;
			}
			break;
		case 'areastatus':
			$this->loadBuiltinModel("area"); //
			$itemid = intval($get['itemid']);
			$item = $this->area->getArea($itemid);
			if ($item) {
				$toggle = abs($item['status'] - 1);
				$data = array(
					"status" => $toggle,
				);
				$this->area->editArea($itemid, $data);
				$ajax['toggle'] = $toggle;
				$ajax['status'] = 1;
				$ajax['itemid'] = $itemid;
			} else {
				$ajax['status'] = 0;
				$ajax['itemid'] = $itemid;
				$ajax['text'] = "参数错误！";
			}
			break;
		case 'childstatus':
			$this->loadBuiltinModel("area"); //
			$itemid = intval($get['itemid']);
			$item = $this->area->getArea($itemid);
			if ($item) {
				$toggle = abs($item['childstatus'] - 1);
				$data = array(
					"childstatus" => $toggle,
				);
				$this->area->editArea($itemid, $data);
				$ajax['toggle'] = $toggle;
				$ajax['status'] = 1;
				$ajax['itemid'] = $itemid;
			} else {
				$ajax['status'] = 0;
				$ajax['itemid'] = $itemid;
				$ajax['text'] = "参数错误！";
			}
			break;
		case 'clearcache':
			//$this->delCacheFiles();
			$ajax['text'] = "缓存已清除成功！"; //参数错误
			$ajax['status'] = 1; //参数错误
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

