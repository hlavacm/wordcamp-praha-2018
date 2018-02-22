# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.5-10.1.21-MariaDB)
# Database: 1-typerocket
# Generation Time: 2018-02-22 14:09:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tr_wp_commentmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tr_wp_commentmeta`;

CREATE TABLE `tr_wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tr_wp_comments
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tr_wp_comments`;

CREATE TABLE `tr_wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tr_wp_comments` WRITE;
/*!40000 ALTER TABLE `tr_wp_comments` DISABLE KEYS */;

INSERT INTO `tr_wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`)
VALUES
	(1,1,'WordPress komentátor','wapuu@wordpress.example','https://wordpress.org/','','2018-02-06 16:07:56','2018-02-06 15:07:56','Zdravím, tohle je komentář.\nChcete-li začít se schvalováním, úpravami a mazáním komentářů, pak si prohlédněte sekci Komentáře na nástěnce.\nProfilové obrázky komentujících vám přináší služba <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','',0,0);

/*!40000 ALTER TABLE `tr_wp_comments` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tr_wp_links
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tr_wp_links`;

CREATE TABLE `tr_wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tr_wp_options
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tr_wp_options`;

CREATE TABLE `tr_wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tr_wp_options` WRITE;
/*!40000 ALTER TABLE `tr_wp_options` DISABLE KEYS */;

