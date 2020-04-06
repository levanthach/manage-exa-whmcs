<div class="panel panel-success">
	<div class="panel-heading">
		<b>{$LANG.orderyourinformation}</b>
	</div>
	<div class="panel-body">

<script type="text/javascript" src="{$BASE_PATH_JS}/StatesDropdown.js"></script>

{if $registrationDisabled}
    {include file="$template/includes/alert.tpl" type="error" msg=$LANG.registerCreateAccount|cat:' <strong><a href="cart.php" class="alert-link">'|cat:$LANG.registerCreateAccountOrder|cat:'</a></strong>'}
{/if}

{if $errormessage}
    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
{/if}

{if !$registrationDisabled}

    <form method="post" class="using-password-strength" action="{$smarty.server.PHP_SELF}" role="form">
        <input type="hidden" name="register" value="true"/>

        <div class="row">
			{if $customfields}
			<div class="col-md-6 col-md-offset-3">
				<div id="clients_type">
					{foreach from=$customfields key=num item=customfield}
						{if {$customfield.name} == "Loại tài khoản"}
							<div class="form-group">
								
								<div class="sub-heading">
									<span>{$customfield.name}</span>
								</div>
								<div class="control">
									{$customfield.input} {$customfield.description}
								</div>
							</div>
						{/if}
					{/foreach}
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
			</div>
			{/if}
            <div class="col-md-12">
				<div class="sub-heading">
					<span>Thông tin khách hàng</span>
				</div>
				
				<div class="form-group prepend-icon">
                    <label for="email" class="control-label field-icon">
						<span class="glyphicon glyphicon-envelope"></span>
					</label>
                    <input type="email" name="email" id="email" value="{$clientemail}" class="form-control field" placeholder="{$LANG.clientareaemail}" required />
                </div>
			</div>
			<div class="col-md-6">
				<div id="newPassword1" class="form-group has-feedback prepend-icon">
                    <label for="inputNewPassword1" class="control-label field-icon">
						<span class="glyphicon glyphicon-lock"></span>
					</label>
                    <input type="password" class="form-control field" id="inputNewPassword1" name="password" placeholder="{$LANG.clientareapassword}" required />
                </div>
                
			</div>
			<div class="col-md-6">
				<div id="newPassword2" class="form-group has-feedback prepend-icon">
                    <label for="inputNewPassword2" class="control-label field-icon">
						<span class="glyphicon glyphicon-lock"></span>
					</label>
                    <input type="password" class="form-control field" id="inputNewPassword2" name="password2" placeholder="{$LANG.clientareaconfirmpassword}" required />
                </div>
			</div>

			<div class="col-md-6">
                <div class="form-group prepend-icon">
                    <label for="firstname" class="control-label field-icon">
						<span class="glyphicon glyphicon-user"></span>
					</label>
                    <input type="text" name="firstname" id="firstname" value="{$clientfirstname}" class="form-control field" placeholder="{$LANG.clientareafirstname}" required />
                </div>
			</div>

			<div class="col-md-6">
				<div class="form-group prepend-icon">
					<label for="lastname" class="control-label field-icon">
						<span class="glyphicon glyphicon-user"></span>
					</label>
					<input type="text" name="lastname" id="lastname" value="{$clientlastname}" class="form-control field" placeholder="{$LANG.clientarealastname}" required>
				</div>
			</div>
			<div class="col-md-12">
				<div class="form-group prepend-icon">
                    <label for="phonenumber" class="control-label field-icon">
						<span class="glyphicon glyphicon-phone-alt"></span>
					</label>
                    <input type="tel" name="phonenumber" id="phonenumber" value="{$clientphonenumber}" class="form-control field" placeholder="{$LANG.clientareaphonenumber}" required />
                </div>
			</div>
			
			<div class="col-md-12">
				<div class="form-group prepend-icon">
                    <label for="address1" class="control-label field-icon">
						<span class="glyphicon glyphicon-road"></span>
					</label>
                    <input type="text" name="address1" id="address1" value="{$clientaddress1}" class="form-control field" placeholder="{$LANG.clientareaaddress1}" required />
                </div>
			</div>
			
			<div class="col-md-12">
				<div class="form-group prepend-icon">
					<label for="state" class="control-label field-icon">
						<span class="glyphicon glyphicon-tree-deciduous"></span>
					</label>
					<input type="text" name="state" id="state" value="{$clientstate}" class="form-control field"{if !in_array('state', $clientsProfileOptionalFields)} required{/if} placeholder="{$LANG.clientareastate}"/>
				</div>
			</div>
			<div class="col-md-12">
				<div class="form-group prepend-icon">
                    <label for="city" class="control-label field-icon">
						<span class="glyphicon glyphicon-home"></span>
					</label>
                    <input type="text" name="city" id="city" value="{$clientcity}" class="form-control field" placeholder="{$LANG.clientareacity}" required />
                </div>
			</div>
			
			<div class="col-md-12" style="display:none">
				<div class="form-group prepend-icon">
                    <label for="country" class="control-label">{$LANG.clientareacountry}</label>
                    <select id="country" name="country" class="form-control">
                        {foreach $clientcountries as $countryCode => $countryName}
                            <option value="{$countryCode}"{if (!$clientcountry && $countryCode eq $defaultCountry) || ($countryCode eq $clientcountry)} selected="selected"{/if}>
                                {$countryName}
                            </option>
                        {/foreach}
                    </select>
                </div>
			</div>
				
			
            
			{if 1==2}
            <div class="col-md-6">
				{if 1==2}
                <div class="form-group prepend-icon">
                    <label for="country" class="control-label">{$LANG.clientareacountry}</label>
                    <select id="country" name="country" class="form-control">
                        {foreach $clientcountries as $countryCode => $countryName}
                            <option value="{$countryCode}"{if (!$clientcountry && $countryCode eq $defaultCountry) || ($countryCode eq $clientcountry)} selected="selected"{/if}>
                                {$countryName}
                            </option>
                        {/foreach}
                    </select>
                </div>
				{/if}
 	
                

                {if $customfields}
                    {foreach from=$customfields key=num item=customfield}
                        <div class="form-group prepend-icon">
                            <label class="control-label" for="customfield{$customfield.id}">{$customfield.name}</label>
                            <div class="control">
                                {$customfield.input} {$customfield.description}
                            </div>
                        </div>
                    {/foreach}
                {/if}

                {if $currencies}
                    <div class="form-group prepend-icon">
                        <label for="currency" class="control-label">{$LANG.choosecurrency}</label>
                        <select id="currency" name="currency" class="form-control">
                            {foreach from=$currencies item=curr}
                            <option value="{$curr.id}"{if !$smarty.post.currency && $curr.default || $smarty.post.currency eq $curr.id } selected{/if}>{$curr.code}</option>
                            {/foreach}
                        </select>
                    </div>
                {/if}
            </div>
			{/if}
        </div>

        {if $securityquestions}
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">{$LANG.clientareasecurityquestion}:</h3>
                </div>
                <div class="panel-body">
                    <div class="form-group col-sm-12">
                        <select name="securityqid" id="securityqid" class="form-control">
                            {foreach key=num item=question from=$securityquestions}
                                <option value={$question.id}>{$question.question}</option>
                            {/foreach}
                        </select>
                    </div>
                    <div class="form-group prepend-icon">
                        <label class="col-sm-4 control-label" for="securityqans">{$LANG.clientareasecurityanswer}</label>
                        <div class="col-sm-6">
                            <input type="password" name="securityqans" id="securityqans" class="form-control"/>
                        </div>
                    </div>
                </div>
            </div>
        {/if}

        {include file="$template/includes/captcha.tpl"}

        {if $accepttos}
            <div class="panel panel-danger tospanel">
                <div class="panel-heading">
                    <h3 class="panel-title"><span class="fa fa-exclamation-triangle tosicon"></span> &nbsp; {$LANG.ordertos}</h3>
                </div>
                <div class="panel-body">
                        <div class="col-md-12">
                            <label class="checkbox">
                            <input type="checkbox" name="accepttos" class="accepttos">
                            {$LANG.ordertosagreement} <a href="{$tosurl}" target="_blank">{$LANG.ordertos}</a>
                            </label>
                        </div>
                </div>
            </div>
        {/if}

        <p align="center" style="position: relative;z-index: 1;">
            <input class="btn btn-large btn-success" type="submit" value="{$LANG.clientregistertitle}"/>
        </p>

    </form>

{/if}

	</div>
</div>