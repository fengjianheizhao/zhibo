<?php
$CSS = array('');
$SCRIPT = array('');
include $TEMPLATE . 'header.php';
?>

<div class="min_xt">
	<div style="height:350px; overflow:hidden; position:relative;">
		<div class="w1920">
			<div class="cru_fge">
				<?php $AD->ads(9);?>
			</div>
		</div>
		<div class="opacity_show"></div>
	</div>
</div>
<div class="page_about_us">
	<div class="h40"></div>
	<div class="m">
		<div class="about_us_list">
			<div class="selabout_list_flet">
				<ul>
					<?php $tags=$this->tag("m=pages&t=pages_8&w=`cid`=1&l=10&o=`sort` ASC ,id ASC")?>
					<?php foreach($tags as $k=>$v){?>
					<li <?=$v['id']==$detail['id']?"class=\"addcldjyxg\"":""?>><a href="<?=$URL->setUrl("?m=pages&ac=show&itemid={$v['id']}");?>" class="djyxg"><?=$v['title']?></a></li>
					<?php }?>
				</ul>
			</div>
			<div class="sshnidonde">
				<div class="selabout_list_frlt" >
					<div class="auto">
						<div class="gonsititl"><?=$detail['title']?></div>
		
						<div class="h10"></div>
                        	<div class="page_content">
	<div class="page_right">

		<div class="content guestbook">
			
			<div class="guestbookformbox">
				<form id="guestbookform" class="guestbookform" target="_blank" method="post" action="<?=$URL->setUrl("?m=guestbook&ac=ajax&s=guestbook");?>">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td width="90"><div class="input_label">反馈类型：</div></td>
						<td><div class="input_box">
							<label class="radio"><input type="radio" name="data[type]" value="2" id="guestbook_type_2" checked />咨询</label>
							<label class="radio"><input type="radio" name="data[type]" value="3" id="guestbook_type_3" />投诉</label>
							<label class="radio"><input type="radio" name="data[type]" value="4" id="guestbook_type_4" />建议</label>
						</div></td>
					</tr>
					<tr>
						<td><div class="input_label">反馈内容：</div></td>
						<td><div class="input_box"><textarea name="data[content]" id="data_content" class="input_text"></textarea></div></td>
					</tr>
					<tr>
						<td><div class="input_label">您的称呼：</div></td>
						<td><div class="input_box"><input name="data[name]" type="text" value=""  onblur="this.placeholder='2-5字中文姓名'" onfocus="this.placeholder=''" placeholder="2-5字中文姓名" autocomplete="off" class="input_long"/></div></td>
					</tr>
					<tr>
						<td><div class="input_label">您的电话：</div></td>
						<td><div class="input_box"><input name="data[phonenum]" type="text" value=""  onblur="this.placeholder='您的手机号码'" onfocus="this.placeholder=''" placeholder="您的手机号码" autocomplete="off" class="input_long"/></div></td>
					</tr>
					<!--tr>
						<td><div class="input_label">您的QQ：</div></td>
						<td><div class="input_box"><input name="data[qq]" type="text" value=""  onblur="this.placeholder='您的QQ号码'" onfocus="this.placeholder=''" placeholder="您的QQ号码" autocomplete="off" class="input_long"/></div></td>
					</tr-->
					<tr>
						<td><div class="input_label">您的邮箱：</div></td>
						<td><div class="input_box"><input name="data[email]" type="text" value=""  onblur="this.placeholder='您的邮箱'" onfocus="this.placeholder=''" placeholder="您的邮箱" autocomplete="off" class="input_long"/></div></td>
					</tr>
					<tr>
						<td><div class="input_label">验证码：</div></td>
						<td><div class="input_box">
						<input name="data[captcha]" type="text" value=""  onblur="this.placeholder='验证码'" onfocus="this.placeholder=''" placeholder="验证码" autocomplete="off" class="input_short" />
						<img class="captcha" id="captcha" src="<?=$URL->setUrl("?m=captcha&ac=index");?>" width="60" height="26"  onclick="this.src='<?=$URL->setUrl("?m=captcha&ac=index");?>'+'#'+Math.random()" /><a class="replace" href="javascript:;" onclick="$('#captcha').attr('src','<?=$URL->setUrl("?m=captcha&ac=index");?>'+'#'+Math.random())">换一张</a>
						<div class="clearfix"></div>
						</div></td>
					</tr>
					<tr>
						<td><div></div></td>
						<td><div class="input_buttn"><a href="javascript:;" onclick="ajaxSubmit('#guestbookform')">立刻提交</a></div></td>
					</tr>
				</table>
			</form>
			</div>
		</div>
	</div>
	<div class="clearfix"></div>
</div>
					</div>
				</div>

			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="h40"></div>
</div>

<?php
include $TEMPLATE . 'footer.php';
?>