INSERT INTO `tr_wp_options` (`option_id`, `option_name`, `option_value`, `autoload`)
VALUES
	(1,'siteurl','http://localhost/wordcamp-praha-2018/1-typerocket','yes'),
	(2,'home','http://localhost/wordcamp-praha-2018/1-typerocket','yes'),
	(3,'blogname','Typerocket','yes'),
	(4,'blogdescription','Další web používající WordPress','yes'),
	(5,'users_can_register','0','yes'),
	(6,'admin_email','hlavac@brilo.cz','yes'),
	(7,'start_of_week','1','yes'),
	(8,'use_balanceTags','0','yes'),
	(9,'use_smilies','1','yes'),
	(10,'require_name_email','1','yes'),
	(11,'comments_notify','1','yes'),
	(12,'posts_per_rss','10','yes'),
	(13,'rss_use_excerpt','0','yes'),
	(14,'mailserver_url','mail.example.com','yes'),
	(15,'mailserver_login','login@example.com','yes'),
	(16,'mailserver_pass','password','yes'),
	(17,'mailserver_port','110','yes'),
	(18,'default_category','1','yes'),
	(19,'default_comment_status','open','yes'),
	(20,'default_ping_status','open','yes'),
	(21,'default_pingback_flag','1','yes'),
	(22,'posts_per_page','10','yes'),
	(23,'date_format','j. n. Y','yes'),
	(24,'time_format','G:i','yes'),
	(25,'links_updated_date_format','j. n. Y, G:i','yes'),
	(26,'comment_moderation','0','yes'),
	(27,'moderation_notify','1','yes'),
	(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),
	(29,'rewrite_rules','a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:25:\"tr_json_api/v1/([^/]*)/?$\";s:40:\"index.php?tr_json_controller=$matches[1]\";s:33:\"tr_json_api/v1/([^/]*)/([^/]*)/?$\";s:65:\"index.php?tr_json_controller=$matches[1]&tr_json_item=$matches[2]\";s:43:\"tr_matrix_api/v1/([^/]*)/([^/]*)/([^/]*)/?$\";s:93:\"index.php?tr_matrix_group=$matches[1]&tr_matrix_type=$matches[2]&tr_matrix_folder=$matches[3]\";s:44:\"tr_builder_api/v1/([^/]*)/([^/]*)/([^/]*)/?$\";s:96:\"index.php?tr_builder_group=$matches[1]&tr_builder_type=$matches[2]&tr_builder_folder=$matches[3]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),
	(30,'hack_file','0','yes'),
	(31,'blog_charset','UTF-8','yes'),
	(32,'moderation_keys','','no'),
	(33,'active_plugins','a:0:{}','yes'),
	(34,'category_base','','yes'),
	(35,'ping_sites','http://rpc.pingomatic.com/','yes'),
	(36,'comment_max_links','2','yes'),
	(37,'gmt_offset','0','yes'),
	(38,'default_email_category','1','yes'),
	(39,'recently_edited','','no'),
	(40,'template','typerocket','yes'),
	(41,'stylesheet','typerocket','yes'),
	(42,'comment_whitelist','1','yes'),
	(43,'blacklist_keys','','no'),
	(44,'comment_registration','0','yes'),
	(45,'html_type','text/html','yes'),
	(46,'use_trackback','0','yes'),
	(47,'default_role','subscriber','yes'),
	(48,'db_version','38590','yes'),
	(49,'uploads_use_yearmonth_folders','1','yes'),
	(50,'upload_path','','yes'),
	(51,'blog_public','1','yes'),
	(52,'default_link_category','2','yes'),
	(53,'show_on_front','posts','yes'),
	(54,'tag_base','','yes'),
	(55,'show_avatars','1','yes'),
	(56,'avatar_rating','G','yes'),
	(57,'upload_url_path','','yes'),
	(58,'thumbnail_size_w','150','yes'),
	(59,'thumbnail_size_h','150','yes'),
	(60,'thumbnail_crop','1','yes'),
	(61,'medium_size_w','300','yes'),
	(62,'medium_size_h','300','yes'),
	(63,'avatar_default','mystery','yes'),
	(64,'large_size_w','1024','yes'),
	(65,'large_size_h','1024','yes'),
	(66,'image_default_link_type','none','yes'),
	(67,'image_default_size','','yes'),
	(68,'image_default_align','','yes'),
	(69,'close_comments_for_old_posts','0','yes'),
	(70,'close_comments_days_old','14','yes'),
	(71,'thread_comments','1','yes'),
	(72,'thread_comments_depth','5','yes'),
	(73,'page_comments','0','yes'),
	(74,'comments_per_page','50','yes'),
	(75,'default_comments_page','newest','yes'),
	(76,'comment_order','asc','yes'),
	(77,'sticky_posts','a:0:{}','yes'),
	(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(79,'widget_text','a:0:{}','yes'),
	(80,'widget_rss','a:0:{}','yes'),
	(81,'uninstall_plugins','a:0:{}','no'),
	(82,'timezone_string','Europe/Prague','yes'),
	(83,'page_for_posts','0','yes'),
	(84,'page_on_front','0','yes'),
	(85,'default_post_format','0','yes'),
	(86,'link_manager_enabled','0','yes'),
	(87,'finished_splitting_shared_terms','1','yes'),
	(88,'site_icon','0','yes'),
	(89,'medium_large_size_w','768','yes'),
	(90,'medium_large_size_h','0','yes'),
	(91,'initial_db_version','38590','yes'),
	(92,'tr_wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),
	(93,'fresh_site','0','yes'),
	(94,'WPLANG','cs_CZ','yes'),
	(95,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(96,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(97,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),
	(98,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),
	(99,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),
	(100,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),
	(101,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(102,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(103,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(104,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(105,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(106,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(107,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(108,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(109,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),
	(110,'cron','a:4:{i:1519312076;a:3:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1519312133;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1519372905;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),
	(120,'can_compress_scripts','1','no'),
	(133,'theme_mods_twentyseventeen','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1517929744;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes'),
	(134,'current_theme','Typerocket TEST','yes'),
	(135,'theme_mods_typerocket','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:14:\"tr-header-menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;}','yes'),
	(136,'theme_switched','','yes'),
	(137,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes'),
	(138,'category_children','a:0:{}','yes'),
	(165,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/cs_CZ/wordpress-4.9.4.zip\";s:6:\"locale\";s:5:\"cs_CZ\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/cs_CZ/wordpress-4.9.4.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.4\";s:7:\"version\";s:5:\"4.9.4\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1519288920;s:15:\"version_checked\";s:5:\"4.9.4\";s:12:\"translations\";a:0:{}}','no'),
	(166,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1519288919;s:7:\"checked\";a:1:{s:10:\"typerocket\";s:3:\"0.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),
	(167,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1519288917;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:0:{}}','no'),
	(169,'_site_transient_timeout_theme_roots','1519290718','no'),
	(170,'_site_transient_theme_roots','a:1:{s:10:\"typerocket\";s:7:\"/themes\";}','no');

/*!40000 ALTER TABLE `tr_wp_options` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tr_wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tr_wp_postmeta`;

CREATE TABLE `tr_wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tr_wp_postmeta` WRITE;
/*!40000 ALTER TABLE `tr_wp_postmeta` DISABLE KEYS */;

INSERT INTO `tr_wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(2,4,'_menu_item_type','custom'),
	(3,4,'_menu_item_menu_item_parent','0'),
	(4,4,'_menu_item_object_id','4'),
	(5,4,'_menu_item_object','custom'),
	(6,4,'_menu_item_target',''),
	(7,4,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(8,4,'_menu_item_xfn',''),
	(9,4,'_menu_item_url','http://localhost/wordcamp-praha-2018/1-typerocket/'),
	(11,5,'_menu_item_type','post_type'),
	(12,5,'_menu_item_menu_item_parent','0'),
	(13,5,'_menu_item_object_id','2'),
	(14,5,'_menu_item_object','page'),
	(15,5,'_menu_item_target',''),
	(16,5,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(17,5,'_menu_item_xfn',''),
	(18,5,'_menu_item_url',''),
	(20,2,'_edit_lock','1517946362:1'),
	(21,2,'_edit_last','1'),
	(22,2,'use_builder','1'),
	(23,2,'seo','a:1:{s:4:\"meta\";a:14:{s:5:\"title\";s:26:\"TEST - Zkušební stránka\";s:11:\"description\";s:0:\"\";s:8:\"og_title\";s:0:\"\";s:7:\"og_desc\";s:0:\"\";s:8:\"meta_img\";s:0:\"\";s:7:\"tw_site\";s:8:\"@hlavacm\";s:7:\"tw_card\";s:7:\"summary\";s:8:\"tw_title\";s:0:\"\";s:7:\"tw_desc\";s:0:\"\";s:6:\"tw_img\";s:0:\"\";s:9:\"canonical\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:6:\"follow\";s:4:\"none\";s:5:\"index\";s:4:\"none\";}}'),
	(24,2,'builder','a:1:{i:1517932553;a:1:{s:7:\"content\";a:2:{s:8:\"headline\";s:4:\"TEST\";s:7:\"content\";s:11:\"<p>test</p>\";}}}'),
	(25,10,'_edit_last','1'),
	(26,10,'_edit_lock','1518682227:1'),
	(27,10,'klient','Tester'),
	(28,10,'typy','1'),
	(29,10,'seo','a:1:{s:4:\"meta\";a:14:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"og_title\";s:0:\"\";s:7:\"og_desc\";s:0:\"\";s:8:\"meta_img\";s:0:\"\";s:7:\"tw_site\";s:0:\"\";s:7:\"tw_card\";s:7:\"summary\";s:8:\"tw_title\";s:0:\"\";s:7:\"tw_desc\";s:0:\"\";s:6:\"tw_img\";s:0:\"\";s:9:\"canonical\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:6:\"follow\";s:4:\"none\";s:5:\"index\";s:4:\"none\";}}'),
	(30,10,'datum','02/01/2018'),
	(31,11,'_edit_last','1'),
	(32,11,'_edit_lock','1518682213:1'),
	(33,11,'datum','02/02/2018'),
	(34,11,'klient','Tester'),
	(35,11,'typy','2'),
	(36,11,'seo','a:1:{s:4:\"meta\";a:14:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"og_title\";s:0:\"\";s:7:\"og_desc\";s:0:\"\";s:8:\"meta_img\";s:0:\"\";s:7:\"tw_site\";s:0:\"\";s:7:\"tw_card\";s:7:\"summary\";s:8:\"tw_title\";s:0:\"\";s:7:\"tw_desc\";s:0:\"\";s:6:\"tw_img\";s:0:\"\";s:9:\"canonical\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:6:\"follow\";s:4:\"none\";s:5:\"index\";s:4:\"none\";}}'),
	(37,12,'_edit_last','1'),
	(38,12,'_edit_lock','1518686128:1'),
	(39,12,'datum','02/03/2018'),
	(40,12,'klient','Tester'),
	(41,12,'typy','3'),
	(42,12,'seo','a:1:{s:4:\"meta\";a:14:{s:5:\"title\";s:0:\"\";s:11:\"description\";s:0:\"\";s:8:\"og_title\";s:0:\"\";s:7:\"og_desc\";s:0:\"\";s:8:\"meta_img\";s:0:\"\";s:7:\"tw_site\";s:0:\"\";s:7:\"tw_card\";s:7:\"summary\";s:8:\"tw_title\";s:0:\"\";s:7:\"tw_desc\";s:0:\"\";s:6:\"tw_img\";s:0:\"\";s:9:\"canonical\";s:0:\"\";s:8:\"redirect\";s:0:\"\";s:6:\"follow\";s:4:\"none\";s:5:\"index\";s:4:\"none\";}}'),
	(43,13,'_wp_attached_file','2018/02/test.jpg'),
	(44,13,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:970;s:4:\"file\";s:16:\"2018/02/test.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"test-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"test-300x227.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:227;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"test-768x582.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:582;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"test-1024x776.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:776;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
	(45,12,'photo','13'),
	(46,11,'photo','13'),
	(47,10,'photo','13'),
	(48,12,'newsletter','1');

/*!40000 ALTER TABLE `tr_wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tr_wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tr_wp_posts`;

CREATE TABLE `tr_wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tr_wp_posts` WRITE;
/*!40000 ALTER TABLE `tr_wp_posts` DISABLE KEYS */;

INSERT INTO `tr_wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2018-02-06 16:07:56','2018-02-06 15:07:56','Vítejte ve WordPressu. Toto je váš první testovací příspěvek. Můžete ho upravit, nebo smazat a postupně pak začít s tvorbou vlastního webu.','Ahoj všichni!','','publish','open','open','','ahoj-vsichni','','','2018-02-06 16:07:56','2018-02-06 15:07:56','',0,'http://localhost/wordcamp-praha-2018/1-typerocket/?p=1',0,'post','',1),
	(2,1,'2018-02-06 16:07:56','2018-02-06 15:07:56','Právě si prohlížíte ukázkovou stránku, která byla vytvořena automaticky během instalace WordPressu. Stránky se liší od příspěvků zejména tím, že obsahují nějaký statický text a jsou zobrazovány na stále stejném místě webu (u většiny šablon jde o navigační menu). Lidé obvykle nejdříve vytvářejí základní informační stránky, kde se představují návštěvníkům webu a seznamují je se svými záměry. Může to být např. něco v následujícím stylu (osobní web):\r\n<blockquote>Vítejte! Jmenuju se Pavel a bydlím na venkově. Pracuju jako programátor a po nocích překládáme WordPress do češtiny. A tohle je můj web, kde se občas dozvíte nejen něco o programování, ale i o mé rodině a cestování. Rádi totiž jezdíme na výlety, a to bez ohledu na počasí, protože já zpívám v dešti rád...</blockquote>\r\n... a nebo něco podobného (firemní web):\r\n<blockquote>Firma XYZ byla založena v roce 1991 a již od počátku se zabývá výrobou kvalitního jablečného moštu. Soustředíme se na zpracování ovoce od drobných pěstitelů a naše výrobky neobsahují žádné další chemické přísady. Firma sídlí v Liberci a zaměstnává více než 200 kvalifikovaných lidí.</blockquote>\r\nPokud s WordPressem právě začínáte, měli byste se nejdříve přihlásit do <a href=\"http://localhost/wordcamp-praha-2018/1-typerocket/wp-admin/\">administrace</a> a tuto stránku smazat (nebo upravit). A nic už vám také nebrání vytvářet další obsah webu v podobě nových stránek a příspěvků. Doufáme, že budete se správou webu v redakčním systému WordPress spokojeni!','Zkušební stránka','','publish','closed','open','','zkusebni-stranka','','','2018-02-06 16:56:02','2018-02-06 15:56:02','',0,'http://localhost/wordcamp-praha-2018/1-typerocket/?page_id=2',0,'page','',0),
	(4,1,'2018-02-06 16:41:38','2018-02-06 15:41:38','','Úvodní stránka','','publish','closed','closed','','uvodni-stranka','','','2018-02-06 16:41:49','2018-02-06 15:41:49','',0,'http://localhost/wordcamp-praha-2018/1-typerocket/?p=4',1,'nav_menu_item','',0),
	(5,1,'2018-02-06 16:41:38','2018-02-06 15:41:38',' ','','','publish','closed','closed','','5','','','2018-02-06 16:41:49','2018-02-06 15:41:49','',0,'http://localhost/wordcamp-praha-2018/1-typerocket/?p=5',2,'nav_menu_item','',0),
	(6,1,'2018-02-06 16:55:50','2018-02-06 15:55:50','Právě si prohlížíte ukázkovou stránku, která byla vytvořena automaticky během instalace WordPressu. Stránky se liší od příspěvků zejména tím, že obsahují nějaký statický text a jsou zobrazovány na stále stejném místě webu (u většiny šablon jde o navigační menu). Lidé obvykle nejdříve vytvářejí základní informační stránky, kde se představují návštěvníkům webu a seznamují je se svými záměry. Může to být např. něco v následujícím stylu (osobní web):\r\n<blockquote>Vítejte! Jmenuju se Pavel a bydlím na venkově. Pracuju jako programátor a po nocích překládáme WordPress do češtiny. A tohle je můj web, kde se občas dozvíte nejen něco o programování, ale i o mé rodině a cestování. Rádi totiž jezdíme na výlety, a to bez ohledu na počasí, protože já zpívám v dešti rád...</blockquote>\r\n... a nebo něco podobného (firemní web):\r\n<blockquote>Firma XYZ byla založena v roce 1991 a již od počátku se zabývá výrobou kvalitního jablečného moštu. Soustředíme se na zpracování ovoce od drobných pěstitelů a naše výrobky neobsahují žádné další chemické přísady. Firma sídlí v Liberci a zaměstnává více než 200 kvalifikovaných lidí.</blockquote>\r\nPokud s WordPressem právě začínáte, měli byste se nejdříve přihlásit do <a href=\"http://localhost/wordcamp-praha-2018/1-typerocket/wp-admin/\">administrace</a> a tuto stránku smazat (nebo upravit). A nic už vám také nebrání vytvářet další obsah webu v podobě nových stránek a příspěvků. Doufáme, že budete se správou webu v redakčním systému WordPress spokojeni!','Zkušební stránka','','inherit','closed','closed','','2-revision-v1','','','2018-02-06 16:55:50','2018-02-06 15:55:50','',2,'http://localhost/wordcamp-praha-2018/1-typerocket/2018/02/06/2-revision-v1/',0,'revision','',0),
	(10,1,'2018-02-15 09:08:38','2018-02-15 08:08:38','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id diam sed arcu euismod lacinia. Donec in dui in neque auctor interdum. Duis vestibulum, purus at pharetra suscipit, nunc nunc volutpat sapien, nec condimentum ligula est eu felis. Cras convallis erat vitae leo posuere, eget sagittis nunc imperdiet. Etiam ullamcorper rhoncus finibus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Ut porttitor porttitor fringilla.\r\n\r\nUt auctor, dolor id condimentum feugiat, eros orci placerat leo, facilisis faucibus ante erat nec ipsum. Etiam lacinia vulputate mauris, in gravida tellus vehicula at. Morbi sed felis eget nibh eleifend iaculis. Duis tincidunt iaculis libero, nec porttitor risus. Fusce euismod, magna vitae facilisis euismod, dolor tortor euismod lectus, sit amet feugiat nibh nunc id eros. Sed sodales vehicula metus, eu consectetur magna mattis sodales. Duis luctus sapien sed risus rhoncus molestie. Maecenas est lorem, consequat a lectus quis, maximus aliquet urna. Etiam venenatis, mi a consectetur eleifend, ante ligula mollis eros, ac sollicitudin diam turpis malesuada sapien. In id nisl metus. Integer risus ante, commodo id ipsum ac, placerat viverra velit. Nunc ornare lectus in posuere dapibus. Aliquam id enim a lectus cursus tempus non id ligula. Sed accumsan mollis ornare.\r\n\r\nSuspendisse dapibus tempus augue, vel lobortis quam. Aliquam non lorem non ligula euismod vestibulum. Suspendisse porta erat neque, at bibendum urna condimentum quis. Pellentesque mollis diam dui. Nam aliquam dolor dolor, ut aliquam elit consectetur ut. Duis ac nulla sit amet enim pharetra feugiat a vel felis. Sed sed ipsum et urna dapibus mollis. Donec rutrum neque quam, quis lobortis lectus accumsan vitae. Cras tempus felis nec nunc condimentum pretium.','Testovací reference 1','','publish','closed','closed','','testovaci-reference-1','','','2018-02-15 09:12:44','2018-02-15 08:12:44','',0,'http://localhost/wordcamp-praha-2018/1-typerocket/?post_type=reference&#038;p=10',0,'reference','',0),
	(11,1,'2018-02-15 09:09:07','2018-02-15 08:09:07','Ut auctor, dolor id condimentum feugiat, eros orci placerat leo, facilisis faucibus ante erat nec ipsum. Etiam lacinia vulputate mauris, in gravida tellus vehicula at. Morbi sed felis eget nibh eleifend iaculis. Duis tincidunt iaculis libero, nec porttitor risus. Fusce euismod, magna vitae facilisis euismod, dolor tortor euismod lectus, sit amet feugiat nibh nunc id eros. Sed sodales vehicula metus, eu consectetur magna mattis sodales. Duis luctus sapien sed risus rhoncus molestie. Maecenas est lorem, consequat a lectus quis, maximus aliquet urna. Etiam venenatis, mi a consectetur eleifend, ante ligula mollis eros, ac sollicitudin diam turpis malesuada sapien. In id nisl metus. Integer risus ante, commodo id ipsum ac, placerat viverra velit. Nunc ornare lectus in posuere dapibus. Aliquam id enim a lectus cursus tempus non id ligula. Sed accumsan mollis ornare.\r\n\r\nSuspendisse dapibus tempus augue, vel lobortis quam. Aliquam non lorem non ligula euismod vestibulum. Suspendisse porta erat neque, at bibendum urna condimentum quis. Pellentesque mollis diam dui. Nam aliquam dolor dolor, ut aliquam elit consectetur ut. Duis ac nulla sit amet enim pharetra feugiat a vel felis. Sed sed ipsum et urna dapibus mollis. Donec rutrum neque quam, quis lobortis lectus accumsan vitae. Cras tempus felis nec nunc condimentum pretium.\r\n\r\nIn ultrices accumsan convallis. Ut neque felis, congue ut dignissim sed, fringilla ut est. Proin ac augue placerat, laoreet arcu quis, auctor arcu. Fusce lobortis consequat molestie. Nunc leo mi, auctor et dui sed, sollicitudin aliquam libero. In hac habitasse platea dictumst. Cras ac dolor odio. Maecenas id finibus lacus, vitae molestie nibh. Fusce sed libero et purus pellentesque euismod vel at lorem. Aenean vitae elementum magna, a blandit lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.','Testovací reference 2','','publish','closed','closed','','testovaci-reference-2','','','2018-02-15 09:12:36','2018-02-15 08:12:36','',0,'http://localhost/wordcamp-praha-2018/1-typerocket/?post_type=reference&#038;p=11',0,'reference','',0),
	(12,1,'2018-02-15 09:09:27','2018-02-15 08:09:27','Suspendisse dapibus tempus augue, vel lobortis quam. Aliquam non lorem non ligula euismod vestibulum. Suspendisse porta erat neque, at bibendum urna condimentum quis. Pellentesque mollis diam dui. Nam aliquam dolor dolor, ut aliquam elit consectetur ut. Duis ac nulla sit amet enim pharetra feugiat a vel felis. Sed sed ipsum et urna dapibus mollis. Donec rutrum neque quam, quis lobortis lectus accumsan vitae. Cras tempus felis nec nunc condimentum pretium.\r\n\r\nIn ultrices accumsan convallis. Ut neque felis, congue ut dignissim sed, fringilla ut est. Proin ac augue placerat, laoreet arcu quis, auctor arcu. Fusce lobortis consequat molestie. Nunc leo mi, auctor et dui sed, sollicitudin aliquam libero. In hac habitasse platea dictumst. Cras ac dolor odio. Maecenas id finibus lacus, vitae molestie nibh. Fusce sed libero et purus pellentesque euismod vel at lorem. Aenean vitae elementum magna, a blandit lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit.\r\n\r\nAliquam vestibulum metus eget urna scelerisque, vitae luctus neque blandit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Phasellus bibendum ligula vel leo facilisis, ac sodales elit euismod. Fusce eu ante turpis. In commodo molestie orci. Nam interdum eros nisi, maximus egestas leo bibendum quis. Nam volutpat ullamcorper ipsum quis lobortis. Suspendisse potenti. Aliquam erat volutpat. In faucibus nisl a orci ultrices, in auctor magna posuere. Cras dapibus congue odio a ultricies. In hac habitasse platea dictumst.','Testovací reference 3','','publish','closed','closed','','testovaci-reference-3','','','2018-02-15 09:17:47','2018-02-15 08:17:47','',0,'http://localhost/wordcamp-praha-2018/1-typerocket/?post_type=reference&#038;p=12',0,'reference','',0),
	(13,1,'2018-02-15 09:12:22','2018-02-15 08:12:22','','test','','inherit','open','closed','','test','','','2018-02-15 09:12:22','2018-02-15 08:12:22','',0,'http://localhost/wordcamp-praha-2018/1-typerocket/wp-content/uploads/2018/02/test.jpg',0,'attachment','image/jpeg',0);

/*!40000 ALTER TABLE `tr_wp_posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tr_wp_term_relationships
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tr_wp_term_relationships`;

CREATE TABLE `tr_wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tr_wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `tr_wp_term_relationships` DISABLE KEYS */;

INSERT INTO `tr_wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`)
VALUES
	(1,1,0),
	(4,2,0),
	(5,2,0),
	(10,3,0),
	(11,3,0),
	(12,3,0);

/*!40000 ALTER TABLE `tr_wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tr_wp_term_taxonomy
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tr_wp_term_taxonomy`;

CREATE TABLE `tr_wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tr_wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `tr_wp_term_taxonomy` DISABLE KEYS */;

INSERT INTO `tr_wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`)
VALUES
	(1,1,'category','',0,1),
	(2,2,'nav_menu','',0,2),
	(3,3,'kategorie','',0,3);

/*!40000 ALTER TABLE `tr_wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tr_wp_termmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tr_wp_termmeta`;

CREATE TABLE `tr_wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table tr_wp_terms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tr_wp_terms`;

CREATE TABLE `tr_wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tr_wp_terms` WRITE;
/*!40000 ALTER TABLE `tr_wp_terms` DISABLE KEYS */;

INSERT INTO `tr_wp_terms` (`term_id`, `name`, `slug`, `term_group`)
VALUES
	(1,'Nezařazené','nezarazene',0),
	(2,'Hlavní menu','hlavni-menu',0),
	(3,'TOP','top',0);

/*!40000 ALTER TABLE `tr_wp_terms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tr_wp_usermeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tr_wp_usermeta`;

CREATE TABLE `tr_wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tr_wp_usermeta` WRITE;
/*!40000 ALTER TABLE `tr_wp_usermeta` DISABLE KEYS */;

INSERT INTO `tr_wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`)
VALUES
	(1,1,'nickname','admin'),
	(2,1,'first_name',''),
	(3,1,'last_name',''),
	(4,1,'description',''),
	(5,1,'rich_editing','true'),
	(6,1,'syntax_highlighting','true'),
	(7,1,'comment_shortcuts','false'),
	(8,1,'admin_color','fresh'),
	(9,1,'use_ssl','0'),
	(10,1,'show_admin_bar_front','true'),
	(11,1,'locale',''),
	(12,1,'tr_wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),
	(13,1,'tr_wp_user_level','10'),
	(14,1,'dismissed_wp_pointers',''),
	(15,1,'show_welcome_panel','0'),
	(16,1,'session_tokens','a:1:{s:64:\"a0392bce54c3635351a1b30384aeb14e597cac9cd55bcabccd2e4e70c14afdc1\";a:4:{s:10:\"expiration\";i:1518853598;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:138:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36 OPR/50.0.2762.67\";s:5:\"login\";i:1518680798;}}'),
	(17,1,'tr_wp_dashboard_quick_press_last_post_id','3'),
	(18,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
	(19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
	(20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}'),
	(21,1,'tr_wp_user-settings','editor=tinymce&libraryContent=browse'),
	(22,1,'tr_wp_user-settings-time','1518682342'),
	(23,1,'closedpostboxes_reference','a:1:{i:0;s:6:\"tr_seo\";}'),
	(24,1,'metaboxhidden_reference','a:1:{i:0;s:7:\"slugdiv\";}');

/*!40000 ALTER TABLE `tr_wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tr_wp_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tr_wp_users`;

CREATE TABLE `tr_wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tr_wp_users` WRITE;
/*!40000 ALTER TABLE `tr_wp_users` DISABLE KEYS */;

INSERT INTO `tr_wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`)
VALUES
	(1,'admin','$P$BJCymY7KIJo5RAthUseU3xnrEo2stm0','admin','hlavac@brilo.cz','','2018-02-06 15:07:56','',0,'admin');

/*!40000 ALTER TABLE `tr_wp_users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
