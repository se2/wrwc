<?php
/**
 * Register Menus
 *
 * @link http://codex.wordpress.org/Function_Reference/register_nav_menus#Examples
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

register_nav_menus(
	array(
		'top-search'    => esc_html__( 'Top Search Bar', 'wrwc' ),
		'top-bar-r'     => esc_html__( 'Right Top Bar', 'wrwc' ),
		'mobile-nav'    => esc_html__( 'Mobile Offcanvas', 'wrwc' ),
		'mobile-footer' => esc_html__( 'Mobile Footer', 'wrwc' ),
	)
);


/**
 * Desktop navigation - right top bar
 *
 * @link http://codex.wordpress.org/Function_Reference/wp_nav_menu
 */
if ( ! function_exists( 'foundationpress_top_bar_r' ) ) {
	function foundationpress_top_bar_r() {
		wp_nav_menu(
			array(
				'container'      => false,
				'menu_class'     => 'dropdown menu',
				'items_wrap'     => '<ul id="%1$s" class="%2$s desktop-menu" data-dropdown-menu>%3$s</ul>',
				'theme_location' => 'top-bar-r',
				'depth'          => 3,
				'fallback_cb'    => false,
				'walker'         => new Foundationpress_Top_Bar_Walker(),
			)
		);
	}
}


/**
 * Mobile navigation - topbar (default) or offcanvas
 */
if ( ! function_exists( 'foundationpress_mobile_nav' ) ) {
	function foundationpress_mobile_nav() {
		wp_nav_menu(
			array(
				'container'      => false,                         // Remove nav container
				'menu'           => __( 'mobile-nav', 'foundationpress' ),
				'menu_class'     => 'vertical menu',
				'theme_location' => 'mobile-nav',
				'items_wrap'     => '<ul id="%1$s" class="%2$s" data-accordion-menu data-submenu-toggle="true">%3$s</ul>',
				'fallback_cb'    => false,
				'walker'         => new Foundationpress_Mobile_Walker(),
			)
		);
	}
}


/**
 * Add support for buttons in the top-bar menu:
 * 1) In WordPress admin, go to Apperance -> Menus.
 * 2) Click 'Screen Options' from the top panel and enable 'CSS CLasses' and 'Link Relationship (XFN)'
 * 3) On your menu item, type 'has-form' in the CSS-classes field. Type 'button' in the XFN field
 * 4) Save Menu. Your menu item will now appear as a button in your top-menu
*/
if ( ! function_exists( 'foundationpress_add_menuclass' ) ) {
	function foundationpress_add_menuclass( $ulclass ) {
		$find    = array( '/<a rel="button"/', '/<a title=".*?" rel="button"/' );
		$replace = array( '<a rel="button" class="button"', '<a rel="button" class="button"' );

		return preg_replace( $find, $replace, $ulclass, 1 );
	}
	add_filter( 'wp_nav_menu', 'foundationpress_add_menuclass' );
}

/**
 * Add search icon to Top Menu
*/
function add_search_icon( $items, $args ) {
	if ( 'top-search' === $args->theme_location ) {
		$items = '<li class="menu-item"><a href="#!"><span class="icon icon-search2"></a></li>' . $items;
	}
	return $items;
}

add_filter( 'wp_nav_menu_items', 'add_search_icon', 10, 2 );

/**
 * Mega Menu class
 */
function wp_nav_menu_options( $items, $args ) {
	foreach ( $items as &$item ) {
		$enable_mega_menu = get_field( 'enable_mega_menu', $item );
		$button_menu      = get_field( 'button_menu', $item );
		// Check if top-level menu and is enable mega-menu.
		if ( $enable_mega_menu && '0' === $item->menu_item_parent ) {
			$item->classes[] = 'has-mega-menu';
		}
		// Add classes if button menu.
		if ( $button_menu ) {
			$item->classes[] = 'button fill small mb0';
		}
		// Add menu's visibility class
		$item->classes[] = get_field( 'show_for', $item );
	}
	return $items;
}

add_filter( 'wp_nav_menu_objects', 'wp_nav_menu_options', 10, 2 );

/**
 * Mega Menu id to toggle
 */
function wp_nav_menu_atts( $atts, $item, $args ) {
	$enable_mega_menu = get_field( 'enable_mega_menu', $item );
	if ( $enable_mega_menu && '0' === $item->menu_item_parent ) {
		$atts['data-mega'] = $item->ID;
	}
	return $atts;
}

add_filter( 'nav_menu_link_attributes', 'wp_nav_menu_atts', 10, 3 );
