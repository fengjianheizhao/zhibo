<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>
		<?= $title ?>
		</title>
		<meta name="description" content="<?= $description ?>" />
		<meta name="keywords" content="<?= $keywords ?>" />
		<meta name="renderer" content="webkit">
		<link rel="shortcut icon" type="image/ico" href="<?=$SITEURL?>favicon.ico">
		<link rel="stylesheet" type="text/css" href="//at.alicdn.com/t/font_a7uackqkvp3krzfr.css"/>
		<link rel="stylesheet" type="text/css" href="<?= $SKIN ?>css/common.css?<?=$TIMESUFFIX?>"/>
		<link rel="stylesheet" type="text/css" href="<?= $SKIN ?>css/style.css?<?=$TIMESUFFIX?>"/>
		<?php
		if (!empty($CSS) && is_array($CSS)) {
			foreach ($CSS as $v) {
				if ($v != "") {
		?>
		<link rel="stylesheet" type="text/css" href="<?= $SKIN ?>css/<?= $v ?>.css?<?=$TIMESUFFIX?>"/>
		<?php
				}
			}
		}
		?>
		<script type="text/javascript">
		var siteUrl="<?=$SITEURL?>";
		</script>
		<script type="text/javascript" src="<?=$SKIN?>js/jquery.js"></script>
		<script type="text/javascript" src="<?=$SKIN?>js/jquery.json-2.4.min.js"></script>
		<script type="text/javascript" src="<?=$SKIN?>js/jquery.form.js"></script>
		<script type="text/javascript" src="<?=$SKIN?>js/MSClass.js"></script>
		<script type="text/javascript" src="<?=$SKIN?>js/slide.js"></script>
		
		<!--script type="text/javascript" src="http://api.map.baidu.com/api?v=1.4"></script-->
		
		<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=GPBQByXlGWLjBnRNqZfj6OIKYvXFfuQI"></script>
		<script type="text/javascript" src="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.js"></script>
<link rel="stylesheet" href="http://api.map.baidu.com/library/SearchInfoWindow/1.5/src/SearchInfoWindow_min.css" />
		
		<script type="text/javascript" src="<?=$SKIN?>js/function.js?<?=$TIMESUFFIX?>"></script>
		<script type="text/javascript" src="<?=$SKIN?>js/common.js?<?=$TIMESUFFIX?>"></script>
		<?php
		if (!empty($SCRIPT) && is_array($SCRIPT)) {
			foreach ($SCRIPT as $v) {
				if ($v != "") {
		?>
		<script type="text/javascript" src="<?= $SKIN ?>js/<?= $v ?>.js?<?=$TIMESUFFIX?>"></script>
		<?php
				}
			}
		}
		?>
</head>
<body>
	<div class="top">
		<div class="m">
			<div class="top_l"> 
				<span class="tel">服务热线：<em><?=$_SETTING['tel']?></em></span>&nbsp;&nbsp;&nbsp;&nbsp;
				<span class="tel">官方QQ群：<em>570130481</em></span>&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
			<div class="top_r">
				<div class="topNav">
					<ul>
						<li><a href="<?=$URL->setUrl("?m=study&ac=list");?>" target="_blank">学车指南</a></li>
                        <li><a href="<?=$URL->setUrl("?m=pages&ac=show&itemid=23");?>" target="_blank">学车保障</a></li>
                        <li style=""><a href="<?=$URL->setUrl("?m=pages&ac=show&itemid=20");?>" target="_blank">关于我们</a></li>
                    </ul>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="header">
		<div class="m">
			<div class="logo"><a href="<?=$URL->setUrl("");?>"><img src="<?=$_SETTING['sitelogo']?>" width="<?=$_SETTING['logowidth']?>" height="<?=$_SETTING['logoheight']?>" /></a></div>
			<div class="nav">
				<ul>      
					<li <?=$nav_choose=="index"?"class=\"active\"":""?>><a href="<?=$URL->setUrl("");?>">首&nbsp;页</a></li>
					<li <?=$nav_choose=="site"?"class=\"active\"":""?>><!--i class="icon_hot"></i--><a href="<?=$URL->setUrl("?m=pages&ac=show&itemid=21");?>">场地分布</a></li>
					<li <?=$nav_choose=="ask"?"class=\"active\"":""?>><a href="<?=$URL->setUrl("?m=pages&ac=show&itemid=22");?>">报名须知</a></li>
					<li <?=$nav_choose=="baozhang"?"class=\"active\"":""?>><a href="<?=$URL->setUrl("?m=pages&ac=show&itemid=23");?>">学车保障</a></li>
					<li <?=$nav_choose=="news"?"class=\"active\"":""?>><!--i class="icon_new2"></i--><a href="<?=$URL->setUrl("?m=news&ac=list");?>">新闻动态</a></li>
					<li <?=$nav_choose=="about"?"class=\"active\"":""?>><a href="<?=$URL->setUrl("?m=pages&ac=show&itemid=20");?>">关于我们</a></li>
				</ul>
			</div>
		<div class="clearfix"></div>
		</div>
	</div>