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
<select name="detail[<?=$FIELD['name']?>]" id="detail-<?=$FIELD['name']?>"  <?=$FIELD['readonly']==true?"readonly=\"readonly\"":""?> <?=$FIELD['disabled']==true?"disabled=\"disabled\"":""?>>
	<?php
	foreach ($FIELD_OPTIONS as $key => $val) {
	?>
	<option <?= $val['value'] == $value ? "selected=\"selected\"" : "" ?> value="<?= $val['value'] ?>"><?= $val['key'] ?></option>
	<?php
	}
	?>
</select>
<?=$FIELD['prompt']?></div>
