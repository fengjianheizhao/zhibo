<?php



defined('IN_SYSTEM') or exit('Access Denied');

set_time_limit(0);

ignore_user_abort();

$ajax = array();



switch ($this->s) {

	case 'order':

		$page = intval($get['page']);

		$page = $page > 0 ? $page : 1;

		$itemid = intval($get['itemid']);

		$itemid = $itemid > 0 ? $itemid : 1;

		$this->loadBuiltinModel("paged");

		$this->paged->setRows("20");

		$orders = $this->paged->getList($page, "FROM `{$this->DB->tabPre}order_12` WHERE `itemid` = '{$itemid}' AND `show` = '2' and `addtime`<=".time()."   ORDER BY id DESC");

		$data = array(

			"orders" => $orders,

			"page" => $page,

		);

		$ajax['html'] = $this->comm->get_template("{$this->m}/ajax/{$this->s}", $data);

		$ajax['status'] = 1;

		$ajax['text'] = "";

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



