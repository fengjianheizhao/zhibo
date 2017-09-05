<?php include $TEMPLATE_PATH. "header.php"; ?>
<?php include $TEMPLATE_PATH. "left.php"; ?>
<!-- CONTENT-->

<div id="content" class="white">
<div class="bloc">
	<div class="title">修改会员组</div>
	<div class="content">
		<form action="?m=<?=$m?>&a=ajax&s=groupedit"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
			<input  name="detail[gid]" value="<?= $detail['gid'] ?>" type="hidden"  />
			<div class="input">
				<label for="detail-gname">会员组名称</label>
				<input style="width:350px;"  name="detail[gname]" type="text" id="detail-gname" value="<?= $detail['gname'] ?>" />
				<span class="red"><b>*</b></span> 请填写会员组名称</div>
			<div class="input">
				<label for="detail-status">会员组开放注册</label>
				<div class="update-box">
					<input  name="detail[status]" type="checkbox" id="detail-status" <?= $detail['status'] =="1"?"checked=\"checked\"":""?> value="1" />
				</div>
				隐藏会员组不开放注册
			</div>
			<div class="input">
				<label for="detail-allow">会员组权限</label>
				<input style="width:350px;"  name="detail[allow]" type="text" id="detail-allow" value="<?= $detail['allow'] ?>" />
				<span class="red"><b>*</b></span>会员组权限</div>
			<div class="h20px"></div>
			<div class="submit">
				<input type="hidden" value="?m=<?= $m ?>&a=group" id="formjump" />
				<input type="submit" value="保存" />
				<input type="reset" value="重置" class="black" />
			</div>
			<div class="h100px"></div>
		</form>
	</div>
</div>
<?php include $TEMPLATE_PATH. "footer.php"; ?>
