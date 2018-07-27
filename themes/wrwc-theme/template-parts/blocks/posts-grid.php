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
			<div class="cell page-block--posts-grid__wrap <?php echo esc_attr( $grid_width ); ?> padding-mobile">
				<h6 class="primary-color uppercase grid-title text-center--mobile"><?php echo esc_html( $grid['grid_title'] ); ?></h6>
				<div class="grid-x">
					<?php
					$posts      = array();
					if ( 'custom' !== $grid['post_type'] ) {
						$posts_args  = array(
							'post_type'      => $grid['post_type'],
							'post_status'    => 'publish',
							'posts_per_page' => 9999,
							'order'          => $grid['post_ordering'],
						);
						if ( 'events' === $grid['post_type'] ) {
							$posts_args['meta_key'] = 'event_date';
							$posts_args['orderby']  = 'meta_value';
						}
						if ( 'post' === $grid['post_type'] && $grid['post_category'] ) {
							$posts_args['tax_query'] = array(
								array(
									'taxonomy' => 'category',
									'field'    => 'term_id',
									'terms'    => $grid['post_category'],
									'operator' => 'IN',
								),
							);
						} elseif ( 'events' === $grid['post_type'] && $grid['events_category'] ) {
							$posts_args['tax_query'] = array(
								array(
									'taxonomy' => 'event_category',
									'field'    => 'term_id',
									'terms'    => $grid['events_category'],
									'operator' => 'IN',
								),
							);
						}
						$posts_query = new WP_Query( $posts_args );
						while ( $posts_query->have_posts() ) {
							$posts_query->the_post();
							$post_obj               = array();
							$post_obj['post_title'] = get_the_title();
							$post_obj['post_link']  = get_the_permalink();
							$post_obj['post_image'] = get_the_post_thumbnail_url( get_the_ID(), 'large' );
							if ( get_field( 'event_date' ) && ( 'events' === $grid['post_type'] ) ) {
								if ( strtotime( get_field( 'event_date' ) ) > mktime( 0, 0, 0 ) ) {
									$date_arr               = get_date_array( get_field( 'event_date' ) );
									$post_obj['post_month'] = $date_arr['month'];
									$post_obj['post_day']   = $date_arr['day'];
									$posts[]                = $post_obj;
								}
							} else {
								$posts[] = $post_obj;
							}
						}
						// important.
						wp_reset_postdata();
					} else {
						$posts = $grid['custom_posts'];
					}
					$limit = 0;
					foreach ( $posts as $key => $post_obj ) :
						$classes = array(
							'medium-' . ( 12 / $columns ),
							$grid['cell_size'],
							$grid['post_type'],
						);
						if ( 'custom' === $grid['post_type'] && $post_obj['post_date'] ) {
							$date_arr               = get_date_array( $post_obj['post_date'] );
							$post_obj['post_month'] = $date_arr['month'];
							$post_obj['post_day']   = $date_arr['day'];
						}
						if ( $limit < $grid['post_counts'] ) {
					?>
					<div class="cell page-block--posts-grid__cell pos-rel <?php echo esc_attr( implode( ' ', $classes ) ); ?>">
						<a href="<?php echo esc_url( $post_obj['post_link'] ); ?>">
							<div class="inner">
								<div class="pos-abs cover-image bg-center bg-cover" style="background-image:url('<?php echo esc_attr( $post_obj['post_image'] ); ?>');"></div>
								<?php if ( array_key_exists( 'post_month', $post_obj ) && array_key_exists( 'post_day', $post_obj ) ) : ?>
								<p class="event-month lh1 uppercase text-shadow bold ff-oswald"><?php echo esc_html( $post_obj['post_month'] ); ?></p>
								<p class="event-day lh1 bold mb0 ff-oswald text-shadow"><?php echo esc_html( $post_obj['post_day'] ); ?></p>
								<?php endif; ?>
								<p class="post-title bold mb0"><?php echo esc_html( $post_obj['post_title'] ); ?></p>
								<div class="gradient-overlay"></div>
							</div>
							<?php if ( array_key_exists( 'post_month', $post_obj ) && array_key_exists( 'post_day', $post_obj ) ) : ?>
							<p class="post-title--mobile bold mb0 hide-for-medium"><?php echo esc_html( $post_obj['post_title'] ); ?></p>
							<?php endif; ?>
						</a>
					</div>
					<?php
							$limit++;
						}
					endforeach;
					?>
				</div>
			</div>
			<?php endforeach; ?>
		</div>
	</div>
</div>
