<?php

return array(
	//系统模型
	"index" => array(
		"index" => "index",
		"name" => "网站首页",
		"reuse" => "0",
		"author" => "Liu Xianzhong",
		"admin_default_ac" => "index",
		"files" => array(
			"index",
		),
	),
	"static" => array(
		"index" => "static",
		"name" => "静态功能",
		"reuse" => "0",
		"author" => "Liu Xianzhong",
		"admin_left" => array(
			"setting" => "功能设置",
		),
		"admin_default_ac" => "index",
		"files" => array(
			"upload", //文件上传
			"captcha", //验证码
			"qrcode", //二维码
			"ajax", //全局的ajax请求处理
		),
	),
	"setting" => array(
		"index" => "setting",
		"name" => "系统设置",
		"reuse" => "0",
		"author" => "Liu Xianzhong",
		"admin_default_ac" => "index",
		"admin_left" => array(
			"setting" => "系统设置",
			"area" => "地区设置",
			"admin" => "管理员设置",
		),
	),
	"fields" => array(
		"index" => "fields",
		"name" => "字段设置",
		"reuse" => "0",
		"author" => "Liu Xianzhong",
		"admin_default_ac" => "list",
	),
	"module" => array(
		"index" => "module",
		"name" => "模块",
		"reuse" => "0",
		"author" => "Liu Xianzhong",
		"admin_default_ac" => "list",
		"admin_left" => array(
			"add" => "添加%s",
			"list" => "%s列表",
		),
	),
	"category" => array(
		"index" => "category",
		"name" => "分类管理",
		"reuse" => "0",
		"author" => "Liu Xianzhong",
		"admin_default_ac" => "list",
	),
	//广告模型
	"ads" => array(
		"index" => "ads",
		"name" => "广告系统",
		"reuse" => "0",
		"author" => "Liu Xianzhong",
		"admin_default_ac" => "list",
		"admin_left" => array(
			"add" => "添加%s位",
			"list" => "%s列表",
		),
	),
	//单页模型
	"pages" => array(
		"index" => "pages",
		"name" => "单页模型",
		"reuse" => "0",
		"author" => "Liu Xianzhong",
		"admin_default_ac" => "list",
		"admin_left" => array(),
		"table" => array(
			"{module}",
		),
		"fields" => "自定义字段",
		"category" => array(
			"cate" => "%s分类",
		),
		"files" => array(
			"show",
		),
	),
	//文章模型
	"article" => array(
		"index" => "article",
		"name" => "文章模型",
		"reuse" => "1",
		"author" => "Liu Xianzhong",
		"admin_default_ac" => "list",
		"admin_left" => array(
			"add" => "添加%s",
			"list" => "%s列表",
			"recycle" => "%s回收站",
		),
		"table" => array(
			"{module}",
		),
		"fields" => "自定义字段",
		"category" => array(
			"cate" => "%s分类",
		),
		"files" => array(
			"index",
			"list",
			"show",
		),
	),
	//多功能模型
	"basic" => array(
		"index" => "basic",
		"name" => "基础模型",
		"reuse" => "1",
		"author" => "Liu Xianzhong",
		"admin_default_ac" => "list",
		"admin_left" => array(
			"add" => "添加%s",
			"list" => "%s列表",
			"recycle" => "%s回收站",
		),
		"table" => array(
			"{module}",
		),
		"fields" => "自定义字段",
		"category" => array(
			"cate" => "%s分类",
		),
		"files" => array(
			"index",
			"list",
			"show",
		),
	),
	//会员模型
	"member" => array(
		"index" => "member",
		"name" => "会员系统",
		"reuse" => "0",
		"author" => "Liu Xianzhong",
		"default_ac" => "index",
		"admin_default_ac" => "index",
		"admin_left" => array(
			"add" => "添加%s",
			"list" => "%s列表",
			"group" => "会员组管理",
		),
		"files" => array(
			"ajax",
			"index",
			"order",
			"spread",
			"client",
		),
	),
	//留言模型
	"guestbook" => array(
		"index" => "guestbook",
		"name" => "网站留言",
		"reuse" => "1",
		"author" => "Liu Xianzhong",
		"admin_default_ac" => "list",
		"admin_left" => array(
			"list" => "留言列表",
		),
		"fields" => "自定义字段",
		"table" => array(
			"{module}",
		),
		"files" => array(
			"ajax",
		),
	),
);
/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */
