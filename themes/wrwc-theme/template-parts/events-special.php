<?php
/**
 * The module to display special events slider.
 *
 * @category   Components
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

$special_events_id = get_field( 'special_events_category', 'option' );
$events_query         = new WP_Query(array(
	'post_type'      => 'events',
	'posts_per_page' => 3,
	'meta_key'       => 'event_date',
	'orderby'        => 'meta_value',
	'order'          => 'ASC',
	'tax_query'      => array(
		array(
			'taxonomy' => 'event_category',
			'field'    => 'term_id',
			'terms'    => $special_events_id,
			'operator' => 'IN',
		),
	),
));
if ( $events_query->have_posts() ) :
?>
<div class="page-block page-block--special-events pos-rel">
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
							<h6 class="mb0 primary-color uppercase bold">Featured Event</h6>
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
							<p class="ff-oswald white-color mb0 month lh1 uppercase bold"><?php echo esc_html( explode( ' ', get_field( 'event_date' ) )[0] ); ?></p>
							<p class="ff-oswald white-color day lh1 bold mb0"><?php echo esc_html( explode( ' ', get_field( 'event_date' ) )[1] ); ?></p>
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
