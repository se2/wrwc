import $ from "jquery";
import whatInput from "what-input";
import slick from "slick-carousel";
import lightbox from "lightbox2";

window.$ = $;

import Foundation from "foundation-sites";
// If you want to pick and choose which modules to include, comment out the above and uncomment
// the line below
// import './lib/foundation-explicit-pieces';

$(document).foundation();

$(document).ready(function() {
	// events grid filter
	if ($(".events-grid").length > 0) {
		// init Isotope
		var $grid = $(".events-grid").isotope({
			itemSelector: ".cell",
			layoutMode: "fitRows"
		});

		// filter items on button click
		$("#events-filter").on("change", function() {
			var filterValue = this.value;
			console.log(filterValue);
			$grid.isotope({
				filter: filterValue
			});
		});
	}

	// Masonry grid
	var $masonryGrid = $(".masonry-grid").imagesLoaded(function() {
		// init Masonry after all images have loaded
		$masonryGrid.masonry({
			// set itemSelector so .grid-sizer is not used in layout
			itemSelector: ".grid-item",
			// fitWidth: true,
			// use element for option
			columnWidth: ".grid-sizer",
			percentPosition: true
		});
	});

	// Add mega-menu active class if enable
	$("ul.menu li.menu-item a").hover(
		function() {
			if ($(this).data("mega")) {
				var menuID = $(this).data("mega");
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
				if (refElement.length > 0) {
					if (
						refElement.position().top <= scrollPos + scrollingMenuHeight &&
						refElement.position().top + Math.ceil(refElement.height()) >
							scrollPos
					) {
						$(this)
							.siblings()
							.each(function() {
								$(this).removeClass("is-active");
							});
						$(this).addClass("is-active");
					}
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

	$(".events__carousel").slick({
		infinite: true,
		// autoplay: true,
		// autoplaySpeed: 6000,
		fade: true,
		cssEase: "ease-in-out",
		dots: true,
		speed: 500,
		slidesToShow: 1,
		slidesToScroll: 1,
		prevArrow: '<div class="arrow arrow-left arrow-left--white"></div>',
		nextArrow: '<div class="arrow arrow-right arrow-right--white"></div>'
	});

	// Lightbox options.
	lightbox.option({
		resizeDuration: 600,
		wrapAround: true
	});

	$(".accordion .accordion-item").click(function() {
		// check if this accordion item has carousel
		if ($(this).find(".carousel").length > 0) {
			// redraw Slick because accordion hide content
			// ref: https://github.com/kenwheeler/slick/issues/187#issuecomment-194293934
			$(this)
				.find(".carousel")
				.slick("getSlick")
				.refresh();
		}
	});
});
