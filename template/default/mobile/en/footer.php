<div class="clearfix"></div>
<div class="footer footer_index">
	<div class="m">
		<dl class="ft_dl01">
			<dd><a href="<?=$URL->setUrl("");?>" target="_blank"><img src="<?=$SKIN?>images/huoluwangbtn.png" /></a></dd>
		</dl>
        <dl class="ft_dl04">
			<dt>客服热线</dt>
			<dd class="tel"><i></i><?=$_SETTING['tel']?></dd>
			<dt>在线咨询</dt>
			<dd class="qq"><a href="http://wpa.qq.com/msgrd?v=3&uin=2214476127&site=在线咨询&menu=yes" target="_blank"><i></i>在线咨询</a>&nbsp;&nbsp;&nbsp;08:00 - 23:00 </dd>
		</dl>
		<dl class="ft_dl02">
			<dd><img src="<?=$SKIN?>images/erweimahahahah.jpg" /></dd>
		</dl>
		<dl class="ft_dl03">
			<table>
            	<tr>
                	<td><a href="<?=$URL->setUrl("");?>">网站首页</a></td>
                    <td><a href="<?=$URL->setUrl("?m=pages&ac=show&itemid=20");?>">关于我们</a></td>
                </tr>
                	<tr>
                	<td><a href="<?=$URL->setUrl("?m=news&ac=list");?>">新闻动态</a></td>
                    <td><a href="<?=$URL->setUrl("?m=pages&ac=show&itemid=21");?>">场地分布</a></td>
                </tr>
                	<tr>
                	<td><a href="<?=$URL->setUrl("?m=pages&ac=show&itemid=22");?>">学车问答</a></td>
                    <td><a href="<?=$URL->setUrl("?m=pages&ac=show&itemid=23");?>">学车保障</a></td>
                </tr>
            </table>
		</dl>
		<div class="clearfix"></div>
		<div class="copyright">
			<?=$_SETTING['copyright']?>
			<div style="margin:0 auto;padding:10px 0;color:#939393;">
						<a target="_blank" href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=34019002600162"><img src="/beian.png" /> 皖公网安备 34019002600162号</a>&nbsp;&nbsp;&nbsp;&nbsp;<?=$_SETTING['beian']?>&nbsp;&nbsp;<?=$_SETTING['stats']?>
</div>
			</div>
		</div>
	</div>
</div>
<?php
include $TEMPLATE . 'chip/floatcontact.php';
?>


</body>
</html>