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
				<p class="mb0 small-mobile" style="color:<?php the_sub_field( 'subtitle_color' ); ?>;"><?php the_sub_field( 'subtitle' ); ?></p>
			</div>
		</div>
	</div>
	<?php if ( $cards ) : ?>
	<div class="page-block--cta-cards__wrap" style="<?php echo esc_attr( $bg ); ?>">
		<div class="container">
			<div class="grid-x grid-margin-x padding-mobile">
				<?php foreach ( $cards as $key => $card ) : ?>
				<div class="cell medium-4 cta-card">
					<div class="cta-card__image bg-cover bg-center" style="background-image:url('<?php echo esc_attr( $card['card_image'] ); ?>');"></div>
					<div class="cta-card__content text-center">
						<h6 class="lh1 uppercase primary-color show-for-medium"><?php echo esc_html( $card['card_title'] ); ?></h6>
						<p class="tiny show-for-medium"><?php echo esc_html( $card['card_description'] ); ?></p>
						<?php
						$card_link = $card['card_link'];
						if ( $card_link ) {
						?>
						<a class="lh1 ff-oswald uppercase" href="<?php echo esc_attr( $card_link['url'] ); ?>" target="<?php echo esc_attr( $card_link['target'] ); ?>">
							<span class="show-for-medium"><?php echo esc_html( $card_link['title'] ); ?></span>
							<span class="hide-for-medium"><?php echo esc_html( $card['card_title'] ); ?> »</span>
						</a>
						<?php
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
