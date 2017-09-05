<?php defined('IN_SYSTEM') or exit('Access Denied'); ?>
<?php include $TEMPLATE_PATH ."header.php";?>
<?php include  $TEMPLATE_PATH ."left.php";?>
<!-- CONTENT-->

<div id="content" class="white">
	<div class="bloc">
		<div class="title"> 快捷操作 </div>
		<div class="content">
		<a href="?m=ads&c=list" class="shortcut"> <img src="<?= $SKIN ?>img/icons/chart.png" alt=""  width="32" height="32"/>广告位管理</a>
		<a href="?m=setting&c=admin" class="shortcut"> <img src="<?= $SKIN ?>img/icons/user.png" alt=""  width="32" height="32"/>管理员信息</a>
		
		<a href="?m=setting&c=setting" class="shortcut"> <img src="<?= $SKIN ?>img/icons/cog.png" alt=""  width="32" height="32"/>系统设置</a>
		<div class="cb"></div>
		</div>
	</div>
	<!--div class="bloc">
<div class="title"> 统计信息 </div>
<div class="content">
<div class="left">
<table class="noalt">
<thead>
<tr>
<th colspan="2"><em>Content</em></th>
</tr>
</thead>
<tbody>
<tr>
<td><h4>460</h4></td>
<td>Posts</td>
</tr>
<tr>
<td><h4>12</h4></td>
<td>Pages</td>
</tr>
<tr>
<td><h4>5</h4></td>
<td>Categories</td>
</tr>
<tr>
<td><h4>20 000</h4></td>
<td>Contacts</td>
</tr>
</tbody>
</table>
</div>
<div class="right">
<table class="noalt">
<thead>
<tr>
<th colspan="2"><em>Comments</em></th>
</tr>
</thead>
<tbody>
<tr>
<td><h4>46 000</h4></td>
<td class="good">Comments</td>
</tr>
<tr>
<td><h4>5</h4></td>
<td class="neutral">Waiting for validation</td>
</tr>
<tr>
<td><h4>0</h4></td>
<td class="bad">Spams</td>
</tr>
</tbody>
</table>
</div>
<div class="cb"></div>
</div>
</div-->
	<?php
//从PHP配置文件中获得是否可以远程文件获取
$allowurl= ini_get("allow_url_fopen") ? "支持" : "不支持";
//从PHP配置文件中获得最大上传限制
$max_upload = ini_get("file_uploads") ? ini_get("upload_max_filesize") : "Disabled";
//从PHP配置文件中获得脚本的最大执行时间
$max_ex_time= ini_get("max_execution_time")."秒";
//以下两条获取服务器时间，中国大陆采用的是东八区的时间,设置时区写成Etc/GMT-8

$systemtime = date("Y-m-d H:i:s",time());
?>
	<div class="bloc">
		<div class="title"> 系统信息 </div>
		<div class="content">
			<div class="left">
				<table class="noalt">
					<tbody>
						<tr>
							<td><b>客户端IP</b></td>
							<td class="bad"><?=getip();?></td>
						</tr>
						<tr>
							<td><b>客户端信息</b></td>
							<td><?=$_SERVER['HTTP_USER_AGENT'] ?></td>
						</tr>
						<tr>
							<td><b>Web服务器</b></td>
							<td class="good"><?=$_SERVER["SERVER_SOFTWARE"]?></td>
						</tr>
						<tr>
							<td><b>PHP版本</b></td>
							<td class="good">PHP
								<?=PHP_VERSION?></td>
						</tr>
						<tr>
							<td><b>最大上传限制</b></td>
							<td class="good"><?=$max_upload?></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="right">
				<table class="noalt">
					<tbody>
						<tr>
							<td><b>访问时间</b></td>
							<td><?=date("Y-m-d H:i:s")?></td>
						</tr>
						<tr>
							<td><b>通信协议</b></td>
							<td><?=$_SERVER['SERVER_PROTOCOL']?></td>
						</tr>
						<tr>
							<td><b>远程文件获取</b></td>
							<td class="good"><?=$allowurl?></td>
						</tr>
						<tr>
							<td><b>MYSQL版本</b></td>
							<td class="good">MYSQL
								<?=mysql_get_server_info()?></td>
						</tr>
						<tr>
							<td><b>最大执行时间</b></td>
							<td class="good"><?=$max_ex_time?></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div class="cb"></div>
		</div>
	</div>
</div>
<?php include  $TEMPLATE_PATH."footer.php";?>
