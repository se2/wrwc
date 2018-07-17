<?php
/**
 * The default template for displaying content
 *
 * Used for both single and index/archive/search.
 *
 * @package WRWC
 * @since WRWC 1.0.0
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<?php if ( ! is_single() ) : ?>
	<header>
		<h6 class="post-date bold uppercase secondary-color"><?php the_date( 'F j, Y' ); ?></h6>
		<h2 class="uppercase post-title"><?php the_title(); ?></h2>
		<p class="bold secondary-color"><?php the_author(); ?></p>
	</header>
	<?php endif; ?>
	<div class="entry-content">
		<?php
		if ( is_single() ) {
			the_content();
		}
		?>
		<?php edit_post_link( __( '(Edit)', 'foundationpress' ), '<span class="edit-link">', '</span>' ); ?>
	</div>
</article>
