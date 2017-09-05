<?php
defined('IN_SYSTEM') or exit('Access Denied');?>
<?php include $TEMPLATE_PATH. "header.php"; ?>
<?php include $TEMPLATE_PATH. "left.php"; ?>
<!-- CONTENT-->

<div id="content" class="white">
<div class="bloc">
	<div class="title">
		<?= $title ?>列表</div>
	<div class="content">
		<form action="?m=category&c=ajax&a=listedit&mod=<?=$mod?>&type=<?=$type?>" method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
			<table>
				<thead>
					<tr>
						<th><input type="checkbox" class="checkall"/></th>
						<th>ID</th>
						<th>上级ID</th>
						<th>分类名称</th>
						<th>分类别名</th>
						<th>排序</th>
						<th style="text-align:center;">子分类</th>
						<th style="text-align:center;">操作</th>
					</tr>
				</thead>
				<tbody>
					<?php
						if ($data['list'] && is_array($data['list'])) {
							foreach ($data['list'] as $val) {
					?>
					<tr id="itemlist_<?= $val['cid'] ?>">
						<td><input type="checkbox" name="itemid[]" value="<?= $val['cid'] ?>" /></td>
						<td><?= $val['cid'] ?></td>
						<td><div class="input"><input style="width:50px;"  name="category[<?= $val['cid'] ?>][pid]" type="text" id="input2" value="<?= $val['pid'] ?>" /></div></td>
						<td><div class="input"><input style="width:120px;"  name="category[<?= $val['cid'] ?>][name]" type="text" id="input2" value="<?= $val['name'] ?>" /></div></td>
						<td><div class="input"><input style="width:120px;"  name="category[<?= $val['cid'] ?>][alias]" type="text" id="input2" value="<?= $val['alias'] ?>" /></div></td>
						<td><div class="input"><input style="width:50px;"  name="category[<?= $val['cid'] ?>][sort]" type="text" id="input2" value="<?= $val['sort'] ?>" /></div></td>
						<td style="text-align:center;"><div class="input"><a href="?m=category&c=list&mod=<?=$mod?>&type=<?=$type?>&pid=<?= $val['cid'] ?>" ><?= $val['child'] ?></a></div></td>
						<td class="actions" style="text-align:center;">
							<a href="?m=category&c=list&mod=<?=$mod?>&type=<?=$type?>&pid=<?= $val['cid'] ?>"><img src="<?= $SKIN ?>img/icons/menu/dark/list.png" alt="子分类" title="子分类" /></a>	
							<a href="?m=category&c=edit&cid=<?=$val['cid']?>"><img src="<?= $SKIN ?>img/icons/actions/edit.png" alt="修改"  title="修改" /></a>
							<a href="javascript:;" onclick="itemremove('?m=<?=$m?>&c=ajax&a=remove&itemid=<?=$val['cid']?>', 1)" ><img src="<?= $SKIN ?>img/icons/actions/delete.png" alt="删除" title="删除"/></a>
						
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
				if($parent){
				?>
				<input type="button" value="返回上级" onclick="location.href = '?m=category&c=list&mod=<?=$mod?>&type=<?=$type?>&pid=<?= $parent['pid'] ?>';return false;" class="white" />
				<?php
				}
				?>
				<input type="button" value="批量删除" class="white" onclick="listremove('?m=<?=$m?>&c=ajax&a=remove', 1)"/>
				<input type="submit" value="批量修改" class="black"/>
				<input type="button" value="添加分类" onclick="location.href = '?m=category&c=add&mod=<?=$mod?>&type=<?=$type?>&pid=<?= $pid ?>';return false;" />
			
			</div>
			<div class="clear"></div>
		</form>
		<div class="pagination"> 
			<a href="?m=category&c=list&mod=<?=$mod?>&type=<?=$type?>&pid=<?= $pid ?>&page=1" class="prev" title="首页">«</a>
			<a href="?m=category&c=list&mod=<?=$mod?>&type=<?=$type?>&pid=<?= $pid ?>&page=<?=$data['prev']?>" class="prev" title="上一页">☜</a>
			<?php
				for ($i = $data['page_start']; $i <= $data['page_end']; $i++) {
			?>
			<a <?= $page == $i ? "class=\"current\"" : "" ?> href="?m=category&c=list&mod=<?=$mod?>&type=<?=$type?>&pid=<?= $pid ?>&page=<?=$i?>"><?= $i ?></a>
			<?php
				}
			?>
			<a href="?m=category&c=list&mod=<?=$mod?>&type=<?=$type?>&pid=<?= $pid ?>&page=<?=$data['next']?>" class="next" title="下一页">☞</a>
			<a href="?m=category&c=list&mod=<?=$mod?>&type=<?=$type?>&pid=<?= $pid ?>&page=<?=$data['pagenum']?>" class="next" title="尾页">»</a>
			
			</div>
			<div class="clear"></div>
	</div>
</div>
<?php include $TEMPLATE_PATH. "footer.php"; ?>
