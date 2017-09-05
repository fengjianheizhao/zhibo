<?php
$nav_choose="study";
$CSS = array('news');
$SCRIPT = array();
include $TEMPLATE . 'header.php';
?>
<?php $banner=$AD->ads(20,false);?>

<div style="height:<?=$banner['height']?>px; overflow:hidden; position:relative;">
	<div class="w1920">
		<?php $AD->ads(20);?>
	</div>
</div>
<div class="h20"></div>
<div class="gongao_list">
	<div class="m">
		<div class="list_left">
			<div class="list_title">
				<div class="tit_font"><span>
					<?=$cate['name']?$cate['name']:$MOD['name'] ?>
					</span></div>
				<div class="cttle_right">
					<?php
                   if($data['pagenum']>=1){	
				?>
					<a href="<?=$URL->setUrl("?m={$m}&ac={$ac}&type={$type}&page={$data['prev']}");?>" class="click_left"> <img src="<?=$SKIN?>images/list_lefts.gif" /> </a> <font class="cp_page"><b class="bbqdjy">
					<?php for($i=$data['page_start'];$i<=$data['page_end'];$i++){?>
					<?php if($i==$data['page']){?>
					<?php if($i==$data['page_end']){?>
					<?=$i==$data['page_end']?$data['page_end']:1;?>
					<?php }else{?>
					<?=$i?>
					<?php }?>
					<?php }?>
					<?php }?>
					</b>/<b class="zuidashu">
					<?=$data['page_end']?>
					</b></font> <a href="<?=$URL->setUrl("?m={$m}&ac={$ac}&type={$type}&page={$data['next']}");?>" class="click_right"> <img src="<?=$SKIN?>images/list_right.gif" /> </a>
					<?php
				}
			?>
					<script type="text/javascript">
          
            </script> 
				</div>
			</div>
			<div class="list_coment">
				<ul>
					<?php foreach($data['list'] as $v){?>
					<li>
						<?php if($v['thumb']!=""){?>
						<div class="new_leftimg  ml18"> <a href="<?=$URL->setUrl("?m={$m}&ac=show&itemid={$v['id']}",$v);?>" target="_blank"> <img width="200" height="140" src="<?=$v['thumb']?>"></a> </div>
						<?php }?>
						<div class="new_txt <?=($v['thumb']!="")?"w560":"w800"?> ">
							<p class="new_tit font15 fontcolor onliover"> <a href="<?=$URL->setUrl("?m={$m}&ac=show&itemid={$v['id']}",$v);?>" target="_blank">
								<?=$v['title']?>
								</a> </p>
							<p class="fontcolor lin28">
								<?=utf8_substr($v['intro'],0,200)?>
								... <a href="<?=$URL->setUrl("?m={$m}&ac=show&itemid={$v['id']}",$v);?>" target="_blank">[查看详细]</a> </p>
							<span class="rig_time">
							<?=date("Y-m-d H:i:s",$v['addtime'])?>
							</span> </div>
						<div class="clearfix"></div>
						<b class="line"></b>
					</li>
					<?php }?>
				</ul>
				<div class="page_fenye">
					<div class="pages">
						<?php
                    	if($data['pagenum']>=1){	
					?>
						<div class="page"> <a class="prev" href="<?=$URL->setUrl("?m={$m}&ac={$ac}&type={$type}&page={$data['prev']}");?>">上一页</a>
							<?php for($i=$data['page_start'];$i<=$data['page_end'];$i++){?>
							<?php if($i==$data['page']){?>
							<b>
							<?=$i?>
							</b>
							<?php }else{?>
							<a href="<?=$URL->setUrl("?m={$m}&ac={$ac}&type={$type}&page={$i}");?>">
							<?=$i?>
							</a>
							<?php }?>
							<?php }?>
							<a class="next" href="<?=$URL->setUrl("?m={$m}&ac={$ac}&type={$type}&page={$data['next']}");?>">下一页</a> </div>
						<?php
					}
					?>
					</div>
				</div>
			</div>
		</div>
		<div class="list_right">
			<div class="list_title">
				<div class="cttle_left"> <span class="tit_font">热门资讯</span> </div>
			</div>
			<div class="news_list">
				<ul>
					<?php $news=$this->tag("m=news&t=news_11&w=`status`=1 &o=`recom` DESC,id DESC&l=10")?>
					<?php foreach($news as $v){?>
					<li><a href="<?=$URL->setUrl("?m=news&ac=show&itemid={$v['id']}",$v);?>" target="_blank">
						<?=$v['title']?>
						</a></li>
					<?php }?>
				</ul>
			</div>
		</div>
	</div>
</div>
<div class="h20"></div>
<?php
include $TEMPLATE . 'footer.php';
?>
