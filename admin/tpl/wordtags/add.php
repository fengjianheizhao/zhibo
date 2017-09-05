<?php include $TEMPLATE_PATH . "header.php"; ?>
<?php include $TEMPLATE_PATH . "left.php"; ?>
<!-- CONTENT-->

<div id="content" class="white">
	<div class="bloc">
		<div class="title">添加<?= $MOD['name'] ?></div>
		<div class="content">
			<form action="?m=<?= $m ?>&c=ajax&a=add"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">

				<div class="input">
					<label for="detail-keyword">关键词</label>
					<input style="width:350px;"  name="detail[keyword]" type="text" id="detail-keyword" value="" />
					<span class="red"><b>*</b></span>请填写关键词</div>
				<div class="input">
					<label for="detail-linkurl">关键词对应链接</label>
					<input style="width:350px;"  name="detail[linkurl]" type="text" id="detail-linkurl" value="" />
					<span class="red"><b>*</b></span> 请填写关键词对应链接,如：“<?= $DEVICE['siteurl'] ?>”</div>

				<?php
				foreach ($fieldsList as $k => $v) {
					$FIELD = $v;
					$value = NULL;
					include $TEMPLATE_PATH . "/input/" . $v['formtype'] . ".php";
				}
				?>

				<div class="h20px"></div>
				<div class="submit">
					<input type="hidden" value="?m=<?= $m ?>&cid=<?= $cid ?>" id="formjump" />
					<input type="submit" value="立即发布" />
					<input type="reset" value="重置" class="black" />
				</div>
				<div class="h100px"></div>
			</form>
		</div>
	</div>
	<?php include $TEMPLATE_PATH . "footer.php"; ?>
