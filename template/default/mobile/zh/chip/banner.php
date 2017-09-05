<?php $banner_id=$m=="index"?4:5?>
<?php $banner=$AD->ads($banner_id,false);?>
<div style="height:<?=$banner['height']?>px; overflow:hidden; position:relative;">
	<div class="w<?=$banner['width']?>">
		<div class="cru_fge">
			<?php $AD->ads($banner_id);?>
		</div>
	</div>
</div>
