<?php
/**
 * The template for displaying pages
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages and that
 * other "pages" on your WordPress site will use a different template.
 *
 * @package WRWC
 * @since WRWC 1.0.0
 */

get_header(); ?>

<?php while ( have_posts() ) : the_post(); ?>

<?php get_template_part( 'template-parts/page-header' ); ?>

<div class="main-container">
	<div class="main-grid">
		<main class="main-content">
			<?php get_template_part( 'template-parts/content', 'page' ); ?>
		</main>
		<?php get_sidebar(); ?>
	</div>
</div>

<?php get_template_part( 'template-parts/page-footer' ); ?>

<?php endwhile; ?>

<?php
get_footer();
