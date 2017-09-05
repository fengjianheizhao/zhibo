function popupsShow(_width,title,content,_bg){
	//alert(555);
	if(typeof(_bg)=="undefined"){
		var _bg=true;
	}
	var _itemId = new Date().valueOf() + (Math.random() * 1000000000000000000);
	var _boxId='popups_'+_itemId;
	if(_bg==true){
		var _bgHtml='<div class="popupsBg" id="popupsBg_'+_itemId+'"></div>';
	}else{
		var _bgHtml='';
	}
	var _html=_bgHtml
		+'<div class="popups" id="popups_'+_itemId+'" itemid="'+_itemId+'">'
			+'<div class="head">'
				+'<span class="title">'+title+'</span>'
				+'<a class="close" href="javascript:;" onclick="popupsClose(this)"></a>'
			+'</div>'
			+'<div class="body">'+content+'</div>'
		+'</div>';
	
	$("body").append(_html);
	
	var _WH = $(window).height();//窗口高度
	var _height = $("#"+_boxId).height();//弹出层高度
	var _top = $(window).scrollTop() + _WH/2;
	var _mLeft=(_width / 2);
	var _mTop=(_height / 2);
	_top=(_top-_mTop<20)?_mTop+20:_top;

	$("#"+_boxId).css("width", _width + "px");
	$("#"+_boxId).css("margin-left", -(_mLeft) + "px");
	$("#"+_boxId).css("margin-top", -(_mTop) + "px");
	$("#"+_boxId).css("top", _top + "px");
	
	return _itemId;
}

function popupsClose(_this){
	var _itemId=$(_this).closest(".popups").attr("itemid");
	if($("#popupsBg_"+_itemId).length>0){
		$("#popupsBg_"+_itemId).remove();//关闭灰色背景层
	}
	$(_this).closest(".popups").remove();//关闭窗口
}


function showTips(text,status,par){
	var _html='<div class="tipsBox"><div class="tipsHtml">'+text+'</div><div class="tipsBtn"><a href="javascript:;" onclick="closeTips(this,\''+status+'\',\''+par+'\')">确定</a></div></div>';
	popupsShow(250,"系统提示",_html,true);
}
function closeTips(_this,status,par){
	if(status==1){//刷新当前页面
		location.replace();
	}else if(status==2){//跳转页面
		window.location.href=par; 
	}
	popupsClose(_this);
}
