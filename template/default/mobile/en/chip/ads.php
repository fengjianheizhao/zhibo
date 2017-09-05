<?php
if($data['type']==1){
?>
	<?php
	if($data['list'][0]['id']){
	?>
		<?=$data['list'][0]['linkurl']?"<a href=\"{$data['list'][0]['linkurl']}\"  target=\"_blank\">":""?><img src="<?=$data['list'][0]['thumb']?>" width="<?=$data['width']?>" height="<?=$data['height']?>" /><?=$data['list'][0]['linkurl']?"</a>":""?>
	<?php
	}
	?>
<?php
}elseif($data['type']==2){
?>
	<?php
	if(count($data['list'])==1){
	?>
		<?=$data['list'][0]['linkurl']?"<a href=\"{$data['list'][0]['linkurl']}\"  target=\"_blank\">":""?><img src="<?=$data['list'][0]['thumb']?>" width="<?=$data['width']?>" height="<?=$data['height']?>" /><?=$data['list'][0]['linkurl']?"</a>":""?>
	<?php
	}else{
		$slide_num=0;
	?>
	<div class="ads_slide" style="width:<?=$data['width']?>px; height:<?=$data['height']?>px; overflow:hidden;">
		<div id="ads_slide_imgbox_<?=$data['id']?>" class="ads_slide_imgbox">
			<ul id="ads_slide_imglist_<?=$data['id']?>" class="ads_slide_imglist">
				<?php
					foreach($data['list'] as $key=>$val){
				?>
				<li><?=$val['linkurl']?"<a href=\"{$val['linkurl']}\"  target=\"_blank\">":""?><img src="<?=$val['thumb']?>" width="<?=$data['width']?>" height="<?=$data['height']?>" /><?=$val['linkurl']?"</a>":""?></li>
				<?php
					}
				?>
			</ul>
		</div>
		<ul id="previewlist_<?=$data['id']?>" class="previewlist">
			<?php
				foreach($data['list'] as $key=>$val){
			?>
			<li><?=$key+1?></li>
			<?php
				$slide_num=$key+1;
				}
			?>
		</ul>
	</div>
	<style type="text/css">
	#previewlist_<?=$data['id']?>{ width:<?=$slide_num*21?>px; left:<?=($data['width']/2)-($slide_num*21/2)?>px; }
	</style>
	<script language="javascript">
	var slide_<?=$data['id']?>=new Marquee({
		MSClass: ["ads_slide_imgbox_<?=$data['id']?>","ads_slide_imglist_<?=$data['id']?>","previewlist_<?=$data['id']?>"],
		Direction : 2,
		Step	  : 0.3,
		Width	  : <?=$data['width']?>,
		Height	  : <?=$data['height']?>,
		Timer	  : 50,
		DelayTime : 5000,
		WaitTime  : 5000,
		AutoStart : true
	});
	
	</script> 
	<?php
	}
	?>
<?php
}elseif($data['type']==3){
?>
	<?=$data['content']?>
	
<?php
}elseif($data['type']==4){
	foreach($data['list'] as $key=>$val){
?>
	<a href="<?=$val['linkurl']?>"><?=$val['title']?></a>
<?php
	}
}elseif($data['type']==5){
?>

<?php
}
?>