<?php

return array(
	/* 浏览设备 */
	"device" => array(
		'web' => array(
			"name" => "电脑版网页",
			"index" => "web",
			"enable" => true, //是否启用
			"siteurl" => "http://{$_SERVER['HTTP_HOST']}/web", //电脑版网页绑定域名
			"path" => "web",
		),
		'mobile' => array(
			"name" => "手机版网页",
			"index" => "mobile",
			"enable" => false, //是否启用
			"siteurl" => "http://{$_SERVER['HTTP_HOST']}/mobile", //手机网页绑定域名
			"path" => "mobile",
		),
	), //


	/* ------地址绑定------ */
	"adminUrl" => "http://{$_SERVER['HTTP_HOST']}", //
	"filesUrl" => "http://{$_SERVER['HTTP_HOST']}/files/", //



	/* 语言设置 */
	"language" => array("zh", "en"), //
	"masterid" => "1", //超级管理员ID

	/* ---------------网站风格设置 --------------- */
	//模板文件拓展名
	//建议设置为php，这样防止下载,更加安全   并在模板文件顶部加上：defined('IN_SYSTEM') or exit('Access Denied');
	"templatePrefix" => '.php', //


	/* ---------------SESSION设置 --------------- */
	"sessionAdminPrefix" => 'admin_', //
	"sessionUserPrefix" => 'lxzcms_', //



	/* ---------------COOKIE设置 --------------- */
	"cookiePrefix" => "lxzcms_",
	"cookieTimeOut" => time() + (7 * 24 * 3600), //


	/* ---------------缓存设置--------------- */
	"cache" => false,
	"cacheTimeOut" => time() + (1 * 1 * 3600), //



	/* ---------------以下配置项为危险配置，不熟悉系统结构，请勿修改 --------------- */

	/* ---------------自动加载的函数库 --------------- */
	"autoLoadFunction" => "function", //自动加载function目录下的函数库

	/* ---------------自动加载的内置模型---------------拓展库的配置文件，在source/conf目录中 */
	"autoLoadBuiltinModel" => "category,ads,display,template", //自动加载builtinmodel目录下的内置模型

	/* ---------------自动加载的模型配置参数 --------------- */
	"autoLoadGlobal" => "", //加载conf目录下的配置数组
);



/*
  访问方案A
  电脑端：www.lxzcms.com
  手机端：m.lxzcms.com
  上传文件：file.lxzcms.com
  后台管理:admin.lxzcms.com
 *
  访问方案A+

  电脑端：www.lxzcms.com/web/
  手机端：www.lxzcms.com/mobile/
  上传文件：www.lxzcms.com/uploads/
  后台管理:www.lxzcms.com/admin.php

  访问方案B
  电脑端：www.lxzcms.com/index.php?c=web&lg=zh&m=index&ac=index
  手机端：www.lxzcms.com/index.php?c=mobile&lg=zh&m=index&ac=index
  上传文件：www.lxzcms.com/file/uploads/image/201701/1.jpg
  后台管理:www.lxzcms.com/admin.php

  访问方案C
  电脑端：www.lxzcms.com/web/index.php?lg=zh&ac=index
  手机端：www.lxzcms.com/mobile/index.php?lg=zh&ac=index
  上传文件：www.lxzcms.com/file/uploads/image/201701/1.jpg
  后台管理:www.lxzcms.com/admin.php

 */



/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
