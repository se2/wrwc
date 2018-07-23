<?php
/**
 * The template for displaying Events CPT archive pages
 *
 * @category   Archive
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

get_header();
?>

<!-- Page header -->
<?php get_template_part( 'template-parts/page', 'header' ); ?>

<!-- Featured events slider -->
<?php get_template_part( 'template-parts/featured-events' ); ?>

<div class="main-container events-container">
	<div class="grid-x grid-right">
		<div class="cell medium-3">
			<!-- Isotope <select> filter -->
			<?php if ( have_posts() ) : ?>
			<select id="events-filter" class="nostyle-list uppercase primary-color ff-oswald">
				<option selected value=".all:not(.past-events)">All</option>
				<?php
				$terms = get_terms(
					array(
						'taxonomy'   => 'event_category',
						'hide_empty' => false,
					)
				);
				foreach ( $terms as $key => $term ) {
				?>
				<option value=".<?php echo esc_attr( $term->slug ); ?>:not(.past-events)"><?php echo esc_attr( $term->name ); ?></option>
				<?php } ?>
				<option value=".past-events">Past Events</option>
			</select>
			<?php endif; ?>
		</div>
	</div>
	<?php
	$limit             = 9999;
	$events_query      = new WP_Query(array(
		'post_type'      => 'events',
		'posts_per_page' => $limit,
		'meta_key'       => 'event_date',
		'orderby'        => 'meta_value',
		'order'          => 'ASC',
	));
	if ( $events_query->have_posts() ) :
	?>
	<!-- Filter-able events grid -->
	<div class="grid-x grid-margin-x events-grid">
		<?php
		while ( $events_query->have_posts() ) :
			$events_query->the_post();
			$classes = array( 'all' );
			$terms   = wp_get_post_terms( get_the_ID(), 'event_category' );
			if ( $terms ) {
				foreach ( $terms as $key => $term ) {
					$classes[] = $term->slug;
				}
			}
			if ( strtotime( get_field( 'event_date' ) ) < mktime( 0, 0, 0 ) ) {
				$classes[] = 'past-events';
			}
		?>
		<div class="cell medium-3 <?php echo esc_attr( implode( ' ', $classes ) ); ?>">
		<?php get_template_part( 'template-parts/content', 'events' ); ?>
		</div>
		<?php endwhile; ?>
		</div>
		<?php
		else :
			get_template_part( 'template-parts/content', 'none' );
		?>
	</div>
	<?php endif; ?>

	<?php
	// Pagination.
	if ( function_exists( 'foundationpress_pagination' ) ) :
		// foundationpress_pagination();
	elseif ( is_paged() ) :
	?>
	<nav id="post-nav">
		<div class="post-previous"><?php next_posts_link( __( '&larr; Older posts', 'wrwc' ) ); ?></div>
		<div class="post-next"><?php previous_posts_link( __( 'Newer posts &rarr;', 'wrwc' ) ); ?></div>
	</nav>
	<?php endif; ?>
</div>

<!-- Page footer -->
<?php get_template_part( 'template-parts/page', 'footer' ); ?>

<?php
get_footer();
