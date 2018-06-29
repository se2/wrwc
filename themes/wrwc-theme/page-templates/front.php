<?php
/**
 * Template Name: Front
 *
 * @category   Template
 * @package    WRWC
 * @author     Delin Design <contact@delindesign.com>
 * @license    https://www.gnu.org/licenses/gpl-3.0.txt GNU/GPLv3
 * @link       https://delindesign.com
 */

get_header(); ?>

<header class="front-hero" role="banner">

</header>

<?php do_action( 'foundationpress_before_content' ); ?>

<?php while ( have_posts() ) : the_post(); ?>

<?php endwhile; ?>

<?php do_action( 'foundationpress_after_content' ); ?>

<?php get_footer();
