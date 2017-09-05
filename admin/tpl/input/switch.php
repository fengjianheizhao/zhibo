<?php
$value = ($value == NULL) ? $FIELD['default'] : $value;
?>
<div class="input">
	<label for="detail-<?= $FIELD['name'] ?>"><?= $FIELD['title'] ?></label>
	<div class="update-box">
		<input class="iphone"  name="detail[<?= $FIELD['name'] ?>]" type="checkbox" id="detail-<?= $FIELD['name'] ?>" value="1"  <?= $value ? "checked=\"checked\"" : "" ?>/>
	</div>
	<span class="red"><b></b></span><?= $FIELD['prompt'] ?>
</div>

