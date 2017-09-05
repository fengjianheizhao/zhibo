<?php include $TEMPLATE_PATH. "header.php"; ?>
<?php include $TEMPLATE_PATH. "left.php"; ?>
<!-- CONTENT-->
<div id="content" class="white">
	<div class="bloc">
		<div class="title"><?=$MOD['name']?>列表</div>
		<div class="content">
			<form action="?m=<?=$m?>&a=<?=$ac?>&s=submit"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
				<table>
					<thead>
						<tr>
							<th style="text-align:center;" width="30"><input type="checkbox" class="checkall"/></th>
							<th style="text-align:center;" width="60">ID</th>
							
							<th style="text-align:center;" width="160"><?=$MOD['name']?>账号</th>
							<th><?=$MOD['name']?>昵称</th>
							<th style="text-align:center;" width="160"><?=$MOD['name']?>手机号</th>
							<th style="text-align:center;" width="160"><?=$MOD['name']?>QQ</th>
							<th style="text-align:center;" width="120">会员类型</th>
							<th style="text-align:center;" width="120">注册时间</th>
							<th style="text-align:center;" width="120">登录时间</th>
							<th style="text-align:center;" width="70">登录次数</th>

							<th style="text-align:center;" width="70">操作</th>
						</tr>
					</thead>
					<tbody>
						<?php
						if ($data['list'] && is_array($data['list'])) {
							foreach ($data['list'] as $val) {
								?>
								<tr id="itemlist_<?= $val['id'] ?>">
									<td style="text-align:center;"><input type="checkbox" name="itemids[]" value="<?= $val['id'] ?>" /></td>
									<td style="text-align:center;"><?= $val['uid'] ?></td>
									<td><div class="input" align="center"><?= $val['account'] ?></div></td>
									<td><div class="input"><?= $val['nickname'] ?></div></td>
									<td><div class="input" align="center"><?= $val['phonenum'] ?></div></td>
									<td><div class="input" align="center"><?= $val['qq'] ?></div></td>
									<td style="text-align:center;"><div class="input"><?= $group[$val['gid']]['gname'] ?></div></td>
									<td style="text-align:center;"><div class="input"><?= date("Y-m-d", $val['regtime']) ?></div></td>
									<td style="text-align:center;"><div class="input"><?= date("Y-m-d", $val['logintime']) ?></div></td>
									<td style="text-align:center;"><div class="input"><?= $val['logins'] ?></div></td>
									<td class="actions">
										<a href="?m=order&a=list&status=2&ouid=<?=$val['uid']?>" target="_blank"><img src="<?= $SKIN ?>img/icons/search.png" title="代理下单" width="16" /></a>
										<a href="?m=order&a=list&status=2&proxy=<?=$val['uid']?>" target="_blank"><img src="<?= $SKIN ?>img/icons/search.png" title="推广下单" width="16" /></a>
										<a href="?m=<?=$m?>&a=edit&itemid=<?=$val['uid']?>"><img src="<?= $SKIN ?>img/icons/actions/edit.png" title="修改" /></a>
									</td>
								</tr>
								<?php
							}
						}
						?>
					</tbody>
				</table>
				<div class="h10px"></div>
				<div class="clear"></div>
			</form>
			<div class="pagination">
				<a href="?m=<?=$m?>&a=<?=$ac?>&cid=<?=$cid?>&page=1" class="next" title="首页">«</a>
				<a href="?m=<?=$m?>&a=<?=$ac?>&cid=<?=$cid?>&page=<?=$data['prev']?>" class="prev" title="上一页">☜</a>
				<?php
				for ($i = $data['page_start']; $i <= $data['page_end']; $i++) {
				?>
				<a <?= $page == $i ? "class=\"current\"" : "" ?> href="?m=<?=$m?>&a=<?=$ac?>&cid=<?=$cid?>&page=<?=$i?>"><?= $i ?></a>
				<?php
				}
				?>
				<a href="?m=<?=$m?>&a=<?=$ac?>&cid=<?=$cid?>&page=<?=$data['next']?>" class="next" title="下一页">☞</a>
				<a href="?m=<?=$m?>&a=<?=$ac?>&cid=<?=$cid?>&page=<?=$data['pagenum']?>" class="next" title="尾页">»</a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<?php include $TEMPLATE_PATH. "footer.php"; ?>