<?php include $TEMPLATE_PATH . "header.php"; ?>
<?php include $TEMPLATE_PATH . "left.php"; ?>
<!-- CONTENT-->

<div id="content" class="white">
	<div class="bloc">
		<div class="title">添加自定义字段</div>
		<div class="content">
			<form action="?m=<?= $m ?>&c=ajax&a=edit"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
				<div class="input">
					<label for="detail-name">字段名</label>
					<input  name="detail[name]" type="text" disabled="disabled" id="detail-name" style="width:350px;" value="<?= $detail['name'] ?>" />
					<span class="red"><b>*</b></span> 字段名必需是小写字母(a-z),数字(0-9)且不能以数字开头 </div>
				<div class="input">
					<label for="detail-title">字段描述</label>
					<input style="width:350px;"  name="detail[title]" type="text" id="detail-title" value="<?= $detail['title'] ?>" />
					<span class="red"><b>*</b></span>自定义字段描述</div>
				<div class="input">
					<label for="detail-prompt">字段说明</label>
					<input style="width:350px;"  name="detail[prompt]" type="text" id="detail-prompt" value="<?= $detail['prompt'] ?>" />
					<span class="red"></span>请填写字段说明</div>
				<div class="h20px"></div>
				<div class="input">
					<label for="detail-formtype">表单类型</label>
					<select name="detail[formtype]" id="detail-formtype" onchange="field_formtype(this)" onkeyup="field_formtype(this)" onclick="field_formtype(this)">
						<?php
						if ($formtype && is_array($formtype)) {
							foreach ($formtype as $key => $val) {
								?>
								<option value="<?= $val['index'] ?>" <?= $detail['formtype'] == $val['index'] ? "selected=\"selected\"" : "" ?>><?= $val['title'] ?></option>
								<?php
							}
						}
						?>
					</select>
					<span class="red">*</span> 请选择字段类型
				</div>
				<div class="input textarea" style="display:none;" id="detail-options_box">
					<label for="detail-options">可选值</label>
					<textarea name="detail[options]" id="detail-options" style="width:350px; height:80px;" rows="5" cols="4"><?= $options ?></textarea>
					<span class="red">*</span> 一行一个 选项值|选项名称
				</div>
				<div class="input textarea">
					<label for="detail-default">默认值</label>
					<textarea name="detail[default]" id="detail-default" style="width:350px; height:80px;" rows="5" cols="4"><?= $detail['default'] ?></textarea>
					<span class="red"></span> 请填写默认值
				</div>
				<div class="input">
					<label for="detail-sort">字段排序</label>
					<input style="width:80px;"  name="detail[sort]" type="text" id="detail-sort" value="<?= $detail['sort'] ?>" />
					<span class="red"></span>请填写字段排序，排序越小越靠前
				</div>
				<div class="input">
					<label for="detail-bdisplay">后台显示</label>
					<input type="checkbox" class="iphone" name="detail[bdisplay]" id="detail-bdisplay" <?= $detail['bdisplay'] == "1" ? "checked=\"checked\"" : "" ?>  value="1" />
					<span class="red"></span>
				</div>
				<div class="input">
					<label for="detail-fdisplay">前台显示</label>
					<input type="checkbox" class="iphone" name="detail[fdisplay]" id="detail-fdisplay" <?= $detail['fdisplay'] == "1" ? "checked=\"checked\"" : "" ?>  value="1" />
					<span class="red"></span>
				</div>
				<div class="h20px"></div>
				<div class="submit">
					<input name="detail[mod]" type="hidden" id="detail-mod" value="<?= $detail['mod'] ?>" />
					<input name="detail[itemid]" type="hidden" id="detail-itemid" value="<?= $detail['id'] ?>" />
					<input type="hidden" value="?m=<?= $m ?>&a=list&mod=<?= $detail['mod'] ?>" id="formjump" />
					<input type="submit" value="立即保存" />
					<input type="reset" value="重置" class="black" />
				</div>
				<div class="h100px"></div>
			</form>
		</div>
	</div>
	<script language="javascript">
		field_formtype($("#detail-formtype"));
	</script>
	<?php include $TEMPLATE_PATH . "footer.php"; ?>
