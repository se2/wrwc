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
		<div class="grid-x flex-center-items">
			<div class="cell text-center">
				<h4 class="uppercase lh1" style="color:<?php the_sub_field( 'title_color' ); ?>;"><?php the_sub_field( 'title' ); ?></h4>
			</div>
		</div>
		<?php
		$tiers_rows = get_sub_field( 'tiers_rows' );
		if ( $tiers_rows ) :
			foreach ( $tiers_rows as $key => $tiers_row ) {
				$level_class = 'medium-2';
				if ( 'level_1' === $tiers_row['tier_level'] ) {
					$level_class = 'medium-4';
				}
		?>
		<div class="grid-x tiers-row grid-centered grid-margin-x <?php echo ( $tiers_row['border_bottom'] ? 'tiers-row__border ' : '' ) . esc_attr( $tiers_row['tier_level'] ); ?>">
			<div class="cell">
				<h6 class="text-center uppercase lh1 tiers-row__title" style="color:<?php the_sub_field( 'title_color' ); ?>;">
					<?php echo esc_attr( $tiers_row['tier_title'] ); ?>
				</h6>
			</div>
			<?php
			// Loop each tier.
			$base        = 3;
			$total_tiers = count( $tiers_row['tiers'] );
			$remains     = $total_tiers % $base;
			foreach ( $tiers_row['tiers'] as $key => $tier ) {
				$side_class = '';
				// Check if tier is in the sides.
				if ( ( $key < $total_tiers - $remains ) ) {
					if ( 2 === $key % $base ) {
						$side_class = 'right';
					}
					if ( 0 === $key % $base ) {
						$side_class = 'left';
					}
				}
			?>
			<div class="cell text-center <?php echo esc_attr( $level_class . ' ' . $side_class ); ?>">
				<div class="tier-image">
					<a href="<?php echo esc_url( $tier['tier_link'] ? $tier['tier_link'] : '#!' ); ?>" class="light-gray">
					<?php echo ( 'level_3' === $tiers_row['tier_level'] ) ? esc_attr( $tier['tier_name'] ) : ''; ?>
					</a>
				</div>
			</div>
			<?php
			}
			?>
		</div>
		<?php
			}
		?>
		<?php endif; ?>
	</div>
</div>
