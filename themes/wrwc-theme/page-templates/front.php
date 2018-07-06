<?php
/**
 * Template Name: Front
 *
 * @category   Template
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

get_header(); ?>

<?php do_action( 'foundationpress_before_content' ); ?>

<?php
while ( have_posts() ) :
	the_post();
?>

<!-- Home Hero Banner -->
<?php
$hero_gallery = get_field( 'hero_gallery' ) ? get_field( 'hero_gallery' ) : array( array( 'url' => get_template_directory_uri() . '/dist/assets/images/default-hero.jpg' ) );
if ( $hero_gallery ) {
	$random_index = rand( 0, count( $hero_gallery ) - 1 );
	$current_hero = $hero_gallery[ $random_index ]['url'];
}
?>
<header class="front-hero" role="banner">
	<div class="container h100p">
		<div class="grid-x flex-center-items">
			<div class="cell medium-5 front-hero__text text-center">
				<h2><?php the_field( 'hero_text' ); ?></h2>
				<?php the_cta( get_field( 'hero_cta_link' ), 'button white medium mb0' ); ?>
			</div>
		</div>
	</div>
	<?php if ( $hero_gallery ) : ?>
	<div class="front-hero__gallery bg-cover bg-left" style="background-image:url('<?php echo esc_attr( $current_hero ); ?>');">
		<div class="gradient-overlay--green"></div>
	</div>
	<?php endif; ?>
	<img class="footer-wave" src="<?php echo esc_attr( get_template_directory_uri() ); ?>/dist/assets/images/wave-2.png" alt="">
</header>
<!-- /Home Hero Banner -->

<?php get_template_part( 'template-parts/page', 'blocks' ); ?>

<?php endwhile; ?>

<?php do_action( 'foundationpress_after_content' ); ?>

<?php
get_footer();
