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
		<?php if ( get_field( 'gallery_images' ) ) : ?>
		<div class="masonry-grid" id="gallery-<?php the_ID(); ?>">
			<div class="grid-sizer"></div>
			<?php
			$limit   = 7;
			$max     = is_single() ? 999999 : $limit;
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
		<?php if ( ! is_single() ) : ?>
		<div class="grid-x grid-margin-x grid-centered">
			<div class="cell small-6 medium-3 large-2">
				<a href="<?php the_permalink(); ?>" class="button w100p gallery-see-more">See More</a>
			</div>
		</div>
		<?php endif; ?>
	</div>
</article>
