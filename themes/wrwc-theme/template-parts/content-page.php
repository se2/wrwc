<?php
/**
 * The default template for displaying page content
 *
 *
 * @package WRWC
 * @since WRWC 1.0.0
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<div class="entry-content">
		<?php the_content(); ?>
		<?php edit_post_link( __( '(Edit)', 'wrwc' ), '<span class="edit-link">', '</span>' ); ?>
	</div>
</article>
