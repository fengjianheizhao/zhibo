<?php include $TEMPLATE_PATH . "header.php"; ?>
<?php include $TEMPLATE_PATH . "left.php"; ?>
<!-- CONTENT-->
<div id="content" class="white">
	<div class="bloc">
		<div class="title">模块设置</div>
		<div class="content">
			<form action="?m=<?= $m ?>&c=ajax&a=add" method="post" id="formbox" onSubmit="return ajaxSubmit(this)">

				<?php
				$options = array();
				foreach ($CONFIG_MODEL as $key => $val) {
					if ($val['reuse'] == "1") {
						$options[$key]['key'] = $val['name'];
						$options[$key]['value'] = $val['index'];
					}
				}
				$FIELD = array(
					"name" => "model", //字段名
					"title" => "模块模型", //字段描述
					"prompt" => "", //字段说明
					"formtype" => "select", //表单类型 
					"options" => $options, //可选值
					"default" => "", //默认值
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "name", //字段名
					"title" => "模块名称", //字段描述
					"prompt" => "请填写模块名称", //字段说明
					"formtype" => "text", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "module", //字段名
					"title" => "模块标记", //字段描述
					"prompt" => "模块的唯一标示符，只能是英文加数字，不能重复", //字段说明
					"formtype" => "text", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "sort", //字段名
					"title" => "模块排序", //字段描述
					"prompt" => "模块排序，数字越大排序越靠前", //字段说明
					"formtype" => "number", //表单类型 
					"options" => "", //可选值
					"default" => "100", //默认值
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<div class="h20px"></div>
				<div class="submit">
					<input type="hidden" value="?m=<?= $m ?>&c=list" id="formjump" />
					<input type="submit" value="保存" />
					<input type="reset" value="重置" class="black" />
				</div>
				<div class="h100px"></div>
			</form>
		</div>
	</div>
<?php include $TEMPLATE_PATH . "footer.php"; ?>
