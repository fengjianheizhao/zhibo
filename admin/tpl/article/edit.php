<?php include $TEMPLATE_PATH. "header.php"; ?>
<?php include $TEMPLATE_PATH. "left.php"; ?>
<!-- CONTENT-->

<div id="content" class="white">
	<div class="bloc">
		<div class="title">添加<?= $MOD['name'] ?></div>
		<div class="content">
			<form action="?m=<?= $m ?>&c=ajax&a=edit"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
				<input  name="detail[id]" value="<?= $detail['id'] ?>" type="hidden"  />
				
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
				$value = $detail['cid'] ;
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
				$value = $detail['title'] ;
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
				$value = $detail['islink'];
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
				$value = $detail['linkurl'];
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
				$value = $detail['thumb'];
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
				$value = $detail['seotitle'];
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
				$value = $detail['seokeyword'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>
	
				
			
			
				<?php
				foreach($fieldsList as $k=>$v){
					$FIELD=$v;
					$value=$detail[$FIELD['name']];
					include $TEMPLATE_PATH."/input/".$v['formtype'].".php";
				}
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
				$value = $detail['content'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>
				
				<?php
				$FIELD = array(
					"name" => "intro", //字段名
					"title" => "{$MOD['name']}简介", //字段描述
					"prompt" => "不填则默认截取{$MOD['name']}内容前120字", //字段说明
					"formtype" => "textarea", //表单类型 
					"options" => "", //可选值
					"default" => "", //默认值
				);
				$value = $detail['intro'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>
				<div class="h20px"></div>
				
				<?php
				$FIELD = array(
					"name" => "author", //字段名
					"title" => "{$MOD['name']}作者", //字段描述
					"prompt" => "请填写{$MOD['name']}作者", //字段说明
					"formtype" => "textshort", //表单类型 
					"options" => "", //可选值
					"default" => "佚名", //默认值
				);
				$value = $detail['author'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>
				
				<?php
				$FIELD = array(
					"name" => "copyfrom", //字段名
					"title" => "{$MOD['name']}来源", //字段描述
					"prompt" => "请填写{$MOD['name']}来源", //字段说明
					"formtype" => "textshort", //表单类型 
					"options" => "", //可选值
					"default" => $_SETTING['sitename'], //默认值
				);
				$value = $detail['copyfrom'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>
				
				<?php
				$FIELD = array(
					"name" => "copyfromurl", //字段名
					"title" => "{$MOD['name']}来源网址", //字段描述
					"prompt" => "请填写{$MOD['name']}来源网址", //字段说明
					"formtype" => "text", //表单类型 
					"options" => "", //可选值
					"default" => $DEVICE['siteurl'], //默认值
				);
				$value = $detail['copyfromurl'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>
				
				<?php
				$FIELD = array(
					"name" => "hits", //字段名
					"title" => "浏览次数", //字段描述
					"prompt" => "", //字段说明
					"formtype" => "number", //表单类型 
					"options" => "", //可选值
					"default" => 0, //默认值
				);
				$value = $detail['hits'];
				include $TEMPLATE_PATH . "/input/" . $FIELD['formtype'] . ".php";
				?>
				
				
				<div class="h20px"></div>
				<div class="submit">
					<input type="hidden" value="<?=$jumpurl?>" id="formjump" />
					<input type="submit" value="立即保存" />
					<input type="reset" value="重置" class="black" />
				</div>
				<div class="h100px"></div>
			</form>
		</div>
	</div>
	<?php include $TEMPLATE_PATH. "footer.php"; ?>
