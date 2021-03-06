<?php
/**
 * Single Gallery
 *
 * @category   Template
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

get_header();

while ( have_posts() ) :
	the_post();
?>

<!-- Page header -->
<?php get_template_part( 'template-parts/page', 'header' ); ?>

<div class="main-container">
	<div class="main-grid">
		<main class="main-content-full-width">
			<?php get_template_part( 'template-parts/content', 'gallery' ); ?>
		</main>
	</div>
</div>

<!-- Page footer -->
<?php get_template_part( 'template-parts/page', 'footer' ); ?>

<?php endwhile; ?>

<?php
get_footer();
