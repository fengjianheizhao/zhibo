<?php
$nav_choose="site";
$CSS = array();
$SCRIPT = array();
include $TEMPLATE . 'header.php';
$sku=json_decode($detail['sku'],true);

$field_tese = $this->fields->getFieldName("tese", $MOD['mid']);
$options_tese = $this->fields->getFieldValue($field_tese);
?>

<div class="site-detail">
	<div class="site-det_header">
		<div class="m site_h">
			<div class="f_l site_hl">
				<div class="f_l pic"> <img src="<?=$detail['thumb']?>" width="410" height="300" /> </div>
				<div class="f_r info">
					<?php
				foreach($sku as $k=>$v){
					if($v['status']!=1)continue;
				?>
					<div class="skuinfo">
						<div class="hd">
							<div class="name">
								<?=$v['name']?>
							</div>
							<div class="price">
								&yen;<?=$v['price']?>元
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="tese">
							<?php $tese=explode("|",$v['tese'])?>
							<?php //$tese_val=json_decode($detail['tese'],true)?>
							<?php foreach($tese as $key=>$val){?>
							<span>
							<?=$val?>
							</span>
							<?php }?>
							<div class="clearfix"></div>
						</div>
						<div class="baoming"> <a href="javascript:;" onclick="baomingForm()" class="btn">立即报名</a> <a href="javascript:;" onclick="baomingForm()" class="zutuan">组团报名</a><div class="clearfix"></div></div>
					</div>
					<?php }?>
				</div>
			</div>
			<div class="f_r site_hr">
				<ul>
					<?php
				$i=0;
				foreach($sku as $k=>$v){
					if($v['status']!=1)continue;
				?>
					<li><em></em>
						<div class="name name<?=$i?>">
							<?=$v['name']?>
						</div>
					</li>
					<?php $i++;}?>
				</ul>
			</div>
		</div>
	</div>
	<script language="javascript">
	tabAutoLayout(".site_hr ul li",".site_hl .info .skuinfo");
	</script>
	<div class="m">
		<div class="detail_cateTitle">场地分布</div>
		<div class="detail_container" id="container" style="height:700px;"></div>
	</div>
<script language="javascript">
var siteFlag=new Array();
var map = new BMap.Map("container"); 
<?php $coordinate=explode(",",$detail['coordinate']);?>
var point = new BMap.Point(<?=$coordinate[0]?>, <?=$coordinate[1]?>);  // 创建点坐标
map.centerAndZoom(point, 15);                 // 初始化地图，设置中心点坐标和地图级别
//map.centerAndZoom("合肥", 15);                 	// 初始化地图，设置中心点坐标和地图级别
map.addControl(new BMap.NavigationControl());//显示缩放工具 
map.addControl(new BMap.ScaleControl());    //显示比例尺
//map.addControl(new BMap.OverviewMapControl()); //右下角可折叠的缩略地图
map.addControl(new BMap.MapTypeControl());//添加地图类型控件
map.enableScrollWheelZoom(true);     //开启鼠标滚轮缩放



var content = '<div style="margin:0;line-height:20px;padding:2px;">' +
		'<img src="<?=$detail['thumb']?>" alt="" style="float:right;zoom:1;overflow:hidden;width:130px;height:95px;margin-left:3px;"/>' +
		'<?=$detail['intro']?>' +
		'</div>';
