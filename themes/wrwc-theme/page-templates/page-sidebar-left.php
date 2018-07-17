<?php
/**
 * Template Name: Left Sidebar
 */

get_header(); ?>

<?php while ( have_posts() ) : the_post(); ?>

<?php get_template_part( 'template-parts/page', 'header' ); ?>

<div class="main-container">
	<div class="main-grid sidebar-left">
		<main class="main-content">
			<?php get_template_part( 'template-parts/content', 'page' ); ?>
		</main>
		<?php get_sidebar(); ?>
	</div>
</div>

<?php get_template_part( 'template-parts/page', 'footer' ); ?>

<?php endwhile; ?>

<?php
get_footer();
