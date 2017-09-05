<?php  defined('IN_SYSTEM') or exit('Access Denied');?>
<?php
$nav_choose="index";
$CSS = array();
$SCRIPT = array("countup.min");
//$this->loadExpand("accrecords");
//$fanyongList=$this->accrecords->getProductFecords();


include $TEMPLATE . 'header-index.php';
?>


<?php $banner=$AD->ads(1,false);?>
<div class="indexBanner"  style="height:<?=$banner['height']?>px; overflow:hidden; position:relative;">
	<div class="w1920" >
		<?php $AD->ads(1);?>
	</div>
	<a href="javascript:;" id="slide_Pre_<?=$banner['id']?>" class="slide_Pre_<?=$banner['id']?> slide_Pre" style="top:<?=($banner['height']-100)/2?>px;"></a> <a href="javascript:;" id="slide_Next_<?=$banner['id']?>" class="slide_Next_<?=$banner['id']?> slide_Next" style="top:<?=($banner['height']-100)/2?>px;"></a> 
	<script language="javascript">
	$("#slide_Pre_<?=$banner['id']?>").click(function(){slide_<?=$banner['id']?>.Run(2)});
	$("#slide_Next_<?=$banner['id']?>").click(function(){slide_<?=$banner['id']?>.Run(3)});
	</script> 
</div>


<div class="floorTitle">
	<div class="m">
		<div class="title">
			<h2>全方位保障，让您安心学车</h2>
			<h3>77学车为用户学车提供全面细致的服务保障，确保用户学车安心顺心。</h3>
		</div>
	</div>
</div>

<!--floor 01-->
<div class="floorBody floorBody_01">
	<div class="m">
		<ul class="ensure_list">
			<li class="es-box_01">
				<div class="display">
					<i class="es-icon icon-zhengshurenzheng"></i>
					<span>金牌教练</span>
				</div>
				<div class="hide">
					<p class="p1">杜绝吃拿卡要</p>
					<p class="p2">保障服务质量</p>
				</div>
			</li>
			
			<li class="es-box_02">
				<div class="display">
					<i class="es-icon icon-changdiguanli"></i>
					<span>场地选择</span>
				</div>
				<div class="hide">
					<p class="p1">覆盖全城</p>
					<p class="p2">就近匹配训练场地</p>
				</div>
			</li>
			
			<li class="es-box_03">
				<div class="display">
					<i class="es-icon icon-yuyueshijian"></i>
					<span>预约时间</span>
				</div>
				<div class="hide">
					<p class="p1">自由约考</p>
					<p class="p2">随时到随时学</p>
				</div>
			</li>
			
			<li class="es-box_04">
				<div class="display">
					<i class="es-icon icon-icon11"></i>
					<span>收费透明</span>
				</div>
				<div class="hide">
					<p class="p1">没有价格陷阱</p>
					<p class="p2">没有隐形收费</p>
				</div>
			</li>
			
			<li class="es-box_05">
				<div class="display">
					<i class="es-icon icon-baozhang"></i>
					<span>学车保障</span>
				</div>
				<div class="hide">
					<p class="p1">拿证有保障</p>
					<p class="p2">意外伤害有保险</p>
				</div>
			</li>
			
			<li class="es-box_06">
				<div class="display">
					<i class="es-icon icon-anquan"></i>
					<span>安全意识</span>
				</div>
				<div class="hide">
					<p class="p1">提高安全意识</p>
					<p class="p2">源头杜绝马路杀手</p>
				</div>
			</li>
			
			<li class="es-box_07">
				<div class="display">
					<i class="es-icon icon-nazhenggengkuai"></i>
					<span>拿证更快</span>
				</div>
				<div class="hide">
					<p class="p1">学会就考试</p>
					<p class="p2">拒绝慢、拖、等</p>
				</div>
			</li>
			
			<li class="es-box_08">
				<div class="display">
					<i class="es-icon icon-kefu"></i>
					<span>学车咨询</span>
				</div>
				<div class="hide">
					<p class="p1">专业全面</p>
					<p class="p2">全方位解答学车疑问</p>
				</div>
			</li>
			
			<li class="es-box_09">
				<div class="display">
					<i class="es-icon icon-icon6"></i>
					<span>限时维权</span>
				</div>
				<div class="hide">
					<p class="p1">反馈问题</p>
					<p class="p2">2小时限时解决</p>
				</div>
			</li>
			
			<li class="es-box_10">
				<div class="display">
					<i class="es-icon icon-jiaolian1"></i>
					<span>学车顾问</span>
				</div>
				<div class="hide">
					<p class="p1">全程一对一服务</p>
					<p class="p2"></p>
				</div>
			</li>                                                                              

			<div class="clearfix"></div>
		</ul>
	
	</div>
