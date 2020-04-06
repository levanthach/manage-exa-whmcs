<link rel="stylesheet" type="text/css" href="templates/orderforms/{$carttpl}/style.css" />

<div id="order-verticalsteps">
	<div class="col-md-3 product-selection-sidebar" id="premiumComparisonSidebar">
        {include file="orderforms/standard_cart/sidebar-categories.tpl"}
    </div>
	<div class="col-md-9">
		<div class="header-lined">
			<h3>Đăng ký Dịch vụ</h3>
		</div>
		{include file="orderforms/verticalsteps/verticalsteps.tpl" step=1}

	<div class="maincontent">

	<!--<div class="left">-->
	<div class="panel panel-success">
		<div class="panel-heading">
			<b>{$LANG.ordercategories}</b>
		</div>
		<div class="panel-body">
			<form method="get" action="{$smarty.server.PHP_SELF}">
				
				<select name="gid" onchange="submit()" class="form-control">
				{foreach key=num item=productgroup from=$productgroups}
					<option value="{$productgroup.gid}"{if $gid eq $productgroup.gid} selected="selected"{/if}>{$productgroup.name}</option>
				{/foreach}
				{if $loggedin}
					<option value="addons">{$LANG.cartproductaddons}</option>
					
					{if $renewalsenabled}
					<option value="renewals">{$LANG.domainrenewals}</option>
					{/if}
				{/if}
				{if $registerdomainenabled}
					<option value="domains">{$LANG.orderdomainregonly}</option>
				{/if}
				</select>
			</form>
		</div>
		<br>
	</div>
	<div class="right">

		{if !$loggedin && $currencies}
		<form method="post" action="cart.php?gid={$gid}">
			<p align="right">{$LANG.choosecurrency}:</p>
			<select name="currency" onchange="submit()">
				{foreach from=$currencies item=curr}
				<option value="{$curr.id}"{if $curr.id eq $currency.id} selected{/if}>{$curr.code}</option>
				{/foreach}
			</select> 
			<input type="submit" value="{$LANG.go}" />
		</form>
		{/if}

	</div>

	<div class="clearfix"></div>
	<br>

	{foreach key=num item=product from=$products}
	<div class="panel panel-default">
		<div class="panel-heading">
			<strong>{$product.name}</strong>
		</div>
		<form method="post" action="{$smarty.server.PHP_SELF}?a=add&{if $product.bid}bid={$product.bid}{else}pid={$product.pid}{/if}">
			
			<div class="container-fluid">		
				<div class="row">
					<div class="col-md-6">	
						<div class="row">
							<div class="panel-body product-desc-tv">
								{$product.description}
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="row">
							<div class="panel-body">
								<p><b>{$LANG.clientarearegistrationperiod}</b></p>
								{if $product.freedomain}<em>{$LANG.orderfreedomainregistration} {$LANG.orderfreedomaindescription}</em><br />{/if}
								
								{if $product.bid}
									<strong>{$LANG.bundledeal}</strong>{if $product.displayprice} {$product.displayprice}
								{/if}
								{elseif $product.paytype eq "free"}
									{$LANG.orderfree}<br />
									<input type="hidden" name="billingcycle" value="free" />
								{elseif $product.paytype eq "onetime"}
								
								{if $product.pricing.hasconfigoptions}{$LANG.startingfrom} {/if}
								
								{$product.pricing.onetime} {$LANG.orderpaymenttermonetime}<br />
									<input type="hidden" name="billingcycle" value="onetime" />
								{elseif $product.paytype eq "recurring"}
									<select name="billingcycle" class="form-control">
										{if $product.pricing.monthly}<option value="monthly">{$product.pricing.monthly}</option>{/if}
										{if $product.pricing.quarterly}<option value="quarterly">{$product.pricing.quarterly}</option>{/if}
										{if $product.pricing.semiannually}<option value="semiannually">{$product.pricing.semiannually}</option>{/if}
										{if $product.pricing.annually}<option value="annually">{$product.pricing.annually}</option>{/if}
										{if $product.pricing.biennially}<option value="biennially">{$product.pricing.biennially}</option>{/if}
										{if $product.pricing.triennially}<option value="triennially">{$product.pricing.triennially}</option>{/if}
									</select>
								{/if}
								<br>
								<input type="submit" class="btn btn-embossed btn-success" value="{$LANG.ordernowbutton}"{if $product.qty eq "0"} disabled{/if} />
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>

	</div>
	{/foreach}

	{if 1==2}<p><img align="left" src="{$BASE_PATH_IMG}/padlock.gif" border="0" alt="Secure Transaction" style="padding-right: 10px;" /> {$LANG.ordersecure} (<strong>{$ipaddress}</strong>) {$LANG.ordersecure2}</p>{/if}

	</div>

	<div class="clear"></div>

	</div>
</div>