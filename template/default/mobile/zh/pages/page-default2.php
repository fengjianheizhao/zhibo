<?php
$CSS = array('');
$SCRIPT = array('');
include $TEMPLATE . 'header.php';
?>
<style type="text/css">
.bmxz_main{ margin-top:40px;}
.bmxz_left{ width:200px; float:left;}
.bmxz_left ul{ border:1px solid #dedede; height:500px; background:#ffffff;}
.bmxz_left ul li{ height:68px; line-height:68px; border-bottom:1px solid #dedede; border-left:0px solid transparent;transition: all 0.2s ease 0s; text-align:center; background:#ffffff; }
.bmxz_left ul li a{ font-size:18px; font-weight:bold;}
.bmxz_left ul li.choose{ border-left:5px solid #ff6600; background:#009900; }
.bmxz_left ul li.choose a{ color:#ffffff;}
.bmxz_left ul li:hover{ border-left:5px solid #ff6600; background:#009900; }
.bmxz_left ul li:hover a{ color:#ffffff;}
.bmxz_right{ width:960px; float:right; background:#ffffff;}
.bmxz_right .title{ height:101px; line-height:90px; font-size:30px; text-align:center; background:url(<?=$SKIN?>images/bmxz_heade.jpg) center top; color:#ff6600;}
.bmxz_right .content{ padding:40px;}
.bmxz_right .content img{ max-width:880px;}
</style>
<div style="background:#f2f2f2 none repeat scroll 0 0;">
<?php $banner=$AD->ads(24,false);?>
<div style="height:<?=$banner['height']?>px; overflow:hidden; position:relative;"><div class="w1920"><?php $AD->ads($banner['id']);?></div></div>
<div class="m bmxz_main">
	<div class="bmxz_left">
		<ul>
			<?php $tags=$this->tag("m=pages&t=pages_8&w=`cid`=20&l=10&o=`sort` ASC ,id ASC")?>
			<?php foreach($tags as $k=>$v){?>
			<li <?=$v['id']==$detail['id']?"class=\"choose\"":""?>><a href="<?=$URL->setUrl("?m=pages&ac=show&itemid={$v['id']}");?>" class="djyxg"><?=$v['title']?></a></li>
			<?php }?>
		</ul>
	</div>
	<div class="bmxz_right">
		<div class="title"><?=$detail['title']?></div>
		<div class="content"><?=$detail['content']?></div>
	</div>
	<div class="clearfix"></div>
</div>
<div class="h40"></div>
</div>
<?php
include $TEMPLATE . 'footer.php';
?>
