<?php include $TEMPLATE_PATH . "header.php"; ?>
<?php include $TEMPLATE_PATH . "left.php"; ?>
<!-- CONTENT-->
<div id="content" class="white">
	<div class="bloc">
		<div class="title">模块设置</div>
		<div class="content">
			<form action="?m=<?= $m ?>&c=ajax&a=edit" method="post" id="formbox" onSubmit="return ajaxSubmit(this)">

				<?php
				$options = array(
					array(
						"key" => $CONFIG_MODEL[$detail['model']]['name'],
						"value" => $CONFIG_MODEL[$detail['model']]['index'],
					),
				);
				$FIELD = array(
					"name" => "model", //字段名
					"title" => "模块模型", //字段描述
					"prompt" => "", //字段说明
					"formtype" => "select", //表单类型 
					"options" => $options, //可选值
					"default" => "", //默认值
					"readonly" => true,
					//"disabled"=>true,
				);
				$value = $detail['model'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "name", //字段名
					"title" => "模块名称", //字段描述
					"prompt" => "请填写模块名称", //字段说明
					"formtype" => "text", //表单类型 
					"options" => "", //可选值
					"default" => $detail['name'], //默认值
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
					"default" => $detail['module'], //默认值
					"readonly" => true,
					"disabled" => true,
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$templateList = $templateConfig['rules'][$detail['model']];
				if ($templateList && is_array($templateList)) {
					$options = array();
					foreach ($templateList as $k => $v) {
						$options[] = array(
							"key" => $v['title'],
							"value" => $k,
						);
					}
				} else {
					$options = array(
						array(
							"key" => "默认模板",
							"value" => 0,
						),
					);
				}
				$FIELD = array(
					"name" => "template", //字段名
					"title" => "渲染模板", //字段描述
					"prompt" => "请选择默认的渲染模板", //字段说明
					"formtype" => "select", //表单类型 
					"options" => $options, //可选值
					"default" => "", //默认值
				);
				$value = $detail['template'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "sort", //字段名
					"title" => "模块排序", //字段描述
					"prompt" => "模块排序，数字越大排序越靠前", //字段说明
					"formtype" => "number", //表单类型 
					"options" => "", //可选值
					"default" => $detail['sort'], //默认值
				);
				$value = NULL;
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>


				<div class="h20px"></div>
				<div class="submit">
					<input name="itemid" type="hidden" id="detail-itemid" value="<?= $detail['mid'] ?>" />
					<input type="hidden" value="?m=<?= $m ?>&c=list" id="formjump" />
					<input type="submit" value="修改设置" />
					<input type="reset" value="重置" class="black" />
				</div>
				<div class="h100px"></div>
			</form>
		</div>
	</div>
	<?php include $TEMPLATE_PATH . "footer.php"; ?>
