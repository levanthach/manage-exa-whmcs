{if $filename eq 'index' or $filename eq 'register-a-domain' or $filename eq 'bulk-domain-registration' or $filename eq 'domain-transfer' or $filename eq 'whois-search' or $filename eq 'domain-pricing'  or $filename eq 'shared-hosting' or $filename eq 'reseller-hosting' or $filename eq 'virtual-private-server' or $filename eq 'vps-hosting-windows'   or $filename eq 'dedicated-servers'  or $filename eq 'ssl-certificates' or $filename eq 'email-hosting' or $filename eq 'microsoft-exchange' or $filename eq 'email-solutions' or $filename eq 'corporate-profile' or $filename eq 'awards' or $filename eq 'press-release' or $filename eq 'clients'  or $filename eq 'globalsign-ssl-certificates' or $filename eq 'contact' or $filename eq 'privacy' or $filename eq 'terms' or $filename eq 'careers' or $filename eq 'wordpress-hosting' or $filename eq 'vpn-hosting'  or $filename eq 'web-design' or $filename eq 'website-templates' or $filename eq 'enterprise-solution'  or $filename eq 'choose-plan' or $filename eq 'plesk-license'  or $filename eq 'cpanel-license'   or $filename eq 'direct-admin-license'  or $filename eq 'solusvm-license' or $filename eq 'cloudlinux-license'  or $filename eq 'licenses' or $filename eq 'windows-hosting'  or $filename eq 'linux-hosting' or $filename eq 'linux-vps' or $filename eq 'windows-vps' or $filename eq 'license' or $filename eq 'web4s' or $filename eq 'register_web4s'  or $filename eq 'chinhsach'  or $filename eq 'quydinh' or $filename eq 'aboutus' or $filename eq 'gioithieu'  or $filename eq 'litespeed-license'  or $filename eq 'faq-domain-vn'  or $filename eq 'faq-domain-qt'  or $filename eq 'domain-thutucdk' or $filename eq 'dr' or $filename eq 'vps' or $filename eq 'ssl' or $filename eq 'payment'  or $filename eq 'faq-hosting' or $filename eq 'hosting' or $filename eq 'backup' or $filename eq 'bankhai' or $filename eq 'server'  or $filename eq 'server-migration' or $filename eq 'daily'  }

{else}

    </div><!-- /.main-content -->
        {if !$inShoppingCart && $secondarySidebar->hasChildren()}
            <div class="col-md-3 pull-md-left sidebar">
                {include file="$template/includes/sidebar.tpl" sidebar=$secondarySidebar}
            </div>
        {/if}
    </div>
    <div class="clearfix"></div>
</section>
{/if}


