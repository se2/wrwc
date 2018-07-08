import $ from "jquery";
import whatInput from "what-input";

window.$ = $;

import Foundation from "foundation-sites";
// If you want to pick and choose which modules to include, comment out the above and uncomment
// the line below
//import './lib/foundation-explicit-pieces';

$(document).foundation();

// custom
$(document).ready(function() {
	$("ul.menu li.menu-item").hover(
		function() {
			if ( $(this).hasClass('has-mega-menu') ) {
				var menuID = $(this).attr('id').split('-')[2];
				$('.js-mega-menu').removeClass('js-active');
				$('.mega-menu-' + menuID).addClass('js-active');
			} else {
				$('.js-mega-menu').removeClass('js-active');
			}
		},
		function() {
		}
	);
	$('.site-header').hover(
		function() {
		},
		function() {
			$('.js-mega-menu').removeClass('js-active');
		}
	);
});
