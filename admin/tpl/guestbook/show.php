<?php defined('IN_SYSTEM') or exit('Access Denied');?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title><?= $_SETTING['sitename']; ?> - 管理后台 - Powered By LXZ</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
		<!-- jQuery AND jQueryUI -->
		<script type="text/javascript" src="<?= $SKIN ?>js/libs/jquery/1.6/jquery.min.js"></script>
		<script type="text/javascript" src="<?= $SKIN ?>js/jquery.json-2.4.min.js"></script>
		<script type="text/javascript" src="<?= $SKIN ?>js/jquery.form.js"></script>
		<script type="text/javascript" src="<?= $SKIN ?>js/libs/jqueryui/1.8.13/jquery-ui.min.js"></script>
		<link rel="stylesheet" href="<?= $SKIN ?>css/min.css" />
		<link rel="stylesheet" href="<?= $SKIN ?>css/css.css" />
		<script type="text/javascript" src="<?= $SKIN ?>js/min.js"></script>
		<!-- kindeditor -->

		<script type="text/javascript" src="<?= $SKIN ?>js/application.js"></script>
		<script type="text/javascript">
			var inlet = "";
			var seteurl = "<?= $ADMIN_URL ?>";
			var ad_skin = "<?= $SKIN ?>";
		</script>
		<style type="text/css">
			#content{ margin:0px; padding:0px;  }
			#content .bloc,#content .bloc:first-child{ margin:0px;}
			#content .bloc .title .toggle{ display:none;}
			#content .bloc .content .bad{   line-height:20px;}
		</style>
	</head>
	<body>
		<div style="padding:0px; margin:0px;">
			<div id="content" class="white">
				<div class="bloc">
					<div class="title"><?=($CONFIG_MODEL['guestbook']['admin_left']['list&mod='.$detail['mod']]);?>详情</div>
					<div class="content" style="height:800px;">
						<table class="noalt">
							<tbody>
								<?php 
									$fieldsList = $this->fields->listField($MOD['mid']);
									foreach ($fieldsList as $k => $v) {
										if($v['options']){
											//$FIELD_OPTIONS=@json_decode($v['options'],true);
											$FIELD_OPTIONS=$this->fields->getFieldValue($v, $value = false);
										}else{
											$FIELD_OPTIONS=array();
										}
										
										//if($v['formtype']=="checkbox"){$value_data=json_decode($value, true);}
										
								?>
								<tr>
									<td style="text-align:right; width:120px;"><b><?=$v['title']?>：</b></td>
									<td align="left" class="bad">
									<?php
										//print_r($FIELD_OPTIONS);
										if($v['formtype']=="checkbox"){
											$value_data=json_decode($detail[$v['name']], true);
											foreach($value_data as $k1=>$v1){
												echo $FIELD_OPTIONS[$v1]."&nbsp;&nbsp;&nbsp;&nbsp;";
											}
										
										}elseif($v['formtype']=="select"||$v['formtype']=="radio"){
											echo $FIELD_OPTIONS[$detail[$v['name']]];
										}else{
											echo $detail[$v['name']];
										}
									?>
									</td>
								</tr>
								<?php }?>
								<tr>
									<td style="text-align:right;"><b>留言时间：</b></td>
									<td align="left" class="bad"><?= date("Y-m-d H:i:s", $detail['addtime']) ?></td>
								</tr>
								<tr>
									<td style="text-align:right;"><b>留言IP：</b></td>
									<td align="left" class="bad"><?= $detail['ip'] ?></td>
								</tr>
								
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
<?php include $TEMPLATE_PATH. "footer.php"; ?>
