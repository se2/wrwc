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
		<div class="grid-x grid-centered padding-mobile">
			<div class="cell text-center">
				<h1 class="uppercase lh1 knockout-title"><?php the_sub_field( 'title' ); ?></h1>
			</div>
		</div>
		<?php if ( $thumbnails ) : ?>
		<div class="grid-x small-up-2 medium-up-5 grid-centered padding-mobile page-block--thumbnails__grid">
			<?php foreach ( $thumbnails as $key => $thumbnail ) : ?>
			<div class="cell text-center">
				<div class="thumbnail bg-center bg-cover" style="background-image:url('<?php echo esc_attr( $thumbnail['thumbnail']['sizes']['thumbnail'] ); ?>');">
					<?php
					if ( $thumbnail['thumbnail_link'] ) {
					?>
					<a href="<?php echo esc_url( $thumbnail['thumbnail_link'] ); ?>"></a>
					<?php
					}
					?>
				</div>
				<?php
				if ( $thumbnail['thumbnail_link'] ) {
				?>
				<a href="<?php echo esc_url( $thumbnail['thumbnail_link'] ); ?>">
				<?php
				}
				?>
				<p class="subtitle"><?php echo esc_html( $thumbnail['thumbnail_subtitle'] ); ?></p>
				<h6 class="title mb0 uppercase"><?php echo esc_html( $thumbnail['thumbnail_title'] ); ?></h6>
				<?php
				if ( $thumbnail['thumbnail_link'] ) {
				?>
				</a>
				<?php
				}
				?>
			</div>
			<?php endforeach; ?>
		</div>
		<?php endif; ?>
	</div>
</div>
