<?php
defined('IN_SYSTEM') or exit('Access Denied');?>
<?php include $TEMPLATE_PATH . "header.php"; ?>
<?php include $TEMPLATE_PATH . "left.php"; ?>
<!-- CONTENT-->
<div id="content" class="white">
	<div class="bloc">
		<div class="title">添加广告位</div>
		<div class="content">
			<script language="javascript">
				var editor;
				KindEditor.ready(function(K) {
					editor_ads = K.create("#detail-content", {
						allowFileManager: true,
						filterMode:false,
						afterBlur: function() {
							this.sync();
						}
					});
				});
			</script>
			<form action="?m=<?= $m ?>&c=ajax&a=add"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
				<div class="input">
					<label for="detail-title">广告位名称</label>
					<input style="width:350px;"  name="detail[title]" type="text" id="detail-title" value="" />
					<span class="red"><b>*</b></span> 请填写广告位标题 </div>
				<div class="input">
					<label>广告位类型</label>
					<div class="update-box">
					<?php 
					foreach($adstype as $k=>$v){
					?>
						<input  name="detail[type]" type="radio" id="detail-type1" value="<?=$k?>" onclick="ads_type_tog('<?=$k?>')" <?= $k == 1 ? "checked=\"checked\"" : "" ?>/>
						<label for="radio2" class="inline"><?=$v?></label>
					<?php
					}
					?>

					</div>
				</div>
				<div class="ads-content"> 
					<!--图片广告-->
					<div class="ads-image-size" id="ads-image-size">
						<div class="input">
							<label for="detail-width">广告位宽度（px）</label>
							<input style="width:100px;"  name="detail[width]" type="text" id="detail-width" value="" />
							<span class="red"><b>*</b></span> 请填写广告位宽度 </div>
						<div class="input">
							<label for="detail-height">广告位高度（px）</label>
							<input style="width:100px;"  name="detail[height]" type="text" id="detail-height" value="" />
							<span class="red"><b>*</b></span> 请填写广告位高度 </div>
						
					</div>
					<div class="ads-content-list" id="ads-content-list">
						<div class="h20px"></div>
						<table>
							<thead>
								<tr>
									<th width="40" style="text-align:center;">ID</th>
									<th width="25%">广告标题</th>
									<th width="30%">广告图片</th>
									<th width="20%">广告链接</th>
									<th style="text-align:center;" width="5%">排序</th>
									<th style="text-align:center;" width="5%">状态</th>
									<th style="text-align:center;" width="10%">操作</th>
								</tr>
							</thead>
							<tbody id="ads-list-box">
								<tr id="itemlist_0">
									<td style="text-align:center;"><div class="input">0</div></td>
									<td><div class="input">
											<input type="hidden"  id="detail-itemid-0" value="0" />
											<input style="width:80%;"  name="title" type="text" id="detail-title-0" value="" />
										</div></td>
									<td><div class="input">
											<div class="update-box">
												<input style="width:55%;"  name="thumb" type="text" id="detail-thumb-0" value="" class="update-input" />
												<input type="button" style="width:60px;" id="detail-thumb-btn" class="update-btn detail-thumb-btn" onclick="ads_thumb_upload(this)"  bind="detail-thumb-0"  value="选择图片" />
											</div>
										</div></td>
									<td><div class="input">
											<input style="width:80%;"  name="linkurl" type="text" id="detail-linkurl-0" value="" />
										</div></td>
									<td><div class="input">
											<input style="width:80%;"  name="sort" type="text" id="detail-sort-0" value="100" />
										</div></td>
									<td style="text-align:center;"><div class="">
											<input type="checkbox" id="detail-status-0" value="1"  checked="checked"/>
										</div></td>
									<td style="text-align:center;"><div class="submit">
											<input type="button" value="添加" onclick="ads_add()" />
										</div></td>
								</tr>
							</tbody>
						</table>
						<div class="h20px"></div>
					</div>
					<!--代码广告-->
					<div class="ads-type-code" id="ads-type-code" style="display:none">
						<div class="input textarea">
							<label for="detail-content">代码广告位内容</label>
							<textarea name="detail[content]" id="detail-content" style="width:700px; height:300px;" rows="5" cols="4"></textarea>
							<span class="red"><b>*</b></span> 请填写广告位内容 </div>
					</div>
				</div>
				<div class="h20px"></div>
				<div class="submit">
					<input type="hidden" value="?m=<?= $m ?>&c=list" id="formjump" />
					<input type="submit" value="立即发布" />
					<input type="reset" value="重置" class="black" />
				</div>
				<div class="h100px"></div>
			</form>
		</div>
	</div>
<?php include $TEMPLATE_PATH . "footer.php"; ?>
<script language="javascript">		
function ads_add() {
	var _itemid = parseInt($("#detail-itemid-0").val()) + 1;
	var _action = $("#detail-action-0").val();
	var _title = $("#detail-title-0").val();
	var _thumb = $("#detail-thumb-0").val();
	var _linkurl = $("#detail-linkurl-0").val();
	var _sort = $("#detail-sort-0").val();
	var _status = $("#detail-status-0").attr("checked") == "checked" ? "checked=\"checked\"" : "";
	if (_itemid && _title) {
		var _htmladd = '<tr id="itemlist_' + _itemid + '">' +
				'<td style="text-align:center;"><div class="input">'+_itemid+'</div></td>'+
				'<td><div class="input"><input type="hidden" name="ads[itemid][]" id="detail-itemid-' + _itemid + '" value="0" /><input style="width:80%;"  name="ads[title][]" type="text" id="detail-title-' + _itemid + '" value="' + _title + '" /></div></td>' +
				'<td><div class="input"><div class="update-box"><input style="width:55%;"  name="ads[thumb][]" type="text" id="detail-thumb-' + _itemid + '" value="' + _thumb + '" class="update-input" />' +
				'<input type="button" style="width:60px;" id="detail-thumb-btn" class="update-btn detail-thumb-btn" onclick="ads_thumb_upload(this)" bind="detail-thumb-' + _itemid + '" value="修改图片" />' +
				'</div></div></td>' +
				'<td><div class="input"><input style="width:80%;"  name="ads[linkurl][]" type="text" id="detail-linkurl-' + _itemid + '" value="' + _linkurl + '" /></div></td>' +
				'<td><div class="input"><input style="width:80%;"  name="ads[sort][]" type="text" id="detail-sort-' + _itemid + '" value="' + _sort + '" /></div></td>' +
				'<td style="text-align:center;"><div class=""><input type="checkbox" name="ads[status][]"  value="1" id="detail-status-' + _itemid + '" ' + _status + '/></div></td>' +
				' <td style="text-align:center;">' +
				'<a  href="javascript:;" onclick="ads_remove(\'' + _itemid + '\')" ><img src="<?= $SKIN ?>img/icons/actions/delete.png" title="删除" /></a></td>' +
				'</tr>'; 
		$("#ads-list-box").prepend(_htmladd);
		$("#detail-itemid-0").val(_itemid);
		$("#detail-title-0").val("");
		$("#detail-thumb-0").val("");
		$("#detail-linkurl-0").val("");
	} else {
		if (!_title) {
			warning("系统提示", "广告名称不能为空！");
		} else {
			warning("系统提示", "系统参数错误，请刷新页面！");
		}
	}
}
</script> 
