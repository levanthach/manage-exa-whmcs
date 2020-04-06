<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="{$charset}" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{$companyname} - {$pagetitle}</title>

    <!-- Bootstrap -->
    <link href="{$BASE_PATH_CSS}/bootstrap.min.css" rel="stylesheet">
    <link href="{$BASE_PATH_CSS}/font-awesome.min.css" rel="stylesheet">

    <!-- Styling -->
    <link href="templates/{$template}/css/overrides.css" rel="stylesheet">
    <link href="templates/{$template}/css/styles.css" rel="stylesheet">
    <link href="templates/{$template}/css/invoice.css" rel="stylesheet">

</head>
<body>

    <div class="container-fluid invoice-container">

        {if $invalidInvoiceIdRequested}

            {include file="$template/includes/panel.tpl" type="danger" headerTitle=$LANG.error bodyContent=$LANG.invoiceserror bodyTextCenter=true}

        {else}

            <div class="row">
                <div class="col-sm-7">
                        <p><img src="images/logo.png" title="{$companyname}" /></p>
                    <h3>{$pagetitle}</h3>

                </div>
                <div class="col-sm-5 text-center">

                    <div class="invoice-status">
                        {if $status eq "Unpaid"}
                            <span class="unpaid">{$LANG.invoicesunpaid}</span>
                        {elseif $status eq "Paid"}
                            <span class="paid">{$LANG.invoicespaid}</span>
                        {elseif $status eq "Refunded"}
                            <span class="refunded">{$LANG.invoicesrefunded}</span>
                        {elseif $status eq "Cancelled"}
                            <span class="cancelled">{$LANG.invoicescancelled}</span>
                        {elseif $status eq "Collections"}
                            <span class="collections">{$LANG.invoicescollections}</span>
                        {/if}
                    </div>

                    {if $status eq "Unpaid"}
                        <div class="small-text">
                            {$LANG.invoicesdatedue}: {$datedue}
                        </div>
                        
                    {/if}

                </div>
            </div>

            <hr>

            {if $paymentSuccess}
                {include file="$template/includes/panel.tpl" type="success" headerTitle=$LANG.success bodyContent=$LANG.invoicepaymentsuccessconfirmation bodyTextCenter=true}
            {elseif $pendingReview}
                {include file="$template/includes/panel.tpl" type="info" headerTitle=$LANG.success bodyContent=$LANG.invoicepaymentpendingreview bodyTextCenter=true}
            {elseif $paymentFailed}
                {include file="$template/includes/panel.tpl" type="danger" headerTitle=$LANG.error bodyContent=$LANG.invoicepaymentfailedconfirmation bodyTextCenter=true}
            {elseif $offlineReview}
                {include file="$template/includes/panel.tpl" type="info" headerTitle=$LANG.success bodyContent=$LANG.invoiceofflinepaid bodyTextCenter=true}
            {/if}

            <div class="row">
                <div class="col-sm-6 pull-sm-right text-right-sm">
                    <strong>{$LANG.invoicespayto}:</strong>
                    <address class="small-text">
                        <!-- {$payto} -->
						Công ty THNN EXA<br>
                        Văn phòng Up Bách Khoa, 268 Lý Thường Kiệt, Phường 14, Quận 10, HCM</br>
                        Hotline: 0938 298 278/ 0911 385 115</br>
                        Email : sales@exa.vn</br>
                    </address>
                </div>
                <div class="col-sm-6">
                    <strong>{$LANG.invoicesinvoicedto}:</strong>
                    <address class="small-text">
                        {if $clientsdetails.companyname}<b>Công ty:</b> {$clientsdetails.companyname}<br />{/if}
                        <b>Họ tên:</b> {$clientsdetails.firstname} {$clientsdetails.lastname}<br />
						<b>Email:</b> {$clientsdetails.email}<br/>
						<b>Điện thoại:</b> {$clientsdetails.phonenumber}<br/>
                        <b>Địa chỉ:</b> {$clientsdetails.address1}, {$clientsdetails.address2}{$clientsdetails.state}<br>
						{$clientsdetails.city}, {$clientsdetails.postcode}{$clientsdetails.country}
                        
						{if $customfields}
                        <br /><br />
                        {foreach from=$customfields item=customfield}
                        {$customfield.fieldname}: {$customfield.value}<br />
                        {/foreach}
                        {/if}
                    </address>
                </div>
            </div>

            <div class="row">
                <div class="col-sm-6">
                    <strong>{$LANG.paymentmethod}:</strong><br>
                    <span class="small-text">
                        {if $status eq "Unpaid" && $allowchangegateway}
                            <form method="post" action="{$smarty.server.PHP_SELF}?id={$invoiceid}" class="form-inline">
                                {$gatewaydropdown}
                            </form>
                        {else}
                            {$paymentmethod}
                        {/if}
                    </span>
                    <br /><br />
                </div>
                <div class="col-sm-6 text-right-sm">
                    <strong>{$LANG.invoicesdatecreated}:</strong><br>
                    <span class="small-text">
                        {$date}<br><br>
                    </span>
                </div>
            </div>

            <br />

            {if $manualapplycredit}
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title"><strong>Đơn đặt hàng <!-- {$LANG.invoiceaddcreditapply} --></strong></h3>
                    </div>
                    <div class="panel-body">
                        <form method="post" action="{$smarty.server.PHP_SELF}?id={$invoiceid}">
                            <input type="hidden" name="applycredit" value="true" />
                            {$LANG.invoiceaddcreditdesc1} <strong>{$totalcredit}</strong>. {$LANG.invoiceaddcreditdesc2}. {$LANG.invoiceaddcreditamount}:
                            <div class="row">
                                <div class="col-xs-8 col-xs-offset-2 col-sm-4 col-sm-offset-4">
                                    <div class="input-group">
                                        <input type="text" name="creditamount" value="{$creditamount}" class="form-control" />
                                        <span class="input-group-btn">
                                            <input type="submit" value="{$LANG.invoiceaddcreditapply}" class="btn btn-success" />
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            {/if}

            {if $notes}
                {include file="$template/includes/panel.tpl" type="info" headerTitle=$LANG.invoicesnotes bodyContent=$notes}
            {/if}

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title"><strong>Đơn đặt hàng <!-- {$LANG.invoicelineitems}--></strong></h3>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-condensed">
                            <thead>
                                <tr>
                                    <td><strong>{$LANG.invoicesdescription}</strong></td>
                                    <td width="20%" class="text-center"><strong>{$LANG.invoicesamount}</strong></td>
                                </tr>
                            </thead>
                            <tbody>
                           
                                {foreach from=$invoiceitems item=item}
                                    <tr>
                                        <td>{$item.description}{if $item.taxed eq "true"} *{/if}</td>
                                        <td class="text-center">{$item.amount}</td>
                                    </tr>
                                {/foreach}
                                <tr>
                                    <td class="total-row text-right"><strong>{$LANG.invoicessubtotal}</strong></td>
                                    <td class="total-row text-center">{$subtotal}</td>
                                </tr>
                                {if $taxrate}
                                    <tr>
                                        <td class="total-row text-right"><strong>{$taxrate}% {$taxname}</strong></td>
                                        <td class="total-row text-center">{$tax}</td>
                                    </tr>
                                {/if}
                                {if $taxrate2}
                                    <tr>
                                        <td class="total-row text-right"><strong>{$taxrate2}% {$taxname2}</strong></td>
                                        <td class="total-row text-center">{$tax2}</td>
                                    </tr>
                                {/if}
								{if 1==2} 
                                <tr>
                                    <td class="total-row text-right"><strong>{$LANG.invoicescredit}</strong></td>
                                    <td class="total-row text-center">{$credit}</td>
                                </tr>
								{/if}
                                <tr>
                                    <td class="total-row text-right"><strong>{$LANG.invoicestotal}</strong></td>
                                    <td class="total-row text-center">{$total}</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
			<b>Ghi chú:</b>
            {if $taxrate}
                <p>(<span style="color:red">&#10045;</span>) {$LANG.invoicestaxindicator}</p>
            {/if}

            <div class="transactions-container small-text hidden">
                <div class="table-responsive">
                    <table class="table table-condensed">
                        <thead>
                            <tr>
                                <td class="text-center"><strong>{$LANG.invoicestransdate}</strong></td>
                                <td class="text-center"><strong>{$LANG.invoicestransgateway}</strong></td>
                                <td class="text-center"><strong>{$LANG.invoicestransid}</strong></td>
                                <td class="text-center"><strong>{$LANG.invoicestransamount}</strong></td>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach from=$transactions item=transaction}
                                <tr>
                                    <td class="text-center">{$transaction.date}</td>
                                    <td class="text-center">{$transaction.gateway}</td>
                                    <td class="text-center">{$transaction.transid}</td>
                                    <td class="text-center">{$transaction.amount}</td>
                                </tr>
                            {foreachelse}
                                <tr>
                                    <td class="text-center" colspan="4">{$LANG.invoicestransnonefound}</td>
                                </tr>
                            {/foreach}
                            <tr>
                                <td class="text-right" colspan="3"><strong>{$LANG.invoicesbalance}</strong></td>
                                <td class="text-center">{$balance}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
			
			<div class="payment-btn-container">
				<h5>Thông tin thanh toán dịch vụ</h5>
				{if 1==2}{$paymentbutton}{/if}
				Công ty TNHH EXA:<br>
				<ul style="padding:0;">
					<li>
						Ngân hàng Ngoại Thương (Vietcombank)- CN Tân Định<br>
						<b>Số TK: 0371000404467</b>
					</li>
					<li>
						Ngân hàng Kỹ Thương (Techcombank)-CN Sài Gòn<br>
						<b>Số TK: 10225267704015</b>
					</li>
					<li>
						Ngân Hàng Á Châu (ACB) -PGD Phạm Ngọc Thạch<br>
						<b>Số TK: 125067099</b>
					</li>
				</ul>

			</div>
			<br>
			<h5 class="text-center" style="color:red"><i>EXA sẽ bàn giao dịch vụ sau 4h kể từ thời điểm Quý khách thanh toán thành công!</i></h5>
			<br>
            <div class="pull-right btn-group btn-group-sm hidden-print">
                <a href="javascript:window.print()" class="btn btn-default"><i class="fa fa-print"></i> {$LANG.print}</a>
                <a href="dl.php?type=i&amp;id={$invoiceid}" class="btn btn-default"><i class="fa fa-download"></i> {$LANG.invoicesdownload}</a>
            </div>

        {/if}

    </div>

    <p class="text-center hidden-print small"><a href="clientarea.php">{$LANG.invoicesbacktoclientarea}</a></a></p>

</body>
</html>
