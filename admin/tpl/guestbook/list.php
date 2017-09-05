<?php include $TEMPLATE_PATH. "header.php"; ?>
<?php include $TEMPLATE_PATH. "left.php"; ?>
<!-- CONTENT-->

<div id="content" class="white">
<div class="bloc">
	<div class="title">
	<?=$MOD['name']?>列表</div>
	<div class="content">
		<form action="?m=<?=$m?>&c=<?=$c?>&a=submit"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
			<table>
				<thead>
					<tr>
						<th style="text-align:center;" width="30"><input type="checkbox" class="checkall"/></th>
						<th style="text-align:center;" width="50">ID</th>
						
						<th style="text-align:center;" width="20%">联系人</th>
						
						<th style="text-align:center;" width="20%">联系电话</th>
						<th style="text-align:center;" width="150">留言时间</th>
						<th style="text-align:center;" width="150">留言审核</th>
						<th style="text-align:center;" width="100">操作</th>
					</tr>
				</thead>
				<tbody>
					<?php
						if ($data['list'] && is_array($data['list'])) {
							foreach ($data['list'] as $val) {
					?>
					<tr id="itemlist_<?= $val['id'] ?>">
						<td style="text-align:center;"><input type="checkbox" name="itemids[]" value="<?= $val['id'] ?>" /></td>
						<td style="text-align:center;"><?= $val['id'] ?></td>
						<td style="text-align:center;"><div class="input"><?= $val['name'] ?></div></td>
						<td style="text-align:center;"><div class="input"><?= $val['phonenum'] ?></div></td>
						<td style="text-align:center;"><div class="input"><?= date("Y-m-d", $val['addtime']) ?></div></td>
						<td style="text-align:center;"><div class="input"><a href="javascript:;" onclick="recommend(this, '<?= $val['id'] ?>','<?=$m?>','<?= $SKIN ?>')"><img src="<?= $SKIN ?>img/icons/<?= $val['recom'] ? "button-check" : "button-white-remove" ?>.png" width="20"  title="审核" /></a></div></td>
						<td style="text-align:center;" class="actions"><a href="?<?=("m={$m}&c=show&itemid={$val['id']}") ?>" class="zoombox w550 h450"><img src="<?= $SKIN ?>img/icons/search.png" width="20"  title="查看详情" /></a>&nbsp;&nbsp;<a href="javascript:;" onclick="itemremove('<?= ("?m={$m}&c=ajax&a=remove&itemid={$val['id']}") ?>', true)" ><img src="<?= $SKIN ?>img/icons/actions/delete.png" title="删除" /></a></td>
					</tr>
					<?php
							}
						}
					?>
				</tbody>
			</table>
			<div class="left submit">
				<input type="button" onclick="return listremove('?m=<?=$m?>&c=ajax&a=remove', true)" value="批量删除" class="white"/>
			</div>
		</form>
		<div class="pagination">
				<a href="?m=<?=$m?>&c=<?=$c?>&cid=<?=$cid?>&page=1" class="next" title="首页">«</a>
				<a href="?m=<?=$m?>&c=<?=$c?>&cid=<?=$cid?>&page=<?=$data['prev']?>" class="prev" title="上一页">☜</a>
				<?php
				for ($i = $data['page_start']; $i <= $data['page_end']; $i++) {
				?>
				<a <?= $page == $i ? "class=\"current\"" : "" ?> href="?m=<?=$m?>&c=<?=$c?>&cid=<?=$cid?>&page=<?=$i?>"><?= $i ?></a>
				<?php
				}
				?>
				<a href="?m=<?=$m?>&c=<?=$c?>&cid=<?=$cid?>&page=<?=$data['next']?>" class="next" title="下一页">☞</a>
				<a href="?m=<?=$m?>&c=<?=$c?>&cid=<?=$cid?>&page=<?=$data['pagenum']?>" class="next" title="尾页">»</a>
			</div>
	</div>
</div>
<?php include $TEMPLATE_PATH. "footer.php"; ?>
<script language="javascript">
	function guestbookaudit(obj, itemid) {
		$.ajax({
			url: inlet + "?m=<?= $m ?>&c=ajax&a=audit&itemid=" + itemid,
			data: "",
			type: "post",
			dataType: "text",
			beforeSend:function(){},
			success: function(result) {
				var res = $.parseJSON(result);
				if (res.status == 1) {
					if (res.audit == 1) {
						$(obj).contents("img").attr("src", "<?= $SKIN ?>img/icons/button-check.png")
					} else {
						$(obj).contents("img").attr("src", "<?= $SKIN ?>img/icons/button-white-remove.png")
					}
				}
			},
			error: ajax_error
		});
	}
</script> 
