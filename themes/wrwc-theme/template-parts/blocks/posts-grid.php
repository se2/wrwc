<?php
/**
 * Posts Grid ACF Module
 *
 * @category   ACF Modules
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

$bg       = 'background-color:' . get_sub_field( 'background' ) . ';';
$grids    = get_sub_field( 'grids' );
$base_col = 4;
?>
<div class="page-block page-block--posts-grid" style="<?php echo esc_attr( $bg ); ?>">
	<div class="container">
		<div class="grid-x total-wrap">
			<?php
			foreach ( $grids as $key => $grid ) :
				$columns    = intval( $grid['columns'] );
				$grid_width = 'medium-' . ( $base_col * $columns );
			?>
			<div class="cell page-block--posts-grid__wrap <?php echo esc_attr( $grid_width ); ?>">
				<h6 class="primary-color uppercase grid-title"><?php echo esc_html( $grid['grid_title'] ); ?></h6>
				<div class="grid-x">
					<?php
					foreach ( $grid['posts'] as $key => $post_obj ) :
						$post = $post_obj['post'];
						setup_postdata( $post );
						$post_bg = '';
						if ( has_post_thumbnail( $post ) ) {
							$post_bg = 'background-image:url("' . get_the_post_thumbnail_url( get_the_ID(), 'full' ) . '");';
						}
						$classes = array(
							'medium-' . ( 12 / $columns ),
							$grid['cell_size'],
							get_post_type( $post ),
						);
					?>
					<div class="cell page-block--posts-grid__cell pos-rel <?php echo esc_attr( implode( ' ', $classes ) ); ?>">
						<a href="<?php the_permalink(); ?>">
						<div class="inner bg-center bg-cover" style="<?php echo esc_attr( $post_bg ); ?>">
							<?php if ( 'events' === get_post_type( $post ) ) : ?>
							<p class="event-month lh1 uppercase text-shadow bold ff-oswald"><?php echo esc_html( explode( ' ', get_field( 'event_date' ) )[0] ); ?></p>
							<p class="event-day lh1 bold mb0 ff-oswald text-shadow"><?php echo esc_html( explode( ' ', get_field( 'event_date' ) )[1] ); ?></p>
							<?php endif; ?>
							<p class="post-title bold mb0"><?php the_title(); ?></p>
							<div class="gradient-overlay"></div>
						</div>
						</a>
					</div>
					<?php endforeach; ?>
				</div>
			</div>
			<?php endforeach; ?>
			<?php wp_reset_postdata(); ?>
		</div>
	</div>
</div>
