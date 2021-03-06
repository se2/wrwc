<?php
/**
 * The template for displaying Events CPT content loop
 *
 * @category   Content
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

$thumbnail = get_the_post_thumbnail_url( $post, 'large' );
$date_arr  = get_date_array( get_field( 'event_date', $post->ID ) );
if ( get_field( 'mega_menu_image' ) ) {
	$thumbnail = get_field( 'mega_menu_image' )['sizes']['large'];
}
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<div class="event-loop pos-rel bg-cover bg-center-bottom" style="background-image:url('<?php echo esc_attr( $thumbnail ); ?>');">
		<div class="event-loop__date text-center">
			<p class="ff-oswald white-color mb0 month lh1 uppercase bold"><?php echo esc_html( $date_arr['month'] ); ?></p>
			<p class="ff-oswald white-color day lh1 bold mb0"><?php echo esc_html( $date_arr['day'] ); ?></p>
		</div>
		<p class="event-loop__title mb0 pos-abs ff-oswald">
			<span class="mb0 bold white-color uppercase"><?php the_title(); ?></span><br>
			<a class="bold uppercase" href="<?php the_permalink(); ?>">Learn More »</a>
		</p>
		<div class="gradient-overlay--black"></div>
	</div>
</article>
