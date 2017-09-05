// JavaScript Document
function set_area(_obj) {
	var _pid = $(_obj).val();
	$.ajax({
		url: "?m=setting&c=ajax&a=area&pid=" + _pid,
		data: "",
		type: "get",
		dataType: "text",
		beforeSend: function () {},
		success: function (result) {
			var res = $.parseJSON(result);
			if (res.status == 1) {
				$(_obj).closest(".selector").nextAll(".selector").remove();
				$(_obj).closest(".selector").after(res.text)
			} else {
				warning("系统提示", res.text);
			}
		},
		error: ajax_error
	});
}

/*
function clearCache() {
	$.ajax({
		url: "?m=setting&c=ajax&a=clearcache",
		data: "",
		type: "get",
		dataType: "text",
		beforeSend: function () {},
		success: function (result) {
			var res = $.parseJSON(result);
			if (res.status == 1) {
				warning("系统提示", res.text);
			} else {
				warning("系统提示", res.text);
			}
		},
		error: ajax_error
	});
}
*/
function ajax_error() {
	$("#show_success").hide();
	warning("系统提示", "网络连接失败，请检查网络连接！");
}
function go2url(url) {
	window.location.href = url;
}

function loginbox_submit() {
	$("#login").ajaxSubmit({
		data: "",
		type: "post",
		dataType: "text",
		beforeSubmit: function () {},
		success: function (result) {
			var res = $.parseJSON(result);
			if (res.status == 1) {
				document.getElementById("login").reset();
				loginbox.remove();
				warning("系统提示", "恭喜您，登陆成功！");
			} else if (res.status == 0) {
				warning("系统提示", "登陆失败，用户名和密码不能为空！");
			} else if (res.status == 0) {
				warning("系统提示", "登陆失败，用户名或密码错误！");
			}
		},
		error: ajax_error
	});
	return false;
}

var ajaxSubmitLock = 0;
function ajaxSubmit(_obj) {
	if (ajaxSubmitLock == 0) {
		$(_obj).ajaxSubmit({
			data: "",
			type: "post",
			dataType: "text",
			beforeSubmit: function () {
				ajaxSubmitLock = 1;
			},
			success: function (result) {
				ajaxSubmitLock = 0;
				var res = $.parseJSON(result);
				if (res.status == 1) {
					var _jump = $("#formjump").val();
					if (_jump.length > 0) {
						location.href = _jump;
					} else if (typeof (res.jump) != "undefined" && res.jump) {
						location.href = res.jump;
					} else {
						window.location.reload();
					}
				} else if (res.status == 2) {
					location.href = res.jump;
				} else if (res.status == 3) {
					warning("系统提示", res.text);
				} else if (res.status == 4) {
					location.reload(0);
				} else if (res.status == 0) {
					warning("系统提示", res.text);
				}
			},
			error: function () {
				ajaxSubmitLock = 0;
				ajax_error();
			}
		});
	}
	return false;
}






function warning(title, content) {
	var dialog = KindEditor.dialog({
		width: 350,
		title: title,
		body: '<div style="margin:10px;"><strong>' + content + '</strong></div>',
		closeBtn: {
			name: '关闭',
			click: function (e) {
				dialog.remove();
			}
		},
		noBtn: {
			name: '确定',
			click: function (e) {
				dialog.remove();
			}
		}
	});
}


