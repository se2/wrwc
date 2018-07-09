<?php
/**
 * Default page header
 *
 * @category   Components
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

// Default values.
$default_bg          = get_template_directory_uri() . '/dist/assets/images/page-title.png';
$page_gradient       = get_template_directory_uri() . '/dist/assets/images/page-gradient.png';
$default_title_color = '#FFFFFF';
$featured_img        = get_the_post_thumbnail_url( $post, 'full' );

// Page values.
$bg          = get_field( 'page_title_background' ) ? get_field( 'page_title_background' ) : $default_bg;
$title_color = get_field( 'page_title_color' ) ? get_field( 'page_title_color' ) : $default_title_color;
?>

<header class="page-header bg-cover bg-center-bottom" style="background-image:url('<?php echo esc_url( $bg ); ?>');">
  <div class="container text-center">
    <h1 class="bold uppercase white-color mb0 entry-title" style="color:<?php echo esc_attr( $title_color ); ?>;"><?php the_title(); ?></h1>
  </div>
</header>

<?php
if ( get_field( 'show_scrolling_menu' ) ) :
	if ( have_rows( 'page_blocks' ) ) :
?>
<!-- Inner page scrolling menu -->
<div class="page-block page-block--inner-scroll" style="background-color:#494949;">
  <div id="page-scroll">
    <?php
    $index = 0;
    while ( have_rows( 'page_blocks' ) ) :
      the_row();
      $block_id = sanitize_title( get_sub_field( 'scrolling_menu_name' ) );
      if ( get_sub_field( 'scrolling_menu_name' ) ) :
    ?>
    <a href="#<?php echo esc_attr( $block_id ); ?>" class="bold white-color <?php echo ( 0 === $index ) ? 'is-active' : ''; ?>"><?php the_sub_field( 'scrolling_menu_name' ); ?></a>
    <?php endif; ?>
    <?php $index++; ?>
    <?php endwhile; ?>
  </div>
</div>
<!-- Dummy div with same height to account for absolute position -->
<div class="page-block--inner-scroll__dummy"></div>
<!-- /Inner page scrolling menu -->
<?php
	endif;
endif;
?>

<?php if ( get_field( 'overview_visible' ) ) : ?>
<div class="page-overview bg-cover" style="background-image:url('<?php echo esc_url( $featured_img ); ?>');">
  <div class="container">
    <div class="grid-x page-overview__grid flex-center-items">
      <div class="cell medium-5">
        <h1 class="uppercase"><?php the_field( 'overview_title' ); ?></h1>
        <p><?php the_field( 'overview_text' ); ?></p>
        <?php the_cta( get_field( 'overview_cta' ), 'button white mb0' ); ?>
      </div>
    </div>
  </div>
  <img src="<?php echo esc_url( $page_gradient ); ?>" alt="" class="page-overview__gradient">
</div>
<?php endif; ?>