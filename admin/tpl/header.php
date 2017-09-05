<?php  defined('IN_SYSTEM') or exit('Access Denied');?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title><?= $_SETTING['sitename']; ?> - 管理后台 - Powered By LXZ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
		<!-- jQuery AND jQueryUI -->
		<script type="text/javascript" src="<?= $SKIN ?>js/libs/jquery/1.6/jquery.min.js"></script>
		<script type="text/javascript" src="<?= $SKIN ?>js/jquery.json-2.4.min.js"></script>
		<script type="text/javascript" src="<?= $SKIN ?>js/jquery.form.js"></script>
		<script type="text/javascript" src="<?= $SKIN ?>js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
		<link rel="stylesheet" href="<?= $SKIN ?>css/min.css" />
		<link rel="stylesheet" href="<?= $SKIN ?>css/css.css" />
		<script type="text/javascript" src="<?= $SKIN ?>js/min.js"></script>
		<!-- kindeditor -->
		<link rel="stylesheet" href="<?= $FILES_URL ?>editor/kindeditor/themes/default/default.css" />
		<script type="text/javascript" charset="utf-8" src="<?= $FILES_URL ?>editor/kindeditor/kindeditor-all-min.js"></script>
		<script type="text/javascript" charset="utf-8" src="<?= $FILES_URL ?>editor/kindeditor/lang/zh-CN.js"></script>
		<script type="text/javascript" src="<?= $SKIN ?>js/application.js"></script>
		<script type="text/javascript">
			var inlet = "";
			var seteurl = "<?= $ADMIN_URL ?>";
			var ad_skin = "<?= $SKIN ?>";
		</script>
	</head>
	<body>
		<!--HEAD-->
		<div id="head">
			<div class="left"><a href="javascript:;" class="button profile"><img src="<?= $SKIN ?>img/icons/top/huser.png" alt="" /></a> 您好, 管理员<a href="?m=setting&c=admin"><?= $ADMIN['username'] ?></a> | <a href="?m=index&c=loginout">安全退出</a> </div>
			<div class="right">
				<a href="<?= $DEVICE_URL ?>" target="_blank">网站首页</a>
			</div>
		</div>