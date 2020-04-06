<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="{$charset}" />
<base href="https://{$smarty.server.HTTP_HOST}" />
<!-- "http://gltec.me" -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
{* <meta name="viewport" content="width=device-width, initial-scale=1"> *}
<meta name='viewport' content='width=1200'>
<meta name="geo.region" content="VN-SG" />
<meta name="geo.placename" content="Hồ Chí Minh" />
<meta name="geo.position" content="10.771071;106.65826" />
<meta name="ICBM" content="10.771071, 106.65826" />

{if $meta_keywords}
<meta name="keywords" content="{$meta_decription}"/>
{else}
<meta name="keywords" content="EXA Cloud, dịch vụ Cloud Server, Vietnam CDN, Backup, CloudSafe, CloudStorage "/>
{/if}

{if $meta_decription}
<meta name="description" content="{$meta_decription}"/>
{else}
<meta name="description" content="EXA, Điện toán đám mây (cloud computing). EXA cung cấp các ứng dụng công nghệ thông tin cho người dùng cá nhân và doanh nghiệp, Điện toán đám mây, Software as a Service – SaaS, Platform as a Service - PaaS, Infrastructure as a service – IaaS, Dịch vụ ứng dụng cao"/>
{/if}

{if $filename eq 'index'}
<title>Always up - EXA</title> 
{else}
<title>{if $kbarticle.title}{$kbarticle.title} - {/if}{if $pagetitle_open}{$pagetitle_open}{/if}{$pagetitle} - {$companyname}</title> 
{/if}

{if $meta_feature_img}
<meta name="og:site_name" content="EXA.VN"/>
<meta property="og:description" content="{$meta_decription}"/>
<meta property="og:type" content="article"/>
<meta property="og:title" content="{$pagetitle}"/>
<meta property="og:url" content=""/>
<meta property="og:image" content="{$meta_feature_img}"/>
{/if}
{if $filename eq 'index' or $filename eq 'truecloudssd'} 
	 {include file="$template/includes/head_home.tpl"} 
{else} {include file="$template/includes/head.tpl"} {/if}

<link rel="stylesheet" type="text/css" href="{$WEB_ROOT}/templates/{$template}/css/css-plugin-collections.css">
<link rel="stylesheet" type="text/css" href="{$WEB_ROOT}/templates/{$template}/css/preloader.css">

<link rel="stylesheet" type="text/css" href="{$WEB_ROOT}/templates/{$template}/css/utility-classes.css">
<link rel="stylesheet" type="text/css" href="{$WEB_ROOT}/templates/{$template}/css/custom-bootstrap-margin-padding.css">
<link rel="stylesheet" type="text/css" href="{$WEB_ROOT}/templates/{$template}/css/custom.css">

{*{if $systemurl} {/if} {$headoutput}*}

<!-- Global site tag (gtag.js) - Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=UA-148620021-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());
	gtag('config', 'UA-148620021-1');
</script>

<style>
.nav .open>a, .nav .open>a:focus, .nav .open>a:hover {
    background-color: transparent !important;
}

div[menuitemname=Actions] {
	display: none;
}

	.main-content {
		margin-top: 20px;
	}

</style>

<!-- Facebook Pixel Code -->
<script>
	!function(f,b,e,v,n,t,s)
	{
		if(f.fbq)return;n=f.fbq=function(){
			n.callMethod?
			n.callMethod.apply(n,arguments):n.queue.push(arguments)
		};
		if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
		n.queue=[];t=b.createElement(e);t.async=!0;
		t.src=v;s=b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t,s)
	}(window, document,'script',
	'https://connect.facebook.net/en_US/fbevents.js');
	fbq('init', '1916848555257610');
	fbq('track', 'PageView');
</script>
<noscript><img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=1916848555257610&ev=PageView&noscript=1"
/></noscript>
<!-- End Facebook Pixel Code -->

</head>

