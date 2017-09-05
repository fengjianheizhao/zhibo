<?php
$value=($value==NULL&&$ac=="add")?$FIELD['default']:$value;
?>
<script language="javascript">
	var editor_<?=$FIELD['name']?>;
	KindEditor.ready(function(K) {
		editor_<?=$FIELD['name']?> = K.create("#detail-<?=$FIELD['name']?>", {
			allowFileManager: true,
			filterMode:false,
			afterBlur: function() {
				this.sync();
			}
		});
	});
</script>
<div class="input textarea">
	<label for="detail-<?=$FIELD['name']?>"><?=$FIELD['title']?></label>
	<textarea name="detail[<?=$FIELD['name']?>]" id="detail-<?=$FIELD['name']?>" style="width:700px; height:300px;" rows="5" cols="4"><?=$value?></textarea>
	<span class="red"><b></b></span><?=$FIELD['prompt']?></div>