function itemremove(par, is_delete) {
	if (is_delete) {
		var prompt_text = "您确定要<b><font color=red>彻底删除</font></b>当前内容吗？彻底删除的内容将无法找回！";
	} else {
		var prompt_text = "您确定要删除当前内容吗？删除的内容可以在回收站还原！";
	}
	var itemremovebox = KindEditor.dialog({
		width: 400,
		title: '系统提示',
		body: '<div style="margin:10px;"><strong>' + prompt_text + '</strong></div>',
		closeBtn: {
			name: '关闭',
			click: function (e) {
				itemremovebox.remove();
			}
		},
		yesBtn: {
			name: '确定',
			click: function (e) {
				$.ajax({
					url: par,
					data: "",
					type: "get",
					dataType: "text",
					beforeSend: function () {},
					success: function (result) {
						itemremovebox.remove();
						var res = $.parseJSON(result);
						if (res.status == 1) {
							$("#itemlist_" + res.itemid).remove();
						} else {
							warning("系统提示", "删除失败，" + res.text);
						}
					},
					error: ajax_error
				});
			}
		},
		noBtn: {
			name: '取消',
			click: function (e) {
				itemremovebox.remove();
			}
		}
	});
}
function listremove(par, is_delete) {
	if (is_delete) {
		var prompt_text = "您确定要<b><font color=red>彻底删除</font></b>选中内容吗？彻底删除的内容将无法找回！";
	} else {
		var prompt_text = "您确定要删除选中内容吗？删除的内容可以在回收站还原！";
	}
	var itemremovebox = KindEditor.dialog({
		width: 400,
		title: '系统提示',
		body: '<div style="margin:10px;"><strong>' + prompt_text + '</strong></div>',
		closeBtn: {
			name: '关闭',
			click: function (e) {
				itemremovebox.remove();
			}
		},
		yesBtn: {
			name: '确定',
			click: function (e) {
				$("#formbox").ajaxSubmit({
					url: par,
					data: "",
					type: "post",
					dataType: "text",
					beforeSubmit: function () {},
					success: function (result) {
						itemremovebox.remove();
						var res = $.parseJSON(result);
						if (res.status == 1) {
							//刷新页面
							window.location.reload();
						} else if (res.status == 0) {
							warning("系统提示", "删除失败，" + res.text);
						}
					},
					error: ajax_error
				});
			}
		},
		noBtn: {
			name: '取消',
			click: function (e) {
				itemremovebox.remove();
			}
		}
	});
	return false;
}
function itemRevert(par) {
	var itemremovebox = KindEditor.dialog({
		width: 400,
		title: '系统提示',
		body: '<div style="margin:10px;"><strong>您确定要还原这条信息吗？</strong></div>',
		closeBtn: {
			name: '关闭',
			click: function (e) {
				itemremovebox.remove();
			}
		},
		yesBtn: {
			name: '确定',
			click: function (e) {
				$.ajax({
					url: par,
					data: "",
					type: "get",
					dataType: "text",
					beforeSend: function () {},
					success: function (result) {
						itemremovebox.remove();
						var res = $.parseJSON(result);
						if (res.status == 1) {
							$("#itemlist_" + res.itemid).remove();
							warning("系统提示", "还原成功，您可以到列表中查看！");
						} else {
							warning("系统提示", "还原失败，" + res.text);
						}
					},
					error: ajax_error
				});
			}
		},
		noBtn: {
			name: '取消',
			click: function (e) {
				itemremovebox.remove();
			}
		}
	});
}
function listRevert(par) {
	var itemremovebox = KindEditor.dialog({
		width: 400,
		title: '系统提示',
		body: '<div style="margin:10px;"><strong>您确定要还原选中的信息吗？</strong></div>',
		closeBtn: {
			name: '关闭',
			click: function (e) {
				itemremovebox.remove();
			}
		},
		yesBtn: {
			name: '确定',
			click: function (e) {
				$("#itemlist").ajaxSubmit({
					url: par,
					data: "",
					type: "post",
					dataType: "text",
					beforeSubmit: function () {},
					success: function (result) {
						itemremovebox.remove();
						var res = $.parseJSON(result);
						if (res.status == 1) {
							//刷新页面
							window.location.reload();
						} else if (res.status == 0) {
							warning("系统提示", "还原失败，" + res.text);
						}
					},
					error: ajax_error
				});
			}
		},
		noBtn: {
			name: '取消',
			click: function (e) {
				itemremovebox.remove();
			}
		}
	});
	return false;
}


function recommend(obj, itemid, mod, ad_skin) {
	$.ajax({
		url: "?m=" + mod + "&c=ajax&a=recommend&itemid=" + itemid,
		data: "",
		type: "get",
		dataType: "text",
		beforeSend: function () {},
		success: function (result) {
			var res = $.parseJSON(result);
			if (res.status == 1) {
				if (res.recom == 0) {
					$(obj).contents("img").attr("src", ad_skin + "img/icons/button-white-remove.png");
				} else {
					$(obj).contents("img").attr("src", ad_skin + "img/icons/button-check.png");
					$(obj).closest("tr").insertBefore($(obj).closest("tr").siblings("tr").eq(0));
				}
			} else {
				warning("系统提示", res.text);
			}
		},
		error: ajax_error
	});
}

