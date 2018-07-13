<?php
/**
 * ACF Options Page
 *
 * @category   Function
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

if ( function_exists( 'acf_add_options_page' ) ) {

	acf_add_options_page(array(
		'page_title' => 'Theme Settings Settings',
		'menu_title' => 'Theme Settings',
		'menu_slug'  => 'theme-general-settings',
		'capability' => 'edit_posts',
		'redirect'   => false,
	));

}
