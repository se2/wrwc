<?php
/**
 * Call to Action Cards ACF Module
 *
 * @category   ACF Modules
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

$bg    = 'background-color:' . get_sub_field( 'background' ) . ';';
$cards = get_sub_field( 'cta_cards' );
?>
<div class="page-block page-block--cta-cards">
  <div class="container page-block--cta-cards__heading">
    <div class="grid-x grid-centered">
      <div class="cell medium-10 text-center">
        <h1 class="uppercase lh1 knockout-title"><?php the_sub_field( 'title' ); ?></h1>
        <p class="mb0" style="color:<?php the_sub_field( 'subtitle_color' ); ?>;"><?php the_sub_field( 'subtitle' ) ?></p>
      </div>
    </div>
  </div>
  <?php if ( $cards ) : ?>
  <div class="page-block--cta-cards__wrap" style="<?php echo esc_attr( $bg ); ?>">
    <div class="container">
      <div class="grid-x grid-margin-x">
        <?php foreach ( $cards as $key => $card ) : ?>
        <div class="cell medium-4 cta-card">
          <div class="cta-card__image bg-contain bg-center" style="background-image:url('<?php echo esc_attr( $card['card_image'] ); ?>');"></div>
          <div class="cta-card__content text-center">
            <h6 class="lh1 uppercase primary-color"><?php echo esc_html( $card['card_title'] ); ?></h6>
            <p class="tiny"><?php echo esc_html( $card['card_description'] ); ?></p>
            <?php
            $card_link = $card['card_link'];
            if ( $card_link ) {
              echo '<a class="lh1 ff-oswald uppercase" href="' . $card_link['url'] . '" target="' . $card_link['target'] . '">' . $card_link['title'] . '</a>';
            }
            ?>
          </div>
        </div>
        <?php endforeach; ?>
      </div>
    </div>
  </div>
  <?php endif; ?>
</div>
