<div class="main main_partner">
	<div class="partner-con m">
		<div class="partner-cTitle">
			<span>合作伙伴</span>
		</div>
		<?php $partner=$AD->ads(10,false);?>
		<div class="partner-cBody">
			<div class="conSlide_02" id="conSlide_02">
				<ul class="cateList" id="conSlideList_02">
					<?php foreach($partner['list'] as $k=>$v){?>
					<li>
						<a target="_blank" href="<?=$v['linkurl']?>"><img src="<?=$v['thumb']?>" width="220" height="105" title="<?=$v['title']?>" alt="<?=$v['title']?>" /></a>
						
					</li>
					<?php }?>
				</ul>
			</div>
			<a class="conSlide_Pre" id="conSlide_Pre_02" href="javascript:;"></a>
			<a class="conSlide_Next" id="conSlide_Next_02" href="javascript:;"></a>
		</div>
			<script language="javascript">
			var conSlide_02=new Marquee({
				MSClass: ["conSlide_02","conSlideList_02"],
				Direction : 2,
				Step	  : 0.3,
				Width	  : 1060,
				Height	  : 105,
				Timer	  : 50,
				DelayTime : 3000,
				WaitTime  : 4000,
				ScrollStep: 280,
				SwitchType: 0,
				AutoStart : true
			});
			$("#conSlide_Pre_02").click(function(){conSlide_02.Run(2)});
			$("#conSlide_Next_02").click(function(){conSlide_02.Run(3)});
			</script> 
	</div>
</div>