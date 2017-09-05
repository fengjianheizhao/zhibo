<?php
$value=($value==NULL)?$FIELD['default']:$value;
?>
<div class="input">
	<label for="detail-<?=$FIELD['name']?>"><?=$FIELD['title']?></label>
	<input style="width:350px;"  name="detail[<?=$FIELD['name']?>]" type="password" id="detail-<?=$FIELD['name']?>" value="<?=$value?>" />
	<span class="red"><b></b></span><?=$FIELD['prompt']?>
</div>
