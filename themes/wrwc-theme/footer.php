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
		<div class="container">
			<div class="grid-x grid-margin-x medium-up-3 large-up-6">
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
		</div>
	</div>
	<?php if ( get_field( 'footer_signup_form', 'option' ) ) : ?>
	<div class="container footer__signup">
		<div class="footer-grid grid-x grid-margin-x flex-center-items">
			<div class="cell medium-5">
				<h3 class="uppercase white-color mb0"><?php the_field( 'footer_signup_title', 'option' ); ?></h3>
			</div>
			<div class="cell medium-7">
				<?php echo do_shortcode( '[contact-form-7 id="' . get_field( 'footer_signup_form', 'option' )[0] . '"]' ); ?>
			</div>
		</div>
	</div>
	<?php endif; ?>
</footer>

<footer class="copyright">
	<div class="container">
		<div class="footer-grid grid-x grid-margin-x flex-center-items">
			<div class="cell medium-4">
				<p class="mb0"><?php bloginfo( 'name' ); ?></p>
				<p class="mb0"><?php the_field( 'address', 'option' ) ?></p>
			</div>
			<div class="cell medium-2">
				<p class="mb0">Tel: <?php the_field( 'phone', 'option' ); ?></p>
				<p class="mb0">Fax: <?php the_field( 'fax', 'option' ); ?></p>
			</div>
			<div class="cell medium-6 footer-socials text-right">
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
