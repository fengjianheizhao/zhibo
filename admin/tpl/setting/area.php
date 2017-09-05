<?php defined('IN_SYSTEM') or exit('Access Denied'); ?>
<?php include $TEMPLATE_PATH. "header.php"; ?>
<?php include $TEMPLATE_PATH. "left.php"; ?>
<!-- CONTENT-->
<div id="content" class="white">
	<div class="bloc">
		<div class="title">地区列表-<?=$area['area']?></div>
		<div class="content">
			<form action="index.php?m=<?= $m ?>&c=<?= $c ?>&s=submit" method="post" id="itemlist" >
				<table>
					<thead>
						<tr>
							<th style="text-align:center;" width="60">地区ID</th>
							<th style="text-align:center;" width="200" >地区名称</th>
							<th style="text-align:center;" width="200">地区编号</th>
							<th style="text-align:center;" width="200">父级地区编号</th>
							
							<th style="text-align:center;" width="200">状态</th>
							<th style="text-align:center;" width="200">显示子地区</th>
							
							<th style="text-align:center;" width="60">操作</th>
						</tr>
					</thead>
					<tbody>
						<?php
						if ($data['list'] && is_array($data['list'])) {
							foreach ($data['list'] as $val) {
						?>
								<tr id="itemlist_<?= $val['mid'] ?>">
									<td style="text-align:center;"><?= $val['id'] ?></td>
									<td style="text-align:center;"><div class="input"><?= $val['area'] ?></div></td>
									<td  style="text-align:center;"><div class="input"><?= $val['areaid'] ?></div></td>
									<td  style="text-align:center;"><div class="input"><?= $val['pid'] ?></div></td>
									<td style="text-align:center;"><div class="input"><a href="javascript:;" onclick="toggle(this, '<?= $val['areaid'] ?>','areastatus','<?=$m?>','<?=$SKIN?>')"><img src="<?= $SKIN ?>img/icons/<?= $val['status'] ? "button-check" : "button-white-remove" ?>.png" width="20"  title="推荐" /></a></div></td>
									<td style="text-align:center;"><div class="input"><a href="javascript:;" onclick="toggle(this, '<?= $val['areaid'] ?>','childstatus','<?=$m?>','<?=$SKIN?>')"><img src="<?= $SKIN ?>img/icons/<?= $val['childstatus'] ? "button-check" : "button-white-remove" ?>.png" width="20"  title="推荐" /></a></div></td>
									<td style="text-align:center;">
										<a href="?m=<?=$m?>&c=area_edit&areaid=<?=$val['areaid']?>"><img src="<?= $SKIN ?>img/icons/actions/edit.png" alt="修改"  title="修改" /></a>
										<a href="?m=<?= $m ?>&c=<?= $c ?>&pid=<?= $val['areaid'] ?>"><img src="<?= $SKIN ?>img/icons/menu/dark/list.png" title="下级地区" /></a>
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
					<?php
					if($area['id']!='0'){
					?>
					<input type="button" value="返回上级" onclick="location.href='?m=<?=$m?>&c=<?=$c?>&pid=<?=$area['pid']?>';return false;" />
					<?php
					}
					?>
					<input type="button" value="添加地区" onclick="location.href='?m=<?=$m?>&c=area_add&pid=<?=$area['areaid']?>';return false;" />
				</div>
				<div class="clear"></div>
			</form>
		</div>
	</div>
	<?php include $TEMPLATE_PATH. "footer.php"; ?>
