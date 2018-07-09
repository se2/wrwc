<?php
/**
 * Call to Action ACF Module
 *
 * @category   ACF Modules
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

$bg       = 'background-color:' . get_sub_field( 'background' ) . ';';
$bg_style = 'bg-contain bg-right';
if ( get_sub_field( 'background_image' ) ) {
	$bg .= 'background-image:url("' . get_sub_field( 'background_image' ) . '");';
}
?>
<div class="page-block page-block--cta <?php the_sub_field( 'cta_layout' ); ?> <?php echo esc_attr( $bg_style ); ?>" style="<?php echo esc_attr( $bg ); ?>">
	<div class="container">
		<div class="grid-x flex-center-items">
			<?php if ( 'side' === get_sub_field( 'cta_layout' ) ) : ?>
			<div class="cell medium-8">
				<h5 class="uppercase lh1" style="color:<?php the_sub_field( 'title_color' ); ?>;"><?php the_sub_field( 'title' ); ?></h5>
				<p class="mb0 fz-20" style="color:<?php the_sub_field( 'subtitle_color' ); ?>;"><?php the_sub_field( 'subtitle' ); ?></p>
			</div>
			<div class="cell medium-2 medium-offset-2 text-right">
				<?php the_cta( get_sub_field( 'cta' ), 'button white mb0' ); ?>
			</div>
			<?php else : ?>
			<div class="cell medium-4">
				<h5 class="uppercase lh1" style="color:<?php the_sub_field( 'title_color' ); ?>;"><?php the_sub_field( 'title' ); ?></h5>
			</div>
			<div class="cell medium-2">
				<?php the_cta( get_sub_field( 'cta' ), 'button white mb0' ); ?>
			</div>
			<?php endif; ?>
		</div>
	</div>
</div>
