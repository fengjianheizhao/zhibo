<?php defined('IN_SYSTEM') or exit('Access Denied'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>网站管理后台</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
		<script type="text/javascript" src="<?= $SKIN ?>js/jquery.js"></script>
		<script type="text/javascript" src="<?= $SKIN ?>js/jquery.form.js"></script>
		<link rel="stylesheet" href="<?= $SKIN ?>css/min.css" />
		<link rel="stylesheet" href="<?= $SKIN ?>css/css.css" />
		<script type="text/javascript" src="<?= $FILES_URL ?>js/layer/layer.js"></script>
		<style type="text/css">
			#content { padding: 0px; margin: 0px; }
			#content .bloc .title .toggle { display: none; }
		</style>
	</head>
	<body style="background:#494949;">
		<div style="background:#494949; width:400px; margin:0px auto; margin-top:200px;" id="login-body">
			<div id="content" class="white">
				<div class="bloc">
					<div class="title"> 网站后台登陆 </div>
					<div class="content">
						<form action="?m=<?= $m ?>&c=login&a=submit" method="post" id="login" onSubmit="return false">
							<div class="input">
								<label for="detail-username">管理员账号</label>
								<input style="width:300px;"  name="detail[username]" type="text" id="detail-username" value="" />
							</div>
							<div class="input">
								<label for="detail-password">管理员密码</label>
								<input style="width:300px;"  name="detail[password]" type="password" id="detail-password" value="" />
							</div>
							<div class="h20px"></div>
							<div class="submit">
								<input type="submit" value="立即登陆" onclick="login_submit()" />
								<input type="reset" value="重置" class="black" />
							</div>
							<div class="h20px"></div>
						</form>
						<div class="cb"></div>
					</div>
				</div>
			</div>
		</div>
        <script type="text/javascript">
			function login_submit() {
				$("#login").ajaxSubmit({
					data: "",
					type: "post",
					dataType: "json",
					beforeSubmit: function (){},
					success: function (result) {
						if (result.status == 1) {
							document.getElementById("login").reset();
							layer.msg("登录成功！~",{time:1000,shift:6,icon:6},function(){
								window.location.href="<?= $redirect ?>";
							});
						} else if (result.status == 0) {
							layer.msg(result.text,{time:2000,shift:6,icon:5});
						}
					},
					error: function () {layer.msg("登录失败！~",{time:2000,shift:6,icon:5});},
				});
				return false;
			}
        </script>
	</body>
</html>