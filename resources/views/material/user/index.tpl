





{include file='user/main.tpl'}

{$ssr_prefer = URL::SSRCanConnect($user, 0)}


	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading"><br>用户中心</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
				<div class="ui-card-wrap">

						<div class="col-lg-6 col-md-6">

							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">系统公告</p>
										{if $ann != null}
										<p>{$ann->content}</p>
										{/if}
                                      <b><p style="color:#e53935; font-size:20px;">注意:超过1个月没有签到过的账号将会自动删除!</p></b>
									</div>

								</div>
							</div>

							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">与我们取得联系</p>
										<p>&nbsp;Telegram:&nbsp;<a href="http://t.me/ncback" target="_blank">http://t.me/ncback</a><br>
										&nbsp;Discord:&nbsp;<a href="https://discord.gg/fGdEavz" target="_blank">https://discord.gg/fGdEavz</a></p>
									</div>
								</div>
							</div>
							
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading" style="font-family:"黑体"">开始使用</p>
										<p>在这里为,您准备了全自动化的配置方案,包含了所有服务器的信息,方便您在诸多的服务器中快速添加,快速切换.
										<br>目前所有节点支持SS/SSR/SSRR/SSTap等软件,请大家自行选择!</p>
										<nav class="tab-nav margin-top-no">
											<ul class="nav nav-list">
												<li {if $ssr_prefer}class="active"{/if}>
													<a class="waves-attach" data-toggle="tab" href="#all_ssr"><i class="icon icon-lg">airplanemode_active</i>&nbsp;SSR(推荐)</a>
												</li>
												<li {if !$ssr_prefer}class="active"{/if}>
													<a class="waves-attach" data-toggle="tab" href="#all_ss"><i class="icon icon-lg">flight_takeoff</i>&nbsp;SS</a>
												</li>
												<li {if !$ssr_prefer}class="active"{/if}>
													<a class="waves-attach" data-toggle="tab" href="#all_sstap"><i class="icon icon-lg">functions</i>&nbsp;SSTap</a>
												</li>
											</ul>
										</nav>
										<div class="card-inner">
											<div class="tab-content">
												<div class="tab-pane fade {if $ssr_prefer}active in{/if}" id="all_ssr">
													{$pre_user = URL::cloneUser($user)}

													<nav class="tab-nav margin-top-no">
														<ul class="nav nav-list">
															<li>
																<a class="waves-attach" data-toggle="tab" href="#all_ssr_windows"><i class="icon icon-lg">desktop_windows</i>&nbsp;win</a>
															</li>
															<li>
																<a class="waves-attach" data-toggle="tab" href="#all_ssr_mac"><i class="icon icon-lg">laptop_mac</i>&nbsp;Mac</a>
															</li>
															<li>
																<a class="waves-attach" data-toggle="tab" href="#all_ssr_ios"><i class="icon icon-lg">laptop_mac</i>&nbsp;IOS</a>
															</li>
															<li>
																<a class="waves-attach" data-toggle="tab" href="#all_ssr_android"><i class="icon icon-lg">android</i>&nbsp;Android</a>
															</li>
														</ul>
													</nav>
													<div class="tab-pane fade active in" id="all_ssr_info">
													     <p>您已选择使用 SSR 进行体验<br>
														 请在上面选择一种您使用的设备,并根据教程进行服务器设置.祝你好运</p>
													</div>
													<div class="tab-pane fade" id="all_ssr_windows">
														<p><a href="http://ncback.oss-cn-beijing.aliyuncs.com/windows/ssr-win.7z">下载</a>,解压,运行程序,然后您有三种方式导入所有节点<br>
															(1)下载<a href="/user/getpcconf?is_&is_ss=0">这个(普通端口)</a>或者<a href="/user/getpcconf?is_mu=1&is_ss=0">这个(单端口多用户)</a>,右键小飞机 服务器 -- 从配置文件导入服务器,选择这个文件,<br>
															(2)点击<a class="copy-text" data-clipboard-text="{$ssr_url_all}">这里</a>,然后右键小飞机 -- 从剪贴板复制地址<br>
															(3)(推荐)右键小飞机--服务器--SSR服务器订阅设置,将订阅地址设置为下面的地址,其他参数留空,确定之后再更新 SSR 服务器订阅.<br>
															然后选择一个合适的服务器,系统代理模式选”全局模式”,代理规则选“绕过局域网和大陆”,然后即可上网.</p>

														<p>SSR 订阅地址,您可以在节点列表处添加订阅来自动更新节点：<br><code>{$baseUrl}/link/{$ssr_sub_token}</code><br>
														</p>
													</div>
													<div class="tab-pane fade" id="all_ssr_mac">
														<p><a href="http://ncback.oss-cn-beijing.aliyuncs.com/mac/ShadowsocksX-NG-R8(1.4.2-R8).dmg">下载</a>,安装,然后下载<a href="/user/getpcconf?is_&is_ss=0">这个</a>,运行程序,小飞机上右键 服务器列表 子菜单 的 “导入服务器配置文件...” 导入这个文件,然后选择一个合适的服务器,更新一下PAC,然后开启系统代理即可上网.</p>
													</div>
													<div class="tab-pane fade" id="all_ssr_ios">
														<p>推荐下载<a href="https://itunes.apple.com/cn/app/shadowrocket/id932747118?mt=8">Shadowrocket</a>或者<a href="https://itunes.apple.com/cn/app/superwingy/id1290093815?l=en&mt=8">SuperWingy</a>,然后在 Safari 中点击<a href="{$ssr_url_all}">这个(普通端口)</a>或者<a href="{$ssr_url_all_mu}">这个(单端口多用户)</a>,然后点击确定,就可以批量添加节点.</p>
														<p>SSR 订阅地址,您可以在节点列表处添加订阅来自动更新节点：<br><code>{$baseUrl}/link/{$ssr_sub_token}</code><br>
														</p>
													</div>
													<div class="tab-pane fade" id="all_ssr_android">
														<p><a href="http://ncback.oss-cn-beijing.aliyuncs.com/android/SSR.apk">下载</a>,安装,然后在手机上默认浏览器中点击<a href="{$ssr_url_all}">这个链接</a>,然后点击确定,批量添加完节点,然后路由选择绕过大陆,右上角开启就可以上网了.同时提供一个 ACL 地址,<a href="/link/{$acl_token}">长按复制地址</a>到客户端里应用即可.</p>
														<p>SSR 订阅地址,您可以在节点列表处添加订阅来自动更新节点:<br><code>{$baseUrl}/link/{$ssr_sub_token}</code><br>
													</p>
													</div>

												</div>
												<div class="tab-pane fade {if !$ssr_prefer}active in{/if}" id="all_ss">
													<nav class="tab-nav margin-top-no">
														<ul class="nav nav-list">
															<li>
																<a class="waves-attach" data-toggle="tab" href="#all_ss_windows"><i class="icon icon-lg">desktop_windows</i>&nbsp;Win</a>
															</li>
															<li>
																<a class="waves-attach" data-toggle="tab" href="#all_ss_mac"><i class="icon icon-lg">laptop_mac</i>&nbsp;Mac</a>
															</li>
															<li>
																<a class="waves-attach" data-toggle="tab" href="#all_ss_ios"><i class="icon icon-lg">laptop_mac</i>&nbsp;IOS</a>
															</li>
															<li>
																<a class="waves-attach" data-toggle="tab" href="#all_ss_android"><i class="icon icon-lg">android</i>&nbsp;Android</a>
															</li>
														</ul>
													</nav>
													<div class="tab-pane fade active in" id="all_ss_info">
														<p>您已选择使用 SS 进行体验<br>
														请在上面选择一种您使用的设备,并根据教程进行服务器设置.祝你好运</p>
													</div>
													<div class="tab-pane fade" id="all_ss_windows">
														<p><a href="http://ncback.oss-cn-beijing.aliyuncs.com/windows/ss-win.zip">下载</a>,解压,运行程序,然后您有两种方式导入所有节点<br>
															(1)下载<a href="/user/getpcconf?is_&is_ss=1">这个</a>,放到小飞机的目录下,然后打开小飞机.<br>
															(2)点击<a class="copy-text" data-clipboard-text="{$ss_url_all_win}">这里(普通端口)</a>, 然后右键小飞机 -- 从剪贴板导入 URL<br>
													</div>
													<div class="tab-pane fade" id="all_ss_mac">
														<p><a href="http://ncback.oss-cn-beijing.aliyuncs.com/mac/ShadowsocksX-NG.1.6.1.zip">下载</a>,安装,然后下载<a href="/user/getpcconf?is_&is_ss=1">这个</a>,运行程序,小飞机上右键 服务器列表 子菜单 的 “导入服务器配置文件...” 导入这个文件,然后选择一个合适的服务器,更新一下PAC,然后开启系统代理即可上网.</p>
													</div>
													<div class="tab-pane fade" id="all_ss_ios">
														<p>推荐下载<a href="https://itunes.apple.com/cn/app/shadowrocket/id932747118?mt=8">Shadowrocket</a>或者<a href="https://itunes.apple.com/cn/app/superwingy/id1290093815?l=en&mt=8">SuperWingy</a>,然后在 Safari 中点击<a href="{$ss_url_all}">这个(普通端口)</a>或者<a href="{$ss_url_all_mu}">这个(单端口多用户)</a>,然后点击确定,就可以批量添加节点.</p>
														<p>iOS 下载<a href="/link/{$ios_token}?is_ss=1">这个(普通端口)</a>或者<a href="/link/{$ios_token}?is_ss=1&is_mu=1">这个(单端口多用户)</a>,导入到 Surge 中,然后就可以随意切换服务器上网了.</p>
													</div>
													<div class="tab-pane fade" id="all_ss_android">
														<p><a href="http://ncback.oss-cn-beijing.aliyuncs.com/android/SS.apk">下载</a>,安装,然后在手机上点击<a class="copy-text" data-clipboard-text="{$ss_url_all}">这个链接</a>,复制到剪贴板,打开 Shadowsocks 客户端,选择从剪贴板导入,然后选择一个节点,设置一下路由为绕过大陆,点击飞机就可以上网了.</p>
													</div>
												</div>
												
												<div class="tab-pane fade {if !$ssr_prefer}active in{/if}" id="all_sstap">
													<nav class="tab-nav margin-top-no">
														<ul class="nav nav-list">
															<li>
																<a class="waves-attach" data-toggle="tab" href="#all_sstap_windows"><i class="icon icon-lg">desktop_windows</i>&nbsp;Windows</a>
															</li>
														</ul>
													</nav>
													<div class="tab-pane fade active in" id="all_ss_info">
														<p>您已选择使用 SSTap 进行体验<br>
														本软件仅限 Windows端 使用</p>
													</div>
													<div class="tab-pane fade" id="all_sstap_windows">
														<p><a href="http://ncback.oss-cn-beijing.aliyuncs.com/windows/SSTap-beta-setup-1.0.9.7.exe">下载</a>并安装.然后导入节点<br>
															点击下方的齿图标并依此选择:SSR订阅→SSR订阅管理.并在对话框中粘贴下方的订阅源地址即可.<br>
															<code>{$baseUrl}/link/{$ssr_sub_token}</code>
													</div>
												</div>
											</div>
										</div>
										<div class="card-action">
											<div class="card-action-btn pull-left">
												<p><a class="btn btn-brand btn-flat waves-attach" href="/user/url_reset"><span class="icon">close</span>&nbsp;重置所有链接</a></p>
											</div>
										</div>
									</div>

								</div>
							</div>
						
						
						
						<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
									<p class="card-heading" style="font-family:"黑体"">账号信息</p>
													     <p>各个节点的地址请到<a href="http://ncback.top/user/node">节点列表</a>查看！</p>
														{$user = URL::getSSRConnectInfo($pre_user)}
														{$ssr_url_all = URL::getAllUrl($pre_user, 0, 0)}
														{$ssr_url_all_mu = URL::getAllUrl($pre_user, 1, 0)}
														{if URL::SSRCanConnect($user)}
														<dl class="dl-horizontal">
															<p><dt>端口</dt>
															<dd>{$user->port}</dd></p>

															<p><dt>密码</dt>
															<dd>{$user->passwd}</dd></p>

															<p><dt>自定义加密</dt>
															<dd>{$user->method}</dd></p>

															<p><dt>自定义协议</dt>
															<dd>{$user->protocol}</dd></p>

															<p><dt>自定义混淆</dt>
															<dd>{$user->obfs}</dd></p>
														</dl>
														{else}
															<p>您好,您目前的 加密方式,混淆,或者协议设置在 ShadowsocksR 客户端下无法连接.请您选用 Shadowsocks 客户端来连接,或者到 资料编辑 页面修改后再来查看此处.</p>

															<p>同时, ShadowsocksR 单端口多用户的连接不受您设置的影响,您可以在此使用相应的客户端进行连接~</p>

															<p>请注意,在当前状态下您的 SSR 订阅链接已经失效,您无法通过此种方式导入节点.</p>
														{/if}
										
										
									</div>
								</div>
							</div>
						</div>


						<div class="col-lg-6 col-md-6">
						
						    <div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">活动公告</p>
										<p>暂时木有活动
										</p>
									</div>
								</div>
							</div>

							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">

										<div id="traffic_chart" style="height: 300px; width: 100%;"></div>

										<script src="//cdn.staticfile.org/canvasjs/1.7.0/canvasjs.js"></script>
										<script type="text/javascript">
											var chart = new CanvasJS.Chart("traffic_chart",
											{
												title:{
													text: "流量使用情况",
													fontFamily: "Impact",
													fontWeight: "normal"
												},

												legend:{
													verticalAlign: "bottom",
													horizontalAlign: "center"
												},
												data: [
												{
													//startAngle: 45,
													indexLabelFontSize: 20,
													indexLabelFontFamily: "Garamond",
													indexLabelFontColor: "darkgrey",
													indexLabelLineColor: "darkgrey",
													indexLabelPlacement: "outside",
													type: "doughnut",
													showInLegend: true,
													dataPoints: [
														{if $user->transfer_enable != 0}
														{
															y: {$user->last_day_t/$user->transfer_enable*100}, legendText:"已用 {number_format($user->last_day_t/$user->transfer_enable*100,2)}% {$user->LastusedTraffic()}", indexLabel: "已用 {number_format($user->last_day_t/$user->transfer_enable*100,2)}% {$user->LastusedTraffic()}"
														},
														{
															y: {($user->u+$user->d-$user->last_day_t)/$user->transfer_enable*100}, legendText:"今日 {number_format(($user->u+$user->d-$user->last_day_t)/$user->transfer_enable*100,2)}% {$user->TodayusedTraffic()}", indexLabel: "今日 {number_format(($user->u+$user->d-$user->last_day_t)/$user->transfer_enable*100,2)}% {$user->TodayusedTraffic()}"
														},
														{
															y: {($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100}, legendText:"剩余 {number_format(($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100,2)}% {$user->unusedTraffic()}", indexLabel: "剩余 {number_format(($user->transfer_enable-($user->u+$user->d))/$user->transfer_enable*100,2)}% {$user->unusedTraffic()}"
														}
														{/if}
													]
												}
												]
											});

											chart.render();
										</script>

									</div>

								</div>
							</div>


							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">签到获取流量</p>
										
											<p>每次签到可以获取{$config['checkinMin']}-{$config['checkinMax']}MB流量.</p>

											<p>每天只可以签到一次.</p>

											<p>上次签到时间：<code>{$user->lastCheckInTime()}</code></p>

											<p id="checkin-msg"></p>

											{if $geetest_html != null}
												<div id="popup-captcha"></div>
											{/if}
									</div>

									<div class="card-action">
										<div class="card-action-btn pull-left">
											{if $user->isAbleToCheckin() }
												<p id="checkin-btn">
													<button id="checkin" class="btn btn-brand btn-flat waves-attach"><span class="icon">check</span>&nbsp;不签到怎么行</button>
												</p>
											{else}
												<p><a class="btn btn-brand disabled btn-flat waves-attach" href="#"><span class="icon">check</span>&nbsp;已经签过,明天再来吧</a></p>
											{/if}
										</div>
									</div>

								</div>
							</div>
							
							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">帐号详细情况</p>
										<dl class="dl-horizontal">
											<p><dt>帐号等级</dt>
											<dd>{$user->class}</dd></p>

											<p><dt>等级过期时间</dt>
											<dd>{$user->class_expire}</dd></p>

											<p><dt>帐号过期时间</dt>
											<dd>{$user->expire_in}</dd>

											<p><dt>速度限制</dt>
											{if $user->node_speedlimit!=0}
											<dd>{$user->node_speedlimit}Mbps</dd>
											{else}
											<dd>不限速</dd>
											{/if}</p>

											<p><dt>上次使用</dt>
											<dd>{$user->lastSsTime()}</dd></p>
										</dl>
									</div>

								</div>
							</div>

							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">一些使用声明</p>
											<p>建立本站主要目的为方便同学们浏览学术文献及进行游戏加速.</p>
											<p>我们不允许访问本站的用户使用我们的服务器浏览任何有害信息(包括严重损害国家安全及社会稳定秩序的、色情的、暴力的文字、图片及视频信息等),如产生任何违法行为,本站概不负责.</p>

									</div>
								</div>
							</div>
							


						{if $enable_duoshuo=='true'}

							<div class="card">
								<div class="card-main">
									<div class="card-inner margin-bottom-no">
										<p class="card-heading">讨论区</p>
											<div class="ds-thread" data-thread-key="0" data-title="index" data-url="{$baseUrl}/user/"></div>
											<script type="text/javascript">
											var duoshuoQuery = {

											short_name:"{$duoshuo_shortname}"


											};
												(function() {
													var ds = document.createElement('script');
													ds.type = 'text/javascript';ds.async = true;
													ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
													ds.charset = 'UTF-8';
													(document.getElementsByTagName('head')[0]
													 || document.getElementsByTagName('body')[0]).appendChild(ds);
												})();
											</script>
									</div>

								</div>
							</div>

						{/if}

						{include file='dialog.tpl'}

					</div>


				</div>
			</section>
		</div>
	</main>







{include file='user/footer.tpl'}

<script src="/theme/material/js/shake.js/shake.js"></script>


<script>

$(function(){
	new Clipboard('.copy-text');
});

$(".copy-text").click(function () {
	$("#result").modal();
	$("#msg").html("已复制到您的剪贴板,请您继续接下来的操作.");
});

{if $geetest_html == null}


window.onload = function() {
    var myShakeEvent = new Shake({
        threshold: 15
    });

    myShakeEvent.start();

    window.addEventListener('shake', shakeEventDidOccur, false);

    function shakeEventDidOccur () {
		if("vibrate" in navigator){
			navigator.vibrate(500);
		}

        $.ajax({
                type: "POST",
                url: "/user/checkin",
                dataType: "json",
                success: function (data) {
                    $("#checkin-msg").html(data.msg);
                    $("#checkin-btn").hide();
					$("#result").modal();
                    $("#msg").html(data.msg);
                },
                error: function (jqXHR) {
					$("#result").modal();
                    $("#msg").html("发生错误：" + jqXHR.status);
                }
            });
    }
};


$(document).ready(function () {
	$("#checkin").click(function () {
		$.ajax({
			type: "POST",
			url: "/user/checkin",
			dataType: "json",
			success: function (data) {
				$("#checkin-msg").html(data.msg);
				$("#checkin-btn").hide();
				$("#result").modal();
				$("#msg").html(data.msg);
			},
			error: function (jqXHR) {
				$("#result").modal();
				$("#msg").html("发生错误：" + jqXHR.status);
			}
		})
	})
})


{else}


window.onload = function() {
    var myShakeEvent = new Shake({
        threshold: 15
    });

    myShakeEvent.start();

    window.addEventListener('shake', shakeEventDidOccur, false);

    function shakeEventDidOccur () {
		if("vibrate" in navigator){
			navigator.vibrate(500);
		}

        c.show();
    }
};



var handlerPopup = function (captchaObj) {
	c = captchaObj;
	captchaObj.onSuccess(function () {
		var validate = captchaObj.getValidate();
		$.ajax({
			url: "/user/checkin", // 进行二次验证
			type: "post",
			dataType: "json",
			data: {
				// 二次验证所需的三个值
				geetest_challenge: validate.geetest_challenge,
				geetest_validate: validate.geetest_validate,
				geetest_seccode: validate.geetest_seccode
			},
			success: function (data) {
				$("#checkin-msg").html(data.msg);
				$("#checkin-btn").hide();
				$("#result").modal();
				$("#msg").html(data.msg);
			},
			error: function (jqXHR) {
				$("#result").modal();
				$("#msg").html("发生错误：" + jqXHR.status);
			}
		});
	});
	// 弹出式需要绑定触发验证码弹出按钮
	captchaObj.bindOn("#checkin");
	// 将验证码加到id为captcha的元素里
	captchaObj.appendTo("#popup-captcha");
	// 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
};

initGeetest({
	gt: "{$geetest_html->gt}",
	challenge: "{$geetest_html->challenge}",
	product: "popup", // 产品形式,包括：float,embed,popup.注意只对PC版验证码有效
	offline: {if $geetest_html->success}0{else}1{/if} // 表示用户后台检测极验服务器是否宕机,与SDK配合,用户一般不需要关注
}, handlerPopup);



{/if}


</script>
