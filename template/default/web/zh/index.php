<?php  defined('IN_SYSTEM') or exit('Access Denied');?>
<?php
$nav_choose="index";
$CSS = array();
$SCRIPT = array("countup.min");
//$this->loadExpand("accrecords");
//$fanyongList=$this->accrecords->getProductFecords();


//include  'header-index.php';
?>


<?php //$banner=$TPL->ads(1,false);?>


<div class="indexBanner"  style="height:<?=$banner['height']?>px; overflow:hidden; position:relative;">
	<div class="w1920" >
		<?php //$TPL->ads(1);?>
	</div>
	<a href="javascript:;" id="slide_Pre_<?=$banner['id']?>" class="slide_Pre_<?=$banner['id']?> slide_Pre" style="top:<?=($banner['height']-100)/2?>px;"></a> <a href="javascript:;" id="slide_Next_<?=$banner['id']?>" class="slide_Next_<?=$banner['id']?> slide_Next" style="top:<?=($banner['height']-100)/2?>px;"></a> 
	<script language="javascript">
	$("#slide_Pre_<?=$banner['id']?>").click(function(){slide_<?=$banner['id']?>.Run(2)});
	$("#slide_Next_<?=$banner['id']?>").click(function(){slide_<?=$banner['id']?>.Run(3)});
	</script> 
</div>




<!-- 新闻资讯 -->
<div class="index_news">
	<div class="m">
		<div class="news_content f_l">
			<div class="news_tit">
				<h2>新闻动态</h2>
				<h3><a href="<?php //$URL->setUrl("?m=news&ac=list&cid=17");?>">MORE+</a></h3>
			</div>
			<ul>
				<?php //$tags=$TPL->tag("m=news&t=news_11&w=`status`=1 and `cid`=17&o=`recom` DESC,id DESC&l=3")?>
				<?php foreach($tags as $k=>$val){?>
				<li> <A href="<?php //$URL->setUrl("?m=news&ac=show&itemid={$val['id']}",$val);?>" title="<?=$val['title']?>" target=_blank>
					<div class="pic"><img src="<?=$val['thumb']?>"  width="70" height="70" title="<?=$val['title']?>" class="imgload" /></div>
					<h3><?=$val['title']?></h3>
					<p><?=$val['intro']?></p>
					</a> </li>
				<?php }?>
			</ul>
		</div>
		
		<div class="clearfix"></div>
	</div>
</div>



<?php include $TEMPLATE_PATH . 'footer.php';?>
