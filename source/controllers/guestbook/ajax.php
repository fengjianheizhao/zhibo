<?php

defined('IN_SYSTEM') or exit('Access Denied');
set_time_limit(0);
ignore_user_abort();
$ajax = array();

switch ($this->s) {
	case 'submit':
		$detail = $post['data'];
		if ($detail) {
			$mod = $detail['mod'];
			$mod = $MODULE[$mod]['mid'] ? $mod : $m;
			$data = array(
				"mid" => $MODULE[$mod]['mid'],
				"mod" => "guestbook", //预约信息所属模块
				"ip" => getip(), //留言内容
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
			$ajax['text'] = "提交成功";
		} else {
			$ajax['status'] = 0;
			$ajax['text'] = "内容不能为空！";
		}
		break;
	default :
		$ajax['text'] = "参数错误！"; //参数错误
		$ajax['status'] = 0; //参数错误
		break;
}
echo json_encode($ajax); //输出json结构的数据

/* 
* This file was created by Liu Xianzhong
*  This file has ended
*/

