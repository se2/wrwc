<?php
/**
 * Hooks and Filters for WordPress
 *
 * @category   Function
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

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
 * Register column to events admin table
 */
function add_acf_columns( $columns ) {
	return array_merge( $columns, array(
		'event_date' => __ ( 'Event Date' ),
	) );
}

add_filter( 'manage_events_posts_columns', 'add_acf_columns' );

/**
 * Add value to events admin table
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
 * Make it sortable
 */
function events_sortable_columns( $columns ) {
	$columns['event_date'] = 'event_date';
	return $columns;
}

add_filter( 'manage_edit-events_sortable_columns', 'events_sortable_columns' );

/**
 * Sort by meta value
 */
function event_date_orderby( $query ) {
	if ( ! is_admin() )
		return;

	$orderby = $query->get( 'orderby' );
	if ( 'event_date' == $orderby ) {
		$query->set( 'meta_key', 'event_date' );
		$query->set( 'orderby', 'meta_value' );
	}
}

add_action( 'pre_get_posts', 'event_date_orderby' );


/**
 * Hide email from Spam Bots using a shortcode.
 *
 * Credit: https://codex.wordpress.org/Function_Reference/antispambot
 *
 * @param array  $atts    Shortcode attributes. Not used.
 * @param string $content The shortcode content. Should be an email address.
 *
 * @return string The obfuscated email address.
 */
function wpcodex_hide_email_shortcode( $atts , $content = null ) {
	if ( ! is_email( $content ) ) {
		return;
	}

	$content = antispambot( $content );

	$email_link = sprintf( 'mailto:%s', $content );

	return sprintf( '<a href="%s" class="email-link"><img src="' . get_template_directory_uri() . '/dist/assets/images/email.png" alt="Email"></a>', esc_url( $email_link, array( 'mailto' ) ), esc_html( $content ) );
}

add_shortcode( 'email', 'wpcodex_hide_email_shortcode' );


/**
 * Remove the excerpt "Read More" text
 */
function custom_read_more() {
	global $post;
	return '';
}

add_filter( 'excerpt_more', 'custom_read_more', 21 );


/**
 * Modify the read more text length on the_excerpt()
 */
function et_excerpt_length() {
	return 38;
}

add_filter( 'excerpt_length', 'et_excerpt_length' );


/**
 * Relevanssi filters.
 */
// Check if Relevanssi plugin is activated.
if ( function_exists( 'relevanssi_the_excerpt' ) ) {
	add_filter( 'relevanssi_excerpt_content', 'custom_fields_to_excerpts', 10, 3 );
}

/**
 * Require Relevanssi plugin.
 */
function custom_fields_to_excerpts( $content, $post, $query ) {
	$post_id       = $post->ID;
	$custom_fields = '';
	// Building custom fields data.
	// Staff.
	$staff_email    = get_field( 'email', $post_id );
	$staff_pos      = get_field( 'position', $post_id );
	$custom_fields .= $staff_email . ' ' . $staff_pos . ' ';
	// Page General.
	$overview_title = get_field( 'overview_title', $post_id );
	$overview_text  = get_field( 'overview_text', $post_id );
	$custom_fields .= $overview_text . ' ' . $overview_title . ' ';
	// Event Details.
	$event_date = get_field( 'event_date', $post_id );
	if ( $event_date ) {
		$custom_fields .= $event_date . ' ';
	}
	// Front.
	$custom_fields .= get_field( 'hero_text' ) . ' ';
	// Page blocks.
	$blocks      = get_field( 'page_blocks', $post_id );
	$blocks_data = array(
		'cta_cards'   => array( 'card_title', 'card_description' ),
		'cta_columns' => array( 'cta_title', 'cta_subtitle' ),
		'figures'     => array( 'value', 'description' ),
		'thumbnails'  => array( 'thumbnail_subtitle', 'thumbnail_title' ),
		'maps'        => array( 'map_caption' ),
		'accordions'  => array( 'accordion_title', 'accordion_content' ),
		'editor'      => array(),
		'title'       => array(),
		'subtitle'    => array(),
	);
	if ( is_array( $blocks ) ) {
		foreach ( $blocks as $key => $block ) {
			$layout = $block['acf_fc_layout'];
			foreach ( $blocks_data as $key => $module ) {
				if ( array_key_exists( $key, $block ) ) {
					if ( ! empty( $module ) ) {
						$rows = $block[ $key ];
						foreach ( $rows as $key => $row ) {
							foreach ( $module as $j => $k ) {
								$custom_fields .= $row[ $k ] . ' ';
							}
						}
					} else {
						$custom_fields .= $block[ $key ] . ' ';
					}
				}
			}
			// special cases.
			switch ( $layout ) {
				case 'tiers':
					$rows = $block['tiers_rows'];
					if ( is_array( $rows ) ) {
						foreach ( $rows as $key => $row ) {
							foreach ( $row['tiers'] as $key => $tier ) {
								$custom_fields .= $tier['tier_name'] . ' ';
							}
						}
					}
					break;
				default:
					break;
			}
		}
	}
	// Append to content and return.
	$content .= ' ' . $custom_fields . ' ';
	return $content;
}
