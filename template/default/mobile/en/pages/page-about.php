<?php
$nav_choose="about";
$CSS = array('');
$SCRIPT = array('');
include $TEMPLATE . 'header.php';
?>

<?php $banner=$AD->ads(16,false);?>
<div style="height:<?=$banner['height']?>px; overflow:hidden; position:relative;"><div class="w1920"><?php $AD->ads($banner['id']);?></div></div>
<div class="m">
	<div class="about-title"><img src="<?=$SKIN?>images/ads_77xueche.jpg" /></div>
	<div class="about-body">
		<div class="about-contact">
			<dl>
				<dt>联系我们</dt>
				<dd><i class="icon-guanwang"></i>官方网站：<a href="/">www.77xueche.com</a></dd>
				<dd><i class="icon-lianxiwomen"></i>联系电话：400-800-7950</dd>
				<dd><i class="icon-QQ"></i>客服QQ：<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2214476127&site=77学车在线咨询&menu=yes">2214476127</a></dd>
				<dd><i class="icon-guanfangweixin"></i>官方微信：400-800-7950</dd>
				<dd><i class="icon-iconfontdizhi"></i>公司地址：合肥市文忠路与岱河路交叉口</dd>
			</dl>
			
		</div>
		<div class="about-erweima">
			<?php $AD->ads(17);?>
			<div class="lable">77学车官方微信</div>
		
		</div>
		<div class="clearfix"></div>
	</div>

</div>





<?php
include $TEMPLATE . 'footer.php';
?>
