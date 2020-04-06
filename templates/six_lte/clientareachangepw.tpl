<div class="col-md-6 col-md-offset-3">
	<div class="panel panel-default">
		<div class="panel-heading"><b>{$LANG.clientareachangepassword}</b></div>
		<div class="panel-body">
			{if $successful}
				{include file="$template/includes/alert.tpl" type="success" msg=$LANG.changessavedsuccessfully textcenter=true}
			{/if}
			{if $errormessage}
				{include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
			{/if}

			<form class="using-password-strength" method="post" action="clientarea.php?action=changepw" role="form">
				<input type="hidden" name="submit" value="true" />
				
				<div class="form-group prepend-icon">
					<label for="inputExistingPassword" class="field-icon">
						<span class="glyphicon glyphicon-lock"></span>
					</label>
					<input type="password" class="form-control field" name="existingpw" id="inputExistingPassword" placeholder="{$LANG.existingpassword}"/>
				</div>
				<br>
				<div id="newPassword1" class="form-group prepend-icon">
					<label for="inputNewPassword1" class="field-icon">
						<span class="glyphicon glyphicon-lock"></span>
					</label>
					<input type="password" class="form-control field" name="newpw" id="inputNewPassword1" placeholder="{$LANG.newpassword}"/>
					{if 1==2}
					<span class="form-control-feedback glyphicon field"></span>
					{include file="$template/includes/pwstrength.tpl"}
					{/if}
				</div>
				<br>
				<div id="newPassword2" class="form-group prepend-icon">
					<label for="inputNewPassword2" class="field-icon">
						<span class="glyphicon glyphicon-lock"></span>
					</label>
					<input type="password" class="form-control field" name="confirmpw" id="inputNewPassword2" placeholder="{$LANG.confirmnewpassword}"/>
					{if 1==2}
					<span class="form-control-feedback glyphicon field"></span>
					<div id="inputNewPassword2Msg"></div>
					{/if}
				</div>
				<div class="form-group">
					<div class="text-center">
						<input class="btn btn-success" type="submit" value="{$LANG.clientareasavechanges}" />
						<input class="btn btn-default" type="reset" value="{$LANG.cancel}" />
					</div>
				</div>
			</form>
		</div>
	</div>
</div>