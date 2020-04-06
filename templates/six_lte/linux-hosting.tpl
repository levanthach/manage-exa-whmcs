<!-- <div class="tp-banner-container">
   <div class="tp-banner2" >
     <ul>
       
      <li data-transition="fade" data-slotamount="1" data-masterspeed="1500" data-thumb="{$WEB_ROOT}/templates/{$template}/images/sliders/slider1_thumb.jpg" data-delay="13000"  data-saveperformance="off"  data-title="Our Workplace"> 
          -->
<!-- MAIN IMAGE --> 
<!-- <img src="{$WEB_ROOT}/templates/{$template}/images/slide2_bg.jpg"  alt="kenburns1"  data-bgposition="left center" data-kenburns="on" data-duration="14000" data-ease="Linear.easeNone" data-bgfit="100" data-bgfitend="130" data-bgpositionend="right center"> 
   --><!-- LAYERS -->
<!-- <div class="tp-caption lfl"
   data-x="-50"
   data-y="40"
   data-speed="800"
   data-start="1000"
   data-easing="Back.easeOut"
   data-endspeed="300"
   data-captionhidden="on"
   style="z-index: 5"><img src="{$WEB_ROOT}/templates/{$template}/images/web_hosting_slideimg1.png" alt=""> </div>
       <div class="tp-caption offerbadge two sft"
   data-x="400"
   data-hoffset="0"
   data-voffset="-10"
   data-y="130"
   data-speed="800"
   data-start="1300"
   data-easing="Power4.easeOut"
   data-endspeed="300"
   data-endeasing="Power1.easeIn"
   data-captionhidden="off"
   style="z-index: 6">Up to <br/>
         <span class="price two">50%</span><br/>
         /Offer</div>
       <div class="tp-caption offerbadge sfb"
   data-x="500"
   data-hoffset="0"
   data-voffset="-10"
   data-y="130"
   data-speed="800"
   data-start="1600"
   data-easing="Power4.easeOut"
   data-endspeed="300"
   data-endeasing="Power1.easeIn"
   data-captionhidden="off"
   style="z-index: 6">Chỉ với <br/>
         <span class="price">540.000Đ</span><br/>
         /tháng</div>
       <div class="tp-caption text9 randomrotate customout tp-resizeme"
   data-x="750"
   data-y="68"
   data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
   data-speed="500"
   data-start="2200"
   data-easing="Power3.easeInOut"
   data-splitin="chars"
   data-splitout="chars"
   data-elementdelay="0.08"
   data-endelementdelay="0.08"
   data-endspeed="300"
   style="z-index: 7; max-width: auto; max-height: auto; white-space: nowrap;">Cloud Hosting</div>
       <div class="tp-caption slide_list sfb"
   data-x="750"
   data-hoffset="0"
   data-voffset="-10"
   data-y="120"
   data-speed="800"
   data-start="2500"
   data-easing="Power4.easeOut"
   data-endspeed="300"
   data-endeasing="Power1.easeIn"
   data-captionhidden="off"
   style="z-index: 6"><i class="fa fa-check"></i> 100% uptime</div>
       <div class="tp-caption slide_list sfb"
   data-x="750"
   data-hoffset="0"
   data-voffset="-10"
   data-y="150"
   data-speed="800"
   data-start="2800"
   data-easing="Power4.easeOut"
   data-endspeed="300"
   data-endeasing="Power1.easeIn"
   data-captionhidden="off"
   style="z-index: 6"><i class="fa fa-check"></i> GIẢM 15% khi thanh toán 6 tháng</div>
       <div class="tp-caption slide_list sfb"
   data-x="750"
   data-hoffset="0"
   data-voffset="-10"
   data-y="180"
   data-speed="800"
   data-start="3100"
   data-easing="Power4.easeOut"
   data-endspeed="300"
   data-endeasing="Power1.easeIn"
   data-captionhidden="off"
   style="z-index: 6"><i class="fa fa-check"></i> Hỗ trợ 24/7</div>
       <div class="tp-caption slide_list sfb"
   data-x="750"
   data-hoffset="0"
   data-voffset="-10"
   data-y="210"
   data-speed="800"
   data-start="3300"
   data-easing="Power4.easeOut"
   data-endspeed="300"
   data-endeasing="Power1.easeIn"
   data-captionhidden="off"
   style="z-index: 6"><i class="fa fa-check"></i> Dùng thử trước khi mua</div>
      
     </li>
     
   
     
   </ul>
   <div class="tp-bannertimer"></div>
   </div>
   </div>-->
