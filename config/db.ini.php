<?php

defined('IN_SYSTEM') or exit('Access Denied');

return array(
	/**/
	"dbms" => "mysql", //数据库类型
	"dbhost" => "localhost", //数据库服务器(一般为本地localhost)
	"dbuser" => "root", //数据库用户名
	//"dbpwd" => "root", //数据库密码
	"dbpwd" => "elibrary", //数据库密码
	"dbname" => "lxzcms_com", //数据库名

	/**/
	"dbpattern" => false, //数据库持久连接 false=关闭, true=打开
	"dbcharset" => "utf8", //数据库字符集

	/**/
	"tabPre" => "lxzcms_", //表名前缀

	/**/
	"cache" => 0, //数据查询开启缓存,大于0 则为缓存时间，等于0则表示关闭缓存
	"debug" => true, //错误信息显示
	"errlog" => true, //数据库错误日志记录，错误日志存放在应用根目录：/log/db/
	"auxiliary" => false, //数据库优化辅助，记录执行的sql语句和执行时间，建议优化数据查询的时候开启
	//调试完毕马上关闭此功能，并删除调试产生的记录文件，避免产生大量的记录文件
	//调试文件存放应用根目录：/log/db/
);


/* 
 * This file was created by Liu Xianzhong
 *  This file has ended
 */