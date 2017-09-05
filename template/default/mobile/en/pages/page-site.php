<?php
$nav_choose="site";
$CSS = array('');
$SCRIPT = array('');
include $TEMPLATE . 'header-site.php';

$siteList=$this->tag("m=base&t=base_14&w=`status`=1&o=`recom` DESC,id DESC");
$this->loadBuiltinModel("area");
$areaList=$this->area->listArea("340100");
//$areaList=$this->area->getAreaList("`pid` = '340100'");
?>

<div class="site-main">
	<div class="site-left">
		<div class="site-area" id="site-area"> <b>行政区</b> <a href="javascript:;" areatype="city" areaid="340100" class="active">不限</a>
			<?php foreach($areaList as $k=>$v){?>
			<a href="javascript:;"  areatype="count" areaid="<?=$v['areaid']?>">
			<?=$v['area']?>
			</a>
			<?php }?>
			<div class="clearfix"></div>
		</div>
		<div class="site-List" id="site-List">

		</div>
	</div>
	<div class="site-right">
		<div id="container"></div>
	</div>
</div>
<script type="text/javascript">

/*
$(window).height();
 $(window).scrollTop()
*/





var map = new BMap.Map("container"); 
<?php $coordinate=explode(",",$stteDefault['coordinate']);?>
//var point = new BMap.Point(<?=$coordinate[0]?>, <?=$coordinate[1]?>);  // 创建点坐标
//map.centerAndZoom(point, 13);                 // 初始化地图，设置中心点坐标和地图级别
map.centerAndZoom("合肥", 15);                 	// 初始化地图，设置中心点坐标和地图级别
map.addControl(new BMap.NavigationControl());//显示缩放工具 
map.addControl(new BMap.ScaleControl());    //显示比例尺
//map.addControl(new BMap.OverviewMapControl()); //右下角可折叠的缩略地图
map.addControl(new BMap.MapTypeControl());//添加地图类型控件
map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放



$(document).ready(function() {
	$(".site-right").height($(window).height());
	$(".site-main").css("min-height",$(window).height());
	$(window).scroll(function(){
		var scro_top=$(window).scrollTop();
		//var h2=$(".site-main").scrollTop();
		var main_top=$(".site-main").offset();
		var top_h=scro_top-main_top.top;
		var right_h=$(".site-right").height();
		var main_h=$(".site-main").height();
		if(top_h>0){
			if(top_h+right_h<main_h){
				$(".site-right").css("top",top_h);
			}else{
				$(".site-right").css("top",main_h-right_h-1);
			}
		}else{
			$(".site-right").css("top",0);
		}
	});
	$(window).resize(function(){
		$(".site-right").height($(window).height());
		$(".site-main").css("min-height",$(window).height());
		$(window).scroll();
	});
	
	$("#site-area a").click(function(){
		var _areatype=$(this).attr("areatype");
		var _areaid=$(this).attr("areaid");
		var _this=this;
		$.ajax({
			url:siteUrl+"base/ajax.php?s=site",
			data: "areatype="+_areatype+"&areaid="+_areaid,
			type: "get",
			dataType: "text",
			beforeSend: function(){},
			success: function(result) {
				var res = $.parseJSON(result);
				if (res.status == 1) {
					$(_this).siblings().removeClass("active");
					$(_this).addClass("active");
					$("#site-List").html(res.html);
					
				}else{//其他错误
					alert("网络链接失败！");
				}
			},
			error:function(){setRegTip(_this,"error","网络链接失败！");},
		});
	});
	$("#site-area a").eq(0).click();
	
});	

var siteFlag=new Array();
function setMarker(_id,_x,_y,_title,_content){
	//将创建好的对象保存到siteFlag中方便调用
	siteFlag[_id]={
		point:null,
		marker:null,
		infoWindow:null,
	};
	
	siteFlag[_id].point=new BMap.Point(_x,_y);	//创建坐标
	siteFlag[_id].marker = new BMap.Marker(siteFlag[_id].point);//创建标注
	map.addOverlay(siteFlag[_id].marker); // 将标注添加到地图中
	siteFlag[_id].marker.disableDragging();// 设置标注不可拖拽
	
	//创建检索信息窗口对象
	siteFlag[_id].infoWindow = new BMapLib.SearchInfoWindow(map,_content, {
			title  : _title,      //标题
			width  : 300,             //宽度
			height : 100,              //高度
			panel  : "panel",         //检索结果面板
			enableAutoPan : false,     //自动平移
			searchTypes   :[
				BMAPLIB_TAB_SEARCH,   //周边检索
				BMAPLIB_TAB_TO_HERE,  //到这里去
				BMAPLIB_TAB_FROM_HERE //从这里出发
			]
	});
	siteFlag[_id].marker.addEventListener("click", function(e){
		siteFlag[_id].infoWindow.open(siteFlag[_id].marker);
	});
	
}


//siteFlag[<?=$stteDefault['id']?>].infoWindow.open(siteFlag[<?=$stteDefault['id']?>].marker);






//site-right









</script>
<?php
include $TEMPLATE . 'footer.php';
?>
