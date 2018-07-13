<?php
/**
 * The template for displaying Staff CPT content loop
 *
 * @category   Content
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

$thumbnail = get_the_post_thumbnail_url( $post, 'large' );
if ( get_field( 'mega_menu_image' ) ) {
	$thumbnail = get_field( 'mega_menu_image' )['sizes']['large'];
}
?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
  <div class="staff-loop pos-rel bg-cover bg-center-bottom" style="background-image:url('<?php echo esc_attr( $thumbnail ); ?>');">
    <?php
    if ( get_field( 'email' ) ) :
      // Anti-spambot email
      echo do_shortcode( '[email]' . get_field( 'email' ) . '[/email]' );
    endif;
    ?>
		<p class="staff-loop__title mb0 pos-abs ff-oswald">
			<span class="mb0 bold white-color uppercase"><?php the_title(); ?></span><br>
		</p>
		<div class="gradient-overlay--black"></div>
  </div>
  <p class="primary-color semibold staff-loop__position mb0"><?php the_field( 'position' ); ?></p>
</article>
