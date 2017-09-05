<?php include $TEMPLATE_PATH. "header.php"; ?>
<?php include $TEMPLATE_PATH. "left.php"; ?>
<!-- CONTENT-->
<div id="content" class="white">
	<div class="bloc">
		<div class="title">会员组列表</div>
		<div class="content">
			<form action="?m=<?=$m?>&a=<?=$ac?>&s=submit"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
				<table>
					<thead>
						<tr>
							<th style="text-align:center;" width="30"><input type="checkbox" class="checkall"/></th>
							<th style="text-align:center;" width="90">会员组ID</th>
							<th>会员组名称</th>
							<th style="text-align:center;" width="90">开放注册</th>
							<th style="text-align:center;" width="120">创建时间</th>
							<th style="text-align:center;" width="70">操作</th>
						</tr>
					</thead>
					<tbody>
						<?php
						if ($data['list'] && is_array($data['list'])) {
							foreach ($data['list'] as $val) {
								?>
								<tr id="itemlist_<?= $val['gid'] ?>">
									<td style="text-align:center;"><input type="checkbox" name="itemids[]" value="<?= $val['gid'] ?>" /></td>
									<td style="text-align:center;"><?= $val['gid'] ?></td>
									
									<td><div class="input"><?= $val['gname'] ?></div></td>
									<td style="text-align:center;"><div class="input"><?= $val['status']==1?"是":"否" ?></div></td>
									<td style="text-align:center;"><div class="input"><?= date("Y-m-d", $val['addtime']) ?></div></td>
									<td class="actions">
										<a href="?m=<?=$m?>&a=groupedit&gid=<?=$val['gid']?>"><img src="<?= $SKIN ?>img/icons/actions/edit.png" title="修改"  /></a>
										<a href="javascript:;" onclick="itemremove('?m=<?=$m?>&a=ajax&s=groupdel&gid=<?=$val['gid']?>', true)" ><img src="<?= $SKIN ?>img/icons/actions/delete.png" title="删除" /></a>
										
										
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
					<input type="button" value="添加会员组" onclick="location.href = '?m=<?=$m?>&a=groupadd'" />
				</div>
				<div class="clear"></div>
			</form>
			
			<div class="pagination">
				<a href="?m=<?=$m?>&a=<?=$ac?>&page=1" class="next" title="首页">«</a>
				<a href="?m=<?=$m?>&a=<?=$ac?>&page=<?=$data['prev']?>" class="prev" title="上一页">☜</a>
				<?php
				for ($i = $data['page_start']; $i <= $data['page_end']; $i++) {
				?>
				<a <?= $page == $i ? "class=\"current\"" : "" ?> href="?m=<?=$m?>&a=<?=$ac?>&page=<?=$i?>"><?= $i ?></a>
				<?php
				}
				?>
				<a href="?m=<?=$m?>&a=<?=$ac?>&page=<?=$data['next']?>" class="next" title="下一页">☞</a>
				<a href="?m=<?=$m?>&a=<?=$ac?>&page=<?=$data['pagenum']?>" class="next" title="尾页">»</a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<?php include $TEMPLATE_PATH. "footer.php"; ?>