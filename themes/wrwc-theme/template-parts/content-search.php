<?php
/**
 * The default template for displaying content
 *
 * Used for both single and index/archive/search.
 *
 * @package WRWC
 * @since WRWC 1.0.0
 */

// Remove /?highlight param from Relevanssi.
$permalink = strtok( get_permalink( $post ), '?' );
$read_more = 'Keep reading';
$target    = '';

if ( 'post' === get_post_type( $post ) ) {
	$permalink = get_the_permalink( $post );
}
if ( get_field( 'publication' ) ) {
	$permalink = get_field( 'publication' )['url'];
	$target    = '_blank';
}
if ( 'staff' === get_post_type( $post ) ) {
	$permalink = '/staff';
	$read_more = 'View Staff';
}
if ( 'events' === get_post_type( $post ) ) {
	$read_more = 'View Event';
}
if ( 'page' === get_post_type( $post ) ) {
	$read_more = 'View Page';
}

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<div class="post-item border-bottom">
		<div class="grid-x grid-margin-x">
			<div class="cell post-meta text-center--mobile">
				<?php
				if ( 'post' === get_post_type( $post ) || 'events' === get_post_type( $post ) ) :
					$the_date = get_field( 'event_date' ) ? get_field( 'event_date' ) : get_the_date( 'F j, Y' );
				?>
				<!-- https://wordpress.stackexchange.com/questions/52489/the-date-not-working -->
				<?php if ( function_exists( 'relevanssi_highlight_terms' ) ) : ?>
				<h6 class="post-date bold uppercase secondary-color"><?php echo relevanssi_highlight_terms( $the_date, get_search_query() ); ?></h6>
				<?php else : ?>
				<h6 class="post-date bold uppercase secondary-color"><?php echo esc_html( $the_date ); ?></h6>
				<?php endif; ?>
				<?php endif; ?>
				<?php if ( function_exists( 'relevanssi_the_title' ) ) : ?>
				<a href="<?php echo esc_url( $permalink ); ?>" target="<?php echo esc_attr( $target ); ?>"><h2 class="uppercase post-title"><?php relevanssi_the_title(); ?></h2></a>
				<?php else : ?>
				<a href="<?php echo esc_url( $permalink ); ?>" target="<?php echo esc_attr( $target ); ?>"><h2 class="uppercase post-title"><?php the_title(); ?></h2></a>
				<?php endif; ?>
				<?php the_cta( get_field( 'publication' ), 'post-publication bold secondary-color' ); ?>
				<p>
					<?php
					if ( get_the_excerpt() ) {
						$excerpt = get_the_excerpt();
						echo $excerpt . '... ';
					?>
					<a href="<?php echo esc_url( $permalink ); ?>" class="read-more" target="<?php echo esc_attr( $target ); ?>"><?php echo esc_html( $read_more . ' »' ); ?></a>
					<?php
					}
					?>
				</p>
			</div>
		</div>
	</div>
</article>
