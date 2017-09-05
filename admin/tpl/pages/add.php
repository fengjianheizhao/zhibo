<?php include $TEMPLATE_PATH . "header.php"; ?>
<?php include $TEMPLATE_PATH . "left.php"; ?>
<!-- CONTENT-->

<div id="content" class="white">
	<div class="bloc">
		<div class="title">添加<?= $modinfo['name'] ?></div>
		<div class="content">
			<form action="?m=<?= $m ?>&c=ajax&a=add"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
				<?php
				$options = array();
				foreach ($catetree as $key => $val) {
					$options[$key]['key'] = $val;
					$options[$key]['value'] = $key;
				}
				$FIELD = array(
					"name" => "cid", //字段名
					"title" => "所属分类", //字段描述
					"prompt" => "请选择一个{$MOD['name']}分类", //字段说明
					"formtype" => "select", //表单类型 
					"options" => $options, //可选值
					"default" => "", //默认值
				);
				$value = $cid;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "title", //字段名
					"title" => "{$MOD['name']}标题", //字段描述
					"prompt" => "请填写{$MOD['name']}标题", //字段说明
					"formtype" => "text", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "islink", //字段名
					"title" => "跳转链接", //字段描述
					"prompt" => "勾选则开启跳转链接，如果勾选，跳转地址不能为空", //字段说明
					"formtype" => "switch", //表单类型 
					"options" => "", //可选值
					"default" => "0", //默认值
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "linkurl", //字段名
					"title" => "跳转地址", //字段描述
					"prompt" => "如果勾选跳转，则在此填写跳转地址,下面内容则不需要填写，详细内容填“1”即可", //字段说明
					"formtype" => "text", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "thumb", //字段名
					"title" => "标题图片", //字段描述
					"prompt" => "", //字段说明
					"formtype" => "image", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "seotitle", //字段名
					"title" => "{$MOD['name']}SEO标题", //字段描述
					"prompt" => "请填写{$MOD['name']}SEO标题", //字段说明
					"formtype" => "text", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "seokeyword", //字段名
					"title" => "{$MOD['name']}SEO关键词", //字段描述
					"prompt" => "请填写{$MOD['name']}SEO关键词", //字段说明
					"formtype" => "text", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "content", //字段名
					"title" => "{$MOD['name']}内容", //字段描述
					"prompt" => "请填写{$MOD['name']}内容", //字段说明
					"formtype" => "texteditor", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "sort", //字段名
					"title" => "排序", //字段描述
					"prompt" => "数值越小，拍的越靠前", //字段说明
					"formtype" => "number", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>
				<?php
				$FIELD = array(
					"name" => "hits", //字段名
					"title" => "浏览次数", //字段描述
					"prompt" => "", //字段说明
					"formtype" => "number", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$options = array(
					array(
						"key" => "默认模板",
						"value" => "page-default",
					),
				);
				$FIELD = array(
					"name" => "template", //字段名
					"title" => "页面模板", //字段描述
					"prompt" => "不了解系统者请保持默认或留空！", //字段说明
					"formtype" => "select", //表单类型 
					"options" => $options, //可选值
					"default" => "page-default", //默认值
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<div class="h20px"></div>
				<div class="submit">
					<input type="hidden" value="?m=<?= $m ?>&c=list&cid=<?= $cid ?>" id="formjump" />
					<input type="submit" value="立即发布" />
					<input type="reset" value="重置" class="black" />
				</div>
				<div class="h100px"></div>
			</form>
		</div>
	</div>
	<?php include $TEMPLATE_PATH . "footer.php"; ?>
