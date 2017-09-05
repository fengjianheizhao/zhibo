<?php
defined('IN_SYSTEM') or exit('Access Denied');?>
<?php include $TEMPLATE_PATH. "header.php"; ?>
<?php include $TEMPLATE_PATH. "left.php"; ?>

<!-- CONTENT-->

<div id="content" class="white">
	<div class="bloc">
		<div class="title">修改<?= $title ?></div>
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
			<form action="?m=category&c=ajax&a=edit&mod=<?= $mod ?>&type=<?= $type ?>" method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
				<input  name="category[cid]" value="<?= $detail['cid'] ?>" type="hidden"  />
				<div class="input">
					<label for="select">上级分类</label>
					<select name="category[pid]" id="select">
						<option <?= $detail['pid'] == 0 ? "selected=\"selected\"" : "" ?> value="0">顶级分类</option>
						<?php
						if ($cat_arr && is_array($cat_arr)) {
							foreach ($cat_arr as $key => $val) {
						?>
						<option <?= $key == $detail['pid'] ? "selected=\"selected\"":"" ?> value="<?= $key ?>"><?= $val ?></option>
						<?php
							}
						}
						?>
					</select>
					如果不选择，则为顶级分类 </div>
				<div class="input">
					<label for="category-name">分类名称</label>
					<input  name="category[name]" value="<?= $detail['name'] ?>" type="text" id="category-name" />
					分类名称 </div>
				<div class="input">
					<label for="category-alias">分类别名</label>
					<input  name="category[alias]" value="<?= $detail['alias'] ?>" type="text" id="category-alias" />
					分类别名 </div>
					
				<div class="input">
					<label for="category-logo">分类标识</label>
					<div class="update-box">
						<input style="width:280px;"  name="category[logo]" type="text" id="category-logo" value="<?= $detail['logo'] ?>" class="update-input" />
						<input type="button" style="width:60px;" id="category-logo-btn" class="update-btn" value="选择图片" />
					</div>
					<span class="red"><b></b></span>分类标识图片
				</div>
				<div class="input">
					<label for="input2">排序</label>
					<input style="width:60px;"  name="category[sort]" type="text" id="input2" value="<?= $detail['sort'] ?>" />
					批量添加时自动以分类名称作为别名 </div>
				<div class="input">
					<label for="input3">推荐级别</label>
					<input style="width:60px;"  name="category[level]" type="text" id="input3" value="<?= $detail['level'] ?>" />
					分类推荐级别，取值范围：0-9 </div>
				<div class="h20px"></div>
				<div class="submit">
					<input type="hidden" value="<?=$jumpurl?>" id="formjump" />
					<input type="submit" value="提交修改" />
					<input type="button" value="返回" class="black" onclick="location.href ='?m=category&c=list&mod=<?= $mod ?>&type=<?= $type ?>&pid=<?=$pid?>'"/>
				</div>
				<div class="h100px"></div>
			</form>
		</div>
	</div>
	<?php include $TEMPLATE_PATH. "footer.php"; ?>
