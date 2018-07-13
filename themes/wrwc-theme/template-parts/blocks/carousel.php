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

$bg          = 'background-color:' . get_sub_field( 'background' ) . ';';
$block_id    = sanitize_title( get_sub_field( 'scrolling_menu_name' ) );
$carousel_id = random_int( 0, 999999 );
?>
<div class="page-block page-block--carousel" style="<?php echo esc_attr( $bg ); ?>" id="<?php echo esc_attr( $block_id ); ?>">
	<div class="container">
		<div class="grid-x">
			<div class="cell text-center">
				<h6 class="uppercase lh1" style="color:<?php the_sub_field( 'title_color' ); ?>;"><?php the_sub_field( 'title' ); ?></h6>
			</div>
		</div>
		<?php if ( $carousel = get_sub_field( 'carousel' ) ) : ?>
		<div class="carousel__wrap">
			<div class="carousel">
			<?php foreach ( $carousel as $key => $slide ) : ?>
			<div class="carousel__slide">
				<a href="<?php echo esc_attr( $slide['url'] ); ?>" data-lightbox="carousel-<?php echo esc_attr( $carousel_id ); ?>">
					<div class="inner bg-cover bg-center" style="background-image:url('<?php echo esc_attr( $slide['sizes']['large'] ); ?>');"></div>
				</a>
			</div>
			<?php endforeach; ?>
			</div>
		</div>
		<?php endif; ?>
	</div>
</div>
