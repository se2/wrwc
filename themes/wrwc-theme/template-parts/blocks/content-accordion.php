<?php
/**
 * Content Accordions ACF Module
 *
 * @category   ACF Modules
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

$bg         = 'background-color:' . get_sub_field( 'background' ) . ';';
$block_id   = sanitize_title( get_sub_field( 'scrolling_menu_name' ) );
$accordions = get_sub_field( 'accordions' );
?>
<div class="page-block page-block--content-accordions" style="<?php echo esc_attr( $bg ); ?>" id="<?php echo esc_attr( $block_id ); ?>">
	<div class="container">
		<div class="grid-x grid-centered">
			<div class="cell medium-10">
				<?php if ( $accordions ) : ?>
				<ul class="nostyle-list accordion" data-accordion data-allow-all-closed="true" data-slide-speed="400">
					<?php foreach ( $accordions as $key => $accordion ) { ?>
					<li class="accordion-item" data-accordion-item>
						<a href="#!" class="accordion-title">
							<h6 class="uppercase mb0 light-gray"><?php echo esc_html( $accordion['accordion_title'] ); ?></h6>
							<i class="fas fa-plus accordion-plus"></i>
						</a>
						<div class="accordion-content" data-tab-content>
							<?php the_carousel( $accordion['accordion_gallery'], 'medium', true, get_the_ID() ); ?>
							<?php echo $accordion['accordion_content']; ?>
						</div>
					</li>
					<?php } ?>
				</ul>
				<?php endif; ?>
			</div>
		</div>
	</div>
</div>
