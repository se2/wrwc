<?php
/**
 * The template for displaying search results pages.
 *
 * @package WRWC
 * @since WRWC 1.0.0
 */

get_header(); ?>

<?php get_template_part( 'template-parts/page', 'header' ); ?>

<div class="main-container">
	<div class="main-grid">
		<main id="search-results" class="main-content">

		<?php if ( have_posts() ) : ?>

			<?php while ( have_posts() ) : the_post(); ?>
				<?php get_template_part( 'template-parts/content', 'search' ); ?>
			<?php endwhile; ?>

			<?php else : ?>
				<?php get_template_part( 'template-parts/content', 'none' ); ?>

		<?php endif; ?>

		<?php
		if ( function_exists( 'foundationpress_pagination' ) ) :
			foundationpress_pagination();
		elseif ( is_paged() ) :
		?>
			<nav id="post-nav">
				<div class="post-previous"><?php next_posts_link( __( '&larr; Older posts', 'foundationpress' ) ); ?></div>
				<div class="post-next"><?php previous_posts_link( __( 'Newer posts &rarr;', 'foundationpress' ) ); ?></div>
			</nav>
		<?php endif; ?>

		</main>

	</div>
</div>
<?php get_footer();
