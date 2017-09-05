<?php defined('IN_SYSTEM') or exit('Access Denied'); ?>
<?php include $TEMPLATE_PATH . "header.php"; ?>
<?php include $TEMPLATE_PATH . "left.php"; ?>

<!-- CONTENT-->

<div id="content" class="white">
	<div class="bloc">
		<div class="title"> 广告位列表</div>
		<div class="content">
			<form action="?m=<?= $m ?>&c=<?= $c ?>&a=submit" method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
				<table>
					<thead>
						<tr>
							<th style="text-align:center;" width="30"><input type="checkbox" class="checkall"/></th>
							<th style="text-align:center;" width="60">ID</th>
							<th>广告位名称</th>
							<th style="text-align:center;" width="200">广告位类型</th>
							<th style="text-align:center;" width="120">广告位状态</th>
							<th style="text-align:center;" width="120">创建时间</th>
							<!--th style="text-align:center;" width="150">调用</th-->
							<th style="text-align:center;" width="70">操作</th>
						</tr>
					</thead>
					<tbody>
						<?php
						if ($data['list'] && is_array($data['list'])) {
							foreach ($data['list'] as $val) {
								?>
								<tr id="itemlist_<?= $val['id'] ?>">
									<td style="text-align:center;"><input type="checkbox" name="itemid[]" value="<?= $val['id'] ?>" /></td>
									<td style="text-align:center;"><?= $val['id'] ?></td>
									<td><div class="input"><?= $val['title'] ?></div></td>
									<td style="text-align:center;"><div class="input">
											<?= $adstype[$val['type']] ?>
											<?php if ($val['type'] != 3 && $val['type'] != 4) { ?>
												：
												<?= $val['width'] ?>
												X
												<?= $val['height'] ?>
											<?php } ?>
										</div></td>
									<td style="text-align:center;"><div class="input">
											<img src="<?= $SKIN ?>img/icons/status_<?= $val['status'] ?>.png" width="20" height="20" />
										</div></td>
									<td style="text-align:center;"><div class="input">
											<?= date("Y-m-d", $val['addtime']) ?>
										</div></td>
									<!--td style="text-align:center;"><div class="input">
											<input style="width:80%; text-align:center" type="text"  value="&lt;?=ads(<?= $val['id'] ?>)?&gt;" /-->
									</div></td>
									<td class="actions">
										<a href="?m=<?= $m ?>&c=edit&itemid=<?= $val['id'] ?>"><img src="<?= $SKIN ?>img/icons/actions/edit.png" title="编辑"  /></a>
										<a  href="javascript:;" onclick="itemremove('?m=<?= $m ?>&c=ajax&a=remove&itemid=<?= $val['id'] ?>', true)" ><img src="<?= $SKIN ?>img/icons/actions/delete.png" title="删除" /></a></td>
								</tr>
								<?php
							}
						}
						?>
					</tbody>
				</table>
				<div class="h10px"></div>
				<div class="left submit">
					<input type="button" onclick="return listremove('?m=<?= $m ?>&c=ajax&a=remove', true)" value="批量删除" class="white"/>
					<input type="button" value="添加广告位" onclick="location.href = '?m=<?= $m ?>&c=add'" />
				</div>
				<div class="clear"></div>
			</form>
			<div class="pagination"> <a href="?m=<?= $m ?>&c=<?= $c ?>&page=<?= $data['prev'] ?>" class="prev">«</a>
				<?php
				for ($i = 1; $i <= $data['pagenum']; $i++) {
					?>
					<a <?= $page == $i ? "class=\"current\"" : "" ?> href="?m=<?= $m ?>&c=<?= $c ?>&page=<?= $i ?>"><?= $i ?></a>
					<?php
				}
				?>
				<a href="?m=<?= $m ?>&c=<?= $c ?>&page=<?= $data['next'] ?>" class="next">»</a> </div>
			<div class="clear"></div>
		</div>
	</div>
	<?php include $TEMPLATE_PATH . "footer.php"; ?>