<!--=== BEGIN: FOOTER ===-->
            <div class="section" id="section7">
                <div class="fs_wrapper">
                    <div id="exa-footer">
                        <div class="group2 iv"><img src="{$WEB_ROOT}/images/img-fanshop.jpg"/></div>
                        <div class="exa-fTop ">
                            <div class="wrapper">
                                <div class="exa-company contact_footer col-md-6 col-sm-12 mt-15 mb-15">
                                    <!-- <div class="exa_name"><a href="./"><img src="{$WEB_ROOT}/images/logo-footer.png" /></a></div> -->
                                    <div class="exa_title">THÔNG TIN LIÊN HỆ</div>
                                    <div class="exa_before fa-info"><b>CÔNG TY TRÁCH NHIỆM HỮU HẠN EXA</b></div>
                                    <div class="exa_before fa-home">Up Co-working Space - 268 Lý Thường Kiệt, phường 14, quận 10, TP. HCM</div>
                                    
                                    <div></div>
                                    <div class="exa_before inline-block fa-envelope">0938.298.278 - 0911.385.775</div>
                                    <div class="exa_before inline-block fa-globe"><a href="#">www.exa.vn</a></div><br>
                                    <div class="exa_before inline-block fa-check">GPKD Số: 0311410714</div>
                                    <div class="exa_before inline-block fa-check">Ngày cấp: 13/12/2011</div>
                                    <div class="exa_before inline-block fa-check">Nơi cấp: TP. HCM</div>
                                </div>
                                <div class="exa_node col-md-2 col-sm-12 mt-15 mb-15">
                                    <div class="exa_title">Dịch vụ</div>
                                    <div class="exa_link">
                                        <ul class="p-0">
											<!--
                                            <li>
                                                <a href="http://server.exa.vn">Cloud Server</a>
                                            </li>
											-->
                                            <li>
                                                <a href="https://exa.vn/backup.php">Backup</a>
                                            </li>
                                            <li>
                                                <a href="https://vietnamcdn.com">CDN</a>
                                            </li>
                                            <li>
                                                <a href="https://exa.vn/cloudvpsssd.php">Cloud VPS SSD</a>
                                        </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="exa_node col-md-4 col-sm-12 mt-15 mb-15">
                                    <div class="exa_title">Kết nối với EXA</div>
                                    <div class="exa_social">
                                        <ul class="p-0">
                                            <li>
                                                <a href="https://www.facebook.com/exa.alwaysup/?fref=ts" target="top"><i class="fa fa-facebook-f"></i></a>
                                            </li>
                                            <li>
                                                <a href="https://plus.google.com/+EXACloud" target="top"><i class="fa fa-google"></i></a>
                                            </li>
											<li>
                                                <a><i class="fa fa-youtube-play"></i></a> 
                                            </li>
                                        </ul>
                                        <a href="http://online.gov.vn/HomePage/CustomWebsiteDisplay.aspx?DocId=46300">
                                            <img src="{$WEB_ROOT}/images/bocongthuong.png" style="width: 50%;"/>
                                        </a>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>
                        </div>
                        <div class="exa-fbottom">
                            <div class="wrapper">
                                <div class="copyright">
                                    <div>Sử dụng nội dung ở trang này và dịch vụ tại <span itemprop="name">EXA</span> có nghĩa là bạn đồng ý với <a href="{$WEB_ROOT}/templates/{$template}/file/THOATHUANSUDUNGDICHVU.doc" download>Thỏa thuận sử dụng</a> và <a href="{$WEB_ROOT}/templates/{$template}/file/QUYDINHBAOMAT.doc" download>Chính sách bảo mật của chúng tôi</a></div>
                                    <span itemprop="author" itemscope itemtype="http://schema.org/Person"><div itemprop="name">Copyright© EXA Company. All right Reserved.</div></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--=== END: FOOTER ===-->
  
 </div>
 </div>
  

<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/javascript/jquery.js"></script> 
   
    <!-- ######### JS FILES ######### --> 
<!-- get jQuery from the google apis --> 

{if $filename eq 'register-a-domain' or $filename eq 'bulk-domain-registration' or $filename eq 'domain-transfer' or $filename eq 'whois-search' or $filename eq 'domain-pricing'  or $filename eq 'shared-hosting' or $filename eq 'reseller-hosting' or $filename eq 'virtual-private-server' or $filename eq 'vps-hosting-windows'   or $filename eq 'dedicated-servers'  or $filename eq 'ssl-certificates' or $filename eq 'email-hosting' or $filename eq 'microsoft-exchange' or $filename eq 'email-solutions' or $filename eq 'corporate-profile' or $filename eq 'awards' or $filename eq 'press-release' or $filename eq 'clients'  or $filename eq 'globalsign-ssl-certificates' or $filename eq 'contact' or $filename eq 'privacy' or $filename eq 'terms' or $filename eq 'careers' or $filename eq 'wordpress-hosting' or $filename eq 'vpn-hosting'  or $filename eq 'web-design' or $filename eq 'website-templates' or $filename eq 'enterprise-solution'  or $filename eq 'choose-plan' or $filename eq 'plesk-license'  or $filename eq 'cpanel-license'   or $filename eq 'direct-admin-license'  or $filename eq 'solusvm-license' or $filename eq 'cloudlinux-license'  or $filename eq 'licenses' or $filename eq 'windows-hosting'  or $filename eq 'linux-hosting' or $filename eq 'linux-vps' or $filename eq 'windows-vps' or $filename eq 'license' or $filename eq 'web4s' or $filename eq 'register_web4s'  or $filename eq 'chinhsach'  or $filename eq 'quydinh' or $filename eq 'aboutus' or $filename eq 'gioithieu'  or $filename eq 'litespeed-license'  or $filename eq 'faq-domain-vn'  or $filename eq 'faq-domain-qt'  or $filename eq 'domain-thutucdk' or $filename eq 'dr' or $filename eq 'vps' or $filename eq 'ssl' or $filename eq 'payment'  or $filename eq 'faq-hosting' or $filename eq 'hosting' or $filename eq 'backup' or $filename eq 'bankhai' or $filename eq 'server'  or $filename eq 'server-migration'}



