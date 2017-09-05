<?php
$value=($value==NULL)?$FIELD['default']:$value;
if($FIELD['options']){
	if(is_array($FIELD['options'])){
		$FIELD_OPTIONS=$FIELD['options'];
	}else{
		$FIELD_OPTIONS=@json_decode($FIELD['options'],true);
	}
}else{
	$FIELD_OPTIONS=array();
}
?>


<div class="input">
	<label for="detail-<?=$FIELD['name']?>"><?=$FIELD['title']?></label>
	<div class="update-box">
	<?php 
	foreach ($FIELD_OPTIONS as $key => $val) {
	?>
		<input  name="detail[<?=$FIELD['name']?>]" type="radio" id="detail-<?=$FIELD['name']?>_<?=$key?>" value="<?= $val['value'] ?>"  <?= $val['value'] == $value ? "checked=\"checked\"" : "" ?>/>
		<label for="detail-<?=$FIELD['name']?>_<?=$key?>" class="inline"><?= $val['key'] ?></label>
	<?php
	}
	?>
	</div>
	<?=$FIELD['prompt']?>
</div>