setMarker(<?=$detail['id']?>,<?=$coordinate[0]?>,<?=$coordinate[1]?>,"<?=$detail['title']?>",content);
siteFlag[<?=$detail['id']?>].infoWindow.open(siteFlag[<?=$detail['id']?>].marker);


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
</script>
	<div class="m">
		<div class="detail_cateTitle">费用明细</div>
		<div class="detail_content" >
			<div class="table_feiyong" >
				<?=$detail['feiyong']?>
			</div>
		</div>
	</div>
	<div class="m">
		<div class="detail_cateTitle">报名条件</div>
		<div class="detail_content">
			<p>年   龄：18——70周岁。</p>
			<p>听   力：两耳分别距音叉50厘米能辨别声源方向；有听力障碍但佩戴助听设备能够达到以上条件。</p>
			<p>身   高：申请小型汽车C1、小型自动档汽车C2的、身高不限。 </p>
			<p>上   肢：双手拇指健全，每只手其他手指必须有三指健全，肢体和手指运动功能正常。</p>
			<p>视   力：两眼裸视力或者矫正视力达到对数视力表4.9以上。 </p>
			<p>下   肢：双下肢健全且运动功能正常，不等长度不得大于5厘米。但左下肢缺失或者丧失运动功能的， 可以申请小型自动挡汽车C2。</p>
			<p>辨色力：无红绿色盲。</p>
			<p>躯干、颈部：无运动功能障碍。</p>
		</div>
	</div>
	<div class="m">
		<div class="detail_cateTitle">准备材料</div>
		<div class="detail_content" >
			<p>（所有证件请使用A4纸复印，且都必须在有效期内）</p>
			<p>1、身份证原件及正反面复印件各2张</p>
			<p>2、一寸白底彩照6张</p>
			<p>3、外地户口：暂住证及正反面复印件各2张（本地户口不需）</p>
			<p>4、现役军人：持军官证、警官证、士兵证的，携带上述证原件并开具团级以上证明，并有部队盖章</p>
			<p>5、有摩托车E照：满一年才可报名，外地E照需把驾驶证先转到合肥才可报名</p>
			<p>详情可咨询：0551-67682351 </p>
		</div>
	</div>
	<div class="m">
		<div class="detail_cateTitle">学车流程</div>
		<div class="detail_content" style="text-align:center;" >
			<ul class="base_info">
				<li class="info"> <i class="icon icon_01"></i> <b>在线选班次</b> <em>在线挑选班次，学费在线支付</em> </li>
				<li class="arrow"><i class="icon_arrow"></i></li>
				<li class="info"> <i class="icon icon_02"></i> <b>专车接送看场地</b> <em>专车接送看场地，无忧满意再报名</em> </li>
				<li class="arrow"><i class="icon_arrow"></i></li>
				<li class="info"> <i class="icon icon_03"></i> <b>协助办理报名手续</b> <em>学车顾问协助办理报名和体检手续</em> </li>
				<li class="arrow"><i class="icon_arrow"></i></li>
				<li class="info"> <i class="icon icon_04"></i> <b>签订学车合同</b> <em>签订学车合同，启动学车保障</em> </li>
				<li class="arrow"><i class="icon_arrow"></i></li>
				<li class="info"> <i class="icon icon_05"></i> <b>安排学车流程</b> <em>安排学车流程，进入学车阶段</em> </li>
				<div class="clearfix"></div>
			</ul>
		</div>
	</div>
	<div class="m">
		<div class="detail_cateTitle">学车保障</div>
		<div class="detail_content" style="text-align:center;" >
			<ul class="base_info2">
				<li class="info"> <i class="icon icon_01"></i> <b>就近练车</b> <em>提供最近场地练车，省时、省力方便快捷</em> </li>
				<li class="info"> <i class="icon icon_02"></i> <b>赠送人身意外险</b> <em>赠送人身意外险，学车安全平安放心</em> </li>
				<li class="info"> <i class="icon icon_03"></i> <b>分期学车</b> <em>可分期，解决学车费用欠缺问题，学车更省心</em> </li>
				<li class="info"> <i class="icon icon_04"></i> <b>先试学，后付款</b> <em>试学满意再付款，学车再也无烦恼</em> </li>
				<div class="clearfix"></div>
			</ul>
		</div>
	</div>
</div>

