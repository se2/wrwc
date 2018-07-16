<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
  <div class="gallery-item">
    <h4 class="uppercase light-gray gallery-title"><?php the_title(); ?></h4>
    <?php if ( get_field( 'gallery_images' ) ) : ?>
    <div class="grid-x grid-margin-x masonry-grid large-up-4" id="gallery-<?php the_ID(); ?>">
      <?php
      $max     = 7;
      $gallery = get_field( 'gallery_images' );
      foreach ( $gallery as $key => $img ) :
        if ( $key < $max ) :
      ?>
      <div class="cell">
        <a href="<?php echo esc_attr( $img['url'] ); ?>" data-lightbox="gallery-<?php the_ID(); ?>">
          <img src="<?php echo esc_attr( $img['sizes']['large'] ); ?>" alt="">
        </a>
      </div>
      <?php
        endif;
      endforeach;
      ?>
    </div>
    <div class="grid-x grid-margin-x grid-centered">
      <div class="cell medium-2">
        <a href="<?php the_permalink(); ?>" class="button w100p gallery-see-more">See More</a>
      </div>
    </div>
    <?php endif; ?>
  </div>
</article>
