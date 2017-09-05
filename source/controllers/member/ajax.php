<?php



defined('IN_SYSTEM') or exit('Access Denied');

set_time_limit(0);

ignore_user_abort();

$ajax = array();



switch ($this->s) {

	case 'login'://用户登录验证

		$login = $post['login'];

		if (strlen($login['password']) < 6 || strlen($login['password']) > 20) {

			$ajax['status'] = 0;

			$ajax['text'] = "密码长度不正确！";

			break;

		}

		$sql="SELECT * FROM `" . $this->table . "`  WHERE `account` = '{$login['account']}' and `password`='" . encrypt($login['password']) . "'";

		$user = $this->DB->getFirst($sql);

		if ($user) {

			$data = array(

				"lastlogintime" => $user['logintime'],

				"logins" => ($user['logins'] + 1),

				"loginip" => getip(),

				"logintime" => time(),

			);

			$this->editMember($user['uid'], $data);

			$this->comm->setSession("uid", $user['uid']);



			if ($login['jump']) {

				$jump = base64_decode($login['jump']);

			} else {

				$jump = $URL->setUrl("?m={$m}&ac=list");

			}

			$ajax['status'] = 1;

			$ajax['text'] = "";

			$ajax['jump'] = $jump;

			break;

		} else {

			$ajax['status'] = 0;

			$ajax['text'] = "用户名密码不匹配！";

			break;

		}

		break;

	case 'list':



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



