<?php
/**
 * 2-Column Call to Action ACF Module
 *
 * @category   ACF Modules
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

?>
<div class="page-block page-block--2-col-cta pos-rel">
	<?php
	$ctas = get_sub_field( 'cta_columns' );
	$rows = array_chunk( $ctas, 2 );
	foreach ( $rows as $key => $row ) :
	?>
	<div class="grid-x pos-rel">
		<?php foreach ( $row as $key => $cell ) : ?>
		<div class="cell medium-6 bg-cover bg-center pos-rel" style="background-image:url('<?php echo esc_attr( $cell['background_image'] ); ?>');">
			<div class="inner text-center">
				<h3 class="uppercase white-color mb0"><?php echo esc_html( $cell['cta_title'] ); ?></h3>
				<p class="white-color mb0"><?php echo esc_html( $cell['cta_subtitle'] ); ?></p>
				<?php the_cta( $cell['cta_link'], 'button white mb0' ); ?>
			</div>
			<div class="gradient-overlay--black"></div>
		</div>
		<?php endforeach; ?>
		<img class="footer-wave" src="<?php echo esc_attr( get_template_directory_uri() ); ?>/dist/assets/images/wave-2.png" alt="">
	</div>
	<?php endforeach; ?>
</div>
