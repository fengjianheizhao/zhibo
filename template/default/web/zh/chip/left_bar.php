<div class="side">
	<div class="sidebar_list">
		<h3>分类导航</h3>
		<div class="sidebar_list_btn">
		
			<?php if($m=="pages"){?>
			<ul>
				<?php $tags=$this->tag("m=pages&t=pages_8&w=`status`=1 and `cid`={$detail['cid']}&o=`sort` DESC,`id` ASC&l=20")?>
				<?php foreach($tags as $k=>$v){ ?>		
				<li><a href="<?=$URL->setUrl("?m=pages&ac=show&itemid={$v['id']}",$v);?>"><?=$v['title']?></a></li>
				<?php }?>
				
			</ul>
			<?php }else{?>
			<ul>
				<?php foreach($catelist[0] as  $k=>$v){?>
				<li><a href="<?=$URL->setUrl("?m={$m}&ac=list&cid={$v['cid']}",$v);?>"><?=$v['name']?></a></li>
				<?php }?>
			</ul>
			<?php }?>
		</div>
	</div>
</div>
