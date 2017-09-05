<?php include $TEMPLATE_PATH. "header.php"; ?>
<?php include $TEMPLATE_PATH. "left.php"; ?>
<!-- CONTENT-->

<div id="content" class="white">
	<div class="bloc">
		<div class="title">编辑<?=$MOD['name']?></div>
		<div class="content">
			<form action="?m=<?=$m?>&a=ajax&s=edit"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
				<input  name="detail[uid]" value="<?= $detail['uid'] ?>" type="hidden"  />
				
				<div class="input">
					<label for="detail-gid">所属会员组</label>
					<select name="detail[gid]" id="detail-gid">
						<?php
						if ($grouplist && is_array($grouplist)) {
							foreach ($grouplist as $key => $val) {
						?>
							<option <?= $key == $detail['gid']? "selected=\"selected\"" : "" ?> value="<?= $key ?>"><?= $val['gname'] ?></option>
						<?php
							}
						}
						?>
					</select>
				请选择所属会员组</div>
				
				
				<?php
                $FIELD=array(
					"name"=>"account",//字段名
					"title"=>"{$MOD['name']}账号",//字段描述
					"prompt"=>"请填写{$MOD['name']}账号",//字段说明
					"formtype"=>"text",//表单类型 
					"options"=>"",//可选值
					"default"=>"",//默认值
					
				);
				$value=$detail['account'];
				include $TEMPLATE_PATH."/input/".$FIELD['formtype'].".php";
				?>
				
				<?php
                $FIELD=array(
					"name"=>"nickname",//字段名
					"title"=>"{$MOD['name']}昵称",//字段描述
					"prompt"=>"请填写{$MOD['name']}昵称",//字段说明
					"formtype"=>"text",//表单类型 
					"options"=>"",//可选值
					"default"=>"",//默认值
					
				);
				$value=$detail['nickname'];
				include $TEMPLATE_PATH."/input/".$FIELD['formtype'].".php";
				?>
				
				
				<?php
                $FIELD=array(
					"name"=>"phonenum",//字段名
					"title"=>"{$MOD['name']}手机号",//字段描述
					"prompt"=>"请填写{$MOD['name']}手机号",//字段说明
					"formtype"=>"text",//表单类型 
					"options"=>"",//可选值
					"default"=>"",//默认值
					
				);
				$value=$detail['phonenum'];
				include $TEMPLATE_PATH."/input/".$FIELD['formtype'].".php";
				?>
				
				<?php
                $FIELD=array(
					"name"=>"password",//字段名
					"title"=>"{$MOD['name']}密码",//字段描述
					"prompt"=>"请填写{$MOD['name']}密码,不填写则密码不修改",//字段说明
					"formtype"=>"password",//表单类型 
					"options"=>"",//可选值
					"default"=>"",//默认值
					
				);
				$value=NULL;
				include $TEMPLATE_PATH."/input/".$FIELD['formtype'].".php";
				?>
				
				<?php
                $FIELD=array(
					"name"=>"qq",//字段名
					"title"=>"{$MOD['name']}QQ",//字段描述
					"prompt"=>"请填写{$MOD['name']}QQ",//字段说明
					"formtype"=>"text",//表单类型 
					"options"=>"",//可选值
					"default"=>"",//默认值
					
				);
				$value=$detail['qq'];
				include $TEMPLATE_PATH."/input/".$FIELD['formtype'].".php";
				?>

				
				
				<?php
                $FIELD=array(
					"name"=>"email",//字段名
					"title"=>"{$MOD['name']}邮箱",//字段描述
					"prompt"=>"请填写{$MOD['name']}邮箱",//字段说明
					"formtype"=>"text",//表单类型 
					"options"=>"",//可选值
					"default"=>"",//默认值
					
				);
				$value=$detail['email'];
				include $TEMPLATE_PATH."/input/".$FIELD['formtype'].".php";
				?>
				
				
				<?php
                $FIELD=array(
					"name"=>"sex",//字段名
					"title"=>"{$MOD['name']}性别",//字段描述
					"prompt"=>"请选择{$MOD['name']}性别",//字段说明
					"formtype"=>"radio",//表单类型 
					"options"=>json_encode(array(array("key"=>"男","value"=>"1"),array("key"=>"女","value"=>"2"))),//可选值
					"default"=>"",//默认值
					
				);
				$value=$detail['sex'];
				include $TEMPLATE_PATH."/input/".$FIELD['formtype'].".php";
				?>
				
			
					
				<div class="h20px"></div>
				<div class="submit">
					<input type="hidden" value="?m=<?= $m ?>&a=list&itemid=<?= $detail['uid'] ?>" id="formjump" />
					<input type="submit" value="立即保存" />
					<input type="reset" value="重置" class="black" />
				</div>
				<div class="h100px"></div>
			</form>
		</div>
	</div>
	<?php include $TEMPLATE_PATH. "footer.php"; ?>