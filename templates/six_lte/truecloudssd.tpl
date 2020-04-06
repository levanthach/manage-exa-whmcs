<link rel="stylesheet" type="text/css" href="{$WEB_ROOT}/templates/{$template}/css/css-plugin-collections.css">
<link rel="stylesheet" type="text/css" href="{$WEB_ROOT}/templates/{$template}/css/preloader.css">



<div class="main-cont detail detail-truecloud">
		<div class="block background-top" style="margin-top:65px;">
	<div class="wrap">
		<h1>CloudVPS SSD </h1>
		<p class="des-page">Phù hợp cho web hosting, mobile app và phần mềm</p>
	</div>
	<div class="bar">
		<nav class="menu-sub"></nav>
		<span class="arrow"></span>
	</div>
</div>

<!-- special -->
<div class="block home-cloud">
	<div class="wrap">
		<h2>BẢNG GIÁ</h2>
		<p class="des">
			Tăng/giảm cấu hình nhanh chỉ 2 phút
		</p>
		
		<!-- check -->
		<div class="choice clearfix">
			<div class="item">
				<input type="radio" checked="" name="price-choice" id="price-choice-monthly">
				<label for="price-choice-monthly">
					<i></i>
					<span class="text">Monthly</span>
				</label>
			</div>
			<div class="item">
				<input type="radio" name="price-choice" id="price-choice-hourly">
				<label for="price-choice-hourly">
					<i></i>
					<span class="text">Hourly</span>
				</label>
			</div>
		</div>
		
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
							<li><b>32 Core</b> Processor</li>
							<li><b>128 GB</b> Memory</li>
							<li><b>16.000 GB</b> Cloud Storage <br>(3x replication, Tier 2-SSD)</li>
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
		<div class="owl-carousel-5col" data-dots="false">
			{foreach from=$products key=i item=product}
			<div class="item">
				<div class="pricing-table bg-white border-1px text-center">
					<div class="pt-0 pb-40">
						<div class="bg-g{($i+2)} position-relative overflow-hidden pt-15 pb-20">
							<h2 class="package-type text-uppercase text-white font-24 mb-0">{if $i==0}(**) {/if}{$product['name']}</h2>
							<div class="package-icon"><i class="fa fa-database"></i></div>
							{if $i==2}
							<div class="pricing-ribbon">
								<h5>Bán chạy</h5>
							</div>
							{/if}
						</div>
						<h1 class="price font-32 font-weight-600 text-theme-colored bg-white line-height-1 font-opensans m-0 pt-15">
							{$product['pricing']['VND']['monthly']|number_format:0:".":"."}
							<span class="font-18 font-weight-400 txt-green-1eba5c">VNĐ</span>
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
							<span class="font-18 font-weight-400 txt-green-1eba5c">&nbsp;</span>
						</h1>
						<ul class="table-list pt-0 pl-0">
							<li class="hidden"></li>
							<li><b>32 Core</b> Processor</li>
							<li><b>128 GB</b> Memory</li>
							<li><b>16.000 GB</b> Cloud Storage <br>(3x replication, Tier 2-SSD)</li>
							<li><b>1 IP</b> Address</li>
							<li><b>Unlimited</b> Traffic</li>
							<li>&nbsp;</li>
						</ul>
						<a class="btn btn-danger text-uppercase mt-10" href="http://checkout.exa.vn/home/checkout5">Đăng ký</a><br>
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
		
        <div class="note-price">
        	<b>Ghi chú</b>
        	<span class="des-sub">
				(*) Thông số ước lượng:
            </span>
            <span class="des-sub">
				(**) Không áp dung nâng cấp từng phần đối với gói CSB-1011, sẽ nâng cấp lên theo gói. 
            </span>
            <span class="des-sub">
				(***) Giá trên chưa bao gồm thuế 10%.
            </span>
            <span class="des-sub">
				(****) Hợp đồng 12 tháng, thanh toán 3 tháng/ lần.
            </span>
			<span class="des-sub">
				(*****) <span class="text-red"><b>Bàn giao dịch vụ sau 30 phút kể từ thời điểm thanh toán</b></span>.
            </span>
        </div>
        <div class="clearfix"></div>
        
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		$('#price-choice-hourly').click(function(){
				window.location.href = "http://truecloud.exa.vn/home/costs";
			});
		});
</script>

<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/javascript/jquery-2.2.4.min.js"></script> 
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/jquery-ui.min.js"></script> 

<script src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/jquery-plugin-collection.js"></script>
<script src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/js/jquery.themepunch.tools.min.js"></script>
<script src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>

<script src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/custom.js"></script>
<!-- SLIDER REVOLUTION 5.0 EXTENSIONS
(Load Extensions only on Local File Systems !
The following part can be removed on Server for On Demand Loading) -->
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/js/extensions/revolution.extension.actions.min.js"></script>
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/js/extensions/revolution.extension.carousel.min.js"></script>
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/js/extensions/revolution.extension.migration.min.js"></script>
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/js/extensions/revolution.extension.navigation.min.js"></script>
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/js/extensions/revolution.extension.parallax.min.js"></script>
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/js/extensions/revolution.extension.video.min.js"></script>


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
		<!-- Cloud intro part 2 -->	</div>
		
         </div>
         
         