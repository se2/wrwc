<?php
/**
 * Helper Functions
 *
 * @category   Function
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

/**
 * Print clean current site's URL.
 */
function the_clean_url() {
	echo esc_attr( get_site_url() );
}

/**
 * Print CTA Button.
 *
 * @param array  $link Link ACF Array.
 * @param String $class CTA button's classes.
 */
function the_cta( $link, $class = 'button' ) {
	$link_str = '';
	if ( $link ) {
		$link_str = '<a class="' . $class . '" href="' . $link['url'] . '" target="' . $link['target'] . '">' . $link['title'] . '</a>';
	}
	echo $link_str;
}

/**
 * Print socials sharing icons.
 *
 * @param array $services Social sharing services.
 */
function the_socials_share( $services = array( 'email', 'facebook', 'twitter', 'google-plus', 'linkedin' ) ) {

	$urls = array(
		'email'       => 'mailto:?subject=' . get_the_title() . '&amp;body=' . get_permalink(),
		'google-plus' => 'https://plus.google.com/share?url=' . get_permalink(),
		'facebook'    => 'https://www.facebook.com/sharer.php?u=' . get_permalink(),
		'twitter'     => 'https://twitter.com/intent/tweet?url=' . get_permalink(),
		'linkedin'    => 'https://www.linkedin.com/shareArticle?mini=true&url=' . get_permalink() . '&title=' . get_the_title(),
		'pinterest'   => 'http://pinterest.com/pin/create/link/?url=' . get_permalink(),
		'tumblr'      => 'https://www.tumblr.com/widgets/share/tool?canonicalUrl=' . get_permalink() . '&title={title}' . get_the_title(),
	);

	$socials = '<div class="social-buttons">';

	foreach ( $services as $key => $service ) {
		if ( isset( $urls[ $service ] ) ) {
			$socials .= '<a class="social-button ' . $service . '" href="' . $urls[ $service ] . '" target="_blank"></a>';
		}
	}

	$socials .= '</div>';

	echo $socials; //phpcs:ignore

}

/**
 * Custom Color Palette
 *
 * @param mixed $init Init.
 */
function my_mce4_options( $init ) {

	$custom_colours = '
		"037573", "Primary Color",
		"225e9c", "Secondary Color",
		"414141", "Light Gray",
		"444444", "Medium Gray",
		"494949", "Dark Gray",
		"037573", "Success",
		"ffae00", "Warning",
		"cc4b37", "Alert",
		"ffffff", "White",
		"000000", "Black"
	';

	// build colour grid default+custom colors.
	$init['textcolor_map'] = '[' . $custom_colours . ']';

	// change the number of rows in the grid if the number of colors changes.
	// 8 swatches per row.
	$init['textcolor_rows'] = 2;

	return $init;
}

add_filter( 'tiny_mce_before_init', 'my_mce4_options' );

/**
 * Standard OpenGraph
 */
function fb_opengraph() {
	global $post;

	if ( is_single() ) {
		$img_src = get_stylesheet_directory_uri() . '/dist/assets/images/facebook-default.png';
		if ( has_post_thumbnail( $post->ID, 'fb-large' ) ) {
			$img_src = get_the_post_thumbnail_url( $post->ID, 'fb-large' );
		} elseif ( has_post_thumbnail( $post->ID, 'fb-small' ) ) {
			$img_src = get_the_post_thumbnail_url( $post->ID, 'fb-small' );
		} elseif ( has_post_thumbnail( $post->ID ) ) {
			$img_src = get_the_post_thumbnail_url( $post->ID, 'large' );
		}
		// phpcs:disable
		if ( $excerpt = $post->post_excerpt ) {
				$excerpt = strip_tags( $post->post_excerpt );
				$excerpt = str_replace( "", "'", $excerpt );
		} else {
				$excerpt = get_bloginfo( 'description' );
		}
		?>

	<meta property="og:title" content="<?php echo the_title(); ?>"/>
	<meta property="og:description" content="<?php echo $excerpt; ?>"/>
	<meta property="og:type" content="article"/>
	<meta property="og:url" content="<?php echo the_permalink(); ?>"/>
	<meta property="og:site_name" content="<?php echo get_bloginfo(); ?>"/>
	<meta property="og:image" content="<?php echo $img_src; ?>"/>
<?php
	} else {
		return;
	}
	// phpcs:enable
}

