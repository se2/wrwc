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

$bg = 'background-color:' . get_sub_field( 'background' ) . ';';
?>
<div class="page-block page-block--tiers" style="<?php echo esc_attr( $bg ); ?>">
	<div class="container">
		<div class="grid-x flex-center-items">
			<div class="cell text-center">
				<h4 class="mb0 uppercase lh1" style="color:<?php the_sub_field( 'title_color' ); ?>;"><?php the_sub_field( 'title' ); ?></h4>
			</div>
		</div>
	</div>
</div>
