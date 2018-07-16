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

<!-- Page header. -->
<?php get_template_part( 'template-parts/page', 'header' ); ?>

<!-- Special events slider. -->
<?php get_template_part( 'template-parts/events', 'special' ); ?>

<div class="main-container events-container">
	<div class="grid-x grid-right">
		<div class="cell medium-3">
			<!-- Isotope <select> filter -->
			<?php if ( have_posts() ) : ?>
			<select id="events-filter" class="nostyle-list uppercase primary-color ff-oswald">
				<option selected value="*">All</option>
				<?php
				$terms = get_terms(
					array(
						'taxonomy'   => 'event_category',
						'hide_empty' => false,
					)
				);
				foreach ( $terms as $key => $term ) {
				?>
				<option value=".<?php echo esc_attr( $term->slug ); ?>"><?php echo esc_attr( $term->name ); ?></option>
				<?php } ?>
			</select>
			<?php endif; ?>
		</div>
	</div>
	<?php if ( have_posts() ) : ?>
	<!-- Filter-able events grid -->
	<div class="grid-x grid-margin-x events-grid">
		<?php
		while ( have_posts() ) :
			the_post();
			$classes = array();
			$terms   = wp_get_post_terms( get_the_ID(), 'event_category' );
			if ( $terms ) {
				foreach ( $terms as $key => $term ) {
					$classes[] = $term->slug;
				}
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
		foundationpress_pagination();
	elseif ( is_paged() ) :
	?>
	<nav id="post-nav">
		<div class="post-previous"><?php next_posts_link( __( '&larr; Older posts', 'wrwc' ) ); ?></div>
		<div class="post-next"><?php previous_posts_link( __( 'Newer posts &rarr;', 'wrwc' ) ); ?></div>
	</nav>
	<?php endif; ?>
</div>

<!-- Page footer. -->
<?php get_template_part( 'template-parts/page', 'footer' ); ?>

<?php
get_footer();
