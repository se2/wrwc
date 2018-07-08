<?php
/**
 *
 * Custom Mega Menu
 *
 * @package WRWC
 * @since WRWC 1.0.0
 */

?>
<?php
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
			<div class="keep-mega-menu mega-menu mega-menu-<?php echo esc_attr( $cur_item_id ); ?> js-mega-menu">
				<div class="container">
					<div class="grid-x grid-margin-x">
						<div class="cell medium-4">
							<h6 class="primary-color uppercase">
								<a href="<?php echo esc_url( $item->url ); ?>"><?php echo esc_html( $item->title ); ?></a>
							</h6>
							<?php wp_nav_menu( $cur_submenu ); ?>
						</div>
						<div class="cell medium-4">
							<h6 class="primary-color uppercase">Spotlight</h6>
						</div>
						<div class="cell medium-4">
							<?php
							$special_events_id = 4;
							$the_query         = get_posts_query( $special_events_id, 2, 'events' );
							?>
							<?php if ( $the_query->have_posts() ) : ?>
							<h6 class="primary-color uppercase">Upcoming Events</h6>
							<div class="grid-x grid-margin-x special-events">
								<?php
								while ( $the_query->have_posts() ) :
									$the_query->the_post();
									$thumbnail = get_the_post_thumbnail_url( $post, 'medium' );
									if ( get_field( 'mega_menu_image' ) ) {
										$thumbnail = get_field( 'mega_menu_image' )['sizes']['medium'];
									}
								?>
								<div class="cell medium-6">
									<a href="<?php the_permalink(); ?>">
										<div class="special-events__thumbnail pos-rel bg-center-bottom bg-cover" style="background-image:url('<?php echo esc_attr( $thumbnail ); ?>');">
											<div class="special-events__date">
												<p class="event-month lh1 uppercase bold"><?php echo esc_html( explode( ' ', get_field( 'event_date' ) )[0] ); ?></p>
												<p class="event-day lh1 bold mb0"><?php echo esc_html( explode( ' ', get_field( 'event_date' ) )[1] ); ?></p>
											</div>
										</div>
										<p class="text-center bold mb0 special-events__title primary-color"><?php the_title(); ?></p>
									</a>
								</div>
								<?php endwhile; ?>
							</div>
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
