<?php
$value=($value==NULL)?$FIELD['default']:$value;
?>
<div class="input">
	<label for="detail-<?=$FIELD['name']?>"><?=$FIELD['title']?></label>
	<input style="width:700px;"  name="detail[<?=$FIELD['name']?>]" type="text" id="detail-<?=$FIELD['name']?>" value="<?=$value?>" <?=$FIELD['readonly']==true?"readonly=\"readonly\"":""?> <?=$FIELD['disabled']==true?"disabled=\"disabled\"":""?>/>
	<span class="red"><b></b></span><?=$FIELD['prompt']?>
</div>
