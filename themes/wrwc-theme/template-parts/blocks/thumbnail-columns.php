<?php
/**
 * Thumbnail Columns ACF Module
 *
 * @category   ACF Modules
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

$bg         = 'background-color:' . get_sub_field( 'background' ) . ';';
$thumbnails = get_sub_field( 'thumbnails' );
?>
<div class="page-block page-block--thumbnails" style="<?php echo esc_attr( $bg ); ?>">
	<div class="container">
		<div class="grid-x grid-centered">
			<div class="cell text-center">
				<h1 class="uppercase lh1 knockout-title"><?php the_sub_field( 'title' ); ?></h1>
			</div>
		</div>
		<?php if ( $thumbnails ) : ?>
		<div class="grid-x medium-up-5">
			<?php foreach ( $thumbnails as $key => $thumbnail ) : ?>
			<div class="cell text-center">
				<div class="thumbnail bg-center bg-cover" style="background-image:url('<?php echo esc_attr( $thumbnail['thumbnail']['sizes']['thumbnail'] ); ?>');"></div>
				<p class="subtitle"><?php echo esc_html( $thumbnail['thumbnail_subtitle'] ); ?></p>
				<h6 class="title mb0 uppercase"><?php echo esc_html( $thumbnail['thumbnail_title'] ); ?></h6>
			</div>
			<?php endforeach; ?>
		</div>
		<?php endif; ?>
	</div>
</div>
