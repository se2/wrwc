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
	<div class="footer-container">
		<div class="footer-grid">
			<?php dynamic_sidebar( 'footer-widgets' ); ?>
		</div>
	</div>
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
					echo '<a class="footer-social text-right" href="' . $social['social_link'] . '"><span class="icon icon-' . $social['social_service'] . '"></span></a>';
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