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
		'email'        => array( 'fas fa-envelope', 'mailto:?subject=' . get_the_title() . '&amp;body=' . get_permalink() ),
		'google-plus'  => array( 'fab fa-google-plus-g', 'https://plus.google.com/share?url=' . get_permalink() ),
		'facebook'     => array( 'fab fa-facebook-f', 'https://www.facebook.com/sharer.php?u=' . get_permalink() ),
		'twitter'      => array( 'fab fa-twitter', 'https://twitter.com/intent/tweet?url=' . get_permalink() ),
		'linkedin'     => array( 'fab fa-linkedin', 'https://www.linkedin.com/shareArticle?mini=true&url=' . get_permalink() . '&title=' . get_the_title() ),
		'pinterest'    => array( 'fab fa-pinterest', 'http://pinterest.com/pin/create/link/?url=' . get_permalink() ),
		'tumblr'       => array( 'fab fa-tumblr', 'https://www.tumblr.com/widgets/share/tool?canonicalUrl=' . get_permalink() . '&title={title}' . get_the_title() ),
	);

	$socials = '<div class="social-buttons">';

	foreach ( $services as $key => $service ) {
		if ( isset( $urls[ $service ] ) ) {
			$socials .= '<a class="social-button ' . $service . '" href="' . $urls[ $service ][1] . '" target="_blank"><i class="' . $urls[ $service ][0] . '"></i></a>';
		}
	}

	$socials .= '</div>';

	echo $socials; //phpcs:ignore

}

/**
 *
 * CTA Module Generator
 *
 * @param Array $data CTA data.
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
				<div class="cell text-center">
					<span class="ff-oswald uppercase lh1" style="color:<?php echo esc_attr( $data['title_color'] ); ?>;"><?php echo esc_attr( $data['title'] ); ?></span>
					<?php the_cta( $data['cta'], 'button white mb0' ); ?>
				</div>
			</div>
		</div>
	</div>
<?php
}

/**
 * Category select field
 */
function the_category_select() {
	$term_id       = get_queried_object()->term_id;
	$category_base = get_option( 'category_base' ) ? ( get_option( 'category_base' ) ) : 'category';
	?>
	<select id="posts-filter" class="nostyle-list uppercase primary-color ff-oswald select-filter" onchange="location = this.value">
		<option selected value="<?php the_permalink( get_option( 'page_for_posts' ) ); ?>">All</option>
		<?php
		$terms = get_terms(
			array(
				'taxonomy'   => 'category',
				'hide_empty' => false,
			)
		);
		foreach ( $terms as $key => $term ) {
		?>
		<option value="/<?php echo esc_attr( $category_base . '/' . $term->slug ); ?>" <?php echo ( $term_id === $term->term_id ) ? 'selected' : ''; ?>><?php echo esc_attr( $term->name ); ?></option>
		<?php } ?>
	</select>
	<?php
}

/**
 * Output carousel
 */
function the_carousel( $carousel = array(), $size = 'large', $caption = false, $post_id = '' ) {
	$carousel_id = uniqid( 'post-' . $post_id . '-' );
	if ( $carousel ) :
	?>
	<div class="carousel__wrap">
		<div class="carousel" id="carousel-<?php echo esc_attr( $carousel_id ); ?>">
		<?php
		foreach ( $carousel as $key => $slide ) :
			$caption_txt = '';
			if ( $caption ) {
				$caption_txt = 'data-title="' . $slide['caption'] . '"';
			}
		?>
		<div class="carousel__slide">
			<a href="<?php echo esc_attr( $slide['url'] ); ?>" data-lightbox="carousel-<?php echo esc_attr( $carousel_id ); ?>" <?php echo $caption_txt; ?>>
				<div class="inner bg-cover bg-center" style="background-image:url('<?php echo esc_attr( $slide['sizes'][ $size ] ); ?>');"></div>
			</a>
		</div>
		<?php endforeach; ?>
		</div>
	</div>
	<?php
	endif;
}

/**
 * Multiple delimiters explode.
 */
function multiexplode( $delimiters, $string ) {
	$ready  = str_replace( $delimiters, $delimiters[0], $string );
	$launch = explode( $delimiters[0], $ready );
	return $launch;
}

/**
 * Multiple delimiters explode.
 */
function get_date_array( $date ) {
	$date_arr          = array();
	$delimiters        = array( ' ', ',' );
	$date_arr['month'] = multiexplode( $delimiters, $date )[0];
	$date_arr['day']   = multiexplode( $delimiters, $date )[1];
	$date_arr['year']  = multiexplode( $delimiters, $date )[2];
	return $date_arr;
}

/**
 * Generate 2-column special events in mega menu and off-canvas menu.
 */
function the_event_thumbnails() {
	$special_events_id = get_field( 'special_events_category', 'option' );
	$the_query         = new WP_Query(array(
		'post_type'      => 'events',
		'posts_per_page' => 999,
		'meta_key'       => 'event_date',
		'orderby'        => 'meta_value',
		'order'          => 'ASC',
		'tax_query'      => array(
			array(
				'taxonomy' => 'event_category',
				'field'    => 'term_id',
				'terms'    => $special_events_id,
				'operator' => 'IN',
			),
		),
	));
	if ( $the_query->have_posts() ) {
	?>
	<div class="grid-x grid-margin-x special-events">
	<?php
	$limit = 0;
	while ( $the_query->have_posts() && $limit < 2 ) {
		$the_query->the_post();
		global $post;
		$thumbnail = get_the_post_thumbnail_url( $post, 'medium' );
		if ( get_field( 'mega_menu_image' ) ) {
			$thumbnail = get_field( 'mega_menu_image' )['sizes']['medium'];
		}
		if ( strtotime( get_field( 'event_date' ) ) > mktime( 0, 0, 0 ) ) {
			$date_arr = get_date_array( get_field( 'event_date' ) );
	?>
		<div class="cell medium-6">
			<a href="<?php the_permalink(); ?>">
				<div class="mega-thumbnail pos-rel bg-center-bottom bg-cover" style="background-image:url('<?php echo esc_attr( $thumbnail ); ?>');">
					<div class="special-events__date">
						<p class="event-month lh1 uppercase bold"><?php echo esc_html( $date_arr['month'] ); ?></p>
						<p class="event-day lh1 bold mb0"><?php echo esc_html( $date_arr['day'] ); ?></p>
					</div>
				</div>
				<p class="text-center bold mb0 special-events__title primary-color"><?php the_title(); ?></p>
			</a>
		</div>
	<?php
		$limit++;
		}
	}
	?>
	</div>
	<?php
	}
	wp_reset_postdata();
}

/**
 * Return search form in nav.
 */
function get_nav_searchform() {
	$search_value  = get_query_var( 's' );
	$search_active = '';
	if ( get_query_var( 's' ) ) {
		$search_active = 'is-active';
	}
	?>
	<form role="search" method="get" action="<?php echo home_url( '/' ); ?>" class="top-bar-searchform <?php echo esc_attr( $search_active ); ?>">
		<div class="group">
			<input type="text" class="input-group-field" value="<?php echo esc_attr( $search_value ); ?>" name="s" id="s" placeholder="<?php esc_attr_e( 'Search', 'wrwc' ); ?>">
			<span class="bar"></span>
			<a href="" class="clear-search hide-for-medium"><i class="fas fa-times"></i></a>
			<button class="hide-for-medium submit-mobile" type="submit"><span class="icon icon-search2"></span></button>
		</div>
	</form>
	<?php
}
