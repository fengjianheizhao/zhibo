<?php

defined('IN_SYSTEM') or exit('Access Denied');
$this->loadBuiltinmodel("setting"); //
if ($this->_A == "submit") {
	$detail = $post['detail'];
	if ($detail) {
		$data = array(
			"sitename" => $detail['sitename'],
			//"template" => $detail['template'],
			"rewrite" => intval($detail['rewrite']),
			"seotitle" => $detail['seotitle'],
			"seokeyword" => $detail['seokeyword'],
			"seodescription" => $detail['seodescription'],
			"sitelogo" => $detail['sitelogo'],
			"logowidth" => $detail['logowidth'],
			"logoheight" => $detail['logoheight'],
			"beian" => $detail['beian'],
			"tel" => $detail['tel'],
			"fcstatus" => intval($detail['fcstatus']) ? intval($detail['fcstatus']) : 0,
			"floatcontact" => $detail['floatcontact'],
			"copyright" => $detail['copyright'],
			"stats" => $detail['stats'],
			"edittime" => time(),
		);
		$this->setting->editSetting($data);
		$ajax['status'] = 1;
		$ajax['text'] = "修改网站设置成功！";
	} else {
		$ajax['status'] = 0;
		$ajax['text'] = "修改网站设置失败！";
	}
	echo json_encode($ajax); //输出json结构的数据
} else {
	$detail = $this->setting->getSetting();

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