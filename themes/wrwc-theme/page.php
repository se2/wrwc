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

<?php
while ( have_posts() ) :
	the_post();
?>

<?php get_template_part( 'template-parts/page-header' ); ?>

<!-- Currently disable page content, using Content Editor module -->
<!-- <div class="main-container">
	<?php // if ( get_the_content() ) : ?>
	<div class="grid-x grid-centered page-grid">
		<main class="cell large-10">
			<?php // get_template_part( 'template-parts/content', 'page' ); ?>
		</main>
	</div>
	<?php // endif; ?>
</div> -->

<?php get_template_part( 'template-parts/page', 'blocks' ); ?>

<?php get_template_part( 'template-parts/page', 'footer' ); ?>

<?php endwhile; ?>

<?php
get_footer();