<div class="" id="baoming" style="display:none;">
<textarea  id="baomingFormHtml" >
	<div class="baomingForm">
	<form id="baomingForm" class="baomingForm" target="_blank" method="post" action="<?=$URL->setUrl("?m=baoming&ac=ajax&s=submit");?>">
		<input name="mod"  value="<?=$m?>"  type="hidden" />
		<input name="data[itemid]" id="data_itemid" value="<?=$detail['id']?>"  type="hidden" />
		<input name="data[itemtitle]"  id="data_itemtitle" value="<?=$detail['title']?>"  type="hidden" />
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tr>
				<td align="right"><div class="txt">姓&nbsp;&nbsp;&nbsp;&nbsp;名：</div></td>
				<td><div class="con"><input name="data[name]" class="objinput objinput_long" id="data_name" type="text" autocomplete="off" placeholder="请输入您的姓名" /></div></td>
			</tr>
			<tr>
				<td align="right"><div class="txt">手&nbsp;&nbsp;&nbsp;&nbsp;机：</div></td>
				<td><div class="con"><input name="data[phonenum]" class="objinput objinput_long" id="data_phonenum" type="text" autocomplete="off" placeholder="请输入您的手机号码" /></div></td>
			</tr>
			<tr>
				<td align="right"><div class="txt">报名班次：</div></td>
				<td><div class="con">
					<div class="inputSelect" style="width:270px;">
						<input name="data[banji]" id="data_banji"  value="0"  type="hidden" />
						<div class="option_selected"><span class="value">请选择报名班次</span><span class="caret"><i></i></span></div>
						<ul class="options_list" style="display:none;">
							<?php
							foreach($sku as $k=>$v){
								if($v['status']!=1)continue;
							?>
							<li data-name="<?=$v['name']?>（<?=$v['price']?>元）" data-value="<?=$v['name']?>（<?=$v['price']?>元）"><?=$v['name']?>（<?=$v['price']?>元）</li>
							<?php }?>
						</ul>
					</div>
				</div></td>
				<tr>
				<td colspan="2"><div class="con"><a href="javascript:;" onclick="baomingFormSubmit()" class="inputSubmit" >马上报名</a></div></td>
				</tr>
			</tr>
		</table>
	</form>
	</div>
</textarea>
</div>
<script language="javascript">
function baomingForm(){
	var _Formhtml=$("#baoming #baomingFormHtml").val();
	popupsShow(500,"学车报名",_Formhtml);
	$(document).ready(function() {	
		$(document).bind("click",function(e){
			var target  = $(e.target);
			var _len2=target.closest(".inputSelect").length;
			var _len3=target.closest(".options_list").length;
			if(_len2==0||_len3>0){
				$(".inputSelect .options_list").hide();
			}
		});
		$(".inputSelect").click(function(){
			$(this).find(".options_list").show();
		});
		
		$(".inputSelect .options_list li").click(function(){
			$(this).closest(".options_list").hide();
			var _Dname=$(this).attr("data-name");
			var _Dvalue=$(this).attr("data-value");
			$(this).addClass("choose").siblings("li").removeClass("choose");
			$(this).closest(".inputSelect").find("input").val(_Dvalue).change();
			$(this).closest(".inputSelect").find(".option_selected .value").html(_Dname);
		});
		$('.inputSelect').each(function(){
			var defValue=$(this).find(".options_list .choose");
			if(defValue.length>0){
				var _Dname=defValue.eq(0).attr("data-name");
				var _Dvalue=defValue.eq(0).attr("data-value");
				$(this).find("input").val(_Dvalue).change();
				$(this).find(".option_selected .value").html(_Dname);
			}
		});
	});
}
var baomingSubmitLock=0;
function baomingFormSubmit(){
	if(baomingSubmitLock==0){
		var data_name=$("#data_name").val();
		var data_phonenum=$("#data_phonenum").val();
		var data_banji=$("#data_banji").val();
		
		if(data_name.length<2){
			$("#data_name").focus();
			return;
		}
		if(data_phonenum.length!=11){
			$("#data_phonenum").focus();
			return;
		}
		if(data_banji=="0"){
			$("#data_banji").click();
			return;
		}
		
		$("#baomingForm").ajaxSubmit({
			type: "post",
			dataType: "text",
			beforeSubmit: function() {baomingSubmitLock=1;},
			success: function(result) {
				baomingSubmitLock=0;
				var res = $.parseJSON(result);
				if (res.status == 1) {
					showTips("报名成功！",0,"");
				}else{
					showTips(res.text,0,"");
				}
			},
			error: function() {
				baomingSubmitLock=0;
				ajax_error();
			}
		});
	}
	return false;			
};
</script>
<?php
include $TEMPLATE . 'footer.php';
?>
