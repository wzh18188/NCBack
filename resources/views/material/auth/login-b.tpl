<html lang="zh">
<head>
	<meta charset="UTF-8">
	<title>登陆 - N.C. Back</title>
        <meta name="theme-color" content="#4caf50">
	<meta name="viewport" content="width=device-width,initial-scale=1" />

	<!-- css -->
	<link href="/theme/ncsd/css/base.min.css" rel="stylesheet">
	
	<!-- style -->
	<style type="text/css">
	.bt{
	font-size:20px;
	}
	</style>
</head>
<body class="avoid-fout">
	<header class="header">
		<a class="header-logo" href="http://ncback.top">N.C. Back</a>	</header>
	<div class="content">
		<div class="content-heading">		</div>
		<div class="content-inner">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-lg-push-4 col-sm-6 col-sm-push-3">
						<div class="card-wrap">
							<div class="card">
								<div class="card-main">
									<div class="card-header">
										<div class="card-inner">
										  <h1 class="card-heading bt" align="center">登 陆</h1>
										</div>
									</div>
									<div class="card-inner">
										<p class="text-center">
											<span class="avatar avatar-inline avatar-lg">
												<img alt="Login" src="/theme/material/images/users/avatar-001.jpg">											</span>										</p>
										<form class="form" action="index.html">
											<div class="form-group form-group-label">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<label class="floating-label" for="email">邮箱...</label>
														<input class="form-control" id="email" type="text" name="Email" style="font-size:14px;">
													</div>
												</div>
											</div>
											<div class="form-group form-group-label">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<label class="floating-label" for="passwd">密码...</label>
														<input class="form-control" id="passwd" type="password" name="Password" style="font-size:14px;">
													</div>
												</div>
											</div>
											<div class="form-group form-group-label">
														<div class="row">
															<div class="col-md-10 col-md-push-1">
																<label class="floating-label" for="code">两步验证码...(默认留空)</label>
																<input class="form-control" id="code" type="text" placeholder="没有就别填" style="font-size:14px;">
															</div>
														</div>
													</div>

											<div class="form-group">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<button class="btn btn-block btn-blue waves-button waves-effect waves-light" id="login" type="submit" style="border-radius:25px;">登 录</button>
													</div>
												</div>
											</div>
											<!--
											<div class="form-group">
												<div class="row">
													<div class="col-md-10 col-md-push-1">
														<div class="checkbox checkbox-adv">
															<label for="login-remember">
																<input class="access-hide" value="week" id="remember_me" name="remember_me" type="checkbox">
																保持登录状态 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </label>
														</div>
													</div>
												</div>
											</div>
											-->
										</form>
									</div>
								</div>
							</div>
						</div>
						<div class="clearfix">
						  <p class="margin-no-top pull-left" style="font-size:15px;"><a href="http://blog.ncback.top">需要帮助? </a></p>
						  <p class="margin-no-top pull-right" style="font-size:15px;"><a href="register">创建账户</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
		<div class="container">
			<p style="font-size:15px;">N.C. Studio & N.C. Back<br>
			<a data-toggle="modal" href="#modal-big" style="font-size:13px;">用户协议</a>
			</p>
		</div>
	</footer>

	<script src="/theme/ncsd/js/base.min.js" type="text/javascript"></script>
	
	
		<div aria-hidden="true" class="modal fade" id="modal-big" role="dialog" tabindex="-1" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-heading">
					<a class="modal-close" data-dismiss="modal">×</a>
					<h2 class="modal-title">用户协议 - TOS</h2>
				</div>
				<div class="modal-inner">
					<p><strong>一 概述</strong></p>
					<p>用户协议 Terms of Service<br>
					      N.C. Back,以下简称本站.</p>
					<p><strong>二 隐私</strong></p>
					<p><li>用户注册时候需要提供邮箱以及密码,并自行保管.邮箱为用户的唯一凭证.</li>
					<li>本站会加密存储用户密码,尽量保证数据安全,但并不保证这些信息的绝对安全.</li></p>
					<p><strong>三 使用条款</strong></p>
					<p><li>禁止使用本站服务进行任何违法恶意活动.</li></p>
					<p><li>使用任何节点,需遵循节点所属国家的相关法律以及中国法律.</li></p>
					<p><li>禁止滥用本站提供的服务.</li></p>
					<p><li>对于免费用户,我们有权在不通知的情况下删除账户.</li></p>
					<p><li>任何违法使用条款的用户,我们将会删除违规账户并没收使用本站服务的权利.</li></p>
					<p><li>建立本站主要目的为方便同学们浏览学术文献及进行游戏加速.</li></p>
					<p><li>我们不允许访问本站的用户使用我们的服务器浏览任何有害信息(包括严重损害国家安全及社会稳定秩序的、色情的、暴力的文字、图片及视频信息等),如产生任何违法行为,本站概不负责.</li></p>
				</div>
				<div class="modal-footer">
					<p class="text-right"><button class="btn btn-flat btn-alt" data-dismiss="modal" type="button">知道了</button></p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script>
    $(document).ready(function(){
        function login(){
			{if $geetest_html != null}
			if(typeof validate == 'undefined')
			{
				$("#result").modal();
                $("#msg").html("请滑动验证码来完成验证.");
				return;
			}

			if (!validate) {
				$("#result").modal();
                $("#msg").html("请滑动验证码来完成验证.");
				return;
			}

			{/if}

			document.getElementById("login").disabled = true;

            $.ajax({
                type:"POST",
                url:"/auth/login",
                dataType:"json",
                data:{
                    email: $("#email").val(),
                    passwd: $("#passwd").val(),
					code: $("#code").val(),
                    remember_me: $("#remember_me:checked").val(){if $geetest_html != null},
					geetest_challenge: validate.geetest_challenge,
                    geetest_validate: validate.geetest_validate,
                    geetest_seccode: validate.geetest_seccode{/if}
                },
                success:function(data){
                    if(data.ret == 1){
						$("#result").modal();
                        $("#msg").html(data.msg);
                        window.setTimeout("location.href='/user'", {$config['jump_delay']});
                    }else{
			$("#result").modal();
                        $("#msg").html(data.msg);
			document.getElementById("login").disabled = false;
			{if $geetest_html != null}
			captcha.refresh();
			{/if}
                    }
                },
                error:function(jqXHR){
			$("#msg-error").hide(10);
			$("#msg-error").show(100);
			$("#msg-error-p").html("发生错误："+jqXHR.status);
					document.getElementById("login").disabled = false;
			{if $geetest_html != null}
			captcha.refresh();
			{/if}
                }
            });
        }
        $("html").keydown(function(event){
            if(event.keyCode==13){
                login();
            }
        });
        $("#login").click(function(){
            login();
        });

		$('div.modal').on('shown.bs.modal', function() {
			$("div.gt_slider_knob").hide();
		});

		$('div.modal').on('hidden.bs.modal', function() {
			$("div.gt_slider_knob").show();
		});
    })
