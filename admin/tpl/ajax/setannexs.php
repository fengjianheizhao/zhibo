<style type="text/css">
.setannexs { padding: 5px; margin: 0px; }
.setannexs .file-add { }
.setannexs .file-list { }
.setannexs .file-list table { }
.setannexs .file-list table th, .setannexs .file-list table td { border-bottom: 1px dotted #cccccc; padding: 5px; }
.file-list-title { width: 290px; overflow: hidden; }
.file-list-right { text-align: center; width: 60px; }
</style>
<div class="setannexs">
	<div class="file-add">
		<button id="annexs-upload" onclick="set_annexs_add()" >添加文件</button>
	</div>
	<form action="?m=<?=$data['m']?>&a=ajax&s=backannexs" method="post" id="backannexsform" >
		<div class="file-list">
			<table width="100%" border="0" cellspacing="0" cellpadding="0">
				<tr id="annexs-upload-title">
					<th ><div class="file-list-title"><b>文件名称</b></div></th>
					<th width="70"><div class="file-list-right"><b>操作</b></div></th>
				</tr>
				<?php
				$key=0;
				if($data['annexs']&&is_array($data['annexs'])){
				foreach($data['annexs'] as $key=>$val){
				?>
				<tr id="showbox-<?=$key?>" class="showbox">
					<td ><div class="file-list-title"><a href="<?=$val['url']?>" target="_blank">
							<?=$val['title']?>
							</a></div></td>
					<td width="70"><div class="file-list-right"><span><a href="javascript:;" onclick="set_annexs_edit('<?=$key?>')">修改</a></span>&nbsp;&nbsp;<span><a href="javascript:;" onclick="set_annexs_remove('<?=$key?>')">删除</a></span></div></td>
				</tr>
				<tr id="editbox-<?=$key?>" class="editbox" style="display:none;">
					<td  valign="baseline"><div class="file-list-title">
							<input id="input-name-<?=$key?>" name="annexs[title][]" value="<?=$val['title']?>"  />
							<input id="input-url-<?=$key?>" name="annexs[url][]" value='<?=$val['url']?>' type="hidden"  />
						</div></td>
					<td width="70"><div class="file-list-right"><a href="javascript:;" onclick="set_annexs_save('<?=$key?>')">保存</a></div></td>
				</tr>
				<?php
					}
				}
				?>
			</table>
			<input id="annexs-maxkey" value='<?=$key?>' type="hidden"  />
			<input id="annexs-backid" name="backid" value='<?=$data['backid']?>' type="hidden"  />
		</div>
	</form>
</div>
