<div class="main main_consult">
	<div class="consult-con m">
		<div class="consult-title">
			<h3>没有找到您需要的？——<b>免费咨询</b></h3>
		</div>
		<div class="consult-body">
			<div class="consult-form f_l">
				<form id="guestbookform" class="guestbookform" target="_blank" method="post" action="<?=$URL->setUrl("?m=guestbook&ac=ajax&s=guestbook");?>">
					<table width="100%" border="0" cellspacing="0" cellpadding="0">
						<tr>
							<td width="90"><div class="lable"><span class="red">*</span>公司名称：</div></td>
							<td width="235"><div class="input">
									<input name="data[company]" type="text" value=""  onblur="this.placeholder='请输入公司名称'" onfocus="this.placeholder=''" placeholder="请输入公司名称" autocomplete="off" class="input_long"/>
								</div></td>
							<td width="90">&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td><div class="lable"><span class="red">*</span>联系人：</div></td>
							<td><div class="input">
									<input name="data[name]" type="text" value=""  onblur="this.placeholder='请输入公司联系人'" onfocus="this.placeholder=''" placeholder="请输入公司联系人" autocomplete="off" class="input_long"/>
								</div></td>
							<td colspan="2"><div class="input">
									<label class="radio">
										<input type="radio" name="data[sex]" value="2" id="guestbook_type_2" checked />
										先生</label>
									<label class="radio">
										<input type="radio" name="data[sex]" value="3" id="guestbook_type_3" />
										女士</label>
								</div></td>
						</tr>
						<tr>
							<td><div class="lable"><span class="red">*</span>所在城市：</div></td>
							<td colspan="3"><div class="input">
							<select name="data[province]"></select><select name="data[city]"></select>
							<script type="text/javascript">new PCAS("data[province],请选择省份","data[city],请选择城市");</script>
							</div></td>
						</tr>
						<tr>
							<td><div class="lable"><span class="red">*</span>联系电话：</div></td>
							<td><div class="input">
									<input name="data[tel]" type="text" value=""  onblur="this.placeholder='请输入您的联系电话'" onfocus="this.placeholder=''" placeholder="请输入您的联系电话" autocomplete="off" class="input_long"/>
								</div></td>
							<td><div class="lable"><span class="red">*</span>您的QQ：</div></td>
							<td><div class="input">
									<input  name="data[qq]" type="text" value=""  onblur="this.placeholder='请输入您的QQ'" onfocus="this.placeholder=''" placeholder="请输入您的QQ" autocomplete="off" class="input_long"/>
								</div></td>
						</tr>
						<tr>
							<td><div class="lable"><span class="red">*</span>咨询问题：</div></td>
							<td colspan="3"><div class="input">
									<textarea class="input_text"  name="data[content]" id="data_content" ></textarea>
								</div></td>
						</tr>
						<tr>
							<td>&nbsp;</td>
							<td><div class="button">
									<input class="submit" type="submit" onclick="return ajaxSubmit('#guestbookform');" />
								</div></td>
							<td>&nbsp;</td>
							<td>&nbsp;</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="consult-contact f_r">
				<dl class="jianzhan">
					<dt>网站建设客服</dt>
					<dd>
						<div class="qq">客服QQ：1097175588</div>
						<div class="tel">电话：400-678-5357</div>
					</dd>
				</dl>
				<dl class="muban">
					<dt>装修模板客服</dt>
					<dd>
						<div class="qq">京东QQ：610833875&nbsp;&nbsp;&nbsp;&nbsp;苏宁客服QQ：1071668551</div>
						<div class="tel">电话：18955112090</div>
					</dd>
				</dl>
				<dl class="dingzhi">
					<dt>定制服务客服</dt>
					<dd>
						<div class="qq">客服QQ：1097175588&nbsp;&nbsp;&nbsp;&nbsp;610833875</div>
						<div class="tel">电话：400-678-5357</div>
					</dd>
				</dl>
			
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
