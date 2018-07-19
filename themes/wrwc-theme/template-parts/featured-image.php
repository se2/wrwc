<?php
// If a banner image is set, insert into layout and use Interchange
// to select the optimal image size per named media query.
if ( get_field( 'banner_image', $post->ID ) ) :
	$banner_id = get_field( 'banner_image', $post->ID );
?>
	<header class="featured-hero" role="banner" data-interchange="[<?php echo wp_get_attachment_image_src( $banner_id, 'featured-small' )[0]; ?>, small], [<?php echo wp_get_attachment_image_src( $banner_id, 'featured-medium' )[0]; ?>, medium], [<?php echo wp_get_attachment_image_src( $banner_id, 'featured-large' )[0]; ?>, large], [<?php echo wp_get_attachment_image_src( $banner_id, 'featured-xlarge' )[0]; ?>, xlarge]">
	</header>
<?php endif;
