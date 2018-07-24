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
?>
<div class="page-block page-block--tiers" style="<?php echo esc_attr( $bg ); ?>" id="<?php echo esc_attr( $block_id ); ?>">
	<div class="container">
		<h4 class="uppercase lh1 text-center" style="color:<?php the_sub_field( 'title_color' ); ?>;"><?php the_sub_field( 'title' ); ?></h4>
		<?php
		$tiers_rows = get_sub_field( 'tiers_rows' );
		if ( $tiers_rows ) :
			foreach ( $tiers_rows as $key => $tiers_row ) {
				$border = ( $tiers_row['border_bottom'] ) ? 'border-bottom' : '';
		?>
		<div class="tiers-row grid-centered <?php echo esc_attr( $border . ' ' . $tiers_row['tier_level'] ); ?>">
			<h6 class="text-center uppercase lh1 tiers-row__title" style="color:<?php the_sub_field( 'title_color' ); ?>;">
				<?php echo esc_attr( $tiers_row['tier_title'] ); ?>
			</h6>
			<div class="tiers-row__content">
				<div class="tiers-row__grid grid-centered">
					<?php foreach ( $tiers_row['tiers'] as $key => $tier ) { ?>
					<div class="cell text-center tier-cell">
						<div class="tier-image bg-contain bg-center" style="background-image:url('<?php echo esc_attr( $tier['tier_image'] ); ?>');">
							<a href="<?php echo esc_url( $tier['tier_link'] ? $tier['tier_link'] : '#!' ); ?>" class="light-gray" target="_blank" title="<?php echo esc_attr( $tier['tier_name'] ); ?>">
							<?php echo ( 'level_3' === $tiers_row['tier_level'] ) ? esc_attr( $tier['tier_name'] ) : ''; ?>
							</a>
						</div>
					</div>
					<?php } ?>
				</div>
			</div>
		</div>
		<?php
			}
		?>
		<?php endif; ?>
	</div>
</div>
