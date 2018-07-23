<?php
/**
 * Content Editor ACF Module
 *
 * @category   ACF Modules
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

$bg       = 'background-color:' . get_sub_field( 'background' ) . ';';
$block_id = sanitize_title( get_sub_field( 'scrolling_menu_name' ) );
$border   = get_sub_field( 'border_bottom' ) ? 'border-bottom' : '';
?>
<div class="page-block page-block--editor" style="<?php echo esc_attr( $bg ); ?>" id="<?php echo esc_attr( $block_id ); ?>">
	<div class="container <?php echo esc_attr( $border ); ?>">
		<div class="grid-x grid-centered">
			<div class="cell large-10">
				<?php the_sub_field( 'editor' ); ?>
			</div>
		</div>
	</div>
</div>
