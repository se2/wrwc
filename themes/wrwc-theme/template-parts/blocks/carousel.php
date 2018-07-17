<?php
/**
 * Carousel ACF Module
 *
 * @category   ACF Modules
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

$bg          = 'background-color:' . ( get_sub_field( 'background' ) ? get_sub_field( 'background' ) : '#ffffff' );
$block_id    = sanitize_title( get_sub_field( 'scrolling_menu_name' ) );
$carousel    = get_sub_field( 'carousel' );
$source      = get_sub_field( 'source' );
if ( 'gallery' === $source ) {
	$carousel = get_field( 'gallery_images', get_sub_field( 'gallery' ) );
}
?>
<div class="page-block page-block--carousel" style="<?php echo esc_attr( $bg ); ?>" id="<?php echo esc_attr( $block_id ); ?>">
	<div class="container">
		<?php if ( get_sub_field( 'title' ) ) : ?>
		<h6 class="text-center uppercase lh1" style="color:<?php the_sub_field( 'title_color' ); ?>;"><?php the_sub_field( 'title' ); ?></h6>
		<?php endif; ?>
		<?php the_carousel( $carousel, 'medium', false, get_the_ID() ); ?>
	</div>
</div>
