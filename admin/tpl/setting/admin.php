<?php defined('IN_SYSTEM') or exit('Access Denied'); ?>
<?php include $TEMPLATE_PATH."header.php";?>
<?php include $TEMPLATE_PATH."left.php";?>
<!-- CONTENT-->

<div id="content" class="white">
<div class="bloc">
	<div class="title">管理员信息修改</div>
	<div class="content">
		<form action="?m=<?=$m?>&a=<?=$ac?>&s=submit"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
			<div class="input">
				<label for="detail-username">用户名</label>
				<input style="width:250px;"  name="detail[username]" type="text" id="detail-username" value="<?= $ADMIN['username'] ?>" />
				<span class="red"><b>*</b></span> 如修改的用户名，请一定牢记，以免造成无法登陆后台！</div>
			<div class="h20px"></div>
			<div class="input">
				<label for="detail-password">请输入原登录密码</label>
				<input style="width:250px;"  name="detail[password]" type="password" id="detail-password" value="" />
				<span class="red">* 必填，留空表示什么都不修改！</span>请必须输入原登录密码确认</div>
			<div class="h20px"></div>
			<div class="input">
				<label for="detail-newpassword">请输入新的登录密码</label>
				<input style="width:250px;"  name="detail[newpassword]" type="password" id="detail-newpassword" value="" />
				<span class="red">留空表示不修改密码，</span>修改密码后请牢记新密码，以免造成无法登陆后台！</div>
			<div class="input">
				<label for="detail-repassword">请重复输入新登录密码</label>
				<input style="width:250px;"  name="detail[repassword]" type="password" id="detail-repassword" value="" />
				<span class="red"></span></div>
			
			<div class="h20px"></div>
			<div class="submit">
				<input type="hidden" value="?m=<?=$m?>&a=<?=$ac?>" id="formjump" />
				<input type="submit" value="立即修改" />
				<input type="reset" value="重置" class="black" />
			</div>
		</form>
		<div class="h50px"></div>
		<table class="noalt" style="width:500px;">
			<thead>
				<tr>
					<th colspan="2"><b>基本信息</b><em>（如修改了用户名，重新登录方可生效！）</em></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><b>用户名</b></td>
					<td class="good"><?=$ADMIN['username']?></td>
				</tr>
				<tr>
					<td><b>登录时间</b></td>
					<td class="bad"><?=date("Y-m-d H:i:s",$ADMIN['logintime'])?></td>
				</tr>
				<tr>
					<td><b>登录IP</b></td>
					<td class="bad"><?=$ADMIN['loginip']?></td>
				</tr>
				<tr>
					<td><b>登录次数</b></td>
					<td class="neutral"><?=$ADMIN['logins']?></td>
				</tr>
			</tbody>
		</table>
		<div class="h100px"></div>
	</div>
</div>
<?php include $TEMPLATE_PATH."footer.php";?>
