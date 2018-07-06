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

$bg      = 'background-color:' . get_sub_field( 'background' ) . ';';
$figures = get_sub_field( 'figures' );
$rows    = array_chunk( $figures, 3 );
?>
<div class="page-block page-block--figures" style="<?php echo esc_attr( $bg ); ?>">
	<div class="container page-block--figures__heading">
		<div class="grid-x grid-centered">
			<div class="cell text-center">
				<h1 class="uppercase lh1 knockout-title"><?php the_sub_field( 'title' ); ?></h1>
			</div>
		</div>
		<?php if ( $figures ) : ?>
		<?php foreach ( $rows as $key => $row ) : ?>
		<div class="grid-x page-block--figures__grid">
			<?php foreach ( $row as $key => $figure ) : ?>
			<div class="cell medium-4 text-center">
				<h1 class="lh1 uppercase">
					<span class="lh1 figure-prefix"><sup><?php echo esc_html( $figure['prefix'] ); ?></sup></span>
					<span class="lh1 figure-value"><?php echo esc_html( number_format( $figure['value'] ) ); ?></span>
					<span class="lh1 figure-unit"><?php echo esc_html( $figure['unit'] ); ?></span>
				</h1>
				<h6 class="mb0 uppercase secondary-color"><?php echo esc_html( $figure['description'] ); ?></h6>
			</div>
			<?php endforeach; ?>
		</div>
		<?php endforeach; ?>
		<?php endif; ?>
	</div>
</div>
