<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the "off-canvas-wrap" div and all content after.
 *
 * @package WRWC
 * @since WRWC 1.0.0
 */
?>

<footer class="footer">
	<div id="footer-widgets" class="footer-widgets">
		<div class="container text-center--mobile">
			<div class="grid-x grid-margin-x medium-up-3 large-up-6 show-for-medium">
			<?php
			for ( $i = 1; $i <= 6 ; $i++ ) :
				if ( is_active_sidebar( 'footer-widget-'.$i ) ) :
			?>
			<div id="footer-widget-<?php echo $i; ?>" class="footer-menu cell">
				<?php dynamic_sidebar( 'footer-widget-' . $i ); ?>
			</div>
			<?php
				endif;
			endfor;
			?>
			</div>
			<?php
			// get footer-mobile
			$nav_locations = get_nav_menu_locations();
			$menu_obj      = get_term( $nav_locations['mobile-footer'], 'nav_menu' );
			$mobile_nav    = wp_get_nav_menu_items( $menu_obj );
			if ( $mobile_nav ) {
			?>
			<select name="" id="mobile-footer" onchange="location = this.value" class="hide-for-medium">
				<option value="/">Home</option>
				<?php
				foreach ( $mobile_nav as $key => $nav ) :
					$depth = ( '0' !== $nav->menu_item_parent ) ? '- ' : '';
				?>
				<option value="<?php echo esc_attr( $nav->url ); ?>"><?php echo esc_html( $depth . $nav->title ); ?></option>
				<?php endforeach; ?>
			</select>
			<?php
			}
			?>
		</div>
	</div>
	<?php if ( get_field( 'footer_signup_form', 'option' ) ) : ?>
	<div class="container footer__signup">
		<div class="footer-grid grid-x grid-margin-x flex-center-items">
			<div class="cell large-4 xlarge-5">
				<h3 class="footer__signup__form-title uppercase text-center--medium white-color mb0"><?php the_field( 'footer_signup_title', 'option' ); ?></h3>
			</div>
			<div class="cell large-8 xlarge-7">
				<?php echo do_shortcode( '[contact-form-7 id="' . get_field( 'footer_signup_form', 'option' )[0] . '"]' ); ?>
			</div>
		</div>
	</div>
	<?php endif; ?>
</footer>

<footer class="copyright">
	<div class="container">
		<div class="footer-grid grid-x grid-margin-x flex-center-items">
			<div class="cell small-12 large-5 xlarge-4">
				<p><?php bloginfo( 'name' ); ?></p>
				<p><?php the_field( 'address', 'option' ) ?></p>
				<p class="hide-for-large"></p>
			</div>
			<div class="cell small-6 large-2 xlarge-2">
				<p>Tel: <?php the_field( 'phone', 'option' ); ?></p>
				<p>Fax: <?php the_field( 'fax', 'option' ); ?></p>
			</div>
			<div class="cell small-6 large-5 xlarge-6 footer-socials text-right">
				<?php
				$socials = get_field( 'social_accounts', 'option' );
				foreach ( $socials as $key => $social ) {
					echo '<a class="footer-social text-right" href="' . $social['social_link'] . '"><span class="fab fa-' . $social['social_service'] . '"></span></a>';
				}
				?>
			</div>
		</div>
	</div>
</footer>

<?php if ( get_theme_mod( 'wpt_mobile_menu_layout' ) === 'offcanvas' ) : ?>
	</div><!-- Close off-canvas content -->
<?php endif; ?>

<?php wp_footer(); ?>
</body>
</html>
