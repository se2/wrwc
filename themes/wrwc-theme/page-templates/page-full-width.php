<?php
/*
Template Name: Full Width
*/
get_header(); ?>

<?php while ( have_posts() ) : the_post(); ?>

<?php get_template_part( 'template-parts/page-header' ); ?>

<div class="main-container">
	<?php if ( get_the_content() ) : ?>
	<div class="main-grid">
		<main class="main-content-full-width">
			<?php get_template_part( 'template-parts/content', 'page' ); ?>
		</main>
	</div>
	<?php endif; ?>
</div>

<?php get_template_part( 'template-parts/page', 'blocks' ); ?>

<?php get_template_part( 'template-parts/page-footer' ); ?>

<?php endwhile; ?>

<?php get_footer();
