<?php
if($_SETTING['fcstatus']=='1'){
	
$floatContact_test=@explode("\n",$_SETTING['floatcontact']);
//$floatContact_test=@explode("\n",$floatContact_text);
$floatContact=array();
if($floatContact_test&&is_array($floatContact_test)){
	foreach($floatContact_test as $key=>$val){
		$test=@explode("|",$val);
		if($test[0]&&$test[1]){
			$floatContact[$key]['type']=$test[0];
			$floatContact[$key]['value']=$test[1];
			$floatContact[$key]['title']=$test[2];
		}
	}
}
if($floatContact&&is_array($floatContact)){
?>
<div class="floatContact" id="floatContact">
	<div class="btn"><a href="javascript:;" class="open"></a></div>
	<div class="body " >
		<div class="tit"><i><img src="<?=$SKIN?>images/floatcontact_icon_tel.png" width="40" height="40" /></i>客服电话</div>
		<div class="tel"><?=$_SETTING['tel']?></div>
		<div class="teltime">（周一到周五9:00-18:00）</div>
		<div class="line"></div>
		<div class="tit"><i><img src="<?=$SKIN?>images/floatcontact_icon_qq.png" width="40" height="40" /></i>客服QQ</div>
		<ul class="qq">
		<?php
		foreach($floatContact as $val){
			if($val['type']=='qq'){
		?>
			<li class="qq"><a href="http://wpa.qq.com/msgrd?v=3&uin=<?=$val['value']?>&site=<?=$val['title']?>&menu=yes" target="_blank"><?=$val['title']?></a></li>
		<?php
			}
		}
		?>
		</ul>
		
	</div>
</div>
<script language="javascript">
$(document).ready(function() {	
	$(".floatContact .btn a").click(function(){
		$(".floatContact .body").slideToggle(0,function(){
			
			var _status=$(this).css("display");
			if(_status=="block"){
				$(".floatContact .btn a").addClass("open");
			}else{
				$(".floatContact .btn a").removeClass("open");
			}
			
		});
	});
});

</script>
<?php }}?>