{*<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/chatform.js"></script>*}



<!-- SLIDER REVOLUTION 4.x SCRIPTS  --> 
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/javascript/jquery.themepunch.tools.min.js"></script> 
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/javascript/jquery.themepunch.revolution.min.js"></script> 
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/javascript/revolutionslider/custom1.js"></script> 

<!-- mega menu --> 
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/bootstrap/js/bootstrap.min.js"></script>
<script src="{$WEB_ROOT}/templates/{$template}/javascript/mainmenu/bootstrap.min.js"></script> 
<script src="{$WEB_ROOT}/templates/{$template}/javascript/mainmenu/customeUI.js"></script> 



<!-- tabs --> 
<script src="{$WEB_ROOT}/templates/{$template}/javascript/tabs/responsive-tabs.min.js" type="text/javascript"></script> 

<!-- accordion --> 
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/javascript/accordion/custom.js"></script> 



{if $filename eq 'index'}
<!-- Flexslider --> 
<script src="{$WEB_ROOT}/templates/{$template}/javascript/flexslider/jquery.flexslider.js"></script>
<script src="{$WEB_ROOT}/templates/{$template}/javascript/flexslider/custom.js"></script>
{/if}

{else}

{*<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/chatform_new.js"></script>*}

    <!-- Load Facebook SDK for JavaScript -->
    <div id="fb-root"></div>
    <script>
        window.fbAsyncInit = function() {
            FB.init({
                app_id: 390301495077229,
                xfbml            : true,
                version          : 'v3.2'
            });
        };

        (function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>

    <!-- Your customer chat code -->
    <div class="fb-customerchat"
         attribution=setup_tool
         page_id="234371436649833" app_id="390301495077229">
    </div>

{if $filename eq 'index'}
	<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/style.js"></script>
{/if}


<script type="text/javascript">
    var csrfToken = '{$token}';
</script>
<script src="{$WEB_ROOT}/templates/{$template}/js/whmcs.js"></script>


{/if}

<script src="{$BASE_PATH_JS}/bootstrap.min.js"></script>
<script src="{$BASE_PATH_JS}/jquery-ui.min.js"></script>
<!-- sticky menu --> 

<script type="text/javascript" src="https://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>

<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/javascript/mainmenu/modernizr.custom.75180.js"></script> 
<script>
 
	$("p:contains('Powered by')").remove();
	
	//$("#addon-menu, #server-menu").click(function(){
	//
	//	return false;
	//});
	
	
	 
</script>
{$footeroutput}

<!---------SCRIPT KH--------->
<script>
	$( document ).ready(function() {
		if($('#clients_type select').val()=="Cá nhân")
			$('#clients_company').empty();
	});

	var height = $('#clients_company').height();
	var type = 'Doanh nghiệp';
	var comtax = $('#clients_company').html();
	$('#clients_type select').change(function(){
		if($(this).val()!= type){
			$('#clients_company').animate(
				{
					height: '0px', opacity: 0
				}, "slow"
			);
			$('#clients_company').empty();
		}
		else{
			$('#clients_company').animate(
				{
					height: height, opacity: 1
				}, "slow"
			);
			$('#clients_company').html(comtax);
		}
		
	});
	
	if (typeof loaitk !== 'undefined') {
		$('#clients_company').empty();
	}
</script>

<!---------END SCRIPT KH--------->

<!---------END SCRIPT KATEGORI--------->
<script>
	$(document).ready(function(){
		$("#dropDownMenuKategorie").change(function(){
			if($("#dropDownMenuKategorie option:selected").attr("data-base")=="hello"){
				window.location.assign($("#dropDownMenuKategorie option:selected").val());
			}
		});
	});
</script>

<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/javascript/jquery-2.2.4.min.js"></script> 
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/jquery-ui.min.js"></script> 

<script src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/jquery-plugin-collection.js"></script>
<script src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/js/jquery.themepunch.tools.min.js"></script>
<script src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/js/jquery.themepunch.revolution.min.js"></script>

<script src="{$WEB_ROOT}/templates/{$template}/js/revolution-slider/custom.js?ver=1.0"></script>
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
<script type="text/javascript" src="{$WEB_ROOT}/templates/{$template}/js/jquery.homeycombs.js"></script>



</body>
</html>
