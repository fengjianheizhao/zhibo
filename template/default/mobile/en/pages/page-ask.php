<?php
$nav_choose="ask";
$CSS = array('');
$SCRIPT = array('');
include $TEMPLATE . 'header.php';
?>

<?php $banner=$AD->ads(19,false);?>
<div style="height:<?=$banner['height']?>px; overflow:hidden; position:relative;"><div class="w1920"><?php $AD->ads($banner['id']);?></div></div>

<div class="m">
	<div class="ask_title">常见问题</div>
	<div class="ask_body">
		<ul>
			<li>
				<em class="tag">费用问答<i></i></em>
				<dl>
					<dt><em>01/</em>你们的费用是怎么样的？后期还有吗？</dt>
					<dd>答：七七学车实行一费制，后期不再进行收费，杜绝驾校的吃拿卡要现象（不包含体检费用） </dd>
					<dt><em>02/</em>补考需要交多少费用？</dt>
					<dd>答：补考只需要缴纳补考费用即可，免费补考训练，直至拿证为止。 </dd>
				</dl>
				
			</li>
				<li>
				<em class="tag">报名问答<i></i></em>
				<dl>
					<dt><em>01/</em>我考的是手动还是自动？是否是C1的驾照呢？</dt>
					<dd>答：七七学车目前以C1驾照为主，C2、A、B也可以。需要单独预约。</dd>
					<dt><em>02/</em>报名后，什么时候签订合同协议？</dt>
					<dd>答：报名缴费后，会立刻与学员签订合同，并安排相关学车事宜。</dd>
					<dt><em>03/</em>报名成功后谁对我负责？</dt>
					<dd>我们会为每一位学员指派一个专人工作人员，负责跟进服务每一位学员，确保您有良好体验。</dd>
					<dt><em>04/</em>一般多久能学完？</dt>
					<dd>这取决于您练车进度的情况及考试预约情况。</dd>
					<dt><em>05/</em>我随时都能预约教练吗？</dt>
					<dd>只要您提前预约，都能约得上教练。</dd>
					<dt><em>06/</em>场地都在哪儿？方便吗？</dt>
					<dd>目前七七学车在合肥各区三县都有签约的场地，您报名时我们会根据您的信息匹配最方便的训练场地。</dd>
					<dt><em>07/</em>科目一是否有学时要求？</dt>
					<dd>暂时没有硬性规定，只要三次模拟在90分以上即可预约考试，后续工作我们会指导您顺利完成。</dd>
					<dt><em>08/</em>考试是否有名额限定？可以帮我们预约吗？</dt>
					<dd>每次考试的名额都是由车管所规定的，科目一科目四考试由合作驾校帮忙预约，科二科三则可以向教练沟通并预约。 </dd>
				</dl>
				
			</li>
		
		</ul>
	
	</div>

</div>



<?php
include $TEMPLATE . 'footer.php';
?>