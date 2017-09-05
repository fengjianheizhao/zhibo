<?php include $TEMPLATE_PATH. "header.php"; ?>
<?php include $TEMPLATE_PATH. "left.php"; ?>
<!-- CONTENT-->
<div id="content" class="white">
	<div class="bloc">
		<div class="title">自定义字段列表</div>
		<div class="content">
			<form action="?m=<?=$m?>&c=ajax&a=listedit"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
				<table>
					<thead>
						<tr>
							<th style="text-align:center;" width="30"><input type="checkbox" class="checkall"/></th>
							<th style="text-align:center;">字段名</th>
							<th style="text-align:center;">字段描述</th>
							<th style="text-align:center;">字段说明</th>
							<th style="text-align:center;">字段类型</th>
							<th style="text-align:center;"  width="60">排序</th>
							<th style="text-align:center;"  width="80">创建时间</th>
							<th style="text-align:center; width:50px;" width="50">操作</th>
						</tr>
					</thead>
					<tbody>
						<?php
						if ($data && is_array($data)) {
							foreach ($data as $val) {
						?>
						<tr id="itemlist_<?= $val['id'] ?>">
							<td style="text-align:center;"><input type="checkbox" name="itemid[]" value="<?= $val['id'] ?>" /></td>
							<td style="text-align:center;"><div class="input"><?= $val['name'] ?></div></td>
							<td style="text-align:center;"><div class="input"><input style="width:88%; margin:0px auto;"  name="data[<?= $val['id'] ?>][title]" type="text" id="data-title" value="<?= $val['title'] ?>" /></div></td>
							<td style="text-align:center;"><div class="input"><input style="width:88%;  margin:0px auto;"  name="data[<?= $val['id'] ?>][prompt]" type="text" id="data-prompt" value="<?= $val['prompt'] ?>" /></div></td>
							<td style="text-align:center;"><div class="input"><?= $formtype[$val['formtype']]['title'] ?></div></td>
							<td style="text-align:center;"><div class="input"><input style="width:40px; text-align:center;"  name="data[<?= $val['id'] ?>][sort]" type="text" id="data-sort" value="<?= $val['sort'] ?>" /></div></td>
							<td style="text-align:center;"><div class="input"><?= date("Y-m-d", $val['addtime']) ?></div></td>

							<td class="actions" style="width:50px;">
								<a href="?m=<?=$m?>&c=edit&itemid=<?=$val['id']?>"><img src="<?= $SKIN ?>img/icons/actions/edit.png" title="修改"  /></a>
								<a  href="javascript:;" onclick="itemremove('?m=<?=$m?>&c=ajax&a=remove&itemid=<?=$val['id']?>', true)" ><img src="<?= $SKIN ?>img/icons/actions/delete.png" title="删除" /></a>
							</td>
						</tr>
						<?php
							}
						}
						?>
					</tbody>
				</table>
				<div class="h10px"></div>
				<div class="left submit">
					<input type="submit" value="立即更新" />
					<input type="button" value="添加自定义字段" onclick="location.href = '?m=<?=$m?>&c=add&mod=<?=$mod?>'" />
				</div>
				<div class="clear"></div>
			</form>
			
		</div>
	</div>
	<?php include $TEMPLATE_PATH. "footer.php"; ?>