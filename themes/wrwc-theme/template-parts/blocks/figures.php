<?php
/**
 * Figures ACF Module
 *
 * @category   ACF Modules
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

$bg             = 'background-color:' . get_sub_field( 'background' ) . ';';
$figures        = get_sub_field( 'figures' );
$columns        = 3;
$columns_mobile = 2;
$total          = count( $figures );
$rows           = intval( floor( $total / $columns ) );
$rows_mobile    = intval( floor( $total / $columns_mobile ) );
if ( $rows * $columns === $total ) {
	$rows -= 1;
}
if ( $rows_mobile * $columns_mobile === $total ) {
	$rows_mobile -= 1;
}
$last_row_index        = $rows * $columns;
$last_row_index_mobile = $rows_mobile * $columns_mobile;
?>
<div class="page-block page-block--figures" style="<?php echo esc_attr( $bg ); ?>">
	<div class="container page-block--figures__heading">
		<div class="grid-x grid-centered">
			<div class="cell text-center">
				<h1 class="uppercase lh1 knockout-title"><?php the_sub_field( 'title' ); ?></h1>
			</div>
		</div>
		<?php if ( $figures ) : ?>
		<div class="grid-x page-block--figures__grid">
			<?php
			foreach ( $figures as $key => $figure ) :
				$classes = '';
				if ( $key >= $last_row_index ) {
					$classes .= ' ' . 'no-bottom-border';
				}
				if ( $key >= $last_row_index_mobile ) {
					$classes .= ' ' . 'no-bottom-border--mobile';
				}
			?>
			<div class="cell small-6 large-4 text-center<?php echo esc_attr( $classes ) ; ?>">
				<h1 class="lh1 uppercase">
					<span class="lh1 figure-value"><sup><?php echo esc_html( $figure['prefix'] ); ?></sup><?php echo esc_html( $figure['value'] ); ?></span>
				</h1>
				<h6 class="mb0 uppercase secondary-color"><?php echo esc_html( $figure['description'] ); ?></h6>
			</div>
			<?php endforeach; ?>
		</div>
		<?php endif; ?>
	</div>
</div>