</div>

<div class="floorTitle">
	<div class="m">
		<div class="title">
			<h2>训练场地</h2>
			<h3>训练场地环境整洁、覆盖全城，方便学员就近学车</h3>
		</div>
	</div>
</div>
<!--floor 01-->
<div class="floorBody floorBody_02">
	<div class="m">
		<?php $AD->ads(18);?>
	</div>
</div>

<div class="floorTitle">
	<div class="m">
		<div class="title">
			<h2>学员反馈</h2>
			<h3>77学车拥有经验丰富的教练和高质量的学车服务，受到了广大学员的一致好评</h3>
		</div>
	</div>
</div>
<div class="floorBody floorBody_02">
	<div class="m">
		<?php $AD->ads(21);?>
	</div>
</div>

<?php $banner=$AD->ads(3,false);?>
<div  style="height:<?=$banner['height']?>px; overflow:hidden; position:relative; margin-top:40px;">
<div class="w1920" >
		<?php $AD->ads(3);?>
</div></div>



<!-- 新闻资讯 -->
<div class="index_news">
	<div class="m">
		<div class="news_content f_l">
			<div class="news_tit">
				<h2>新闻动态</h2>
				<h3><a href="<?=$URL->setUrl("?m=news&ac=list&cid=17");?>">MORE+</a></h3>
			</div>
			<ul>
				<?php $tags=$this->tag("m=news&t=news_11&w=`status`=1 and `cid`=17&o=`recom` DESC,id DESC&l=3")?>
				<?php foreach($tags as $k=>$val){?>
				<li> <A href="<?=$URL->setUrl("?m=news&ac=show&itemid={$val['id']}",$val);?>" title="<?=$val['title']?>" target=_blank>
					<div class="pic"><img src="<?=$val['thumb']?>"  width="70" height="70" title="<?=$val['title']?>" class="imgload" /></div>
					<h3><?=$val['title']?></h3>
					<p><?=$val['intro']?></p>
					</a> </li>
				<?php }?>
			</ul>
		</div>
		<div class="news_content f_r">
			<div class="news_tit">
				<h2>媒体报道</h2>
				<h3><a href="<?=$URL->setUrl("?m=news&ac=list&cid=18");?>">MORE+</a></h3>
			</div>
			<ul>
				<?php $tags=$this->tag("m=news&t=news_11&w=`status`=1 and `cid`=18&o=`recom` DESC,id DESC&l=3")?>
				<?php foreach($tags as $k=>$val){?>
				<li> <A href="<?=$URL->setUrl("?m=news&ac=show&itemid={$val['id']}",$val);?>" title="<?=$val['title']?>" target=_blank>
					<div class="pic"><img src="<?=$val['thumb']?>"  width="70" height="70" title="<?=$val['title']?>" class="imgload" /></div>
					<h3><?=$val['title']?></h3>
					<p><?=$val['intro']?></p>
					</a> </li>
				<?php }?>
		</div>
		<div class="clearfix"></div>
	</div>
</div>



<?php include $TEMPLATE . 'footer.php';?>
