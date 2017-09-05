<?php
$value=($value==NULL)?$FIELD['default']:$value;
?>
<script language="javascript">
	KindEditor.ready(function(K) {
		var editor_<?=$FIELD['name']?> = K.editor({
			allowFileManager : true
		});
		K('#detail-<?=$FIELD['name']?>-btn').click(function() {
			editor_<?=$FIELD['name']?>.loadPlugin('image', function() {
				editor_<?=$FIELD['name']?>.plugin.imageDialog({
					imageUrl: K('#detail-<?=$FIELD['name']?>').val(),
					clickFn: function(url, title, width, height, border, align) {
						K('#detail-<?=$FIELD['name']?>').val(url);
						editor_<?=$FIELD['name']?>.hideDialog();
					}
				});
			});
		});
	});
</script>
<div class="input">
	<label for="detail-<?=$FIELD['name']?>"><?=$FIELD['title']?></label>
	<div class="update-box">
		<input style="width:280px;"  name="detail[<?=$FIELD['name']?>]" type="text" id="detail-<?=$FIELD['name']?>" value="<?=$value?>" class="update-input" />
		<input type="button" style="width:70px;" id="detail-<?=$FIELD['name']?>-btn" class="update-btn" value="选择图片" />
	</div>
	<span class="red"><b></b></span><?=$FIELD['prompt']?>
</div>