<?php

defined('IN_SYSTEM') or exit('Access Denied');

set_time_limit(0);
ignore_user_abort();
$ajax = array();
if ($this->_ADMIN) {

	$allow_formtype = array();
	foreach ($this->fieldstype as $k => $v) {
		$allow_formtype[] = $v['index'];
	}

	$allow_options = array("select", "radio", "checkbox");
	switch ($this->_A) {
		case 'add':
			$ajax = array();
			$detail = $post['detail'];
			$mod = $detail['mod'];

			if ($detail['options']) {
				$options_str = $detail['options'];
				$options_list = explode("\n", $options_str);
				$options = array();
				foreach ($options_list as $k => $v) {
					$value = $key = NULL;
					list($value, $key) = explode("|", $v);
					if ($key && $value) {
						$options[] = array(
							"key" => $key,
							"value" => $value,
						);
					}
				}
				$options_code = json_encode($options);
			}
			if (!$MODULE[$mod]['mid']) {
				$ajax['text'] = "参数错误！";
				$ajax['status'] = 0;
			} elseif (!preg_match("/^[a-z]+[a-z0-9_]*$/", $detail['name']) || !$detail['name']) {
				$ajax['text'] = "字段名必需是小写字母、数字、“_”组成，并以字母开头！";
				$ajax['status'] = 0;
			} elseif (!$detail['title']) {
				$ajax['text'] = "字段描述不能为空！";
				$ajax['status'] = 0;
			} elseif (!in_array($detail['formtype'], $allow_formtype)) {
				$ajax['text'] = "错误的表单类型！";
				$ajax['status'] = 0;
			} elseif (in_array($detail['formtype'], $allow_options) && !$options) {
				$ajax['text'] = "请填写选项列表！";
				$ajax['status'] = 0;
			} else {
				$t = @str_replace("{module}", $mod['module'], $v);

				$table = $MODULE[$mod]['module'] . "_" . $MODULE[$mod]['mid'];
				$data = array(
					"mid" => $MODULE[$mod]['mid'],
					"mod" => $mod,
					'name' => $detail['name'],
					'title' => $detail['title'],
					'prompt' => $detail['prompt'],
					'type' => $this->fieldstype[$detail['formtype']]['type'],
					'formtype' => $detail['formtype'],
					'options' => saddslashes($options_code),
					'default' => $detail['default'],
					'sort' => $detail['sort'],
					'bdisplay' => $detail['bdisplay'] == "1" ? 1 : 0,
					'fdisplay' => $detail['fdisplay'] == "1" ? 1 : 0,
					'adminid' => $this->_ADMIN['adminid'],
				);

				if ($this->fields->checkField($table, $detail['name'])) {
					$ajax['text'] = "该字段已存在！";
					$ajax['status'] = 0;
				} else {
					$status = $this->fields->addField($table, $data);
					if ($status) {
						$ajax['text'] = "添加字段成功！";
						$ajax['status'] = 1;
					} else {
						$ajax['text'] = "添加字段失败！";
						$ajax['status'] = 0;
					}
				}
			}
			break;
		case 'edit':
			$ajax = array();
			$detail = $post['detail'];
			$itemid = intval($detail['itemid']);
			if ($detail['options']) {
				$options_str = $detail['options'];
				$options_list = explode("\n", $options_str);
				$options = array();
				foreach ($options_list as $k => $v) {
					$value = $key = NULL;
					list($value, $key) = explode("|", $v);
					if ($key && $value) {
						$options[] = array(
							"key" => $key,
							"value" => $value,
						);
					}
				}
				$options_code = json_encode($options);
			}
			if (!$detail['title']) {
				$ajax['text'] = "字段描述不能为空！";
				$ajax['status'] = 0;
			} elseif (!in_array($detail['formtype'], $allow_formtype)) {
				$ajax['text'] = "错误的表单类型！";
				$ajax['status'] = 0;
			} elseif (in_array($detail['formtype'], $allow_options) && !$options) {
				$ajax['text'] = "请填写选项列表！";
				$ajax['status'] = 0;
			} else {
				$table = $MODULE[$mod]['module'] . "_" . $MODULE[$mod]['mid'];
				$data = array(
					'title' => $detail['title'],
					'prompt' => $detail['prompt'],
					'type' => $this->fieldstype[$detail['formtype']]['type'],
					'formtype' => $detail['formtype'],
					'options' => saddslashes($options_code),
					'default' => $detail['default'],
					'sort' => $detail['sort'],
					'bdisplay' => $detail['bdisplay'] == "1" ? 1 : 0,
					'fdisplay' => $detail['fdisplay'] == "1" ? 1 : 0,
				);
				$status = $this->fields->editField($itemid, $data);
				$ajax['text'] = "修改字段成功！";
				$ajax['status'] = 1;
			}
			break;
		case 'listedit':
			$itemids = $post['itemid'];
			$listData = $post['data'];
			if ($itemids && is_array($itemids) && $listData && is_array($listData)) {
				$this->fields->listEditField($itemids, $listData);
				$ajax['status'] = 4;
			} else {
				$ajax['text'] = "请选择要修改的内容！";
				$ajax['status'] = 0;
			}
			break;
		case 'remove':
			$itemid = intval($get['itemid']);
			if ($itemid) {
				$this->fields->delField($itemid);
				$ajax['itemid'] = $itemid;
				$ajax['text'] = "该字段已成功删除！";

				$ajax['status'] = 1;
			} else {
				$ajax['text'] = "请选择要删除的字段！";
				$ajax['status'] = 0;
			}
			break;
		case 'fieldcheck':
			$fieldname = $get['fieldname'];
			$mod = $get['mod'];
			$table = $MODULE[$mod]['module'] . "_" . $MODULE[$mod]['mid'];
			if (!preg_match("/^[a-z]+[a-z0-9_]*$/", $fieldname) || !$fieldname) {
				$ajax['text'] = "字段名必需是小写字母、数字、“_”组成，并以字母开头！";
				$ajax['status'] = 0;
			} elseif (!$MODULE[$mod]['mid']) {
				$ajax['text'] = "参数错误！";
				$ajax['status'] = 0;
			} else if ($this->fields->checkField($table, $fieldname)) {
				$ajax['text'] = "该字段已存在！";
				$ajax['status'] = 0;
			} else {
				$ajax['text'] = "该字段名可以使用！";
				$ajax['status'] = 1;
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

