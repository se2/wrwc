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

get_header(); ?>

<!-- Special events slider. -->
<?php get_template_part( 'template-parts/events', 'special' ); ?>

<div class="main-container events-container">
	<div class="container">
		<?php if ( have_posts() ) : ?>
		<div class="grid-x grid-margin-x">
		<?php
			while ( have_posts() ) :
				the_post();
		?>
		<div class="cell medium-3">
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
</div>

<!-- Page footer. -->
<?php get_template_part( 'template-parts/page', 'footer' ); ?>

<?php
get_footer();