function toggle(obj, itemid, type, mod, ad_skin) {
	$.ajax({
		url: "?m=" + mod + "&c=ajax&a=" + type + "&itemid=" + itemid,
		data: "",
		type: "get",
		dataType: "text",
		beforeSend: function () {},
		success: function (result) {
			var res = $.parseJSON(result);
			if (res.status == 1) {
				if (res.toggle == 0) {
					$(obj).contents("img").attr("src", ad_skin + "img/icons/button-white-remove.png");
				} else {
					$(obj).contents("img").attr("src", ad_skin + "img/icons/button-check.png");
				}
			} else {
				warning("系统提示", res.text);
			}
		},
		error: ajax_error
	});
}


function ads_type_tog(type) {
	if (type == '1' || type == '2' || type == '5') {
		$("#ads-type-code").hide();
		$("#ads-image-size").show();
		$("#ads-content-list").show();
	} else if (type == '4') {
		$("#ads-type-code").hide();
		$("#ads-image-size").hide();
		$("#ads-content-list").show();
	} else if (type == '3') {
		$("#ads-image-size").hide();
		$("#ads-content-list").hide();
		$("#ads-type-code").show();
	}
}
function ads_thumb_upload(obj) {
	var bind = $(obj).attr("bind");
	var ads_thumb_up = KindEditor.editor({
		allowFileManager: true
	});
	ads_thumb_up.loadPlugin('image', function () {
		ads_thumb_up.plugin.imageDialog({
			imageUrl: $('#' + bind).val(),
			clickFn: function (url, title, width, height, border, align) {
				$('#' + bind).val(url);
				ads_thumb_up.hideDialog();
			}
		});
	});
}
function ads_remove(_itemid) {
	var _adsid = parseInt($("#detail-itemid-" + _itemid).val());
	if (_adsid == 0) {
		$("#itemlist_" + _itemid).remove();
	} else {
		$.ajax({
			url: inlet + "?m=ads&c=ajax&a=removeads&itemid=" + _itemid,
			data: "",
			type: "get",
			dataType: "text",
			beforeSend: function () {
			},
			success: function (result) {
				var res = $.parseJSON(result);
				if (res.status == 1) {
					warning("系统提示", res.text);
					$("#itemlist_" + res.itemid).remove();
				} else {
					warning("系统提示", res.text);
				}
			},
			error: ajax_error
		});
	}
}


function field_formtype(_obj) {
	var allow = Array("select", "radio", "checkbox");
	_val = $(_obj).val();
	if (in_array(_val, allow)) {
		$("#detail-options_box").show();
	} else {
		$("#detail-options_box").hide();
	}

}

function fieldcheck(_obj, mod) {
	var _val = $(_obj).val();
	$.ajax({
		url: inlet + "?m=fields&c=ajax&a=fieldcheck&fieldname=" + _val + "&mod=" + mod,
		data: "",
		type: "get",
		dataType: "text",
		beforeSend: function () {
		},
		success: function (result) {
			var res = $.parseJSON(result);
			$(_obj).siblings("span").find(".prompt").eq(0).html(res.text);
		},
		error: ajax_error
	});
}


function in_array(search, array) {
	for (var i in array) {
		if (array[i] == search) {
			return true;
		}
	}
	return false;
}



/* 附件列表相关 开始 */
var setannexs;
var backannexsid;
function set_annexs(boxid, mod) {
	backannexsid = boxid;
	var _value = $("#" + boxid).val();
	//alert(_value);
	$.ajax({
		url: "?m=" + mod + "&c=ajax&a=setannexs",
		data: 'annexs=' + _value + '&backid=' + boxid,
		type: "get",
		dataType: "text",
		beforeSend: function () {},
		success: function (result) {
			setannexs = KindEditor.dialog({
				width: 400,
				//height: ,
				title: '设置关联文档',
				body: "<div style=\"margin:10px;\">" + result + "</div>",
				closeBtn: {
					name: '关闭',
					click: function (e) {
						setannexs.remove();
					}
				},
				yesBtn: {
					name: '确定',
					click: function (e) {
						$("#backannexsform").ajaxSubmit({
							data: "",
							type: "post",
							dataType: "text",
							beforeSubmit: function () {},
							success: function (result) {
								var res = $.parseJSON(result);
								$("#" + res.backid).val(res.backvalue);
								setannexs.remove();
							},
							error: ajax_error
						});
						return false;
					}
				},
				noBtn: {
					name: '取消',
					click: function (e) {
						setannexs.remove();
					}
				}
			});

		},
		error: ajax_error
	});
}