<body>
	<div id="preloader">
		<div id="spinner">
			<img class="ml-5" src="{$WEB_ROOT}/images/preloaders/4.gif" alt="">
		</div>
		<div id="disable-preloader" class="btn btn-default btn-sm">Tải trước</div> 
	</div>
	  

	{* <div class="support-hotline">
		<div class="div_title show"></div>
		<div class="div_content">
			<div class="c_title">Hotline:</div>
			<div class="c_content">
				<div class="c_phone">
					Tư vấn kinh doanh: <span>0938 298 278</span>
				</div>
				<div class="c_phone">
					Tổng đài hỗ trợ: <span>028 73 099 993</span>
				</div>
			</div>
		</div>
	</div>
	<a href="javascript:void(0)" class="go_top"></a> *}


	<div id="exa-wrapper">
		<div id="exa-container">
		<h1 style="position: absolute;z-index: 1;top: 0px; display:none">{if $filename eq 'index'}EXA - Always up{else} {if $kbarticle.title}{$kbarticle.title} -
	{/if}{$pagetitle} - {$companyname}{/if}</h1>
			<!--=== BEGIN: HEADER ===-->
			<div id="exa-header">
				<div class="wrapper">
					<div class="exa-logo" data-id="1">
						<a itemprop="url" href="{$WEB_ROOT}"><img src="{$WEB_ROOT}/templates/{$template}/images/logo_new_ia.png" alt=""></a>
					</div>
						<div class="exa_hotline">
						<div class="left">
          					<ul class="links" style="">
          						<li><span style="color: black;">Sales: </span><b>0938.298.278 <i style="color: black;">-</i> 0911.385.775</b></li>
          						<li><span style="color: black;">Support: </span><b>(028) 73 099 993</b></li>
          					</ul>
          				</div>
						</div>
						<div style="clear: both;"></div>

						<div class="clear"></div>
					<div class="clear"></div>
				</div>
				<div id="trueHeader">
					<div class="wrapper">
						<div class="container">
							<!-- Menu -->
							<div class="menu_main2">
								<div class="navbar yamm navbar-default">
									<div class="container">
										<div class="navbar-header">
											<div class="navbar-toggle .navbar-collapse .pull-right "
												data-toggle="collapse" data-target="#navbar-collapse-1"><!-- #navbar-collapse-1 -->
												<span>Menu</span>
												<button type="button">
													<i class="fa fa-bars"></i>
												</button>
											</div>
										</div>
										<div id="navbar-collapse-1" class="navbar-collapse collapse"><!-- collapse -->
											<nav>
												<ul class="nav navbar-nav navbar-right">
													<li class="dropdown-a">
														<a data-toggle="dropdown" class="dropdown-toggle" href="#">Cloud Server <b class="caret"></b></a>
														<ul class="dropdown-menu " role="">
															<li><a href="cloudnode.php">CloudNode</a></li>
															<li><a href="cloudvpsssd.php">CloudVPS SSD</a></li>
															<li><a href="http://truecloud.exa.vn/#intro">TrueCloud</a></li>
															<!--
															<li><a href="http://server.exa.vn">CloudNode</a></li>
															<li><a href="http://server.exa.vn">Dedicated</a></li>
															-->
														</ul>
													</li>
													<li class="dropdown"><a href="https://exa.vn/backup.php" class="">Backup</a></li>
													<li class="dropdown"><a href="https://exa.vn/exadrive.php" class="">Drive</a></li>
													<li class="dropdown">
														<a href="https://storage.com.vn/">S3 STORAGE</a>
													</li>
													<li class="dropdown">
														<a href="https://vietnamcdn.com/">CDN</a>
													</li>
													{*<li class="dropdown-a">
														<a href="cloud-hosting/">Cloud Hosting</a>
														<ul class="dropdown-menu" role="">*}
															{*<li><a href="cloud-hosting/">Cloud Hosting</a></li>*}
															{*<li><a href="domain/">Domain</a></li>*}
														{*</ul>
													</li>*}
													<li class="dropdown-a">
														<a data-toggle="dropdown" class="dropdown-toggle" href="#">EXA Friends <b class="caret"></b></a>
														<ul class="dropdown-menu " role="">
															<li><a href="http://fanshop.exa.vn">Fanshop</a></li>
															<li><a href="http://cloud8.hostingday.vn/workshop/">Workshop</a></li>
														</ul>
													</li>
														
													<!-- <li class="dropdown"><a href="announcements.php"
														class="">About Us</a></li> -->
													<li class="dropdown"><a href="tin-tuc" class="">NEWS</a></li>
													<!--<li class="dropdown"><a href="ho-tro/" class="">Support</a></li>-->
													{*<li class="dropdown"><a href="clientarea.php" class="">ACCOUNT</a></li>*}
												</ul>
											</nav>
										</div>
									</div>
								</div>
							</div>
							<!-- end menu -->
						</div>
					</div>
				</div>
			</div>


			{if $filename eq 'index' or $filename eq 'register-a-domain' or
			$filename eq 'bulk-domain-registration' or $filename eq
			'domain-transfer' or $filename eq 'whois-search' or $filename eq
			'domain-pricing' or $filename eq 'shared-hosting' or $filename eq
			'reseller-hosting' or $filename eq 'virtual-private-server' or
			$filename eq 'vps-hosting-windows' or $filename eq
			'dedicated-servers' or $filename eq 'ssl-certificates' or $filename
			eq 'email-hosting' or $filename eq 'microsoft-exchange' or $filename
			eq 'email-solutions' or $filename eq 'corporate-profile' or $filename
			eq 'awards' or $filename eq 'press-release' or $filename eq 'clients'
			or $filename eq 'globalsign-ssl-certificates' or $filename eq
			'contact' or $filename eq 'privacy' or $filename eq 'terms' or
			$filename eq 'careers' or $filename eq 'wordpress-hosting' or
			$filename eq 'vpn-hosting' or $filename eq 'web-design' or $filename
			eq 'website-templates' or $filename eq 'enterprise-solution' or
			$filename eq 'choose-plan' or $filename eq 'plesk-license' or
			$filename eq 'cpanel-license' or $filename eq 'direct-admin-license'
			or $filename eq 'solusvm-license' or $filename eq
			'cloudlinux-license' or $filename eq 'licenses' or $filename eq
			'windows-hosting' or $filename eq 'linux-hosting' or $filename eq
			'linux-vps' or $filename eq 'windows-vps' or $filename eq 'license'
			or $filename eq 'web4s' or $filename eq 'register_web4s' or $filename
			eq 'chinhsach' or $filename eq 'quydinh' or $filename eq 'aboutus' or
			$filename eq 'gioithieu' or $filename eq 'litespeed-license' or
			$filename eq 'faq-domain-vn' or $filename eq 'faq-domain-qt' or
			$filename eq 'domain-thutucdk' or $filename eq 'dr' or $filename eq
			'vps' or $filename eq 'ssl' or $filename eq 'payment' or $filename eq
			'faq-hosting' or $filename eq 'hosting' or $filename eq 'backup' or $filename eq 'exadrive' or $filename eq 'cdn' or
			$filename eq 'bankhai' or $filename eq 'server' or $filename eq
			'server-migration' or $filename eq 'daily' or $filename eq 'announcements'  } {else}
			<section id="main-menu">

				<nav id="nav" class="navbar navbar-default navbar-main" style="display: none"
					role="navigation">
					<div class="container">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse"
								data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>

						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav navbar-left">{include file="$template/includes/navbar.tpl" navbar=$secondaryNavbar}
							</ul>
							<ul class="nav navbar-nav navbar-left">{include file="$template/includes/navbar.tpl" navbar=$primaryNavbar}
							</ul>
						</div>
						<!-- /.navbar-collapse -->
					</div>
				</nav>

			</section>

			{/if}
			<!-- end check submenu-->

			{if $templatefile == 'homepage' or $templatefile == 'homepage'} {/if} {if $filename eq 'index' or $filename eq 'truecloudssd'  or $filename eq "cloudvpsssd" or $filename eq "cloudnode" or
			$filename eq 'register-a-domain' or $filename eq
			'bulk-domain-registration' or $filename eq 'domain-transfer' or
			$filename eq 'whois-search' or $filename eq 'domain-pricing' or
			$filename eq 'shared-hosting' or $filename eq 'reseller-hosting' or
			$filename eq 'virtual-private-server' or $filename eq
			'vps-hosting-windows' or $filename eq 'dedicated-servers' or
			$filename eq 'ssl-certificates' or $filename eq 'email-hosting' or
			$filename eq 'microsoft-exchange' or $filename eq 'email-solutions'
			or $filename eq 'corporate-profile' or $filename eq 'awards' or
			$filename eq 'press-release' or $filename eq 'clients' or $filename
			eq 'globalsign-ssl-certificates' or $filename eq 'contact' or
			$filename eq 'privacy' or $filename eq 'terms' or $filename eq
			'careers' or $filename eq 'wordpress-hosting' or $filename eq
			'vpn-hosting' or $filename eq 'web-design' or $filename eq
			'website-templates' or $filename eq 'enterprise-solution' or
			$filename eq 'choose-plan' or $filename eq 'plesk-license' or
			$filename eq 'cpanel-license' or $filename eq 'direct-admin-license'
			or $filename eq 'solusvm-license' or $filename eq
			'cloudlinux-license' or $filename eq 'licenses' or $filename eq
			'windows-hosting' or $filename eq 'linux-hosting' or $filename eq
			'linux-vps' or $filename eq 'windows-vps' or $filename eq 'license'
			or $filename eq 'web4s' or $filename eq 'register_web4s' or $filename
			eq 'chinhsach' or $filename eq 'quydinh' or $filename eq 'aboutus' or
			$filename eq 'gioithieu' or $filename eq 'litespeed-license' or
			$filename eq 'faq-domain-vn' or $filename eq 'faq-domain-qt' or
			$filename eq 'domain-thutucdk' or $filename eq 'dr' or $filename eq
			'vps' or $filename eq 'ssl' or $filename eq 'payment' or $filename eq
			'faq-hosting' or $filename eq 'hosting' or $filename eq 'backup' or $filename eq 'exadrive' or $filename eq 'cdn' or
			$filename eq 'bankhai' or $filename eq 'server' or $filename eq
			'server-migration' or $filename eq 'daily' } {else}
			<section id="main-body" class="container" style="{if $filename eq 'announcements'}margin-top: 130px;{/if}">

				<div class="row">
					{if !$inShoppingCart && ($primarySidebar->hasChildren() ||
					$secondarySidebar->hasChildren())} {if
					$primarySidebar->hasChildren()}
					<div class="col-md-9 pull-md-right">{include
						file="$template/includes/pageheader.tpl" title=$displayTitle
						desc=$tagline showbreadcrumb=true}</div>
					{/if}
					<div class="col-md-3 pull-md-left sidebar">{include
						file="$template/includes/sidebar.tpl" sidebar=$primarySidebar}</div>
					{/if}
					<!-- Container for main page display content -->
					<div
						class="{if !$inShoppingCart && ($primarySidebar->hasChildren() || $secondarySidebar->hasChildren())}col-md-9 pull-md-right{else}col-xs-12{/if} main-content">
						{if !$primarySidebar->hasChildren() && !$showingLoginPage &&
						!$inShoppingCart && $templatefile != 'homepage'} {include
						file="$template/includes/pageheader.tpl" title=$displayTitle
						desc=$tagline showbreadcrumb=true} {/if} {/if}

						<!--=== END: HEADER ===-->