<?php include $TEMPLATE_PATH. "header.php"; ?>
<?php include $TEMPLATE_PATH. "left.php"; ?>
<!-- CONTENT-->
<div id="content" class="white">
	<div class="bloc">
		<div class="title">模块列表</div>
		<div class="content">
			<form action="?m=<?= $m ?>&c=<?= $c ?>&a=submit"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
				<table>
					<thead>
						<tr>
							<th style="text-align:center;" width="30"><input type="checkbox" class="checkall"/></th>
							<th style="text-align:center;" width="60">模块ID</th>
							<th style="text-align:center;" width="200">模块名称</th>
							<th style="text-align:center;" width="200">模块标记</th>
							<th style="text-align:center;" width="200">模块类型</th>
							<th style="text-align:center;" width="200">状态</th>
							<th style="text-align:center;" width="200">创建时间</th>
							<th style="text-align:center;" width="200">修改时间</th>
							<th style="text-align:center;" width="90">操作</th>
						</tr>
					</thead>
					<tbody>
						<?php
						if ($data['list'] && is_array($data['list'])) {
							foreach ($data['list'] as $val) {
								?>
								<tr id="itemlist_<?= $val['mid'] ?>">
									<td style="text-align:center;"><input type="checkbox" name="itemids[]" value="<?= $val['mid'] ?>" /></td>
									<td style="text-align:center;"><?= $val['mid'] ?></td>
									<td style="text-align:center;"><div class="input"><?= $val['name'] ?></div></td>
									<td  style="text-align:center;"><div class="input"><?= $val['module'] ?></div></td>
									<td  style="text-align:center;"><div class="input"><?= $CONFIG_MODEL[$val['model']]['name'] ?></div></td>
									<td  style="text-align:center;"><div class="input"><?= $CONFIG_MODEL[$val['model']]['reuse']=="1"?"可编辑":"不可编辑" ?></div></td>
									<td style="text-align:center;"><div class="input"><?= date("Y-m-d", $val['addtime']) ?></div></td>
									<td style="text-align:center;"><div class="input"><?= date("Y-m-d", $val['edittime']) ?></div></td>
									<td style="text-align:center;">
										<?php
										if($CONFIG_MODEL[$val['model']]['reuse']=="1"){ ?>
										<a href="?m=<?= $m ?>&c=edit&mid=<?= $val['mid'] ?>"><img src="<?= $SKIN ?>img/icons/actions/edit.png" title="编辑"  /></a>
										<a href="javascript:;" onclick="itemremove('?m=<?= $m ?>&c=ajax&a=remove&mid=<?= $val['mid'] ?>', true)" ><img src="<?= $SKIN ?>img/icons/actions/delete.png" title="删除" /></a>
										<?php
										}else{
										?>
										不可编辑
										<?php
										}
										?>
										</td>
								</tr>
								<?php
							}
						}
						?>
					</tbody>
				</table>
			</form>
		</div>
	</div>
</div>
<?php include $TEMPLATE_PATH. "footer.php"; ?>