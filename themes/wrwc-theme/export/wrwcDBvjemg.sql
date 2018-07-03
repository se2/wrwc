-- phpMyAdmin SQL Dump
-- version 4.4.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 03, 2018 at 09:09 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wrwcDBvjemg`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-06-28 16:38:22', '2018-06-28 16:38:22', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://wrwc.dev.cc', 'yes'),
(2, 'home', 'http://wrwc.dev.cc', 'yes'),
(3, 'blogname', 'Woonasquatucket River Watershed Council', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'tu@delindesign.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:121:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:13:"rl_gallery/?$";s:30:"index.php?post_type=rl_gallery";s:43:"rl_gallery/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=rl_gallery&feed=$matches[1]";s:38:"rl_gallery/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?post_type=rl_gallery&feed=$matches[1]";s:30:"rl_gallery/page/([0-9]{1,})/?$";s:48:"index.php?post_type=rl_gallery&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:52:"rl_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?rl_category=$matches[1]&feed=$matches[2]";s:47:"rl_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?rl_category=$matches[1]&feed=$matches[2]";s:28:"rl_category/([^/]+)/embed/?$";s:44:"index.php?rl_category=$matches[1]&embed=true";s:40:"rl_category/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?rl_category=$matches[1]&paged=$matches[2]";s:22:"rl_category/([^/]+)/?$";s:33:"index.php?rl_category=$matches[1]";s:47:"rl_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?rl_tag=$matches[1]&feed=$matches[2]";s:42:"rl_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?rl_tag=$matches[1]&feed=$matches[2]";s:23:"rl_tag/([^/]+)/embed/?$";s:39:"index.php?rl_tag=$matches[1]&embed=true";s:35:"rl_tag/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?rl_tag=$matches[1]&paged=$matches[2]";s:17:"rl_tag/([^/]+)/?$";s:28:"index.php?rl_tag=$matches[1]";s:38:"rl_gallery/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:48:"rl_gallery/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:68:"rl_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"rl_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:63:"rl_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:44:"rl_gallery/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:27:"rl_gallery/([^/]+)/embed/?$";s:43:"index.php?rl_gallery=$matches[1]&embed=true";s:31:"rl_gallery/([^/]+)/trackback/?$";s:37:"index.php?rl_gallery=$matches[1]&tb=1";s:51:"rl_gallery/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?rl_gallery=$matches[1]&feed=$matches[2]";s:46:"rl_gallery/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?rl_gallery=$matches[1]&feed=$matches[2]";s:39:"rl_gallery/([^/]+)/page/?([0-9]{1,})/?$";s:50:"index.php?rl_gallery=$matches[1]&paged=$matches[2]";s:46:"rl_gallery/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?rl_gallery=$matches[1]&cpage=$matches[2]";s:35:"rl_gallery/([^/]+)(?:/([0-9]+))?/?$";s:49:"index.php?rl_gallery=$matches[1]&page=$matches[2]";s:27:"rl_gallery/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"rl_gallery/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"rl_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"rl_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"rl_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"rl_gallery/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=24&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:38:"post-duplicator/m4c-postduplicator.php";i:3;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:4;s:43:"responsive-lightbox/responsive-lightbox.php";i:5;s:37:"tinymce-advanced/tinymce-advanced.php";i:6;s:23:"wp-smushit/wp-smush.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'wrwc-theme', 'yes'),
(41, 'stylesheet', 'wrwc-theme', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '24', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:9:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-widgets";a:1:{i:0;s:8:"search-2";}s:15:"footer-widget-1";a:0:{}s:15:"footer-widget-2";a:0:{}s:15:"footer-widget-3";a:0:{}s:15:"footer-widget-4";a:0:{}s:15:"footer-widget-5";a:0:{}s:15:"footer-widget-6";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'cron', 'a:6:{i:1530646720;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1530646749;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1530679102;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1530722320;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1530724463;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(110, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1530211535;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.6.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.6.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.6";s:7:"version";s:5:"4.9.6";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1530643149;s:15:"version_checked";s:5:"4.9.6";s:12:"translations";a:0:{}}', 'no'),
(124, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:18:"tu@delindesign.com";s:7:"version";s:5:"4.9.6";s:9:"timestamp";i:1530203918;}', 'no'),
(126, '_site_transient_timeout_browser_38c22bb012519835757bde70ce6c2767', '1530808720', 'no'),
(127, '_site_transient_browser_38c22bb012519835757bde70ce6c2767', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:12:"67.0.3396.99";s:8:"platform";s:9:"Macintosh";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(135, 'can_compress_scripts', '1', 'no'),
(145, 'recently_activated', 'a:0:{}', 'yes'),
(146, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1530643154;s:7:"checked";a:1:{s:10:"wrwc-theme";s:5:"1.0.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(156, 'acf_version', '5.6.10', 'yes'),
(157, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.0.2";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1530210953;s:7:"version";s:5:"5.0.2";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(158, 'mtphr_post_duplicator_settings', '', 'yes'),
(161, 'responsive_lightbox_settings', 'a:27:{s:4:"tour";b:1;s:6:"script";s:12:"featherlight";s:8:"selector";s:8:"lightbox";s:15:"default_gallery";s:7:"default";s:15:"builder_gallery";s:9:"basicgrid";s:27:"default_woocommerce_gallery";s:7:"default";s:9:"galleries";b:1;s:18:"gallery_image_size";s:4:"full";s:19:"gallery_image_title";s:7:"default";s:21:"gallery_image_caption";s:7:"default";s:20:"force_custom_gallery";b:0;s:28:"woocommerce_gallery_lightbox";b:0;s:6:"videos";b:1;s:7:"widgets";b:0;s:8:"comments";b:0;s:11:"image_links";b:1;s:11:"image_title";s:7:"default";s:13:"image_caption";s:7:"default";s:17:"images_as_gallery";b:0;s:19:"deactivation_delete";b:0;s:13:"loading_place";s:6:"header";s:19:"conditional_loading";b:0;s:20:"enable_custom_events";b:0;s:13:"custom_events";s:12:"ajaxComplete";s:14:"update_version";i:2;s:13:"update_notice";b:1;s:17:"update_delay_date";i:1531420563;}', 'no'),
(162, 'responsive_lightbox_configuration', 'a:8:{s:8:"swipebox";a:8:{s:9:"animation";s:3:"css";s:15:"force_png_icons";b:0;s:17:"hide_close_mobile";b:0;s:18:"remove_bars_mobile";b:0;s:9:"hide_bars";b:1;s:15:"hide_bars_delay";i:5000;s:15:"video_max_width";i:1080;s:11:"loop_at_end";b:0;}s:11:"prettyphoto";a:21:{s:15:"animation_speed";s:6:"normal";s:9:"slideshow";b:0;s:15:"slideshow_delay";i:5000;s:18:"slideshow_autoplay";b:0;s:7:"opacity";i:75;s:10:"show_title";b:1;s:12:"allow_resize";b:1;s:12:"allow_expand";b:1;s:5:"width";i:1080;s:6:"height";i:720;s:9:"separator";s:1:"/";s:5:"theme";s:10:"pp_default";s:18:"horizontal_padding";i:20;s:10:"hide_flash";b:0;s:5:"wmode";s:6:"opaque";s:14:"video_autoplay";b:0;s:5:"modal";b:0;s:11:"deeplinking";b:0;s:15:"overlay_gallery";b:1;s:18:"keyboard_shortcuts";b:1;s:6:"social";b:0;}s:8:"fancybox";a:25:{s:5:"modal";b:0;s:12:"show_overlay";b:1;s:17:"show_close_button";b:1;s:20:"enable_escape_button";b:1;s:21:"hide_on_overlay_click";b:1;s:21:"hide_on_content_click";b:0;s:6:"cyclic";b:0;s:15:"show_nav_arrows";b:1;s:10:"auto_scale";b:1;s:9:"scrolling";s:3:"yes";s:16:"center_on_scroll";b:1;s:7:"opacity";b:1;s:15:"overlay_opacity";i:70;s:13:"overlay_color";s:4:"#666";s:10:"title_show";b:1;s:14:"title_position";s:7:"outside";s:11:"transitions";s:4:"fade";s:7:"easings";s:5:"swing";s:6:"speeds";i:300;s:12:"change_speed";i:300;s:11:"change_fade";i:100;s:7:"padding";i:5;s:6:"margin";i:5;s:11:"video_width";i:1080;s:12:"video_height";i:720;}s:4:"nivo";a:4:{s:6:"effect";s:4:"fade";s:22:"click_overlay_to_close";b:1;s:12:"keyboard_nav";b:1;s:13:"error_message";s:63:"The requested content cannot be loaded. Please try again later.";}s:13:"imagelightbox";a:6:{s:15:"animation_speed";i:250;s:12:"preload_next";b:1;s:15:"enable_keyboard";b:1;s:11:"quit_on_end";b:0;s:19:"quit_on_image_click";b:0;s:22:"quit_on_document_click";b:1;}s:6:"tosrus";a:9:{s:6:"effect";s:5:"slide";s:8:"infinite";b:1;s:4:"keys";b:0;s:8:"autoplay";b:1;s:14:"pause_on_hover";b:0;s:7:"timeout";i:4000;s:10:"pagination";b:1;s:15:"pagination_type";s:10:"thumbnails";s:14:"close_on_click";b:0;}s:12:"featherlight";a:6:{s:10:"open_speed";i:250;s:11:"close_speed";i:250;s:14:"close_on_click";s:10:"background";s:12:"close_on_esc";b:1;s:15:"gallery_fade_in";i:100;s:16:"gallery_fade_out";i:300;}s:8:"magnific";a:12:{s:10:"disable_on";i:0;s:9:"mid_click";b:1;s:9:"preloader";b:1;s:22:"close_on_content_click";b:1;s:25:"close_on_background_click";b:1;s:19:"close_button_inside";b:1;s:17:"show_close_button";b:1;s:17:"enable_escape_key";b:1;s:9:"align_top";b:0;s:22:"fixed_content_position";s:4:"auto";s:25:"fixed_background_position";s:4:"auto";s:15:"auto_focus_last";b:1;}}', 'no'),
(163, 'responsive_lightbox_version', '2.0.5', 'no'),
(164, 'widget_responsive_lightbox_gallery_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(165, 'widget_responsive_lightbox_image_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(166, 'responsive_lightbox_activation_date', '1530210963', 'yes'),
(167, 'tadv_settings', 'a:6:{s:9:"toolbar_1";s:131:"formatselect,bold,italic,blockquote,bullist,numlist,alignleft,aligncenter,alignjustify,alignright,link,unlink,undo,redo,visualchars";s:9:"toolbar_2";s:103:"fontselect,fontsizeselect,outdent,indent,pastetext,removeformat,charmap,wp_more,forecolor,table,wp_help";s:9:"toolbar_3";s:0:"";s:9:"toolbar_4";s:0:"";s:7:"options";s:32:"menubar,advlist,fontsize_formats";s:7:"plugins";s:25:"visualchars,table,advlist";}', 'yes'),
(168, 'tadv_admin_settings', 'a:1:{s:16:"disabled_editors";s:0:"";}', 'yes'),
(169, 'tadv_version', '4000', 'yes'),
(172, 'wp-smush-last_settings', 's:187:"a:10:{s:11:"networkwide";b:0;s:4:"auto";i:1;s:5:"lossy";b:0;s:8:"original";b:0;s:9:"keep_exif";b:0;s:6:"resize";b:0;s:6:"backup";b:0;s:10:"png_to_jpg";b:0;s:7:"nextgen";b:0;s:2:"s3";b:0;}";', 'no'),
(173, 'wdev-frash', 'a:3:{s:7:"plugins";a:1:{s:23:"wp-smushit/wp-smush.php";i:1530211025;}s:5:"queue";a:2:{s:32:"7de3619981caadc55f30a002bfb299f6";a:3:{s:6:"plugin";s:23:"wp-smushit/wp-smush.php";s:4:"type";s:5:"email";s:7:"show_at";i:1530211025;}s:32:"fc50097023d0d34c5a66f6cddcf77694";a:3:{s:6:"plugin";s:23:"wp-smushit/wp-smush.php";s:4:"type";s:4:"rate";s:7:"show_at";i:1530815825;}}s:4:"done";a:0:{}}', 'no'),
(174, 'wp-smush-install-type', 'existing', 'no'),
(175, 'wp-smush-version', '2.7.9.1', 'no'),
(176, 'wp-smush-skip-redirect', '1', 'no'),
(177, 'smush_option', 'a:1:{s:7:"version";s:7:"2.7.9.1";}', 'yes'),
(178, 'smush_global_stats', 'a:9:{s:11:"size_before";i:0;s:10:"size_after";i:0;s:7:"percent";d:0;s:5:"human";s:5:"0.0 B";s:5:"bytes";i:0;s:12:"total_images";i:0;s:14:"resize_savings";i:0;s:12:"resize_count";i:0;s:18:"conversion_savings";i:0;}', 'no'),
(183, 'dir_smush_stats', 'a:2:{s:9:"dir_smush";a:2:{s:5:"total";s:1:"0";s:9:"optimised";i:0;}s:14:"combined_stats";a:0:{}}', 'no'),
(184, 'skip-smush-setup', '1', 'no'),
(185, 'wp-smush-hide_upgrade_notice', '1', 'no'),
(189, 'current_theme', 'FoundationPress', 'yes'),
(190, 'theme_mods_wrwc-theme', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:9:"top-bar-r";i:2;s:10:"top-search";i:3;}s:18:"custom_css_post_id";i:-1;s:22:"wpt_mobile_menu_layout";s:9:"offcanvas";}', 'yes'),
(191, 'theme_switched', '', 'yes'),
(197, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3NjoiYjNKa1pYSmZhV1E5TVRBeE1ETTFmSFI1Y0dVOVpHVjJaV3h2Y0dWeWZHUmhkR1U5TWpBeE55MHdNeTB3TWlBeU1EbzFOam94TWc9PSI7czozOiJ1cmwiO3M6MTg6Imh0dHA6Ly93cndjLmRldi5jYyI7fQ==', 'yes'),
(218, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(224, 'WPLANG', '', 'yes'),
(225, 'new_admin_email', 'tu@delindesign.com', 'yes'),
(233, 'category_children', 'a:0:{}', 'yes'),
(235, 'options_logo', '34', 'no'),
(236, '_options_logo', 'field_5b367f75d7b48', 'no'),
(237, 'options_phone', '401.861.9046', 'no'),
(238, '_options_phone', 'field_5b367f9ed7b49', 'no'),
(239, 'options_fax', '401.861.9038', 'no'),
(240, '_options_fax', 'field_5b367fbbd7b4a', 'no'),
(241, 'options_address', '45 Eagle Street, Suite 202, Providence, RI 02909', 'no'),
(242, '_options_address', 'field_5b367fc1d7b4b', 'no'),
(243, 'options_social_accounts', '1', 'no'),
(244, '_options_social_accounts', 'field_5b367fc7d7b4c', 'no'),
(334, 'options_social_accounts_0_social_service', 'facebook', 'no'),
(335, '_options_social_accounts_0_social_service', 'field_5b367fd3d7b4d', 'no'),
(336, 'options_social_accounts_0_social_link', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:31:"https://www.facebook.com/WRWCRI";s:6:"target";s:0:"";}', 'no'),
(337, '_options_social_accounts_0_social_link', 'field_5b367ff9d7b4e', 'no'),
(340, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1530643154;s:7:"checked";a:9:{s:34:"advanced-custom-fields-pro/acf.php";s:6:"5.6.10";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"5.0.2";s:67:"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php";s:6:"1.3.11";s:38:"post-duplicator/m4c-postduplicator.php";s:4:"2.20";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:5:"3.0.2";s:43:"responsive-lightbox/responsive-lightbox.php";s:5:"2.0.5";s:23:"wp-smushit/wp-smush.php";s:7:"2.7.9.1";s:37:"tinymce-advanced/tinymce-advanced.php";s:6:"4.7.11";s:24:"wordpress-seo/wp-seo.php";s:5:"7.7.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:8:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/contact-form-7";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"5.0.2";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.5.0.2.zip";s:5:"icons";a:2:{s:2:"2x";s:66:"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007";s:2:"1x";s:66:"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901";s:2:"1x";s:68:"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427";}s:11:"banners_rtl";a:0:{}}s:67:"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php";O:8:"stdClass":9:{s:2:"id";s:45:"w.org/plugins/favicon-by-realfavicongenerator";s:4:"slug";s:31:"favicon-by-realfavicongenerator";s:6:"plugin";s:67:"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php";s:11:"new_version";s:6:"1.3.11";s:3:"url";s:62:"https://wordpress.org/plugins/favicon-by-realfavicongenerator/";s:7:"package";s:74:"https://downloads.wordpress.org/plugin/favicon-by-realfavicongenerator.zip";s:5:"icons";a:2:{s:2:"2x";s:83:"https://ps.w.org/favicon-by-realfavicongenerator/assets/icon-256x256.png?rev=972314";s:2:"1x";s:83:"https://ps.w.org/favicon-by-realfavicongenerator/assets/icon-128x128.png?rev=972314";}s:7:"banners";a:2:{s:2:"2x";s:87:"https://ps.w.org/favicon-by-realfavicongenerator/assets/banner-1544x500.png?rev=1110918";s:2:"1x";s:86:"https://ps.w.org/favicon-by-realfavicongenerator/assets/banner-772x250.png?rev=1110918";}s:11:"banners_rtl";a:0:{}}s:38:"post-duplicator/m4c-postduplicator.php";O:8:"stdClass":9:{s:2:"id";s:29:"w.org/plugins/post-duplicator";s:4:"slug";s:15:"post-duplicator";s:6:"plugin";s:38:"post-duplicator/m4c-postduplicator.php";s:11:"new_version";s:4:"2.20";s:3:"url";s:46:"https://wordpress.org/plugins/post-duplicator/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/post-duplicator.zip";s:5:"icons";a:1:{s:2:"1x";s:68:"https://ps.w.org/post-duplicator/assets/icon-128x128.png?rev=1587588";}s:7:"banners";a:2:{s:2:"2x";s:71:"https://ps.w.org/post-duplicator/assets/banner-1544x500.png?rev=1587588";s:2:"1x";s:70:"https://ps.w.org/post-duplicator/assets/banner-772x250.png?rev=1587588";}s:11:"banners_rtl";a:0:{}}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/regenerate-thumbnails";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"3.0.2";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";s:5:"icons";a:1:{s:2:"1x";s:74:"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390";}s:7:"banners";a:2:{s:2:"2x";s:77:"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390";s:2:"1x";s:76:"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390";}s:11:"banners_rtl";a:0:{}}s:43:"responsive-lightbox/responsive-lightbox.php";O:8:"stdClass":9:{s:2:"id";s:33:"w.org/plugins/responsive-lightbox";s:4:"slug";s:19:"responsive-lightbox";s:6:"plugin";s:43:"responsive-lightbox/responsive-lightbox.php";s:11:"new_version";s:5:"2.0.5";s:3:"url";s:50:"https://wordpress.org/plugins/responsive-lightbox/";s:7:"package";s:68:"https://downloads.wordpress.org/plugin/responsive-lightbox.2.0.5.zip";s:5:"icons";a:2:{s:2:"2x";s:72:"https://ps.w.org/responsive-lightbox/assets/icon-256x256.png?rev=1872740";s:2:"1x";s:72:"https://ps.w.org/responsive-lightbox/assets/icon-128x128.png?rev=1872740";}s:7:"banners";a:1:{s:2:"1x";s:74:"https://ps.w.org/responsive-lightbox/assets/banner-772x250.jpg?rev=1872740";}s:11:"banners_rtl";a:0:{}}s:23:"wp-smushit/wp-smush.php";O:8:"stdClass":9:{s:2:"id";s:24:"w.org/plugins/wp-smushit";s:4:"slug";s:10:"wp-smushit";s:6:"plugin";s:23:"wp-smushit/wp-smush.php";s:11:"new_version";s:7:"2.7.9.1";s:3:"url";s:41:"https://wordpress.org/plugins/wp-smushit/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/wp-smushit.2.7.9.1.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/wp-smushit/assets/icon-256x256.jpg?rev=1513049";s:2:"1x";s:63:"https://ps.w.org/wp-smushit/assets/icon-128x128.jpg?rev=1513049";}s:7:"banners";a:2:{s:2:"2x";s:66:"https://ps.w.org/wp-smushit/assets/banner-1544x500.png?rev=1863697";s:2:"1x";s:65:"https://ps.w.org/wp-smushit/assets/banner-772x250.png?rev=1863697";}s:11:"banners_rtl";a:0:{}}s:37:"tinymce-advanced/tinymce-advanced.php";O:8:"stdClass":9:{s:2:"id";s:30:"w.org/plugins/tinymce-advanced";s:4:"slug";s:16:"tinymce-advanced";s:6:"plugin";s:37:"tinymce-advanced/tinymce-advanced.php";s:11:"new_version";s:6:"4.7.11";s:3:"url";s:47:"https://wordpress.org/plugins/tinymce-advanced/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/tinymce-advanced.4.7.11.zip";s:5:"icons";a:2:{s:2:"2x";s:68:"https://ps.w.org/tinymce-advanced/assets/icon-256x256.png?rev=971511";s:2:"1x";s:68:"https://ps.w.org/tinymce-advanced/assets/icon-128x128.png?rev=971511";}s:7:"banners";a:1:{s:2:"1x";s:70:"https://ps.w.org/tinymce-advanced/assets/banner-772x250.png?rev=894078";}s:11:"banners_rtl";a:0:{}}s:24:"wordpress-seo/wp-seo.php";O:8:"stdClass":9:{s:2:"id";s:27:"w.org/plugins/wordpress-seo";s:4:"slug";s:13:"wordpress-seo";s:6:"plugin";s:24:"wordpress-seo/wp-seo.php";s:11:"new_version";s:5:"7.7.3";s:3:"url";s:44:"https://wordpress.org/plugins/wordpress-seo/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wordpress-seo.7.7.3.zip";s:5:"icons";a:3:{s:2:"2x";s:66:"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347";s:2:"1x";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1859687";s:3:"svg";s:58:"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1859687";}s:7:"banners";a:2:{s:2:"2x";s:69:"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435";s:2:"1x";s:68:"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435";}s:11:"banners_rtl";a:2:{s:2:"2x";s:73:"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435";s:2:"1x";s:72:"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435";}}}}', 'no'),
(399, '_site_transient_timeout_theme_roots', '1530644953', 'no'),
(400, '_site_transient_theme_roots', 'a:1:{s:10:"wrwc-theme";s:7:"/themes";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=757 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'page-templates/kitchen-sink.php'),
(2, 4, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(3, 4, '_mail', 'a:8:{s:7:"subject";s:56:"Woonasquatucket River Watershed Council "[your-subject]"";s:6:"sender";s:35:"[your-name] <wordpress@wrwc.dev.cc>";s:4:"body";s:196:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Woonasquatucket River Watershed Council (http://wrwc.dev.cc)";s:9:"recipient";s:18:"tu@delindesign.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(4, 4, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:56:"Woonasquatucket River Watershed Council "[your-subject]"";s:6:"sender";s:63:"Woonasquatucket River Watershed Council <wordpress@wrwc.dev.cc>";s:4:"body";s:138:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Woonasquatucket River Watershed Council (http://wrwc.dev.cc)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:28:"Reply-To: tu@delindesign.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(5, 4, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(6, 4, '_additional_settings', NULL),
(7, 4, '_locale', 'en_US'),
(11, 2, '_edit_lock', '1530292319:1'),
(12, 2, '_edit_last', '1'),
(13, 7, '_wp_trash_meta_status', 'publish'),
(14, 7, '_wp_trash_meta_time', '1530291319'),
(15, 8, '_edit_last', '1'),
(16, 8, '_wp_page_template', 'default'),
(17, 8, '_edit_lock', '1530292357:1'),
(18, 10, '_edit_last', '1'),
(19, 10, '_wp_page_template', 'default'),
(20, 10, '_edit_lock', '1530292380:1'),
(21, 12, '_edit_last', '1'),
(22, 12, '_wp_page_template', 'default'),
(23, 12, '_edit_lock', '1530292415:1'),
(24, 14, '_edit_last', '1'),
(25, 14, '_wp_page_template', 'default'),
(26, 14, '_edit_lock', '1530292439:1'),
(27, 16, '_edit_last', '1'),
(28, 16, '_wp_page_template', 'default'),
(29, 16, '_edit_lock', '1530292446:1'),
(39, 19, '_menu_item_type', 'post_type'),
(40, 19, '_menu_item_menu_item_parent', '0'),
(41, 19, '_menu_item_object_id', '8'),
(42, 19, '_menu_item_object', 'page'),
(43, 19, '_menu_item_target', ''),
(44, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(45, 19, '_menu_item_xfn', ''),
(46, 19, '_menu_item_url', ''),
(48, 20, '_menu_item_type', 'post_type'),
(49, 20, '_menu_item_menu_item_parent', '0'),
(50, 20, '_menu_item_object_id', '12'),
(51, 20, '_menu_item_object', 'page'),
(52, 20, '_menu_item_target', ''),
(53, 20, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(54, 20, '_menu_item_xfn', ''),
(55, 20, '_menu_item_url', ''),
(57, 21, '_menu_item_type', 'post_type'),
(58, 21, '_menu_item_menu_item_parent', '0'),
(59, 21, '_menu_item_object_id', '10'),
(60, 21, '_menu_item_object', 'page'),
(61, 21, '_menu_item_target', ''),
(62, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(63, 21, '_menu_item_xfn', ''),
(64, 21, '_menu_item_url', ''),
(75, 23, '_menu_item_type', 'post_type'),
(76, 23, '_menu_item_menu_item_parent', '0'),
(77, 23, '_menu_item_object_id', '14'),
(78, 23, '_menu_item_object', 'page'),
(79, 23, '_menu_item_target', ''),
(80, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(81, 23, '_menu_item_xfn', ''),
(82, 23, '_menu_item_url', ''),
(84, 24, '_edit_last', '1'),
(85, 24, '_wp_page_template', 'page-templates/front.php'),
(86, 24, '_edit_lock', '1530641521:1'),
(87, 26, '_edit_last', '1'),
(88, 26, '_edit_lock', '1530639285:1'),
(89, 34, '_wp_attached_file', '2018/06/logo.png'),
(90, 34, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:540;s:6:"height";i:160;s:4:"file";s:16:"2018/06/logo.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"logo-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:15:"logo-300x89.png";s:5:"width";i:300;s:6:"height";i:89;s:9:"mime-type";s:9:"image/png";}s:21:"thumbnail_old_150x150";a:4:{s:4:"file";s:16:"logo-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:9:"mime-type";s:9:"image/png";}s:17:"medium_old_300x89";a:4:{s:4:"file";s:15:"logo-300x89.png";s:5:"width";s:3:"300";s:6:"height";s:2:"89";s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(91, 34, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:8:{s:7:"percent";d:17.871647643722429421586639364250004291534423828125;s:5:"bytes";i:10209;s:11:"size_before";i:57124;s:10:"size_after";i:46915;s:4:"time";d:0.289999999999999980015985556747182272374629974365234375;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;s:9:"keep_exif";i:0;}s:5:"sizes";a:5:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:20.410000000000000142108547152020037174224853515625;s:5:"bytes";i:3210;s:11:"size_before";i:7864;s:10:"size_after";i:6259;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:23.53999999999999914734871708787977695465087890625;s:5:"bytes";i:6978;s:11:"size_before";i:14823;s:10:"size_after";i:11334;s:4:"time";d:0.040000000000000000832667268468867405317723751068115234375;}s:21:"thumbnail_old_150x150";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:6259;s:10:"size_after";i:6259;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:17:"medium_old_300x89";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:11334;s:10:"size_after";i:11334;s:4:"time";d:0.0899999999999999966693309261245303787291049957275390625;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:30.370000000000000994759830064140260219573974609375;s:5:"bytes";i:5115;s:11:"size_before";i:16844;s:10:"size_after";i:11729;s:4:"time";d:0.11999999999999999555910790149937383830547332763671875;}}}'),
(92, 37, '_menu_item_type', 'post_type'),
(93, 37, '_menu_item_menu_item_parent', '0'),
(94, 37, '_menu_item_object_id', '16'),
(95, 37, '_menu_item_object', 'page'),
(96, 37, '_menu_item_target', ''),
(97, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(98, 37, '_menu_item_xfn', ''),
(99, 37, '_menu_item_url', ''),
(101, 38, '_menu_item_type', 'custom'),
(102, 38, '_menu_item_menu_item_parent', '0'),
(103, 38, '_menu_item_object_id', '38'),
(104, 38, '_menu_item_object', 'custom'),
(105, 38, '_menu_item_target', ''),
(106, 38, '_menu_item_classes', 'a:4:{i:0;s:6:"button";i:1;s:4:"fill";i:2;s:5:"small";i:3;s:3:"mb0";}'),
(107, 38, '_menu_item_xfn', ''),
(108, 38, '_menu_item_url', '#!'),
(110, 39, '_edit_last', '1'),
(111, 39, '_edit_lock', '1530623164:1'),
(136, 49, '_wp_attached_file', '2018/07/2015_pic1.jpg'),
(137, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"831";s:6:"height";s:3:"551";s:4:"file";s:21:"2018/07/2015_pic1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"2015_pic1-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"2015_pic1-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"2015_pic1-768x509.jpg";s:5:"width";s:3:"768";s:6:"height";s:3:"509";s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:21:"2015_pic1-640x200.jpg";s:5:"width";s:3:"640";s:6:"height";s:3:"200";s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:21:"2015_pic1-831x400.jpg";s:5:"width";s:3:"831";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:21:"2015_pic1-831x400.jpg";s:5:"width";s:3:"831";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:21:"2015_pic1-831x400.jpg";s:5:"width";s:3:"831";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:8:"fb-small";a:4:{s:4:"file";s:21:"2015_pic1-600x315.jpg";s:5:"width";s:3:"600";s:6:"height";s:3:"315";s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";}}'),
(138, 50, '_wp_attached_file', '2018/07/2017_pic1.jpg'),
(139, 50, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"808";s:6:"height";s:3:"540";s:4:"file";s:21:"2018/07/2017_pic1.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"2017_pic1-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"2017_pic1-300x200.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"200";s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"2017_pic1-768x513.jpg";s:5:"width";s:3:"768";s:6:"height";s:3:"513";s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:21:"2017_pic1-640x200.jpg";s:5:"width";s:3:"640";s:6:"height";s:3:"200";s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:21:"2017_pic1-808x400.jpg";s:5:"width";s:3:"808";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:21:"2017_pic1-808x400.jpg";s:5:"width";s:3:"808";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:21:"2017_pic1-808x400.jpg";s:5:"width";s:3:"808";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:8:"fb-small";a:4:{s:4:"file";s:21:"2017_pic1-600x315.jpg";s:5:"width";s:3:"600";s:6:"height";s:3:"315";s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";}}'),
(140, 49, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:8:{s:7:"percent";d:10.3703671774225707480354685685597360134124755859375;s:5:"bytes";i:96234;s:11:"size_before";i:927971;s:10:"size_after";i:831737;s:4:"time";d:0.35999999999999998667732370449812151491641998291015625;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;s:9:"keep_exif";i:0;}s:5:"sizes";a:9:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:6.45000000000000017763568394002504646778106689453125;s:5:"bytes";i:520;s:11:"size_before";i:8065;s:10:"size_after";i:7545;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:6.11000000000000031974423109204508364200592041015625;s:5:"bytes";i:1172;s:11:"size_before";i:19174;s:10:"size_after";i:18002;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:4.3300000000000000710542735760100185871124267578125;s:5:"bytes";i:4145;s:11:"size_before";i:95789;s:10:"size_after";i:91644;s:4:"time";d:0.059999999999999997779553950749686919152736663818359375;}s:14:"featured-small";O:8:"stdClass":5:{s:7:"percent";d:4.63999999999999968025576890795491635799407958984375;s:5:"bytes";i:1556;s:11:"size_before";i:33518;s:10:"size_after";i:31962;s:4:"time";d:0.040000000000000000832667268468867405317723751068115234375;}s:15:"featured-medium";O:8:"stdClass":5:{s:7:"percent";d:4.62000000000000010658141036401502788066864013671875;s:5:"bytes";i:4014;s:11:"size_before";i:86848;s:10:"size_after";i:82834;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:14:"featured-large";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:82834;s:10:"size_after";i:82834;s:4:"time";d:0.059999999999999997779553950749686919152736663818359375;}s:15:"featured-xlarge";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:82834;s:10:"size_after";i:82834;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:8:"fb-small";O:8:"stdClass":5:{s:7:"percent";d:4.7599999999999997868371792719699442386627197265625;s:5:"bytes";i:2390;s:11:"size_before";i:50189;s:10:"size_after";i:47799;s:4:"time";d:0.040000000000000000832667268468867405317723751068115234375;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:17.589999999999999857891452847979962825775146484375;s:5:"bytes";i:82437;s:11:"size_before";i:468720;s:10:"size_after";i:386283;s:4:"time";d:0.08000000000000000166533453693773481063544750213623046875;}}}'),
(141, 51, '_wp_attached_file', '2018/07/2017_pic3.jpg'),
(142, 51, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"809";s:6:"height";s:3:"540";s:4:"file";s:21:"2018/07/2017_pic3.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"2017_pic3-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"2017_pic3-300x200.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"200";s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"2017_pic3-768x513.jpg";s:5:"width";s:3:"768";s:6:"height";s:3:"513";s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:21:"2017_pic3-640x200.jpg";s:5:"width";s:3:"640";s:6:"height";s:3:"200";s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:21:"2017_pic3-809x400.jpg";s:5:"width";s:3:"809";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:21:"2017_pic3-809x400.jpg";s:5:"width";s:3:"809";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:21:"2017_pic3-809x400.jpg";s:5:"width";s:3:"809";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:8:"fb-small";a:4:{s:4:"file";s:21:"2017_pic3-600x315.jpg";s:5:"width";s:3:"600";s:6:"height";s:3:"315";s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";}}'),
(143, 50, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:8:{s:7:"percent";d:10.3300957911952213663653310504741966724395751953125;s:5:"bytes";i:86660;s:11:"size_before";i:838908;s:10:"size_after";i:752248;s:4:"time";d:0.309999999999999997779553950749686919152736663818359375;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;s:9:"keep_exif";i:0;}s:5:"sizes";a:9:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:7.37000000000000010658141036401502788066864013671875;s:5:"bytes";i:661;s:11:"size_before";i:8964;s:10:"size_after";i:8303;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:6.92999999999999971578290569595992565155029296875;s:5:"bytes";i:1397;s:11:"size_before";i:20168;s:10:"size_after";i:18771;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:5.0800000000000000710542735760100185871124267578125;s:5:"bytes";i:4443;s:11:"size_before";i:87497;s:10:"size_after";i:83054;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:14:"featured-small";O:8:"stdClass":5:{s:7:"percent";d:6.12999999999999989341858963598497211933135986328125;s:5:"bytes";i:2192;s:11:"size_before";i:35785;s:10:"size_after";i:33593;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:15:"featured-medium";O:8:"stdClass":5:{s:7:"percent";d:5.32000000000000028421709430404007434844970703125;s:5:"bytes";i:4366;s:11:"size_before";i:82070;s:10:"size_after";i:77704;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:14:"featured-large";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:77704;s:10:"size_after";i:77704;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:15:"featured-xlarge";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:77704;s:10:"size_after";i:77704;s:4:"time";d:0.08000000000000000166533453693773481063544750213623046875;}s:8:"fb-small";O:8:"stdClass":5:{s:7:"percent";d:5.67999999999999971578290569595992565155029296875;s:5:"bytes";i:2915;s:11:"size_before";i:51339;s:10:"size_after";i:48424;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:17.769999999999999573674358543939888477325439453125;s:5:"bytes";i:70686;s:11:"size_before";i:397677;s:10:"size_after";i:326991;s:4:"time";d:0.08000000000000000166533453693773481063544750213623046875;}}}'),
(144, 52, '_wp_attached_file', '2018/07/2017_pic5.jpg'),
(145, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"810";s:6:"height";s:3:"540";s:4:"file";s:21:"2018/07/2017_pic5.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"2017_pic5-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"2017_pic5-300x200.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"200";s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"2017_pic5-768x512.jpg";s:5:"width";s:3:"768";s:6:"height";s:3:"512";s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:21:"2017_pic5-640x200.jpg";s:5:"width";s:3:"640";s:6:"height";s:3:"200";s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:21:"2017_pic5-810x400.jpg";s:5:"width";s:3:"810";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:21:"2017_pic5-810x400.jpg";s:5:"width";s:3:"810";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:21:"2017_pic5-810x400.jpg";s:5:"width";s:3:"810";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:8:"fb-small";a:4:{s:4:"file";s:21:"2017_pic5-600x315.jpg";s:5:"width";s:3:"600";s:6:"height";s:3:"315";s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";}}'),
(146, 51, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:8:{s:7:"percent";d:10.43346936522031143113053985871374607086181640625;s:5:"bytes";i:90709;s:11:"size_before";i:869404;s:10:"size_after";i:778695;s:4:"time";d:0.320000000000000006661338147750939242541790008544921875;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;s:9:"keep_exif";i:0;}s:5:"sizes";a:9:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:7.269999999999999573674358543939888477325439453125;s:5:"bytes";i:633;s:11:"size_before";i:8713;s:10:"size_after";i:8080;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:6.4900000000000002131628207280300557613372802734375;s:5:"bytes";i:1301;s:11:"size_before";i:20060;s:10:"size_after";i:18759;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:4.55999999999999960920149533194489777088165283203125;s:5:"bytes";i:4251;s:11:"size_before";i:93135;s:10:"size_after";i:88884;s:4:"time";d:0.05000000000000000277555756156289135105907917022705078125;}s:14:"featured-small";O:8:"stdClass":5:{s:7:"percent";d:5.69000000000000039079850466805510222911834716796875;s:5:"bytes";i:1990;s:11:"size_before";i:34994;s:10:"size_after";i:33004;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:15:"featured-medium";O:8:"stdClass":5:{s:7:"percent";d:4.96999999999999975131004248396493494510650634765625;s:5:"bytes";i:4138;s:11:"size_before";i:83219;s:10:"size_after";i:79081;s:4:"time";d:0.05000000000000000277555756156289135105907917022705078125;}s:14:"featured-large";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:79081;s:10:"size_after";i:79081;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:15:"featured-xlarge";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:79081;s:10:"size_after";i:79081;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:8:"fb-small";O:8:"stdClass":5:{s:7:"percent";d:5.4199999999999999289457264239899814128875732421875;s:5:"bytes";i:2761;s:11:"size_before";i:50972;s:10:"size_after";i:48211;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";i:18;s:5:"bytes";i:75635;s:11:"size_before";i:420149;s:10:"size_after";i:344514;s:4:"time";d:0.0899999999999999966693309261245303787291049957275390625;}}}'),
(147, 53, '_wp_attached_file', '2018/07/2017_pic6-e1530622796773.jpg'),
(148, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:900;s:6:"height";i:540;s:4:"file";s:36:"2018/07/2017_pic6-e1530622796773.jpg";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"2017_pic6-e1530622796773-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:36:"2017_pic6-e1530622796773-300x180.jpg";s:5:"width";i:300;s:6:"height";i:180;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:36:"2017_pic6-e1530622796773-768x461.jpg";s:5:"width";i:768;s:6:"height";i:461;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:36:"2017_pic6-e1530622796773-640x200.jpg";s:5:"width";i:640;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:36:"2017_pic6-e1530622796773-900x400.jpg";s:5:"width";i:900;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:36:"2017_pic6-e1530622796773-900x400.jpg";s:5:"width";i:900;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:36:"2017_pic6-e1530622796773-900x400.jpg";s:5:"width";i:900;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:8:"fb-small";a:4:{s:4:"file";s:36:"2017_pic6-e1530622796773-600x315.jpg";s:5:"width";i:600;s:6:"height";i:315;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";}}'),
(149, 52, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:8:{s:7:"percent";d:10.54144482020507211927906610071659088134765625;s:5:"bytes";i:99528;s:11:"size_before";i:944159;s:10:"size_after";i:844631;s:4:"time";d:0.3000000000000000444089209850062616169452667236328125;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;s:9:"keep_exif";i:0;}s:5:"sizes";a:9:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:7.12999999999999989341858963598497211933135986328125;s:5:"bytes";i:615;s:11:"size_before";i:8624;s:10:"size_after";i:8009;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:6.4199999999999999289457264239899814128875732421875;s:5:"bytes";i:1276;s:11:"size_before";i:19874;s:10:"size_after";i:18598;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:4.36000000000000031974423109204508364200592041015625;s:5:"bytes";i:4260;s:11:"size_before";i:97744;s:10:"size_after";i:93484;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:14:"featured-small";O:8:"stdClass":5:{s:7:"percent";d:5.45000000000000017763568394002504646778106689453125;s:5:"bytes";i:2009;s:11:"size_before";i:36870;s:10:"size_after";i:34861;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:15:"featured-medium";O:8:"stdClass":5:{s:7:"percent";d:5.269999999999999573674358543939888477325439453125;s:5:"bytes";i:4934;s:11:"size_before";i:93543;s:10:"size_after";i:88609;s:4:"time";d:0.040000000000000000832667268468867405317723751068115234375;}s:14:"featured-large";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:88609;s:10:"size_after";i:88609;s:4:"time";d:0.040000000000000000832667268468867405317723751068115234375;}s:15:"featured-xlarge";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:88609;s:10:"size_after";i:88609;s:4:"time";d:0.040000000000000000832667268468867405317723751068115234375;}s:8:"fb-small";O:8:"stdClass":5:{s:7:"percent";d:5.29999999999999982236431605997495353221893310546875;s:5:"bytes";i:2880;s:11:"size_before";i:54366;s:10:"size_after";i:51486;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:18.3299999999999982946974341757595539093017578125;s:5:"bytes";i:83554;s:11:"size_before";i:455920;s:10:"size_after";i:372366;s:4:"time";d:0.0899999999999999966693309261245303787291049957275390625;}}}'),
(150, 54, '_wp_attached_file', '2018/07/2018_pic1.jpg'),
(151, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"600";s:6:"height";s:3:"450";s:4:"file";s:21:"2018/07/2018_pic1.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"2018_pic1-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"2018_pic1-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:21:"2018_pic1-600x200.jpg";s:5:"width";s:3:"600";s:6:"height";s:3:"200";s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:21:"2018_pic1-600x400.jpg";s:5:"width";s:3:"600";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:21:"2018_pic1-600x400.jpg";s:5:"width";s:3:"600";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:21:"2018_pic1-600x400.jpg";s:5:"width";s:3:"600";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:8:"fb-small";a:4:{s:4:"file";s:21:"2018_pic1-600x315.jpg";s:5:"width";s:3:"600";s:6:"height";s:3:"315";s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";}}'),
(152, 53, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:8:{s:7:"percent";d:47.50229034240913250641824561171233654022216796875;s:5:"bytes";i:201699;s:11:"size_before";i:424609;s:10:"size_after";i:222910;s:4:"time";d:0.179999999999999993338661852249060757458209991455078125;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;s:9:"keep_exif";i:0;}s:5:"sizes";a:9:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:4.7400000000000002131628207280300557613372802734375;s:5:"bytes";i:354;s:11:"size_before";i:4153;s:10:"size_after";i:3956;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:4.480000000000000426325641456060111522674560546875;s:5:"bytes";i:592;s:11:"size_before";i:6720;s:10:"size_after";i:6419;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:8.2400000000000002131628207280300557613372802734375;s:5:"bytes";i:5296;s:11:"size_before";i:32475;s:10:"size_after";i:29798;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:14:"featured-small";O:8:"stdClass":5:{s:7:"percent";d:5.87000000000000010658141036401502788066864013671875;s:5:"bytes";i:1787;s:11:"size_before";i:15513;s:10:"size_after";i:14603;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:15:"featured-medium";O:8:"stdClass":5:{s:7:"percent";d:11.6099999999999994315658113919198513031005859375;s:5:"bytes";i:6816;s:11:"size_before";i:39908;s:10:"size_after";i:35275;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:14:"featured-large";O:8:"stdClass":5:{s:7:"percent";d:3.100000000000000088817841970012523233890533447265625;s:5:"bytes";i:0;s:11:"size_before";i:36405;s:10:"size_after";i:35275;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:15:"featured-xlarge";O:8:"stdClass":5:{s:7:"percent";d:3.100000000000000088817841970012523233890533447265625;s:5:"bytes";i:0;s:11:"size_before";i:36405;s:10:"size_after";i:35275;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:8:"fb-small";O:8:"stdClass":5:{s:7:"percent";d:6.94000000000000039079850466805510222911834716796875;s:5:"bytes";i:2658;s:11:"size_before";i:18992;s:10:"size_after";i:17674;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:80.93000000000000682121026329696178436279296875;s:5:"bytes";i:50894;s:11:"size_before";i:234038;s:10:"size_after";i:44635;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}}}'),
(153, 55, '_wp_attached_file', '2018/07/2018_pic2.jpg'),
(154, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:4:"2048";s:6:"height";s:4:"1536";s:4:"file";s:21:"2018/07/2018_pic2.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"2018_pic2-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"2018_pic2-300x225.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"225";s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"2018_pic2-768x576.jpg";s:5:"width";s:3:"768";s:6:"height";s:3:"576";s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"2018_pic2-1024x768.jpg";s:5:"width";s:4:"1024";s:6:"height";s:3:"768";s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:21:"2018_pic2-640x200.jpg";s:5:"width";s:3:"640";s:6:"height";s:3:"200";s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:22:"2018_pic2-1280x400.jpg";s:5:"width";s:4:"1280";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:22:"2018_pic2-1440x400.jpg";s:5:"width";s:4:"1440";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:22:"2018_pic2-1920x400.jpg";s:5:"width";s:4:"1920";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:8:"fb-small";a:4:{s:4:"file";s:21:"2018_pic2-600x315.jpg";s:5:"width";s:3:"600";s:6:"height";s:3:"315";s:9:"mime-type";s:10:"image/jpeg";}s:8:"fb-large";a:4:{s:4:"file";s:22:"2018_pic2-1200x630.jpg";s:5:"width";s:4:"1200";s:6:"height";s:3:"630";s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";}}'),
(155, 54, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:8:{s:7:"percent";d:11.38302313977209934137135860510170459747314453125;s:5:"bytes";i:67069;s:11:"size_before";i:589202;s:10:"size_after";i:522133;s:4:"time";d:0.2399999999999999911182158029987476766109466552734375;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;s:9:"keep_exif";i:0;}s:5:"sizes";a:8:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:7.12000000000000010658141036401502788066864013671875;s:5:"bytes";i:573;s:11:"size_before";i:8046;s:10:"size_after";i:7473;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:6.42999999999999971578290569595992565155029296875;s:5:"bytes";i:1363;s:11:"size_before";i:21187;s:10:"size_after";i:19824;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:14:"featured-small";O:8:"stdClass":5:{s:7:"percent";d:6.0999999999999996447286321199499070644378662109375;s:5:"bytes";i:2055;s:11:"size_before";i:33695;s:10:"size_after";i:31640;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:15:"featured-medium";O:8:"stdClass":5:{s:7:"percent";d:6.4199999999999999289457264239899814128875732421875;s:5:"bytes";i:4148;s:11:"size_before";i:64615;s:10:"size_after";i:60467;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:14:"featured-large";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:60467;s:10:"size_after";i:60467;s:4:"time";d:0.070000000000000006661338147750939242541790008544921875;}s:15:"featured-xlarge";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:60467;s:10:"size_after";i:60467;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:8:"fb-small";O:8:"stdClass":5:{s:7:"percent";d:6.12999999999999989341858963598497211933135986328125;s:5:"bytes";i:3168;s:11:"size_before";i:51688;s:10:"size_after";i:48520;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";d:19.28999999999999914734871708787977695465087890625;s:5:"bytes";i:55762;s:11:"size_before";i:289037;s:10:"size_after";i:233275;s:4:"time";d:0.05000000000000000277555756156289135105907917022705078125;}}}'),
(156, 56, '_wp_attached_file', '2018/07/2018_pic3.jpg'),
(157, 55, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:8:{s:7:"percent";d:4.14451834738191049467559423646889626979827880859375;s:5:"bytes";i:36739;s:11:"size_before";i:886448;s:10:"size_after";i:849709;s:4:"time";d:0.34999999999999997779553950749686919152736663818359375;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;s:9:"keep_exif";i:0;}s:5:"sizes";a:10:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:7.62000000000000010658141036401502788066864013671875;s:5:"bytes";i:663;s:11:"size_before";i:8705;s:10:"size_after";i:8042;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:6.6699999999999999289457264239899814128875732421875;s:5:"bytes";i:1449;s:11:"size_before";i:21722;s:10:"size_after";i:20273;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:4.8300000000000000710542735760100185871124267578125;s:5:"bytes";i:4976;s:11:"size_before";i:102927;s:10:"size_after";i:97951;s:4:"time";d:0.059999999999999997779553950749686919152736663818359375;}s:5:"large";O:8:"stdClass":5:{s:7:"percent";d:4.37000000000000010658141036401502788066864013671875;s:5:"bytes";i:7578;s:11:"size_before";i:173278;s:10:"size_after";i:165700;s:4:"time";d:0.059999999999999997779553950749686919152736663818359375;}s:14:"featured-small";O:8:"stdClass":5:{s:7:"percent";d:5.75;s:5:"bytes";i:2003;s:11:"size_before";i:34816;s:10:"size_after";i:32813;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:15:"featured-medium";O:8:"stdClass":5:{s:7:"percent";d:3.79999999999999982236431605997495353221893310546875;s:5:"bytes";i:3888;s:11:"size_before";i:102436;s:10:"size_after";i:98548;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:14:"featured-large";O:8:"stdClass":5:{s:7:"percent";d:3.45999999999999996447286321199499070644378662109375;s:5:"bytes";i:3801;s:11:"size_before";i:109873;s:10:"size_after";i:106072;s:4:"time";d:0.040000000000000000832667268468867405317723751068115234375;}s:15:"featured-xlarge";O:8:"stdClass":5:{s:7:"percent";d:3.149999999999999911182158029987476766109466552734375;s:5:"bytes";i:4127;s:11:"size_before";i:131190;s:10:"size_after";i:127063;s:4:"time";d:0.05000000000000000277555756156289135105907917022705078125;}s:8:"fb-small";O:8:"stdClass":5:{s:7:"percent";d:5.5099999999999997868371792719699442386627197265625;s:5:"bytes";i:2758;s:11:"size_before";i:50078;s:10:"size_after";i:47320;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:8:"fb-large";O:8:"stdClass":5:{s:7:"percent";d:3.62999999999999989341858963598497211933135986328125;s:5:"bytes";i:5496;s:11:"size_before";i:151423;s:10:"size_after";i:145927;s:4:"time";d:0.040000000000000000832667268468867405317723751068115234375;}}}'),
(158, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:4:"4948";s:6:"height";s:4:"3280";s:4:"file";s:21:"2018/07/2018_pic3.jpg";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:21:"2018_pic3-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"2018_pic3-300x199.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"199";s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"2018_pic3-768x509.jpg";s:5:"width";s:3:"768";s:6:"height";s:3:"509";s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:22:"2018_pic3-1024x679.jpg";s:5:"width";s:4:"1024";s:6:"height";s:3:"679";s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-small";a:4:{s:4:"file";s:21:"2018_pic3-640x200.jpg";s:5:"width";s:3:"640";s:6:"height";s:3:"200";s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-medium";a:4:{s:4:"file";s:22:"2018_pic3-1280x400.jpg";s:5:"width";s:4:"1280";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:14:"featured-large";a:4:{s:4:"file";s:22:"2018_pic3-1440x400.jpg";s:5:"width";s:4:"1440";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:15:"featured-xlarge";a:4:{s:4:"file";s:22:"2018_pic3-1920x400.jpg";s:5:"width";s:4:"1920";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:8:"fb-small";a:4:{s:4:"file";s:21:"2018_pic3-600x315.jpg";s:5:"width";s:3:"600";s:6:"height";s:3:"315";s:9:"mime-type";s:10:"image/jpeg";}s:8:"fb-large";a:4:{s:4:"file";s:22:"2018_pic3-1200x630.jpg";s:5:"width";s:4:"1200";s:6:"height";s:3:"630";s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";s:2:"10";s:6:"credit";s:0:"";s:6:"camera";s:11:"NIKON D7000";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1445850775";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"300";s:3:"iso";s:3:"200";s:13:"shutter_speed";s:6:"0.0125";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";}}'),
(159, 56, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:8:{s:7:"percent";d:4.53733690260019795204016190837137401103973388671875;s:5:"bytes";i:48476;s:11:"size_before";i:1068380;s:10:"size_after";i:1019904;s:4:"time";d:0.389999999999999957811525064244051463901996612548828125;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;s:9:"keep_exif";i:0;}s:5:"sizes";a:10:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";d:7.089999999999999857891452847979962825775146484375;s:5:"bytes";i:550;s:11:"size_before";i:7762;s:10:"size_after";i:7212;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";d:6.28000000000000024868995751603506505489349365234375;s:5:"bytes";i:1208;s:11:"size_before";i:19250;s:10:"size_after";i:18042;s:4:"time";d:0.01000000000000000020816681711721685132943093776702880859375;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";d:4.67999999999999971578290569595992565155029296875;s:5:"bytes";i:5146;s:11:"size_before";i:109898;s:10:"size_after";i:104752;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:5:"large";O:8:"stdClass":5:{s:7:"percent";d:4.45999999999999996447286321199499070644378662109375;s:5:"bytes";i:8116;s:11:"size_before";i:182037;s:10:"size_after";i:173921;s:4:"time";d:0.05000000000000000277555756156289135105907917022705078125;}s:14:"featured-small";O:8:"stdClass":5:{s:7:"percent";d:4.910000000000000142108547152020037174224853515625;s:5:"bytes";i:1887;s:11:"size_before";i:38425;s:10:"size_after";i:36538;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:15:"featured-medium";O:8:"stdClass":5:{s:7:"percent";d:4.44000000000000039079850466805510222911834716796875;s:5:"bytes";i:5907;s:11:"size_before";i:132986;s:10:"size_after";i:127079;s:4:"time";d:0.08000000000000000166533453693773481063544750213623046875;}s:14:"featured-large";O:8:"stdClass":5:{s:7:"percent";d:4.46999999999999975131004248396493494510650634765625;s:5:"bytes";i:6550;s:11:"size_before";i:146628;s:10:"size_after";i:140078;s:4:"time";d:0.05000000000000000277555756156289135105907917022705078125;}s:15:"featured-xlarge";O:8:"stdClass":5:{s:7:"percent";d:4.19000000000000039079850466805510222911834716796875;s:5:"bytes";i:7613;s:11:"size_before";i:181635;s:10:"size_after";i:174022;s:4:"time";d:0.05000000000000000277555756156289135105907917022705078125;}s:8:"fb-small";O:8:"stdClass":5:{s:7:"percent";d:5.089999999999999857891452847979962825775146484375;s:5:"bytes";i:2883;s:11:"size_before";i:56587;s:10:"size_after";i:53704;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:8:"fb-large";O:8:"stdClass":5:{s:7:"percent";d:4.45999999999999996447286321199499070644378662109375;s:5:"bytes";i:8616;s:11:"size_before";i:193172;s:10:"size_after";i:184556;s:4:"time";d:0.05000000000000000277555756156289135105907917022705078125;}}}'),
(160, 24, 'banner_gallery', 'a:8:{i:0;s:2:"49";i:1;s:2:"50";i:2;s:2:"51";i:3;s:2:"52";i:4;s:2:"53";i:5;s:2:"54";i:6;s:2:"55";i:7;s:2:"56";}'),
(161, 24, '_banner_gallery', 'field_5b3a7462a613b'),
(162, 57, 'banner_gallery', 'a:8:{i:0;s:2:"49";i:1;s:2:"50";i:2;s:2:"51";i:3;s:2:"52";i:4;s:2:"53";i:5;s:2:"54";i:6;s:2:"55";i:7;s:2:"56";}'),
(163, 57, '_banner_gallery', 'field_5b3a7462a613b'),
(164, 24, 'hero_text', 'Working with the community to protect and fortify our river’s natural resources.'),
(165, 24, '_hero_text', 'field_5b3a761215069'),
(166, 24, 'hero_gallery', 'a:8:{i:0;s:2:"56";i:1;s:2:"55";i:2;s:2:"54";i:3;s:2:"53";i:4;s:2:"52";i:5;s:2:"51";i:6;s:2:"50";i:7;s:2:"49";}'),
(167, 24, '_hero_gallery', 'field_5b3a7462a613b'),
(168, 24, 'hero_cta_title', 'See How'),
(169, 24, '_hero_cta_title', 'field_5b3a76361506b'),
(170, 24, 'hero_cta_link', 'a:3:{s:5:"title";s:7:"See How";s:3:"url";s:2:"#!";s:6:"target";s:0:"";}'),
(171, 24, '_hero_cta_link', 'field_5b3a76431506c'),
(172, 62, 'banner_gallery', 'a:8:{i:0;s:2:"49";i:1;s:2:"50";i:2;s:2:"51";i:3;s:2:"52";i:4;s:2:"53";i:5;s:2:"54";i:6;s:2:"55";i:7;s:2:"56";}'),
(173, 62, '_banner_gallery', 'field_5b3a7462a613b'),
(174, 62, 'hero_text', 'Working with the community to protect and fortify our river’s natural resources.'),
(175, 62, '_hero_text', 'field_5b3a761215069'),
(176, 62, 'hero_gallery', 'a:8:{i:0;s:2:"56";i:1;s:2:"55";i:2;s:2:"54";i:3;s:2:"53";i:4;s:2:"52";i:5;s:2:"51";i:6;s:2:"50";i:7;s:2:"49";}'),
(177, 62, '_hero_gallery', 'field_5b3a7462a613b'),
(178, 62, 'hero_cta_title', 'See How'),
(179, 62, '_hero_cta_title', 'field_5b3a76361506b'),
(180, 62, 'hero_cta_link', 'a:3:{s:5:"title";s:0:"";s:3:"url";s:2:"#!";s:6:"target";s:0:"";}'),
(181, 62, '_hero_cta_link', 'field_5b3a76431506c'),
(182, 63, 'banner_gallery', 'a:8:{i:0;s:2:"49";i:1;s:2:"50";i:2;s:2:"51";i:3;s:2:"52";i:4;s:2:"53";i:5;s:2:"54";i:6;s:2:"55";i:7;s:2:"56";}'),
(183, 63, '_banner_gallery', 'field_5b3a7462a613b'),
(184, 63, 'hero_text', 'Working with the community to protect and fortify our river’s natural resources.'),
(185, 63, '_hero_text', 'field_5b3a761215069'),
(186, 63, 'hero_gallery', 'a:8:{i:0;s:2:"56";i:1;s:2:"55";i:2;s:2:"54";i:3;s:2:"53";i:4;s:2:"52";i:5;s:2:"51";i:6;s:2:"50";i:7;s:2:"49";}'),
(187, 63, '_hero_gallery', 'field_5b3a7462a613b'),
(188, 63, 'hero_cta_title', 'See How'),
(189, 63, '_hero_cta_title', 'field_5b3a76361506b'),
(190, 63, 'hero_cta_link', 'a:3:{s:5:"title";s:7:"See How";s:3:"url";s:2:"#!";s:6:"target";s:0:"";}'),
(191, 63, '_hero_cta_link', 'field_5b3a76431506c'),
(192, 64, 'banner_gallery', 'a:8:{i:0;s:2:"49";i:1;s:2:"50";i:2;s:2:"51";i:3;s:2:"52";i:4;s:2:"53";i:5;s:2:"54";i:6;s:2:"55";i:7;s:2:"56";}'),
(193, 64, '_banner_gallery', 'field_5b3a7462a613b'),
(194, 64, 'hero_text', 'Working with the community to protect and fortify our river’s natural resources.'),
(195, 64, '_hero_text', 'field_5b3a761215069'),
(196, 64, 'hero_gallery', 'a:8:{i:0;s:2:"56";i:1;s:2:"55";i:2;s:2:"54";i:3;s:2:"53";i:4;s:2:"52";i:5;s:2:"51";i:6;s:2:"50";i:7;s:2:"49";}'),
(197, 64, '_hero_gallery', 'field_5b3a7462a613b'),
(198, 64, 'hero_cta_title', 'See How'),
(199, 64, '_hero_cta_title', 'field_5b3a76361506b'),
(200, 64, 'hero_cta_link', 'a:3:{s:5:"title";s:7:"See How";s:3:"url";s:2:"#!";s:6:"target";s:6:"_blank";}'),
(201, 64, '_hero_cta_link', 'field_5b3a76431506c'),
(202, 65, 'banner_gallery', 'a:8:{i:0;s:2:"49";i:1;s:2:"50";i:2;s:2:"51";i:3;s:2:"52";i:4;s:2:"53";i:5;s:2:"54";i:6;s:2:"55";i:7;s:2:"56";}'),
(203, 65, '_banner_gallery', 'field_5b3a7462a613b'),
(204, 65, 'hero_text', 'Working with the community to protect and fortify our river’s natural resources.'),
(205, 65, '_hero_text', 'field_5b3a761215069'),
(206, 65, 'hero_gallery', 'a:8:{i:0;s:2:"56";i:1;s:2:"55";i:2;s:2:"54";i:3;s:2:"53";i:4;s:2:"52";i:5;s:2:"51";i:6;s:2:"50";i:7;s:2:"49";}'),
(207, 65, '_hero_gallery', 'field_5b3a7462a613b'),
(208, 65, 'hero_cta_title', 'See How'),
(209, 65, '_hero_cta_title', 'field_5b3a76361506b'),
(210, 65, 'hero_cta_link', 'a:3:{s:5:"title";s:7:"See How";s:3:"url";s:2:"#!";s:6:"target";s:0:"";}'),
(211, 65, '_hero_cta_link', 'field_5b3a76431506c'),
(212, 53, '_wp_attachment_backup_sizes', 'a:9:{s:9:"full-orig";a:3:{s:5:"width";s:3:"900";s:6:"height";s:3:"540";s:4:"file";s:13:"2017_pic6.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:21:"2017_pic6-150x150.jpg";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:21:"2017_pic6-300x180.jpg";s:5:"width";s:3:"300";s:6:"height";s:3:"180";s:9:"mime-type";s:10:"image/jpeg";}s:17:"medium_large-orig";a:4:{s:4:"file";s:21:"2017_pic6-768x461.jpg";s:5:"width";s:3:"768";s:6:"height";s:3:"461";s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-small-orig";a:4:{s:4:"file";s:21:"2017_pic6-640x200.jpg";s:5:"width";s:3:"640";s:6:"height";s:3:"200";s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-medium-orig";a:4:{s:4:"file";s:21:"2017_pic6-900x400.jpg";s:5:"width";s:3:"900";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:19:"featured-large-orig";a:4:{s:4:"file";s:21:"2017_pic6-900x400.jpg";s:5:"width";s:3:"900";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:20:"featured-xlarge-orig";a:4:{s:4:"file";s:21:"2017_pic6-900x400.jpg";s:5:"width";s:3:"900";s:6:"height";s:3:"400";s:9:"mime-type";s:10:"image/jpeg";}s:13:"fb-small-orig";a:4:{s:4:"file";s:21:"2017_pic6-600x315.jpg";s:5:"width";s:3:"600";s:6:"height";s:3:"315";s:9:"mime-type";s:10:"image/jpeg";}}'),
(213, 66, '_edit_last', '1'),
(214, 66, '_edit_lock', '1530641406:1'),
(215, 24, 'page_blocks_0_layout_title', ''),
(216, 24, '_page_blocks_0_layout_title', 'field_5b3b7cbb57d18'),
(217, 24, 'page_blocks_0_title', 'News from the Waterfront'),
(218, 24, '_page_blocks_0_title', 'field_5b3b7cef57d19'),
(219, 24, 'page_blocks_0_subtitle', 'Registration is now open for the annual Woony River Ride Bike-a-Thon!'),
(220, 24, '_page_blocks_0_subtitle', 'field_5b3b7cf657d1a'),
(221, 24, 'page_blocks_0_background', '#225e9c'),
(222, 24, '_page_blocks_0_background', 'field_5b3b7d4c57d1b'),
(223, 24, 'page_blocks_0_text_color', '#ffffff'),
(224, 24, '_page_blocks_0_text_color', 'field_5b3b7d5e57d1c'),
(225, 24, 'page_blocks_0_cta', 'a:3:{s:5:"title";s:13:"Sign Up Today";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(226, 24, '_page_blocks_0_cta', 'field_5b3b7dc257d1d'),
(227, 24, 'page_blocks_0_cta_layout', 'center'),
(228, 24, '_page_blocks_0_cta_layout', 'field_5b3b7decdc9d3'),
(229, 24, 'page_blocks', 'a:3:{i:0;s:3:"cta";i:1;s:9:"cta-cards";i:2;s:9:"cta-image";}'),
(230, 24, '_page_blocks', 'field_5b3b799357d17'),
(231, 75, 'banner_gallery', 'a:8:{i:0;s:2:"49";i:1;s:2:"50";i:2;s:2:"51";i:3;s:2:"52";i:4;s:2:"53";i:5;s:2:"54";i:6;s:2:"55";i:7;s:2:"56";}'),
(232, 75, '_banner_gallery', 'field_5b3a7462a613b'),
(233, 75, 'hero_text', 'Working with the community to protect and fortify our river’s natural resources.'),
(234, 75, '_hero_text', 'field_5b3a761215069'),
(235, 75, 'hero_gallery', 'a:8:{i:0;s:2:"56";i:1;s:2:"55";i:2;s:2:"54";i:3;s:2:"53";i:4;s:2:"52";i:5;s:2:"51";i:6;s:2:"50";i:7;s:2:"49";}'),
(236, 75, '_hero_gallery', 'field_5b3a7462a613b'),
(237, 75, 'hero_cta_title', 'See How'),
(238, 75, '_hero_cta_title', 'field_5b3a76361506b'),
(239, 75, 'hero_cta_link', 'a:3:{s:5:"title";s:7:"See How";s:3:"url";s:2:"#!";s:6:"target";s:0:"";}'),
(240, 75, '_hero_cta_link', 'field_5b3a76431506c'),
(241, 75, 'page_blocks_0_layout_title', ''),
(242, 75, '_page_blocks_0_layout_title', 'field_5b3b7cbb57d18'),
(243, 75, 'page_blocks_0_title', 'News from the Waterfront'),
(244, 75, '_page_blocks_0_title', 'field_5b3b7cef57d19'),
(245, 75, 'page_blocks_0_subtitle', 'Registration is now open for the annual Woony River Ride Bike-a-Thon!'),
(246, 75, '_page_blocks_0_subtitle', 'field_5b3b7cf657d1a'),
(247, 75, 'page_blocks_0_background', '#225e9c'),
(248, 75, '_page_blocks_0_background', 'field_5b3b7d4c57d1b'),
(249, 75, 'page_blocks_0_text_color', '#ffffff'),
(250, 75, '_page_blocks_0_text_color', 'field_5b3b7d5e57d1c'),
(251, 75, 'page_blocks_0_cta', 'a:3:{s:5:"title";s:13:"Sign Up Today";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(252, 75, '_page_blocks_0_cta', 'field_5b3b7dc257d1d'),
(253, 75, 'page_blocks_0_cta_layout', 'center'),
(254, 75, '_page_blocks_0_cta_layout', 'field_5b3b7decdc9d3'),
(255, 75, 'page_blocks', 'a:1:{i:0;s:3:"cta";}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(256, 75, '_page_blocks', 'field_5b3b799357d17'),
(257, 77, '_wp_attached_file', '2018/07/ocean.png'),
(258, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:4:"1400";s:6:"height";s:3:"160";s:4:"file";s:17:"2018/07/ocean.png";s:5:"sizes";a:8:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"ocean-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:16:"ocean-300x34.png";s:5:"width";s:3:"300";s:6:"height";s:2:"34";s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:16:"ocean-768x88.png";s:5:"width";s:3:"768";s:6:"height";s:2:"88";s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:18:"ocean-1024x117.png";s:5:"width";s:4:"1024";s:6:"height";s:3:"117";s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:17:"ocean-640x160.png";s:5:"width";s:3:"640";s:6:"height";s:3:"160";s:9:"mime-type";s:9:"image/png";}s:15:"featured-medium";a:4:{s:4:"file";s:18:"ocean-1280x160.png";s:5:"width";s:4:"1280";s:6:"height";s:3:"160";s:9:"mime-type";s:9:"image/png";}s:8:"fb-small";a:4:{s:4:"file";s:17:"ocean-600x160.png";s:5:"width";s:3:"600";s:6:"height";s:3:"160";s:9:"mime-type";s:9:"image/png";}s:8:"fb-large";a:4:{s:4:"file";s:18:"ocean-1200x160.png";s:5:"width";s:4:"1200";s:6:"height";s:3:"160";s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";}}'),
(259, 77, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:8:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:1898349;s:10:"size_after";i:1898349;s:4:"time";d:0.5800000000000000710542735760100185871124267578125;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;s:9:"keep_exif";i:0;}s:5:"sizes";a:8:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:56196;s:10:"size_after";i:56196;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:19773;s:10:"size_after";i:19773;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:12:"medium_large";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:137362;s:10:"size_after";i:137362;s:4:"time";d:0.05000000000000000277555756156289135105907917022705078125;}s:5:"large";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:241641;s:10:"size_after";i:241641;s:4:"time";d:0.059999999999999997779553950749686919152736663818359375;}s:14:"featured-small";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:285906;s:10:"size_after";i:285906;s:4:"time";d:0.05000000000000000277555756156289135105907917022705078125;}s:15:"featured-medium";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:453701;s:10:"size_after";i:453701;s:4:"time";d:0.13000000000000000444089209850062616169452667236328125;}s:8:"fb-small";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:267784;s:10:"size_after";i:267784;s:4:"time";d:0.11000000000000000055511151231257827021181583404541015625;}s:8:"fb-large";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:435986;s:10:"size_after";i:435986;s:4:"time";d:0.14000000000000001332267629550187848508358001708984375;}}}'),
(260, 24, 'page_blocks_0_background_image', '77'),
(261, 24, '_page_blocks_0_background_image', 'field_5b3b7ed17eb22'),
(262, 78, 'banner_gallery', 'a:8:{i:0;s:2:"49";i:1;s:2:"50";i:2;s:2:"51";i:3;s:2:"52";i:4;s:2:"53";i:5;s:2:"54";i:6;s:2:"55";i:7;s:2:"56";}'),
(263, 78, '_banner_gallery', 'field_5b3a7462a613b'),
(264, 78, 'hero_text', 'Working with the community to protect and fortify our river’s natural resources.'),
(265, 78, '_hero_text', 'field_5b3a761215069'),
(266, 78, 'hero_gallery', 'a:8:{i:0;s:2:"56";i:1;s:2:"55";i:2;s:2:"54";i:3;s:2:"53";i:4;s:2:"52";i:5;s:2:"51";i:6;s:2:"50";i:7;s:2:"49";}'),
(267, 78, '_hero_gallery', 'field_5b3a7462a613b'),
(268, 78, 'hero_cta_title', 'See How'),
(269, 78, '_hero_cta_title', 'field_5b3a76361506b'),
(270, 78, 'hero_cta_link', 'a:3:{s:5:"title";s:7:"See How";s:3:"url";s:2:"#!";s:6:"target";s:0:"";}'),
(271, 78, '_hero_cta_link', 'field_5b3a76431506c'),
(272, 78, 'page_blocks_0_layout_title', ''),
(273, 78, '_page_blocks_0_layout_title', 'field_5b3b7cbb57d18'),
(274, 78, 'page_blocks_0_title', 'News from the Waterfront'),
(275, 78, '_page_blocks_0_title', 'field_5b3b7cef57d19'),
(276, 78, 'page_blocks_0_subtitle', 'Registration is now open for the annual Woony River Ride Bike-a-Thon!'),
(277, 78, '_page_blocks_0_subtitle', 'field_5b3b7cf657d1a'),
(278, 78, 'page_blocks_0_background', '#225e9c'),
(279, 78, '_page_blocks_0_background', 'field_5b3b7d4c57d1b'),
(280, 78, 'page_blocks_0_text_color', '#ffffff'),
(281, 78, '_page_blocks_0_text_color', 'field_5b3b7d5e57d1c'),
(282, 78, 'page_blocks_0_cta', 'a:3:{s:5:"title";s:13:"Sign Up Today";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(283, 78, '_page_blocks_0_cta', 'field_5b3b7dc257d1d'),
(284, 78, 'page_blocks_0_cta_layout', 'center'),
(285, 78, '_page_blocks_0_cta_layout', 'field_5b3b7decdc9d3'),
(286, 78, 'page_blocks', 'a:1:{i:0;s:3:"cta";}'),
(287, 78, '_page_blocks', 'field_5b3b799357d17'),
(288, 78, 'page_blocks_0_background_image', '77'),
(289, 78, '_page_blocks_0_background_image', 'field_5b3b7ed17eb22'),
(290, 79, 'banner_gallery', 'a:8:{i:0;s:2:"49";i:1;s:2:"50";i:2;s:2:"51";i:3;s:2:"52";i:4;s:2:"53";i:5;s:2:"54";i:6;s:2:"55";i:7;s:2:"56";}'),
(291, 79, '_banner_gallery', 'field_5b3a7462a613b'),
(292, 79, 'hero_text', 'Working with the community to protect and fortify our river’s natural resources.'),
(293, 79, '_hero_text', 'field_5b3a761215069'),
(294, 79, 'hero_gallery', 'a:8:{i:0;s:2:"56";i:1;s:2:"55";i:2;s:2:"54";i:3;s:2:"53";i:4;s:2:"52";i:5;s:2:"51";i:6;s:2:"50";i:7;s:2:"49";}'),
(295, 79, '_hero_gallery', 'field_5b3a7462a613b'),
(296, 79, 'hero_cta_title', 'See How'),
(297, 79, '_hero_cta_title', 'field_5b3a76361506b'),
(298, 79, 'hero_cta_link', 'a:3:{s:5:"title";s:7:"See How";s:3:"url";s:2:"#!";s:6:"target";s:0:"";}'),
(299, 79, '_hero_cta_link', 'field_5b3a76431506c'),
(300, 79, 'page_blocks_0_layout_title', 'News from the Waterfront'),
(301, 79, '_page_blocks_0_layout_title', 'field_5b3b7cbb57d18'),
(302, 79, 'page_blocks_0_title', 'News from the Waterfront'),
(303, 79, '_page_blocks_0_title', 'field_5b3b7cef57d19'),
(304, 79, 'page_blocks_0_subtitle', 'Registration is now open for the annual Woony River Ride Bike-a-Thon!'),
(305, 79, '_page_blocks_0_subtitle', 'field_5b3b7cf657d1a'),
(306, 79, 'page_blocks_0_background', '#225e9c'),
(307, 79, '_page_blocks_0_background', 'field_5b3b7d4c57d1b'),
(308, 79, 'page_blocks_0_text_color', '#ffffff'),
(309, 79, '_page_blocks_0_text_color', 'field_5b3b7d5e57d1c'),
(310, 79, 'page_blocks_0_cta', 'a:3:{s:5:"title";s:13:"Sign Up Today";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(311, 79, '_page_blocks_0_cta', 'field_5b3b7dc257d1d'),
(312, 79, 'page_blocks_0_cta_layout', 'center'),
(313, 79, '_page_blocks_0_cta_layout', 'field_5b3b7decdc9d3'),
(314, 79, 'page_blocks', 'a:1:{i:0;s:3:"cta";}'),
(315, 79, '_page_blocks', 'field_5b3b799357d17'),
(316, 79, 'page_blocks_0_background_image', '77'),
(317, 79, '_page_blocks_0_background_image', 'field_5b3b7ed17eb22'),
(318, 80, 'banner_gallery', 'a:8:{i:0;s:2:"49";i:1;s:2:"50";i:2;s:2:"51";i:3;s:2:"52";i:4;s:2:"53";i:5;s:2:"54";i:6;s:2:"55";i:7;s:2:"56";}'),
(319, 80, '_banner_gallery', 'field_5b3a7462a613b'),
(320, 80, 'hero_text', 'Working with the community to protect and fortify our river’s natural resources.'),
(321, 80, '_hero_text', 'field_5b3a761215069'),
(322, 80, 'hero_gallery', 'a:8:{i:0;s:2:"56";i:1;s:2:"55";i:2;s:2:"54";i:3;s:2:"53";i:4;s:2:"52";i:5;s:2:"51";i:6;s:2:"50";i:7;s:2:"49";}'),
(323, 80, '_hero_gallery', 'field_5b3a7462a613b'),
(324, 80, 'hero_cta_title', 'See How'),
(325, 80, '_hero_cta_title', 'field_5b3a76361506b'),
(326, 80, 'hero_cta_link', 'a:3:{s:5:"title";s:7:"See How";s:3:"url";s:2:"#!";s:6:"target";s:0:"";}'),
(327, 80, '_hero_cta_link', 'field_5b3a76431506c'),
(328, 80, 'page_blocks_0_layout_title', ''),
(329, 80, '_page_blocks_0_layout_title', 'field_5b3b7cbb57d18'),
(330, 80, 'page_blocks_0_title', 'News from the Waterfront'),
(331, 80, '_page_blocks_0_title', 'field_5b3b7cef57d19'),
(332, 80, 'page_blocks_0_subtitle', 'Registration is now open for the annual Woony River Ride Bike-a-Thon!'),
(333, 80, '_page_blocks_0_subtitle', 'field_5b3b7cf657d1a'),
(334, 80, 'page_blocks_0_background', '#225e9c'),
(335, 80, '_page_blocks_0_background', 'field_5b3b7d4c57d1b'),
(336, 80, 'page_blocks_0_text_color', '#ffffff'),
(337, 80, '_page_blocks_0_text_color', 'field_5b3b7d5e57d1c'),
(338, 80, 'page_blocks_0_cta', 'a:3:{s:5:"title";s:13:"Sign Up Today";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(339, 80, '_page_blocks_0_cta', 'field_5b3b7dc257d1d'),
(340, 80, 'page_blocks_0_cta_layout', 'center'),
(341, 80, '_page_blocks_0_cta_layout', 'field_5b3b7decdc9d3'),
(342, 80, 'page_blocks', 'a:1:{i:0;s:3:"cta";}'),
(343, 80, '_page_blocks', 'field_5b3b799357d17'),
(344, 80, 'page_blocks_0_background_image', '77'),
(345, 80, '_page_blocks_0_background_image', 'field_5b3b7ed17eb22'),
(346, 24, 'page_blocks_0_title_color', '#7cb4ee'),
(347, 24, '_page_blocks_0_title_color', 'field_5b3b8752dbea4'),
(348, 24, 'page_blocks_0_subtitle_color', '#ffffff'),
(349, 24, '_page_blocks_0_subtitle_color', 'field_5b3b7d5e57d1c'),
(350, 82, 'banner_gallery', 'a:8:{i:0;s:2:"49";i:1;s:2:"50";i:2;s:2:"51";i:3;s:2:"52";i:4;s:2:"53";i:5;s:2:"54";i:6;s:2:"55";i:7;s:2:"56";}'),
(351, 82, '_banner_gallery', 'field_5b3a7462a613b'),
(352, 82, 'hero_text', 'Working with the community to protect and fortify our river’s natural resources.'),
(353, 82, '_hero_text', 'field_5b3a761215069'),
(354, 82, 'hero_gallery', 'a:8:{i:0;s:2:"56";i:1;s:2:"55";i:2;s:2:"54";i:3;s:2:"53";i:4;s:2:"52";i:5;s:2:"51";i:6;s:2:"50";i:7;s:2:"49";}'),
(355, 82, '_hero_gallery', 'field_5b3a7462a613b'),
(356, 82, 'hero_cta_title', 'See How'),
(357, 82, '_hero_cta_title', 'field_5b3a76361506b'),
(358, 82, 'hero_cta_link', 'a:3:{s:5:"title";s:7:"See How";s:3:"url";s:2:"#!";s:6:"target";s:0:"";}'),
(359, 82, '_hero_cta_link', 'field_5b3a76431506c'),
(360, 82, 'page_blocks_0_layout_title', ''),
(361, 82, '_page_blocks_0_layout_title', 'field_5b3b7cbb57d18'),
(362, 82, 'page_blocks_0_title', 'News from the Waterfront'),
(363, 82, '_page_blocks_0_title', 'field_5b3b7cef57d19'),
(364, 82, 'page_blocks_0_subtitle', 'Registration is now open for the annual Woony River Ride Bike-a-Thon!'),
(365, 82, '_page_blocks_0_subtitle', 'field_5b3b7cf657d1a'),
(366, 82, 'page_blocks_0_background', '#225e9c'),
(367, 82, '_page_blocks_0_background', 'field_5b3b7d4c57d1b'),
(368, 82, 'page_blocks_0_text_color', '#ffffff'),
(369, 82, '_page_blocks_0_text_color', 'field_5b3b7d5e57d1c'),
(370, 82, 'page_blocks_0_cta', 'a:3:{s:5:"title";s:13:"Sign Up Today";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(371, 82, '_page_blocks_0_cta', 'field_5b3b7dc257d1d'),
(372, 82, 'page_blocks_0_cta_layout', 'center'),
(373, 82, '_page_blocks_0_cta_layout', 'field_5b3b7decdc9d3'),
(374, 82, 'page_blocks', 'a:1:{i:0;s:3:"cta";}'),
(375, 82, '_page_blocks', 'field_5b3b799357d17'),
(376, 82, 'page_blocks_0_background_image', '77'),
(377, 82, '_page_blocks_0_background_image', 'field_5b3b7ed17eb22'),
(378, 82, 'page_blocks_0_title_color', '#7cb4ee'),
(379, 82, '_page_blocks_0_title_color', 'field_5b3b8752dbea4'),
(380, 82, 'page_blocks_0_subtitle_color', '#ffffff'),
(381, 82, '_page_blocks_0_subtitle_color', 'field_5b3b7d5e57d1c'),
(382, 93, '_wp_attached_file', '2018/07/Art-on-the-Greenway.png'),
(383, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"350";s:6:"height";s:3:"223";s:4:"file";s:31:"2018/07/Art-on-the-Greenway.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"Art-on-the-Greenway-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:31:"Art-on-the-Greenway-300x191.png";s:5:"width";s:3:"300";s:6:"height";s:3:"191";s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:31:"Art-on-the-Greenway-350x200.png";s:5:"width";s:3:"350";s:6:"height";s:3:"200";s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";}}'),
(384, 94, '_wp_attached_file', '2018/07/Canoe-Kayak-Trips.png'),
(385, 94, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"350";s:6:"height";s:3:"223";s:4:"file";s:29:"2018/07/Canoe-Kayak-Trips.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:29:"Canoe-Kayak-Trips-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:29:"Canoe-Kayak-Trips-300x191.png";s:5:"width";s:3:"300";s:6:"height";s:3:"191";s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:29:"Canoe-Kayak-Trips-350x200.png";s:5:"width";s:3:"350";s:6:"height";s:3:"200";s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";}}'),
(386, 93, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:8:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:580594;s:10:"size_after";i:580594;s:4:"time";d:0.330000000000000015543122344752191565930843353271484375;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;s:9:"keep_exif";i:0;}s:5:"sizes";a:4:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:57086;s:10:"size_after";i:57086;s:4:"time";d:0.040000000000000000832667268468867405317723751068115234375;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:141414;s:10:"size_after";i:141414;s:4:"time";d:0.070000000000000006661338147750939242541790008544921875;}s:14:"featured-small";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:180575;s:10:"size_after";i:180575;s:4:"time";d:0.1499999999999999944488848768742172978818416595458984375;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:201519;s:10:"size_after";i:201519;s:4:"time";d:0.070000000000000006661338147750939242541790008544921875;}}}'),
(387, 94, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:8:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:587162;s:10:"size_after";i:587162;s:4:"time";d:0.179999999999999993338661852249060757458209991455078125;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;s:9:"keep_exif";i:0;}s:5:"sizes";a:4:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:56462;s:10:"size_after";i:56462;s:4:"time";d:0.0200000000000000004163336342344337026588618755340576171875;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:140926;s:10:"size_after";i:140926;s:4:"time";d:0.059999999999999997779553950749686919152736663818359375;}s:14:"featured-small";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:185999;s:10:"size_after";i:185999;s:4:"time";d:0.040000000000000000832667268468867405317723751068115234375;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:203775;s:10:"size_after";i:203775;s:4:"time";d:0.059999999999999997779553950749686919152736663818359375;}}}'),
(388, 95, '_wp_attached_file', '2018/07/River-Rangers.png'),
(389, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:3:"350";s:6:"height";s:3:"223";s:4:"file";s:25:"2018/07/River-Rangers.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:25:"River-Rangers-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:25:"River-Rangers-300x191.png";s:5:"width";s:3:"300";s:6:"height";s:3:"191";s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:25:"River-Rangers-350x200.png";s:5:"width";s:3:"350";s:6:"height";s:3:"200";s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";}}'),
(390, 95, 'wp-smpro-smush-data', 'a:2:{s:5:"stats";a:8:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:630815;s:10:"size_after";i:630815;s:4:"time";d:0.270000000000000017763568394002504646778106689453125;s:11:"api_version";s:3:"1.0";s:5:"lossy";b:0;s:9:"keep_exif";i:0;}s:5:"sizes";a:4:{s:9:"thumbnail";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:62226;s:10:"size_after";i:62226;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:6:"medium";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:153435;s:10:"size_after";i:153435;s:4:"time";d:0.0299999999999999988897769753748434595763683319091796875;}s:14:"featured-small";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:196299;s:10:"size_after";i:196299;s:4:"time";d:0.14000000000000001332267629550187848508358001708984375;}s:4:"full";O:8:"stdClass":5:{s:7:"percent";i:0;s:5:"bytes";i:0;s:11:"size_before";i:218855;s:10:"size_after";i:218855;s:4:"time";d:0.070000000000000006661338147750939242541790008544921875;}}}'),
(391, 24, 'page_blocks_1_layout_title', ''),
(392, 24, '_page_blocks_1_layout_title', 'field_5b3b8edfd536e'),
(393, 24, 'page_blocks_1_title', 'Our Mission'),
(394, 24, '_page_blocks_1_title', 'field_5b3b8edfd536f'),
(395, 24, 'page_blocks_1_subtitle', 'Encouraging, supporting and promoting the restoration and preservation of the Woonasquatucket River Watershed as an environmental, recreational, cultural, and economic asset of the State of Rhode Island.'),
(396, 24, '_page_blocks_1_subtitle', 'field_5b3b8edfd5371'),
(397, 24, 'page_blocks_1_subtitle_color', '#444444'),
(398, 24, '_page_blocks_1_subtitle_color', 'field_5b3b8edfd5372'),
(399, 24, 'page_blocks_1_background', '#037573'),
(400, 24, '_page_blocks_1_background', 'field_5b3b8edfd5373'),
(401, 24, 'page_blocks_1_cta_cards_0_card_image', '93'),
(402, 24, '_page_blocks_1_cta_cards_0_card_image', 'field_5b3b908fd5378'),
(403, 24, 'page_blocks_1_cta_cards_0_card_title', 'Who We Are'),
(404, 24, '_page_blocks_1_cta_cards_0_card_title', 'field_5b3b9099d5379'),
(405, 24, 'page_blocks_1_cta_cards_0_card_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum at metus a fringilla. Quisque felis velit, condimentum id aliquam a, tincidunt.'),
(406, 24, '_page_blocks_1_cta_cards_0_card_description', 'field_5b3b909fd537a'),
(407, 24, 'page_blocks_1_cta_cards_0_card_link', 'a:3:{s:5:"title";s:13:"Learn More »";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(408, 24, '_page_blocks_1_cta_cards_0_card_link', 'field_5b3b90fad537b'),
(409, 24, 'page_blocks_1_cta_cards_1_card_image', '94'),
(410, 24, '_page_blocks_1_cta_cards_1_card_image', 'field_5b3b908fd5378'),
(411, 24, 'page_blocks_1_cta_cards_1_card_title', 'The Greenway'),
(412, 24, '_page_blocks_1_cta_cards_1_card_title', 'field_5b3b9099d5379'),
(413, 24, 'page_blocks_1_cta_cards_1_card_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum at metus a fringilla. Quisque felis velit, condimentum id aliquam a, tincidunt.'),
(414, 24, '_page_blocks_1_cta_cards_1_card_description', 'field_5b3b909fd537a'),
(415, 24, 'page_blocks_1_cta_cards_1_card_link', 'a:3:{s:5:"title";s:13:"Learn More »";s:3:"url";s:28:"http://wrwc.dev.cc/greenway/";s:6:"target";s:0:"";}'),
(416, 24, '_page_blocks_1_cta_cards_1_card_link', 'field_5b3b90fad537b'),
(417, 24, 'page_blocks_1_cta_cards_2_card_image', '95'),
(418, 24, '_page_blocks_1_cta_cards_2_card_image', 'field_5b3b908fd5378'),
(419, 24, 'page_blocks_1_cta_cards_2_card_title', 'Join Our Efforts'),
(420, 24, '_page_blocks_1_cta_cards_2_card_title', 'field_5b3b9099d5379'),
(421, 24, 'page_blocks_1_cta_cards_2_card_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum at metus a fringilla. Quisque felis velit, condimentum id aliquam a, tincidunt.'),
(422, 24, '_page_blocks_1_cta_cards_2_card_description', 'field_5b3b909fd537a'),
(423, 24, 'page_blocks_1_cta_cards_2_card_link', 'a:3:{s:5:"title";s:13:"Learn More »";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(424, 24, '_page_blocks_1_cta_cards_2_card_link', 'field_5b3b90fad537b'),
(425, 24, 'page_blocks_1_cta_cards', '3'),
(426, 24, '_page_blocks_1_cta_cards', 'field_5b3b906fd5377'),
(427, 96, 'banner_gallery', 'a:8:{i:0;s:2:"49";i:1;s:2:"50";i:2;s:2:"51";i:3;s:2:"52";i:4;s:2:"53";i:5;s:2:"54";i:6;s:2:"55";i:7;s:2:"56";}'),
(428, 96, '_banner_gallery', 'field_5b3a7462a613b'),
(429, 96, 'hero_text', 'Working with the community to protect and fortify our river’s natural resources.'),
(430, 96, '_hero_text', 'field_5b3a761215069'),
(431, 96, 'hero_gallery', 'a:8:{i:0;s:2:"56";i:1;s:2:"55";i:2;s:2:"54";i:3;s:2:"53";i:4;s:2:"52";i:5;s:2:"51";i:6;s:2:"50";i:7;s:2:"49";}'),
(432, 96, '_hero_gallery', 'field_5b3a7462a613b'),
(433, 96, 'hero_cta_title', 'See How'),
(434, 96, '_hero_cta_title', 'field_5b3a76361506b'),
(435, 96, 'hero_cta_link', 'a:3:{s:5:"title";s:7:"See How";s:3:"url";s:2:"#!";s:6:"target";s:0:"";}'),
(436, 96, '_hero_cta_link', 'field_5b3a76431506c'),
(437, 96, 'page_blocks_0_layout_title', ''),
(438, 96, '_page_blocks_0_layout_title', 'field_5b3b7cbb57d18'),
(439, 96, 'page_blocks_0_title', 'News from the Waterfront'),
(440, 96, '_page_blocks_0_title', 'field_5b3b7cef57d19'),
(441, 96, 'page_blocks_0_subtitle', 'Registration is now open for the annual Woony River Ride Bike-a-Thon!'),
(442, 96, '_page_blocks_0_subtitle', 'field_5b3b7cf657d1a'),
(443, 96, 'page_blocks_0_background', '#225e9c'),
(444, 96, '_page_blocks_0_background', 'field_5b3b7d4c57d1b'),
(445, 96, 'page_blocks_0_text_color', '#ffffff'),
(446, 96, '_page_blocks_0_text_color', 'field_5b3b7d5e57d1c'),
(447, 96, 'page_blocks_0_cta', 'a:3:{s:5:"title";s:13:"Sign Up Today";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(448, 96, '_page_blocks_0_cta', 'field_5b3b7dc257d1d'),
(449, 96, 'page_blocks_0_cta_layout', 'center'),
(450, 96, '_page_blocks_0_cta_layout', 'field_5b3b7decdc9d3'),
(451, 96, 'page_blocks', 'a:2:{i:0;s:3:"cta";i:1;s:9:"cta-cards";}'),
(452, 96, '_page_blocks', 'field_5b3b799357d17'),
(453, 96, 'page_blocks_0_background_image', '77'),
(454, 96, '_page_blocks_0_background_image', 'field_5b3b7ed17eb22'),
(455, 96, 'page_blocks_0_title_color', '#7cb4ee'),
(456, 96, '_page_blocks_0_title_color', 'field_5b3b8752dbea4'),
(457, 96, 'page_blocks_0_subtitle_color', '#ffffff'),
(458, 96, '_page_blocks_0_subtitle_color', 'field_5b3b7d5e57d1c'),
(459, 96, 'page_blocks_1_layout_title', ''),
(460, 96, '_page_blocks_1_layout_title', 'field_5b3b8edfd536e'),
(461, 96, 'page_blocks_1_title', 'Our Mission'),
(462, 96, '_page_blocks_1_title', 'field_5b3b8edfd536f'),
(463, 96, 'page_blocks_1_subtitle', 'Encouraging, supporting and promoting the restoration and preservation of the Woonasquatucket River Watershed as an environmental, recreational, cultural, and economic asset of the State of Rhode Island.'),
(464, 96, '_page_blocks_1_subtitle', 'field_5b3b8edfd5371'),
(465, 96, 'page_blocks_1_subtitle_color', '#444444'),
(466, 96, '_page_blocks_1_subtitle_color', 'field_5b3b8edfd5372'),
(467, 96, 'page_blocks_1_background', '#037573'),
(468, 96, '_page_blocks_1_background', 'field_5b3b8edfd5373'),
(469, 96, 'page_blocks_1_cta_cards_0_card_image', '93'),
(470, 96, '_page_blocks_1_cta_cards_0_card_image', 'field_5b3b908fd5378'),
(471, 96, 'page_blocks_1_cta_cards_0_card_title', 'Who We Are'),
(472, 96, '_page_blocks_1_cta_cards_0_card_title', 'field_5b3b9099d5379'),
(473, 96, 'page_blocks_1_cta_cards_0_card_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum at metus a fringilla. Quisque felis velit, condimentum id aliquam a, tincidunt.'),
(474, 96, '_page_blocks_1_cta_cards_0_card_description', 'field_5b3b909fd537a'),
(475, 96, 'page_blocks_1_cta_cards_0_card_link', 'a:3:{s:5:"title";s:13:"Learn More »";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(476, 96, '_page_blocks_1_cta_cards_0_card_link', 'field_5b3b90fad537b'),
(477, 96, 'page_blocks_1_cta_cards_1_card_image', '94'),
(478, 96, '_page_blocks_1_cta_cards_1_card_image', 'field_5b3b908fd5378'),
(479, 96, 'page_blocks_1_cta_cards_1_card_title', 'The Greenway'),
(480, 96, '_page_blocks_1_cta_cards_1_card_title', 'field_5b3b9099d5379'),
(481, 96, 'page_blocks_1_cta_cards_1_card_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum at metus a fringilla. Quisque felis velit, condimentum id aliquam a, tincidunt.'),
(482, 96, '_page_blocks_1_cta_cards_1_card_description', 'field_5b3b909fd537a'),
(483, 96, 'page_blocks_1_cta_cards_1_card_link', 'a:3:{s:5:"title";s:13:"Learn More »";s:3:"url";s:28:"http://wrwc.dev.cc/greenway/";s:6:"target";s:0:"";}'),
(484, 96, '_page_blocks_1_cta_cards_1_card_link', 'field_5b3b90fad537b'),
(485, 96, 'page_blocks_1_cta_cards_2_card_image', '95'),
(486, 96, '_page_blocks_1_cta_cards_2_card_image', 'field_5b3b908fd5378'),
(487, 96, 'page_blocks_1_cta_cards_2_card_title', 'Join Our Efforts'),
(488, 96, '_page_blocks_1_cta_cards_2_card_title', 'field_5b3b9099d5379'),
(489, 96, 'page_blocks_1_cta_cards_2_card_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum at metus a fringilla. Quisque felis velit, condimentum id aliquam a, tincidunt.'),
(490, 96, '_page_blocks_1_cta_cards_2_card_description', 'field_5b3b909fd537a'),
(491, 96, 'page_blocks_1_cta_cards_2_card_link', 'a:3:{s:5:"title";s:13:"Learn More »";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(492, 96, '_page_blocks_1_cta_cards_2_card_link', 'field_5b3b90fad537b'),
(493, 96, 'page_blocks_1_cta_cards', '3'),
(494, 96, '_page_blocks_1_cta_cards', 'field_5b3b906fd5377'),
(495, 24, 'page_blocks_0_visible', '1'),
(496, 24, '_page_blocks_0_visible', 'field_5b3bb5797a6d5'),
(497, 24, 'page_blocks_1_visible', '1'),
(498, 24, '_page_blocks_1_visible', 'field_5b3bb5b67a6d6'),
(499, 96, 'page_blocks_0_visible', '1'),
(500, 96, '_page_blocks_0_visible', 'field_5b3bb5797a6d5'),
(501, 96, 'page_blocks_1_visible', '1'),
(502, 96, '_page_blocks_1_visible', 'field_5b3bb5b67a6d6'),
(503, 99, 'banner_gallery', 'a:8:{i:0;s:2:"49";i:1;s:2:"50";i:2;s:2:"51";i:3;s:2:"52";i:4;s:2:"53";i:5;s:2:"54";i:6;s:2:"55";i:7;s:2:"56";}'),
(504, 99, '_banner_gallery', 'field_5b3a7462a613b'),
(505, 99, 'hero_text', 'Working with the community to protect and fortify our river’s natural resources.'),
(506, 99, '_hero_text', 'field_5b3a761215069'),
(507, 99, 'hero_gallery', 'a:8:{i:0;s:2:"56";i:1;s:2:"55";i:2;s:2:"54";i:3;s:2:"53";i:4;s:2:"52";i:5;s:2:"51";i:6;s:2:"50";i:7;s:2:"49";}'),
(508, 99, '_hero_gallery', 'field_5b3a7462a613b'),
(509, 99, 'hero_cta_title', 'See How'),
(510, 99, '_hero_cta_title', 'field_5b3a76361506b'),
(511, 99, 'hero_cta_link', 'a:3:{s:5:"title";s:7:"See How";s:3:"url";s:2:"#!";s:6:"target";s:0:"";}'),
(512, 99, '_hero_cta_link', 'field_5b3a76431506c'),
(513, 99, 'page_blocks_0_layout_title', ''),
(514, 99, '_page_blocks_0_layout_title', 'field_5b3b7cbb57d18'),
(515, 99, 'page_blocks_0_title', 'News from the Waterfront'),
(516, 99, '_page_blocks_0_title', 'field_5b3b7cef57d19'),
(517, 99, 'page_blocks_0_subtitle', 'Registration is now open for the annual Woony River Ride Bike-a-Thon!'),
(518, 99, '_page_blocks_0_subtitle', 'field_5b3b7cf657d1a'),
(519, 99, 'page_blocks_0_background', '#225e9c'),
(520, 99, '_page_blocks_0_background', 'field_5b3b7d4c57d1b'),
(521, 99, 'page_blocks_0_text_color', '#ffffff'),
(522, 99, '_page_blocks_0_text_color', 'field_5b3b7d5e57d1c'),
(523, 99, 'page_blocks_0_cta', 'a:3:{s:5:"title";s:13:"Sign Up Today";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(524, 99, '_page_blocks_0_cta', 'field_5b3b7dc257d1d'),
(525, 99, 'page_blocks_0_cta_layout', 'center'),
(526, 99, '_page_blocks_0_cta_layout', 'field_5b3b7decdc9d3'),
(527, 99, 'page_blocks', 'a:2:{i:0;s:3:"cta";i:1;s:9:"cta-cards";}'),
(528, 99, '_page_blocks', 'field_5b3b799357d17'),
(529, 99, 'page_blocks_0_background_image', '77'),
(530, 99, '_page_blocks_0_background_image', 'field_5b3b7ed17eb22'),
(531, 99, 'page_blocks_0_title_color', '#7cb4ee'),
(532, 99, '_page_blocks_0_title_color', 'field_5b3b8752dbea4'),
(533, 99, 'page_blocks_0_subtitle_color', '#ffffff'),
(534, 99, '_page_blocks_0_subtitle_color', 'field_5b3b7d5e57d1c'),
(535, 99, 'page_blocks_1_layout_title', ''),
(536, 99, '_page_blocks_1_layout_title', 'field_5b3b8edfd536e'),
(537, 99, 'page_blocks_1_title', 'Our Mission'),
(538, 99, '_page_blocks_1_title', 'field_5b3b8edfd536f'),
(539, 99, 'page_blocks_1_subtitle', 'Encouraging, supporting and promoting the restoration and preservation of the Woonasquatucket River Watershed as an environmental, recreational, cultural, and economic asset of the State of Rhode Island.'),
(540, 99, '_page_blocks_1_subtitle', 'field_5b3b8edfd5371'),
(541, 99, 'page_blocks_1_subtitle_color', '#444444'),
(542, 99, '_page_blocks_1_subtitle_color', 'field_5b3b8edfd5372'),
(543, 99, 'page_blocks_1_background', '#037573'),
(544, 99, '_page_blocks_1_background', 'field_5b3b8edfd5373'),
(545, 99, 'page_blocks_1_cta_cards_0_card_image', '93'),
(546, 99, '_page_blocks_1_cta_cards_0_card_image', 'field_5b3b908fd5378'),
(547, 99, 'page_blocks_1_cta_cards_0_card_title', 'Who We Are'),
(548, 99, '_page_blocks_1_cta_cards_0_card_title', 'field_5b3b9099d5379'),
(549, 99, 'page_blocks_1_cta_cards_0_card_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum at metus a fringilla. Quisque felis velit, condimentum id aliquam a, tincidunt.'),
(550, 99, '_page_blocks_1_cta_cards_0_card_description', 'field_5b3b909fd537a'),
(551, 99, 'page_blocks_1_cta_cards_0_card_link', 'a:3:{s:5:"title";s:13:"Learn More »";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(552, 99, '_page_blocks_1_cta_cards_0_card_link', 'field_5b3b90fad537b'),
(553, 99, 'page_blocks_1_cta_cards_1_card_image', '94'),
(554, 99, '_page_blocks_1_cta_cards_1_card_image', 'field_5b3b908fd5378'),
(555, 99, 'page_blocks_1_cta_cards_1_card_title', 'The Greenway'),
(556, 99, '_page_blocks_1_cta_cards_1_card_title', 'field_5b3b9099d5379'),
(557, 99, 'page_blocks_1_cta_cards_1_card_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum at metus a fringilla. Quisque felis velit, condimentum id aliquam a, tincidunt.'),
(558, 99, '_page_blocks_1_cta_cards_1_card_description', 'field_5b3b909fd537a'),
(559, 99, 'page_blocks_1_cta_cards_1_card_link', 'a:3:{s:5:"title";s:13:"Learn More »";s:3:"url";s:28:"http://wrwc.dev.cc/greenway/";s:6:"target";s:0:"";}'),
(560, 99, '_page_blocks_1_cta_cards_1_card_link', 'field_5b3b90fad537b'),
(561, 99, 'page_blocks_1_cta_cards_2_card_image', '95'),
(562, 99, '_page_blocks_1_cta_cards_2_card_image', 'field_5b3b908fd5378'),
(563, 99, 'page_blocks_1_cta_cards_2_card_title', 'Join Our Efforts'),
(564, 99, '_page_blocks_1_cta_cards_2_card_title', 'field_5b3b9099d5379'),
(565, 99, 'page_blocks_1_cta_cards_2_card_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum at metus a fringilla. Quisque felis velit, condimentum id aliquam a, tincidunt.'),
(566, 99, '_page_blocks_1_cta_cards_2_card_description', 'field_5b3b909fd537a'),
(567, 99, 'page_blocks_1_cta_cards_2_card_link', 'a:3:{s:5:"title";s:13:"Learn More »";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(568, 99, '_page_blocks_1_cta_cards_2_card_link', 'field_5b3b90fad537b'),
(569, 99, 'page_blocks_1_cta_cards', '3'),
(570, 99, '_page_blocks_1_cta_cards', 'field_5b3b906fd5377'),
(571, 99, 'page_blocks_0_visible', '0'),
(572, 99, '_page_blocks_0_visible', 'field_5b3bb5797a6d5'),
(573, 99, 'page_blocks_1_visible', '1'),
(574, 99, '_page_blocks_1_visible', 'field_5b3bb5b67a6d6'),
(575, 100, 'banner_gallery', 'a:8:{i:0;s:2:"49";i:1;s:2:"50";i:2;s:2:"51";i:3;s:2:"52";i:4;s:2:"53";i:5;s:2:"54";i:6;s:2:"55";i:7;s:2:"56";}'),
(576, 100, '_banner_gallery', 'field_5b3a7462a613b'),
(577, 100, 'hero_text', 'Working with the community to protect and fortify our river’s natural resources.'),
(578, 100, '_hero_text', 'field_5b3a761215069'),
(579, 100, 'hero_gallery', 'a:8:{i:0;s:2:"56";i:1;s:2:"55";i:2;s:2:"54";i:3;s:2:"53";i:4;s:2:"52";i:5;s:2:"51";i:6;s:2:"50";i:7;s:2:"49";}'),
(580, 100, '_hero_gallery', 'field_5b3a7462a613b'),
(581, 100, 'hero_cta_title', 'See How'),
(582, 100, '_hero_cta_title', 'field_5b3a76361506b'),
(583, 100, 'hero_cta_link', 'a:3:{s:5:"title";s:7:"See How";s:3:"url";s:2:"#!";s:6:"target";s:0:"";}'),
(584, 100, '_hero_cta_link', 'field_5b3a76431506c'),
(585, 100, 'page_blocks_0_layout_title', ''),
(586, 100, '_page_blocks_0_layout_title', 'field_5b3b7cbb57d18'),
(587, 100, 'page_blocks_0_title', 'News from the Waterfront'),
(588, 100, '_page_blocks_0_title', 'field_5b3b7cef57d19'),
(589, 100, 'page_blocks_0_subtitle', 'Registration is now open for the annual Woony River Ride Bike-a-Thon!'),
(590, 100, '_page_blocks_0_subtitle', 'field_5b3b7cf657d1a'),
(591, 100, 'page_blocks_0_background', '#225e9c'),
(592, 100, '_page_blocks_0_background', 'field_5b3b7d4c57d1b'),
(593, 100, 'page_blocks_0_text_color', '#ffffff'),
(594, 100, '_page_blocks_0_text_color', 'field_5b3b7d5e57d1c'),
(595, 100, 'page_blocks_0_cta', 'a:3:{s:5:"title";s:13:"Sign Up Today";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(596, 100, '_page_blocks_0_cta', 'field_5b3b7dc257d1d'),
(597, 100, 'page_blocks_0_cta_layout', 'center'),
(598, 100, '_page_blocks_0_cta_layout', 'field_5b3b7decdc9d3'),
(599, 100, 'page_blocks', 'a:2:{i:0;s:3:"cta";i:1;s:9:"cta-cards";}'),
(600, 100, '_page_blocks', 'field_5b3b799357d17'),
(601, 100, 'page_blocks_0_background_image', '77'),
(602, 100, '_page_blocks_0_background_image', 'field_5b3b7ed17eb22'),
(603, 100, 'page_blocks_0_title_color', '#7cb4ee'),
(604, 100, '_page_blocks_0_title_color', 'field_5b3b8752dbea4'),
(605, 100, 'page_blocks_0_subtitle_color', '#ffffff'),
(606, 100, '_page_blocks_0_subtitle_color', 'field_5b3b7d5e57d1c'),
(607, 100, 'page_blocks_1_layout_title', ''),
(608, 100, '_page_blocks_1_layout_title', 'field_5b3b8edfd536e'),
(609, 100, 'page_blocks_1_title', 'Our Mission'),
(610, 100, '_page_blocks_1_title', 'field_5b3b8edfd536f'),
(611, 100, 'page_blocks_1_subtitle', 'Encouraging, supporting and promoting the restoration and preservation of the Woonasquatucket River Watershed as an environmental, recreational, cultural, and economic asset of the State of Rhode Island.'),
(612, 100, '_page_blocks_1_subtitle', 'field_5b3b8edfd5371'),
(613, 100, 'page_blocks_1_subtitle_color', '#444444'),
(614, 100, '_page_blocks_1_subtitle_color', 'field_5b3b8edfd5372'),
(615, 100, 'page_blocks_1_background', '#037573'),
(616, 100, '_page_blocks_1_background', 'field_5b3b8edfd5373'),
(617, 100, 'page_blocks_1_cta_cards_0_card_image', '93'),
(618, 100, '_page_blocks_1_cta_cards_0_card_image', 'field_5b3b908fd5378'),
(619, 100, 'page_blocks_1_cta_cards_0_card_title', 'Who We Are'),
(620, 100, '_page_blocks_1_cta_cards_0_card_title', 'field_5b3b9099d5379'),
(621, 100, 'page_blocks_1_cta_cards_0_card_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum at metus a fringilla. Quisque felis velit, condimentum id aliquam a, tincidunt.'),
(622, 100, '_page_blocks_1_cta_cards_0_card_description', 'field_5b3b909fd537a'),
(623, 100, 'page_blocks_1_cta_cards_0_card_link', 'a:3:{s:5:"title";s:13:"Learn More »";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(624, 100, '_page_blocks_1_cta_cards_0_card_link', 'field_5b3b90fad537b'),
(625, 100, 'page_blocks_1_cta_cards_1_card_image', '94'),
(626, 100, '_page_blocks_1_cta_cards_1_card_image', 'field_5b3b908fd5378'),
(627, 100, 'page_blocks_1_cta_cards_1_card_title', 'The Greenway'),
(628, 100, '_page_blocks_1_cta_cards_1_card_title', 'field_5b3b9099d5379'),
(629, 100, 'page_blocks_1_cta_cards_1_card_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum at metus a fringilla. Quisque felis velit, condimentum id aliquam a, tincidunt.'),
(630, 100, '_page_blocks_1_cta_cards_1_card_description', 'field_5b3b909fd537a'),
(631, 100, 'page_blocks_1_cta_cards_1_card_link', 'a:3:{s:5:"title";s:13:"Learn More »";s:3:"url";s:28:"http://wrwc.dev.cc/greenway/";s:6:"target";s:0:"";}'),
(632, 100, '_page_blocks_1_cta_cards_1_card_link', 'field_5b3b90fad537b'),
(633, 100, 'page_blocks_1_cta_cards_2_card_image', '95'),
(634, 100, '_page_blocks_1_cta_cards_2_card_image', 'field_5b3b908fd5378'),
(635, 100, 'page_blocks_1_cta_cards_2_card_title', 'Join Our Efforts'),
(636, 100, '_page_blocks_1_cta_cards_2_card_title', 'field_5b3b9099d5379'),
(637, 100, 'page_blocks_1_cta_cards_2_card_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum at metus a fringilla. Quisque felis velit, condimentum id aliquam a, tincidunt.'),
(638, 100, '_page_blocks_1_cta_cards_2_card_description', 'field_5b3b909fd537a'),
(639, 100, 'page_blocks_1_cta_cards_2_card_link', 'a:3:{s:5:"title";s:13:"Learn More »";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(640, 100, '_page_blocks_1_cta_cards_2_card_link', 'field_5b3b90fad537b'),
(641, 100, 'page_blocks_1_cta_cards', '3'),
(642, 100, '_page_blocks_1_cta_cards', 'field_5b3b906fd5377'),
(643, 100, 'page_blocks_0_visible', '1'),
(644, 100, '_page_blocks_0_visible', 'field_5b3bb5797a6d5'),
(645, 100, 'page_blocks_1_visible', '1'),
(646, 100, '_page_blocks_1_visible', 'field_5b3bb5b67a6d6'),
(647, 110, '_wp_attached_file', '2018/07/Red-Shed-Bike-Camp_Summer.png'),
(648, 110, '_wp_attachment_metadata', 'a:5:{s:5:"width";s:4:"1092";s:6:"height";s:3:"630";s:4:"file";s:37:"2018/07/Red-Shed-Bike-Camp_Summer.png";s:5:"sizes";a:10:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"Red-Shed-Bike-Camp_Summer-150x150.png";s:5:"width";s:3:"150";s:6:"height";s:3:"150";s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:37:"Red-Shed-Bike-Camp_Summer-300x173.png";s:5:"width";s:3:"300";s:6:"height";s:3:"173";s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:37:"Red-Shed-Bike-Camp_Summer-768x443.png";s:5:"width";s:3:"768";s:6:"height";s:3:"443";s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:38:"Red-Shed-Bike-Camp_Summer-1024x591.png";s:5:"width";s:4:"1024";s:6:"height";s:3:"591";s:9:"mime-type";s:9:"image/png";}s:14:"featured-small";a:4:{s:4:"file";s:37:"Red-Shed-Bike-Camp_Summer-640x200.png";s:5:"width";s:3:"640";s:6:"height";s:3:"200";s:9:"mime-type";s:9:"image/png";}s:15:"featured-medium";a:4:{s:4:"file";s:38:"Red-Shed-Bike-Camp_Summer-1092x400.png";s:5:"width";s:4:"1092";s:6:"height";s:3:"400";s:9:"mime-type";s:9:"image/png";}s:14:"featured-large";a:4:{s:4:"file";s:38:"Red-Shed-Bike-Camp_Summer-1092x400.png";s:5:"width";s:4:"1092";s:6:"height";s:3:"400";s:9:"mime-type";s:9:"image/png";}s:15:"featured-xlarge";a:4:{s:4:"file";s:38:"Red-Shed-Bike-Camp_Summer-1092x400.png";s:5:"width";s:4:"1092";s:6:"height";s:3:"400";s:9:"mime-type";s:9:"image/png";}s:8:"fb-small";a:4:{s:4:"file";s:37:"Red-Shed-Bike-Camp_Summer-600x315.png";s:5:"width";s:3:"600";s:6:"height";s:3:"315";s:9:"mime-type";s:9:"image/png";}s:8:"fb-large";a:4:{s:4:"file";s:38:"Red-Shed-Bike-Camp_Summer-1092x630.png";s:5:"width";s:4:"1092";s:6:"height";s:3:"630";s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";}}'),
(649, 24, 'page_blocks_2_visible', '1'),
(650, 24, '_page_blocks_2_visible', 'field_5b3bbb6e9d7d8'),
(651, 24, 'page_blocks_2_layout_title', ''),
(652, 24, '_page_blocks_2_layout_title', 'field_5b3bbb6e9d7d9'),
(653, 24, 'page_blocks_2_title', 'Red Shed Bike Camp'),
(654, 24, '_page_blocks_2_title', 'field_5b3bbb6e9d7da'),
(655, 24, 'page_blocks_2_title_color', '#037573'),
(656, 24, '_page_blocks_2_title_color', 'field_5b3bbb6e9d7db'),
(657, 24, 'page_blocks_2_subtitle', 'This summer learn how to work on your bike and go on a great group ride, every weekday for a week!'),
(658, 24, '_page_blocks_2_subtitle', 'field_5b3bbb6e9d7dc'),
(659, 24, 'page_blocks_2_subtitle_color', '#524633'),
(660, 24, '_page_blocks_2_subtitle_color', 'field_5b3bbb6e9d7dd'),
(661, 24, 'page_blocks_2_background', '#fff9e2'),
(662, 24, '_page_blocks_2_background', 'field_5b3bbb6e9d7de'),
(663, 24, 'page_blocks_2_cta', 'a:3:{s:5:"title";s:8:"Register";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(664, 24, '_page_blocks_2_cta', 'field_5b3bbb6e9d7df'),
(665, 24, 'page_blocks_2_featured_image', '110'),
(666, 24, '_page_blocks_2_featured_image', 'field_5b3bbb6e9d7e0'),
(667, 111, 'banner_gallery', 'a:8:{i:0;s:2:"49";i:1;s:2:"50";i:2;s:2:"51";i:3;s:2:"52";i:4;s:2:"53";i:5;s:2:"54";i:6;s:2:"55";i:7;s:2:"56";}'),
(668, 111, '_banner_gallery', 'field_5b3a7462a613b'),
(669, 111, 'hero_text', 'Working with the community to protect and fortify our river’s natural resources.'),
(670, 111, '_hero_text', 'field_5b3a761215069'),
(671, 111, 'hero_gallery', 'a:8:{i:0;s:2:"56";i:1;s:2:"55";i:2;s:2:"54";i:3;s:2:"53";i:4;s:2:"52";i:5;s:2:"51";i:6;s:2:"50";i:7;s:2:"49";}'),
(672, 111, '_hero_gallery', 'field_5b3a7462a613b'),
(673, 111, 'hero_cta_title', 'See How'),
(674, 111, '_hero_cta_title', 'field_5b3a76361506b'),
(675, 111, 'hero_cta_link', 'a:3:{s:5:"title";s:7:"See How";s:3:"url";s:2:"#!";s:6:"target";s:0:"";}'),
(676, 111, '_hero_cta_link', 'field_5b3a76431506c'),
(677, 111, 'page_blocks_0_layout_title', ''),
(678, 111, '_page_blocks_0_layout_title', 'field_5b3b7cbb57d18'),
(679, 111, 'page_blocks_0_title', 'News from the Waterfront'),
(680, 111, '_page_blocks_0_title', 'field_5b3b7cef57d19'),
(681, 111, 'page_blocks_0_subtitle', 'Registration is now open for the annual Woony River Ride Bike-a-Thon!'),
(682, 111, '_page_blocks_0_subtitle', 'field_5b3b7cf657d1a'),
(683, 111, 'page_blocks_0_background', '#225e9c'),
(684, 111, '_page_blocks_0_background', 'field_5b3b7d4c57d1b'),
(685, 111, 'page_blocks_0_text_color', '#ffffff'),
(686, 111, '_page_blocks_0_text_color', 'field_5b3b7d5e57d1c'),
(687, 111, 'page_blocks_0_cta', 'a:3:{s:5:"title";s:13:"Sign Up Today";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(688, 111, '_page_blocks_0_cta', 'field_5b3b7dc257d1d'),
(689, 111, 'page_blocks_0_cta_layout', 'center'),
(690, 111, '_page_blocks_0_cta_layout', 'field_5b3b7decdc9d3'),
(691, 111, 'page_blocks', 'a:3:{i:0;s:3:"cta";i:1;s:9:"cta-cards";i:2;s:9:"cta-image";}'),
(692, 111, '_page_blocks', 'field_5b3b799357d17'),
(693, 111, 'page_blocks_0_background_image', '77'),
(694, 111, '_page_blocks_0_background_image', 'field_5b3b7ed17eb22'),
(695, 111, 'page_blocks_0_title_color', '#7cb4ee'),
(696, 111, '_page_blocks_0_title_color', 'field_5b3b8752dbea4'),
(697, 111, 'page_blocks_0_subtitle_color', '#ffffff'),
(698, 111, '_page_blocks_0_subtitle_color', 'field_5b3b7d5e57d1c'),
(699, 111, 'page_blocks_1_layout_title', ''),
(700, 111, '_page_blocks_1_layout_title', 'field_5b3b8edfd536e'),
(701, 111, 'page_blocks_1_title', 'Our Mission'),
(702, 111, '_page_blocks_1_title', 'field_5b3b8edfd536f'),
(703, 111, 'page_blocks_1_subtitle', 'Encouraging, supporting and promoting the restoration and preservation of the Woonasquatucket River Watershed as an environmental, recreational, cultural, and economic asset of the State of Rhode Island.'),
(704, 111, '_page_blocks_1_subtitle', 'field_5b3b8edfd5371'),
(705, 111, 'page_blocks_1_subtitle_color', '#444444'),
(706, 111, '_page_blocks_1_subtitle_color', 'field_5b3b8edfd5372'),
(707, 111, 'page_blocks_1_background', '#037573'),
(708, 111, '_page_blocks_1_background', 'field_5b3b8edfd5373'),
(709, 111, 'page_blocks_1_cta_cards_0_card_image', '93'),
(710, 111, '_page_blocks_1_cta_cards_0_card_image', 'field_5b3b908fd5378'),
(711, 111, 'page_blocks_1_cta_cards_0_card_title', 'Who We Are'),
(712, 111, '_page_blocks_1_cta_cards_0_card_title', 'field_5b3b9099d5379'),
(713, 111, 'page_blocks_1_cta_cards_0_card_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum at metus a fringilla. Quisque felis velit, condimentum id aliquam a, tincidunt.'),
(714, 111, '_page_blocks_1_cta_cards_0_card_description', 'field_5b3b909fd537a'),
(715, 111, 'page_blocks_1_cta_cards_0_card_link', 'a:3:{s:5:"title";s:13:"Learn More »";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(716, 111, '_page_blocks_1_cta_cards_0_card_link', 'field_5b3b90fad537b'),
(717, 111, 'page_blocks_1_cta_cards_1_card_image', '94'),
(718, 111, '_page_blocks_1_cta_cards_1_card_image', 'field_5b3b908fd5378'),
(719, 111, 'page_blocks_1_cta_cards_1_card_title', 'The Greenway'),
(720, 111, '_page_blocks_1_cta_cards_1_card_title', 'field_5b3b9099d5379'),
(721, 111, 'page_blocks_1_cta_cards_1_card_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum at metus a fringilla. Quisque felis velit, condimentum id aliquam a, tincidunt.'),
(722, 111, '_page_blocks_1_cta_cards_1_card_description', 'field_5b3b909fd537a'),
(723, 111, 'page_blocks_1_cta_cards_1_card_link', 'a:3:{s:5:"title";s:13:"Learn More »";s:3:"url";s:28:"http://wrwc.dev.cc/greenway/";s:6:"target";s:0:"";}'),
(724, 111, '_page_blocks_1_cta_cards_1_card_link', 'field_5b3b90fad537b'),
(725, 111, 'page_blocks_1_cta_cards_2_card_image', '95'),
(726, 111, '_page_blocks_1_cta_cards_2_card_image', 'field_5b3b908fd5378'),
(727, 111, 'page_blocks_1_cta_cards_2_card_title', 'Join Our Efforts'),
(728, 111, '_page_blocks_1_cta_cards_2_card_title', 'field_5b3b9099d5379'),
(729, 111, 'page_blocks_1_cta_cards_2_card_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus dictum at metus a fringilla. Quisque felis velit, condimentum id aliquam a, tincidunt.'),
(730, 111, '_page_blocks_1_cta_cards_2_card_description', 'field_5b3b909fd537a'),
(731, 111, 'page_blocks_1_cta_cards_2_card_link', 'a:3:{s:5:"title";s:13:"Learn More »";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(732, 111, '_page_blocks_1_cta_cards_2_card_link', 'field_5b3b90fad537b'),
(733, 111, 'page_blocks_1_cta_cards', '3'),
(734, 111, '_page_blocks_1_cta_cards', 'field_5b3b906fd5377'),
(735, 111, 'page_blocks_0_visible', '1'),
(736, 111, '_page_blocks_0_visible', 'field_5b3bb5797a6d5'),
(737, 111, 'page_blocks_1_visible', '1'),
(738, 111, '_page_blocks_1_visible', 'field_5b3bb5b67a6d6'),
(739, 111, 'page_blocks_2_visible', '1'),
(740, 111, '_page_blocks_2_visible', 'field_5b3bbb6e9d7d8'),
(741, 111, 'page_blocks_2_layout_title', ''),
(742, 111, '_page_blocks_2_layout_title', 'field_5b3bbb6e9d7d9'),
(743, 111, 'page_blocks_2_title', 'Red Shed Bike Camp'),
(744, 111, '_page_blocks_2_title', 'field_5b3bbb6e9d7da'),
(745, 111, 'page_blocks_2_title_color', '#037573'),
(746, 111, '_page_blocks_2_title_color', 'field_5b3bbb6e9d7db'),
(747, 111, 'page_blocks_2_subtitle', 'This summer learn how to work on your bike and go on a great group ride, every weekday for a week!'),
(748, 111, '_page_blocks_2_subtitle', 'field_5b3bbb6e9d7dc'),
(749, 111, 'page_blocks_2_subtitle_color', '#524633'),
(750, 111, '_page_blocks_2_subtitle_color', 'field_5b3bbb6e9d7dd'),
(751, 111, 'page_blocks_2_background', '#fff9e2'),
(752, 111, '_page_blocks_2_background', 'field_5b3bbb6e9d7de'),
(753, 111, 'page_blocks_2_cta', 'a:3:{s:5:"title";s:8:"Register";s:3:"url";s:30:"http://wrwc.dev.cc/contact-us/";s:6:"target";s:0:"";}'),
(754, 111, '_page_blocks_2_cta', 'field_5b3bbb6e9d7df'),
(755, 111, 'page_blocks_2_featured_image', '110'),
(756, 111, '_page_blocks_2_featured_image', 'field_5b3bbb6e9d7e0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-06-28 16:38:22', '2018-06-28 16:38:22', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-06-28 16:38:22', '2018-06-28 16:38:22', '', 0, 'http://wrwc.dev.cc/?p=1', 0, 'post', '', 1),
(2, 1, '2018-06-28 16:38:22', '2018-06-28 16:38:22', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://wrwc.dev.cc/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-06-29 14:17:25', '2018-06-29 14:17:25', '', 0, 'http://wrwc.dev.cc/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-06-28 16:38:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-06-28 16:38:40', '0000-00-00 00:00:00', '', 0, 'http://wrwc.dev.cc/?p=3', 0, 'post', '', 0),
(4, 1, '2018-06-28 18:35:53', '2018-06-28 18:35:53', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nWoonasquatucket River Watershed Council "[your-subject]"\n[your-name] <wordpress@wrwc.dev.cc>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Woonasquatucket River Watershed Council (http://wrwc.dev.cc)\ntu@delindesign.com\nReply-To: [your-email]\n\n0\n0\n\nWoonasquatucket River Watershed Council "[your-subject]"\nWoonasquatucket River Watershed Council <wordpress@wrwc.dev.cc>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on Woonasquatucket River Watershed Council (http://wrwc.dev.cc)\n[your-email]\nReply-To: tu@delindesign.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2018-06-28 18:35:53', '2018-06-28 18:35:53', '', 0, 'http://wrwc.dev.cc/?post_type=wpcf7_contact_form&p=4', 0, 'wpcf7_contact_form', '', 0),
(5, 1, '2018-06-29 14:15:48', '2018-06-29 14:15:48', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://wrwc.dev.cc/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-29 14:15:48', '2018-06-29 14:15:48', '', 2, 'http://wrwc.dev.cc/2018/06/29/2-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-06-29 14:17:25', '2018-06-29 14:17:25', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\r\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin'' caught in the rain.)</blockquote>\r\n...or something like this:\r\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\r\nAs a new WordPress user, you should go to <a href="http://wrwc.dev.cc/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-06-29 14:17:25', '2018-06-29 14:17:25', '', 2, 'http://wrwc.dev.cc/2018/06/29/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-06-29 16:55:19', '2018-06-29 16:55:19', '{\n    "wrwc-theme::wpt_mobile_menu_layout": {\n        "value": "offcanvas",\n        "type": "theme_mod",\n        "user_id": 1,\n        "date_modified_gmt": "2018-06-29 16:55:19"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9084ec7b-e323-411d-9a8c-598ae8fb0367', '', '', '2018-06-29 16:55:19', '2018-06-29 16:55:19', '', 0, 'http://wrwc.dev.cc/2018/06/29/9084ec7b-e323-411d-9a8c-598ae8fb0367/', 0, 'customize_changeset', '', 0),
(8, 1, '2018-06-29 17:14:32', '2018-06-29 17:14:32', '', 'Greenway', '', 'publish', 'closed', 'closed', '', 'greenway', '', '', '2018-06-29 17:14:32', '2018-06-29 17:14:32', '', 0, 'http://wrwc.dev.cc/?page_id=8', 0, 'page', '', 0),
(9, 1, '2018-06-29 17:14:32', '2018-06-29 17:14:32', '', 'Greenway', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2018-06-29 17:14:32', '2018-06-29 17:14:32', '', 8, 'http://wrwc.dev.cc/2018/06/29/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-06-29 17:15:08', '2018-06-29 17:15:08', '', 'Our Staff', '', 'publish', 'closed', 'closed', '', 'our-staff', '', '', '2018-06-29 17:15:08', '2018-06-29 17:15:08', '', 0, 'http://wrwc.dev.cc/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-06-29 17:15:08', '2018-06-29 17:15:08', '', 'Our Staff', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-06-29 17:15:08', '2018-06-29 17:15:08', '', 10, 'http://wrwc.dev.cc/2018/06/29/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-06-29 17:15:53', '2018-06-29 17:15:53', '', 'Maps', '', 'publish', 'closed', 'closed', '', 'maps', '', '', '2018-06-29 17:15:53', '2018-06-29 17:15:53', '', 0, 'http://wrwc.dev.cc/?page_id=12', 0, 'page', '', 0),
(13, 1, '2018-06-29 17:15:53', '2018-06-29 17:15:53', '', 'Maps', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2018-06-29 17:15:53', '2018-06-29 17:15:53', '', 12, 'http://wrwc.dev.cc/2018/06/29/12-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-06-29 17:16:05', '2018-06-29 17:16:05', '', 'Wildlife', '', 'publish', 'closed', 'closed', '', 'wildlife', '', '', '2018-06-29 17:16:05', '2018-06-29 17:16:05', '', 0, 'http://wrwc.dev.cc/?page_id=14', 0, 'page', '', 0),
(15, 1, '2018-06-29 17:16:05', '2018-06-29 17:16:05', '', 'Wildlife', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2018-06-29 17:16:05', '2018-06-29 17:16:05', '', 14, 'http://wrwc.dev.cc/2018/06/29/14-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-06-29 17:16:29', '2018-06-29 17:16:29', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2018-06-29 17:16:29', '2018-06-29 17:16:29', '', 0, 'http://wrwc.dev.cc/?page_id=16', 0, 'page', '', 0),
(17, 1, '2018-06-29 17:16:29', '2018-06-29 17:16:29', '', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-06-29 17:16:29', '2018-06-29 17:16:29', '', 16, 'http://wrwc.dev.cc/2018/06/29/16-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-06-29 17:17:11', '2018-06-29 17:17:11', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-07-02 16:34:15', '2018-07-02 16:34:15', '', 0, 'http://wrwc.dev.cc/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2018-06-29 17:17:11', '2018-06-29 17:17:11', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-07-02 16:34:15', '2018-07-02 16:34:15', '', 0, 'http://wrwc.dev.cc/?p=20', 2, 'nav_menu_item', '', 0),
(21, 1, '2018-06-29 17:17:11', '2018-06-29 17:17:11', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2018-07-02 16:34:15', '2018-07-02 16:34:15', '', 0, 'http://wrwc.dev.cc/?p=21', 3, 'nav_menu_item', '', 0),
(23, 1, '2018-06-29 17:17:11', '2018-06-29 17:17:11', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2018-07-02 16:34:15', '2018-07-02 16:34:15', '', 0, 'http://wrwc.dev.cc/?p=23', 4, 'nav_menu_item', '', 0),
(24, 1, '2018-06-29 18:24:25', '2018-06-29 18:24:25', '', 'Front', '', 'publish', 'closed', 'closed', '', 'front', '', '', '2018-07-03 18:12:00', '2018-07-03 18:12:00', '', 0, 'http://wrwc.dev.cc/?page_id=24', 0, 'page', '', 0),
(25, 1, '2018-06-29 18:24:21', '2018-06-29 18:24:21', '', 'Front', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-06-29 18:24:21', '2018-06-29 18:24:21', '', 24, 'http://wrwc.dev.cc/2018/06/29/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-06-29 18:54:21', '2018-06-29 18:54:21', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:12:"options_page";s:8:"operator";s:2:"==";s:5:"value";s:22:"theme-general-settings";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Theme Options', 'theme-options', 'publish', 'closed', 'closed', '', 'group_5b367f6aafa02', '', '', '2018-07-03 17:33:32', '2018-07-03 17:33:32', '', 0, 'http://wrwc.dev.cc/?post_type=acf-field-group&#038;p=26', 0, 'acf-field-group', '', 0),
(27, 1, '2018-06-29 18:54:21', '2018-06-29 18:54:21', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_5b367f75d7b48', '', '', '2018-06-29 18:54:21', '2018-06-29 18:54:21', '', 26, 'http://wrwc.dev.cc/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2018-06-29 18:54:21', '2018-06-29 18:54:21', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Phone', 'phone', 'publish', 'closed', 'closed', '', 'field_5b367f9ed7b49', '', '', '2018-06-29 18:54:21', '2018-06-29 18:54:21', '', 26, 'http://wrwc.dev.cc/?post_type=acf-field&p=28', 1, 'acf-field', '', 0),
(29, 1, '2018-06-29 18:54:21', '2018-06-29 18:54:21', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Fax', 'fax', 'publish', 'closed', 'closed', '', 'field_5b367fbbd7b4a', '', '', '2018-06-29 18:54:21', '2018-06-29 18:54:21', '', 26, 'http://wrwc.dev.cc/?post_type=acf-field&p=29', 2, 'acf-field', '', 0),
(30, 1, '2018-06-29 18:54:21', '2018-06-29 18:54:21', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_5b367fc1d7b4b', '', '', '2018-06-29 18:54:21', '2018-06-29 18:54:21', '', 26, 'http://wrwc.dev.cc/?post_type=acf-field&p=30', 3, 'acf-field', '', 0),
(31, 1, '2018-06-29 18:54:21', '2018-06-29 18:54:21', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:3:"row";s:12:"button_label";s:10:"New Social";}', 'Social Accounts', 'social_accounts', 'publish', 'closed', 'closed', '', 'field_5b367fc7d7b4c', '', '', '2018-06-29 18:54:21', '2018-06-29 18:54:21', '', 26, 'http://wrwc.dev.cc/?post_type=acf-field&p=31', 4, 'acf-field', '', 0),
(32, 1, '2018-06-29 18:54:21', '2018-06-29 18:54:21', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:5:{s:8:"facebook";s:8:"Facebook";s:9:"linkedin2";s:8:"LinkedIn";s:7:"twitter";s:7:"Twitter";s:9:"instagram";s:9:"Instagram";s:11:"google-plus";s:7:"Google+";}s:13:"default_value";a:0:{}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:0;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:11:"placeholder";s:0:"";}', 'Social Service', 'social_service', 'publish', 'closed', 'closed', '', 'field_5b367fd3d7b4d', '', '', '2018-07-03 17:33:32', '2018-07-03 17:33:32', '', 31, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=32', 0, 'acf-field', '', 0),
(33, 1, '2018-06-29 18:54:21', '2018-06-29 18:54:21', 'a:6:{s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";}', 'Social Link', 'social_link', 'publish', 'closed', 'closed', '', 'field_5b367ff9d7b4e', '', '', '2018-07-03 17:12:18', '2018-07-03 17:12:18', '', 31, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=33', 1, 'acf-field', '', 0),
(34, 1, '2018-06-29 18:55:30', '2018-06-29 18:55:30', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-06-29 18:55:35', '2018-06-29 18:55:35', '', 0, 'http://wrwc.dev.cc/wp-content/uploads/2018/06/logo.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2018-07-02 16:07:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-02 16:07:16', '0000-00-00 00:00:00', '', 0, 'http://wrwc.dev.cc/?post_type=staff&p=35', 0, 'staff', '', 0),
(36, 1, '2018-07-02 16:07:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-07-02 16:07:19', '0000-00-00 00:00:00', '', 0, 'http://wrwc.dev.cc/?post_type=events&p=36', 0, 'events', '', 0),
(37, 1, '2018-07-02 16:34:50', '2018-07-02 16:34:50', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2018-07-02 17:20:59', '2018-07-02 17:20:59', '', 0, 'http://wrwc.dev.cc/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2018-07-02 16:34:50', '2018-07-02 16:34:50', '', 'Donate', '', 'publish', 'closed', 'closed', '', 'donate', '', '', '2018-07-02 17:20:59', '2018-07-02 17:20:59', '', 0, 'http://wrwc.dev.cc/?p=38', 2, 'nav_menu_item', '', 0),
(39, 1, '2018-07-02 18:52:48', '2018-07-02 18:52:48', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"post_template";s:8:"operator";s:2:"==";s:5:"value";s:24:"page-templates/front.php";}}}s:8:"position";s:15:"acf_after_title";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:1:{i:0;s:11:"the_content";}s:11:"description";s:0:"";}', 'Home', 'home', 'publish', 'closed', 'closed', '', 'group_5b3a74570dd3f', '', '', '2018-07-02 19:06:34', '2018-07-02 19:06:34', '', 0, 'http://wrwc.dev.cc/?post_type=acf-field-group&#038;p=39', 0, 'acf-field-group', '', 0),
(40, 1, '2018-07-02 18:52:48', '2018-07-02 18:52:48', 'a:16:{s:4:"type";s:7:"gallery";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"insert";s:7:"prepend";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Hero Gallery', 'hero_gallery', 'publish', 'closed', 'closed', '', 'field_5b3a7462a613b', '', '', '2018-07-02 19:00:40', '2018-07-02 19:00:40', '', 39, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=40', 2, 'acf-field', '', 0),
(49, 1, '2018-07-02 18:58:09', '2018-07-02 18:58:09', '', '2015_pic1', '', 'inherit', 'open', 'closed', '', '2015_pic1', '', '', '2018-07-02 19:01:13', '2018-07-02 19:01:13', '', 24, 'http://wrwc.dev.cc/wp-content/uploads/2018/07/2015_pic1.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2018-07-02 18:58:11', '2018-07-02 18:58:11', '', '2017_pic1', '', 'inherit', 'open', 'closed', '', '2017_pic1', '', '', '2018-07-02 18:58:11', '2018-07-02 18:58:11', '', 24, 'http://wrwc.dev.cc/wp-content/uploads/2018/07/2017_pic1.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-07-02 18:58:12', '2018-07-02 18:58:12', '', '2017_pic3', '', 'inherit', 'open', 'closed', '', '2017_pic3', '', '', '2018-07-02 18:58:12', '2018-07-02 18:58:12', '', 24, 'http://wrwc.dev.cc/wp-content/uploads/2018/07/2017_pic3.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-07-02 18:58:14', '2018-07-02 18:58:14', '', '2017_pic5', '', 'inherit', 'open', 'closed', '', '2017_pic5', '', '', '2018-07-02 18:58:14', '2018-07-02 18:58:14', '', 24, 'http://wrwc.dev.cc/wp-content/uploads/2018/07/2017_pic5.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-07-02 18:58:15', '2018-07-02 18:58:15', '', '2017_pic6', '', 'inherit', 'open', 'closed', '', '2017_pic6', '', '', '2018-07-03 13:00:01', '2018-07-03 13:00:01', '', 24, 'http://wrwc.dev.cc/wp-content/uploads/2018/07/2017_pic6.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-07-02 18:58:17', '2018-07-02 18:58:17', '', '2018_pic1', '', 'inherit', 'open', 'closed', '', '2018_pic1', '', '', '2018-07-02 18:58:17', '2018-07-02 18:58:17', '', 24, 'http://wrwc.dev.cc/wp-content/uploads/2018/07/2018_pic1.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2018-07-02 18:58:18', '2018-07-02 18:58:18', '', '2018_pic2', '', 'inherit', 'open', 'closed', '', '2018_pic2', '', '', '2018-07-02 18:58:18', '2018-07-02 18:58:18', '', 24, 'http://wrwc.dev.cc/wp-content/uploads/2018/07/2018_pic2.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-07-02 18:58:20', '2018-07-02 18:58:20', '', '2018_pic3', '', 'inherit', 'open', 'closed', '', '2018_pic3', '', '', '2018-07-02 18:58:20', '2018-07-02 18:58:20', '', 24, 'http://wrwc.dev.cc/wp-content/uploads/2018/07/2018_pic3.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2018-07-02 18:58:32', '2018-07-02 18:58:32', '', 'Front', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-02 18:58:32', '2018-07-02 18:58:32', '', 24, 'http://wrwc.dev.cc/24-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2018-07-02 19:00:40', '2018-07-02 19:00:40', 'a:7:{s:4:"type";s:3:"tab";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"placement";s:3:"top";s:8:"endpoint";i:0;}', 'Hero Banner', '', 'publish', 'closed', 'closed', '', 'field_5b3a75f315067', '', '', '2018-07-02 19:00:40', '2018-07-02 19:00:40', '', 39, 'http://wrwc.dev.cc/?post_type=acf-field&p=58', 0, 'acf-field', '', 0),
(59, 1, '2018-07-02 19:00:40', '2018-07-02 19:00:40', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Hero Text', 'hero_text', 'publish', 'closed', 'closed', '', 'field_5b3a761215069', '', '', '2018-07-02 19:00:40', '2018-07-02 19:00:40', '', 39, 'http://wrwc.dev.cc/?post_type=acf-field&p=59', 1, 'acf-field', '', 0),
(61, 1, '2018-07-02 19:00:40', '2018-07-02 19:00:40', 'a:6:{s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";}', 'Hero CTA Link', 'hero_cta_link', 'publish', 'closed', 'closed', '', 'field_5b3a76431506c', '', '', '2018-07-02 19:06:34', '2018-07-02 19:06:34', '', 39, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=61', 3, 'acf-field', '', 0),
(62, 1, '2018-07-02 19:01:29', '2018-07-02 19:01:29', '', 'Front', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-02 19:01:29', '2018-07-02 19:01:29', '', 24, 'http://wrwc.dev.cc/24-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2018-07-02 19:06:49', '2018-07-02 19:06:49', '', 'Front', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-02 19:06:49', '2018-07-02 19:06:49', '', 24, 'http://wrwc.dev.cc/24-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2018-07-02 19:10:34', '2018-07-02 19:10:34', '', 'Front', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-02 19:10:34', '2018-07-02 19:10:34', '', 24, 'http://wrwc.dev.cc/24-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-07-02 19:10:50', '2018-07-02 19:10:50', '', 'Front', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-02 19:10:50', '2018-07-02 19:10:50', '', 24, 'http://wrwc.dev.cc/24-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-07-03 13:44:52', '2018-07-03 13:44:52', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"page";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Page Blocks', 'page-blocks', 'publish', 'closed', 'closed', '', 'group_5b3b79822e5da', '', '', '2018-07-03 18:10:06', '2018-07-03 18:10:06', '', 0, 'http://wrwc.dev.cc/?post_type=acf-field-group&#038;p=66', 0, 'acf-field-group', '', 0),
(67, 1, '2018-07-03 13:44:52', '2018-07-03 13:44:52', 'a:9:{s:4:"type";s:16:"flexible_content";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"layouts";a:3:{s:13:"5b3b799c4e639";a:6:{s:3:"key";s:13:"5b3b799c4e639";s:5:"label";s:3:"CTA";s:4:"name";s:3:"cta";s:7:"display";s:5:"block";s:3:"min";s:0:"";s:3:"max";s:0:"";}s:13:"5b3bbb6e9d7d7";a:6:{s:3:"key";s:13:"5b3bbb6e9d7d7";s:5:"label";s:9:"CTA Image";s:4:"name";s:9:"cta-image";s:7:"display";s:5:"block";s:3:"min";s:0:"";s:3:"max";s:0:"";}s:13:"5b3b8edfd536d";a:6:{s:3:"key";s:13:"5b3b8edfd536d";s:5:"label";s:9:"CTA Cards";s:4:"name";s:9:"cta-cards";s:7:"display";s:5:"block";s:3:"min";s:0:"";s:3:"max";s:0:"";}}s:12:"button_label";s:11:"Add Content";s:3:"min";s:0:"";s:3:"max";s:0:"";}', 'Page Blocks', 'page_blocks', 'publish', 'closed', 'closed', '', 'field_5b3b799357d17', '', '', '2018-07-03 18:10:06', '2018-07-03 18:10:06', '', 66, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=67', 0, 'acf-field', '', 0),
(68, 1, '2018-07-03 13:44:52', '2018-07-03 13:44:52', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b799c4e639";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Admin Title', 'layout_title', 'publish', 'closed', 'closed', '', 'field_5b3b7cbb57d18', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=68', 1, 'acf-field', '', 0),
(69, 1, '2018-07-03 13:44:52', '2018-07-03 13:44:52', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b799c4e639";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5b3b7cef57d19', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=69', 2, 'acf-field', '', 0),
(70, 1, '2018-07-03 13:44:52', '2018-07-03 13:44:52', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b799c4e639";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_5b3b7cf657d1a', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=70', 4, 'acf-field', '', 0),
(71, 1, '2018-07-03 13:44:52', '2018-07-03 13:44:52', 'a:7:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b799c4e639";s:13:"default_value";s:7:"#FFFFFF";}', 'Background', 'background', 'publish', 'closed', 'closed', '', 'field_5b3b7d4c57d1b', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=71', 6, 'acf-field', '', 0),
(72, 1, '2018-07-03 13:44:52', '2018-07-03 13:44:52', 'a:7:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b799c4e639";s:13:"default_value";s:7:"#444444";}', 'Subtitle Color', 'subtitle_color', 'publish', 'closed', 'closed', '', 'field_5b3b7d5e57d1c', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=72', 5, 'acf-field', '', 0),
(73, 1, '2018-07-03 13:44:52', '2018-07-03 13:44:52', 'a:7:{s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b799c4e639";s:13:"return_format";s:5:"array";}', 'CTA', 'cta', 'publish', 'closed', 'closed', '', 'field_5b3b7dc257d1d', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=73', 7, 'acf-field', '', 0),
(74, 1, '2018-07-03 13:46:34', '2018-07-03 13:46:34', 'a:13:{s:4:"type";s:5:"radio";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b799c4e639";s:7:"choices";a:2:{s:6:"center";s:6:"Center";s:4:"side";s:4:"Side";}s:10:"allow_null";i:0;s:12:"other_choice";i:0;s:17:"save_other_choice";i:0;s:13:"default_value";s:6:"center";s:6:"layout";s:10:"horizontal";s:13:"return_format";s:5:"value";}', 'CTA Layout', 'cta_layout', 'publish', 'closed', 'closed', '', 'field_5b3b7decdc9d3', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=74', 9, 'acf-field', '', 0),
(75, 1, '2018-07-03 13:49:00', '2018-07-03 13:49:00', '', 'Front', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-03 13:49:00', '2018-07-03 13:49:00', '', 24, 'http://wrwc.dev.cc/24-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2018-07-03 13:49:34', '2018-07-03 13:49:34', 'a:16:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b799c4e639";s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Background Image', 'background_image', 'publish', 'closed', 'closed', '', 'field_5b3b7ed17eb22', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=76', 8, 'acf-field', '', 0),
(77, 1, '2018-07-03 13:51:23', '2018-07-03 13:51:23', '', 'ocean', '', 'inherit', 'open', 'closed', '', 'ocean', '', '', '2018-07-03 13:51:26', '2018-07-03 13:51:26', '', 24, 'http://wrwc.dev.cc/wp-content/uploads/2018/07/ocean.png', 0, 'attachment', 'image/png', 0),
(78, 1, '2018-07-03 13:52:25', '2018-07-03 13:52:25', '', 'Front', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-03 13:52:25', '2018-07-03 13:52:25', '', 24, 'http://wrwc.dev.cc/24-revision-v1/', 0, 'revision', '', 0),
(79, 1, '2018-07-03 14:02:22', '2018-07-03 14:02:22', '', 'Front', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-03 14:02:22', '2018-07-03 14:02:22', '', 24, 'http://wrwc.dev.cc/24-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-07-03 14:02:32', '2018-07-03 14:02:32', '', 'Front', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-03 14:02:32', '2018-07-03 14:02:32', '', 24, 'http://wrwc.dev.cc/24-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2018-07-03 14:25:59', '2018-07-03 14:25:59', 'a:7:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b799c4e639";s:13:"default_value";s:7:"#444444";}', 'Title Color', 'title_color', 'publish', 'closed', 'closed', '', 'field_5b3b8752dbea4', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=81', 3, 'acf-field', '', 0),
(82, 1, '2018-07-03 14:26:35', '2018-07-03 14:26:35', '', 'Front', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-03 14:26:35', '2018-07-03 14:26:35', '', 24, 'http://wrwc.dev.cc/24-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-07-03 15:06:46', '2018-07-03 15:06:46', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b8edfd536d";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Admin Title', 'layout_title', 'publish', 'closed', 'closed', '', 'field_5b3b8edfd536e', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=83', 1, 'acf-field', '', 0),
(84, 1, '2018-07-03 15:06:46', '2018-07-03 15:06:46', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b8edfd536d";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5b3b8edfd536f', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=84', 2, 'acf-field', '', 0),
(85, 1, '2018-07-03 15:06:46', '2018-07-03 15:06:46', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b8edfd536d";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_5b3b8edfd5371', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=85', 3, 'acf-field', '', 0),
(86, 1, '2018-07-03 15:06:46', '2018-07-03 15:06:46', 'a:7:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b8edfd536d";s:13:"default_value";s:7:"#444444";}', 'Subtitle Color', 'subtitle_color', 'publish', 'closed', 'closed', '', 'field_5b3b8edfd5372', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=86', 4, 'acf-field', '', 0),
(87, 1, '2018-07-03 15:06:46', '2018-07-03 15:06:46', 'a:7:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b8edfd536d";s:13:"default_value";s:7:"#FFFFFF";}', 'Background', 'background', 'publish', 'closed', 'closed', '', 'field_5b3b8edfd5373', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=87', 5, 'acf-field', '', 0),
(88, 1, '2018-07-03 15:06:46', '2018-07-03 15:06:46', 'a:11:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b8edfd536d";s:9:"collapsed";s:19:"field_5b3b9099d5379";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"block";s:12:"button_label";s:8:"Add Card";}', 'CTA Cards', 'cta_cards', 'publish', 'closed', 'closed', '', 'field_5b3b906fd5377', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&#038;p=88', 6, 'acf-field', '', 0),
(89, 1, '2018-07-03 15:06:46', '2018-07-03 15:06:46', 'a:16:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b8edfd536d";s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Card Image', 'card_image', 'publish', 'closed', 'closed', '', 'field_5b3b908fd5378', '', '', '2018-07-03 15:06:46', '2018-07-03 15:06:46', '', 88, 'http://wrwc.dev.cc/?post_type=acf-field&p=89', 0, 'acf-field', '', 0),
(90, 1, '2018-07-03 15:06:46', '2018-07-03 15:06:46', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b8edfd536d";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Card Title', 'card_title', 'publish', 'closed', 'closed', '', 'field_5b3b9099d5379', '', '', '2018-07-03 15:06:46', '2018-07-03 15:06:46', '', 88, 'http://wrwc.dev.cc/?post_type=acf-field&p=90', 1, 'acf-field', '', 0),
(91, 1, '2018-07-03 15:06:46', '2018-07-03 15:06:46', 'a:11:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b8edfd536d";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";i:175;s:4:"rows";i:6;s:9:"new_lines";s:0:"";}', 'Card Description', 'card_description', 'publish', 'closed', 'closed', '', 'field_5b3b909fd537a', '', '', '2018-07-03 15:06:46', '2018-07-03 15:06:46', '', 88, 'http://wrwc.dev.cc/?post_type=acf-field&p=91', 2, 'acf-field', '', 0),
(92, 1, '2018-07-03 15:06:46', '2018-07-03 15:06:46', 'a:7:{s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b8edfd536d";s:13:"return_format";s:5:"array";}', 'Card Link', 'card_link', 'publish', 'closed', 'closed', '', 'field_5b3b90fad537b', '', '', '2018-07-03 15:06:46', '2018-07-03 15:06:46', '', 88, 'http://wrwc.dev.cc/?post_type=acf-field&p=92', 3, 'acf-field', '', 0),
(93, 1, '2018-07-03 15:09:11', '2018-07-03 15:09:11', '', 'Art on the Greenway', '', 'inherit', 'open', 'closed', '', 'art-on-the-greenway', '', '', '2018-07-03 15:09:17', '2018-07-03 15:09:17', '', 24, 'http://wrwc.dev.cc/wp-content/uploads/2018/07/Art-on-the-Greenway.png', 0, 'attachment', 'image/png', 0),
(94, 1, '2018-07-03 15:09:13', '2018-07-03 15:09:13', '', 'Canoe & Kayak Trips', '', 'inherit', 'open', 'closed', '', 'canoe-kayak-trips', '', '', '2018-07-03 15:09:13', '2018-07-03 15:09:13', '', 24, 'http://wrwc.dev.cc/wp-content/uploads/2018/07/Canoe-Kayak-Trips.png', 0, 'attachment', 'image/png', 0),
(95, 1, '2018-07-03 15:09:14', '2018-07-03 15:09:14', '', 'River Rangers', '', 'inherit', 'open', 'closed', '', 'river-rangers', '', '', '2018-07-03 15:09:14', '2018-07-03 15:09:14', '', 24, 'http://wrwc.dev.cc/wp-content/uploads/2018/07/River-Rangers.png', 0, 'attachment', 'image/png', 0),
(96, 1, '2018-07-03 15:11:30', '2018-07-03 15:11:30', '', 'Front', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-03 15:11:30', '2018-07-03 15:11:30', '', 24, 'http://wrwc.dev.cc/24-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2018-07-03 17:43:34', '2018-07-03 17:43:34', 'a:11:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b799c4e639";s:7:"message";s:0:"";s:13:"default_value";i:1;s:2:"ui";i:0;s:10:"ui_on_text";s:0:"";s:11:"ui_off_text";s:0:"";}', 'Visible?', 'visible', 'publish', 'closed', 'closed', '', 'field_5b3bb5797a6d5', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&p=97', 0, 'acf-field', '', 0),
(98, 1, '2018-07-03 17:43:34', '2018-07-03 17:43:34', 'a:11:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3b8edfd536d";s:7:"message";s:0:"";s:13:"default_value";i:1;s:2:"ui";i:0;s:10:"ui_on_text";s:0:"";s:11:"ui_off_text";s:0:"";}', 'Visible?', 'visible', 'publish', 'closed', 'closed', '', 'field_5b3bb5b67a6d6', '', '', '2018-07-03 17:43:34', '2018-07-03 17:43:34', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&p=98', 0, 'acf-field', '', 0),
(99, 1, '2018-07-03 17:44:59', '2018-07-03 17:44:59', '', 'Front', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-03 17:44:59', '2018-07-03 17:44:59', '', 24, 'http://wrwc.dev.cc/24-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2018-07-03 17:45:16', '2018-07-03 17:45:16', '', 'Front', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-03 17:45:16', '2018-07-03 17:45:16', '', 24, 'http://wrwc.dev.cc/24-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2018-07-03 18:10:06', '2018-07-03 18:10:06', 'a:11:{s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3bbb6e9d7d7";s:7:"message";s:0:"";s:13:"default_value";i:1;s:2:"ui";i:0;s:10:"ui_on_text";s:0:"";s:11:"ui_off_text";s:0:"";}', 'Visible?', 'visible', 'publish', 'closed', 'closed', '', 'field_5b3bbb6e9d7d8', '', '', '2018-07-03 18:10:06', '2018-07-03 18:10:06', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&p=101', 0, 'acf-field', '', 0),
(102, 1, '2018-07-03 18:10:06', '2018-07-03 18:10:06', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3bbb6e9d7d7";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Admin Title', 'layout_title', 'publish', 'closed', 'closed', '', 'field_5b3bbb6e9d7d9', '', '', '2018-07-03 18:10:06', '2018-07-03 18:10:06', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&p=102', 1, 'acf-field', '', 0),
(103, 1, '2018-07-03 18:10:06', '2018-07-03 18:10:06', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3bbb6e9d7d7";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5b3bbb6e9d7da', '', '', '2018-07-03 18:10:06', '2018-07-03 18:10:06', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&p=103', 2, 'acf-field', '', 0),
(104, 1, '2018-07-03 18:10:06', '2018-07-03 18:10:06', 'a:7:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3bbb6e9d7d7";s:13:"default_value";s:7:"#444444";}', 'Title Color', 'title_color', 'publish', 'closed', 'closed', '', 'field_5b3bbb6e9d7db', '', '', '2018-07-03 18:10:06', '2018-07-03 18:10:06', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&p=104', 3, 'acf-field', '', 0),
(105, 1, '2018-07-03 18:10:06', '2018-07-03 18:10:06', 'a:11:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3bbb6e9d7d7";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Subtitle', 'subtitle', 'publish', 'closed', 'closed', '', 'field_5b3bbb6e9d7dc', '', '', '2018-07-03 18:10:06', '2018-07-03 18:10:06', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&p=105', 4, 'acf-field', '', 0),
(106, 1, '2018-07-03 18:10:06', '2018-07-03 18:10:06', 'a:7:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3bbb6e9d7d7";s:13:"default_value";s:7:"#444444";}', 'Subtitle Color', 'subtitle_color', 'publish', 'closed', 'closed', '', 'field_5b3bbb6e9d7dd', '', '', '2018-07-03 18:10:06', '2018-07-03 18:10:06', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&p=106', 5, 'acf-field', '', 0),
(107, 1, '2018-07-03 18:10:06', '2018-07-03 18:10:06', 'a:7:{s:4:"type";s:12:"color_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3bbb6e9d7d7";s:13:"default_value";s:7:"#FFFFFF";}', 'Background', 'background', 'publish', 'closed', 'closed', '', 'field_5b3bbb6e9d7de', '', '', '2018-07-03 18:10:06', '2018-07-03 18:10:06', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&p=107', 6, 'acf-field', '', 0),
(108, 1, '2018-07-03 18:10:06', '2018-07-03 18:10:06', 'a:7:{s:4:"type";s:4:"link";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3bbb6e9d7d7";s:13:"return_format";s:5:"array";}', 'CTA', 'cta', 'publish', 'closed', 'closed', '', 'field_5b3bbb6e9d7df', '', '', '2018-07-03 18:10:06', '2018-07-03 18:10:06', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&p=108', 7, 'acf-field', '', 0),
(109, 1, '2018-07-03 18:10:06', '2018-07-03 18:10:06', 'a:16:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"parent_layout";s:13:"5b3bbb6e9d7d7";s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Featured Image', 'featured_image', 'publish', 'closed', 'closed', '', 'field_5b3bbb6e9d7e0', '', '', '2018-07-03 18:10:06', '2018-07-03 18:10:06', '', 67, 'http://wrwc.dev.cc/?post_type=acf-field&p=109', 8, 'acf-field', '', 0),
(110, 1, '2018-07-03 18:11:50', '2018-07-03 18:11:50', '', 'Red Shed Bike Camp_Summer', '', 'inherit', 'open', 'closed', '', 'red-shed-bike-camp_summer', '', '', '2018-07-03 18:11:54', '2018-07-03 18:11:54', '', 24, 'http://wrwc.dev.cc/wp-content/uploads/2018/07/Red-Shed-Bike-Camp_Summer.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2018-07-03 18:12:00', '2018-07-03 18:12:00', '', 'Front', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2018-07-03 18:12:00', '2018-07-03 18:12:00', '', 24, 'http://wrwc.dev.cc/24-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_smush_dir_images`
--

