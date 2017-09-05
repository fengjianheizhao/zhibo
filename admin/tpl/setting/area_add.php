<?php
defined('IN_SYSTEM') or exit('Access Denied');?>
<?php include $TEMPLATE_PATH. "header.php"; ?>
<?php include $TEMPLATE_PATH. "left.php"; ?>
<!-- CONTENT-->

<div id="content" class="white">
	<div class="bloc">
		<div class="title">添加<?= $title ?></div>
		<div class="content">
			<form action="?m=<?=$m?>&c=ajax&a=areaadd" method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
				<div class="input select_area">
				<label for="detail-area">上级地区</label>
				<?php
				$area = $this->area->listArea(0);
				?>
				<select name="detail[area][]" id="detail-area-v0" class="detail-area" onchange="set_area(this)" >
					<option  value="0">--顶级地区--</option>
					<?php
					foreach($area as $k=>$v){
					?>
					<option  value="<?=$v['areaid']?>" <?=$v['areaid']==$areas[0]['areaid']?"selected=\"selected\"":""?>><?=$v['area']?></option>
					<?php
					}
					?>
				</select>
				<?php
				if($areas[1]['areaid']){
					$area = $this->area->listArea($areas[1]['pid']);
				?>
				<select name="detail[area][]" id="detail-area-v1" class="detail-area" onchange="set_area(this)" >
					<option  value="0">--请选择--</option>
					<?php
					foreach($area as $k=>$v){
					?>
					<option  value="<?=$v['areaid']?>" <?=$v['areaid']==$areas[1]['areaid']?"selected=\"selected\"":""?>><?=$v['area']?></option>
					<?php
					}
					?>
				</select>
				<?php
				}
				if($areas[2]['areaid']){
				$area = $this->area->listArea($areas[2]['pid']);
				?>
				<select name="detail[area][]" id="detail-area-v2" class="detail-area" onchange="set_area(this)" >
					<option  value="0">--请选择--</option>
				<?php
					foreach($area as $k=>$v){
				?>
					<option  value="<?=$v['areaid']?>" <?=$v['areaid']==$areas[2]['areaid']?"selected=\"selected\"":""?>><?=$v['area']?></option>
				<?php
					}
				}
				?>
				</select>
				</div>
				<div class="input textarea">
					<label for="textarea1">地区名称</label>
					<textarea name="detail[name]" id="textarea1" style="width:250px;" rows="5" cols="4"></textarea>
					允许批量添加，一行一个，点回车换行 </div>

				
			<div class="input">
				<label for="detail-type">地区类型</label>
				<div class="update-box">
					<input  name="detail[type]" type="radio" id="detail-type_0" value="0" <?= $detail['type'] == 0 ? "checked=\"checked\"" : "" ?>/>
					<label for="detail-type_0" class="inline">直辖市</label>
					
					<input  name="detail[type]" type="radio" id="detail-type_1" value="1" <?= $detail['type'] == 1 ? "checked=\"checked\"" : "" ?>/>
					<label for="detail-type_1" class="inline">省/自治区</label>
					
					<input  name="detail[type]" type="radio" id="detail-type_2" value="2" <?= $detail['type'] == 2 ? "checked=\"checked\"" : "" ?>/>
					<label for="detail-type_2" class="inline">市</label>
					
					<input  name="detail[type]" type="radio" id="detail-type_3" value="3" <?=$detail['type']== 3?"checked=\"checked\"":""?>/>
					<label for="detail-type_3" class="inline">区/县</label>
				</div>
			</div>
			<div class="input">
				<label for="detail-type">隐藏子地区</label>
				<div class="update-box">
					<input  name="detail[childstatus]" type="checkbox" id="detail-childstatus" value="1"  <?= $detail['childstatus'] == 1 ? "checked=\"checked\"" : "" ?>/>
					<label for="detail-childstatus" class="inline">隐藏子地区</label>
					<br />勾选则在前台不显示该地区的子级地区
				</div>
			</div>
			<div class="h20px"></div>
			<div class="submit">
					<input type="hidden" value="" id="formjump" />
					<input type="submit" value="立即创建" />
					<input type="reset" value="重置" class="black"/>
				</div>
				<div class="h100px"></div>
			</form>
		</div>
	</div>
	<?php include $TEMPLATE_PATH. "footer.php"; ?>
