<?php
$nav_choose="baozhang";
$CSS = array('');
$SCRIPT = array('');
include $TEMPLATE . 'header.php';
?>
<?php $banner=$AD->ads(22,false);?>

<div style="height:<?=$banner['height']?>px; overflow:hidden; position:relative;">
	<div class="w1920">
		<?php $AD->ads($banner['id']);?>
	</div>
</div>
<style type="text/css">
.m h1.tit{ color:#2EA93F; font-size:46px; height:60px; line-height:60x; text-align:center; font-weight:bold; padding:60px 0px 30px; }
.m .pic{ text-align:center; padding-bottom:20px;}
.m .pic{}

.m .fuwu{ padding-bottom:40px;}
.m .fuwu ul{ width:1000px; margin:0px auto;}
.m .fuwu ul li{ float:left; width:250px;}
.m .fuwu ul li em{ font-style:normal; text-align:center; color:#2EA93F; display:block; font-size:18px; height:40px; line-height:40px;}
.m .fuwu ul li i{ display:block; background:url(<?=$SKIN?>images/pic_03.png) no-repeat; width:111px; height:111px; margin:0px auto; }
.m .fuwu ul li.p01{}
.m .fuwu ul li.p02 i{ background-position:0px -111px;}
.m .fuwu ul li.p03 i{ background-position:0px -222px;}
.m .fuwu ul li.p04 i{ background-position:0px -333px;}
.m .fenqi{ padding-bottom:80px;}
.m .fenqi ul{ width:500px; margin:0px auto;}
.m .fenqi ul li{float:left; width:250px;}
.m .fenqi ul li em{ font-style:normal; text-align:center; color:#2EA93F; display:block; font-size:18px; height:40px; line-height:40px;}
.m .fenqi ul li span{ color:#878787; font-size:14px; display:block; text-align:center; height:40px; line-height:40px;}
.m .fenqi ul li i{ display:block; background:url(<?=$SKIN?>images/pic_03.png) no-repeat; width:111px; height:111px; margin:0px auto;}
.m .fenqi ul li.p01 i{ background-position:0px -444px;}
.m .fenqi ul li.p02 i{ background-position:0px -555px;}
</style>
<div class="m">
	<h1 class="tit">直接和教练学车，无驾校中间赚差价</h1>
	<div class="pic"><img src="<?=$SKIN?>images/pic_01.jpg"  /></div>
</div>
<div style="background:#fbfbfb;">
	<div class="m">
		<h1 class="tit">就近练车，让学车更方便</h1>
		<div class="pic"><img src="<?=$SKIN?>images/pic_02.jpg"  /></div>
	</div>
</div>
<div class="m">
	<h1 class="tit">学车顾问全程陪同报名及后续服务</h1>
	<div class="fuwu">
		<ul>
			<li class="p01"> <em>学车场地</em> <i></i> </li>
			<li class="p02"> <em>协助试学，办理学车手续</em> <i></i> </li>
			<li class="p03"> <em>签订学车合同</em> <i></i> </li>
			<li class="p04"> <em>后续相关服务跟进</em> <i></i> </li>
			<div class="clearfix"></div>
		</ul>
	</div>
</div>
<div style="background:#fbfbfb;">
	<div class="m">
		<h1 class="tit">先试学后付款，学费分期</h1>
		<div class="fenqi">
			<ul>
				<li class="p01"> <em>场地、教练熟悉</em> <i></i> <span>满意再付款，再也不用吃亏了</span> </li>
				<li class="p02"> <em>学费可以分期付</em> <i></i> <span>学到哪付到哪，再也不会资金紧张了</span> </li>
				<div class="clearfix"></div>
			</ul>
		</div>
	</div>
</div>
<?php
include $TEMPLATE . 'footer.php';
?>
