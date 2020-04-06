 <div class="header_medium two"> </div>
 
  <div class="section_holder18">
    <div class="container">
      
      <div class="pagenation">&nbsp;<a href="#">Trang chủ</a> <i>/</i> Liên hệ</div>
    </div>
  </div>
  <!--end pagenation-->
  <div class="clearfix"></div>

  <div class="section_holder30">
    <div class="container">	
    
      
 <div class="one_half">
      
  GLTEC là nhà cung cấp máy chủ uy tín và chất lượng nhất Việt Nam. Hãy gởi thông tin cho chúng tôi bạn sẽ được tư vấn hoàn toàn miễn phí tất cả các dịch vụ    
 <br>
      
   <strong> THỜI GIAN LÀM VIỆC :</strong><br>
   
      Từ thứ Hai đến thứ Bảy<br>
      Sáng: 8h00 - 12h00, Chiều: 1h30 - 5h30
  



        <br /><br /><br />
        {if $sent}
    {include file="$template/includes/alert.tpl" type="success" msg=$LANG.contactsent textcenter=true}
{/if}

{if $errormessage}
    {include file="$template/includes/alert.tpl" type="error" errorshtml=$errormessage}
{/if}

{if !$sent}
        <form method="post" action="contact.php"   role="form" class="sky-form" >
          <input type="hidden" name="action" value="send" />
          <h5 class="uppercase"><strong>Liên hệ qua email</strong></h5>
          <fieldset>
            <div class="row">
              <section class="col col-6">
                <label class="label">Name</label>
                <label class="input"> <i class="icon-append icon-user"></i>
                  <input type="text"  name="name" value="{$name}" id="inputName" >
                </label>
              </section>
              <section class="col col-6">
                <label class="label">E-mail</label>
                <label class="input"> <i class="icon-append icon-envelope-alt"></i>
                  <input type="email"  name="email" value="{$email}" id="inputEmail" >
                </label>
              </section>
            </div>
            <section>
              <label class="label">Subject</label>
              <label class="input"> <i class="icon-append icon-tag"></i>
                <input type="text"  name="subject" value="{$subject}"   id="inputSubject"  >
              </label>
            </section>
            <section>
              <label class="label">Message</label>
              <label class="textarea"> <i class="icon-append icon-comment"></i>
                <textarea name="message" rows="7" class="form-control" id="inputMessage">{$message}</textarea>
              </label>
            </section>
            <section>
              <label>
                 {include file="$template/includes/captcha.tpl"}
                </label>
            </section>
          </fieldset>
          <footer>
            <button type="submit" class="button">Send message</button>
          </footer>
          
        </form>
  
{/if}
  
      </div>  
      
<div class="one_half last">
      
        <div class="address_info">
        
          <h3>CÔNG TY CỔ PHẦN ỨNG DỤNG CÔNG NGHỆ TOÀN CẦU</h3>
        
           
           304-A5, số 29 Lạc Trung, phường Vĩnh Tuy, Quận Hai Bà Trưng - Hà Nội
            <br />
              Telephone: 84 - 4 - 3-933-4060<br />
              FAX:  84 - 4 - 3-933-4056<br />
              E-mail: <a href="mailto:sales@gltec.com">sales@gltec.com</a><br />
              Website: <a href="#">www.gltec.com</a> </li>
          
        </div>
        <h5 class="uppercase">bản Đồ</h5>
       
       <script type="text/javascript" 
src="https://maps.googleapis.com/maps/api/js?sensor=false&language=vi"></script>
<script type="text/javascript">
var map;
function initialize() {
      var myLatlng = new google.maps.LatLng(21.003019, 105.865795);
      var myOptions = {
    zoom: 15,
    center: myLatlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
}
map = new google.maps.Map(document.getElementById("div_id"), myOptions); 
  // Biến text chứa nội dung sẽ được hiển thị
var text;
text= "<img src='images/gltec.png' width='60'>";
   var infowindow = new google.maps.InfoWindow(
    { content: text,
        size: new google.maps.Size(100,50),
        position: myLatlng
    });
       infowindow.open(map);    
    var marker = new google.maps.Marker({
      position: myLatlng, 
      map: map,
      title:"G7 Ministop"
  });
}
</script>
    <div  class="google-map" id="div_id" style="height:415px; width:100%"></div>
    <script>initialize();</script>
    
     
 



        <div class="bottom_strip"></div><div class="bottom_shape"></div>
    
        </div>  

</div>
  
  </div>
  <!--end section 22-->
  <div class="section_holder45">
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
                <a href="http://www.vnnic.vn/" target="_blank"><img src="/templates/six_lte/images/l12.jpg" alt=""/> </a></div>
            </li>
            
                <li>
              <div class="clint_logo">
                <div class="hover_line"></div>
               <a href="http://www.odin.com/" target="_blank"> <img src="/templates/six_lte/images/l22.jpg" alt=""/> </a></div>
            </li>
            
            
                <li>
              <div class="clint_logo">
                <div class="hover_line"></div>
               <a href="http://fast.com.vn/" target="_blank"> <img src="/templates/six_lte/images/l32.jpg" alt=""/></a> </div>
            </li>
            
                <li>
              <div class="clint_logo">
                <div class="hover_line"></div>
               <a href="http://www.enom.com/" target="_blank"> <img src="/templates/six_lte/images/l42.jpg" alt=""/> </a></div>
            </li>
            
                <li>
              <div class="clint_logo">
                <div class="hover_line"></div>
                <a href="http://tavimart.com/" target="_blank"><img src="/templates/six_lte/images/l52.jpg" alt=""/></a> </div>
            </li>
            
            
          
            
            
          </ul>
        </div>
      </section>
    </div>
  </div><!--end section-->