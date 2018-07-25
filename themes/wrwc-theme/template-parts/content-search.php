<?php
/**
 * The default template for displaying content
 *
 * Used for both single and index/archive/search.
 *
 * @package WRWC
 * @since WRWC 1.0.0
 */

$target     = '';
$permalink  = get_the_permalink();
if ( get_field( 'publication' ) ) {
	$permalink  = get_field( 'publication' )['url'];
	$target     = '_blank';
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
				<h6 class="post-date bold uppercase secondary-color"><?php echo esc_html( $the_date ); ?></h6>
				<?php endif; ?>
				<a href="<?php echo esc_url( $permalink ); ?>" target="<?php echo esc_attr( $target ); ?>"><h2 class="uppercase post-title"><?php the_title(); ?></h2></a>
				<?php the_cta( get_field( 'publication' ), 'post-publication bold secondary-color' ); ?>
				<p>
					<?php
					if ( get_the_excerpt() ) {
						$excerpt = get_the_excerpt();
						echo $excerpt . '... ';
					?>
					<a href="<?php echo esc_url( $permalink ); ?>" class="read-more" target="<?php echo esc_attr( $target ); ?>">Keep reading »</a>
					<?php
					}
					?>
				</p>
			</div>
		</div>
	</div>
</article>
