<link rel="stylesheet" type="text/css" href="templates/orderforms/{$carttpl}/style.css" />

<script language="javascript">
    // Define state tab index value
    var statesTab = 10;
    {if in_array('state', $clientsProfileOptionalFields)}
    // Do not enforce state input client side
    var stateNotRequired = true;
    {/if}
</script>
<script type="text/javascript" src="templates/orderforms/{$carttpl}/js/main.js"></script>
<script type="text/javascript" src="{$BASE_PATH_JS}/StatesDropdown.js"></script>
<script type="text/javascript" src="{$BASE_PATH_JS}/PasswordStrength.js"></script>
<script type="text/javascript" src="{$BASE_PATH_JS}/CreditCardValidation.js"></script>

{literal}<script language="javascript">
	function removeItem(type,num) {
		var response = confirm("{/literal}{$LANG.cartremoveitemconfirm}{literal}");
		if (response) {
			window.location = 'cart.php?a=remove&r='+type+'&i='+num;
		}
	}
	function emptyCart(type,num) {
		var response = confirm("{/literal}{$LANG.cartemptyconfirm}{literal}");
		if (response) {
			window.location = 'cart.php?a=empty';
		}
	}
</script>{/literal}
<script>
	window.langPasswordStrength = "{$LANG.pwstrength}";
	window.langPasswordWeak = "{$LANG.pwstrengthweak}";
	window.langPasswordModerate = "{$LANG.pwstrengthmoderate}";
	window.langPasswordStrong = "{$LANG.pwstrengthstrong}";
</script>

