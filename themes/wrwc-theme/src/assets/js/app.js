import $ from "jquery";
import whatInput from "what-input";
import slick from "slick-carousel";
import lightbox from 'lightbox2';

window.$ = $;

import Foundation from "foundation-sites";
// If you want to pick and choose which modules to include, comment out the above and uncomment
// the line below
// import './lib/foundation-explicit-pieces';

$(document).foundation();

$(document).ready(function() {
	// Add mega-menu active class if enable
	$("ul.menu li.menu-item").hover(
		function() {
			if ($(this).hasClass("has-mega-menu")) {
				var menuID = $(this)
					.attr("id")
					.split("-")[2];
				$(".js-mega-menu").removeClass("js-active");
				$(".mega-menu-" + menuID).addClass("js-active");
			} else {
				$(".js-mega-menu").removeClass("js-active");
			}
		},
		function() {}
	);
	// Remove mega-menu active class when hovering out of .site-header
	$(".site-header").hover(
		function() {},
		function() {
			setTimeout(function() {
				$(".js-mega-menu").removeClass("js-active");
			}, 500);
		}
	);

	var scrollingMenuHeight = 58;

	// Scrolling menu click to change active state.
	$("#page-scroll a").on("click", function() {
		$(this)
			.siblings()
			.each(function() {
				$(this).removeClass("is-active");
			});
		$(this).addClass("is-active");
	});

	// Smoothscroll init.
	var scroll = new SmoothScroll('a[href*="#"]', {
		speed: 1000,
		easing: "easeInOutQuart",
		offset: scrollingMenuHeight - 1, // know bug issue when using with below scrolling code, minus 1 to account for this issue.
		updateURL: true,
		popstate: true
	});

	// Add fixed position to scrolling menu.
	if ($("#page-scroll a").length > 0) {
		var topPos = $(".page-block--inner-scroll").offset().top;
		$(window).scroll(function() {
			var currentScroll = $(window).scrollTop();
			if (currentScroll >= topPos) {
				$(".page-block--inner-scroll").addClass("pos-fixed");
			} else {
				$(".page-block--inner-scroll").removeClass("pos-fixed");
			}
			var scrollPos = $(document).scrollTop();
			$("#page-scroll a").each(function() {
				var currLink = $(this);
				var refElement = $(currLink.attr("href"));
				if (
					refElement.position().top <= scrollPos + scrollingMenuHeight &&
					refElement.position().top + Math.ceil(refElement.height()) > scrollPos
				) {
					$(this)
						.siblings()
						.each(function() {
							$(this).removeClass("is-active");
						});
					$(this).addClass("is-active");
				}
			});
		});
	}

	// Carousel
	$(".carousel").slick({
		infinite: false,
		speed: 500,
		slidesToShow: 5,
		slidesToScroll: 1,
		prevArrow: '<div class="arrow arrow-left"></div>',
		nextArrow: '<div class="arrow arrow-right"></div>',
		responsive: [
			{
				breakpoint: 600,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 1
				}
			},
			{
				breakpoint: 480,
				settings: {
					slidesToShow: 1,
					slidesToScroll: 1
				}
			}
		]
	});

	// Lightbox options.
	lightbox.option({
		'resizeDuration': 200,
		'wrapAround': true,
	})
});
