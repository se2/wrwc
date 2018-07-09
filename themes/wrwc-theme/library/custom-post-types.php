<?php
/**
 * Add Custom Post Types here
 *
 * @package FoundationPress
 * @since FoundationPress 1.0.0
 */

/**
 *
 * Register Events Custom Post Type
 */
function custom_post_type_event() {
	$labels = array(
		'name'                  => _x( 'Events', 'Post Type General Name', 'wrwc' ),
		'singular_name'         => _x( 'Event', 'Post Type Singular Name', 'wrwc' ),
		'menu_name'             => __( 'Events', 'wrwc' ),
		'name_admin_bar'        => __( 'Post Type', 'wrwc' ),
		'archives'              => __( 'Events Archives', 'wrwc' ),
		'attributes'            => __( 'Event Attributes', 'wrwc' ),
		'parent_item_colon'     => __( 'Parent Event:', 'wrwc' ),
		'all_items'             => __( 'All Events', 'wrwc' ),
		'add_new_item'          => __( 'Add New Event', 'wrwc' ),
		'add_new'               => __( 'Add New', 'wrwc' ),
		'new_item'              => __( 'New Event', 'wrwc' ),
		'edit_item'             => __( 'Edit Event', 'wrwc' ),
		'update_item'           => __( 'Update Event', 'wrwc' ),
		'view_item'             => __( 'View Event', 'wrwc' ),
		'view_items'            => __( 'View Events', 'wrwc' ),
		'search_items'          => __( 'Search Events', 'wrwc' ),
		'not_found'             => __( 'Not found', 'wrwc' ),
		'not_found_in_trash'    => __( 'Not found in Trash', 'wrwc' ),
		'featured_image'        => __( 'Featured Image', 'wrwc' ),
		'set_featured_image'    => __( 'Set featured image', 'wrwc' ),
		'remove_featured_image' => __( 'Remove featured image', 'wrwc' ),
		'use_featured_image'    => __( 'Use as featured image', 'wrwc' ),
		'insert_into_item'      => __( 'Insert into event', 'wrwc' ),
		'uploaded_to_this_item' => __( 'Uploaded to this event', 'wrwc' ),
		'items_list'            => __( 'Events list', 'wrwc' ),
		'items_list_navigation' => __( 'Events list navigation', 'wrwc' ),
		'filter_items_list'     => __( 'Filter Events list', 'wrwc' ),
	);
	$args   = array(
		'label'               => __( 'Event', 'wrwc' ),
		'description'         => __( 'Event Description', 'wrwc' ),
		'labels'              => $labels,
		'supports'            => array( 'title', 'thumbnail', 'editor' ),
		'hierarchical'        => false,
		'public'              => true,
		'show_ui'             => true,
		'show_in_menu'        => true,
		'menu_position'       => 5,
		'menu_icon'           => 'dashicons-calendar-alt',
		'show_in_admin_bar'   => true,
		'show_in_nav_menus'   => true,
		'can_export'          => true,
		'has_archive'         => true,
		'exclude_from_search' => false,
		'publicly_queryable'  => true,
		'capability_type'     => 'page',
		'taxonomies'          => array( 'category' ),
		'rewrite'             => array( 'with_front' => false ), // This needs to be false so that custom Permalinks settings won't effect this permalink.
	);
	register_post_type( 'events', $args );
}
add_action( 'init', 'custom_post_type_event', 0 );

/**
 *
 * Register Staff Custom Post Type
 */
function custom_post_type_staff() {
	$labels = array(
		'name'                  => _x( 'Staff', 'Post Type General Name', 'wrwc' ),
		'singular_name'         => _x( 'Staff', 'Post Type Singular Name', 'wrwc' ),
		'menu_name'             => __( 'Staff', 'wrwc' ),
		'name_admin_bar'        => __( 'Post Type', 'wrwc' ),
		'archives'              => __( 'Staff Archives', 'wrwc' ),
		'attributes'            => __( 'Staff Attributes', 'wrwc' ),
		'parent_item_colon'     => __( 'Parent Staff:', 'wrwc' ),
		'all_items'             => __( 'All Staff', 'wrwc' ),
		'add_new_item'          => __( 'Add New Staff', 'wrwc' ),
		'add_new'               => __( 'Add New', 'wrwc' ),
		'new_item'              => __( 'New Staff', 'wrwc' ),
		'edit_item'             => __( 'Edit Staff', 'wrwc' ),
		'update_item'           => __( 'Update Staff', 'wrwc' ),
		'view_item'             => __( 'View Staff', 'wrwc' ),
		'view_items'            => __( 'View Staff', 'wrwc' ),
		'search_items'          => __( 'Search Staff', 'wrwc' ),
		'not_found'             => __( 'Not found', 'wrwc' ),
		'not_found_in_trash'    => __( 'Not found in Trash', 'wrwc' ),
		'featured_image'        => __( 'Featured Image', 'wrwc' ),
		'set_featured_image'    => __( 'Set featured image', 'wrwc' ),
		'remove_featured_image' => __( 'Remove featured image', 'wrwc' ),
		'use_featured_image'    => __( 'Use as featured image', 'wrwc' ),
		'insert_into_item'      => __( 'Insert into staff', 'wrwc' ),
		'uploaded_to_this_item' => __( 'Uploaded to this staff', 'wrwc' ),
		'items_list'            => __( 'Staff list', 'wrwc' ),
		'items_list_navigation' => __( 'Staff list navigation', 'wrwc' ),
		'filter_items_list'     => __( 'Filter Staff list', 'wrwc' ),
	);
	$args   = array(
		'label'               => __( 'Staff', 'wrwc' ),
		'description'         => __( 'Staff Description', 'wrwc' ),
		'labels'              => $labels,
		'supports'            => array( 'title', 'thumbnail' ),
		'hierarchical'        => false,
		'public'              => true,
		'show_ui'             => true,
		'show_in_menu'        => true,
		'menu_position'       => 5,
		'menu_icon'           => 'dashicons-groups',
		'show_in_admin_bar'   => true,
		'show_in_nav_menus'   => true,
		'can_export'          => true,
		'has_archive'         => true,
		'exclude_from_search' => false,
		'publicly_queryable'  => true,
		'capability_type'     => 'page',
		'rewrite'             => array( 'with_front' => false ), // This needs to be false so that custom Permalinks settings won't effect this permalink.
	);
	register_post_type( 'staff', $args );
}
add_action( 'init', 'custom_post_type_staff', 0 );
