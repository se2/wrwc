<?php
/**
 * Default page footer
 *
 * @category   Components
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

$prefix  = '';
$options = '';

if ( is_post_type_archive( 'events' ) ) {
	$prefix = 'e_';
	$option = 'option';
}

if ( get_field( $prefix . 'cta_visible', $option ) ) {
	$data = array(
		'title'            => get_field( $prefix . 'cta_title', $option ),
		'title_color'      => get_field( $prefix . 'cta_title_color', $option ),
		'cta'              => get_field( $prefix . 'cta_link', $option ),
		'background'       => get_field( $prefix . 'cta_background', $option ),
		'background_image' => get_field( $prefix . 'cta_background_image', $option ),
	);
	the_cta_module( $data );
}