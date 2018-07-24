<?php
/**
 * Default page header
 *
 * @category   Components
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

// Default values.
$default_bg          = get_template_directory_uri() . '/dist/assets/images/page-title.png';
$page_gradient       = get_template_directory_uri() . '/dist/assets/images/page-gradient.png';
$page_gradient_m     = get_template_directory_uri() . '/dist/assets/images/page-gradient-mobile.png';
$default_title_color = '#FFFFFF';
$featured_img        = get_the_post_thumbnail_url( $post, 'full' );
$option              = '';
$title               = get_the_title();

// Conditional logic for archive page
// Require plugin https://github.com/Tusko/ACF-CPT-Options-Pages .
if ( is_archive() ) {
	$cpt    = $wp_query->query['post_type'];
	$option = 'cpt_' . $cpt;
	$title  = get_field( 'page_title', $option );
}

if ( is_home() || is_singular( 'post' ) ) {
	$option       = get_option( 'page_for_posts' );
	$title        = get_field( 'page_title', $option ) ? get_field( 'page_title', $option ) : get_the_title( $option, true );
	$featured_img = get_the_post_thumbnail_url( $option, 'full' );
}

if ( isset( get_queried_object()->term_id ) ) {
	$option = get_option( 'page_for_posts' );
	$term   = get_term( get_queried_object()->term_id );
	$title  = $term->name;
}

if ( is_singular( 'post' ) && wp_get_post_terms( $post->ID, 'category' ) ) {
	$term  = wp_get_post_terms( $post->ID, 'category' );
	$title = $term[0]->name;
}

if ( is_singular( 'gallery' ) ) {
	$cpt    = $wp_query->query['post_type'];
	$option = 'cpt_' . $cpt;
	$title  = get_the_title();
}

// Page values.
$bg          = get_field( 'page_title_background', $option ) ? get_field( 'page_title_background', $option ) : $default_bg;
$title_color = get_field( 'page_title_color', $option ) ? get_field( 'page_title_color', $option ) : $default_title_color;
?>

<?php if ( get_field( 'page_title_visible', $option ) ) : ?>
<!-- Page Title -->
<header class="page-header bg-cover bg-center-bottom" style="background-image:url('<?php echo esc_url( $bg ); ?>');">
	<div class="container text-center">
		<h1 class="bold uppercase white-color mb0 entry-title" style="color:<?php echo esc_attr( $title_color ); ?>;"><?php echo esc_attr( $title ); ?></h1>
	</div>
</header>
<?php endif; ?>

<?php if ( get_field( 'page_description', $option ) ) : ?>
<!-- Page short description -->
<div class="page-description">
	<div class="container text-center">
		<div class="grid-x grid-centered">
			<div class="cell medium-10">
				<p class="medium-gray mb0"><?php the_field( 'page_description', $option ); ?></p>
			</div>
		</div>
	</div>
</div>
<?php endif; ?>

<?php if ( get_field( 'show_scrolling_menu', $option ) && have_rows( 'page_blocks', $option ) ) : ?>
<!-- Inner page scrolling menu -->
<div class="page-block page-block--inner-scroll show-for-large" style="background-color:#494949;">
	<div id="page-scroll">
		<?php
		while ( have_rows( 'page_blocks', $option ) ) :
			the_row();
			$block_id = sanitize_title( get_sub_field( 'scrolling_menu_name', $option ) );
			if ( get_sub_field( 'scrolling_menu_name', $option ) ) :
		?>
		<a href="#<?php echo esc_attr( $block_id ); ?>" class="bold white-color"><?php the_sub_field( 'scrolling_menu_name', $option ); ?></a>
		<?php
			endif;
		endwhile;
		?>
	</div>
</div>
<!-- Dummy div with same height to account for absolute position -->
<div class="page-block--inner-scroll__dummy show-for-large"></div>
<?php endif; ?>

<?php if ( get_field( 'overview_visible', $option ) ) : ?>
<!-- Page Overview section -->
<div class="page-overview bg-cover" style="background-image:url('<?php echo esc_url( $featured_img ); ?>');">
	<div class="container">
		<div class="grid-x page-overview__grid">
			<div class="cell small-10 medium-8 large-5">
				<h1 class="uppercase"><?php the_field( 'overview_title', $option ); ?></h1>
				<p><?php the_field( 'overview_text', $option ); ?></p>
				<p class="mb0 text-center--mobile">
					<?php the_cta( get_field( 'overview_cta', $option ), 'button white mb0' ); ?>
				</p>
			</div>
		</div>
	</div>
	<?php if ( 'events' === get_post_type() ) : ?>
	<div class="event-date">
		<p class="ff-oswald white-color mb0 month lh1 uppercase bold"><?php echo esc_html( multiexplode( array( ' ', ',' ), get_field( 'event_date', $option ) )[0] ); ?></p>
		<p class="ff-oswald white-color day lh1 bold mb0"><?php echo esc_html( multiexplode( array( ' ', ',' ), get_field( 'event_date', $option ) )[1] ); ?></p>
	</div>
	<?php endif; ?>
	<img src="<?php echo esc_url( $page_gradient ); ?>" alt="" class="page-overview__gradient show-for-medium">
	<img src="<?php echo esc_url( $page_gradient_m ); ?>" alt="" class="page-overview__gradient hide-for-medium">
</div>
<?php endif; ?>
