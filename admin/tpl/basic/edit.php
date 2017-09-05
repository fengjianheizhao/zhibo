<?php include $TEMPLATE_PATH. "header.php"; ?>
<?php include $TEMPLATE_PATH. "left.php"; ?>
<!-- CONTENT-->

<div id="content" class="white">
	<div class="bloc">
		<div class="title">添加<?=$MOD['name']?></div>
		<div class="content">
			<form action="?m=<?=$m?>&a=ajax&s=edit"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
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
				
				<div class="h20px"></div>
				<div class="input">
					<label for="detail-hits">浏览次数</label>
					<input style="width:80px;"  name="detail[hits]" type="text" id="detail-hits" value="<?= $detail['hits'] ?>" />
					<span class="red"></span></div>
				<div class="h20px"></div>
				<div class="submit">
					<input type="hidden" value="?m=<?= $m ?>" id="formjump" />
					<input type="submit" value="立即发布" />
					<input type="reset" value="重置" class="black" />
				</div>
				<div class="h100px"></div>
			</form>
		</div>
	</div>
	<?php include $TEMPLATE_PATH. "footer.php"; ?>