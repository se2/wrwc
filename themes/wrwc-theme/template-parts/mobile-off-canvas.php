<?php
/**
 * Template part for off canvas menu
 *
 * @package WRWC
 * @since WRWC 1.0.0
 */

?>

<nav class="mobile-off-canvas-menu off-canvas position-right" id="<?php foundationpress_mobile_menu_id(); ?>" data-off-canvas data-auto-focus="false" role="navigation">
	<ul class="menu home-menu">
		<li>
			<a href="/">Home</a>
			<button class="submenu-toggle" title="Close menu" data-toggle="<?php foundationpress_mobile_menu_id(); ?>">
				<img src="<?php echo get_template_directory_uri(); ?>/dist/assets/images/close-offcanvas.png" alt="Close" class="close-offcanvas">
			</button>
		</li>
	</ul>
	<?php if ( get_field( 'mega_visible', 'option' ) ) : ?>
	<ul class="menu events-menu vertical" data-accordion-menu="ecfj03-accordion-menu" data-submenu-toggle="true" aria-multiselectable="true">
		<li class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-9999 is-accordion-submenu-parent has-submenu-toggle">
			<a href="/#!"><?php the_field( 'special_events_title', 'option' ); ?></a>
			<ul class="vertical nested menu submenu is-accordion-submenu" data-submenu="" style="display: none;">
				<li class="menu-item menu-item-type-post_type menu-item-object-page is-submenu-item is-accordion-submenu-item">
					<?php the_event_thumbnails(); ?>
				</li>
			</ul>
		</li>
	</ul>
	<?php endif; ?>
	<?php foundationpress_mobile_nav(); ?>
</nav>

<div class="off-canvas-content" data-off-canvas-content>
