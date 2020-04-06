/**
 * 
 */
$(document).ready(function() {

		
        function initialization(){
            $('#myContainer').fullpage({anchors : [ 'main', 'server', 'backup2', 'service', 'networking', 'domain2', 'shop', 'exa' ],
									resize : true,
									animateAnchor : false,
//									 scrollOverflow: true,
//									 autoScrolling:true,
									responsive : 1025,
									fitSection : false,
									paddingTop : '0px',
									css3 : true,
									scrollBar: true,
									scrollingSpeed : 1500,
									afterLoad : function(anchorLink, index) {
										if ($('.exa-menu .menu_PC').find(
												'li[data-id="' + index + '"]')
												.size() > 0) {
											$('.exa-menu .menu_PC li')
													.removeClass("current");
											$(
													'.exa-menu .menu_PC li[data-id="'
															+ index + '"]')
													.addClass("current");
											menuCurrent();
										} else {
											if (index == 1) {
												$(
														'.exa-menu .menu_PC li[data-id="'
																+ (index + 1)
																+ '"]')
														.addClass("current");
												menuCurrent();
											}
										}
									}
								});

						$('.exa-menu .menu_PC li').click(function(e) {
							e.preventDefault();
							$.fn.fullpage.moveTo($(this).data("id"));
							$(this).siblings().removeClass("current");
							$(this).addClass("current");
							menuCurrent();
						});
						$(".exa-logo").click(function(e) {
							e.preventDefault();
							$.fn.fullpage.moveTo($(this).data("id"));
						});
					}

					// fullPage.js initialization
					initialization();
					$(window).load(function() {
						menuCurrent();
					});
					function menuCurrent() {
						var offsetUl = $(".exa-menu > ul.menu_PC").offset().left;
						if (typeof $(".exa-menu > ul.menu_PC > li.current")
								.offset() == 'object') {
							var offsetLi = $(
									".exa-menu > ul.menu_PC > li.current")
									.offset().left;
						} else {
							var offsetLi = $(
									".exa-menu > ul.menu_PC > li:first")
									.offset().left;
						}
						var widthLi = $(".exa-menu > ul.menu_PC > li.current")
								.innerWidth();
						var positionLeft = parseFloat(offsetLi)
								- parseFloat(offsetUl)
								+ ((parseFloat(widthLi) - 55) / 2);
						// $(".exa-menu > ul").stop().animate({
						// 'backgroundPositionX': positionLeft + "px",
						// 'backgroundPositionY': '100%'
						// },300);
						$(".exa-menu > ul.menu_PC").css({
							"background-position" : positionLeft + "px 100%"
						});
					}
				});