<?php
/**
 * Tiers ACF Module
 *
 * @category   ACF Modules
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

$bg       = 'background-color:' . get_sub_field( 'background' ) . ';';
$block_id = sanitize_title( get_sub_field( 'scrolling_menu_name' ) );
$border   = get_sub_field( 'border_bottom' ) ? 'page-block--maps--border' : '';
?>
<div class="page-block page-block--maps <?php echo esc_attr( $border ); ?>" style="<?php echo esc_attr( $bg ); ?>" id="<?php echo esc_attr( $block_id ); ?>">
	<div class="container">
		<h4 class="uppercase lh1" style="color:<?php the_sub_field( 'title_color' ); ?>;"><?php the_sub_field( 'title' ); ?></h4>
		<?php
		$maps = get_sub_field( 'maps' );
		if ( $maps ) :
		?>
		<div class="grid-x grid-margin-x">
			<?php foreach ( $maps as $key => $map ) { ?>
			<div class="cell medium-<?php echo esc_attr( $map['map_width'] ); ?>">
				<a href="<?php echo esc_attr( $map['map_image']['url'] ); ?>" data-lightbox="map-<?php echo esc_attr( $key ); ?>" data-title="<?php echo esc_attr( $map['map_caption'] ); ?>">
					<img src="<?php echo esc_attr( $map['map_image']['sizes']['large'] ); ?>" alt="" class="map-image w100p">
				</a>
				<p class="map-caption"><?php echo esc_attr( $map['map_caption'] ); ?></p>
			</div>
			<?php } ?>
		</div>
		<?php endif; ?>
	</div>
</div>
