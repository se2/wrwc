<?php
/**
 * Posts archive page
 *
 * @category   Archive
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

get_header();
?>

<?php get_template_part( 'template-parts/page', 'header' ); ?>

<div class="blog-page">
	<div class="container">

		<div class="grid-x grid-right">
			<div class="cell medium-4 large-3">
				<?php
				if ( have_posts() ) {
					the_category_select();
				}
				?>
			</div>
		</div>

		<div class="posts-container">
			<?php
			if ( have_posts() ) :
				while ( have_posts() ) :
					the_post();
					get_template_part( 'template-parts/content', 'post' );
				endwhile;
			endif;
			?>
		</div>

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

<?php get_template_part( 'template-parts/page', 'footer' ); ?>

<?php
get_footer();