function set_annexs_edit(boxid) {
	$("#showbox-" + boxid).hide();
	$("#editbox-" + boxid).show();
}
function set_annexs_save(boxid) {
	$("#editbox-" + boxid).hide();
	$("#showbox-" + boxid).show();
	var _title = $("#input-name-" + boxid).val();
	$("#showbox-" + boxid + " .file-list-title a").html(_title);
}
function set_annexs_add() {
	var annex_key = parseInt($("#annexs-maxkey").val()) + 1;
	var annexsupload = KindEditor.editor({
		allowFileManager: true
	});
	annexsupload.loadPlugin('insertfile',
			function () {
				annexsupload.plugin.fileDialog({
					fileUrl: "",
					fileTitle: "请输入文档名称，以免忘记",
					clickFn: function (url, title) {
						var _html = get_annex_html(annex_key, url, title);
						$("#annexs-upload-title").after(_html);
						$("#annexs-maxkey").val(annex_key);
						var autoheight = $(".ke-dialog-header").height() + $(".ke-dialog-footer").height() + $(".ke-dialog-body").height() + 12;
						$(".ke-dialog").height(autoheight);
						annexsupload.hideDialog();
					}
				});
			});
}
function set_annexs_remove(boxid) {
	$("#editbox-" + boxid).remove();
	$("#showbox-" + boxid).remove();
	var autoheight = $(".ke-dialog-header").height() + $(".ke-dialog-footer").height() + $(".ke-dialog-body").height() + 12;
	$(".ke-dialog").height(autoheight);
}
function get_annex_html(boxid, url, title) {
	var _html = '<tr id="showbox-' + boxid + '" class="showbox">' + '<td ><div class="file-list-title"><a href="' + url + '" target="_blank">' + title + '</a></div></td>' + '<td width="70"><div class="file-list-right"><span><a href="javascript:;" onclick="set_annexs_edit(\'' + boxid + '\')">修改</a></span>&nbsp;&nbsp;<span><a href="javascript:;" onclick="set_annexs_remove(\'' + boxid + '\')">删除</a></span></div></td>' + '</tr>' + '<tr id="editbox-' + boxid + '" class="editbox" style="display:none;">' + '<td  valign="baseline"><div class="file-list-title">' + '<input id="input-name-' + boxid + '"  name="annexs[title][]"  value="' + title + '"  />' + '<input id="input-url-' + boxid + '"  name="annexs[url][]"  value=\'' + url + '\' type="hidden"  />' + '</div></td>' + '<td width="70"><div class="file-list-right"><a href="javascript:;" onclick="set_annexs_save(\'' + boxid + '\')">保存</a></div></td>' + '</tr>';
	return _html;
}


