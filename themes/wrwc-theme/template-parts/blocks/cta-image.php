<?php
/**
 * Call to Action with Image ACF Module
 *
 * @category   ACF Modules
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

$bg = 'background-color:' . get_sub_field( 'background' ) . ';';
?>
<div class="page-block page-block--cta-image pos-rel" style="<?php echo esc_attr( $bg ); ?>">
	<?php if ( get_sub_field( 'featured_image' ) ) : ?>
	<div class="page-block--cta-image__img bg-center bg-cover" style="background-image:url('<?php the_sub_field( 'featured_image' ); ?>');"></div>
	<?php endif; ?>
	<div class="container page-block--cta-image__heading">
		<div class="grid-x flex-center-items page-block--cta-image__content padding-mobile">
			<div class="cell large-5 text-center--medium">
				<h1 class="uppercase lh1" style="color:<?php the_sub_field( 'title_color' ); ?>;"><?php the_sub_field( 'title' ); ?></h1>
				<p class="fz-24" style="color:<?php the_sub_field( 'subtitle_color' ); ?>;"><?php the_sub_field( 'subtitle' ); ?></p>
				<?php the_cta( get_sub_field( 'cta' ), 'button large mb0' ); ?>
			</div>
		</div>
	</div>
</div>
