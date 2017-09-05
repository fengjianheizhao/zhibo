<?php
$FIELD['default']=trim($FIELD['default']);
if($FIELD['default']=="now"){
	$FIELD['default']=time();
}elseif($FIELD['default']=="today"){
	$FIELD['default']=strtotime(date("Y-m-d"));
}
$value=($value==NULL)?$FIELD['default']:$value;


?>
<div class="input">
	<label for="detail-<?=$FIELD['name']?>"><?=$FIELD['title']?></label>
	<input style="width:350px;"  name="detail[<?=$FIELD['name']?>]" type="text" id="detail-<?=$FIELD['name']?>" value="<?=date("Y-m-d H:i:s",$value)?>" <?=$FIELD['readonly']==true?"readonly=\"readonly\"":""?> <?=$FIELD['disabled']==true?"disabled=\"disabled\"":""?>/>
	<span class="red"><b></b></span><?=$FIELD['prompt']?>
</div>
