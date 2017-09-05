<?php

defined('IN_SYSTEM') or exit('Access Denied');
set_time_limit(0);
ignore_user_abort();
$ajax = array();
switch ($this->s) {
	case 'site':
	
		$scopeArray=array("prov","city","count");
		$areatype=$get['areatype'];
		$areaid=intval($get['areaid']);
		$page = intval($get['page']) ? intval($get['page']) : "1";
		
		if(in_array($areatype,$scopeArray)){
			
			$where = "`status`='1'";
			if ($areatype) {
				$where.=" and `{$areatype}`='{$areaid}'";
			}
			$this->loadBuiltinModel("paged");
			$this->paged->setRows("10");
			$siteList = $this->paged->getList($page, "FROM `" . $this->table . "` WHERE {$where} ORDER BY `recom` DESC  ,id DESC");
			
			$data=array(
				"areatype"=>$areatype,
				"areaid"=>$areaid,
				"data"=>$siteList,
			);
			
			$ajax['html'] = $this->comm->get_template("{$this->m}/ajax/{$this->s}", $data);
			$ajax['text'] = "";
			$ajax['status'] = 1; //
		
		}else{
			$ajax['text'] = "参数错误！"; //参数错误
			$ajax['status'] = 0; //参数错误
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

