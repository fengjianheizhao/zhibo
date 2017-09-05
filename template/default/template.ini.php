<?php

return array(
	"name" => "默认模板",
	"intro" => "系统默认模板",
	"author" => "凌汛网络",
	"version" => "1.0.0",
	"rules" => array(
		//模板规则，部分特殊模板不包含在内，此配置用于标准可复用模块后台设置可选模板
		//如果未配置此选项，系统将采用默认模板机制，即模板目录与模块名称同名，模板名称和控制器同名
		"article" => array(
			"news" => array(
				"title" => "新闻模板",
				"index" => array(
					"index" => "默认首页",
				),
				"list" => array(
					"list" => "默认列表页",
					"thumb" => "缩略图列表页",
				),
				"show" => array(
					"show" => "默认详情页",
					"show2" => "默认详情页2",
				),
			),
			"base" => array(
				"title" => "图片模板",
				"index" => array(
					"index" => "默认首页",
				),
				"list" => array(
					"list" => "默认列表页",
				),
				"show" => array(
					"show" => "默认详情页",
				),
			),
		),
		"pages" => array(
			"pages" => array(
				"title" => "默认单页模板",
				"show" => array(
					"page-default" => "默认首页",
					"page-guestbook" => "留言模板",
				),
			),
		),
	),
);

/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