<!--end pagenation-->
<div class="clearfix"></div>
<div class="section_holder13">
   <div class="container">
      <p class="" style="text-align:center">"Cloud hosting do EXA cung cấp phù hợp cho tất cả các yêu cầu lưu trữ website với tốc độ truy xuất nhanh, ổn định, an toàn dữ liệu. Cloud Hosting có khả năng mở rộng linh hoạt và không làm ảnh hưởng đến quá trình hoạt động của website. 
         Hãy lựa chọn ngay gói dịch vụ Cloud hosting phù hợp với website của Quý khách.
         "
      </p>
   </div>
</div>
<div class="clearfix"></div>
<div class="section_holder2 two">
   <div class="container">
		
      <br>      
	  {foreach from=$products key=i item=product}
      <div class="one_fourth {if $i==4} last {/if}">
         <div class="arrow_up"></div>
         <div class="clearfix"></div>
         <div class="price_table">
            <div class="plan_info">
               <h2 class="title">{$product['name']}</h2>
			   {$product['description']}
			   {if 1==2}
               <div class="price"><sup>VND</sup>59.000 <i>/ Tháng</i></div>
               <ul class="plan_features two">
                  <li>600MB Dung lượng</li>
                  <li>20GB Băng thông</li>
                  <li>01 Addon Domain</li>
                  <li>01 Cơ sở dữ liệu</li>
                  <li>10 Mailbox</li>
				  {/if}
                  <li>
                     <p class="padd_bot1">Lựa chọn gói:</p>
                     <div class="dropbox_holder3">
                        <label class="custom-select3">
                           <select id="duration-7" class="select_cloud_hosting">
                              <!-- <option value="monthly">1 Month &nbsp; vnđ 49.000/ Month</option>
                                 <option value="quarterly">3 Month &nbsp; vnđ 147.000/ Month</option>
                                 <option value="semi-annually">6 Months &nbsp; vnđ 294.000/ Month</option> -->
                              <option value="annually" selected>12 tháng &nbsp;{$product['pricing']['VND']['annually']|number_format:0:".":"."} Đ/tháng</option>
                              <option value="biennially">24 tháng &nbsp;{$product['pricing']['VND']['biennially']|number_format:0:".":"."} Đ/tháng</option>
                           </select>
                        </label>
                     </div>
                  </li>
               </ul>
               <a  onclick="submitpage_pack({$product['pid']},'/cart.php?a=add&pid={$product["pid"]}'); return false;" class="singup_but" href="#">Đặt mua</a> 
            </div>
         </div>
         <!--end item-->
         <div class="arrow_down"></div>
      </div>
      <!--end item-->
	  {/foreach}
	  {if 1==2}
      <div class="one_fourth">
         <div class="arrow_up"></div>
         <div class="clearfix"></div>
         <div class="price_table">
            <div class="plan_info">
               <h2 class="title">Enhanced</h2>
               <div class="price"><sup>VND</sup>89.000 <i>/ Tháng</i></div>
               <ul class="plan_features two">
                  <li>1000 MB Dung lượng</li>
                  <li>50GB Băng thông</li>
                  <li>02 Addon Domain</li>
                  <li>02 Cơ sở dữ liệu</li>
                  <li>10 Mailbox</li>
                  <li>
                     <p class="padd_bot1">Lựa chọn gói:</p>
                     <div class="dropbox_holder3">
                        <label class="custom-select3">
                           <select id="duration-9" class="select_cloud_hosting">
                              <!-- <option value="monthly">1 Month &nbsp; vnđ 79.000/ Month</option>
                                 <option value="quarterly">3 Month &nbsp; vnđ 237.000/ Month</option>
                                 <option value="semi-annually">6 Months &nbsp; vnđ 474.000/ Month</option> --> 
                              <option value="annually" selected>12 tháng &nbsp;1.068.000 Đ/tháng</option>
                              <option value="biennially">24 tháng &nbsp;2.136.000 Đ/tháng</option>
                           </select>
                        </label>
                     </div>
                  </li>
               </ul>
               <a class="singup_but" href="javascript:void(0);" onclick="submitpage_pack(12,'/cart.php?a=add&pid=12'); return false;" >Đặt mua</a> 
            </div>
         </div>
         <!--end item-->
         <div class="arrow_down"></div>
      </div>
      <!--end item-->
      <div class="one_fourth">
         <div class="arrow_up"></div>
         <div class="clearfix"></div>
         <div class="price_table">
            <div class="plan_info">
               <h2 class="title">Premium</h2>
               <div class="price"><sup>VND</sup>120.000 <i>/ Tháng</i></div>
               <ul class="plan_features two">
                  <li>2000MB Dung lượng</li>
                  <li>Unlimited Băng thông</li>
                  <li>04 Addon Domain</li>
                  <li>04 Cơ sở dữ liệu</li>
                  <li>20 Mailbox</li>
                  <li>
                     <p class="padd_bot1">Lựa chọn gói:</p>
                     <div class="dropbox_holder3">
                        <label class="custom-select3">
                           <select id="duration-8" class="select_cloud_hosting">
                              <!-- <option value="monthly">1 Month &nbsp; vnđ 149.000/ Month</option>
                                 <option value="quarterly">3 Month &nbsp; vnđ 447.000/ Month</option>
                                 <option value="semi-annually">6 Months &nbsp; vnđ 894.000/ Month</option> -->
                              <option value="annually" selected>12 tháng &nbsp;1.440.000 Đ/tháng</option>
                              <option value="biennially">24 tháng &nbsp;2.880.000 Đ/tháng</option>
                           </select>
                        </label>
                     </div>
                  </li>
               </ul>
               <a class="singup_but" href="javascript:void(0);"  onclick="submitpage_pack(13,'/cart.php?a=add&pid=13'); return false;" >Đặt mua</a> 
            </div>
         </div>
         <!--end item-->
         <div class="arrow_down"></div>
      </div>
      <!--end item-->
      <div class="one_fourth">
         <div class="arrow_up"></div>
         <div class="clearfix"></div>
         <div class="price_table">
            <div class="plan_info">
               <h2 class="title">E- commerce</h2>
               <div class="price"><sup>VND</sup>230.000 <i>/ Tháng</i></div>
               <ul class="plan_features two">
                  <li>4000MB Dung lượng</li>
                  <li>Unlimited Băng thông</li>
                  <li>08  Addon Domain</li>
                  <li>08 Cơ sở dữ liệu</li>
                  <li>40 Mailbox</li>
                  <li>
                     <p class="padd_bot1">Lựa chọn gói:</p>
                     <div class="dropbox_holder3">
                        <label class="custom-select3">
                           <select id="duration-10" class="select_cloud_hosting">
                              <!-- <option value="monthly">1 Month &nbsp; vnđ 279.000/ Month</option>
                                 <option value="quarterly">3 Month &nbsp; vnđ 837.000/ Month</option>
                                 <option value="semi-annually">6 Months &nbsp; vnđ 1.674.000/ Month</option> -->
                              <option value="annually" selected>12 tháng &nbsp; vnđ 2.760.000 Đ/tháng</option>
                              <option value="biennially">24 tháng &nbsp; vnđ 5.520.000 Đ/tháng</option>
                           </select>
                        </label>
                     </div>
                  </li>
               </ul>
               <a class="singup_but" href="javascript:void(0);" onclick="submitpage_pack(14,'/cart.php?a=add&pid=14'); return false;">Đặt mua</a> 
            </div>
         </div>
         <div class="arrow_down"></div>
      </div>
      <div class="one_fourth last">
         <div class="arrow_up"></div>
         <div class="clearfix"></div>
         <div class="price_table">
            <div class="plan_info">
               <h2 class="title">Professionnal</h2>
               <div class="price"><sup>VND</sup>359.000 <i>/ Tháng</i></div>
               <ul class="plan_features two">
                  <li>6000MB Dung lượng</li>
                  <li>Unlimited Băng thông</li>
                  <li>04 Addon Domain</li>
                  <li>16 Cơ sở dữ liệu</li>
                  <li>60 Mailbox</li>
                  <li>
                     <p class="padd_bot1">Lựa chọn gói:</p>
                     <div class="dropbox_holder3">
                        <label class="custom-select3">
                           <select id="duration-16" class="select_cloud_hosting">
                              <!--<option value="monthly">1 Month &nbsp; vnđ 499.000/ Month</option>
                                 <option value="quarterly">3 Month &nbsp; vnđ 1.479.000/ Month</option>
                                 <option value="semi-annually">6 Months &nbsp; vnđ 2.994.000/ Month</option>  -->
                              <option value="annually" selected>12 tháng &nbsp;4.308.000 Đ/tháng</option>
                              <option value="biennially">24 tháng &nbsp;8.616.000 Đ/tháng</option>
                           </select>
                        </label>
                     </div>
                  </li>
               </ul>
               <a class="singup_but" href="javascript:void(0);" onclick="submitpage_pack(15,'/cart.php?a=add&pid=15'); return false;" >Đặt mua</a> 
            </div>
         </div>
         <!--end item-->
         <div class="arrow_down"></div>
      </div>
      <!--end item-->
	  
	  {/if}
   </div>