add_action( 'wp_head', 'fb_opengraph', 5 );

/**
 * Friendly Block Titles
 * Credit: http://serversideguy.com/2017/03/28/how-can-i-create-custom-titles-for-advanced-custom-fields-flexible-content-blocks/
 */
function my_layout_title( $title, $field, $layout, $i ) {
	if ( $value = get_sub_field( 'layout_title' ) ) {
		return $value;
	} else {
		foreach ( $layout['sub_fields'] as $sub ) {
			if ( $sub['name'] == 'layout_title' ) {
				$key = $sub['key'];
				if ( is_array( $field['value'] ) && array_key_exists( $i, $field['value']) && $value = $field['value'][$i][$key] )
					return $value;
			}
		}
	}
	return $title;
}
add_filter( 'acf/fields/flexible_content/layout_title', 'my_layout_title', 10, 4 );

/**
 * Add columns to events post list
 */
function add_acf_columns( $columns ) {
	return array_merge( $columns, array(
		'event_date' => __ ( 'Event Date' ),
	) );
}
add_filter( 'manage_events_posts_columns', 'add_acf_columns' );

/**
 * Add columns to events post list
 */
function events_custom_column( $column, $post_id ) {
	switch ( $column ) {
		case 'event_date':
			echo get_field( 'event_date', $post_id );
			break;
	}
}
add_action( 'manage_events_posts_custom_column', 'events_custom_column', 10, 2 );

/**
 * Get Posts Query.
 *
 * @param  mixed  $tax_ids List of taxonomy ID.
 * @param  int    $posts_per_page Posts count to return.
 * @param  String $post_type Post type.
 * @param  String $order Posts' order.
 * @param  String $taxonomy Taxonomy type.
 * @param  String $operator Logic to query products ('IN', 'NOT IN', 'AND').
 * @return Object
 */
function get_posts_query( $tax_ids, $posts_per_page = 2, $post_type = 'post', $order = 'ASC', $taxonomy = 'category', $operator = 'IN' ) {
	/**
	 * Keep this $tax_query simple, MySQL doesn't deal well with the multiple joins to the same table (wp_postmeta).
	 * https://wordpress.stackexchange.com/questions/294039/too-slow-when-using-both-tax-query-and-meta-query-both-in-wp-query
	 */
	$tax_query = array(
		array(
			'taxonomy' => $taxonomy,
			'field'    => 'term_id',
			'terms'    => $tax_ids,
			'operator' => $operator,
		),
	);
	$args      = array(
		'post_type'      => $post_type,
		'posts_per_page' => $posts_per_page,
		'post_status'    => 'publish',
		'order'          => $order,
	);
	if ( $tax_ids ) {
		$args['tax_query'] = $tax_query;
	}
	return ( new WP_Query( $args ) );
}

/**
 *
 * CTA Module Generator
 *
 * @param Array $data CTA data.
 *
 */
function the_cta_module( $data = array() ) {
	$bg = 'background-color:' . $data['background'] . ';';
	if ( $data['background_image'] ) {
		$bg .= 'background-image:url("' . $data['background_image'] . '");';
	}
?>
	<div class="page-block page-block--cta center bg-cover bg-right" style="<?php echo esc_attr( $bg ); ?>">
		<div class="container">
			<div class="grid-x flex-center-items">
				<div class="cell medium-5 text-center">
					<h5 class="uppercase lh1" style="color:<?php echo esc_attr( $data['title_color'] ); ?>;"><?php echo esc_attr( $data['title'] ); ?></h5>
				</div>
				<div class="cell medium-3 xlarge-2 text-center">
					<?php the_cta( $data['cta'], 'button white mb0' ); ?>
				</div>
			</div>
		</div>
	</div>
<?php
}