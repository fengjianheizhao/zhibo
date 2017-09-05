<?php
if($list){
?>
<select name="detail[area][]" id="detail-area-v<?=$pid?>" class="detail-area" <?=$area['child']==0?"":"onchange=\"set_area(this)\""?>  style="opacity: 0;">
	<option value="0">--请选择--</option>
	<?php
	foreach($list as $k=>$v){
	?>
	<option  value="<?=$v['areaid']?>"><?=$v['area']?></option>
	<?php
	}
	?>
</select>
<script language="javascript">
$("#detail-area-v<?=$pid?>").uniform();
</script>
<?php
}
?>
