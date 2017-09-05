<?php defined('IN_SYSTEM') or exit('Access Denied'); ?>
<?php include $TEMPLATE_PATH . "header.php"; ?>
<?php include $TEMPLATE_PATH . "left.php"; ?>
<!-- CONTENT-->

<div id="content" class="white">
	<div class="bloc">
		<div class="title">网站设置</div>
		<div class="content"> 
			<form action="?m=<?= $m ?>&c=<?= $c ?>&a=submit" method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
				<?php
				$FIELD = array(
					"name" => "sitename", //字段名
					"title" => "网站名称", //字段描述
					"prompt" => "请填写网站的名称", //字段说明
					"formtype" => "text", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = $detail['sitename'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "sitelogo", //字段名
					"title" => "网站LOGO", //字段描述
					"prompt" => "选择LOGO图片", //字段说明
					"formtype" => "image", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = $detail['sitelogo'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "logowidth", //字段名
					"title" => "LOGO宽度（单位：px）", //字段描述
					"prompt" => "", //字段说明
					"formtype" => "number", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = $detail['logowidth'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>
				<?php
				$FIELD = array(
					"name" => "logoheight", //字段名
					"title" => "LOGO高度（单位：px）", //字段描述
					"prompt" => "", //字段说明
					"formtype" => "number", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = $detail['logoheight'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "seotitle", //字段名
					"title" => "网站SEO标题", //字段描述
					"prompt" => "一般不超过80个字符 ", //字段说明
					"formtype" => "text", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = $detail['seotitle'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "seokeyword", //字段名
					"title" => "Meta Keywords(网页关键词)", //字段描述
					"prompt" => "一般不超过100个字符 ", //字段说明
					"formtype" => "text", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = $detail['seokeyword'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "seodescription", //字段名
					"title" => "Meta Description(网页描述)", //字段描述
					"prompt" => "", //字段说明
					"formtype" => "textarea", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = $detail['seodescription'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "rewrite", //字段名
					"title" => "开启伪静态", //字段描述
					"prompt" => "勾选则开启伪静态，如果开启后网页无法正常访问，请关闭此功能", //字段说明
					"formtype" => "switch", //表单类型 
					"options" =>"", //可选值
					"default" => "", //默认值
				);
				$value =$detail['rewrite'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "tel", //字段名
					"title" => "网站服务电话", //字段描述
					"prompt" => "网站服务电话", //字段说明
					"formtype" => "text", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = $detail['tel'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "stats", //字段名
					"title" => "第三方统计代码", //字段描述
					"prompt" => "", //字段说明
					"formtype" => "textarea", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = $detail['stats'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "beian", //字段名
					"title" => "网站ICP备案号", //字段描述
					"prompt" => "网站的ICP备案号，如：皖ICP备12019099号", //字段说明
					"formtype" => "text", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = $detail['beian'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<?php
				$FIELD = array(
					"name" => "copyright", //字段名
					"title" => "版权信息", //字段描述
					"prompt" => "显示在网站底部的版权信息", //字段说明
					"formtype" => "texteditor", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = $detail['copyright'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>

				<div class="h20px"></div>
				<div class="submit">
					<input type="hidden" value="?m=<?= $m ?>&c=<?= $c ?>" id="formjump" />
					<input type="submit" value="修改设置" />
					<input type="reset" value="重置" class="black" />
				</div>
				<div class="h100px"></div>
			</form>
		</div>
	</div>
	<?php include $TEMPLATE_PATH . "footer.php"; ?>
