<ul <?=$class?"class=\"{$class}\"":""?>>
	<?php foreach($list as $k=>$v){?>
	<li><span class="f_r">[<?=date("Y-m-d",$v['addtime'])?>]</span><a <?=$target?"target=\"_blank\"":""?> href="<?=$URL->setUrl("?m={$m}&ac=show&itemid={$v['id']}");?>"><?=$v['title']?></a></li>
	<?php }?>
</ul> 