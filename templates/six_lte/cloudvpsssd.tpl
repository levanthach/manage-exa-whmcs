

	<div class="main-cont detail detail-truecloud">
		<div class="block background-top hidden" style="margin-top:-20px">
			<div class="wrap">
				<h1>CloudVPS SSD </h1>
				<p class="des-page">Phù hợp cho web hosting, mobile app và phần mềm</p>
			</div>
			<div class="bar">
				<nav class="menu-sub"></nav>
				<span class="arrow"></span>
			</div>
		</div>

		<div class="text-center relative hidden">
			<img src="{$WEB_ROOT}/images/cloudvpsssd/cloud-vps-ssd-5.jpg"/>
			<div class="absolute img-fullwidth" style="bottom:0">
				<div class="container">
					<p class="font-17 pt-20 mb-20 text-white text-center" style="line-height: 28px">
						<b class="font-32">CloudVPS SSD</b> do EXA cung cấp phù hợp và được nhiều doanh nghiệp lựa chọn để chạy các ứng dụng di động, 
						làm web hosting, ngoài ưu điểm dịch vụ về tốc độ xử lý nhanh, hệ thống CloudVPS SSD còn nhân bản dữ liệu 03 lần đảm bảo an toàn
						dữ liệu gấp 3 lần thông thường.
					</p>
				</div>
			</div>
		</div>

		{if ($sendmail == 'success')}
			<div class="container">
				<div class="row pt-50 pb-50">
					<div class="col-md-12">
						<div class="alert alert-success" role="alert" style="text-align: center;">
							Quý khách vừa hoàn thành tự cấu hình dịch vụ <b>CLOUDVPS SSD</b>, chúng tôi sẽ liên hệ với quý khách trong thời gian sớm nhất!
						</div>
					</div>
				</div>
			</div>
		{/if}

		<div class="container">
			<div class="row pt-50 pb-50">
				<div class="col-md-3">
					<img src="{$WEB_ROOT}/images/cloudvpsssd/cloud-vps-big2.jpg"/>
				</div>
				<div class="col-md-9">
					<h2 class="pt-20"><span class="txt-green-1eba5c">CloudVPS SSD</span> là gì?</h2>
					<p class="font-14 mb-20" style="line-height: 28px">
						CloudVps SSD là dịch vụ cung cấp CloudVPS với hiệu suất cực cao nhờ sử dụng 100% ổ cứng SSD cho tốc độ lưu trữ và xử lý thông tin nhanh hơn nhiều lần 
						so với CloudVPS thông thường và chi phí hợp lý trọn gói tính theo tháng. 
					</p>
				</div>
			</div>
		</div>

		<!-- special -->
		<div class="block home-cloud pt-30 bg-black-444">
			<div class="wrap">
				<h2 class="font-54 text-white">BẢNG GIÁ DỊCH VỤ CLOUDVPS SSD</h2>
				<p class="des pt-10 text-white">
					Tăng/giảm cấu hình nhanh chỉ 2 phút
				</p>
				
				
				<!-- Price type choose -->
				<div class="packages hidden">
					{foreach from=$products key=i item=product}
						<!-- {$i} -->
						<div class="item item-{$i}">
							<a href="https://exa.vn/cart.php?a=add&pid={$product['pid']}" class="link" title="trueCloud {$product['name']} Saving Plan">
							<span class="color top"></span>
							<div class="name">
								<h4>{if $i==0}(**) {/if}{$product['name']}</h4>
								<p class="plan"></p>
							</div>
							<div class="info">
								{if $i==2}
									<div class="best_choice glyphicon glyphicon-star-empty"><br/>Best seller</div>
								{/if}
								<p class="price">
								   <b>{$product['pricing']['VND']['monthly']|number_format:0:".":"."}</b> VND
								</p>
								<ul class="hardware">
									{$product['description']}
									<li><p class="text-uppercase text-center"><b>Sign Up</b></p></li>
								</ul>
								<span class="color bottom"></span>
							</div>
							</a>
						</div>
					{/foreach}
					
					
					<!-- 5 -->
					<div class="item item-4">
						<a href="http://checkout.exa.vn/home/checkout5" class="link" title="trueCloud Basic Saving Plan">
							<span class="color top"></span>
							<div class="name">
								<h4>CSB-CUSTOM</h4>
								<p class="plan"></p>
							</div>
							<div class="info">
								<p class="price"><b>MAX</b></p>
								<ul class="hardware">
									<li class="hidden"></li>
									<li><b>56 Core</b> Processor</li>
									<li><b>128 GB</b> Memory</li>
									<li><b>16.000 GB</b> Cloud Storage <br>(3x replication, Tier 1-SSD)</li>
									<li><b>1 IP</b> Address</li>
									<li><b>Unlimited</b> Traffic</li>
									<li></li>
									<li><span class="text-uppercase"><b>Sign Up</b></span></li>
								</ul>
								<span class="color bottom"></span>
							</div>
						</a>
					</div>
					
					<div style="clear:both"></div>
				</div>
				
				<!-------------------------------------------- PRICE => -------------------------------------------------->
				<div class="row pt-20">
				<div class="owl-carousel-4col" data-dots="false" data-nav="false" data_autoplay="false" id="price_cloud">
					{foreach from=$products key=i item=product}
					<div class="item">
						<div class="pricing-table bg-white border-1px text-center">
							<div class="pt-0 pb-40">
								<div class="bg-g{($i+2)} position-relative overflow-hidden pt-15 pb-20">
									<h2 class="package-type text-uppercase text-white font-24 mb-0">{if $i==0}(**) {/if}{$product['name']}</h2>
									<div class="package-icon"><i class="fa fa-database"></i></div>
									{if $i==2}
									<div class="pricing-ribbon">
										<h5>Phổ biến</h5>
									</div>
									{/if}
								</div>
								<div class="hidden">{var_dump($product['pricing']['VND'])}</div>
								<h1 class="price font-32 font-weight-600 text-theme-colored bg-white line-height-1 font-opensans m-0 pt-15">
									{($product['pricing']['VND']['semiannually']/6)|number_format:0:".":"."}
									<span class="font-18 font-weight-400 txt-green-1eba5c">VNĐ/ Tháng</span>
									<br>
									
									{*<span class="font-17 font-weight-600 text-gray-light" {if $i==2}style="text-decoration: line-through;"{/if}>{if $i==2}1.190.000 <i class="font-weight-400">VNĐ</i>{else}&nbsp;{/if}</span>*}
									
								</h1>
								<ul class="table-list pt-0 pl-0">
									{$product['description']}
								</ul>
								<a class="btn bg-g{($i+2)} text-white text-uppercase mt-10" href="{$WEB_ROOT}/cart.php?a=add&pid={$product['pid']}">Đăng ký</a><br>
							</div>
						</div>
					</div>
					{/foreach}
					
					<div class="item">
						<div class="pricing-table bg-white border-1px text-center">
							<div class="pt-0 pb-40">
								<div class="bg-g6 position-relative pt-15 pb-20">
									<h2 class="package-type text-uppercase text-white font-24 mb-0">CSB-CUSTOM</h2>
									<div class="package-icon"><i class="fa fa-server"></i></div>
								</div>
								<h1 class="price font-32 font-weight-600 text-theme-colored bg-white line-height-1 font-opensans m-0 pt-15">
									MAX
									{*<span class="font-18 font-weight-400 txt-green-1eba5c">&nbsp;</span>*}
									{*<br>*}
									{*<span class="font-16 font-weight-600 text-gray-light">&nbsp;</span>*}
								</h1>
								<ul class="table-list pt-0 pl-0">
									<li class="hidden"></li>
									<li><b>96 core</b> Processor</li>
									<li><b>256GB</b> Memory</li>
									<li><b>16.000 GB</b> Cloud Storage <br>(3x replication, với 3 Tier: <br>Tier 0 - Cool,<br>Tier 1 - Warm,<br>Tier 2 - Hot)</li>
									<li><b>1 IP</b> Address</li>
									<li><b>Unlimited</b> Traffic</li>
									{*<li>&nbsp;</li>*}
								</ul>
								<a class="btn btn-danger text-uppercase mt-10" href="https://exa.vn/cloudvpsssd.php#baogia">Tùy chọn</a><br>
							</div>
						</div>
					</div>
					
					
					{if 1==2}
					<div class="item">
						<div class="pricing-table bg-white border-1px text-center">
							<div class="pt-0 pb-40">
								<div class="bg-dark-transparent-9 position-relative pt-15 pb-20">
									<p class="text-white font-16 line-bottom-centered mb-20">Starting At</p>
									<h2 class="package-type text-uppercase text-white font-24 mb-0">VPS Hosting</h2>
									<div class="package-icon"><i class="fa fa-server"></i></div>
								</div>
								<h1 class="price font-45 font-weight-600 text-theme-colored bg-white line-height-1 font-opensans m-0 pt-15"><span class="font-26 text-theme-colored font-raleway font-weight-600 currency">$</span>50<span class="font-25 font-weight-600 text-gray-lightgray">.00</span></h1>
								<h5 class="text-theme-colored mt-5 mb-20">per year</h5>
								<ul class="table-list pt-0 pl-0">
									<li>50GB Storage</li>
									<li>Free Domain Register</li>
									<li>30GB Bandwidth</li>
									<li>50 Email Account</li>
									<li>Free Cpanel</li>
									<li>24/7 instant Support</li>
								</ul>
								<a class="btn btn-colored btn-theme-colored text-uppercase mt-10" href="#">Order Now!</a><br>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="pricing-table bg-white border-1px text-center">
							<div class="pt-0 pb-40">
								<div class="bg-dark-transparent-9 position-relative overflow-hidden pt-15 pb-20">
									<p class="text-white font-16 line-bottom-centered mb-20">Starting At</p>
									<h2 class="package-type text-uppercase text-white font-24 mb-0">Shared Hosting</h2>
									<div class="package-icon"><i class="fa fa-cubes"></i></div>
									<div class="pricing-ribbon">
										<h5>popular</h5>
									</div>
								</div>
								<h1 class="price font-45 font-weight-600 text-theme-colored bg-white line-height-1 font-opensans m-0 pt-15"><span class="font-26 text-theme-colored font-raleway font-weight-600 currency">$</span>70<span class="font-25 font-weight-600 text-gray-lightgray">.00</span></h1>
								<h5 class="text-theme-colored mt-5 mb-20">per year</h5>
								<ul class="table-list pt-0 pl-0">
									<li>100GB Storage</li>
									<li>Free Domain Register</li>
									<li>70GB Bandwidth</li>
									<li>100 Email Account</li>
									<li>Free Cpanel</li>
									<li>24/7 instant Support</li>
								</ul>
								<a class="btn btn-colored btn-theme-colored text-uppercase mt-10" href="#">Order Now!</a><br>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="pricing-table bg-white border-1px text-center">
							<div class="pt-0 pb-40">
								<div class="bg-dark-transparent-9 position-relative pt-15 pb-20">
									<p class="text-white font-16 line-bottom-centered-white mb-20">Starting At</p>
									<h2 class="package-type text-uppercase text-white font-24 mb-0">Dedicated Hosting</h2>
									<div class="package-icon"><i class="fa fa-sitemap"></i></div>
								</div>
								<h1 class="price font-45 font-weight-600 text-theme-colored bg-white line-height-1 font-opensans m-0 pt-15"><span class="font-26 text-theme-colored font-raleway font-weight-600 currency">$</span>90<span class="font-25 font-weight-600 text-gray-lightgray">.00</span></h1>
								<h5 class="text-theme-colored mt-5 mb-20">per year</h5>
								<ul class="table-list pt-0 pl-0">
									<li>Unlimited Storage</li>
									<li>Free Domain Register</li>
									<li>Unlimited Bandwidth</li>
									<li>Unlimited Email Account</li>
									<li>Free Cpanel</li>
									<li>24/7 instant Support</li>
								</ul>
								<a class="btn btn-colored btn-theme-colored text-uppercase mt-10" href="#">Order Now!</a><br>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="pricing-table bg-white border-1px text-center">
							<div class="pt-0 pb-40">
								<div class="bg-dark-transparent-9 position-relative pt-15 pb-20">
									<p class="text-white font-16 line-bottom-centered mb-20">Starting At</p>
									<h2 class="package-type text-uppercase text-white font-24 mb-0">Cloud Hosting</h2>
									<div class="package-icon"><i class="fa fa-cloud-upload"></i></div>
								</div>
								<h1 class="price font-45 font-weight-600 text-theme-colored bg-white line-height-1 font-opensans m-0 pt-15"><span class="font-26 text-theme-colored font-raleway font-weight-600 currency">$</span>120<span class="font-25 font-weight-600 text-gray-lightgray">.00</span></h1>
								<h5 class="text-theme-colored mt-5 mb-20">per year</h5>
								<ul class="table-list pt-0 pl-0">
									<li>50GB Storage</li>
									<li>Free Domain Register</li>
									<li>30GB Bandwidth</li>
									<li>50 Email Account</li>
									<li>Free Cpanel</li>
									<li>24/7 instant Support</li>
								</ul>
								<a class="btn btn-colored btn-theme-colored text-uppercase mt-10" href="#">Order Now!</a><br>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="pricing-table bg-white border-1px text-center">
							<div class="pt-0 pb-40">
								<div class="bg-dark-transparent-9 position-relative pt-15 pb-20">
									<p class="text-white font-16 line-bottom-centered mb-20">Starting At</p>
									<h2 class="package-type text-uppercase text-white font-24 mb-0">VPS Hosting</h2>
									<div class="package-icon"><i class="fa fa-server"></i></div>
								</div>
								<h1 class="price font-45 font-weight-600 text-theme-colored bg-white line-height-1 font-opensans m-0 pt-15"><span class="font-26 text-theme-colored font-raleway font-weight-600 currency">$</span>180<span class="font-25 font-weight-600 text-gray-lightgray">.00</span></h1>
								<h5 class="text-theme-colored mt-5 mb-20">per year</h5>
								<ul class="table-list pt-0 pl-0">
									<li>Unlimited Storage</li>
									<li>Free Domain Register</li>
									<li>Unlimited Bandwidth</li>
									<li>Unlimited Email Account</li>
									<li>Free Cpanel</li>
									<li>24/7 instant Support</li>
								</ul>
								<a class="btn btn-colored btn-theme-colored text-uppercase mt-10" href="#">Order Now!</a><br>
							</div>
						</div>
					</div>
					{/if}
				</div>
				</div>
				<!-------------------------------------------- PRICE <= -------------------------------------------------->

				<div class="note-price  text-white">
					<b>Ghi chú</b>
					<span class="des-sub">
						(*) Thông số ước lượng:
					</span>
					<span class="des-sub">
						(***) Giá trên chưa bao gồm thuế 10%.
					</span>
					<span class="des-sub">
						(****) Hợp đồng 12 tháng, thanh toán 3 tháng/ lần.
					</span>
					<span class="des-sub">
						(*****) <span class="text-red font-13"><b>Bàn giao dịch vụ sau 30 phút kể từ thời điểm thanh toán.</b></span>
					</span>
				</div>
				<div class="clearfix" id="baogia"></div>
				
			</div>
		</div>

		{if (1 == 1)}
		<form method="post" action="cloudvpsssd.php?sendmail=success">
		<div class="container">
			<div class="row pt-50 pb-50">
				<div class="col-md-12">
					<style>
						input[type=radio] {
							width: 20px;
						}
						.txtCal {
							width: 100%;
						}
						.storage {
							width: 80px;
						}
						th, td {
							text-align: center;
						}
						.table > tbody > tr > td {
							vertical-align: top;
						}
						.card-total {
							font-size: 20px;
							clear: both;
							overflow: hidden;
							padding: 0px 0;
							margin-top: 5px !important;
						}
						.card-total p {
							float: right;
						}
						.card-total .total_price, .subtotal_price, .discount_price {
							padding-right: 10px;
							border: #17a84c solid 1px;
							border-radius: 4px;
							-moz-border-radius: 4px;
							-webkit-border-radius: 4px;
							min-width: 190px;
							display: inline-block;
							zoom: 1;
							text-align: right;
							margin: 0 8px;
							padding: 5px;
						}
						input.coupon {
							width: 70px;
							margin-top: 5px;
						}
						table.table_storage {
							width: 100%;
						}
						table.table_storage tr > td {
							padding-bottom: 0px;
						}
						.form-pay ul {
							width: 100% !important;
						}
						.form-pay ul li {
							width: 500px !important;
						}
						.block.dark, .block.blank {
							padding: 0px 0 !important;
						}

                        table#tb thead tr > th, td {
							/*padding: 3px 10px !important;*/
							/*border: 2px solid #fff;*/
							background: SteelBlue ;
							vertical-align: top;
                        }

						table#tb thead {
							background: SteelBlue !important;
							color: black;
						}
						.tr-header th{
							background: SteelBlue !important;
						}
						hr {
							margin-top: 5px !important;
							margin-bottom: 5px !important;
						}
						.form-control {
							height: 25px !important;
						}
						.table tr td {
							/*padding: 3px !important;*/
						}
					</style>
					<section class="portfolio" id="portfolio">
						<div class="container">
							<h2 class="font-54 text-white" style="color:#1eba5c !important;text-align: center;margin-bottom: 10px;">BẢNG GIÁ CẤU HÌNH TỰ CHỌN</h2>
							<p class="des pt-10 text-white" style="color:black !important;text-align: center;margin-bottom: 40px;font-size: 20px;">
								<b>CSB-CUSTOM</b>
							</p>
							<div class="row">
								<table class="table table-hover small-text" id="tb">
									<thead>
									<tr class="tr-header">
										<th>
											Cloud name<hr>
											<input type="button" class="btn" style="float: left;width: 100%;padding: 0px 0px;height: 25px;" value="Thêm Cloud" id="addMore">
										</th>
										<th>
											CPU (Core)<hr>
											<input type="text" name="coupon_cpu" class="form-control coupon" placeholder="coupon" data-type="cpu" style="width:100%;margin-top: 0px;height: 25px;display:none" id="coupon_cpu" onmouseleave="getTotal()">
											<a style="color: white;font-size: 11px;" onclick="$('#coupon_cpu').show();$(this).hide()">coupon(nếu có)</a>
										</th>
										<th style="width: 100px;">
											Ram (GB)<hr/>
											<input type="text" name="coupon_ram" class="form-control coupon" placeholder="coupon" style="width:100%;margin-top: 0px;height: 25px;display:none" data-type="ram" id="coupon_ram" onmouseleave="getTotal()">
											<a style="color: white;font-size: 11px;" onclick="$('#coupon_ram').show();$(this).hide()">coupon(nếu có)</a>
										</th>
										<th style="width: 260px;">
											Cloud Storage<hr/>
											<input type="text" name="coupon_storage" class="form-control coupon" placeholder="Code cách nhau bằng dấu ;" id="coupon_storage" style="width:100%;margin-top: 0px;height: 25px;display:none" onmouseleave="getTotal()">
											<a style="color: white;font-size: 11px;" onclick="$('#coupon_storage').show();$(this).hide()">coupon(nếu có)</a>
										</th>
										<th style="width: 100px;">
											IP<hr>
											<input type="text" name="coupon_ip" class="form-control coupon" placeholder="coupon" style="width:100%;margin-top: 0px;height: 25px;display:none" data-type="ip" id="coupon_ip" onmouseleave="getTotal()">
											<a style="color: white;font-size: 11px;" onclick="$('#coupon_ip').show();$(this).hide()">coupon(nếu có)</a>
										</th>
										<th>Bandwidth</th>
										<th style="width: 100px;">Giá VNĐ / Tháng</th>
										<th>
											Xóa
										</th>
									</tr>
									</thead>
									<tr class="rows_value">
										<td>
											<input type="text" name="rows[0][name]" class="form-control" placeholder="Cloud name">
										</td>
										<td>
											<div class="col-md-6" style="padding-left: 0px;padding-right: 0px;width: 35%;">
												<input type="number" name="rows[0][cpu]" value="1" min="1" max="112" size="1" class="form-control txtCal" data-type="cpu"
													   onmouseleave="inputCheck(this)" oninput="inputCheckAlert(this)" style="">
											</div>
											<div class="col-md-6" style="padding-left: 0px;padding-right: 0px;width: 65%;">
												<div class="control-group" style="text-align: left">
													<label class="radio-inlinea" style="font-size: 10px;float: left;">
														<input type="radio" name="rows[0][cpu_type]" value="shared" class="txtCal" checked>Shared
													</label>
													<label class="radio-inlinea" style="font-size: 10px;float: left;">
														<input type="radio" name="rows[0][cpu_type]" value="guaranteed" class="txtCal">Guaranteed
													</label>
												</div>
											</div>
										</td>
										<td>
											<input type="number" name="rows[0][ram]" value="1" min="1" max="128" size="1" class="form-control txtCal" data-price="80000" onmouseleave="inputCheck(this)" oninput="inputCheckAlert(this)" style="" data-type="ram">
										</td>
										<td style="width: 120px;padding-top: 0px;">
											<table class="table_storage">
												<tr>
													<td style="vertical-align: top;padding-top: 8px;">
														<input type="number" name="rows[0][storage][][tier_1]" value="10" min="10" max="16000"
															   step="10" class="form-control txtCal storage" data-type="storage"
															   data-price="6000" onmouseleave="inputCheckStorage(this)"
															   oninput="inputCheckStorageAlert(this)" style="">
														<input type="button" class="btn add_storage" style="float: left;margin-top: 5px;width: 80px;padding: 0px 0px;font-size: 10px;" value="Thêm disk">
													</td>
													<td style="vertical-align: top;padding-top: 8px;">
														<select class="form-control txtCal tier" style="width: 85px;height: 25px !important;font-size: 11px;">
															<option value="0">Tier-0</option>
															<option value="1" selected>Tier-1</option>
															<option value="2">Tier-2</option>
														</select>
														<label style="float: left;width: 80px;padding: 0px 0px;font-size: 11px;margin-top: 5px;">Warm</label>
													</td>
													<td style="vertical-align: top;padding-top: 8px;">
														<a href="javascript:void(0);" class="remove_tier">
															<span class="glyphicon glyphicon-remove"></span>
														</a>
													</td>
												</tr>
											</table>
										</td>
										<td>
											<input type="number" name="rows[0][ip]" value="1" min="1" max="100" maxlength="1" size="1" class="form-control txtCal" data-price="80000" onmouseleave="inputCheck(this)" oninput="inputCheckAlert(this)" style="" data-type="ip">
										</td>
										<td>
											<b style="font-size: 12px;">Unlimited</b>
										</td>
										<td>
											<input type="hidden" name="rows[0][price]" class="row_price"/>
											<label class='row_price'></label>
										</td>
										<td>
											<a href='javascript:void(0);' class='remove'><span
														class='glyphicon glyphicon-remove'></span>
											</a>
										</td>
									</tr>
								</table>
								<br>
								<div class="card-total">
									<p style="font-size: 12px;font-style: italic;">
										Nhập code giảm giá đơn hàng
										<input name="coupon_all" type="text" placeholder="Coupon Codes" style="padding-right: 10px;border: #17a84c solid 1px;border-radius: 4px;-moz-border-radius: 4px;-webkit-border-radius: 4px;min-width: 190px;display: inline-block;zoom: 1;text-align: right;margin: 0 8px;padding: 5px;" id="discount_code" oninput="getTotal()" onmouseleave="getTotal()">
									</p>
								</div>
								<div class="card-total">
									<p>Tổng <span class="subtotal_price">0</span><input type="hidden" name="subtotal_price" class="subtotal_price"/></p>
								</div>
								<div class="card-total">
									<p>Giảm giá <span class="discount_price">0</span><input type="hidden" name="discount_price" class="discount_price"/></p>
								</div>
								<div class="card-total">
									<p>Thành tiền <span class="total_price" style="color:red">0</span><input type="hidden" name="total_price" class="total_price"/></p>
								</div>
							</div>

							<div class="row">
								<div class="block blank cloud-payment-form">
									<div class="quote">
										<h2 class="cont-title">Thông tin khách hàng</h2>
										<div class="form form-register form-pay">
											<ul>
												<li>
													<input type="email" value="" id="baogia_email" name="baogia_email" placeholder="Địa chỉ Email" required>
												</li>
												<li>
													<input type="text" value="" id="baogia_phone" name="baogia_phone" placeholder="Số điện thoại" required>
												</li>
												<li>
													<input type="text" value="" id="baogia_name" name="baogia_name" placeholder="Họ và tên" required>
												</li>
												<li>
													<input type="text" value="" id="baogia_address" name="baogia_address" placeholder="Địa chỉ">
												</li>
											</ul>
											<div class="btn-wrap">
												<button class="btn btn-green btn-normal checkout">Đặt hàng</button>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					<script src="/code.min.js?ver=0.0.1"></script>
				</div>
			</div>
		</div>
		</form>
		{/if}

		<div class="container">
			<div class="row pt-50 pb-50">
				<div class="col-md-3">
					<img class="pt-20" src="{$WEB_ROOT}/images/cloudvpsssd/ssd-drive.png"/>
				</div>
				<div class="col-md-9 font-13">
					<h2 class="mt-10">Tốc độ vượt trội</h2>
					<p>CloudVPS SSD sử dụng 100% ổ SSD giúp tăng tốc độ truy xuất dữ liệu vượt trội hơn. </p>
					<ul class="p-0">
						<li><i class="fa fa-check txt-green-1eba5c"></i> Nhanh gấp 20 lần so với ổ cứng thường.</li>
						<li><i class="fa fa-check txt-green-1eba5c"></i> Giảm thiểu thời gian khởi động hệ điều hành.</li>
						<li><i class="fa fa-check txt-green-1eba5c"></i> Nạp chạy các phần mềm nhanh chóng.</li>
						<li><i class="fa fa-check txt-green-1eba5c"></i> Bảo vệ dữ liệu cực tốt, khả năng an toàn cao.</li>
					</ul>
				</div>
			</div>
		</div>
		
		<div class="container">
			<div class="row pt-50 pb-50">
				<div class="col-md-6 font-13">
					<h2 class="pt-20">Trường hợp sử dụng <span class="txt-green-1eba5c">CloudVPS SSD</span></h2>
					<ul class="p-0">
						<li><i class="fa fa-check txt-green-1eba5c"></i> Website hosting: tin tức, giải trí, thương mại điện tử.</li>
						<li><i class="fa fa-check txt-green-1eba5c"></i> Ứng dụng phần mềm như CRM, ERP,... những phần mềm phục vụ cho kinh doanh.</li>
						<li><i class="fa fa-check txt-green-1eba5c"></i> Doanh nghiệp: mail server, truy xuất dữ liệu.</li>
						<li><i class="fa fa-check txt-green-1eba5c"></i> Ứng dụng di động (Mobile App), game.</li>
					</ul>
				</div>
				<div class="col-md-6 text-right">
					<img class="pt-0" src="{$WEB_ROOT}/images/cloudvpsssd/cloud-vps-exa.jpg"/>
				</div>
			</div>
		</div>
		
		<div class="bg-light">
			<div class="container pb-40 pt-10">
				<div class="row">
					<h3 class="title text-uppercase text-center line-bottom-double-line-centered txt-green-1eba5c mb-5">ĐẶC TÍNH NỔI BẬT</h3>
					<p class="text-center mb-40 font-13">Các tính năng vượt trội của CloudVPS SSD tại EXA ảnh hưởng rất lớn đến sự lựa chọn của khách hàng.</p>
					<div class="col-md-3">
						<div class="text-center">
							<img class="width-115" src="{$WEB_ROOT}/images/cloudvpsssd/icon_hatang.png">
							<h4>Tính sẵn sàng cao</h4>
						</div>
						<p class="text-justify">Khách hàng sẽ được tận hưởng lợi ích của hệ thống tự động chuyển đổi giữa các máy chủ khi mà một trong các phân hệ quản trị ảo hóa gặp sự cố và không thể kết nối.</p>
					</div>
					<div class="col-md-3">
						<div class="text-center">
							<img class="width-115" src="{$WEB_ROOT}/images/cloudvpsssd/icon_dedang.png">
							<h4>Triển khai nhanh chóng</h4>
						</div>
						<p class="text-justify">Cài đặt các máy chủ ảo nhanh chóng và dễ dàng trên giao diện quản lý tài nguyên CloudVPS SSD.</p>
					</div>
					<div class="col-md-3">
						<div class="text-center">
							<img class="width-115" src="{$WEB_ROOT}/images/cloudvpsssd/icon_linhhoat.png">
							<h4>Khả năng mở rộng linh hoạt</h4>
						</div>
						<p class="text-justify">Khách hàng có thể mở rộng, nâng cấp tài nguyên như dung lượng RAM/CPU theo nhu cầu sử dụng.  </p>
					</div>
					<div class="col-md-3">
						<div class="text-center">
							<img class="width-115" src="{$WEB_ROOT}/images/cloudvpsssd/icon_dadang.png">
							<h4>Cơ chế nhân bản lưu trữ </h4>
						</div>
						<p class="text-justify">Hệ thống CloudVPS SSD của EXA nhân bản dữ liệu 03 lần đảm bảo an toàn dữ liệu gấp 3 lần thông thường.</p>
					</div>
				</div>
				
				
			</div>
			
			<div class="text-center p-30 bg-white">
				<div class="container">
					<div class="col-sm-6 text-right text-center-max768">
						<button class="btn btn-lg btn-danger res_cloud"><i class="fa fa-sign-in-alt"></i>ĐĂNG KÝ NGAY</button>
					</div>
					{*<div class="col-sm-6 text-left text-center-max768 pt-10 pl-0">*}
						{*<span class="font-36 txt-green-1eba5c"><b>chỉ 170k/tháng</b></span>*}
					{*</div>*}
				</div>
			</div>
		</div>

		<script type="text/javascript">
			$(document).ready(function() {
				$('#price-choice-hourly').click(function(){
					window.location.href = "http://truecloud.exa.vn/home/costs";
				});
				
				//--------------------------------------------------------------
				$(".res_cloud").click(function(){
					$('html, body').animate({
						scrollTop: $("#price_cloud").offset().top-110
					}, 600);
				});
			});
		</script>

		<!-- Price Block -->
		<div class="block dark cloud-intro hide">
			<div class="wrap">
				<div class="cont left clearfix">
					<div class="img-wrap"><img src="{$WEB_ROOT}/templates/{$template}/css/images/cloud-intro-01.png" alt="" border=""></div>
					<div class="quote">
						<h2 class="cont-title">trueCloud Server</h2>
						<p>Là dịch vụ cho thuê máy chủ trên nền điện toán đám mây với hiệu suất cực cao và chi phí hợp lý. EXA trueCloud hỗ trợ:</p>
						<ul class="list-check">
							<li>500.000 sự lựa chọn cấu hình khác nhau, phù hợp mọi nhu cầu</li>
							<li>Thanh toán hàng tháng, không ràng buộc thời hạn hợp đồng</li>
							<li>Uptime đến 99.9%, đảm bảo mọi hoạt động được xuyên suốt</li>
						</ul>
						<p>EXA cung cấp trải nghiệm miễn phí và cam kết làm hài lòng khách hàng.</p>
						<p class="btn btn-green">&nbsp;&nbsp;&nbsp;99.9% uptime&nbsp;&nbsp;&nbsp;</p>
						<!--p><br/><a href="#" class="btn btn-green">Get Started</a></p-->
					</div>
				</div>
			</div>
		</div>
		<!-- Cloud intro part 1 -->
		<!-- <div class="block blank cloud-intro">
			<div class="wrap">
				<div class="cont right clearfix">
					<div class="img-wrap"><img src="{$WEB_ROOT}/templates/{$template}/css/images/cloud-intro-02.png" alt="" border=""></div>
					<div class="quote">
						<h2 class="cont-title">trueCloud Storage</h2>
						<p>Là hạ tầng lưu trữ thế hệ mới nhất có hiệu suất cao và độ an toàn tuyệt đối:</p>
						<ul class="list-check">
							<li>Tự động nhân bản nhiều lần, tránh rủi ro mất dữ liệu</li>
							<li>Tốc độ cực cao với 100% ổ cứng SSD</li>
							<li>Hỗ trợ đến 16.000 GB cho mỗi máy chủ đám mây</li>
						</ul>
						<p class="btn btn-green">&nbsp;&nbsp;&nbsp;20x faster&nbsp;&nbsp;&nbsp;</p>
					</div>
				</div>
			</div>
		</div> -->
		<!-- Cloud intro part 2 -->	
	</div>
</div>