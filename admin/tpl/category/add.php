<?php
defined('IN_SYSTEM') or exit('Access Denied');?>
<?php include $TEMPLATE_PATH. "header.php"; ?>
<?php include $TEMPLATE_PATH. "left.php"; ?>
<!-- CONTENT-->

<div id="content" class="white">
	<div class="bloc">
		<div class="title">添加<?= $title ?></div>
		<div class="content">
			<script language="javascript">
				KindEditor.ready(function(K) {
					var editor_logo = K.editor({
						allowFileManager : true
					});
					K('#category-logo-btn').click(function() {
						editor_logo.loadPlugin('image', function() {
							editor_logo.plugin.imageDialog({
								imageUrl: K('#category-logo').val(),
								clickFn: function(url, title, width, height, border, align) {
									K('#category-logo').val(url);
									editor_logo.hideDialog();
								}
							});
						});
					});
				});
			</script>
			<form action="?m=category&c=ajax&a=add&mod=<?= $mod ?>&type=<?= $type ?>" method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
				<div class="input">
					<label for="select">上级分类</label>
					<select name="category[pid]" id="select">
						<option <?= $detail['pid'] == 0 ? "selected=\"selected\"" : "" ?> value="0">顶级分类</option>
						<?php
						if ($cat_arr && is_array($cat_arr)) {

							foreach ($cat_arr as $key => $val) {
								?>
								<option <?= $key == $pid ? "selected=\"selected\"" : "" ?> value="<?= $key ?>"><?= $val ?></option>
								<?php
							}
						}
						?>
					</select>
					如果不选择，则为顶级分类 </div>
				<div class="input textarea">
					<label for="textarea1">分类名称</label>
					<textarea name="category[name]" id="textarea1" style="width:250px;" rows="5" cols="4"></textarea>
					允许批量添加，一行一个，点回车换行 </div>

				<div class="input">
					<label for="category-logo">分类标识</label>
					<div class="update-box">
						<input style="width:280px;"  name="category[logo]" type="text" id="category-logo" value="" class="update-input" />
						<input type="button" style="width:60px;" id="category-logo-btn" class="update-btn" value="选择图片" />
					</div>
					<span class="red"><b></b></span>分类标识图片
				</div>

				<div class="input">
					<label for="input2">排序</label>
					<input style="width:60px;"  name="category[sort]" type="text" id="input2" value="100" />
					批量添加时自动以分类名称作为别名 </div>
				<div class="input">
					<label for="input3">推荐级别</label>
					<input style="width:60px;"  name="category[level]" type="text" id="input3" value="0" />
					分类推荐级别，取值范围：0-9 </div>
				<div class="h20px"></div>
				<div class="submit">
					<input type="hidden" value="" id="formjump" />
					<input type="submit" value="立即创建" />
					<input type="reset" value="重置" class="black"/>
				</div>
				<div class="h100px"></div>
			</form>
		</div>
	</div>
	<?php include $TEMPLATE_PATH. "footer.php"; ?>
