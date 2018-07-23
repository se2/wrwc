<?php
/**
 * The module to display featured events slider.
 *
 * @category   Components
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

// Require plugin https://github.com/Tusko/ACF-CPT-Options-Pages .
$option          = 'cpt_events';
$events_source   = get_field( 'featured_events_source', $option );
$events_category = get_field( 'featured_events_category', $option );
$events_custom   = get_field( 'featured_events', $option );
$visible         = get_field( 'slider_visible', $option );
$count           = get_field( 'featured_events_count', $option );
$limit           = 9999;
$args            = array(
	'post_type'      => 'events',
	'posts_per_page' => $limit,
	'meta_key'       => 'event_date',
	'orderby'        => 'meta_value',
	'order'          => 'ASC',
);

if ( 'category' === $events_source ) {
	$args['posts_per_page'] = $count;
	$args['tax_query']      = array(
		array(
			'taxonomy' => 'event_category',
			'field'    => 'term_id',
			'terms'    => $events_category,
			'operator' => 'IN',
		),
	);
}

if ( 'custom' === $events_source ) {
	$post__in = array();
	foreach ( $events_custom as $key => $event_custom ) {
		$post__in[] = $event_custom['featured_event'];
	}
	$args['post__in'] = $post__in;
}
$events_query = new WP_Query( $args );
if ( $events_query->have_posts() && $visible ) :
?>
<div class="page-block page-block--featured-events pos-rel">
	<div class="container">
		<div class="events__carousel">
			<?php
			while ( $events_query->have_posts() ) :
				$events_query->the_post();
				$event_thumbnail = get_the_post_thumbnail_url( $post, 'large' );
			?>
			<div class="events__slide">
				<div class="grid-x grid-margin-x h100p">
					<div class="cell medium-4 events__thumbnail">
						<div class="inner bg-cover bg-center" style="background-image:url('<?php echo esc_url( $event_thumbnail ); ?>');"></div>
					</div>
					<div class="cell medium-8 events__content pos-rel">
						<div class="inner">
							<?php if ( get_field( 'slider_title', $option ) ) : ?>
							<h6 class="mb0 primary-color uppercase bold"><?php the_field( 'slider_title', $option ); ?></h6>
							<?php endif; ?>
							<h2 class="uppercase"><?php the_title(); ?></h2>
							<p><?php the_excerpt(); ?></p>
							<?php
							the_cta(
								array(
									'title'  => 'Register Now »',
									'url'    => get_permalink( $post ),
									'target' => '',
								),
							'button uppercase mb0');
							?>
						</div>
						<div class="date">
							<p class="ff-oswald white-color mb0 month lh1 uppercase bold"><?php echo esc_html( multiexplode( array(' ', ',' ), get_field( 'event_date' ) )[0] ); ?></p>
							<p class="ff-oswald white-color day lh1 bold mb0"><?php echo esc_html( multiexplode( array(' ', ',' ), get_field( 'event_date' ) )[1] ); ?></p>
						</div>
					</div>
				</div>
			</div>
			<?php endwhile; ?>
		</div>
		<?php wp_reset_postdata(); ?>
	</div>
	<img class="footer-wave" src="<?php echo esc_attr( get_template_directory_uri() ); ?>/dist/assets/images/wave-2.png" alt="">
</div>
<?php endif; ?>
