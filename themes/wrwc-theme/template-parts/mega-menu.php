<?php
/**
 *
 * Custom Mega Menu
 * Credit: http://selfteach.me/mega-menu-wordpress-without-plugin/
 *
 * @package WRWC
 * @since WRWC 1.0.0
 */

$locations = get_nav_menu_locations();
$location  = 'top-bar-r';
if ( isset( $locations[ $location ] ) ) {
	$menu = get_term( $locations[ $location ], 'nav_menu' );
	// If there are items in the primary menu.
	if ( $items = wp_get_nav_menu_items( $menu->name ) ) { //phpcs:ignore
		// Loop through all menu items to display their content.
		foreach ( $items as $item ) {
			// If the current item is not a top level item, skip it.
			if ( '0' !== $item->menu_item_parent ) {
				continue;
			}
			// Get the ID of the current nav item.
			$cur_item_id = $item->ID;
			// Current submenu args.
			// REQUIRE 'wp_nav_menu Extended!' (https://wordpress.org/plugins/wp-nav-menu-extended/) plugin to work.
			$cur_submenu = array(
				'theme_location' => $location,
				'menu_class'     => 'mega-menu__submenu nostyle-list',
				'level'          => 2,
				'child_of'       => $item->ID,
			);
			// Build the mega-menu.
			$enable_mega_menu = get_field( 'enable_mega_menu', $item );
			if ( $enable_mega_menu ) {
			?>
			<div class="mega-menu mega-menu-<?php echo esc_attr( $cur_item_id ); ?> js-mega-menu">
				<div class="container">
					<div class="grid-x grid-margin-x">
						<div class="cell medium-4">
							<h6 class="primary-color uppercase">
								<a href="<?php echo esc_url( $item->url ); ?>"><?php echo esc_html( $item->title ); ?></a>
							</h6>
							<?php wp_nav_menu( $cur_submenu ); ?>
						</div>
						<div class="cell medium-4">
							<?php
							if ( get_field( 'spotlight', $item ) ) :
								$spotlight = get_field( 'spotlight', $item );
								$thumbnail = get_the_post_thumbnail_url( $spotlight, 'large' );
							?>
							<h6 class="primary-color uppercase">Spotlight</h6>
							<a href="<?php echo esc_url( get_permalink( $spotlight->ID ) ); ?>">
								<div class="mega-thumbnail pos-rel bg-center-top bg-cover" style="background-image:url('<?php echo esc_attr( $thumbnail ); ?>');">
									<p class="spotlight__title text-shadow bold white-color mb0"><?php echo esc_html( $spotlight->post_title ); ?></p>
									<div class="gradient-overlay"></div>
								</div>
								<p class="text-center mb0 spotlight__description"><?php the_field( 'spotlight_description', $item ); ?></p>
							</a>
							<?php endif; ?>
						</div>
						<div class="cell medium-4">
							<?php
							$special_events_id = get_field( 'special_events_category', 'option' );
							$the_query         = new WP_Query(array(
								'post_type'      => 'events',
								'posts_per_page' => 2,
								'meta_key'       => 'event_date',
								'orderby'        => 'meta_value',
								'order'          => 'ASC',
								'tax_query'      => array(
									array(
										'taxonomy' => 'event_category',
										'field'    => 'term_id',
										'terms'    => $special_events_id,
										'operator' => 'IN',
									),
								),
							));
							?>
							<?php if ( get_field( 'mega_visible', 'option' ) ) : ?>
							<h6 class="primary-color uppercase"><?php the_field( 'special_events_title', 'option' ); ?></h6>
							<?php the_event_thumbnails(); ?>
							<?php endif; ?>
						</div>
					</div>
				</div>
			</div>
			<?php
			}
		}
	}
}
?>
