<?php
/**
 * The default template for displaying gallery content
 *
 * @package WRWC
 * @since WRWC 1.0.0
 */

?>
<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<div class="gallery-item <?php echo ( ! is_single() ) ? 'border-bottom' : ''; ?>">
		<?php if ( ! is_single() ) : ?>
		<h4 class="uppercase light-gray gallery-title"><?php the_title(); ?></h4>
		<?php endif; ?>
		<?php if ( isset( $gallery_title ) && ! empty( $gallery_title ) ) : // Data from [wrwc_gallery] shortcode. ?>
		<h4 class="uppercase light-gray gallery-title"><?php echo ( 'default' === $gallery_title ) ? esc_html( get_the_title() ) : esc_html( $gallery_title ); ?></h4>
		<?php endif; ?>
		<?php if ( get_field( 'gallery_images' ) ) : ?>
		<div class="masonry-grid" id="gallery-<?php the_ID(); ?>">
			<div class="grid-sizer"></div>
			<?php
			$limit   = 7;
			$max     = is_single() ? 999999 : $limit;
			// Data from [wrwc_gallery] shortcode.
			if ( isset( $gallery_limit ) ) {
				$max = $gallery_limit;
			}
			$gallery = get_field( 'gallery_images' );
			foreach ( $gallery as $key => $img ) :
				$grid_width = '';
				if ( $key < $max ) :
			?>
			<div class="grid-item">
				<a href="<?php echo esc_attr( $img['url'] ); ?>" data-lightbox="gallery-<?php the_ID(); ?>">
					<img src="<?php echo esc_attr( $img['sizes']['large'] ); ?>" alt="" class=".grid-item">
				</a>
			</div>
			<?php
				endif;
			endforeach;
			?>
		</div>
		<?php endif; ?>
		<?php if ( ! is_single() || ( isset( $gallery_more ) && ( 'true' === $gallery_more ) && count( $gallery ) > $gallery_limit ) ) : // Data from [wrwc_gallery] shortcode. ?>
		<div class="grid-x grid-margin-x grid-centered">
			<div class="cell text-center">
				<a href="<?php the_permalink(); ?>" class="button w100p gallery-see-more">See More</a>
			</div>
		</div>
		<?php endif; ?>
	</div>
</article>
