<?php include $TEMPLATE_PATH."header.php";?>
<?php include $TEMPLATE_PATH."left.php";?>
<!-- CONTENT-->

<div id="content" class="white">
<div class="bloc">
	<div class="title"><?=$MOD['name']?>回收站</div>
	<div class="content">
		<form action="?m=<?=$m?>&c=<?=$c?>&a=submit"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
			<table>
				<thead>
					<tr>
						<th style="text-align:center;" width="30"><input type="checkbox" class="checkall"/></th>
						<th style="text-align:center;" width="60">ID</th>
						<th style="text-align:center;" width="120">分类名称</th>
						<th width="30">&nbsp;</th>
						<th><?=$MOD['name']?>标题</th>
						<th style="text-align:center;" width="120">发布时间</th>
						<th style="text-align:center;" width="50">浏览</th>
						<th style="text-align:center;" width="70">操作</th>
					</tr>
				</thead>
				<tbody>
					<?php
					if($data['list']&&is_array($data['list'])){
						foreach($data['list'] as $val){
					?>
					<tr id="itemlist_<?=$val['id']?>">
						<td style="text-align:center;"><input type="checkbox" name="itemids[]" value="<?=$val['id']?>" /></td>
						<td style="text-align:center;"><?=$val['id']?></td>
						<td style="text-align:center;"><div class="input"><a href="?m=<?=$m?>&c=<?=$c?>&cid=<?=$val['cid']?>"><?=$catelist[$val['cid']]['name']?></a></div></td>
						<td><div class="input">
								<?php if($val['thumb']){?>
								<a href="<?=$val['thumb']?>" class="zoombox w350 h500"><img src="<?= $SKIN ?>img/icons/pictures.png" width="16"  /></a>
								<?php }?>
							</div></td>
						<td><div class="input"><?=$val['title']?></div></td>
						<td style="text-align:center;"><div class="input"><?=date("Y-m-d",$val['addtime'])?></div></td>
						<td style="text-align:center;"><div class="input"><?=$val['hits']?></div></td>
						
						<td class="actions">
							<a href="javascript:;" onclick="itemRevert('?m=<?=$m?>&c=ajax&a=revert&itemid=<?=$val['id']?>')"><img src="<?= $SKIN ?>img/icons/button-load.png" title="还原"  width="18" /></a>
							<a  href="javascript:;" onclick="itemremove('?m=<?=$m?>&c=ajax&a=remove&itemid=<?=$val['id']?>',true)" ><img src="<?= $SKIN ?>img/icons/actions/delete.png" title="删除" /></a></td>
					</tr>
					<?php
						}
					}
					?>
				</tbody>
			</table>
			<div class="h10px"></div>
			<div class="left submit"> 
				<!--input type="button" value="批量修改" class="black"/-->
				<input type="button" onclick="return listremove('?m=<?=$m?>&c=ajax&a=remove',true)" value="批量彻底删除" class="white"/>
				<input type="button" value="批量还原" onclick="listRevert('?m=<?=$m?>&c=ajax&a=revert')" />
			</div>
			<div class="clear"></div>
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
			<div class="clear"></div>
	</div>
</div>
<?php include $TEMPLATE_PATH."footer.php";?>
