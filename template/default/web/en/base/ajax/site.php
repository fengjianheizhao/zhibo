<ul>
<?php
	foreach($data['list'] as $key=>$val){
	if($key==0)$stteDefault=$val;
	$sku=json_decode($val['sku'],true);
	$coordinate=explode(",",$val['coordinate']);
?>
<li _x="<?=$coordinate[0]?>" _y="<?=$coordinate[1]?>" siteid="<?=$val['id']?>">
	<div class="thumb"> <A href="<?=$URL->setUrl("?m=base&ac=show&itemid={$val['id']}",$val);?>" title="<?=$val['title']?>" target=_blank><img src="<?=$val['thumb']?>" width="330" height="240" /></A>
		<div class="class">
			<?php
				foreach($sku as $k=>$v){
					if($v['status']!=1)continue;
			?>
			<div class="cl"><?=$v['name']?>:<span><?=$v['price']?><em>元</em></span></div>
			<?php }?>
		</div>
	</div>
	<div class="info">
		<dl>
			<dt>
				<A href="<?=$URL->setUrl("?m=base&ac=show&itemid={$val['id']}",$val);?>" title="<?=$val['title']?>" target=_blank><?=$val['title']?></A>
			</dt>
			<dd>
				<A href="<?=$URL->setUrl("?m=base&ac=show&itemid={$val['id']}",$val);?>" title="<?=$val['title']?>" target=_blank><?=$val['address']?></A>
			</dd>
		</dl>
		<div class="btn"><a class="baoming" target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=2214476127&site=77学车在线咨询&menu=yes">立即咨询</a></div>
		<div class="clearfix"></div>
	</div>
</li>
<?php }?>
<div class="clearfix"></div>
</ul>
<div class="pages">
<?php
	if($data['pagenum']>=1){	
?>
	<div class="page" id="site-Pgge"> <a class="prev"  page="<?=$data['prev']?>" href="javascript:;">上一页</a>
		<?php for($i=$data['page_start'];$i<=$data['page_end'];$i++){?>
		<?php if($i==$data['page']){?>
		<b>
		<?=$i?>
		</b>
		<?php }else{?>
		<a page="<?=$i?>" href="javascript:;">
		<?=$i?>
		</a>
		<?php }?>
		<?php }?>
		<a class="next" page="<?=$data['next']?>" href="javascript:;">下一页</a> </div>
<?php
}
?>
</div>

<script type="text/javascript"> 
<?php
	foreach($data['list'] as $key=>$val){
	$coordinate=explode(",",$val['coordinate']);
?>
var content = '<div style="margin:0;line-height:20px;padding:2px;">' +
		'<img src="<?=$val['thumb']?>" alt="" style="float:right;zoom:1;overflow:hidden;width:130px;height:95px;margin-left:3px;"/>' +
		'<?=$val['intro']?>' +
		'</div>';
setMarker(<?=$val['id']?>,<?=$coordinate[0]?>,<?=$coordinate[1]?>,"<?=$val['title']?>",content);
<?php }?>
$(document).ready(function() {
	$("#site-Pgge a").click(function(){
		var _areatype="<?=$areatype?>";
		var _areaid="<?=$areaid?>";
		var _this=this;
		var _page=$(this).attr("page");
		$.ajax({
			url:siteUrl+"base/ajax.php?s=site",
			data: "areatype="+_areatype+"&areaid="+_areaid+"&page="+_page,
			type: "get",
			dataType: "text",
			beforeSend: function(){},
			success: function(result) {
				var res = $.parseJSON(result);
				if (res.status == 1) {
					$(_this).siblings().removeClass("active");
					$(_this).addClass("active");
					$("#site-List").html(res.html);
					$(window).scroll();
				}else{//其他错误
					alert("网络链接失败！");
				}
			},
			error:function(){setRegTip(_this,"error","网络链接失败！");},
		});
	});
	var _lock=0;
	$(".site-left ul li").mouseenter(function(){
		if(_lock==0){
			_lock=1;
		//$(this).stop();
		var _x=$(this).attr("_x");
		var _y=$(this).attr("_y");
		var _siteid=$(this).attr("siteid");
		siteFlag[_siteid].infoWindow.open(siteFlag[_siteid].marker);
		var point = new BMap.Point(_x,_y);  // 创建点坐标
		map.panTo(point);  // 移动到坐标
		setTimeout(function(){_lock=0;},200);
		
		}
	});	
	$(".site-left ul li").eq(0).mouseover();
});	
</script>