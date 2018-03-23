{include file='header.tpl'}






	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<div class="row">
					<div class="col-lg-12 col-lg-push-0 col-sm-12 col-sm-push-0">
						<h1 class="content-heading">{$config["appName"]}</h1>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
						<section class="content-inner margin-top-no">
						
					
								
							<div class="col-lg-12 col-sm-12">
								<div class="card">
									<div class="card-main">
										<div class="card-inner">
											<p><span style="font-size:16px;font-family:'黑体'">我是一只可爱的梯子.它可以带你到世界上的任何地方!</span></p>
										</div>
									</div>
								</div>
							</div>
						
						{if $user->isLogin}
							<div class="col-lg-12 col-sm-12">
								<div class="card card-brand">
									<div class="card-main">
										<div class="card-inner">
											<p class="card-heading">用户面板</p>
											<p>
												您可以点击按钮进入面板。
											</p>
										</div>
										<div class="card-action">
											<div class="card-action-btn pull-left">
												<a class="btn btn-flat waves-attach waves-light waves-effect" href="/user"><span class="icon">airline_seat_recline_normal</span>&nbsp;进入</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						{else}
							<div class="col-lg-12 col-sm-12">
								<div class="card card-brand">
									<div class="card-main">
										<div class="card-inner">
											<p class="card-heading">注册</p>
											<p>
												还没注册?快戳我注册一个账号吧。
											</p>
										</div>
										<div class="card-action">
											<div class="card-action-btn pull-left">
												<a class="btn btn-flat waves-attach waves-light waves-effect" href="/auth/register"><span class="icon">pregnant_woman</span>&nbsp;注册</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="col-lg-12 col-sm-12">
								<div class="card card-brand-accent">
									<div class="card-main">
										<div class="card-inner">
											<p class="card-heading">登录</p>
											<p>
												有账户了？点击登录。
											</p>
										</div>
										<div class="card-action">
											<div class="card-action-btn pull-left">
												<a class="btn btn-flat waves-attach waves-light waves-effect" href="/auth/login"><span class="icon">vpn_key</span>&nbsp;登录</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							
								
						{/if}
						
						<div class="col-lg-12 col-sm-12">
								<div class="card card-red">
									<div class="card-main">
										<div class="card-inner">
											<p class="card-heading">使用教程</p>
											<p>
												您可以点击按钮查看使用教程。
											</p>
										</div>
										<div class="card-action">
											<div class="card-action-btn pull-left">
												<a class="btn btn-flat waves-attach waves-light waves-effect" href="http://blog.ncback.win"><span class="icon">help</span>&nbsp;进入</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							
							
						</section>

			
			
			
		</div>
	</main>


{include file='footer.tpl'}
