<?php
$value = ($value == NULL) ? $FIELD['default'] : $value;
?>
<div class="input textarea">
	<label for="detail-<?= $FIELD['name'] ?>"><?= $FIELD['title'] ?></label>
	<div class="update-box"><textarea name="detail[<?= $FIELD['name'] ?>]" id="detail-<?= $FIELD['name'] ?>" style="width:550px; height:60px;" rows="5" cols="4"><?= $value ?></textarea></div>
	<span class="red"><b></b></span><?= $FIELD['prompt'] ?></div>
