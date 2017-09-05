var phoneNumPartten =  /^0?1[3|4|5|8|7][0-9]\d{8}$/;//验证手机号正则表达式



function tabAutoLayout(_tab,_cont){
	$(_cont).hide();
	$(_cont).eq(0).show();
	$(_tab).removeClass("choose");
	$(_tab).eq(0).addClass("choose");
	
	$(_tab).bind("mouseover",function(){
		$(this).addClass("choose").siblings().removeClass("choose");
		$(_cont).hide();
		$(_cont).eq($(this).index()).show();
	});	
}

function tabClickLayout(_tab,_cont){
	$(_cont).hide();
	$(_cont).eq(0).show();
	$(_tab).removeClass("choose");
	$(_tab).eq(0).addClass("choose");
	
	$(_tab).bind("click",function(){
		$(this).addClass("choose").siblings().removeClass("choose");
		$(_cont).hide();
		$(_cont).eq($(this).index()).show();
	});
}


function tabSlideLayout(_tab){
	var _obj=$(_tab).closest("ul");
	_obj.contents("li").removeClass("choose");
	var num=_obj.contents("li").length/6;
	_obj.contents("li").eq(0).addClass("choose");
	_obj.contents("li").eq(num).addClass("choose");
	_obj.contents("li").eq(num*2).addClass("choose");
	_obj.contents("li").eq(num*3).addClass("choose");
	_obj.contents("li").eq(num*4).addClass("choose");
	_obj.contents("li").eq(num*5).addClass("choose");
	
	_obj.contents("li").bind("mouseover",function(){
		var _pichide=$(this).attr("pichide");
		if(_pichide!=1){
			$(this).addClass("choose").siblings().removeClass("choose");
		}
	});
}


$(document).ready(function() {	
	$(window).scroll(function(){
		var _scrollTop=parseInt($(window).scrollTop());
		var _bodyHeight=parseInt($("body").height());
		var _windowHeight=parseInt($(window).height());

		if ($(window).scrollTop()>300){
			$("#controllerRight").fadeIn(500);
			$(".indexSideBar .goTop").fadeIn(500);
		}else {
			$("#controllerRight").fadeOut(500);
			$(".indexSideBar .goTop").fadeOut(500);
		}
	});
	$("#goTop").click(function(){
		$('body,html').animate({scrollTop:0},300);  
        return false;  
	});
	
	/*
	$("#search_select #select_btn").click(function() {
		$("#search_select #select_list").show();
		$("#search_select #select_btn .arrow i").addClass("choose");
	});
	*/
	/*
	$(document).bind("click",function(e){
		var target  = $(e.target);
		var _len=target.closest("#search_select").length;
		if(_len==0){
			$("#search_select #select_list").hide();
			$("#search_select #select_btn .arrow i").removeClass("choose");
		}
		
		var _len2=target.closest(".inputSelect").length;
		var _len3=target.closest(".options_list").length;
		if(_len2==0||_len3>0){
			$(".inputSelect .options_list").hide();
		}
	});
	*/
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



var ajaxSubmitLock=0;
function ajaxSubmit(_obj) {
	if(ajaxSubmitLock==0){
		$(_obj).ajaxSubmit({
			data: "",
			type: "post",
			dataType: "text",
			beforeSubmit: function() {ajaxSubmitLock=1;},
			success: function(result) {
				ajaxSubmitLock=0;
				var res = $.parseJSON(result);
				if (res.status == 1) {
					
					var _mvq = window._mvq || [];window._mvq = _mvq;
					_mvq.push(['$setAccount', 'm-194184-0']);
					_mvq.push(['$setGeneral', 'registered', '', /*用户名*/ '', /*用户id*/ Math.random()]);
					_mvq.push(['$logConversion']);
					
					var _jump=$("#formjump").val();
					if(_jump){
						
						
						location.href = _jump;
					}else{
						location.href = res.jump;
					}
				}else if(res.status == 2){
					location.href = res.jump;
				}else if(res.status == 3){
					$(_obj)[0].reset();
					alert(res.text);
				} else if (res.status == 0) {
					alert(res.text);
				}
			},
			error: function() {
				ajaxSubmitLock=0;
				ajax_error();
			}
		});
	}
    return false;
}

function ajax_error(){alert("网络连接失败！");}










