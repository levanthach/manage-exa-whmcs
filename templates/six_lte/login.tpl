<div class="logincontainer">

	<div class="panel panel-default">
	
		<div class="panel-heading"><h4>{$LANG.loginbutton}</h4></div>
		<div class="panel-body">
			{if $incorrect}
				{include file="$template/includes/alert.tpl" type="error" msg=$LANG.loginincorrect textcenter=true}
			{/if}
			<form method="post" action="{$WEB_ROOT}dologin.php" role="form">
				<div class="form-group has-feedback">
					<input type="email" name="username" class="form-control" id="inputEmail" placeholder="{$LANG.clientareaemail}" autofocus>
					<span class="glyphicon glyphicon-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="password" class="form-control" id="inputPassword" placeholder="{$LANG.clientareapassword}">
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input id="login" type="submit" class="btn btn-success" value="{$LANG.loginbutton}" />
					<label class="check-rememberme">
						<input type="checkbox" name="rememberme" /> {$LANG.loginrememberme}
					</label>
				</div>
				
				Bạn quên mật khẩu? <a href="pwreset.php">Click để lấy lại</a><br>
				Bạn chưa có tài khoản? <a href="register.php">Đăng ký ngay</a><br>
			</form>
		</div>
	
	</div>
	
</div>