</div>
<!--<div class="section_holder45">
   <div class="container">
     <h5 class="lt_title_medium white">Đối tác</h5>
     <div class="section_title_line_full two"></div>
     <div class="clearfix"></div>
     <section class="slider">
       <div class="flexslider style4 carousel">
         <ul class="slides">
       
        <li>
             <div class="clint_logo">
               <div class="hover_line"></div>
               <a href="http://www.vnnic.vn/" target="_blank"><img src="{$WEB_ROOT}/templates/{$template}/images/l12.jpg" alt=""/> </a></div>
           </li>
           
               <li>
             <div class="clint_logo">
               <div class="hover_line"></div>
              <a href="http://www.odin.com/" target="_blank"> <img src="{$WEB_ROOT}/templates/{$template}/images/l22.jpg" alt=""/> </a></div>
           </li>
           
           
               <li>
             <div class="clint_logo">
               <div class="hover_line"></div>
              <a href="http://fast.com.vn/" target="_blank"> <img src="{$WEB_ROOT}/templates/{$template}/images/l32.jpg" alt=""/></a> </div>
           </li>
           
               <li>
             <div class="clint_logo">
               <div class="hover_line"></div>
              <a href="http://www.enom.com/" target="_blank"> <img src="{$WEB_ROOT}/templates/{$template}/images/l42.jpg" alt=""/> </a></div>
           </li>
           
               <li>
             <div class="clint_logo">
               <div class="hover_line"></div>
               <a href="http://tavimart.com/" target="_blank"><img src="{$WEB_ROOT}/templates/{$template}/images/l52.jpg" alt=""/></a> </div>
           </li>
         </ul>
       </div>
     </section>
   </div>
   </div> --> <!--end section-->
{literal}
<script type="text/javascript">
   $('.checkbox').click(function(e) {
   	$('.checkbox').attr("checked",false);
             var val = $(this).attr("id");
   	
   	$('.host-services').hide();
   	if(val == 1)
   	{
   		$("#us").show(); $("#ic").hide(); 
   		$("#des-us").show();
   		$('.block-text1').show();	$('.block-text2').hide();
   	}
   	else
   	{$("#us").hide(); 
   		$("#ic").show(); 
   		$("#des-us").hide();	$('.block-text2').show();	$('.block-text1').hide();
   	}
   	$("#location-"+val).show();$(this).attr("checked",true);
         });
   
   
       function submitpage_pack(id, linkp)
      {
   	   var cycle = $("#duration-"+id).val();
   	   location.href= linkp+"&billingcycle="+cycle;
   	  //&billingcycle=biennially 
      }
   
   
   $(".specification").click(function(e) {
             var id = $(this).children().attr("attrid");
   
   	$('.feature').hide();
   	$("#feature-"+id).show();
         });
   
</script>
{/literal}