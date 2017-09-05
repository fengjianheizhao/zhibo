<?php include $TEMPLATE_PATH. "header.php"; ?>
<?php include $TEMPLATE_PATH. "left.php"; ?>
<!-- CONTENT-->
<style type="text/css">
.content .noalt { }
#content table.noalt tr th { padding: 40px 20px 10px 20px; }
#content table.noalt tr td { padding: 5px 20px; line-height: 24px; }
</style>
<div id="content" class="white">
<div class="bloc">
	<div class="title">查看
		<?=$MOD['name']?>
	</div>
	<div class="content">
		<form action="?m=<?=$m?>&a=ajax&s=edit"  method="post" id="formbox" onSubmit="return ajaxSubmit(this)">
			<input  name="detail[uid]" value="<?= $detail['uid'] ?>" type="hidden"  />
			<input type="hidden" value="?m=<?= $m ?>&a=<?= $ac ?>&itemid=<?= $detail['uid'] ?>" id="formjump" />
			<table class="noalt" >
				<thead>
					<tr>
						<th colspan="2"><b>用户基本信息</b><em></em></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td width="150"><b>昵称</b></td>
						<td class="good"><?= $detail['nickname'] ?></td>
					</tr>
					<tr>
						<td><b>手机号</b></td>
						<td class="good"><?= $detail['phonenum'] ?></td>
					</tr>
					<tr>
						<td><b>邮箱</b></td>
						<td class="good"><?= $detail['email'] ?></td>
					</tr>
					<tr>
						<td><b>QQ</b></td>
						<td class="good"><?= $detail['qq'] ?></td>
					</tr>
					
					<tr>
						<td><b>所在城市</b></td>
						<td class="good">
						<?php
						$areaPro = $this->area->getArea($detail['pro']);
						$areaCity = $this->area->getArea($detail['city']);
						?>
						<?= $areaPro['area'] ?>&nbsp;<?= $areaCity['area'] ?>
						</td>
					</tr>
					
					
					<tr>
						<td><b>生日</b></td>
						<td class="good"><?= $detail['birthday'] ?></td>
					</tr>
					<tr>
						<td><b>性别</b></td>
						<td class="good"><?= $detail['sex']==1?"男":"女" ?></td>
					</tr>
					<tr>
						<td><b>毕业院校</b></td>
						<td class="good"><?= $detail['school'] ?></td>
					</tr>
					<tr>
						<td><b>所属专业</b></td>
						<td class="good"><?= $detail['profession'] ?></td>
					</tr>
				</tbody>
				<thead>
					<tr>
						<th colspan="2"><b>用户职业信息</b><em></em></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><b>金融业务</b></td>
						<td class="bad"><?= $this->business[$detail['business']]['name'] ?></td>
					</tr>
					<tr>
						<td><b>公司名称</b></td>
						<td class="bad"><?= $detail['company'] ?></td>
					</tr>
					<tr>
						<td><b>公司地址</b></td>
						<td class="bad"><?= $detail['compaddress'] ?></td>
					</tr>
					<tr>
						<td><b>从业时间</b></td>
						<td class="bad"><?= $detail['workingtime'] ?></td>
					</tr>
					<tr>
						<td><b>职位</b></td>
						<td class="bad"><?= $detail['position'] ?></td>
					</tr>
					<tr>
						<td><b>个人简介</b></td>
						<td class="bad"><?= $detail['aboutme'] ?></td>
					</tr>
					<tr>
						<td><b>业务介绍</b></td>
						<td class="bad"><?= $detail['intro'] ?></td>
					</tr>
					<tr>
						<td><b>从业证书</b></td>
						<td class="bad"><?= $detail['certificate'] ?></td>
					</tr>
					<tr>
						<td><b>行业资料</b></td>
						<td class="bad">
						<?php
						$industry=json_decode($detail['industry'], true);
						//print_r($industry);
						?>
						
						<?= $industry['sales'] ?></td>
					</tr>
				</tbody>
				<thead id="rengzheng">
					<tr>
						<th colspan="2"><b>用户职业认证信息</b><em></em></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><b>真实姓名</b></td>
						<td class="good"><?= $detail['truename'] ?></td>
					</tr>
					<tr>
						<td><b>身份证号</b></td>
						<td class="good"><?= $detail['cardnum'] ?></td>
					</tr>
					
					
					<tr>
						<td><b>会员头像</b></td>
						<td class="good"><img src="<?=$ADMIN_URL?><?=$this->user->getAvatar($detail['uid'], 180)?>" onerror="this.src='<?= $SKIN ?>img/avatar_180_180.jpg'"  width="180"  /></td>
					</tr>
					
					
					<tr>
						<td><b>身份证照片</b></td>
						<td class="good"><?php if($detail['idcard']){?>
							<a href="<?= $detail['idcard'] ?>" target="_blank"><img src="<?= $detail['idcard'] ?>" width="300" title="点击查看原图" /></a>
							<?php }else{?>
							未上传
							<?php }?></td>
					</tr>
					<tr>
						<td><b>手持身份证照片</b></td>
						<td class="good"><?php if($detail['handidcard']){?>
							<a href="<?= $detail['handidcard'] ?>" target="_blank"><img src="<?= $detail['handidcard'] ?>" width="300" title="点击查看原图" /></a>
							<?php }else{?>
							未上传
							<?php }?></td>
					</tr>
					<tr>
						<td><b>认证状态</b></td>
						<td class="good">
							<div class="input">
							<select name="detail[authstatus]" id="detail-authstatus">
								
								<option <?= $detail['authstatus']==0 ? "selected=\"selected\"" : "" ?> value="0">未认证</option>
								<option <?= $detail['authstatus']==1 ? "selected=\"selected\"" : "" ?> value="1">未审核</option>
								<option <?= $detail['authstatus']==2 ? "selected=\"selected\"" : "" ?> value="2">已认证</option>
								
							</select>
							</div>
						</td>
					</tr>
					<tr>
						<td><b>会员称呼</b></td>
						<td class="good">
							<div class="input"><input style="width:250px;"  name="detail[callname]" type="text" id="detail-callname" value="<?= $detail['callname'] ?>" /></div>
						
						</td>
					</tr>
					<tr>
						<td><b></b></td>
						<td class="good"><div class="submit"><input type="submit" value="立即更改" /></div></td>
					</tr>
					
				</tbody>
				<thead>
					<tr>
						<th colspan="2"><b>用户系统信息</b><em></em></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><b>上次登录时间</b></td>
						<td class="neutral"><?=date("Y-m-d H:i:s",$detail['logintime'])?></td>
					</tr>
					<tr>
						<td><b>上次登录IP</b></td>
						<td class="neutral"><?=$detail['loginip']?></td>
					</tr>
					<tr>
						<td><b>登录次数</b></td>
						<td class="neutral"><?=$detail['logins']?></td>
					</tr>
					<tr>
						<td><b>注册时间</b></td>
						<td class="neutral"><?=date("Y-m-d H:i:s",$detail['regtime'])?></td>
					</tr>
					<tr>
						<td><b>注册IP</b></td>
						<td class="neutral"><?=$detail['loginip']?></td>
					</tr>
				</tbody>
			</table>
			<div class="h100px"></div>
		</form>
	</div>
</div>
<?php include $TEMPLATE_PATH. "footer.php"; ?>