DROP TABLE IF EXISTS `wp_smush_dir_images`;
CREATE TABLE IF NOT EXISTS `wp_smush_dir_images` (
  `id` mediumint(9) NOT NULL,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `path_hash` char(32) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resize` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lossy` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `error` varchar(55) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `image_size` int(10) unsigned DEFAULT NULL,
  `orig_size` int(10) unsigned DEFAULT NULL,
  `file_time` int(10) unsigned DEFAULT NULL,
  `last_scan` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `meta` text COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Top Menu', 'top-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 2, 0),
(20, 2, 0),
(21, 2, 0),
(23, 2, 0),
(37, 3, 0),
(38, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:"6cf8925b6fb7df2541fb07f7447880007bd3c8c94798bba8457ec6396f3f5b71";a:4:{s:10:"expiration";i:1531746378;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36";s:5:"login";i:1530536778;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:24:"add-post-type-rl_gallery";i:1;s:12:"add-post_tag";i:2;s:15:"add-post_format";i:3;s:15:"add-rl_category";i:4;s:10:"add-rl_tag";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1530298731'),
(23, 1, 'acf_user_settings', 'a:2:{s:29:"collapsed_field_5b3b906fd5377";s:5:"0,1,2";s:29:"collapsed_field_5b3b799357d17";s:5:"0,1,2";}'),
(24, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BZflHnNPwyUwgJiHIp7SQx.749yaXh1', 'admin', 'tu@delindesign.com', '', '2018-06-28 16:38:22', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_smush_dir_images`
--
ALTER TABLE `wp_smush_dir_images`
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `path_hash` (`path_hash`),
  ADD KEY `image_size` (`image_size`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=401;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=757;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `wp_smush_dir_images`
--
ALTER TABLE `wp_smush_dir_images`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
