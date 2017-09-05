<?php
defined('IN_SYSTEM') or exit('Access Denied');
$menu_icos = array(
	"guestbook" => "comment",
	"ads" => "chart",
	"member" => "users",
);
?>

<!--SIDEBAR-->
<div id="sidebar">
	<ul>
		<li><a href="?m=index"><img src="<?= $SKIN ?>img/icons/menu/home.png" alt="" /> 后台首页 </a> </li>
		<li <?= $m == "index" && $ac == "index" ? "class=\"current\"" : "" ?>><a href="javascript:;"><img src="<?= $SKIN ?>img/icons/menu/flag.png" alt="" /> 常用选项</a>
			<ul>
				<li <?= $m == "setting" ? 'class="current"' : '' ?>><a href="?m=setting&c=setting">网站设置</a></li>
			</ul>
		</li>
		<?php
		foreach ($CONFIG_MODULE as $key => $val) {
			if ($val['hide'] == "0") {
				?>
				<li <?= $m == $val['module'] || ($m == "category" && $mod == $val['module']) || ($m == "fields" && $mod == $val['module']) ? "class=\"current\"" : "" ?>><a href="javascript:;" ><img src="<?= $SKIN ?>img/icons/menu/<?= $menu_icos[$val['module']] ? $menu_icos[$val['module']] : "list" ?>.png" alt="" /> <?= $val['name'] ?>管理</a>
					<ul>
						<?php
						foreach ($CONFIG_MODEL[$val['model']]['admin_left'] as $k => $v) {
						?>
						<li <?= $m == $val['module'] && ($ac == $k || "list&mod=" . $mod == $k || "list&status=" . $status == $k) ? 'class="current"' : '' ?>><a href="?m=<?= $val['module'] ?>&c=<?= $k ?>"><?php printf($v, $val['name']) ?></a></li>
						<?php } ?>

						<?php
						if ($CONFIG_MODEL[$val['model']]['fields'] && $ADMIN['adminid'] == $_SC['masterid']) {
						?>
						<li <?= $m == "fields" && $mod == $val['module'] ? 'class="current"' : '' ?>><a href="?m=fields&c=list&mod=<?= $val['module'] ?>"><?= $CONFIG_MODEL[$val['model']]['fields'] ?></a></li>
						<?php
						}
						?>

						<?php
						foreach ($CONFIG_MODEL[$val['model']]['category'] as $k => $v) {
						?>
						<li <?= $m == "category" && $type == $k ? 'class="current"' : '' ?>><a href="?m=category&c=list&mod=<?= $val['module'] ?>&type=<?= $k ?>"><?php printf($v, $val['name']) ?></a></li>
						<?php } ?>

					</ul>
				</li>
				<?php
			}
		}
		?>

		<?php
		$left_m = "pages";
		$left_mod = $CONFIG_MODULE[$left_m];
		?>
		<li <?= $m == $left_mod['module'] || ($m == "category" && $mod == $left_mod['module']) || ($m == "fields" && $mod == $left_mod['module']) ? "class=\"current\"" : "" ?>><a href="javascript:;" ><img src="<?= $SKIN ?>img/icons/menu/pages.png" alt="" /> 单页设置</a>
			<ul>
				<?php
				$left_cate = $CAT->getmodlist($left_m, "cate", 1);
				foreach ($left_cate as $k => $v) {
				?>
				<li <?= $m == $left_mod['module'] && $ac == "list" && $cid == $v['cid'] ? 'class="current"' : '' ?>><a href="?m=<?= $left_mod['module'] ?>&c=list&cid=<?= $v['cid'] ?>"><?= $v['name'] ?></a></li>
				<?php } ?>
				<?php
				foreach ($CONFIG_MODEL[$left_mod['model']]['category'] as $k => $v) {
				?>
				<li <?= $m == "category" && $type == $k ? 'class="current"' : '' ?>><a href="?m=category&c=list&mod=<?= $left_mod['module'] ?>&type=<?= $k ?>"><?php printf($v, $left_mod['name']) ?></a></li>
				<?php } ?>
			</ul>
		</li>

		<?php if ($ADMIN['adminid'] == $_SC['masterid']) { ?>
			<?php
			$left_m = "module";
			$left_mod = $CONFIG_MODULE[$left_m];
			?>
			<li <?= $m == $left_m ? "class=\"current\"" : "" ?>><a href="javascript:;" ><img src="<?= $SKIN ?>img/icons/menu/layout.png" alt="" /> 模块设置</a>
				<ul>
					<?php
					foreach ($CONFIG_MODEL[$left_mod['model']]['admin_left'] as $k => $v) {
					?>
					<li <?= $m == $left_mod['module'] && $ac == $k ? 'class="current"' : '' ?>><a href="?m=<?= $left_mod['module'] ?>&c=<?= $k ?>"><?php printf($v, $left_mod['name']) ?></a></li>
					<?php } ?>
				</ul>
			</li>
		<?php } ?>

		<?php
		$left_m = "setting";
		$left_mod = $CONFIG_MODULE[$left_m];
		?>
		<li <?= $m == $left_m ? "class=\"current\"" : "" ?>><a href="javascript:;" ><img src="<?= $SKIN ?>img/icons/menu/settings.png" alt="" /> 系统设置</a>
			<ul>
				<?php
				foreach ($CONFIG_MODEL[$left_mod['model']]['admin_left'] as $k => $v) {
				?>
				<li <?= ($m == $left_mod['module'] && $ac == $k) ? 'class="current"' : '' ?>><a href="?m=<?= $left_mod['module'] ?>&c=<?= $k ?>"><?php printf($v, $left_mod['name']); ?></a></li>
				<?php } ?>
			</ul>
		</li>
	</ul>
</div>