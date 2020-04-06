jQuery(document).ready(function(){
    jQuery("#existingcust").click(function(){
        if (jQuery(this).hasClass('active')!=true) {
            jQuery(".signuptype").removeClass('active');
            jQuery(this).addClass('active');
            jQuery("#signupfrm").fadeToggle('fast',function(){
                jQuery("#securityQuestion").fadeToggle('fast');
                jQuery("#loginfrm").hide().removeClass('hidden').fadeToggle('fast');
                jQuery("#btnCompleteOrder").attr('formnovalidate', true);
            });
            jQuery("#custtype").val("existing");
        }
    });
    jQuery("#newcust").click(function(){
        if (jQuery(this).hasClass('active')!=true) {
            jQuery(".signuptype").removeClass('active');
            jQuery(this).addClass('active');
            jQuery("#loginfrm").fadeToggle('fast',function(){
                jQuery("#securityQuestion").fadeToggle('fast');
                jQuery("#signupfrm").hide().removeClass('hidden').fadeToggle('fast');
                jQuery("#btnCompleteOrder").removeAttr('formnovalidate');
            });
            jQuery("#custtype").val("new");
        }
    });
    jQuery("#inputDomainContact").on('change', function() {
        if (this.value == "addingnew") {
            jQuery("#domaincontactfields :input")
                .not("#domaincontactaddress2, #domaincontactcompanyname")
                .attr('required', true);
            jQuery("#domaincontactfields").hide().removeClass('hidden').slideDown();
        } else {
            jQuery("#domaincontactfields").slideUp();
            jQuery("#domaincontactfields :input").attr('required', false);
        }
    });
});

function showcats() {
    jQuery("#categories").slideToggle();
}

function selproduct(num) {
    jQuery('#productslider').slider("value", num);
    jQuery(".product").hide();
    jQuery("#product"+num).show();
    jQuery(".sliderlabel").removeClass("selected");
    jQuery("#prodlabel"+num).addClass("selected");
}

function recalctotals(hideLoading) {
    if (typeof hideLoading === 'undefined') {
        hideLoading = true;
    }
    if (!jQuery("#cartLoader").is(":visible")) {
        jQuery("#cartLoader").fadeIn('fast');
    }
    var post = jQuery.post("cart.php", 'ajax=1&a=confproduct&calctotal=true&'+jQuery("#orderfrm").serialize());
    post.done(
        function(data) {
            jQuery("#producttotal").html(data);
        }
    );
    if (hideLoading) {
        post.always(
            function() {
                jQuery("#cartLoader").delay(500).fadeOut('slow');
            }
        );
    }
}

function addtocart(gid) {
    jQuery("#loading1").slideDown();
    jQuery.post("cart.php", 'ajax=1&a=confproduct&'+jQuery("#orderfrm").serialize(),
    function(data){
        if (data) {
            jQuery("#configproducterror").html(data);
            jQuery("#configproducterror").slideDown();
            jQuery("#loading1").slideUp();
        } else {
            if (gid) window.location='cart.php?gid='+gid;
            else window.location='cart.php?a=confdomains';
        }
    });
}

// function showCCForm(value) {
//     if(value == "pgbtnbanktransfer"){
// 		if (!jQuery("#ccinputform").is(":visible")) {
// 			jQuery("#ccinputform").hide().removeClass('hidden').slideDown();
// 		}
		
// 		$(".radio-inline input:radio").each(function( index ){
// 			var id = $(this).attr("id");
			
// 			$(this).attr("onclick", "hideCCForm('"+id+"')");
			
// 		});
// 		//$(".radio-inline input:radio").attr("onclick", "hideCCForm('"+$('.radio-inline input:radio').val()+"')");
// 	}	
//     else if (value == "pgbtnmailin"){
//         if (!jQuery("#ccinputform2").is(":visible")) {
//             jQuery("#ccinputform2").hide().removeClass('hidden').slideDown();
//         }
        
//         $(".radio-inline input:radio").each(function( index ){
//             var id = $(this).attr("id");
            
//             $(this).attr("onclick", "hideCCForm('"+id+"')");
            
//         });
//     }
// }
// function hideCCForm(value) {
//     jQuery("#ccinputform").slideUp();
	
// 	$(".radio-inline input:radio").each(function( index ){
// 			var id = $(this).attr("id");
			
// 			$(this).attr("onclick", "showCCForm('"+id+"')");
			
// 		});
	
// }


function useExistingCC() {
    jQuery(".newccinfo").hide();
}
function enterNewCC() {
    jQuery(".newccinfo").removeClass('hidden').show();
}

function updateConfigurableOptions(i, billingCycle) {
    jQuery("#cartLoader").fadeIn('fast');
    var post = jQuery.post(
        "cart.php",
        'a=cyclechange&ajax=1&i='+i+'&billingcycle='+billingCycle
    );

    post.done(
        function(data){
            if (data=='') {
                window.location='cart.php?a=view';
            } else {
                jQuery("#prodconfigcontainer").replaceWith(data);
                jQuery("#prodconfigcontainer").slideDown();
                recalctotals(false);
            }
        }
    );

    post.always(
        function() {
            jQuery("#cartLoader").delay(500).fadeOut('slow');
        }

    );
}

function catchEnter(e) {
    if (e) {
        addtocart();
        e.returnValue=false;
    }
}

// JS custom payment_method by Thach
$(document).ready(function(){
    $('input:radio').change(function(event) {
        var radioValue = $("input[name='paymentmethod']:checked").val();
        if(radioValue == "banktransfer"){
            $('#ccinputform2').hide();
            $('#ccinputform').removeClass('hidden').slideDown(300);
        }
        else {
            $('#ccinputform').hide();
            $('#ccinputform2').removeClass('hidden').slideDown(300);
        }
    }); 
});
// End custom payment_method