<?php
if ($FIELD['options']) {
	if (is_array($FIELD['options'])) {
		$FIELD_OPTIONS = $FIELD['options'];
	} else {
		$FIELD_OPTIONS = @json_decode($FIELD['options'], true);
	}
} else {
	$FIELD_OPTIONS = array();
}
if ($value == NULL) {
	$value_data = explode("\n", $FIELD['default']);
} else {
	if (is_array($value)) {
		$value_data = $value;
	} else {
		$value_data = json_decode($value, true);
	}
}
?>


<div class="input">
	<label for="detail-<?= $FIELD['name'] ?>"><?= $FIELD['title'] ?></label>
	<div class="update-box">
		<?php
		foreach ($FIELD_OPTIONS as $key => $val) {
		?>
		<input  name="detail[<?= $FIELD['name'] ?>][]" type="checkbox" id="detail-<?= $FIELD['name'] ?>_<?= $key ?>" value="<?= $val['value'] ?>"  <?= in_array($val['value'], $value_data) ? "checked=\"checked\"" : "" ?>/>
		<label for="detail-<?= $FIELD['name'] ?>_<?= $key ?>" class="inline"><?= $val['key'] ?></label>
		<?php
		}
		?>
	</div>
	<?= $FIELD['prompt'] ?>
</div>