var BDmap = null;
var BDmarker = null;
function setBmap(_id) {
	var _obj = $("#" + _id);
	var dialog = KindEditor.dialog({
		width: 520,
		title: "请在地图上标注位置",
		body: '<div class="bmapbox"><div class="bmapsearch">' +
				'<input type="text" value="" id="BDsearchaddress" />' +
				'<a href="javascript:;" onclick="BDsearch($(\'#BDsearchaddress\').val())">搜索</a>' +
				'<a href="javascript:;" onclick="BDmapMarker(\'' + _id + '\')">设置标注</a>' +
				'</div><div class="setbmapbox" id="setbmapbox-' + _id + '" ></div></div>',
		closeBtn: {
			name: '关闭',
			click: function (e) {
				dialog.remove();
			}
		},
		noBtn: {
			name: '保存坐标位置',
			click: function (e) {
				var p = BDmarker.getPosition();
				_obj.val(p.lng + "," + p.lat);
				dialog.remove();
			}
		}
	});
	var coordinate = _obj.val();
	if (coordinate) {
		var _coordinate = coordinate.split(",");
	} else {
		var _coordinate = "116.404, 39.915".split(",");
	}
	BDmap = new BMap.Map('setbmapbox-' + _id);
	var BDpoint = new BMap.Point(_coordinate[0], _coordinate[1]);
	BDmap.centerAndZoom(BDpoint, 15);
	BDmap.enableScrollWheelZoom();   //启用滚轮放大缩小，默认禁用
	BDmap.enableContinuousZoom();    //启用地图惯性拖拽，默认禁用
	BDmap.addControl(new BMap.ScaleControl({anchor: BMAP_ANCHOR_BOTTOM_LEFT}));// 左上角，添加比例尺
	//map.addControl(new BMap.NavigationControl());  //左上角，添加默认缩放平移控件
	BDmap.addControl(new BMap.NavigationControl({anchor: BMAP_ANCHOR_TOP_RIGHT, type: BMAP_NAVIGATION_CONTROL_SMALL})); //右上角，仅包含平移和缩放按钮
	BDmarker = new BMap.Marker(BDpoint);// 创建标注
	BDmap.addOverlay(BDmarker); // 将标注添加到地图中
	BDmarker.enableDragging();//设置标注可被拖拽
	BDmarker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
	//marker.disableDragging();// 设置标注不可拖拽
	//对标注添加鼠标左键弹起事件，用于拖动标注后放开时获取当前标注坐标
	BDmarker.addEventListener("mouseup", function () {
		var p = BDmarker.getPosition();      //获取marker的位置
		_obj.val(p.lng + "," + p.lat);
		//alert("marker的位置是" + p.lng + "," + p.lat);   
	});
}

//百度地图搜索
function BDsearch(_address) {
	var local = new BMap.LocalSearch(BDmap, {
		renderOptions: {map: BDmap}
	});
	local.search(_address);
}

//添加地图标注
function BDmapMarker(_id) {
	var _obj = $("#" + _id);
	BDmap.removeOverlay(BDmarker);//删除原来标注
	BDmarker = new BMap.Marker(BDmap.getCenter());// 创建新标注
	BDmap.addOverlay(BDmarker); // 将标注添加到地图中
	BDmarker.enableDragging();//设置标注可被拖拽
	//marker.disableDragging();// 设置标注不可拖拽
	BDmarker.setAnimation(BMAP_ANIMATION_BOUNCE); //跳动的动画
	//对标注添加鼠标左键弹起事件，用于拖动标注后放开时获取当前标注坐标
	BDmarker.addEventListener("mouseup", function () {
		var p = BDmarker.getPosition();      //获取marker的位置
		_obj.val(p.lng + "," + p.lat);
		//alert("marker的位置是" + p.lng + "," + p.lat);   
	});
}


function setFieldVal(_this, _mod, _tip) {

	_tip = _tip === "undefined" ? true : _tip;
	$(_this).attr("checked", "checked");
	//var _value=$(_this).val();
	var _value = $(_this).attr("value");
	var _name = $(_this).attr("name");
	var _itemid = $(_this).attr("itemid");

	//var _checked=$(_this)
	//$('input:radio[name="list"]:checked')
	$.ajax({
		url: inlet + "?m=" + _mod + "&c=ajax&a=setfieldval",
		data: "name=" + _name + "&value=" + _value + "&itemid=" + _itemid,
		type: "get",
		dataType: "text",
		beforeSend: function () {},
		success: function (result) {
			var res = $.parseJSON(result);
			if (res.status == 1) {
				if (_tip == true) {
					warning("系统提示", "设置成功！");
				}
				//$("#itemlist_" + res.itemid).remove();
			} else {
				if (_tip == true) {
					warning("系统提示", "设置失败！");
				}
			}
		},
		error: ajax_error
	});

}

function setListShow(_this, _mod) {
	var _value = $(_this).attr("value");
	if (_value == 2) {
		$(_this).attr("value", "1");
		$(_this).contents("img").attr("src", "/admin/tpl/style/img/icons/button-white-remove.png");
	} else {
		$(_this).attr("value", "2");
		$(_this).contents("img").attr("src", "/admin/tpl/style/img/icons/button-check.png");
	}
	setFieldVal(_this, _mod, false);


}