<?php
/**
 * Template Name: Fullwidth
 * Template Post Type: post
 *
 * @category   Template
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

get_header();
?>

<?php
if ( get_field( 'banner_image' ) ) {
	get_template_part( 'template-parts/featured-image' );
} else {
	get_template_part( 'template-parts/page', 'header' );
}
?>

<div class="main-container">
	<div class="main-grid grid-centered full">
		<?php while ( have_posts() ) : the_post(); ?>
		<header class="main-content-full-width">
			<h6 class="post-date bold uppercase secondary-color"><?php the_date( 'F j, Y' ); ?></h6>
			<h2 class="uppercase post-title"><?php the_title(); ?></h2>
			<p class="bold secondary-color"></p>
		</header>
		<main class="main-content-full-width">
			<?php get_template_part( 'template-parts/content', '' ); ?>
			<?php the_socials_share( array( 'facebook', 'twitter', 'google-plus', 'email' ) ); ?>
			<?php comments_template(); ?>
		</main>
		<?php endwhile; ?>
	</div>
</div>

<?php get_template_part( 'template-parts/page', 'footer' ); ?>

<?php get_footer();