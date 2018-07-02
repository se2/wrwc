<?php
/**
 * The template for displaying the header
 *
 * Displays all of the head element and everything up until the "container" div.
 *
 * @package WRWC
 * @since WRWC 1.0.0
 */

?>
<!doctype html>
<html class="no-js" <?php language_attributes(); ?> >
	<head>
		<meta charset="<?php bloginfo( 'charset' ); ?>" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<!-- Open Sans, Barlow, and Oswald Google Fonts -->
		<link href="https://fonts.googleapis.com/css?family=Barlow:400,700|Open+Sans:400,600,700|Oswald:400,700" rel="stylesheet">
		<?php wp_head(); ?>
	</head>
	<body <?php body_class(); ?>>

	<?php if ( get_theme_mod( 'wpt_mobile_menu_layout' ) === 'offcanvas' ) : ?>
		<?php get_template_part( 'template-parts/mobile-off-canvas' ); ?>
	<?php endif; ?>


	<header class="site-header" role="banner">
		<div class="container">
			<div class="site-title-bar title-bar" <?php foundationpress_title_bar_responsive_toggle(); ?>>
				<div class="title-bar-left">
					<button aria-label="<?php _e( 'Main Menu', 'foundationpress' ); ?>" class="menu-icon" type="button" data-toggle="<?php foundationpress_mobile_menu_id(); ?>"></button>
					<span class="site-mobile-title title-bar-title">
						<a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home">
							<?php
							$logo = get_field( 'logo', 'option' );
							if ( $logo ) :
							?>
							<img src="<?php echo esc_attr( $logo ); ?>" alt="<?php bloginfo( 'name' ); ?>" class="site-logo">
							<?php else : ?>
							<?php bloginfo( 'name' ); ?>
							<?php endif; ?>
						</a>
					</span>
				</div>
			</div>

			<nav class="site-navigation top-bar" role="navigation">
				<div class="top-bar-left">
					<div class="site-desktop-title top-bar-title">
						<a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home">
							<?php
							$logo = get_field( 'logo', 'option' );
							if ( $logo ) :
							?>
							<img src="<?php echo esc_attr( $logo ); ?>" alt="<?php bloginfo( 'name' ); ?>" class="site-logo">
							<?php else : ?>
							<?php bloginfo( 'name' ); ?>
							<?php endif; ?>
						</a>
					</div>
				</div>
				<div class="top-bar-right">

					<?php
					wp_nav_menu(
						array(
							'theme_location' => 'top-search',
							'container'      => false,
							'menu_class'     => 'dropdown menu search-menu flex-center-items grid-right',
							'depth'          => 3,
							'fallback_cb'    => false,
							'walker'         => new Foundationpress_Top_Bar_Walker(),
						)
					);
					?>

					<?php foundationpress_top_bar_r(); ?>

					<?php if ( ! get_theme_mod( 'wpt_mobile_menu_layout' ) || get_theme_mod( 'wpt_mobile_menu_layout' ) === 'topbar' ) : ?>
						<?php get_template_part( 'template-parts/mobile-top-bar' ); ?>
					<?php endif; ?>
				</div>
			</nav>
		</div>
	</header>
