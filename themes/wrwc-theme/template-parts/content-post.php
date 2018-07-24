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
$target     = '';
$permalink  = get_the_permalink();
if ( get_field( 'publication' ) ) {
	$permalink  = get_field( 'publication' )['url'];
	$target     = '_blank';
}
?>

<div class="post-item">
	<div class="grid-x grid-margin-x">
		<div class="cell medium-3 large-2">
			<div class="pos-rel post-thumbnail bg-cover bg-center" style="<?php echo esc_attr( $background ); ?>"></div>
		</div>
		<div class="cell medium-9 large-10 xlarge-9 post-meta text-center--mobile">
			<!-- https://wordpress.stackexchange.com/questions/52489/the-date-not-working -->
			<h6 class="post-date bold uppercase secondary-color"><?php echo get_the_date( 'F j, Y' ); ?></h6>
			<h2 class="uppercase post-title"><?php the_title(); ?></h2>
			<?php the_cta( get_field( 'publication' ), 'post-publication bold secondary-color' ); ?>
			<p>
				<?php
				if ( get_the_excerpt() ) {
					$excerpt = get_the_excerpt();
					echo $excerpt . '... ';
				?>
				<a href="<?php echo esc_url( $permalink ); ?>" class="read-more" target="<?php echo esc_attr( $target ); ?>">Keep reading »</a>
				<?php
				} else {
				?>
				<a href="<?php echo esc_url( $permalink ); ?>" class="read-more" target="<?php echo esc_attr( $target ); ?>">Keep reading »</a>
				<?php
				}
				?>
			</p>
		</div>
	</div>
</div>
