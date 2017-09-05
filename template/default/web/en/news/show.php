<?php
$nav_choose="news";
$CSS = array('news');
$SCRIPT = array();
include $TEMPLATE . 'header.php';
?>
<?php $banner=$AD->ads(20,false);?>
<div style="height:<?=$banner['height']?>px; overflow:hidden; position:relative;">
	<div class="w1920">
		<?php $AD->ads(20);?>
	</div>
</div>
<div class="list_comm_div">
	<div class="list_comm">
		<div class="location"> <font class="present" style="font: 14px/1.5 tahoma,arial,'微软雅黑',sans-serif;">当前位置&nbsp;:</font><span> <a class="now" href="<?=$URL->setUrl("");?>">首页</a>> <a class="now" href="<?=$URL->setUrl("?m={$m}&ac=list&cid={$cate['cid']}");?>">
			<?=$cate['name'] ?>
			</a>> <a href="javascript:void(0)" class="namemetitle">
			<?=$detail['title']?>
			</a> </span> </div>
		<div class="article">
			<div class="art_tit">
				<?=$detail['title']?>
			</div>
			<div class="art_info"> <span>发布时间：
				<?=date("Y-m-d H:i:s",$detail['addtime'])?>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;来源：<a href="<?=$detail['copyfromurl']?>" target="_blank">
				<?=$detail['copyfrom']?>
				</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;作者：<a href="<?=$detail['copyfromurl']?>" target="_blank">
				<?=$detail['author']?>
				</a></span> </div>
			<div class="art_box">
				<p style="text-align:center; margin-bottom:30px"> </p>
				<p style="margin-bottom:30px;"> <span style="font-size:16px; color:#000000;">
					<?=$detail['content']?>
					</span> </p>
				<div class="jiathis_style"> <a class="jiathis_button_qzone"></a> <a class="jiathis_button_tsina"></a> <a class="jiathis_button_tqq"></a> <a class="jiathis_button_weixin"></a> <a class="jiathis_button_renren"></a> <a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a> <a class="jiathis_counter_style"></a> </div>
				<script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script> 
			</div>
		</div>
	</div>
</div>
<?php
include $TEMPLATE . 'footer.php';
?>