<div class="container">
	<div class="col-md-3 product-selection-sidebar" id="premiumComparisonSidebar">
		{include file="orderforms/standard_cart/sidebar-categories.tpl"}
	</div>
	
	<div id="order-horizontalseps" class="col-md-9">
		<div class="header-lined">
			<h3>Đăng ký Dịch vụ</h3>
		</div>
		<div id="order-horizontalseps">
			{if $checkout}
			{include file="orderforms/horizontalseps/horizontalseps.tpl" step=5}
			{else}
			{include file="orderforms/horizontalseps/horizontalseps.tpl" step=4}
			{/if}
		</div>
		
		{if !$checkout} <!-- cart.php?a=view -->
		<div class="container-fluid">
			<div class="row">
				<div class="panel panel-success">
					<div class="panel-heading">
						<b>{$LANG.cartreviewcheckout}</b>
					</div>

					{if $errormessage}
					<div class="errorbox" style="display:block;">
						{$errormessage|replace:'<li>':' &nbsp;#&nbsp; '} &nbsp;#&nbsp;
						</div>
						{elseif $promotioncode && $rawdiscount eq "0.00"}
						<div class="errorbox" style="display:block;">
							{$LANG.promoappliedbutnodiscount}
						</div>
						{/if}

						{if $bundlewarnings}
						<div class="cartwarningbox">
							<strong>{$LANG.bundlereqsnotmet}</strong><br />
							{foreach from=$bundlewarnings item=warning}
							{$warning}<br />
							{/foreach}
						</div>
						{/if}

						{if !$loggedin && $currencies}
						<div class="currencychooser">
							<div class="btn-group" role="group">
								{foreach from=$currencies item=curr}
								<a href="cart.php?a=view&currency={$curr.id}" class="btn btn-default{if $currency.id eq $curr.id} active{/if}">
									<img src="{$BASE_PATH_IMG}/flags/{if $curr.code eq "AUD"}au{elseif $curr.code eq "CAD"}ca{elseif $curr.code eq "EUR"}eu{elseif $curr.code eq "GBP"}gb{elseif $curr.code eq "INR"}in{elseif $curr.code eq "JPY"}jp{elseif $curr.code eq "USD"}us{elseif $curr.code eq "ZAR"}za{else}na{/if}.png" border="0" alt="" />
									{$curr.code}
								</a>
								{/foreach}
							</div>
						</div>
						{/if}
						<div class="panel-body">
							
							<form method="post" action="{$smarty.server.PHP_SELF}?a=view">
								<div class="table-responsive">
									<table class="cart " cellspacing="1">
										<tr>
											<th width="60%">{$LANG.orderdesc}</th>
											<th width="40%">{$LANG.orderprice}</th>
										</tr>

										{foreach key=num item=product from=$products}
										<tr class="carttableproduct">
											<td>
												<strong>{$product.productinfo.name} - <em>{$product.productinfo.groupname}</em></strong>{if $product.domain} ({$product.domain}){/if}<br />
												{if $product.configoptions}
												{foreach key=confnum item=configoption from=$product.configoptions}
												&nbsp;&raquo; {$configoption.name}: {if $configoption.type eq 1 || $configoption.type eq 2}{$configoption.option}{elseif $configoption.type eq 3}{if $configoption.qty}{$LANG.yes}{else}{$LANG.no}{/if}{elseif $configoption.type eq 4}{$configoption.qty} x {$configoption.option}{/if}<br />
												{/foreach}
												{/if}
												<a href="{$smarty.server.PHP_SELF}?a=confproduct&i={$num}" class="cartedit">[{$LANG.carteditproductconfig}]</a>
												<a href="#" onclick="removeItem('p','{$num}');return false" class="cartremove">[{$LANG.cartremove}]</a>
												{if $product.allowqty}
												<br /><br />
												<div align="right">{$LANG.cartqtyenterquantity} <input type="text" class="btn btn-sm" style="border: 1px solid #ccc;" name="qty[{$num}]" size="3" value="{$product.qty}" /> <input type="submit" value="{$LANG.cartqtyupdate}" class="btn btn-default btn-sm" /></div>
												{/if}
											</td>
											<td class="text-center">
												<strong>{$product.pricingtext}{if $product.proratadate}<br />({$LANG.orderprorata} {$product.proratadate}){/if}</strong>
											</td>
										</tr>
										{foreach key=addonnum item=addon from=$product.addons}
										<tr class="carttableproduct">
											<td><strong>{$LANG.orderaddon}</strong> - {$addon.name}</td>
											<td class="text-center"><strong>{$addon.pricingtext}</strong></td>
										</tr>
										{/foreach}
										{/foreach}

										{foreach key=num item=addon from=$addons}
										<tr class="carttableproduct">
											<td>
												<strong>{$addon.name}</strong><br />
												{$addon.productname}{if $addon.domainname} - {$addon.domainname}<br />{/if}
												<a href="#" onclick="removeItem('a','{$num}');return false" class="cartremove">[{$LANG.cartremove}]</a>
											</td>
											<td class="text-center"><strong>{$addon.pricingtext}</strong></td>
										</tr>
										{/foreach}

										{foreach key=num item=domain from=$domains}
										<tr class="carttableproduct">
											<td>
												<strong>{if $domain.type eq "register"}{$LANG.orderdomainregistration}{else}{$LANG.orderdomaintransfer}{/if}</strong> - {$domain.domain} - {$domain.regperiod} {$LANG.orderyears}<br />
												{if $domain.dnsmanagement}&nbsp;&raquo; {$LANG.domaindnsmanagement}<br />{/if}
												{if $domain.emailforwarding}&nbsp;&raquo; {$LANG.domainemailforwarding}<br />{/if}
												{if $domain.idprotection}&nbsp;&raquo; {$LANG.domainidprotection}<br />{/if}
												<a href="{$smarty.server.PHP_SELF}?a=confdomains" class="cartedit">[{$LANG.cartconfigdomainextras}]</a>
												<a href="#" onclick="removeItem('d','{$num}');return false" class="cartremove">[{$LANG.cartremove}]</a>
											</td>
											<td class="text-center">
												<strong>{$domain.price}</strong>
											</td>
										</tr>
										{/foreach}

										{foreach key=num item=domain from=$renewals}
										<tr class="carttableproduct">
											<td>
												<strong>{$LANG.domainrenewal}</strong> - {$domain.domain} - {$domain.regperiod} {$LANG.orderyears}<br />
												{if $domain.dnsmanagement}&nbsp;&raquo; {$LANG.domaindnsmanagement}<br />{/if}
												{if $domain.emailforwarding}&nbsp;&raquo; {$LANG.domainemailforwarding}<br />{/if}
												{if $domain.idprotection}&nbsp;&raquo; {$LANG.domainidprotection}<br />{/if}
												<a href="#" onclick="removeItem('r','{$num}');return false" class="cartremove">[{$LANG.cartremove}]</a>
											</td>
											<td class="text-center">
												<strong>{$domain.price}</strong>
											</td>
										</tr>
										{/foreach}

										{if $cartitems == 0}
										<tr class="clientareatableactive">
											<td colspan="2" class="text-center">
												<br />
												{$LANG.cartempty}
												<br /><br />
											</td>
										</tr>
										{/if}

										<tr class="subtotal">
											<td class="text-right">{$LANG.ordersubtotal}:</td>
											<td class="text-center"><b>{$subtotal}</b></td>
										</tr>
										{if $promotioncode}
										<tr class="promotion">
											<td class="text-right">{$promotiondescription}:</td>
											<td class="text-center"><b>{$discount}</b></td>
										</tr>
										{/if}
										{if $taxrate}
										<tr class="subtotal">
											<td class="text-right">{$taxname} @ {$taxrate}%:</td>
											<td class="text-center"><b>{$taxtotal}</b></td>
										</tr>
										{/if}
										{if $taxrate2}
										<tr class="subtotal">
											<td class="text-right">{$taxname2} @ {$taxrate2}%:</td>
											<td class="text-center"><b>{$taxtotal2}</b></td>
										</tr>
										{/if}
										<tr class="total">
											<td class="text-right"><b>{$LANG.ordertotalduetoday}:</b></td>
											<td class="text-center"><b>{$total}</b></td>
										</tr>
										{if $totalrecurringmonthly || $totalrecurringquarterly || $totalrecurringsemiannually || $totalrecurringannually || $totalrecurringbiennially || $totalrecurringtriennially}
										<tr class="recurring">
											<td class="text-right">{$LANG.ordertotalrecurring}:</td>
											<td class="text-center">
												<b>
													{if $totalrecurringmonthly}{$totalrecurringmonthly} {$LANG.orderpaymenttermmonthly}<br />{/if}
													{if $totalrecurringquarterly}{$totalrecurringquarterly} {$LANG.orderpaymenttermquarterly}<br />{/if}
													{if $totalrecurringsemiannually}{$totalrecurringsemiannually} {$LANG.orderpaymenttermsemiannually}<br />{/if}
													{if $totalrecurringannually}{$totalrecurringannually} {$LANG.orderpaymenttermannually}<br />{/if}
													{if $totalrecurringbiennially}{$totalrecurringbiennially} {$LANG.orderpaymenttermbiennially}<br />{/if}
													{if $totalrecurringtriennially}{$totalrecurringtriennially} {$LANG.orderpaymenttermtriennially}<br />{/if}
												</b>
											</td>
										</tr>
										{/if}
									</table>
									
								</div>
								
								<div class="row">
									<div class="col-md-6">
										{if $promotioncode}
										{$promotioncode} - {$promotiondescription}<br />
										<a href="{$smarty.server.PHP_SELF}?a=removepromo">{$LANG.orderdontusepromo}</a>
										{else}
										<br>
										<div class="input-group">
											<!--<input type="text" name="promocode" id="inputPromoCode" class="form-control" placeholder="{lang key="orderPromoCodePlaceholder"}">-->
											<input type="text" name="promocode" id="inputPromoCode" class="form-control" placeholder="{$LANG.orderpromotioncode}">
											<span class="input-group-btn">
												<button type="submit" name="validatepromo" formnovalidate class="btn btn-warning btn_apply_promo" value="{$LANG.orderpromovalidatebutton}">
													{$LANG.orderpromovalidatebutton}
												</button>
											</span>
										</div>
										<br>
										{/if}
										
										{if $shownotesfield}
										<textarea name="notes" rows="3" class="form-control" placeholder="{$LANG.ordernotes}"></textarea>
										{/if}
									</div>
									<div class="col-md-6">
										<div class="cartbuttons">
										<!--
										<button type="button" class="btn btn-default btn-sm" onclick="emptyCart();return false"><i class="fa fa-trash"></i> {$LANG.emptycart}</button>
										<a href="cart.php" class="btn btn-default btn-sm"><i class="fa fa-shopping-cart"></i> {$LANG.continueshopping}</a>-->

										<button type="button" class="btn" onclick="window.location='cart.php?a=startover'"><i class="fa fa-chevron-left"> </i> {$LANG.emptycart}</button>
										<a href="cart.php?a=checkout" class="btn btn-success"> {$LANG.continueshopping} <i class="fa fa-chevron-right"></i></a>
									</div>
								</div>
								
							</div>

						</form>

					</div>

				</div>
			</div>
		</div>
		{/if} <!-- cart.php?a=view -->
		
		<div style="clear:both"></div>

		{foreach from=$gatewaysoutput item=gatewayoutput}
		<div class="clear"></div>
		<div class="cartbuttons">
			{$gatewayoutput}
		</div>
		{/foreach}

		{if $cartitems!=0}
		
		{if $checkout} <!----Form in checkout---->
		
		<div class="container-fluid">
			<div class="row">
				<div class="panel panel-success">
					<div class="panel-heading">
						<b>Hoàn tất và thanh toán dịch vụ</b>
					</div>
					
					<div class="panel-body">
						{if $errormessage}
						<div class="alert alert-danger alert-dismissible" role="alert">
							<button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
							<strong>{$LANG.clientareaerrors}</strong>
							<ul>
								{$errormessage}
							</ul>
						</div>
						{/if}
						<form method="post" action="{$smarty.server.PHP_SELF}?a=checkout" id="mainfrm">
							<input type="hidden" name="submit" value="true" />
							<input type="hidden" name="custtype" id="custtype" value="{$custtype}" />
							
							<div class="clearfix"></div>
							<br>
							<div class="text-center">
								<div class="signuptype{if !$loggedin && $custtype neq "existing"} active{/if}"{if !$loggedin} id="newcust"{/if}></div><span>{$LANG.newcustomer}</span>
								<div class="signuptype{if $custtype eq "existing" && !$loggedin || $loggedin} active{/if}" id="existingcust"></div><span>{$LANG.existingcustomer}</span>
							</div>
							<br>
							<div class="clearfix"></div>

							<div class="signupfields signupfields-existing{if $custtype eq "existing" && !$loggedin}{else} hidden{/if}" id="loginfrm">
								<div class="col-sm-6 col-sm-offset-3">
									<p class="text-center sign-title-tv"><b>{$LANG.loginbutton}</b></p>
									<div class="clearfix"></div>
									<div class="form-group prepend-icon">
										<label for="inputEmail" class="field-icon">
											<span class="glyphicon glyphicon-user"></span>
										</label>
										<input type="email" name="loginemail" class="form-control field" id="inputEmail" placeholder="{$LANG.enteremail}"{if $loggedin} disabled{/if} placeholder="{$LANG.clientareaemail}"/>
									</div>
									<div class="form-group prepend-icon">
										<label for="inputPassword" class="field-icon">
											<span class="glyphicon glyphicon-lock"></span>
										</label>
										<input type="password" name="loginpw" class="form-control field" id="inputPassword" placeholder="{$LANG.clientareapassword}"{if $loggedin} disabled{/if} />
									</div>

								</div>

								<div class="clearfix cart_clearfix"></div>

							</div>
							
							<div class="signupfields{if $custtype eq "existing" && !$loggedin} hidden{/if}" id="signupfrm">
								<p class="text-center sign-title-tv"><b>{$LANG.newcustomer}</b></p>
								<div class="clearfix"></div>
								
								{if 1==2}
								{if $customfields}
								{foreach from=$customfields key=num item=customfield}
								<div class="form-group">
									<label class="control-label" for="customfield{$customfield.id}">{$customfield.name}</label>
									<div class="control">
										{$customfield.input} {$customfield.description}
									</div>
								</div>
								{/foreach}
								{/if}
								{/if}
								
								{if $customfields}
								<div id="clients_type" class="col-md-6 col-md-offset-3">
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
										<input type="text" name="companyname" id="companyname" value="{$clientsdetails.companyname}" class="form-control field" placeholder="{$LANG.clientareacompanyname}" required />
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
								
								
								{/if}
								
								<div class="sub-heading">
									<span>Thông tin khách hàng</span>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group prepend-icon">
											{if $loggedin}
											<div class="row">
												<label class="col-sm-6 text-right">
													{$LANG.clientareaemail}
												</label>
												<div class="col-sm-6">
													{$clientsdetails.email}
												</div>
											</div>
											{else}
											<label for="email" class="control-label field-icon">
												<span class="glyphicon glyphicon-envelope"></span>
											</label>
											<input type="email" name="email" id="email" value="{$clientsdetails.email}" class="form-control field" placeholder="{$LANG.clientareaemail}" required/>												
											{/if}
										</div>
									</div>
								</div>
								
								{if !$loggedin}
								<div class="row">
									<div class="col-md-6">
										<div id="newPassword1" class="form-group prepend-icon has-feedback">
											<label for="inputNewPassword1" class="control-label field-icon">
												<span class="glyphicon glyphicon-lock"></span>
											</label>
											<input type="password" class="form-control field" id="inputNewPassword1" name="password" value="{$password}" placeholder="{$LANG.clientareapassword}" required/>
											<!--{include file="$template/includes/pwstrength.tpl"}-->
										</div>
									</div>
									<div class="col-md-6">
										<div id="newPassword2" class="form-group prepend-icon has-feedback">
											<label for="inputNewPassword2" class="control-label field-icon">
												<span class="glyphicon glyphicon-lock"></span>
											</label>
											<input type="password" class="form-control field" id="inputNewPassword2" name="password2" value="{$password2}" placeholder="{$LANG.clientareaconfirmpassword}" required/>
											<div id="inputNewPassword2Msg">
											</div>
										</div>
									</div>
								</div>
								{/if}
								
								
								<div class="row">
									<div class="col-md-12">
										
										{if $loggedin}
										<div class="row">
											<div class="form-group prepend-icon">
												<label class="col-sm-6 text-right">
													Họ tên
												</label>
												<div class="col-sm-6">
													{$clientsdetails.firstname} {$clientsdetails.lastname}
												</div>
											</div>
										</div>
										{else}
										<div class="row">
											<div class="col-sm-6">
												<div class="form-group prepend-icon">
													<label for="firstname" class="control-label field-icon">
														<span class="glyphicon glyphicon-user"></span>
													</label>
													<input type="text" name="firstname" id="firstname" value="{$clientsdetails.firstname}" class="form-control field"{if !in_array('firstname', $clientsProfileOptionalFields)} required{/if} placeholder="{$LANG.clientareafirstname}"/>
												</div>
											</div>
											<div class="col-sm-6">
												<div class="form-group prepend-icon">
													<label for="firstname" class="control-label field-icon">
														<span class="glyphicon glyphicon-user"></span>
													</label>
													<input type="text" name="lastname" id="lastname" value="{$clientsdetails.lastname}" class="form-control field"{if !in_array('lastname', $clientsProfileOptionalFields)} required{/if} placeholder="{$LANG.clientarealastname}"/>
												</div>
											</div>
										</div>
										{/if}
										
										
										
										{if $loggedin}
										<div class="form-group prepend-icon">
											<div class="row">
												<label class="col-sm-6 text-right">
													{$LANG.clientareacompanyname}
												</label>
												<div class="col-sm-6">
													{$clientsdetails.companyname}
												</div>
											</div>
										</div>
										{/if}
										
									</div>
									<div class="col-md-12">
										<div class="form-group prepend-icon">
											{if $loggedin}
											<div class="row">
												<label class="col-sm-6 text-right">
													{$LANG.clientareaphonenumber}
												</label>
												<div class="col-sm-6">
													{$clientsdetails.phonenumber}
												</div>
											</div>
											{else}
											<label for="phonenumber" class="control-label field-icon">
												<span class="glyphicon glyphicon-phone-alt"></span>
											</label>
											<input type="text" name="phonenumber" id="phonenumber" value="{$clientsdetails.phonenumber}" class="form-control field"{if !in_array('phonenumber', $clientsProfileOptionalFields)} required{/if} placeholder="{$LANG.clientareaphonenumber}" />
											{/if}
										</div>
									</div>
								</div>
								
								<div class="row">	<!---------------------------------->
									<div class="col-md-12">
										<div class="form-group prepend-icon">
											{if $loggedin}
											<div class="row">
												<label class="col-sm-6 text-right">
													{$LANG.clientareaaddress1}
												</label>
												<div class="col-sm-6">
													{$clientsdetails.address1}
												</div>
											</div>
											{else}
											<label for="address1" class="control-label field-icon">
												<span class="glyphicon glyphicon-road"></span>
											</label>
											<input type="text" name="address1" id="address1" value="{$clientsdetails.address1}" class="form-control field"{if !in_array('address1', $clientsProfileOptionalFields)} required{/if} placeholder="{$LANG.clientareaaddress1}"/>
											{/if}
										</div>
										<!--
										<div class="form-group prepend-icon">
											{if $loggedin}
												<div class="row">
													<label class="col-sm-6 text-right">
														{$LANG.clientareaaddress2}
													</label>
													<div class="col-sm-6">
														{$clientsdetails.address2}
													</div>
												</div>
											{else}
												<label for="address2" class="control-label field-icon">
													<span class="glyphicon glyphicon-road"></span>
												</label>
												<input type="text" name="address2" id="address2" value="{$clientsdetails.address2}" class="form-control field" placeholder="{$LANG.clientareaaddress2}"/>
											{/if}
										</div>
									-->
									<div class="form-group prepend-icon">
										{if $loggedin}
										<div class="row">
											<label class="col-sm-6 text-right">
												{$LANG.clientareastate}
											</label>
											<div class="col-sm-6">
												{$clientsdetails.state}
											</div>
										</div>
										{else}
										<label for="state" class="control-label field-icon">
											<span class="glyphicon glyphicon-tree-deciduous"></span>
										</label>
										<input type="text" name="state" id="state" value="{$clientsdetails.state}" class="form-control field"{if !in_array('state', $clientsProfileOptionalFields)} required{/if} placeholder="{$LANG.clientareastate}"/>
										{/if}
									</div>
									<div class="form-group prepend-icon">
										{if $loggedin}
										<div class="row">
											<label class="col-sm-6 text-right">
												{$LANG.clientareacity}
											</label>
											<div class="col-sm-6">
												{$clientsdetails.city}
											</div>
										</div>
										{else}
										<label for="city" class="control-label field-icon">
											<span class="glyphicon glyphicon-home"></span>
										</label>
										<input type="text" name="city" id="city" value="{$clientsdetails.city}" class="form-control field"{if !in_array('city', $clientsProfileOptionalFields)} required{/if} placeholder="{$LANG.clientareacity}"/>
										{/if}
									</div>
										<!--
										<div class="form-group prepend-icon">
											{if $loggedin}
												<div class="row">
													<label class="col-sm-6 text-right">
														{$LANG.clientareapostcode}
													</label>
													<div class="col-sm-6">
														{$clientsdetails.postcode}
													</div>
												</div>
											{else}
												<label for="postcode" class="control-label field-icon">
													<span class="glyphicon glyphicon-barcode"></span>
												</label>
												<input type="text" name="postcode" id="postcode" value="{$clientsdetails.postcode}" class="form-control field"{if !in_array('postcode', $clientsProfileOptionalFields)} required{/if} placeholder="{$LANG.clientareapostcode}"/>
											{/if}
										</div>
									-->
									<div class="form-group" style="display:none">
										{if $loggedin}
										<div class="row">
											<label class="col-sm-6 text-right">
												{$LANG.clientareacountry}
											</label>
											<div class="col-sm-6">
												{$clientsdetails.country}
											</div>
										</div>
										{else}
										<label for="country" class="control-label">{$LANG.clientareacountry}</label>
										<select id="country" name="country" class="form-control">
											{foreach from=$countries key=thisCountryCode item=thisCountryName}
											<option value="{$thisCountryCode}" {if $thisCountryCode eq $clientsdetails.country}selected="selected"{/if}>{$thisCountryName}</option>
											{/foreach}
										</select>
										{/if}
									</div>
									

								</div>
							</div>
						</div>
						<!---------------------------------->
					</div>

					{if $securityquestions && !$loggedin}
					<div class="panel panel-default" id="securityQuestion">
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
							<div class="form-group">
								<label class="col-sm-4 control-label" for="securityqans">{$LANG.clientareasecurityanswer}</label>
								<div class="col-sm-6">
									<input type="password" name="securityqans" id="securityqans" class="form-control"/>
								</div>
							</div>
						</div>
					</div>
					{/if}

					{if $taxenabled && !$loggedin}
					<div class="carttaxwarning" style="display:none">
						{$LANG.carttaxupdateselections}
						<input type="submit" value="{$LANG.carttaxupdateselectionsupdate}" name="updateonly" class="btn btn-info btn-sm" />
					</div>
					{/if}

					{if $domainsinorder}
					<h2>{$LANG.domainregistrantinfo}</h2>
					<select name="contact" id="inputDomainContact" class="form-control">
						<option value="">{$LANG.usedefaultcontact}</option>
						{foreach from=$domaincontacts item=domcontact}
						<option value="{$domcontact.id}"{if $contact==$domcontact.id} selected{/if}>{$domcontact.name}</option>
						{/foreach}
						<option value="addingnew"{if $contact eq "addingnew"} selected{/if}>{$LANG.clientareanavaddcontact}...</option>
					</select>
					<br />
					<div class="signupfields{if $contact neq "addingnew"} hidden{/if}" id="domaincontactfields">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="domaincontactfirstname" class="control-label">{$LANG.clientareafirstname}</label>
									<input type="text" name="domaincontactfirstname" id="domaincontactfirstname" value="{$domaincontact.firstname}" class="form-control" />
								</div>
								<div class="form-group" style="display:none">
									<label for="domaincontactlastname" class="control-label">{$LANG.clientarealastname}</label>
									<input type="text" name="domaincontactlastname" id="domaincontactlastname" value="{$domaincontact.lastname}" class="form-control" />
								</div>
								<div class="form-group">
									<label for="domaincontactcompanyname" class="control-label">{$LANG.clientareacompanyname}</label>
									<input type="text" name="domaincontactcompanyname" id="domaincontactcompanyname" value="{$domaincontact.companyname}" class="form-control" />
								</div>
								<div class="form-group">
									<label for="domaincontactemail" class="control-label">{$LANG.clientareaemail}</label>
									<input type="email" name="domaincontactemail" id="domaincontactemail" value="{$domaincontact.email}" class="form-control" />
								</div>
								<div class="form-group">
									<label for="domaincontactphonenumber" class="control-label">{$LANG.clientareaphonenumber}</label>
									<input type="text" name="domaincontactphonenumber" id="domaincontactphonenumber" value="{$domaincontact.phonenumber}" class="form-control" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="domaincontactaddress1" class="control-label">{$LANG.clientareaaddress1}</label>
									<input type="text" name="domaincontactaddress1" id="domaincontactaddress1" value="{$domaincontact.address1}" class="form-control" />
								</div>
								
								<div class="form-group">
									<label for="domaincontactcity" class="control-label">{$LANG.clientareacity}</label>
									<input type="text" name="domaincontactcity" id="domaincontactcity" value="{$domaincontact.city}" class="form-control" />
								</div>
								<div class="form-group">
									<label for="domaincontactstate" class="control-label">{$LANG.clientareastate}</label>
									<input type="text" name="domaincontactstate" id="domaincontactstate" value="{$domaincontact.state}" class="form-control" />
								</div>
								<div class="form-group">
									<label for="domaincontactpostcode" class="control-label">{$LANG.clientareapostcode}</label>
									<input type="text" name="domaincontactpostcode" id="domaincontactpostcode" value="{$domaincontact.postcode}" class="form-control" />
								</div>
								<div class="form-group">
									<label for="domaincontactcountry" class="control-label">{$LANG.clientareacountry}</label>
									<select id="domaincontactcountry" name="domaincontactcountry" class="form-control">
										{foreach from=$countries key=thisCountryCode item=thisCountryName}
										<option value="{$thisCountryCode}" {if ($domaincontact.country && $thisCountryCode eq $domaincontact.country) || $thisCountryCode eq $clientsdetails.country}selected="selected"{/if}>{$thisCountryName}</option>
										{/foreach}
									</select>
								</div>
							</div>
						</div>
					</div>
					{/if}

					<div class="row">
						
						<div class="col-md-12">

							<div class="signupfields padded">
								<p class="text-center sign-title-tv"><b>{$LANG.orderpaymentmethod}</b></p>
								{foreach key=num item=gateway from=$gateways}
								<label class="radio-inline">
									<input type="radio" name="paymentmethod" value="{$gateway.sysname}" id="pgbtn{$num}"/>
									{$gateway.name}
								</label>
								{/foreach}

								<br /><br />
							</div>

							<div id="ccinputform" class="signupfields hidden">
								<p>Với hình thức thanh toán này, sau khi Quý khách hoàn thành các bước đăng ký trên, Quý khách đến ngân hàng và chuyển tiền cho EXA vào 1 trong những tài khoản bên dưới hoặc thanh toán qua Internet Banking. Sau đó Quý khách scan “Giấy xác nhận chuyển tiền” (Ủy nhiệm chi) và gửi vào email <a href="mailto:sales@exa.vn">sales@exa.vn</a>  để xác nhận việc thanh toán. Sau khi xác nhận việc thanh toán hoàn thành, chúng tôi sẽ kích hoạt tài khoản của Quý khách trong thời gian sớm nhất.</p>
								<strong>Lưu ý:</strong>
								<ul>
									<li>Vui lòng ghi rõ tên Công ty, số hóa đơn vào nội dung thanh toán tại phiếu gửi tiền ở ngân hàng để chúng tôi có thể tự động xác nhận thanh toán.</li>
									<li>Chúng tôi sẽ không chịu trách nhiệm khi Quý khách chuyển tiền nhầm hoặc không phải tài khoản ghi trên website.</li>
								</ul>
								<h4>Danh sách ngân hàng thanh toán qua hình thức chuyển khoản:</h4>
								<div class="payment_content">
									<div class="desc-bank">
										<div class="logo_bank"><img src="/images/vp-bank.png" alt="Logo Vpbank"></div>
										<div class="name_bank">Ngân hàng TMCP Việt Nam Thịnh Vượng</div>
										<div class="address_bank">Chi nhánh Sài Gòn – PGD Quận 10</div>
										<div class="boss-acount">Chủ tài khoản:  CÔNG TY TNHH EXA</div>
										<div class="number-acount">Số tài khoản: 140256967</div>
									</div>

									<div class="desc-bank">
										<div class="logo_bank"><img src="/images/vcbank.png" alt="Logo Vietcombank"></div>
										<div class="name_bank">Ngân hàng thương mại cổ phần Ngoại thương Việt Nam</div>
										<div class="address_bank">Chi nhánh Tân Định</div>
										<div class="boss-acount">Chủ tài khoản:  CÔNG TY TNHH EXA</div>
										<div class="number-acount">Số tài khoản: 03710004044677</div>
									</div>

									<div class="desc-bank">
										<div class="logo_bank"><img src="/images/ACB.png" alt="Logo ACB"></div>
										<div class="name_bank">Ngân hàng thương mại cổ phần Á Châu</div>
										<div class="address_bank">Phòng giao dịch Phạm Ngọc Thạch</div>
										<div class="boss-acount">Chủ tài khoản:  CÔNG TY TNHH EXA</div>
										<div class="number-acount">Số tài khoản: 125067099</div>
									</div>

									<div class="desc-bank">
										<div class="logo_bank"><img src="/images/techcombank.png" alt="Logo techcombank"></div>
										<div class="name_bank">Ngân hàng thương mại cổ phần Kỹ Thương Việt Nam</div>
										<div class="address_bank">Chi nhánh Sài Gòn</div>
										<div class="boss-acount">Chủ tài khoản:  CÔNG TY TNHH EXA</div>
										<div class="number-acount">Số tài khoản: 10225267704015</div>
									</div>
									
								</div>			
							</div>
							
							<div id="ccinputform2" class="signupfields hidden">
								<p>Quý khách có thể thanh toán trực tiếp tại trụ sở của Công ty.</p>
								<div class="payment_content">
									<h4>CÔNG TY TRÁCH NHIỆM HỮU HẠN EXA</h4>
									<p>Trụ sở: 268 Lý Thường Kiệt, P.14, Q.10, TP. HCM - Up Co-working Space</p>
									<p>Hotline: 0938.298.278 / 0911.385.775 </p>
								</div>
							</div>

						</div>
						
						<div class="clearfix"></div>

						{if $accepttos}
						<div align="center">
							<label class="checkbox-inline">
								<input type="checkbox" name="accepttos" id="accepttos" />
								{$LANG.ordertosagreement}
								<a href="{$tosurl}" target="_blank">{$LANG.ordertos}</a>
							</label>
						</div>
						<br />
						{/if}

						<div align="center">
							<button type="submit" id="btnCompleteOrder"{if $cartitems==0} disabled{/if} onclick="this.value='{$LANG.pleasewait}'" class="btn btn-success btn-md" {if $custtype eq "existing" && !$loggedin}formnovalidate{/if}>
								{$LANG.checkout}
								&nbsp;<i class="fa fa-arrow-circle-right"></i>
							</button>
							<br>
							<br>
						</div>
						
					</form>
				</div>
			</div>
		</div>
		{if 1==2}
		<div class="cartwarningbox">
			<img src="assets/img/padlock.gif" align="absmiddle" border="0" alt="Secure Transaction" />
			&nbsp;{$LANG.ordersecure} (<strong>{$ipaddress}</strong>) {$LANG.ordersecure2}
		</div>
		{/if}
		<!-----------SSSSSSSSSS------------->
	</div>
	
	{/if} <!----Form in checkout---->
	{else}

	<br /><br />

	{/if}

</div> <!-------- End Container--------->

</div>

</div>
