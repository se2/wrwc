<?php
/**
 * The template for displaying Post CPT content loop
 *
 * @category   Content
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

$thumb_url  = get_the_post_thumbnail_url( get_the_ID(), 'large' );
$background = ( $thumb_url ) ? 'background-image:url("' . $thumb_url . '");' : '';
?>

<div class="post-item">
	<div class="grid-x grid-margin-x">
		<div class="cell medium-2">
			<div class="pos-rel post-thumbnail bg-cover bg-center" style="<?php echo esc_attr( $background ); ?>"></div>
		</div>
		<div class="cell medium-9 post-meta">
			<!-- https://wordpress.stackexchange.com/questions/52489/the-date-not-working -->
			<h6 class="post-date bold uppercase secondary-color"><?php echo get_the_date( 'F j, Y' ); ?></h6>
			<h2 class="uppercase post-title"><?php the_title(); ?></h2>
			<?php
			if ( get_the_excerpt() ) {
				the_excerpt();
			} else {
			?>
			<a href="<?php the_permalink(); ?>" class="read-more">Keep reading »</a>
			<?php
			}
			?>
		</div>
	</div>
</div>
