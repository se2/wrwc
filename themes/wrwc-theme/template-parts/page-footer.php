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

$prefix = 'footer_';
$option = $post->ID;

if ( is_archive() ) {
	// Require plugin https://github.com/Tusko/ACF-CPT-Options-Pages .
	$cpt    = $wp_query->query['post_type'];
	$option = 'cpt_' . $cpt;
}

if ( is_home() || is_singular( 'post' ) || is_category() ) {
	$option = get_option( 'page_for_posts' );
}

if ( is_singular( 'gallery' ) ) {
	$cpt    = $wp_query->query['post_type'];
	$option = 'cpt_' . $cpt;
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