</script>

{if $config['enable_telegram'] == 'true'}
<script src=" /assets/public/js/jquery.qrcode.min.js "></script>
<script>
	var telegram_qrcode = 'mod://login/{$login_token}';
	jQuery('#telegram-qr').qrcode({
		"text": telegram_qrcode
	});
</script>

<script>
$(document).ready(function () {
	function f(){
		$.ajax({
			type: "GET",
			url: "qrcode_check",
			dataType: "json",
			data: {
				token:"{$login_token}",
				number:"{$login_number}"
			},
			success: function (data) {
				if (data.ret > 0) {
					clearTimeout(tid);

					$.ajax({
						type: "POST",
						url: "/auth/qrcode_login",
						dataType: "json",
						data: {
							token:"{$login_token}",
							number:"{$login_number}"
						},
						success: function (data) {
							if (data.ret) {
								$("#result").modal();
								$("#msg").html("登录成功！");
								window.setTimeout("location.href=/user/", {$config['jump_delay']});
							}
						},
						error: function (jqXHR) {
							$("#result").modal();
							$("#msg").html("发生错误：" + jqXHR.status);
						}
					});

				} else {
					if(data.ret == -1)
					{
						jQuery('#telegram-qr').replaceWith('此二维码已经过期,请刷新页面后重试.');
						jQuery('#code_number').replaceWith('<code id="code_number">此数字已经过期,请刷新页面后重试.</code>');
					}
				}
			},
			error: function (jqXHR) {
				if(jqXHR.status != 200 && jqXHR.status != 0) {
					$("#result").modal();
					$("#msg").html("发生错误：" + jqXHR.status);
				}
			}
		});
		tid = setTimeout(f, 1000); //循环调用触发setTimeout
	}
	setTimeout(f, 1000);
})
</script>
{/if}


{if $geetest_html != null}
<script>
	var handlerEmbed = function (captchaObj) {
        // 将验证码加到id为captcha的元素里

		captchaObj.onSuccess(function () {
            		validate = captchaObj.getValidate();
		});

		captchaObj.appendTo("#embed-captcha");

		captcha = captchaObj;
		// 更多接口参考：http://www.geetest.com/install/sections/idx-client-sdk.html
    };

	initGeetest({
		gt: "{$geetest_html->gt}",
		challenge: "{$geetest_html->challenge}",
		product: "embed", // 产品形式,包括：float,embed,popup.注意只对PC版验证码有效
		offline: {if $geetest_html->success}0{else}1{/if} // 表示用户后台检测极验服务器是否宕机,与SDK配合,用户一般不需要关注
	}, handlerEmbed);
</script>

{/if}
