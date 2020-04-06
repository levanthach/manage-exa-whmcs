<div class="panel panel-default">
	
	<div class="panel-body">
	{if $successful}
		{include file="$template/includes/alert.tpl" type="success" msg=$LANG.changessavedsuccessfully textcenter=true}
	{/if}

	{if $errormessage}
		{include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
	{/if}

	<script type="text/javascript" src="{$BASE_PATH_JS}/StatesDropdown.js"></script>

	<form method="post" action="/clientarea.php?action=details" role="form">

		<div class="row">
			<div class="col-sm-6">

				<div class="form-group prepend-icon">
					<label for="inputFirstName" class="control-label field-icon">
						<span class="glyphicon glyphicon-user"></span>
					</label>
					<input type="text" name="firstname" id="inputFirstName" value="{$clientfirstname}"{if in_array('firstname', $uneditablefields)} disabled="disabled"{/if} class="form-control field" placeholder="{$LANG.clientareafirstname}"/>
				</div>

				<div class="form-group prepend-icon">
					<label for="inputLastName" class="control-label field-icon">
						<span class="glyphicon glyphicon-user"></span>
					</label>
					<input type="text" name="lastname" id="inputLastName" value="{$clientlastname}"{if in_array('lastname', $uneditablefields)} disabled="disabled"{/if} class="form-control field" placeholder="{$LANG.clientarealastname}"/>
				</div>
				
				{if 1==2}
				<div class="form-group prepend-icon">
					<label for="inputCompanyName" class="control-label field-icon">
						<span class="glyphicon glyphicon-cloud"></span>
					</label>
					<input type="text" name="companyname" id="inputCompanyName" value="{$clientcompanyname}"{if in_array('companyname', $uneditablefields)} disabled="disabled"{/if} class="form-control field" placeholder="{$LANG.clientareacompanyname}"/>
				</div>
				{/if}

				<div class="form-group prepend-icon">
					<label for="inputEmail" class="control-label field-icon">
						<span class="glyphicon glyphicon-envelope"></span>
					</label>
					<input type="email" name="email" id="inputEmail" value="{$clientemail}"{if in_array('email', $uneditablefields)} disabled="disabled"{/if} class="form-control field" placeholder="{$LANG.clientareaemail}"/>
				</div>

			</div>
			<div class="col-sm-6 col-xs-12 pull-right">

				<div class="form-group prepend-icon">
					<label for="inputAddress1" class="control-label field-icon">
						<span class="glyphicon glyphicon-road"></span>
					</label>
					<input type="text" name="address1" id="inputAddress1" value="{$clientaddress1}"{if in_array('address1', $uneditablefields)} disabled="disabled"{/if} class="form-control field" placeholder="{$LANG.clientareaaddress1}"/>
				</div>
				
				{if 1==2}
				<div class="form-group prepend-icon">
					<label for="inputAddress2" class="control-label field-icon">
						<span class="glyphicon glyphicon-road"></span>
					</label>
					<input type="text" name="address2" id="inputAddress2" value="{$clientaddress2}"{if in_array('address2', $uneditablefields)} disabled="disabled"{/if} class="form-control field" placeholder="{$LANG.clientareaaddress2}"/>
				</div>
				{/if}
				
				<div class="form-group prepend-icon">
					<label for="inputCity" class="control-label field-icon">
						<span class="glyphicon glyphicon-home"></span>
					</label>
					<input type="text" name="city" id="inputCity" value="{$clientcity}"{if in_array('city', $uneditablefields)} disabled="disabled"{/if} class="form-control field" placeholder="{$LANG.clientareacity}"/>
				</div>

				<div class="form-group prepend-icon">
					<label for="inputState" class="control-label field-icon">
						<span class="glyphicon glyphicon-tree-deciduous"></span>
					</label>
					<input type="text" name="state" id="inputState" value="{$clientstate}"{if in_array('state', $uneditablefields)} disabled="disabled"{/if} class="form-control field" placeholder="{$LANG.clientareastate}"/>
				</div>
				
				{if 1==2}
				<div class="form-group prepend-icon">
					<label for="inputPostcode" class="control-label field-icon"></label>
					<input type="text" name="postcode" id="inputPostcode" value="{$clientpostcode}"{if in_array('postcode', $uneditablefields)} disabled="disabled"{/if} class="form-control field" placeholder="{$LANG.clientareapostcode}"/>
				</div>
				{/if}
				
				<div class="form-group" style="display:none">
					<label class="control-label" for="country">{$LANG.clientareacountry}</label>
					{$clientcountriesdropdown}
				</div>

				<div class="form-group prepend-icon">
					<label for="inputPhone" class="control-label field-icon">
						<span class="glyphicon glyphicon-phone-alt"></span>
					</label>
					<input type="tel" name="phonenumber" id="inputPhone" value="{$clientphonenumber}"{if in_array('phonenumber',$uneditablefields)} disabled=""{/if} class="form-control field" placeholder="{$LANG.clientareaphonenumber}"/>
				</div>

			</div>
			<div class="col-sm-6 col-xs-12 pull-left">
				<div class="form-group">
					<div class="input-group">
						<label for="inputPaymentMethod" class="input-group-addon">{$LANG.paymentmethod}</label>
						<span class="input-group-addon" style="width:0px; padding-left:0px; padding-right:0px; border:none;"></span>
						<select name="paymentmethod" id="inputPaymentMethod" class="form-control">
							<option value="none">{$LANG.paymentmethoddefault}</option>
							{foreach from=$paymentmethods item=method}
							<option value="{$method.sysname}"{if $method.sysname eq $defaultpaymentmethod} selected="selected"{/if}>{$method.name}</option>
							{/foreach}
						</select>
					</div>
				</div>

				<div class="form-group">
					<div class="input-group">
						<label for="inputBillingContact" class="input-group-addon">{$LANG.defaultbillingcontact}</label>
						<span class="input-group-addon" style="width:0px; padding-left:0px; padding-right:0px; border:none;"></span>
						<select name="billingcid" id="inputBillingContact" class="form-control">
							<option value="0">{$LANG.usedefaultcontact}</option>
							{foreach from=$contacts item=contact}
							<option value="{$contact.id}"{if $contact.id eq $billingcid} selected="selected"{/if}>{$contact.name}</option>
							{/foreach}
						</select>
					</div>
				</div>

				
				
				{if $customfields}
					<div class="form-group">
						<div id="clients_type">
						{foreach from=$customfields key=num item=customfield}
							{if {$customfield.name} == "Loại tài khoản"}
								<div class="input-group">
									<span class="input-group-addon">{$customfield.name}</span>
									<span class="input-group-addon" style="width:0px; padding-left:0px; padding-right:0px; border:none;"></span>
									
									{$customfield.input} {$customfield.description}
									
									{if {$customfield.value} == "Cá nhân"}
										<script>
											var loaitk = 1;
										</script>
									{/if}
								</div>
							{/if}
						{/foreach}
						</div>
					</div>
					
					<div class="clearfix"></div>
					<div id="clients_company">
						<div class="form-group prepend-icon">
							<label for="companyname" class="control-label field-icon">
								<span class="glyphicon glyphicon-cloud"></span>
							</label>
							<input type="text" name="companyname" id="companyname" value="{$clientcompanyname}" class="form-control field" placeholder="{$LANG.clientareacompanyname}" required />
						</div>
						
						{foreach from=$customfields key=num item=customfield}
							{if {$customfield.name} == "Mã số thuế"}
								<div class="form-group prepend-icon">
									<label class="control-label field-icon" for="customfield{$customfield.id}">
										<span class="glyphicon glyphicon-barcode"></span>
									</label>
									<input type="text" name="customfield[{$customfield.id}]" id="customfield{$customfield.id}" value="{$customfield.value}" class="form-control field" placeholder="{$customfield.name}" required/>
								</div>
							{/if}
						{/foreach}
					</div>
					<!--------- SCRIPT KH FOOTER --------->
				{/if}

				{if $emailoptoutenabled}
				<div class="form-group">
					<label class="control-label field-icon" for="inputEmailOptOut">{$LANG.emailoptout}</label>
					<div class="controls checkbox">
						<label>
							<input type="checkbox" value="1" name="emailoptout" id="inputEmailOptOut" {if $emailoptout} checked{/if} /> {$LANG.emailoptoutdesc}
						</label>
					</div>
				</div>
				{/if}

			</div>
		</div>

		<div class="form-group text-center">
			<input class="btn btn-success" type="submit" name="save" value="{$LANG.clientareasavechanges}" />
			<input class="btn btn-default" type="reset" value="{$LANG.cancel}" />
		</div>

	</form>
	</div>
</div>