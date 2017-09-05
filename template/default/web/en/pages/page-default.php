<?php
$CSS = array('');
$SCRIPT = array('');
include $TEMPLATE . 'header.php';
?>

<div class="min_xt">
	<div style="height:350px; overflow:hidden; position:relative;">
		<div class="w1920">
			<?php $AD->ads(9);?>
		</div>
		<div class="opacity_show"></div>
	</div>
</div>
<div class="page_about_us">
	<div class="h40"></div>
	<div class="m">
		<div class="about_us_list">
			<div class="selabout_list_flet">
				<ul>
					<?php $tags=$this->tag("m=pages&t=pages_8&w=`cid`=1&l=10&o=`sort` ASC ,id ASC")?>
					<?php foreach($tags as $k=>$v){?>
					<li <?=$v['id']==$detail['id']?"class=\"addcldjyxg\"":""?>><a href="<?=$URL->setUrl("?m=pages&ac=show&itemid={$v['id']}");?>" class="djyxg"><?=$v['title']?></a></li>
					<?php }?>
				</ul>
			</div>
			<div class="sshnidonde">
				<div class="selabout_list_frlt" >
					<div class="auto">
						<div class="gonsititl"><?=$detail['title']?></div>
						<!--div class="gonsi_jjie"><i class="wz">公司简介</i></div-->
						<div class="h40"></div>
						<div class="tupianjiajj">
							
							<div class="gonsi_cuntent">
								<?=$detail['content']?>
							</div>
						</div>
					</div>
				</div>

			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="h40"></div>
</div>

<?php
include $TEMPLATE . 'footer.php';
?>
