$(document).ready(function(){
	totalCardUpdate();
	if($(".packages .item").length > 0) {
		$(".packages .item").hover(function(){
			$(".packages .item").removeClass("active");
			$(this).addClass("active");
		}, function(){
			// mouseout
		});
	}
	if ($(".server-dedicated .tabs li").length > 0)
	{
		$(".server-dedicated .tabs li a").on("click",function(){
			$(".server-dedicated .tabs li a").removeClass("current");
			$(this).addClass("current");
			var activeServer = ".server-" + $(this).data("server");
			$(".server-list").removeClass("active");
			$(activeServer).addClass("active");
		});
	}
	if ($(".card-list .item").length > 0)
	{
		$(".card-list .item .alt a").on("click",function(){
			var oldCardNumber = parseInt($(this).closest(".item").find(".input-price").val());
			var stepNumber = ($(this).closest(".item").data("step")) ? parseInt($(this).closest(".item").data("step")) : 1;
			if (!$(this).hasClass("btn-minus"))
			{
				newCardNumber = oldCardNumber + stepNumber;
			} else {
				if (oldCardNumber != 0)
				{
					newCardNumber = oldCardNumber - stepNumber;
				} else {
					newCardNumber = 0;
					cardTotal = 0;
				}
			}
			$(this).closest(".item").find(".input-price").val(newCardNumber);
			totalCardUpdate();
		});
		$(".input-price").on("blur",function(){
			totalCardUpdate();
		});
	}
	if ($(".payment-choices").length > 0)
	{
		$(".payment-item").on("click",function(){
			$(".payment-item").removeClass("current");
			$(this).addClass("current");
		});
		$(".payment-bank").hover(function(){
			$(this).addClass("hover");
		},function(){
			$(this).removeClass("hover");
		});
		$(".bank-list .payment-item").on("click",function(){
			var x = $(this).html();
			$(".payment-chose").html(x);
			$(".payment-bank").removeClass("hover");
		});
	}
	if ($(".order-custom").length > 0)
	{
		totalCustomUpdate();
		var cpuSlider = $(".item-cpu .slider").slider({
			value: 1,
			min: 1,
			max: 24,
			step: 1,
			slide: function( event, ui ) {
				$( "#custom-cpu" ).val( ui.value );
				totalCustomUpdate();
			}
		});
		var ramSlider = $(".item-ram .slider").slider({
			value: 1,
			min: 1,
			max: 32,
			step: 1,
			slide: function( event, ui ) {
				$( "#custom-ram" ).val( ui.value );
				totalCustomUpdate();
			}
		});
		var ssdSlider = $(".item-ssd .slider").slider({
			value: 10,
			min: 10,
			max: 16000,
			step: 10,
			slide: function( event, ui ) {
				$( "#custom-ssd" ).val( ui.value );
				totalCustomUpdate();
			}
		});
		var ipSlider = $(".item-ip .slider").slider({
			value: 1,
			min: 1,
			max: 32,
			step: 1,
			slide: function( event, ui ) {
				$( "#custom-ip" ).val( ui.value );
				totalCustomUpdate();
			}
		});
		$(".order-custom .input a").on("click",function(){
			var oldCardNumber = parseInt($(this).closest(".item").find('input[type="text"]').val());
			var stepNumber = ($(this).closest(".item").data("step")) ? parseInt($(this).closest(".item").data("step")) : 1;
			var minNumber = $(this).closest(".item").data("min");
			var c = $(this).closest(".item").data("type");
			if (!$(this).hasClass("btn-minus"))
			{
				newCardNumber = oldCardNumber + stepNumber;
			} else {
				if (oldCardNumber - stepNumber >= minNumber)
				{
					newCardNumber = oldCardNumber - stepNumber;
				} else {
					newCardNumber = minNumber;
				}
			}
			$(this).closest(".item").find('input[type="text"]').val(newCardNumber);
			if (c == "cpu")
			{
				cpuSlider.slider("value",newCardNumber);
			} else if (c == "ram")
			{
				ramSlider.slider("value",newCardNumber)
			} else if (c == "ssd")
			{
				ssdSlider.slider("value",newCardNumber)
			} else {
				ipSlider.slider("value",newCardNumber)
			}
			totalCustomUpdate();
		});
		$('.order-custom input[type="text"]').on("blur",function(){
			var a = $(this).val();
			var b = $(this).closest(".item").data("min");
			var c = $(this).closest(".item").data("type");
			if (a < b)
			{
				$(this).val(b)
			}
			if (c == "cpu")
			{
				cpuSlider.slider("value",a);
			} else if (c == "ram")
			{
				ramSlider.slider("value",a)
			} else if (c == "ssd")
			{
				ssdSlider.slider("value",a)
			} else {
				ipSlider.slider("value",a)
			}
			totalCustomUpdate();
		});
	}
	
});
// Total Custom Hardware Update 
function totalCustomUpdate(){
	var x = totalCustom();
	var newCustomTotal = formatNumber(x);
	$(".order-custom .total-custom").html(newCustomTotal);
	$(".hardware .price").html(newCustomTotal);
}
// Total Custom Hardware Count
function totalCustom(){
	var customTotal = 0;
	$(".custom .item").each(function(){
		var customPrice = $(this).data("price");
		var customCount = $(this).find('input[type="text"]').val();
		var customSubtotal = parseInt(customPrice*customCount);
		var y = formatNumber(customSubtotal);
		var hardWare = ".hardware ." + $(this).data("type")+" b";
		$(this).find(".sub-total").html(y);
		console.log(hardWare);
		$(hardWare).html(customCount);
		customTotal = customTotal + parseInt(customPrice*customCount);
	});
	return customTotal;
}
// Total Card Update
function totalCardUpdate(){
	var x = totalCard();
	var newCardTotal = formatNumber(x);
	$(".card-total .total-number").html(newCardTotal);
}
// Total Card Counting
function totalCard(){
	var cardTotal = 0;
	$(".card-list .item").each(function(){
		var cardPrice = $(this).closest(".item").data("price");
		var cardCount = $(this).find(".input-price").val();
		cardTotal = cardTotal + parseInt(cardPrice*cardCount);
	});
	return cardTotal;
}

// Add dot to number
function formatNumber(num) {
    return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,")
}
// Param
$.urlParam = function(name){
	var results = new RegExp('[\\?&]' + name + '=([^&#]*)').exec(window.location.href);
	if (!results) { return 0; }
	return results[1] || 0;
};

// Manual close colorbox 
function sprClose(){
	$.colorbox.close()
}
// CSS3 Animation Events
var animationStart = 'animationstart webkitAnimationStart oanimationstart MSAnimationStart';
var animationEnd = 'animationend webkitAnimationEnd oanimationend MSAnimationEnd';
var ori;

// Orientation Change Detect
function sprOrientation() {
	var w = $(window).width();
	var h = $(window).height();
	o = (w > h) ? "h" : "v";
}
// Window Resize
$(function() {
    var timer_id;
    $(window).resize(function() {
        clearTimeout(timer_id);
        timer_id = setTimeout(function() {
			sprOrientation();
        }, 300);
    });
});