<?php
/**
 * Single Event
 *
 * @category   Template
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

get_header(); ?>

<?php
while ( have_posts() ) :
	the_post();
?>

<?php get_template_part( 'template-parts/page-header' ); ?>

<div class="main-container">
	<?php if ( get_the_content() ) : ?>
	<div class="main-grid">
		<main class="main-content-full-width">
			<?php get_template_part( 'template-parts/content' ); ?>
		</main>
	</div>
	<?php endif; ?>
</div>

<?php get_template_part( 'template-parts/page', 'blocks' ); ?>

<?php get_template_part( 'template-parts/page', 'footer' ); ?>

<?php endwhile; ?>

<?php
get_footer();
