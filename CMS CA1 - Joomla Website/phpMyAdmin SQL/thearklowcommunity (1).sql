-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2017 at 05:38 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thearklowcommunity`
--

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_assets`
--

CREATE TABLE `nlbuy_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_assets`
--

INSERT INTO `nlbuy_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 183, 0, 'root.1', 'Root Asset', '{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(8, 1, 17, 60, 1, 'com_content', 'com_content', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1}}'),
(9, 1, 61, 62, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 63, 64, 1, 'com_installer', 'com_installer', '{\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),
(11, 1, 65, 66, 1, 'com_languages', 'com_languages', '{\"core.admin\":{\"7\":1}}'),
(12, 1, 67, 68, 1, 'com_login', 'com_login', '{}'),
(13, 1, 69, 70, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 71, 72, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 73, 74, 1, 'com_media', 'com_media', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),
(16, 1, 75, 80, 1, 'com_menus', 'com_menus', '{\"core.admin\":{\"7\":1}}'),
(17, 1, 81, 82, 1, 'com_messages', 'com_messages', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),
(18, 1, 83, 136, 1, 'com_modules', 'com_modules', '{\"core.admin\":{\"7\":1}}'),
(19, 1, 137, 140, 1, 'com_newsfeeds', 'com_newsfeeds', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(20, 1, 141, 142, 1, 'com_plugins', 'com_plugins', '{\"core.admin\":{\"7\":1}}'),
(21, 1, 143, 144, 1, 'com_redirect', 'com_redirect', '{\"core.admin\":{\"7\":1}}'),
(22, 1, 145, 146, 1, 'com_search', 'com_search', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(23, 1, 147, 148, 1, 'com_templates', 'com_templates', '{\"core.admin\":{\"7\":1}}'),
(24, 1, 149, 152, 1, 'com_users', 'com_users', '{\"core.admin\":{\"7\":1}}'),
(26, 1, 153, 154, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 39, 2, 'com_content.category.2', 'news articles', '{}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{}'),
(30, 19, 138, 139, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{}'),
(32, 24, 150, 151, 2, 'com_users.category.7', 'Uncategorised', '{}'),
(33, 1, 155, 156, 1, 'com_finder', 'com_finder', '{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),
(34, 1, 157, 158, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{}'),
(35, 1, 159, 160, 1, 'com_tags', 'com_tags', '{}'),
(36, 1, 161, 162, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(37, 1, 163, 164, 1, 'com_ajax', 'com_ajax', '{}'),
(38, 1, 165, 166, 1, 'com_postinstall', 'com_postinstall', '{}'),
(39, 18, 84, 85, 2, 'com_modules.module.1', 'Main Menu', '{}'),
(40, 18, 86, 87, 2, 'com_modules.module.2', 'Login', '{}'),
(41, 18, 88, 89, 2, 'com_modules.module.3', 'Popular Articles', '{}'),
(42, 18, 90, 91, 2, 'com_modules.module.4', 'Recently Added Articles', '{}'),
(43, 18, 92, 93, 2, 'com_modules.module.8', 'Toolbar', '{}'),
(44, 18, 94, 95, 2, 'com_modules.module.9', 'Quick Icons', '{}'),
(45, 18, 96, 97, 2, 'com_modules.module.10', 'Logged-in Users', '{}'),
(46, 18, 98, 99, 2, 'com_modules.module.12', 'Admin Menu', '{}'),
(47, 18, 100, 101, 2, 'com_modules.module.13', 'Admin Submenu', '{}'),
(48, 18, 102, 103, 2, 'com_modules.module.14', 'User Status', '{}'),
(49, 18, 104, 105, 2, 'com_modules.module.15', 'Title', '{}'),
(50, 18, 106, 107, 2, 'com_modules.module.16', 'Login Form', '{}'),
(51, 18, 108, 109, 2, 'com_modules.module.17', 'Breadcrumbs', '{}'),
(52, 18, 110, 111, 2, 'com_modules.module.79', 'Multilanguage status', '{}'),
(53, 18, 112, 113, 2, 'com_modules.module.86', 'Joomla Version', '{}'),
(54, 16, 76, 77, 2, 'com_menus.menu.1', 'Main Menu', '{}'),
(55, 18, 114, 115, 2, 'com_modules.module.87', 'Sample Data', '{}'),
(58, 18, 116, 117, 2, 'com_modules.module.88', 'Main Menu', '{}'),
(60, 18, 118, 119, 2, 'com_modules.module.89', 'Main Menu', '{}'),
(61, 18, 120, 121, 2, 'com_modules.module.90', 'Main Menu', '{}'),
(62, 8, 40, 41, 2, 'com_content.category.8', 'About', '{}'),
(63, 67, 51, 52, 3, 'com_content.article.1', 'About ', '{}'),
(64, 65, 43, 44, 3, 'com_content.article.2', 'Wicklow coastal defences need urgent repairs', '{}'),
(65, 8, 42, 45, 2, 'com_content.category.9', 'Contact US', '{}'),
(66, 8, 46, 47, 2, 'com_content.category.10', 'Events', '{}'),
(67, 8, 48, 53, 2, 'com_content.category.11', 'Blog', '{}'),
(68, 67, 49, 50, 3, 'com_content.article.3', 'Increase in funds for council districts', '{}'),
(69, 71, 55, 56, 3, 'com_content.article.4', 'Home', '{}'),
(70, 27, 21, 22, 3, 'com_content.article.5', 'Wicklow sports organizations receive 1.7 million in funds', '{}'),
(71, 8, 54, 57, 2, 'com_content.category.12', 'Home', '{}'),
(72, 1, 167, 168, 1, 'com_rspagebuilder', 'COM_RSPAGEBUILDER', '{}'),
(73, 18, 122, 123, 2, 'com_modules.module.91', 'Navigation Bar', '{}'),
(74, 27, 19, 20, 3, 'com_content.article.6', 'Tidy Towns funding increased', '{}'),
(75, 8, 58, 59, 2, 'com_content.category.13', 'Charities', '{}'),
(82, 18, 124, 125, 2, 'com_modules.module.94', 'Footer', '{}'),
(83, 16, 78, 79, 2, 'com_menus.menu.2', 'Footer', '{}'),
(84, 18, 126, 127, 2, 'com_modules.module.95', 'Footer', '{}'),
(85, 18, 128, 129, 2, 'com_modules.module.96', 'Gallery', '{}'),
(86, 1, 169, 170, 1, 'com_speasyimagegallery', 'COM_SPEASYIMAGEGALLERY', '{}'),
(87, 1, 171, 172, 1, '#__speasyimagegallery_albums.1', '#__speasyimagegallery_albums.1', '{}'),
(88, 1, 173, 174, 1, '#__speasyimagegallery_albums.2', '#__speasyimagegallery_albums.2', '{}'),
(92, 18, 130, 131, 2, 'com_modules.module.99', 'iCagenda - Calendar', '{}'),
(93, 1, 175, 176, 1, 'com_icagenda', 'iCagenda', '{\"core.manage\":{\"6\":1},\"icagenda.access.categories\":{\"7\":1},\"icagenda.access.events\":{\"6\":1},\"icagenda.access.registrations\":{\"7\":1},\"icagenda.access.newsletter\":{\"7\":1},\"icagenda.access.themes\":{\"7\":1},\"icagenda.access.customfields\":{\"7\":1},\"icagenda.access.features\":{\"7\":1}}'),
(94, 1, 177, 178, 1, '#__icagenda_events.1', '#__icagenda_events.1', '{}'),
(95, 18, 132, 133, 2, 'com_modules.module.100', 'Minitek Wall module', '{}'),
(96, 1, 179, 180, 1, 'com_minitekwall', 'Minitek Wall', '{}'),
(97, 1, 181, 182, 1, '#__minitek_wall_widgets.1', '#__minitek_wall_widgets.1', '{}'),
(98, 18, 134, 135, 2, 'com_modules.module.101', 'news', '{}'),
(99, 27, 23, 24, 3, 'com_content.article.7', 'News aricle', '{}'),
(100, 27, 25, 26, 3, 'com_content.article.8', 'news article 2', '{}'),
(101, 27, 27, 28, 3, 'com_content.article.9', 'Storm Caroline - Temperatures will plummet', '{}'),
(102, 27, 29, 30, 3, 'com_content.article.10', 'Increase in funds for council districts', '{}'),
(103, 27, 31, 32, 3, 'com_content.article.11', 'Wicklow coastal defences need urgent repairs', '{}'),
(104, 27, 33, 34, 3, 'com_content.article.12', 'Wicklow sports organizations receive 1.7 million in funds', '{}'),
(105, 27, 35, 36, 3, 'com_content.article.13', 'Tidy Towns funding increased', '{}'),
(106, 27, 37, 38, 3, 'com_content.article.14', 'Garda continue their search for robbers', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_associations`
--

CREATE TABLE `nlbuy_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_banners`
--

CREATE TABLE `nlbuy_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_banner_clients`
--

CREATE TABLE `nlbuy_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_banner_tracks`
--

CREATE TABLE `nlbuy_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_categories`
--

CREATE TABLE `nlbuy_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_categories`
--

INSERT INTO `nlbuy_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 23, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '{}', 300, '2017-12-04 11:28:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'na', 'com_content', 'news articles', 'na', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 300, '2017-12-04 11:28:01', 300, '2017-12-07 10:26:39', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 300, '2017-12-04 11:28:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 300, '2017-12-04 11:28:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 300, '2017-12-04 11:28:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"\",\"image\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 300, '2017-12-04 11:28:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 62, 1, 11, 12, 1, 'about', 'com_content', 'About', 'about', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 300, '2017-12-04 13:15:20', 0, '2017-12-04 13:15:20', 0, '*', 1),
(9, 65, 1, 13, 14, 1, 'contact-us', 'com_content', 'Contact US', 'contact-us', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 300, '2017-12-04 13:29:41', 300, '2017-12-04 18:47:55', 0, '*', 1),
(10, 66, 1, 15, 16, 1, 'events', 'com_content', 'Events', 'events', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 300, '2017-12-04 13:30:23', 0, '2017-12-04 13:30:23', 0, '*', 1),
(11, 67, 1, 17, 18, 1, 'blog', 'com_content', 'Blog', 'blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 300, '2017-12-04 13:30:37', 300, '2017-12-04 18:47:12', 0, '*', 1),
(12, 71, 1, 19, 20, 1, 'home', 'com_content', 'Home', 'home', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 300, '2017-12-04 13:39:54', 300, '2017-12-05 11:47:18', 0, '*', 1),
(13, 75, 1, 21, 22, 1, 'charties', 'com_content', 'Charities', 'charties', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}', '', '', '{\"author\":\"\",\"robots\":\"\"}', 300, '2017-12-04 14:29:31', 300, '2017-12-04 18:46:33', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_contact_details`
--

CREATE TABLE `nlbuy_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_content`
--

CREATE TABLE `nlbuy_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_content`
--

INSERT INTO `nlbuy_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 63, 'About ', 'about', '<p>This is the about page</p>', '', -2, 11, '2017-12-04 13:15:48', 300, '', '2017-12-07 10:37:23', 300, 0, '0000-00-00 00:00:00', '2017-12-04 13:15:48', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Gallery\\/download (1).jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 3, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(2, 64, 'Wicklow coastal defences need urgent repairs', 'contact-us', '<p>The Wicklow TD Stephen Donnelly is set to meet Minister Kevin Moran on the week of the 4/12/17. Three applications have been made in the last year for urgent repairs to be made to points along the coast but they have been unsuccessful.  </p>', '', -2, 9, '2017-12-04 13:29:15', 300, '', '2017-12-07 10:53:21', 300, 0, '0000-00-00 00:00:00', '2017-12-04 13:29:15', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Gallery\\/Howard Mausoleum 01 - Representative View.JPG\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 8, 0, '', '', 1, 12, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(3, 68, 'Increase in funds for council districts', 'blog', '<p>The Wicklow County Council voted in favor of the Local Authority Budget for 2018. Wicklow still remains very under funded compared to other counties. In the 2017 annual budget figures Wicklow spends per person than the national average across all services.</p>', '', -2, 11, '2017-12-04 13:30:58', 300, '', '2017-12-07 10:53:08', 300, 0, '0000-00-00 00:00:00', '2017-12-04 13:30:58', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Gallery\\/115589980.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"images\\/Gallery\\/river.jpg\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 8, 0, '', '', 1, 8, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(4, 69, 'Home', 'home', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', '', -2, 12, '2017-12-04 13:31:21', 300, '', '2017-12-07 10:38:03', 300, 0, '0000-00-00 00:00:00', '2017-12-04 13:31:21', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Gallery\\/69411b38854405e9a491cd57a320944d.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 0, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(5, 70, 'Wicklow sports organizations receive 1.7 million in funds', 'events', '<p><img src=\"images/Gallery/download.jpg\" alt=\"\" width=\"442\" height=\"297\" /></p>\r\n<p>Wicklow TD Andrew Doyle announced that over the next year sports clubs and organizations will receive more than €1.7 million in funding. The increase in funding will benefit nearly 60 clubs and organizations across Wicklow. The Sports Capital Programme is re-installed as well. </p>\r\n<p> </p>', '', -2, 2, '2017-12-04 13:34:20', 300, '', '2017-12-07 10:53:43', 300, 0, '0000-00-00 00:00:00', '2017-12-04 13:34:20', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Gallery\\/arklow-9.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 10, 2, '', '', 1, 3, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(6, 74, 'Tidy Towns funding increased', 'charties', '<div class=\"article_center\">\r\n<p> </p>\r\n<div class=\"main_content\">\r\n<div class=\"main_img\">\r\n<p><img src=\"images/Gallery/115589980.jpg\" alt=\"\" width=\"801\" height=\"534\" /></p>\r\n</div>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p>An additional €50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to commemorate the the 60th anniversary of the national competition. </p>\r\n</div>\r\n</div>', '', -2, 2, '2017-12-04 14:29:19', 300, '', '2017-12-07 14:12:33', 300, 0, '0000-00-00 00:00:00', '2017-12-04 14:29:19', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Gallery\\/arklow-7.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"0\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"\",\"show_hits\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 31, 3, '', '', 1, 55, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(7, 99, 'News aricle', 'news-aricle', '', '', -2, 2, '2017-12-07 10:50:06', 300, '', '2017-12-07 10:50:06', 0, 0, '0000-00-00 00:00:00', '2017-12-07 10:50:06', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Gallery\\/1200px-IMG_FerrybankArklow1548.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 2, '', '', 1, 11, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(8, 100, 'news article 2', 'news-article-2', '', '', -2, 2, '2017-12-07 10:50:49', 300, '', '2017-12-07 10:50:49', 0, 0, '0000-00-00 00:00:00', '2017-12-07 10:50:49', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Gallery\\/57449b00-fb74-4ca4-f730-653097890079.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 1, 1, '', '', 1, 0, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(9, 101, 'Storm Caroline - Temperatures will plummet', 'article-template', '<div class=\"article_center\">\r\n<p> </p>\r\n<div class=\"main_content\">\r\n<p><span style=\"font-size: 24pt;\">Storm Caroline - Temperatures will plummet </span></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> <img src=\"images/Gallery/article-2590003-1C9E4DA900000578-124_964x595.jpg\" alt=\"\" /></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p>A nationwide weather alert has been issued as Storm Caroline is set to cause significant disruption to commuters tomorrow and Friday.</p>\r\n<p>Heavy wind, rain and wintry showers are all on the cards, as a bitterly cold air mass is set to push across the country.</p>\r\n<p>Tomorrow will start off cold, bright and windy, however showers will start to drift down in a brisk northwest flow, which will lead to heavy showers turning wintry in the afternoon.</p>\r\n</div>\r\n</div>', '', 0, 2, '2017-12-07 14:13:19', 300, '', '2017-12-07 15:12:25', 300, 0, '0000-00-00 00:00:00', '2017-12-07 14:13:19', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Gallery\\/_64791969_frost_gary.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 9, 5, '', '', 1, 4, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(10, 102, 'Increase in funds for council districts', 'article-template-2', '<div class=\"article_center\">\r\n<div class=\"main_content\">\r\n<p><span style=\"font-size: 24pt;\"> Increase in funds for council districts</span></p>\r\n<div class=\"main_img\"> </div>\r\n<p> <img src=\"images/Gallery/Houses.jpg\" alt=\"\" width=\"669\" height=\"445\" /></p>\r\n<p> </p>\r\n<p> The Wicklow County Council voted in favor of the Local Authority Budget for 2018. Wicklow still remains very under funded compared to other counties. In the 2017 annual budget figures Wicklow spends per person than the national average across all services.</p>\r\n<p> </p>\r\n</div>\r\n</div>', '', 1, 2, '2017-12-07 14:13:19', 300, '', '2017-12-07 14:49:13', 300, 0, '0000-00-00 00:00:00', '2017-12-07 14:13:19', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Gallery\\/John 21.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 7, 4, '', '', 1, 3, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(11, 103, 'Wicklow coastal defences need urgent repairs', 'article-template-3', '<div class=\"article_center\">\r\n<div class=\"main_content\">\r\n<p> </p>\r\n<p><span style=\"font-size: 24pt;\">Wicklow coastal defences need urgent repairs</span></p>\r\n<p> </p>\r\n<p> <img src=\"images/Gallery/image (1).jpg\" alt=\"\" width=\"795\" height=\"423\" /></p>\r\n<div class=\"main_img\"> </div>\r\n<p> </p>\r\n<p> The Wicklow TD Stephen Donnelly is set to meet Minister Kevin Moran on the week of the 4/12/17. Three applications have been made in the last year for urgent repairs to be made to points along the coast but they have been unsuccessful.</p>\r\n<p> </p>\r\n<p> </p>\r\n</div>\r\n</div>', '', 1, 2, '2017-12-07 14:13:19', 300, '', '2017-12-07 14:44:21', 300, 0, '0000-00-00 00:00:00', '2017-12-07 14:13:19', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Gallery\\/image.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 4, 3, '', '', 1, 1, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(12, 104, 'Wicklow sports organizations receive 1.7 million in funds', 'article-template-4', '<div class=\"article_center\">\r\n<p><span style=\"font-size: 24pt;\"> </span></p>\r\n<div class=\"main_content\">\r\n<p><span style=\"font-size: 24pt;\">Wicklow sports organizations receive 1.7 million in funds</span></p>\r\n<p> </p>\r\n<div class=\"main_img\"><img src=\"images/Gallery/inpho_01023011-1024x691.jpg\" alt=\"\" /></div>\r\n<p> </p>\r\n<p> </p>\r\n<p> Wicklow TD Andrew Doyle announced that over the next year sports clubs and organizations will receive more than €1.7 million in funding. The increase in funding will benefit nearly 60 clubs and organizations across Wicklow. The Sports Capital Programme is re-installed as well. </p>\r\n</div>\r\n</div>', '', 1, 2, '2017-12-07 14:13:19', 300, '', '2017-12-07 14:36:03', 300, 0, '0000-00-00 00:00:00', '2017-12-07 14:13:19', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Gallery\\/hurling.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 18, 2, '', '', 1, 11, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(13, 105, 'Tidy Towns funding increased', 'article-template-5', '<div class=\"article_center\">\r\n<div class=\"main_content\">\r\n<p><span style=\"font-size: 24pt;\"> Tidy Towns funding increased</span></p>\r\n<div class=\"main_img\"> </div>\r\n<p> <img src=\"images/Gallery/b2-1.jpg\" alt=\"\" width=\"831\" height=\"623\" /></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> An additional €50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to commemorate the the 60th anniversary of the national competition. </p>\r\n</div>\r\n</div>', '', 1, 2, '2017-12-07 14:13:19', 300, '', '2017-12-07 14:41:01', 300, 0, '0000-00-00 00:00:00', '2017-12-07 14:13:19', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Gallery\\/cleanup-at-ballycane-some-tidy-towns-volunteers.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 10, 1, '', '', 1, 9, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', ''),
(14, 106, 'Garda continue their search for robbers', 'article-template-6', '<div class=\"article_center\">\r\n<p> </p>\r\n<div class=\"main_content\">\r\n<p><span style=\"font-size: 24pt;\">Gardai continue their search for robbers </span></p>\r\n<p> </p>\r\n<p><img src=\"images/Gallery/tmg-article_default_mobile.jpg\" alt=\"\" width=\"699\" height=\"473\" /></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p>Following an investigation by the gardai in Wicklow town they are satisfied the two vehicles reported at Pebble Bay and Friars Hill are not the vehicles which have been involved in robberies last week.</p>\r\n<p>Two vehicles fitting the description of a garda appeal were reported in the area, but gardai have clarified the silver Skoda and a silver van were acting innocently.</p>\r\n<p>But have asked the public to remain vigilant and not to leave work tools in vans over night.</p>\r\n</div>\r\n</div>', '', 1, 2, '2017-12-07 14:13:19', 300, '', '2017-12-07 15:06:05', 300, 0, '0000-00-00 00:00:00', '2017-12-07 14:13:19', '0000-00-00 00:00:00', '{\"image_intro\":\"images\\/Gallery\\/image (2).jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}', '{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}', 6, 0, '', '', 1, 5, '{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_contentitem_tag_map`
--

CREATE TABLE `nlbuy_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_content_frontpage`
--

CREATE TABLE `nlbuy_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_content_rating`
--

CREATE TABLE `nlbuy_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_content_types`
--

CREATE TABLE `nlbuy_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_content_types`
--

INSERT INTO `nlbuy_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}', 'ContentHelperRoute::getArticleRoute', '{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(2, 'Contact', 'com_contact.contact', '{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}', 'ContactHelperRoute::getContactRoute', '{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(4, 'User', 'com_users.user', '{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContentHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(6, 'Contact Category', 'com_contact.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'ContactHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(8, 'Tag', 'com_tags.tag', '{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}', 'TagsHelperRoute::getTagRoute', '{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(9, 'Banner', 'com_banners.banner', '{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),
(11, 'Banner Client', 'com_banners.client', '{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),
(12, 'User Notes', 'com_users.note', '{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}', '', '', '', '{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),
(13, 'User Notes Category', 'com_users.category', '{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}', '', '{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}', '', '{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_core_log_searches`
--

CREATE TABLE `nlbuy_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_extensions`
--

CREATE TABLE `nlbuy_extensions` (
  `extension_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_extensions`
--

INSERT INTO `nlbuy_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 0, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 0, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 0, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 0, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}', '{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 0, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 0, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 0, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 0, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"articles_display_num\":\"10\",\"show_profile\":\"0\",\"show_user_custom_fields\":[\"-1\"],\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"0\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"1\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 0, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 0, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}', '{\"show_jed_info\":\"1\",\"cachetimeout\":\"6\",\"minimum_stability\":\"4\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 0, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"administrator\":\"en-GB\",\"site\":\"en-GB\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 0, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 0, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 0, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}', '{\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 0, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 0, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 0, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 0, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 0, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}', '{\"enabled\":\"0\",\"search_phrases\":\"1\",\"search_areas\":\"1\",\"show_date\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 0, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}', '{\"template_positions_display\":\"1\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css,scss,sass\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 0, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"article_layout\":\"_:default\",\"show_title\":\"0\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"info_block_show_title\":\"0\",\"show_category\":\"0\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"0\",\"flags\":\"1\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"1\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"1\",\"show_icons\":\"1\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"captcha\":\"\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"sef_advanced\":0,\"sef_ids\":0,\"custom_fields_enable\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 0, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}', '{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"10\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"12\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 0, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 0, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}', '{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 0, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}', '{\"enabled\":\"0\",\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_autosuggest\":\"1\",\"show_suggested_query\":\"1\",\"show_explained_query\":\"1\",\"show_advanced\":\"1\",\"show_advanced_tips\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"sort_order\":\"relevance\",\"sort_direction\":\"desc\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stem\":\"1\",\"stemmer\":\"snowball\",\"enable_logging\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 0, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}', '{\"updatesource\":\"default\",\"customurl\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 0, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 0, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 0, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 0, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(33, 0, 'com_fields', 'component', 'com_fields', '', 1, 1, 1, 0, '{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(34, 0, 'com_associations', 'component', 'com_associations', '', 1, 1, 1, 0, '{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 0, 'LIB_PHPUTF8', 'library', 'phputf8', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 0, 'LIB_JOOMLA', 'library', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"mediaversion\":\"47b33cc55af93349c8d7e7b26d491056\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 0, 'LIB_IDNA', 'library', 'idna_convert', '', 0, 1, 1, 1, '{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 0, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 0, 'LIB_PHPASS', 'library', 'phpass', '', 0, 1, 1, 1, '{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 0, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 0, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 0, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 0, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 0, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 0, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 0, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 0, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 0, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 0, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 0, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 0, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 0, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 0, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 0, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 0, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 0, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 0, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 0, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 0, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 0, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 0, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 0, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 0, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 0, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 0, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 0, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 0, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 0, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 0, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 0, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 0, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 0, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 0, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 0, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 0, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}', '{\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 0, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}', '{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 0, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}', '{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 0, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}', '{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 0, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}', '{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(318, 0, 'mod_sampledata', 'module', 'mod_sampledata', '', 1, 1, 1, 0, '{\"name\":\"mod_sampledata\",\"type\":\"module\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"MOD_SAMPLEDATA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_sampledata\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 0, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"gmail\"}', '{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 0, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 0, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ldap\"}', '{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0);
INSERT INTO `nlbuy_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(403, 0, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 0, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}', '{\"mode\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 0, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}', '{\"style\":\"xhtml\"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 0, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 0, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}', '{\"position\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(410, 0, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.28\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}', '{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 0, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 0, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.7\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}', '{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"pastetext\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"styleselect\",\"|\",\"formatselect\",\"fontselect\",\"fontsizeselect\",\"|\",\"searchreplace\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"|\",\"code\",\"|\",\"forecolor\",\"backcolor\",\"|\",\"fullscreen\",\"|\",\"table\",\"|\",\"subscript\",\"superscript\",\"|\",\"charmap\",\"emoticons\",\"media\",\"hr\",\"ltr\",\"rtl\",\"|\",\"cut\",\"copy\",\"paste\",\"pastetext\",\"|\",\"visualchars\",\"visualblocks\",\"nonbreaking\",\"blockquote\",\"template\",\"|\",\"print\",\"preview\",\"codesample\",\"insertdatetime\",\"removeformat\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"0\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 0, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 0, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 0, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 0, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 0, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 0, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 0, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 0, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 0, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 0, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}', '{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 0, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}', '{\"browsercache\":\"0\",\"cachetime\":\"15\"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 0, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}', '{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 0, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 0, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 0, 1, 1, '{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 0, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 0, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 0, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 0, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}', '{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 0, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 0, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}', '{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 0, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 0, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 0, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 0, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 0, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 0, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(442, 0, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 0, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 0, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 0, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 0, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 0, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"totp\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 0, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 0, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"yubikey\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 0, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}', '{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 0, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}', '{\"lastrun\":1512663561}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 0, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 0, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}', '{\"mode\":1,\"lastrun\":1512641970,\"unique_id\":\"ee2d22b5cc2b4c278f7b69c87ac735f1039b33b6\",\"interval\":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 0, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 0, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 0, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(458, 0, 'plg_quickicon_phpversioncheck', 'plugin', 'phpversioncheck', 'quickicon', 0, 1, 1, 1, '{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(459, 0, 'plg_editors-xtd_menu', 'plugin', 'menu', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(460, 0, 'plg_editors-xtd_contact', 'plugin', 'contact', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(461, 0, 'plg_system_fields', 'plugin', 'fields', 'system', 0, 1, 1, 0, '{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(462, 0, 'plg_fields_calendar', 'plugin', 'calendar', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(463, 0, 'plg_fields_checkboxes', 'plugin', 'checkboxes', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(464, 0, 'plg_fields_color', 'plugin', 'color', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(465, 0, 'plg_fields_editor', 'plugin', 'editor', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(466, 0, 'plg_fields_imagelist', 'plugin', 'imagelist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(467, 0, 'plg_fields_integer', 'plugin', 'integer', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}', '{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(468, 0, 'plg_fields_list', 'plugin', 'list', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(469, 0, 'plg_fields_media', 'plugin', 'media', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(470, 0, 'plg_fields_radio', 'plugin', 'radio', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(471, 0, 'plg_fields_sql', 'plugin', 'sql', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(472, 0, 'plg_fields_text', 'plugin', 'text', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(473, 0, 'plg_fields_textarea', 'plugin', 'textarea', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(474, 0, 'plg_fields_url', 'plugin', 'url', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(475, 0, 'plg_fields_user', 'plugin', 'user', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(476, 0, 'plg_fields_usergrouplist', 'plugin', 'usergrouplist', 'fields', 0, 1, 1, 0, '{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(477, 0, 'plg_content_fields', 'plugin', 'fields', 'content', 0, 1, 1, 0, '{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(478, 0, 'plg_editors-xtd_fields', 'plugin', 'fields', 'editors-xtd', 0, 1, 1, 0, '{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(479, 0, 'plg_sampledata_blog', 'plugin', 'blog', 'sampledata', 0, 1, 1, 0, '{\"name\":\"plg_sampledata_blog\",\"type\":\"plugin\",\"creationDate\":\"July 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"PLG_SAMPLEDATA_BLOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"blog\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(503, 0, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 0, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 0, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 0, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}', '{\"templateColor\":\"\",\"logoFile\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 802, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"September 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"en-GB site language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 802, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"September 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"en-GB administrator language\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 0, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"September 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 0, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"September 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.8.0.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 0, 'COM_RSPAGEBUILDER', 'component', 'com_rspagebuilder', '', 1, 1, 0, 0, '{\"name\":\"COM_RSPAGEBUILDER\",\"type\":\"component\",\"creationDate\":\"November 2016\",\"author\":\"RSJoomla!\",\"copyright\":\"copyright (C) 2016 RSJoomla.com - All rights reserved.\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.0.16\",\"description\":\"COM_RSPAGEBUILDER_DESC\",\"group\":\"\",\"filename\":\"rspagebuilder\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 0, 'TheGrue Menu', 'module', 'mod_gruemenu', '', 0, 1, 0, 0, '{\"name\":\"TheGrue Menu\",\"type\":\"module\",\"creationDate\":\"January, 2015\",\"author\":\"TheGrue.org\",\"copyright\":\"Copyright 2014 - TheGrue.org\",\"authorEmail\":\"support@TheGrue.org\",\"authorUrl\":\"http:\\/\\/TheGrue.org\",\"version\":\"2.0.4\",\"description\":\"\\n\\t<h1 class=\\\"sub-heading\\\">Responsive Navigation Menu - by TheGrue.org<\\/h1>\\t\\n\\t<div class=\\\"description\\\">This module was developed by  <a href=\\\"http:\\/\\/thegrue.org\\\" target=\\\"_blank\\\">TheGrue.org<\\/a> and can be downloaded and used for free under <a href=\\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\\">GNU\\/GPL2<\\/a> license. <br\\/> If you have any question or have found a bug, please <a href=\\\"http:\\/\\/thegrue.org\\/responsive-menu-module-joomla\\/\\\" target=\\\"_blank\\\">click here to visit the support page<\\/a>.<br\\/>\\n\\t<strong>Updated: January 19, 2017<\\/strong><br\\/>\\n\\t<small>Thanks to <a href=\\\"http:\\/\\/www.berriart.com\\/sidr\\/\\\" target=\\\"_blank\\\">berriart<\\/a><\\/small>\\n\\t<\\/div>\\n\\t\",\"group\":\"\",\"filename\":\"mod_gruemenu\"}', '{\"jQuery\":\"0\",\"touchWipe\":\"1\",\"Fixed\":\"0\",\"Mobile\":\"1\",\"MenuDirection\":\"0\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"menuFontSize\":\"13px\",\"menubg\":\"#192F4D\",\"menulink\":\"#d1e3fb\",\"submenuFontSize\":\"11px\",\"submenubg\":\"#192F4D\",\"submenulink\":\"#d1e3fb\",\"menubghover\":\"#11243d\",\"menulinkhover\":\"#ffffff\",\"menuradius\":\"3\",\"fontStyle\":\"Open+Sans\",\"screenMax\":\"720\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);
INSERT INTO `nlbuy_extensions` (`extension_id`, `package_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(10021, 0, 'SP Easy Image Gallery Module', 'module', 'mod_speasyimagegallery', '', 0, 1, 0, 0, '{\"name\":\"SP Easy Image Gallery Module\",\"type\":\"module\",\"creationDate\":\"Mar 2016\",\"author\":\"JoomShaper\",\"copyright\":\"@JoomShaper 2010 - 2017. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"1.2\",\"description\":\"Module to display albums or album images from SP Easy Image Gallery component.\",\"group\":\"\",\"filename\":\"mod_speasyimagegallery\"}', '{\"layout\":\"album\",\"albums_column\":\"3\",\"albums_column_sm\":\"4\",\"albums_column_xs\":\"6\",\"albums_gutter\":\"20\",\"albums_gutter_sm\":\"15\",\"albums_gutter_xs\":\"10\",\"album_limit\":\"8\",\"album_layout\":\"default\",\"album_column\":\"3\",\"album_column_sm\":\"4\",\"album_column_xs\":\"6\",\"album_gutter\":\"20\",\"album_gutter_sm\":\"15\",\"album_gutter_xs\":\"10\",\"show_title\":\"1\",\"show_desc\":\"1\",\"show_count\":\"1\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10022, 0, 'COM_SPEASYIMAGEGALLERY', 'component', 'com_speasyimagegallery', '', 1, 1, 0, 0, '{\"name\":\"COM_SPEASYIMAGEGALLERY\",\"type\":\"component\",\"creationDate\":\"Mar 2017\",\"author\":\"JoomShaper\",\"copyright\":\"@JoomShaper 2010 - 2017. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"1.2\",\"description\":\"A simple image gallery component for Joomla.\",\"group\":\"\",\"filename\":\"speasyimagegallery\"}', '{\"thumb_width\":\"400\",\"thumb_height\":\"400\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10023, 0, 'connectDaily Events Calendar Library', 'library', 'connectdaily', '', 0, 1, 1, 0, '{\"name\":\"connectDaily Events Calendar Library\",\"type\":\"library\",\"creationDate\":\"October 2017\",\"author\":\"MH Software, Inc.\",\"copyright\":\"(C) 2017 Copyright, MH Software, Inc.\",\"authorEmail\":\"support@mhsoftware.com\",\"authorUrl\":\"http:\\/\\/www.mhsoftware.com\",\"version\":\"1.0.27\",\"description\":\"A library of Common Files used by the various connectDaily plugins and modules.\",\"group\":\"\",\"filename\":\"connectdaily\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10024, 0, 'connectDaily', 'component', 'com_connectdaily', '', 1, 1, 0, 0, '{\"name\":\"connectDaily\",\"type\":\"component\",\"creationDate\":\"October 2017\",\"author\":\"MH Software, Inc.\",\"copyright\":\"(C) 2017 Copyright, MH Software, Inc.\",\"authorEmail\":\"support@mhsoftware.com\",\"authorUrl\":\"http:\\/\\/www.mhsoftware.com\",\"version\":\"1.0.27\",\"description\":\"Configuration Component for the connectDaily Events Calendar system.\",\"group\":\"\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10030, 0, 'iCagenda', 'component', 'com_icagenda', '', 1, 1, 0, 0, '{\"name\":\"iCagenda\",\"type\":\"component\",\"creationDate\":\"2017-07-27\",\"author\":\"Jooml!C\",\"copyright\":\"Copyright (c)2012-2017 Cyril Rez\\u00e9, Jooml!C - All rights reserved\",\"authorEmail\":\"info@joomlic.com\",\"authorUrl\":\"www.joomlic.com\",\"version\":\"3.6.12\",\"description\":\"COM_ICAGENDA_DESC\",\"group\":\"\",\"filename\":\"icagenda\"}', '{\"version\":\" [3.6.12]\",\"release\":\"3.6.12\",\"author\":\"JoomliC\",\"icsys\":\"core\",\"copy\":\"1\",\"atlist\":\"1\",\"atevent\":\"1\",\"atfloat\":\"2\",\"aticon\":\"2\",\"arrowtext\":\"1\",\"statutReg\":\"1\",\"maxRlist\":\"5\",\"navposition\":\"0\",\"targetLink\":\"1\",\"participantList\":\"1\",\"participantSlide\":\"1\",\"participantDisplay\":\"1\",\"fullListColumns\":\"tiers\",\"regEmailUser\":\"1\",\"timeformat\":\"1\",\"ShortDescLimit\":\"100\",\"limitRegEmail\":\"1\",\"limitRegDate\":\"1\",\"phoneRequired\":\"2\",\"headerList\":\"1\",\"largewidththreshold\":\"1201\",\"mediumwidththreshold\":\"769\",\"smallwidththreshold\":\"481\",\"emailRequired\":\"1\",\"captcha\":\"\",\"reg_captcha\":\"0\",\"submit_captcha\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10031, 0, 'iC Library', 'library', 'lib_ic_library', '', 0, 1, 1, 0, '{\"name\":\"iC Library\",\"type\":\"library\",\"creationDate\":\"2017-07-14\",\"author\":\"Cyril Rez\\u00e9 \\/ Jooml!C\",\"copyright\":\"Copyright (c)2013-2017 Cyril Rez\\u00e9, Jooml!C - All rights reserved\",\"authorEmail\":\"info@joomlic.com\",\"authorUrl\":\"https:\\/\\/www.joomlic.com\",\"version\":\"1.4.6\",\"description\":\"ICLIB_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"lib_ic_library\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10032, 0, 'iCagenda - Calendar', 'module', 'mod_iccalendar', '', 0, 1, 0, 0, '{\"name\":\"iCagenda - Calendar\",\"type\":\"module\",\"creationDate\":\"2017-07-20\",\"author\":\"Jooml!C\",\"copyright\":\"Copyright (c)2012-2017 JoomliC. All rights reserved.\",\"authorEmail\":\"info@joomlic.com\",\"authorUrl\":\"www.joomlic.com\",\"version\":\"3.6.11\",\"description\":\"Calendar module for iCagenda component\",\"group\":\"\",\"filename\":\"mod_iccalendar\"}', '{\"template\":\"default\",\"iCmenuitem\":\"\",\"iCmenu_filters\":\"0\",\"firstMonth\":\"\",\"mcatid\":\"0\",\"onlyStDate\":\"\",\"header_text\":\"\",\"tipwidth\":\"390\",\"position\":\"center\",\"posmiddle\":\"top\",\"verticaloffset\":\"50\",\"padding\":\"0\",\"mouseover\":\"click\",\"mouseout\":\"1\",\"format\":\"0\",\"date_separator\":\"\",\"dp_time\":\"1\",\"dp_venuename\":\"1\",\"dp_city\":\"1\",\"dp_country\":\"1\",\"dp_regInfos\":\"1\",\"features_icon_size\":\"\",\"show_icon_title\":\"1\",\"dp_shortDesc\":\"\",\"filtering_shortDesc\":\"\",\"paramlimit\":\"\",\"calendarclosebtn\":\"0\",\"calendarclosebtn_Content\":\"X\",\"month_nav\":\"1\",\"year_nav\":\"1\",\"firstday\":\"1\",\"calfontcolor\":\" \",\"OneEventbgcolor\":\" \",\"Eventsbgcolor\":\" \",\"bgcolor\":\" \",\"bgimage\":\"\",\"bgimagerepeat\":\"repeat\",\"mon\":\" \",\"tue\":\" \",\"wed\":\" \",\"thu\":\" \",\"fri\":\" \",\"sat\":\" \",\"sun\":\" \",\"loadJquery\":\"auto\",\"setTodayTimezone\":\"\",\"cache\":\"0\",\"cachemode\":\"itemid\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10033, 0, 'plg_quickicon_icagendaupdate', 'plugin', 'icagendaupdate', 'quickicon', 0, 1, 1, 0, '{\"name\":\"plg_quickicon_icagendaupdate\",\"type\":\"plugin\",\"creationDate\":\"2016-06-14\",\"author\":\"Jooml!C\",\"copyright\":\"Copyright (c)2012-2017 Cyril Rez\\u00e9, Jooml!C - All rights reserved\",\"authorEmail\":\"info@joomlic.com\",\"authorUrl\":\"www.joomlic.com\",\"version\":\"1.1.0\",\"description\":\"PLG_QUICKICON_ICAGENDAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"icagendaupdate\"}', '{\"context\":\"mod_quickicon\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10034, 0, 'System - iCagenda :: Autologin', 'plugin', 'ic_autologin', 'system', 0, 1, 1, 0, '{\"name\":\"System - iCagenda :: Autologin\",\"type\":\"plugin\",\"creationDate\":\"2014-06-29\",\"author\":\"Jooml!C\",\"copyright\":\"Copyright (c)2012-2017 Cyril Rez\\u00e9, Jooml!C - All rights reserved\",\"authorEmail\":\"info@joomlic.com\",\"authorUrl\":\"www.joomlic.com\",\"version\":\"1.3\",\"description\":\"The iCagenda Autologin plugin allows to automatically connect an authorized user when clicking on a not public URL inserted in a notification email.\",\"group\":\"\",\"filename\":\"ic_autologin\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10035, 0, 'PLG_SYSTEM_IC_LIBRARY', 'plugin', 'ic_library', 'system', 0, 1, 1, 0, '{\"name\":\"PLG_SYSTEM_IC_LIBRARY\",\"type\":\"plugin\",\"creationDate\":\"2017-06-06\",\"author\":\"Cyril Rez\\u00e9 \\/ Jooml!C\",\"copyright\":\"Copyright (c)2014-2017 Cyril Rez\\u00e9, Jooml!C - All rights reserved\",\"authorEmail\":\"info@joomlic.com\",\"authorUrl\":\"www.joomlic.com\",\"version\":\"1.4\",\"description\":\"PLG_SYSTEM_IC_LIBRARY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ic_library\"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10036, 0, 'ICAGENDA_PLG_SEARCH', 'plugin', 'icagenda', 'search', 0, 1, 1, 0, '{\"name\":\"ICAGENDA_PLG_SEARCH\",\"type\":\"plugin\",\"creationDate\":\"2015-12-28\",\"author\":\"Jooml!C\",\"copyright\":\"Copyright (c)2012-2017 Cyril Rez\\u00e9, Jooml!C - All rights reserved\",\"authorEmail\":\"info@joomlic.com\",\"authorUrl\":\"www.joomlic.com\",\"version\":\"1.6\",\"description\":\"ICAGENDA_PLG_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"icagenda\"}', '{\"search_name\":\"\",\"search_limit\":\"50\",\"search_target\":\"0\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10037, 0, 'Minitek Wall module', 'module', 'mod_minitekwall', '', 0, 1, 0, 0, '{\"name\":\"Minitek Wall module\",\"type\":\"module\",\"creationDate\":\"April 2015\",\"author\":\"Minitek.gr\",\"copyright\":\"Copyright (C) 2011-2017 Minitek.gr. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.minitek.gr\",\"version\":\"3.2.4\",\"description\":\"\\n\\t\\n\\t\\tMinitek Wall is the most powerful and robust content display system for Joomla!\\n\\t\\t\\n  \",\"group\":\"\",\"filename\":\"mod_minitekwall\"}', '{\"widget_id\":\"\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10038, 0, 'Minitek Wall', 'component', 'com_minitekwall', '', 1, 1, 0, 0, '{\"name\":\"Minitek Wall\",\"type\":\"component\",\"creationDate\":\"April 2014\",\"author\":\"Minitek.gr\",\"copyright\":\"Copyright (c) 2011-2017 Minitek. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/www.minitek.gr\\/\",\"version\":\"3.8.0\",\"description\":\"\\n\\t\\n\\t\\tMinitek Wall is the most powerful content display system for Joomla!\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"minitekwall\"}', '{\"load_jquery\":\"1\",\"load_lightbox\":\"1\",\"load_fontawesome\":\"1\",\"load_phpthumb\":\"1\",\"version_check\":\"1\"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_fields`
--

CREATE TABLE `nlbuy_fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_fields_categories`
--

CREATE TABLE `nlbuy_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_fields_groups`
--

CREATE TABLE `nlbuy_fields_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_fields_values`
--

CREATE TABLE `nlbuy_fields_values` (
  `field_id` int(10) UNSIGNED NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_filters`
--

CREATE TABLE `nlbuy_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links`
--

CREATE TABLE `nlbuy_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_terms0`
--

CREATE TABLE `nlbuy_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_terms1`
--

CREATE TABLE `nlbuy_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_terms2`
--

CREATE TABLE `nlbuy_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_terms3`
--

CREATE TABLE `nlbuy_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_terms4`
--

CREATE TABLE `nlbuy_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_terms5`
--

CREATE TABLE `nlbuy_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_terms6`
--

CREATE TABLE `nlbuy_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_terms7`
--

CREATE TABLE `nlbuy_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_terms8`
--

CREATE TABLE `nlbuy_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_terms9`
--

CREATE TABLE `nlbuy_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_termsa`
--

CREATE TABLE `nlbuy_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_termsb`
--

CREATE TABLE `nlbuy_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_termsc`
--

CREATE TABLE `nlbuy_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_termsd`
--

CREATE TABLE `nlbuy_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_termse`
--

CREATE TABLE `nlbuy_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_links_termsf`
--

CREATE TABLE `nlbuy_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_taxonomy`
--

CREATE TABLE `nlbuy_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nlbuy_finder_taxonomy`
--

INSERT INTO `nlbuy_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_taxonomy_map`
--

CREATE TABLE `nlbuy_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_terms`
--

CREATE TABLE `nlbuy_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_terms_common`
--

CREATE TABLE `nlbuy_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nlbuy_finder_terms_common`
--

INSERT INTO `nlbuy_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_tokens`
--

CREATE TABLE `nlbuy_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_tokens_aggregate`
--

CREATE TABLE `nlbuy_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_finder_types`
--

CREATE TABLE `nlbuy_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_icagenda`
--

CREATE TABLE `nlbuy_icagenda` (
  `id` int(10) UNSIGNED NOT NULL,
  `version` varchar(255) DEFAULT NULL,
  `releasedate` varchar(255) DEFAULT NULL,
  `params` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nlbuy_icagenda`
--

INSERT INTO `nlbuy_icagenda` (`id`, `version`, `releasedate`, `params`) VALUES
(3, '3.6.12', '2017-07-27', '');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_icagenda_category`
--

CREATE TABLE `nlbuy_icagenda_category` (
  `id` int(11) UNSIGNED NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `desc` mediumtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `groups` varchar(255) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '*'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nlbuy_icagenda_category`
--

INSERT INTO `nlbuy_icagenda_category` (`id`, `ordering`, `state`, `checked_out`, `checked_out_time`, `title`, `alias`, `color`, `desc`, `image`, `groups`, `language`) VALUES
(1, 1, 1, 0, '0000-00-00 00:00:00', 'December', 'december', '#bdbdbd', '', '', '', '*');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_icagenda_customfields`
--

CREATE TABLE `nlbuy_icagenda_customfields` (
  `id` int(11) UNSIGNED NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `parent_form` int(11) NOT NULL DEFAULT '0',
  `groups` varchar(255) NOT NULL DEFAULT '',
  `type` varchar(255) NOT NULL,
  `options` mediumtext,
  `default` varchar(255) NOT NULL,
  `required` tinyint(3) NOT NULL DEFAULT '0',
  `language` varchar(10) NOT NULL DEFAULT '*',
  `params` mediumtext,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_icagenda_customfields_data`
--

CREATE TABLE `nlbuy_icagenda_customfields_data` (
  `id` int(11) UNSIGNED NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(255) NOT NULL,
  `parent_form` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL,
  `language` varchar(10) NOT NULL DEFAULT '*'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_icagenda_events`
--

CREATE TABLE `nlbuy_icagenda_events` (
  `id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `approval` int(11) NOT NULL DEFAULT '0',
  `site_itemid` int(10) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` varchar(10) NOT NULL DEFAULT '*',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL,
  `created_by_email` varchar(100) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `displaytime` int(10) NOT NULL DEFAULT '1',
  `weekdays` varchar(255) NOT NULL,
  `daystime` varchar(255) NOT NULL,
  `startdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `enddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `period` mediumtext NOT NULL,
  `dates` mediumtext NOT NULL,
  `next` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `time` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `coordinate` varchar(255) NOT NULL,
  `lat` float(20,16) NOT NULL,
  `lng` float(20,16) NOT NULL,
  `shortdesc` text NOT NULL,
  `desc` mediumtext NOT NULL,
  `metadesc` text NOT NULL,
  `params` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nlbuy_icagenda_events`
--

INSERT INTO `nlbuy_icagenda_events` (`id`, `asset_id`, `ordering`, `state`, `approval`, `site_itemid`, `checked_out`, `checked_out_time`, `title`, `alias`, `access`, `language`, `hits`, `created`, `created_by`, `created_by_alias`, `created_by_email`, `modified`, `modified_by`, `username`, `catid`, `image`, `file`, `displaytime`, `weekdays`, `daystime`, `startdate`, `enddate`, `period`, `dates`, `next`, `time`, `place`, `website`, `email`, `phone`, `name`, `city`, `country`, `address`, `coordinate`, `lat`, `lng`, `shortdesc`, `desc`, `metadesc`, `params`) VALUES
(1, 94, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 'Santa @ Avoca Powerscourt', 'santa-s-hut', 1, '*', 14, '2017-12-06 15:43:01', 300, '', '', '2017-12-06 16:12:48', 300, 'Super User', 1, 'images/Gallery/Image 1-4 948x945_1.jpg', '', 1, '', '', '2017-11-25 00:00:00', '2017-12-23 00:00:00', 'a:29:{i:0;s:16:\"2017-12-23 00:00\";i:1;s:16:\"2017-12-22 00:00\";i:2;s:16:\"2017-12-21 00:00\";i:3;s:16:\"2017-12-20 00:00\";i:4;s:16:\"2017-12-19 00:00\";i:5;s:16:\"2017-12-18 00:00\";i:6;s:16:\"2017-12-17 00:00\";i:7;s:16:\"2017-12-16 00:00\";i:8;s:16:\"2017-12-15 00:00\";i:9;s:16:\"2017-12-14 00:00\";i:10;s:16:\"2017-12-13 00:00\";i:11;s:16:\"2017-12-12 00:00\";i:12;s:16:\"2017-12-11 00:00\";i:13;s:16:\"2017-12-10 00:00\";i:14;s:16:\"2017-12-09 00:00\";i:15;s:16:\"2017-12-08 00:00\";i:16;s:16:\"2017-12-07 00:00\";i:17;s:16:\"2017-12-06 00:00\";i:18;s:16:\"2017-12-05 00:00\";i:19;s:16:\"2017-12-04 00:00\";i:20;s:16:\"2017-12-03 00:00\";i:21;s:16:\"2017-12-02 00:00\";i:22;s:16:\"2017-12-01 00:00\";i:23;s:16:\"2017-11-30 00:00\";i:24;s:16:\"2017-11-29 00:00\";i:25;s:16:\"2017-11-28 00:00\";i:26;s:16:\"2017-11-27 00:00\";i:27;s:16:\"2017-11-26 00:00\";i:28;s:16:\"2017-11-25 00:00\";}', 'a:1:{i:0;s:16:\"0000-00-00 00:00\";}', '2017-12-08 00:00:00', '', 'Powerscourt House and Gardens', 'https://www.avoca.com/en', '', '', '', 'Enniskerry', 'Ireland', 'Powerscourt House & Gardens, Powerscourt Demesne', '', 0.0000000000000000, 0.0000000000000000, '', '<p>Santa and his elves have come to powerscourt this year to find out who been naughty or nice. While the kids get their festive spirit from Mr Claus, parents can get a coffee or a snack in the Terrace Cafe. There is a wide range of animals for the kids to see, from deer, miniature donkeys, goats, rabbits to guinea pigs there is something for everyone.</p>\r\n<p>There is plenty of lovely shops for christmas presents. There is a lovely walk around the Avoca grounds as well and there is free parking. </p>\r\n<p>Tickets cost 10 euro and are non refundable.</p>\r\n<p> </p>\r\n<p>For more information visit <a href=\"https://www.avoca.com/en/news/santa-at-avoca-powerscourt-2017\">powerscourt</a> now.</p>', '', '{\"statutReg\":\"0\",\"accessReg\":\"\",\"typeReg\":\"1\",\"reg_deadline\":\"\",\"maxReg\":\"\",\"maxRlistGlobal\":\"\",\"maxRlist\":\"\",\"RegButtonText\":\"\",\"RegButtonLink\":\"\",\"RegButtonLink_Article\":\"\",\"RegButtonLink_Url\":\"\",\"RegButtonTarget\":\"0\",\"atevent\":\"\",\"first_published_and_approved\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_icagenda_feature`
--

CREATE TABLE `nlbuy_icagenda_feature` (
  `id` int(11) UNSIGNED NOT NULL,
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `desc` mediumtext NOT NULL,
  `icon` varchar(255) NOT NULL,
  `icon_alt` varchar(255) NOT NULL,
  `show_filter` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_icagenda_feature_xref`
--

CREATE TABLE `nlbuy_icagenda_feature_xref` (
  `id` int(11) UNSIGNED NOT NULL,
  `event_id` int(11) NOT NULL,
  `feature_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_icagenda_filters`
--

CREATE TABLE `nlbuy_icagenda_filters` (
  `id` int(10) UNSIGNED NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT '',
  `filter` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(255) NOT NULL DEFAULT '',
  `selected` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_icagenda_registration`
--

CREATE TABLE `nlbuy_icagenda_registration` (
  `id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `eventid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` mediumtext NOT NULL,
  `period` tinyint(1) NOT NULL DEFAULT '0',
  `people` int(2) NOT NULL,
  `notes` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_languages`
--

CREATE TABLE `nlbuy_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_languages`
--

INSERT INTO `nlbuy_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (en-GB)', 'English (United Kingdom)', 'en', 'en_gb', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_menu`
--

CREATE TABLE `nlbuy_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_menu`
--

INSERT INTO `nlbuy_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 87, 0, '*', 0),
(2, 'main', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 1, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'main', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'main', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 1, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'main', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'main', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 1, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'main', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 1, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 25, 30, 0, '*', 1),
(8, 'main', 'com_contact_contacts', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 1, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 26, 27, 0, '*', 1),
(9, 'main', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 1, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 28, 29, 0, '*', 1),
(10, 'main', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 1, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 31, 34, 0, '*', 1),
(11, 'main', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 1, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 32, 33, 0, '*', 1),
(13, 'main', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 35, 40, 0, '*', 1),
(14, 'main', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 1, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 36, 37, 0, '*', 1),
(15, 'main', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 1, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 38, 39, 0, '*', 1),
(16, 'main', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 1, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 41, 42, 0, '*', 1),
(17, 'main', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 1, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 43, 44, 0, '*', 1),
(18, 'main', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 1, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 45, 46, 0, '*', 1),
(19, 'main', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 1, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 47, 48, 0, '*', 1),
(20, 'main', 'com_tags', 'Tags', '', 'Tags', 'index.php?option=com_tags', 'component', 1, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 49, 50, 0, '', 1),
(21, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 1, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 51, 52, 0, '*', 1),
(22, 'main', 'com_associations', 'Multilingual Associations', '', 'Multilingual Associations', 'index.php?option=com_associations', 'component', 1, 1, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 'class:associations', 0, '', 53, 54, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 0, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"3\",\"num_columns\":\"3\",\"num_links\":\"0\",\"multi_column_order\":\"1\",\"orderby_pri\":\"\",\"orderby_sec\":\"front\",\"order_date\":\"\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"1\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 13, 14, 0, '*', 0),
(102, 'mainmenu', 'About', 'about', '', 'about', 'index.php?option=com_rspagebuilder&view=page&id=6', 'component', 1, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 15, 16, 0, '*', 0),
(103, 'main', 'COM_RSPAGEBUILDER', 'com-rspagebuilder', '', 'com-rspagebuilder', 'index.php?option=com_rspagebuilder', 'component', 1, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 55, 56, 0, '', 1),
(104, 'mainmenu', 'Home', 'home1', '', 'home1', 'index.php?option=com_rspagebuilder&view=page&id=1', 'component', 1, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 11, 12, 1, '*', 0),
(105, 'mainmenu', 'Events', 'events', '', 'events', 'index.php?option=com_rspagebuilder&view=page&id=5', 'component', 1, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 17, 18, 0, '*', 0),
(106, 'mainmenu', 'News', 'blog', '', 'blog', 'index.php?option=com_rspagebuilder&view=page&id=4', 'component', 1, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 19, 20, 0, '*', 0),
(107, 'mainmenu', 'Contact Us', 'contact-us', '', 'contact-us', 'index.php?option=com_rspagebuilder&view=page&id=3', 'component', 1, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 23, 24, 0, '*', 0),
(108, 'mainmenu', 'Charitable Organizations ', 'charties', '', 'charties', 'index.php?option=com_rspagebuilder&view=page&id=2', 'component', 1, 1, 1, 10001, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_image_css\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}', 21, 22, 0, '*', 0),
(119, 'main', 'COM_SPEASYIMAGEGALLERY', 'com-speasyimagegallery', '', 'com-speasyimagegallery', 'index.php?option=com_speasyimagegallery', 'component', 1, 1, 1, 10022, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 57, 58, 0, '', 1),
(126, 'main', 'COM_ICAGENDA_MENU', 'com-icagenda-menu', '', 'com-icagenda-menu', 'index.php?option=com_icagenda', 'component', 1, 1, 1, 10030, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_icagenda/images/iconicagenda16.png', 0, '{}', 59, 78, 0, '', 1),
(127, 'main', 'COM_ICAGENDA_TITLE_ICAGENDA', 'com-icagenda-title-icagenda', '', 'com-icagenda-menu/com-icagenda-title-icagenda', 'index.php?option=com_icagenda&view=icagenda', 'component', 1, 126, 2, 10030, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_icagenda/images/iconicagenda16.png', 0, '{}', 60, 61, 0, '', 1),
(128, 'main', 'COM_ICAGENDA_MENU_CATEGORIES', 'com-icagenda-menu-categories', '', 'com-icagenda-menu/com-icagenda-menu-categories', 'index.php?option=com_icagenda&view=categories', 'component', 1, 126, 2, 10030, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_icagenda/images/all_cats-16.png', 0, '{}', 62, 63, 0, '', 1),
(129, 'main', 'COM_ICAGENDA_EVENTS', 'com-icagenda-events', '', 'com-icagenda-menu/com-icagenda-events', 'index.php?option=com_icagenda&view=events', 'component', 1, 126, 2, 10030, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_icagenda/images/all_events-16.png', 0, '{}', 64, 65, 0, '', 1),
(130, 'main', 'COM_ICAGENDA_REGISTRATION', 'com-icagenda-registration', '', 'com-icagenda-menu/com-icagenda-registration', 'index.php?option=com_icagenda&view=registrations', 'component', 1, 126, 2, 10030, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_icagenda/images/registration-16.png', 0, '{}', 66, 67, 0, '', 1),
(131, 'main', 'COM_ICAGENDA_MAIL', 'com-icagenda-mail', '', 'com-icagenda-menu/com-icagenda-mail', 'index.php?option=com_icagenda&view=mail&layout=edit', 'component', 1, 126, 2, 10030, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_icagenda/images/newsletter-16.png', 0, '{}', 68, 69, 0, '', 1),
(132, 'main', 'COM_ICAGENDA_MENU_CUSTOMFIELDS', 'com-icagenda-menu-customfields', '', 'com-icagenda-menu/com-icagenda-menu-customfields', 'index.php?option=com_icagenda&view=customfields', 'component', 1, 126, 2, 10030, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_icagenda/images/customfields-16.png', 0, '{}', 70, 71, 0, '', 1),
(133, 'main', 'COM_ICAGENDA_MENU_FEATURES', 'com-icagenda-menu-features', '', 'com-icagenda-menu/com-icagenda-menu-features', 'index.php?option=com_icagenda&view=features', 'component', 1, 126, 2, 10030, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_icagenda/images/features-16.png', 0, '{}', 72, 73, 0, '', 1),
(134, 'main', 'COM_ICAGENDA_THEMES', 'com-icagenda-themes', '', 'com-icagenda-menu/com-icagenda-themes', 'index.php?option=com_icagenda&view=themes', 'component', 1, 126, 2, 10030, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_icagenda/images/themes-16.png', 0, '{}', 74, 75, 0, '', 1),
(135, 'main', 'COM_ICAGENDA_INFO', 'com-icagenda-info', '', 'com-icagenda-menu/com-icagenda-info', 'index.php?option=com_icagenda&view=info', 'component', 1, 126, 2, 10030, 0, '0000-00-00 00:00:00', 0, 1, '../media/com_icagenda/images/info-16.png', 0, '{}', 76, 77, 0, '', 1),
(136, 'main', 'COM_MINITEKWALL_ADMIN_MENU', 'com-minitekwall-admin-menu', '', 'com-minitekwall-admin-menu', 'index.php?option=com_minitekwall', 'component', 1, 1, 1, 10038, 0, '0000-00-00 00:00:00', 0, 1, 'components/com_minitekwall/assets/images/dashboard/logo.png', 0, '{}', 79, 86, 0, '', 1),
(137, 'main', 'COM_MINITEKWALL_HOME', 'com-minitekwall-home', '', 'com-minitekwall-admin-menu/com-minitekwall-home', 'index.php?option=com_minitekwall', 'component', 1, 136, 2, 10038, 0, '0000-00-00 00:00:00', 0, 1, 'class:component', 0, '{}', 80, 81, 0, '', 1),
(138, 'main', 'COM_MINITEKWALL_WIDGETS', 'com-minitekwall-widgets', '', 'com-minitekwall-admin-menu/com-minitekwall-widgets', 'index.php?option=com_minitekwall&view=widgets', 'component', 1, 136, 2, 10038, 0, '0000-00-00 00:00:00', 0, 1, 'class:widget', 0, '{}', 82, 83, 0, '', 1),
(139, 'main', 'COM_MINITEKWALL_ABOUT', 'com-minitekwall-about', '', 'com-minitekwall-admin-menu/com-minitekwall-about', 'index.php?option=com_minitekwall&view=about', 'component', 1, 136, 2, 10038, 0, '0000-00-00 00:00:00', 0, 1, 'class:about', 0, '{}', 84, 85, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_menu_types`
--

CREATE TABLE `nlbuy_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_menu_types`
--

INSERT INTO `nlbuy_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`, `client_id`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site', 0),
(2, 83, 'footer', 'Footer', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_messages`
--

CREATE TABLE `nlbuy_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_messages_cfg`
--

CREATE TABLE `nlbuy_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_minitek_wall_widgets`
--

CREATE TABLE `nlbuy_minitek_wall_widgets` (
  `id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type_id` varchar(100) NOT NULL,
  `source_id` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `masonry_params` text NOT NULL,
  `slider_params` text NOT NULL,
  `scroller_params` text NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nlbuy_minitek_wall_widgets`
--

INSERT INTO `nlbuy_minitek_wall_widgets` (`id`, `asset_id`, `type_id`, `source_id`, `name`, `description`, `masonry_params`, `slider_params`, `scroller_params`, `state`, `checked_out`, `checked_out_time`) VALUES
(1, 97, 'masonry', 'joomla', 'news', '', '{\"mas_layout\":\"_:default\",\"mas_suffix\":\"\",\"mas_page_title\":\"0\",\"mas_empty_message\":\"1\",\"mas_grid\":\"11r\",\"mas_cols\":\"4\",\"mas_layout_mode\":\"packery\",\"mas_gutter\":\"5\",\"mas_border_radius\":\"0\",\"mas_border\":\"0\",\"mas_border_color\":\"#eeeeee\",\"mas_images\":\"1\",\"mas_image_link\":\"1\",\"mas_crop_images\":\"0\",\"mas_image_width\":\"400\",\"mas_image_height\":\"300\",\"mas_full_width_image\":\"1\",\"mas_fallback_image\":\"\",\"mas_db_title_limit\":\"15\",\"mas_db_title_link\":\"1\",\"mas_db_introtext_limit\":\"15\",\"mas_db_strip_tags\":\"1\",\"mas_db_date_format\":\"F d, Y\",\"mas_db_big\":\"1\",\"mas_db_position_big\":\"left\",\"mas_db_bg_big\":\"#192f4d\",\"mas_db_bg_opacity_big\":\"0.75\",\"mas_db_color_big\":\"light-text\",\"mas_db_title_big\":\"1\",\"mas_db_introtext_big\":\"0\",\"mas_db_date_big\":\"1\",\"mas_db_category_big\":\"0\",\"mas_db_content_type_big\":\"0\",\"mas_db_author_big\":\"0\",\"mas_db_hits_big\":\"0\",\"mas_db_count_big\":\"1\",\"mas_db_readmore_big\":\"0\",\"mas_db_lscape\":\"1\",\"mas_db_position_lscape\":\"left\",\"mas_db_bg_lscape\":\"#192f4d\",\"mas_db_bg_opacity_lscape\":\"0.75\",\"mas_db_color_lscape\":\"light-text\",\"mas_db_title_lscape\":\"1\",\"mas_db_introtext_lscape\":\"0\",\"mas_db_date_lscape\":\"1\",\"mas_db_category_lscape\":\"0\",\"mas_db_content_type_lscape\":\"0\",\"mas_db_author_lscape\":\"0\",\"mas_db_hits_lscape\":\"0\",\"mas_db_count_lscape\":\"1\",\"mas_db_readmore_lscape\":\"0\",\"mas_db_portrait\":\"1\",\"mas_db_position_portrait\":\"bottom\",\"mas_db_bg_portrait\":\"#192f4d\",\"mas_db_bg_opacity_portrait\":\"0.75\",\"mas_db_color_portrait\":\"light-text\",\"mas_db_title_portrait\":\"1\",\"mas_db_introtext_portrait\":\"0\",\"mas_db_date_portrait\":\"1\",\"mas_db_category_portrait\":\"0\",\"mas_db_content_type_portrait\":\"0\",\"mas_db_author_portrait\":\"0\",\"mas_db_hits_portrait\":\"0\",\"mas_db_count_portrait\":\"1\",\"mas_db_readmore_portrait\":\"0\",\"mas_db_small\":\"1\",\"mas_db_position_small\":\"cover\",\"mas_db_bg_small\":\"#192f4d\",\"mas_db_bg_opacity_small\":\"0.75\",\"mas_db_color_small\":\"light-text\",\"mas_db_title_small\":\"1\",\"mas_db_introtext_small\":\"0\",\"mas_db_date_small\":\"1\",\"mas_db_category_small\":\"0\",\"mas_db_content_type_small\":\"0\",\"mas_db_author_small\":\"0\",\"mas_db_hits_small\":\"0\",\"mas_db_count_small\":\"1\",\"mas_db_readmore_small\":\"0\",\"mas_db_columns\":\"1\",\"mas_db_position_columns\":\"below\",\"mas_db_bg_columns\":\"#192f4d\",\"mas_db_bg_opacity_columns\":\"0.75\",\"mas_db_color_columns\":\"light-text\",\"mas_db_title_columns\":\"1\",\"mas_db_introtext_columns\":\"0\",\"mas_db_date_columns\":\"1\",\"mas_db_category_columns\":\"0\",\"mas_db_content_type_columns\":\"0\",\"mas_db_author_columns\":\"0\",\"mas_db_hits_columns\":\"0\",\"mas_db_count_columns\":\"1\",\"mas_db_readmore_columns\":\"0\",\"mas_hb\":\"1\",\"mas_hb_bg\":\"#192f4d\",\"mas_hb_bg_opacity\":\"0.75\",\"mas_hb_text_color\":\"2\",\"mas_hb_effect\":\"1\",\"mas_hb_effect_speed\":\"0.4\",\"mas_hb_effect_easing\":\"cubic-bezier(0.47, 0, 0.745, 0.715)\",\"mas_hb_title\":\"0\",\"mas_hb_title_limit\":\"15\",\"mas_hb_introtext\":\"0\",\"mas_hb_introtext_limit\":\"15\",\"mas_hb_strip_tags\":\"0\",\"mas_hb_date\":\"1\",\"mas_hb_date_format\":\"F d, Y\",\"mas_hb_category\":\"0\",\"mas_hb_type\":\"0\",\"mas_hb_author\":\"0\",\"mas_hb_hits\":\"0\",\"mas_hb_link\":\"1\",\"mas_hb_lightbox\":\"0\",\"mas_pagination\":\"0\",\"mas_starting_limit\":\"7\",\"mas_filters_bg\":\"#e96d51\",\"mas_filters_border_radius\":\"3\",\"mas_reset_filters\":\"0\",\"mas_filter_type\":\"1\",\"mas_category_filters\":\"0\",\"mas_category_filters_label\":\"FILTER_BY_CATEGORY\",\"mas_tag_filters\":\"0\",\"mas_tag_filters_label\":\"FILTER_BY_TAG\",\"mas_date_filters\":\"0\",\"mas_date_filters_label\":\"FILTER_BY_DATE\",\"mas_sorting_type\":\"1\",\"mas_title_sorting\":\"0\",\"mas_category_sorting\":\"0\",\"mas_author_sorting\":\"0\",\"mas_date_sorting\":\"0\",\"mas_hits_sorting\":\"0\",\"mas_sorting_direction\":\"0\",\"mas_effects\":[\"fade\"],\"mas_transition_duration\":\"400\",\"mas_transition_stagger\":\"0\",\"mas_enable_responsive\":\"1\",\"mas_responsive_lg\":\"1139\",\"mas_lg_cell_height\":\"240\",\"mas_responsive_md\":\"939\",\"mas_md_type\":\"0\",\"mas_responsive_md_num\":\"3\",\"mas_md_cell_height\":\"240\",\"mas_responsive_sm\":\"719\",\"mas_sm_type\":\"1\",\"mas_responsive_sm_num\":\"2\",\"mas_sm_cell_height\":\"240\",\"mas_responsive_xs\":\"479\",\"mas_xs_type\":\"1\",\"mas_responsive_xs_num\":\"2\",\"mas_xs_cell_height\":\"240\",\"mas_xxs_type\":\"1\",\"mas_responsive_xxs_num\":\"1\",\"mas_xxs_cell_height\":\"240\"}', '', '', 1, 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_minitek_wall_widgets_source`
--

CREATE TABLE `nlbuy_minitek_wall_widgets_source` (
  `id` int(11) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `joomla_source` text NOT NULL,
  `k2_source` text NOT NULL,
  `virtuemart_source` text NOT NULL,
  `jomsocial_source` text NOT NULL,
  `easyblog_source` text NOT NULL,
  `folder_source` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nlbuy_minitek_wall_widgets_source`
--

INSERT INTO `nlbuy_minitek_wall_widgets_source` (`id`, `widget_id`, `joomla_source`, `k2_source`, `virtuemart_source`, `jomsocial_source`, `easyblog_source`, `folder_source`) VALUES
(1, 1, '{\"joomla_mode\":\"ja\",\"ja_mode\":\"normal\",\"ja_title\":\"JOOMLA_ARTICLES\",\"ja_category_filtering_type\":\"1\",\"ja_catid\":[\"\"],\"ja_show_child_category_articles\":\"1\",\"ja_levels\":\"10\",\"ja_tag_filtering_type\":\"1\",\"ja_tag_include_children\":\"1\",\"ja_tag_match\":\"1\",\"ja_created_by\":\"0\",\"ja_date_filtering\":\"off\",\"ja_date_field\":\"created\",\"ja_start_date_range\":\"\",\"ja_end_date_range\":\"\",\"ja_relative_date\":\"30\",\"ja_show_front\":\"show\",\"ja_excluded_articles\":\"\",\"ja_article_ordering\":\"a.created\",\"ja_article_ordering_direction\":\"DESC\",\"ja_image_type\":\"introtext\",\"jc_title\":\"JOOMLA_CATEGORIES\",\"jc_include_categories\":\"2\",\"jc_include_categories_children\":\"1\",\"jc_ordering\":\"alpha\",\"jc_ordering_direction\":\"DESC\"}', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_modules`
--

CREATE TABLE `nlbuy_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_modules`
--

INSERT INTO `nlbuy_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 39, 'Main Menu', '', '', 1, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(2, 40, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 41, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(4, 42, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(8, 43, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 44, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 45, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(12, 46, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}', 1, '*'),
(13, 47, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 48, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 49, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 50, 'Login Form', '', '', 7, 'position-7', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_login', 1, 1, '{\"greeting\":\"1\",\"name\":\"0\"}', 0, '*'),
(17, 51, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_breadcrumbs', 1, 1, '{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\"}', 0, '*'),
(79, 52, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(86, 53, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}', 1, '*'),
(87, 55, 'Sample Data', '', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_sampledata', 6, 1, '{}', 1, '*'),
(91, 73, 'Navigation Bar', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '2017-12-04 13:49:00', '0000-00-00 00:00:00', 1, 'mod_gruemenu', 1, 1, '{\"menutype\":\"mainmenu\",\"jQuery\":\"0\",\"touchWipe\":\"1\",\"Fixed\":\"0\",\"Mobile\":\"1\",\"MenuDirection\":\"0\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"menuFontSize\":\"13px\",\"menubg\":\"#192F4D\",\"menulink\":\"#D1E3FB\",\"submenuFontSize\":\"11px\",\"submenubg\":\"#192F4D\",\"submenulink\":\"#D1E3FB\",\"menubghover\":\"#11243D\",\"menulinkhover\":\"#FFFFFF\",\"menuradius\":\"3\",\"fontStyle\":\"Open+Sans\",\"screenMax\":\"720\",\"tag_id\":\"\",\"class_sfx\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(94, 82, 'Footer', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '2017-12-04 13:49:00', '0000-00-00 00:00:00', 1, 'mod_gruemenu', 1, 1, '{\"menutype\":\"footer\",\"jQuery\":\"0\",\"touchWipe\":\"1\",\"Fixed\":\"0\",\"Mobile\":\"1\",\"MenuDirection\":\"0\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"menuFontSize\":\"13px\",\"menubg\":\"#192F4D\",\"menulink\":\"#D1E3FB\",\"submenuFontSize\":\"11px\",\"submenubg\":\"#192F4D\",\"submenulink\":\"#D1E3FB\",\"menubghover\":\"#11243D\",\"menulinkhover\":\"#FFFFFF\",\"menuradius\":\"3\",\"fontStyle\":\"Open+Sans\",\"screenMax\":\"720\",\"tag_id\":\"\",\"class_sfx\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(95, 84, 'Footer', '', '', 1, 'position-11', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_menu', 1, 1, '{\"menutype\":\"footer\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(96, 85, 'Gallery', '', '', 1, '', 0, '0000-00-00 00:00:00', '2017-12-06 14:11:50', '0000-00-00 00:00:00', 1, 'mod_speasyimagegallery', 1, 1, '{\"layout\":\"album\",\"catid\":\"\",\"albums_column\":\"4\",\"albums_column_sm\":\"4\",\"albums_column_xs\":\"6\",\"albums_gutter\":\"20\",\"albums_gutter_sm\":\"15\",\"albums_gutter_xs\":\"10\",\"album_id\":\"2\",\"album_limit\":\"20\",\"album_layout\":\"default\",\"album_column\":\"3\",\"album_column_sm\":\"4\",\"album_column_xs\":\"6\",\"album_gutter\":\"20\",\"album_gutter_sm\":\"15\",\"album_gutter_xs\":\"10\",\"show_title\":\"1\",\"show_desc\":\"1\",\"show_count\":\"1\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(99, 92, 'iCagenda - Calendar', '', '', 1, '', 0, '0000-00-00 00:00:00', '2017-12-06 15:16:24', '0000-00-00 00:00:00', 1, 'mod_iccalendar', 1, 1, '{\"template\":\"default\",\"iCmenuitem\":\"\",\"iCmenu_filters\":\"0\",\"firstMonth\":\"\",\"onlyStDate\":\"\",\"header_text\":\"\",\"tipwidth\":\"390\",\"position\":\"center\",\"posmiddle\":\"top\",\"verticaloffset\":\"50\",\"padding\":\"0\",\"mouseover\":\"click\",\"mouseout\":\"1\",\"format\":\"0\",\"date_separator\":\"\",\"dp_time\":\"1\",\"dp_venuename\":\"1\",\"dp_city\":\"1\",\"dp_country\":\"1\",\"dp_regInfos\":\"1\",\"features_icon_size\":\"\",\"show_icon_title\":\"1\",\"dp_shortDesc\":\"\",\"filtering_shortDesc\":\"\",\"paramlimit\":\"0\",\"paramlimit_Content\":\"\",\"calendarclosebtn\":\"0\",\"calendarclosebtn_Content\":\"X\",\"month_nav\":\"1\",\"year_nav\":\"1\",\"firstday\":\"1\",\"calfontcolor\":\" \",\"OneEventbgcolor\":\" \",\"Eventsbgcolor\":\" \",\"bgcolor\":\" \",\"bgimage\":\"\",\"bgimagerepeat\":\"repeat\",\"mon\":\" \",\"tue\":\" \",\"wed\":\" \",\"thu\":\" \",\"fri\":\" \",\"sat\":\" \",\"sun\":\" \",\"loadJquery\":\"auto\",\"setTodayTimezone\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(100, 95, 'Minitek Wall module', '', '', 1, '', 0, '0000-00-00 00:00:00', '2017-12-06 19:30:57', '0000-00-00 00:00:00', 1, 'mod_minitekwall', 1, 1, '{\"widget_id\":\"1\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*'),
(101, 98, 'news', '', '', 1, '', 0, '0000-00-00 00:00:00', '2017-12-06 19:31:35', '0000-00-00 00:00:00', 1, 'mod_minitekwall', 1, 1, '{\"widget_id\":\"1\",\"moduleclass_sfx\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_modules_menu`
--

CREATE TABLE `nlbuy_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_modules_menu`
--

INSERT INTO `nlbuy_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(86, 0),
(87, 0),
(88, 0),
(89, 0),
(90, 0),
(91, 0),
(94, 0),
(95, 0),
(96, 105);

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_newsfeeds`
--

CREATE TABLE `nlbuy_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_overrider`
--

CREATE TABLE `nlbuy_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_postinstall_messages`
--

CREATE TABLE `nlbuy_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_postinstall_messages`
--

INSERT INTO `nlbuy_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1),
(4, 700, 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY', 'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION', 'plg_system_updatenotification', 1, 'action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_action', 'site://plugins/system/updatenotification/postinstall/updatecachetime.php', 'updatecachetime_postinstall_condition', '3.6.3', 1),
(5, 700, 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE', 'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/joomla40checks.php', 'admin_postinstall_joomla40checks_condition', '3.7.0', 1),
(6, 700, 'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE', 'TPL_HATHOR_MESSAGE_POSTINSTALL_BODY', 'TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION', 'tpl_hathor', 1, 'action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_action', 'admin://templates/hathor/postinstall/hathormessage.php', 'hathormessage_postinstall_condition', '3.7.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_redirect_links`
--

CREATE TABLE `nlbuy_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_rspagebuilder`
--

CREATE TABLE `nlbuy_rspagebuilder` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  `bootstrap_version` tinyint(3) NOT NULL DEFAULT '2',
  `full_width` tinyint(3) NOT NULL DEFAULT '1',
  `open_graph_title` varchar(255) NOT NULL,
  `open_graph_image` varchar(255) NOT NULL,
  `open_graph_description` varchar(255) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `robots` text NOT NULL,
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` bigint(20) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nlbuy_rspagebuilder`
--

INSERT INTO `nlbuy_rspagebuilder` (`id`, `title`, `alias`, `content`, `bootstrap_version`, `full_width`, `open_graph_title`, `open_graph_image`, `open_graph_description`, `metakey`, `metadesc`, `robots`, `published`, `access`, `created`, `created_by`, `modified`, `modified_by`, `language`) VALUES
(1, 'Home', 'home', '[{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_carousel\",\"category\":\"bootstrap_elements\",\"options\":{\"title\":\"Carousel Title\",\"title_show\":\"0\",\"image_position\":\"image-left\",\"alignment\":\"text-left\",\"items_per_slide\":\"1\",\"slide_effect\":\"\",\"slide_interval\":\"3500\",\"show_controls\":\"0\",\"show_indicators\":\"0\",\"indicators_position\":\"center-bottom\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"controls_font_size\":\"\",\"controls_size\":\"\",\"indicators_size\":\"\",\"title_text_color\":\"\",\"controls_color\":\"\",\"indicators_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\"},\"items\":[{\"type\":\"rspbld_carousel_item\",\"options\":{\"item_title\":\"\",\"item_title_heading\":\"h3\",\"item_title_font_size\":\"\",\"item_title_font_weight\":\"\",\"item_title_text_color\":\"\",\"item_title_background_color\":\"\",\"item_title_margin\":\"\",\"item_title_padding\":\"\",\"item_image\":\"images/Gallery/cover1.jpg\",\"item_image_height\":\"600px\",\"item_image_width\":\"100%\",\"item_image_margin\":\"\",\"item_image_padding\":\"\",\"item_background_color\":\"\",\"item_background_image\":\"\",\"item_background_repeat\":\"no-repeat\",\"item_background_size\":\"contain\",\"item_background_position\":\"50%-50%\",\"item_background_overlay_color\":\"\",\"item_background_overlay_opacity\":\"0\",\"item_content\":\"\",\"item_content_text_color\":\"\",\"item_content_background_color\":\"\",\"item_content_margin\":\"\",\"item_content_padding\":\"\",\"button_text\":\"\",\"button_icon\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_size\":\"\",\"button_type\":\"default\"}}]}]}]},{\"type\":\"row\",\"grid\":12,\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_divider\",\"category\":\"spacing_elements\",\"options\":{\"divider_type\":\"border\",\"border_side\":\"top\",\"border_style\":\"outset\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_position\":\"0%-0%\",\"class\":\"\",\"border_width\":\"\",\"background_size\":\"cover\",\"height\":\"\",\"border_color\":\"\",\"margin\":\"\",\"padding\":\"\"},\"items\":[]}]}]},{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"Featured News Articles\",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"0\",\"content\":\"\",\"button_text\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_icon\":\"joomla\",\"button_type\":\"default\",\"alignment\":\"text-center\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"30px\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"\",\"padding\":\"\"},\"items\":[]}]}]},{\"type\":\"row\",\"grid\":\"66\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"6\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"Increase in funds for council districts \",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"1\",\"content\":\"<p>The Wicklow County Council voted in favor of the Local Authority Budget for 2018. Wicklow still remains very under funded compared to other counties. In the 2017 annual budget figures Wicklow spends per person than the national average across all services.</p>\",\"button_text\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_icon\":\"\",\"button_type\":\"default\",\"alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"40px\",\"padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"Wicklow sports organizations receive 1.7 million in funds\",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"1\",\"content\":\"<p>Wicklow TD Andrew Doyle announced that over the next year sports clubs and organizations will receive more than €<span style=\\\"font-size: 12.16px;\\\">1.7 million in funding. The increase in funding will benefit nearly 60 clubs and organizations across Wicklow. The Sports Capital Programme is re-installed as well. </span></p>\",\"button_text\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_icon\":\"\",\"button_type\":\"default\",\"alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"40px\",\"padding\":\"\"},\"items\":[]}]},{\"type\":\"column\",\"grid\":\"6\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"Wicklow coastal defences need urgent repairs\",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"1\",\"content\":\"<p>The Wicklow TD Stephen Donnelly is set to meet Minister Kevin Moran on the week of the 4/12/17. Three applications have been made in the last year for urgent repairs to be made to points along the coast but they have been unsuccessful.  </p>\",\"button_text\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_icon\":\"\",\"button_type\":\"default\",\"alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"40px\",\"padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"Tidy Towns funding increased\",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"1\",\"content\":\"<p>An additional €<span style=\\\"font-size: 12.16px;\\\">50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to</span><span style=\\\"font-size: 12.16px;\\\"><span style=\\\"color: #222222; font-family: arial, sans-serif;\\\"> commemorate the the 60th anniversary of the national competition. </span></span></p>\",\"button_text\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_icon\":\"\",\"button_type\":\"default\",\"alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"40px\",\"padding\":\"\"},\"items\":[]}]}]},{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_divider\",\"category\":\"spacing_elements\",\"options\":{\"divider_type\":\"border\",\"border_side\":\"top\",\"border_style\":\"outset\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_position\":\"0%-0%\",\"class\":\"\",\"border_width\":\"\",\"background_size\":\"cover\",\"height\":\"\",\"border_color\":\"\",\"margin\":\"\",\"padding\":\"\"},\"items\":[]}]}]},{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"Local Sights\",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"0\",\"content\":\"\",\"button_text\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_icon\":\"joomla\",\"button_type\":\"default\",\"alignment\":\"text-center\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"30px\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"\",\"padding\":\"\"},\"items\":[]}]}]},{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_horizontal_image_box\",\"category\":\"box_elements\",\"options\":{\"title\":\"Arklow Hill\",\"title_show\":\"1\",\"image\":\"images/Gallery/arklow-7.jpg\",\"image_alt_text\":\"\",\"image_position\":\"left\",\"content\":\"<p><span style=\\\"color: #222222; font-family: arial, sans-serif; font-size: 13px;\\\">Arklow Hill dominates the town of Arklow to the south and is situated in the southeastern section of the Wicklow Mountains, just 2 km from the Irish Sea coast</span></p>\",\"button_text\":\"Explore\",\"button_url\":\"https://www.mountain-forecast.com/peaks/Arklow-Hill\",\"button_target\":\"_blank\",\"button_icon\":\"angle-right\",\"button_type\":\"success\",\"box_alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"image_height\":\"\",\"image_width\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"content_text_color\":\"\",\"box_background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"image_margin\":\"\",\"image_padding\":\"\",\"content_margin\":\"20px\",\"content_padding\":\"\",\"box_margin\":\"40px\",\"box_padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_horizontal_image_box\",\"category\":\"box_elements\",\"options\":{\"title\":\"The European Club\",\"title_show\":\"1\",\"image\":\"images/Gallery/708_European_17th_final_1.jpg\",\"image_alt_text\":\"\",\"image_position\":\"left\",\"content\":\"<p><span style=\\\"color: #222222; font-family: arial, sans-serif; font-size: 13px;\\\">The Links of The European Club was designed by Pat Ruddy who continues after thirty years to calibrate the links to meet the challenges of the modern game allowing the champions of today to express themselves while demanding a cerebral approach for true success.</span></p>\",\"button_text\":\"Explore\",\"button_url\":\"http://www.theeuropeanclub.com/home.html\",\"button_target\":\"_blank\",\"button_icon\":\"angle-right\",\"button_type\":\"success\",\"box_alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"image_height\":\"\",\"image_width\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"content_text_color\":\"\",\"box_background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"image_margin\":\"\",\"image_padding\":\"\",\"content_margin\":\"20px\",\"content_padding\":\"\",\"box_margin\":\"40px\",\"box_padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_horizontal_image_box\",\"category\":\"box_elements\",\"options\":{\"title\":\"Arklow Maritime Museum \",\"title_show\":\"1\",\"image\":\"images/Gallery/items2.jpg\",\"image_alt_text\":\"\",\"image_position\":\"left\",\"content\":\"<p>The Arklow Maritime Musuem, in the town of Arklow in County Wicklow, displays information on the town\'s maritime history, focusing on its boat building, lifeboat and fishing traditions.</p>\",\"button_text\":\"Explore\",\"button_url\":\"http://www.arklowmaritimeheritage.ie/\",\"button_target\":\"_blank\",\"button_icon\":\"angle-right\",\"button_type\":\"success\",\"box_alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"image_height\":\"\",\"image_width\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"content_text_color\":\"\",\"box_background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"image_margin\":\"\",\"image_padding\":\"\",\"content_margin\":\"20px\",\"content_padding\":\"\",\"box_margin\":\"40px\",\"box_padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_horizontal_image_box\",\"category\":\"box_elements\",\"options\":{\"title\":\"Ennereilly Beach\",\"title_show\":\"1\",\"image\":\"images/Gallery/download.jpg\",\"image_alt_text\":\"\",\"image_position\":\"left\",\"content\":\"<p>Ennereilly Beach is one of Arklow\'s most beautiful natural spots for people to visit. People travel far and wide to come and glimpse at its gorgeous sandy beach. It is also a hot spot for avid fishermen. </p>\",\"button_text\":\"Explore\",\"button_url\":\"http://www.whyireland.com/beaches-in-county-wicklow/\",\"button_target\":\"_blank\",\"button_icon\":\"angle-right\",\"button_type\":\"success\",\"box_alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"image_height\":\"\",\"image_width\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"content_text_color\":\"\",\"box_background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"image_margin\":\"\",\"image_padding\":\"\",\"content_margin\":\"20px\",\"content_padding\":\"\",\"box_margin\":\"40px\",\"box_padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_horizontal_image_box\",\"category\":\"box_elements\",\"options\":{\"title\":\"Red Kite Walk\",\"title_show\":\"1\",\"image\":\"images/Gallery/69411b38854405e9a491cd57a320944d.jpg\",\"image_alt_text\":\"\",\"image_position\":\"left\",\"content\":\"<p>The walk will take you through some wonderful woodland and you can view the village from the forest walk that overlooks it. The trail is just 2.5km. The Golden Eagle Trust re-introduced a pair of Red Kite birds into Kilmagig Forest.</p>\",\"button_text\":\"Explore\",\"button_url\":\"https://www.bandbireland.com/blog/b-b-ireland/may-2014/red-kite-walk-in-avoca-official-opening-of-red-kit\",\"button_target\":\"_blank\",\"button_icon\":\"angle-right\",\"button_type\":\"success\",\"box_alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"image_height\":\"\",\"image_width\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"content_text_color\":\"\",\"box_background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"image_margin\":\"\",\"image_padding\":\"\",\"content_margin\":\"20px\",\"content_padding\":\"\",\"box_margin\":\"40px\",\"box_padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_horizontal_image_box\",\"category\":\"box_elements\",\"options\":{\"title\":\"Knockanree Gardens\",\"title_show\":\"1\",\"image\":\"images/Gallery/download (1).jpg\",\"image_alt_text\":\"\",\"image_position\":\"left\",\"content\":\"<p>This prize winning garden was began in 1995 and consists of a series of areas influenced by gardens from around the world. There are European and Indian sculptures, a Japanese Zen Circle, a Chinese bridge and a French parterre.</p>\",\"button_text\":\"Explore\",\"button_url\":\"https://www.discoverireland.ie/Arts-Culture-Heritage/knockanree-garden/95273\",\"button_target\":\"_blank\",\"button_icon\":\"angle-right\",\"button_type\":\"success\",\"box_alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"image_height\":\"\",\"image_width\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"content_text_color\":\"\",\"box_background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"image_margin\":\"\",\"image_padding\":\"\",\"content_margin\":\"20px\",\"content_padding\":\"\",\"box_margin\":\"40px\",\"box_padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_horizontal_image_box\",\"category\":\"box_elements\",\"options\":{\"title\":\"Glenart Walk\",\"title_show\":\"1\",\"image\":\"images/Gallery/download (2).jpg\",\"image_alt_text\":\"\",\"image_position\":\"left\",\"content\":\"<p>Glenart has small streams flowing into the Avoca River. The trail is 5km and is suitable for moderate walkers. Many oak trees are dated back to the 1820\'s.</p>\",\"button_text\":\"Explore\",\"button_url\":\"http://www.coillte.ie/site/glenart-wood/\",\"button_target\":\"_blank\",\"button_icon\":\"angle-right\",\"button_type\":\"success\",\"box_alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"image_height\":\"\",\"image_width\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"content_text_color\":\"\",\"box_background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"image_margin\":\"\",\"image_padding\":\"\",\"content_margin\":\"20px\",\"content_padding\":\"\",\"box_margin\":\"40px\",\"box_padding\":\"\"},\"items\":[]}]}]}]', 2, 0, '', '', '', '', '', '', 1, 1, '2017-12-04 13:48:19', 300, '2017-12-07 16:17:12', 300, '*'),
(2, 'Charitable Organizations ', 'charties', '[{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"Charitable Organizations in Wicklow\",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"1\",\"content\":\"<p>There are many charitable organizations that help people,place and animals in need. There are even more throughout Ireland, here are a few in County Wicklow.</p>\",\"button_text\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_icon\":\"\",\"button_type\":\"default\",\"alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"\",\"padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_horizontal_image_box\",\"category\":\"box_elements\",\"options\":{\"title\":\"East Wicklow Youth Services\",\"title_show\":\"1\",\"image\":\"images/Gallery/839706.png\",\"image_alt_text\":\"\",\"image_position\":\"left\",\"content\":\"<p class=\\\"MsoNormal\\\">The Mission of East Wicklow Youth Service is to promote a youth work response which is inclusive and respectful where young people voluntarily participate. The service offers opportunities support and encouragement to empower young people to enhance their own potential promoting a sense of belonging and recognizing the positive contribution young people make to the wider community.</p>\",\"button_text\":\"Help Donate\",\"button_url\":\"https://eastwicklowyouth.weebly.com/\",\"button_target\":\"_blank\",\"button_icon\":\"angle-right\",\"button_type\":\"success\",\"box_alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"image_height\":\"100px\",\"image_width\":\"300px\",\"button_size\":\"\",\"title_text_color\":\"\",\"content_text_color\":\"\",\"box_background_color\":\"\",\"title_margin\":\"10px\",\"title_padding\":\"\",\"image_margin\":\"\",\"image_padding\":\"\",\"content_margin\":\"30px\",\"content_padding\":\"\",\"box_margin\":\"30px\",\"box_padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_horizontal_image_box\",\"category\":\"box_elements\",\"options\":{\"title\":\"Arklow Volunteer Centre\",\"title_show\":\"1\",\"image\":\"images/Gallery/Wicklow-Volunteer.jpg\",\"image_alt_text\":\"\",\"image_position\":\"left\",\"content\":\"<p class=\\\"MsoNormal\\\"><span style=\\\"color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\\\">As part of its engagement process to ensure full compliance with the Charities Act 2009, the Charities Regulator has partnered with County Wicklow Volunteer Centre and other Volunteer Centres across the country to act as a Registration Hub to support organisations.</span></p>\",\"button_text\":\"Help Donate\",\"button_url\":\"http://www.volunteerwicklow.ie/index.php/volunteers/register-to-volunteer-00#\",\"button_target\":\"_blank\",\"button_icon\":\"angle-right\",\"button_type\":\"success\",\"box_alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"image_height\":\"100px\",\"image_width\":\"300px\",\"button_size\":\"\",\"title_text_color\":\"\",\"content_text_color\":\"\",\"box_background_color\":\"\",\"title_margin\":\"10px\",\"title_padding\":\"\",\"image_margin\":\"\",\"image_padding\":\"\",\"content_margin\":\"30px\",\"content_padding\":\"\",\"box_margin\":\"40px\",\"box_padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_horizontal_image_box\",\"category\":\"box_elements\",\"options\":{\"title\":\"Irish Horse Welfare Trust\",\"title_show\":\"1\",\"image\":\"images/Gallery/ihwt-logo.png\",\"image_alt_text\":\"\",\"image_position\":\"left\",\"content\":\"<p class=\\\"MsoNormal\\\">The Irish Horse Welfare Trust was established in 1999 to help the plight of horses in Ireland and is Ireland’s largest dedicated equine charity.</p>\",\"button_text\":\"Help Donate\",\"button_url\":\"http://ihwt.ie/donate/\",\"button_target\":\"_blank\",\"button_icon\":\"angle-right\",\"button_type\":\"success\",\"box_alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"image_height\":\"100px\",\"image_width\":\"300px\",\"button_size\":\"\",\"title_text_color\":\"\",\"content_text_color\":\"\",\"box_background_color\":\"\",\"title_margin\":\"10px\",\"title_padding\":\"\",\"image_margin\":\"\",\"image_padding\":\"\",\"content_margin\":\"30px\",\"content_padding\":\"\",\"box_margin\":\"\",\"box_padding\":\"30px\"},\"items\":[]},{\"type\":\"rspbld_horizontal_image_box\",\"category\":\"box_elements\",\"options\":{\"title\":\"Sue Ryder Fondation\",\"title_show\":\"1\",\"image\":\"images/Gallery/Sue-Ryder1.jpg\",\"image_alt_text\":\"\",\"image_position\":\"left\",\"content\":\"<p class=\\\"MsoNormal\\\"> </p>\\n<p> </p>\\n<p class=\\\"MsoNormal\\\">The Sue Ryder Foundation is a not-for-profit organisation dedicated to helping older people live safely, securely and independently-with a choice of services to suit all needs. Not so many years have passed since the work of the Sue Ryder Care was extended to Ireland when a small number of people were enthused to \'Share the Care\' in society. </p>\",\"button_text\":\"Help Donate\",\"button_url\":\"http://www.sueryderfoundation.ie/index.php/fundraising.html\",\"button_target\":\"_blank\",\"button_icon\":\"angle-right\",\"button_type\":\"success\",\"box_alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"image_height\":\"100px\",\"image_width\":\"300px\",\"button_size\":\"\",\"title_text_color\":\"\",\"content_text_color\":\"\",\"box_background_color\":\"\",\"title_margin\":\"10px\",\"title_padding\":\"\",\"image_margin\":\"\",\"image_padding\":\"\",\"content_margin\":\"30px\",\"content_padding\":\"\",\"box_margin\":\"40px\",\"box_padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_horizontal_image_box\",\"category\":\"box_elements\",\"options\":{\"title\":\"Blainroe Lodge Nursing Home\",\"title_show\":\"1\",\"image\":\"images/Gallery/logo5.fw_.png\",\"image_alt_text\":\"\",\"image_position\":\"left\",\"content\":\"<p class=\\\"MsoNormal\\\"><span style=\\\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\\\">At Blainroe Lodge nursing home the staff are registered nurses and trained care assistants ensuring the highest standards of person centered care is provided to residents living with or without a dementia. The staff have all received specialized dementia training and positive social interaction is essential in the care the staff provide to the residents.</span></p>\",\"button_text\":\"Help Donate\",\"button_url\":\"http://www.volunteerwicklow.ie/index.php/volunteers/register-to-volunteer-00#\",\"button_target\":\"_blank\",\"button_icon\":\"angle-right\",\"button_type\":\"success\",\"box_alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"image_height\":\"100px\",\"image_width\":\"300px\",\"button_size\":\"\",\"title_text_color\":\"\",\"content_text_color\":\"\",\"box_background_color\":\"\",\"title_margin\":\"10px\",\"title_padding\":\"\",\"image_margin\":\"\",\"image_padding\":\"\",\"content_margin\":\"30px\",\"content_padding\":\"\",\"box_margin\":\"40px\",\"box_padding\":\"\"},\"items\":[]}]}]}]', 2, 0, '', '', '', '', '', '', 1, 1, '2017-12-04 16:19:28', 300, '2017-12-04 18:02:16', 300, '*'),
(3, 'Contact US', 'contact-us', '[{\"type\":\"row\",\"grid\":\"66\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"6\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_google_map\",\"category\":\"basic_elements\",\"options\":{\"title\":\"\",\"title_show\":\"0\",\"map_api_key\":\"AIzaSyB0DRtFjD7QxRZtQMjGTCM-uT9_l9sw-R0\",\"map_latitude\":\"52.7977\",\"map_longitude\":\"-6.1599\",\"map_zoom\":\"12\",\"class\":\"\",\"map_scrollwheel\":\"1\",\"map_draggable\":\"1\",\"map_zoomcontrol\":\"1\",\"map_streetviewcontrol\":\"1\",\"map_maptypecontrol\":\"1\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"height\":\"500px\",\"width\":\"100%\",\"title_text_color\":\"\",\"map_color\":\"\",\"map_brightness\":\"0\",\"map_saturation\":\"0\",\"title_margin\":\"\",\"title_padding\":\"\",\"margin\":\"\",\"padding\":\"\"},\"items\":[{\"type\":\"rspbld_google_map_item\",\"options\":{\"marker_title\":\"The Arklow Community\",\"marker_title_heading\":\"h3\",\"marker_title_font_size\":\"\",\"marker_title_text_color\":\"\",\"marker_content\":\"<p>Coolgreaney Road, Arklow, County Wicklow</p>\",\"marker_content_text_color\":\"\",\"marker_address\":\"Arklow, Co. Wicklow, Ireland\",\"marker_latitude\":\"52.7977\",\"marker_longitude\":\"-6.1599\",\"marker_color\":\"#e6746e\",\"marker_opacity\":\"1\",\"marker_scale\":\"1\",\"marker_stroke_color\":\"\",\"marker_stroke_weight\":\"1\"}}]}]},{\"type\":\"column\",\"grid\":\"6\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"Email Address:\",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"1\",\"content\":\"<p>Joebloggs@hotmail.com</p>\",\"button_text\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_icon\":\"joomla\",\"button_type\":\"default\",\"alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"50px\",\"padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"Address:\",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"1\",\"content\":\"<p> </p>\\n<p><span style=\\\"font-size: 18px;\\\">The Arklow Community</span> </p>\\n<p><span style=\\\"font-size: 18px;\\\">Coolgreaney Rd, Arklow, Co. Wicklow</span></p>\",\"button_text\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_icon\":\"joomla\",\"button_type\":\"default\",\"alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"50px\",\"padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"Phone Number\",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"1\",\"content\":\"<p>01 294 5670</p>\",\"button_text\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_icon\":\"joomla\",\"button_type\":\"default\",\"alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"50px\",\"padding\":\"\"},\"items\":[]}]}]},{\"type\":\"row\",\"grid\":\"444\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"4\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[]},{\"type\":\"column\",\"grid\":\"4\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[]},{\"type\":\"column\",\"grid\":\"4\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[]}]}]', 2, 1, '', '', '', '', '', '', 1, 1, '2017-12-04 17:50:24', 300, '2017-12-07 14:11:37', 300, '*'),
(4, 'News', 'blog', '[{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"News Articles\",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"0\",\"content\":\"\",\"button_text\":\"\",\"button_url\":\"https://www.rsjoomla.com\",\"button_target\":\"_blank\",\"button_icon\":\"\",\"button_type\":\"default\",\"alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h1\",\"title_font_size\":\"30px\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"40px\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"\",\"padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_module\",\"category\":\"basic_elements\",\"options\":{\"title\":\"News Articles\",\"title_show\":\"0\",\"module\":\"101\",\"class\":\"\",\"title_heading\":\"h1\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"40px\",\"title_padding\":\"\",\"margin\":\"\",\"padding\":\"\"},\"items\":[]}]}]}]', 2, 1, '', '', '', '', '', '', 1, 1, '2017-12-05 11:48:44', 300, '2017-12-07 12:49:37', 300, '*');
INSERT INTO `nlbuy_rspagebuilder` (`id`, `title`, `alias`, `content`, `bootstrap_version`, `full_width`, `open_graph_title`, `open_graph_image`, `open_graph_description`, `metakey`, `metadesc`, `robots`, `published`, `access`, `created`, `created_by`, `modified`, `modified_by`, `language`) VALUES
(5, 'Events', 'events', '[{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"Upcoming Events Calendar\",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"1\",\"content\":\"\",\"button_text\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_icon\":\"\",\"button_type\":\"default\",\"alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"50px\",\"padding\":\"\"},\"items\":[]}]}]},{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_module\",\"category\":\"basic_elements\",\"options\":{\"title\":\"\",\"title_show\":\"1\",\"module\":\"99\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"margin\":\"60px\",\"padding\":\"\"},\"items\":[]}]}]},{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_divider\",\"category\":\"spacing_elements\",\"options\":{\"divider_type\":\"border\",\"border_side\":\"top\",\"border_style\":\"outset\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_position\":\"0%-0%\",\"class\":\"\",\"border_width\":\"\",\"background_size\":\"cover\",\"height\":\"\",\"border_color\":\"\",\"margin\":\"\",\"padding\":\"\"},\"items\":[]}]}]},{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"Events Gallery\",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"1\",\"content\":\"\",\"button_text\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_icon\":\"\",\"button_type\":\"default\",\"alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"50px\",\"padding\":\"\"},\"items\":[]}]}]},{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_module\",\"category\":\"basic_elements\",\"options\":{\"title\":\"Events Gallery\",\"title_show\":\"0\",\"module\":\"96\",\"class\":\"event_images\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"margin\":\"60px\",\"padding\":\"\"},\"items\":[]}]}]}]', 2, 0, '', '', '', '', '', '', 1, 1, '2017-12-05 18:54:02', 300, '2017-12-06 20:22:58', 300, '*'),
(6, 'About', 'about', '[{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"About the Arklow Community\",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"1\",\"content\":\"<p>The Arklow Community Website was set up to help tourists and local residences find out more about their community, the local attractions, News throughout the county of Wicklow, help donate to charitable organizations and any up coming events throughout Wicklow. </p>\\n<p>This Website was developed using the the content management system Joomla.</p>\",\"button_text\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_icon\":\"\",\"button_type\":\"default\",\"alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"40px\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"\",\"padding\":\"\"},\"items\":[]}]}]},{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_divider\",\"category\":\"spacing_elements\",\"options\":{\"divider_type\":\"border\",\"border_side\":\"top\",\"border_style\":\"outset\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_position\":\"0%-0%\",\"class\":\"\",\"border_width\":\"\",\"background_size\":\"cover\",\"height\":\"\",\"border_color\":\"\",\"margin\":\"\",\"padding\":\"\"},\"items\":[]}]}]},{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"Meet the Team\",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"1\",\"content\":\"\",\"button_text\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_icon\":\"\",\"button_type\":\"default\",\"alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"40px\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"\",\"padding\":\"\"},\"items\":[]}]}]},{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_personal_box\",\"category\":\"box_elements\",\"options\":{\"title\":\"Daniel O\'Toole\",\"title_show\":\"1\",\"subtitle\":\"Lead Website Developer\",\"subtitle_show\":\"1\",\"image\":\"images/Gallery/me.jpg\",\"image_alt_text\":\"\",\"content\":\"\",\"social_facebook\":\"\",\"social_twitter\":\"\",\"social_linkedin\":\"\",\"social_instagram\":\"\",\"social_googleplus\":\"\",\"social_youtube\":\"\",\"social_tumblr\":\"\",\"social_vimeo\":\"\",\"social_flickr\":\"\",\"social_pinterest\":\"\",\"social_icons_target\":\"_blank\",\"social_icons_position\":\"after-content\",\"box_alignment\":\"text-center\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"image_height\":\"\",\"image_width\":\"\",\"social_icons_font_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"social_icons_color\":\"\",\"social_icons_background_color\":\"\",\"box_background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"image_margin\":\"\",\"image_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"social_icons_margin\":\"\",\"social_icons_padding\":\"\",\"box_margin\":\"40px\",\"box_padding\":\"\"},\"items\":[]}]}]},{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_personal_box\",\"category\":\"box_elements\",\"options\":{\"title\":\"Jake Smith\",\"title_show\":\"1\",\"subtitle\":\"Website Manager\",\"subtitle_show\":\"1\",\"image\":\"images/Gallery/me2.jpg\",\"image_alt_text\":\"\",\"content\":\"\",\"social_facebook\":\"\",\"social_twitter\":\"\",\"social_linkedin\":\"\",\"social_instagram\":\"\",\"social_googleplus\":\"\",\"social_youtube\":\"\",\"social_tumblr\":\"\",\"social_vimeo\":\"\",\"social_flickr\":\"\",\"social_pinterest\":\"\",\"social_icons_target\":\"_blank\",\"social_icons_position\":\"after-content\",\"box_alignment\":\"text-center\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"image_height\":\"\",\"image_width\":\"\",\"social_icons_font_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"social_icons_color\":\"\",\"social_icons_background_color\":\"\",\"box_background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"image_margin\":\"\",\"image_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"social_icons_margin\":\"\",\"social_icons_padding\":\"\",\"box_margin\":\"40px\",\"box_padding\":\"\"},\"items\":[]}]}]},{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_divider\",\"category\":\"spacing_elements\",\"options\":{\"divider_type\":\"border\",\"border_side\":\"top\",\"border_style\":\"outset\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_position\":\"0%-0%\",\"class\":\"\",\"border_width\":\"\",\"background_size\":\"cover\",\"height\":\"\",\"border_color\":\"\",\"margin\":\"\",\"padding\":\"\"},\"items\":[]}]}]}]', 2, 0, '', '', '', '', '', '', 1, 1, '2017-12-05 18:54:35', 300, '2017-12-07 15:57:56', 300, '*'),
(7, 'Wicklow sports organizations receive 1.7 million in funds', 'wicklow-sports-organizations-receive-1-7-million-in-funds', '[{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[{\"type\":\"rspbld_image\",\"category\":\"basic_elements\",\"options\":{\"image\":\"media/com_rspagebuilder/images/sample/640x360-1.jpg\",\"alt_text\":\"\",\"caption\":\"\",\"tag\":\"\",\"url\":\"\",\"target\":\"\",\"alignment\":\"text-center\",\"border_style\":\"\",\"class\":\"\",\"height\":\"\",\"width\":\"\",\"border_width\":\"\",\"border_radius\":\"\",\"background_color\":\"\",\"border_color\":\"\",\"margin\":\"\",\"padding\":\"\"},\"items\":[]},{\"type\":\"rspbld_text_block\",\"category\":\"basic_elements\",\"options\":{\"title\":\"Text Block Title\",\"title_show\":\"1\",\"subtitle\":\"\",\"subtitle_show\":\"1\",\"content\":\"<p style=\\\"margin: 0px 0px 9px; word-wrap: break-word; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 13px;\\\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Velit euismod in pellentesque massa placerat duis. Interdum velit euismod in pellentesque massa placerat. Ac auctor augue mauris augue neque gravida in fermentum et. Integer quis auctor elit sed vulputate mi sit. Dignissim sodales ut eu sem integer vitae justo eget. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. At quis risus sed vulputate odio ut enim. Nibh ipsum consequat nisl vel pretium lectus. Vitae aliquet nec ullamcorper sit amet risus nullam eget. Vestibulum lectus mauris ultrices eros in. Orci eu lobortis elementum nibh tellus. Scelerisque viverra mauris in aliquam sem fringilla. Ornare arcu odio ut sem nulla pharetra diam sit amet.</p>\\n<p style=\\\"margin: 0px 0px 9px; word-wrap: break-word; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 13px;\\\">Elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl. Gravida quis blandit turpis cursus in. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis. Metus dictum at tempor commodo ullamcorper. Mattis rhoncus urna neque viverra justo nec ultrices. Amet nisl purus in mollis nunc sed. Augue eget arcu dictum varius duis at consectetur lorem donec. Tempus quam pellentesque nec nam aliquam sem. Libero volutpat sed cras ornare arcu. Eget velit aliquet sagittis id consectetur purus. Sed ullamcorper morbi tincidunt ornare. Urna molestie at elementum eu facilisis sed odio morbi quis. In ornare quam viverra orci sagittis. Sit amet consectetur adipiscing elit duis tristique. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Tincidunt vitae semper quis lectus nulla. Semper auctor neque vitae tempus quam pellentesque.</p>\\n<p style=\\\"margin: 0px 0px 9px; word-wrap: break-word; font-family: \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 13px;\\\"> </p>\",\"button_text\":\"\",\"button_url\":\"\",\"button_target\":\"_blank\",\"button_icon\":\"\",\"button_type\":\"default\",\"alignment\":\"text-left\",\"class\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"button_size\":\"\",\"title_text_color\":\"\",\"subtitle_text_color\":\"\",\"content_text_color\":\"\",\"background_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"content_margin\":\"\",\"content_padding\":\"\",\"margin\":\"\",\"padding\":\"\"},\"items\":[]}]}]}]', 2, 0, '', '', '', '', '', '', 0, 1, '2017-12-07 10:24:04', 300, '2017-12-07 10:42:02', 300, '*'),
(8, 'New Article', 'new-article', '[{\"type\":\"row\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"background_image\":\"\",\"background_repeat\":\"no-repeat\",\"background_size\":\"cover\",\"background_attachment\":\"fixed\",\"background_position\":\"0%-0%\",\"background_overlay_color\":\"\",\"background_overlay_opacity\":\"0\",\"row_full_width\":\"1\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"columns\":[{\"type\":\"column\",\"grid\":\"12\",\"options\":{\"title\":\"\",\"title_heading\":\"h2\",\"title_font_size\":\"\",\"title_font_weight\":\"\",\"title_text_color\":\"\",\"title_margin\":\"\",\"title_padding\":\"\",\"subtitle\":\"\",\"subtitle_heading\":\"h3\",\"subtitle_font_size\":\"\",\"subtitle_font_weight\":\"\",\"subtitle_text_color\":\"\",\"subtitle_margin\":\"\",\"subtitle_padding\":\"\",\"heading_alignment\":\"text-left\",\"text_color\":\"\",\"background_color\":\"\",\"animation_type\":\"\",\"animation_duration\":\"500\",\"animation_delay\":\"0\",\"margin\":\"\",\"padding\":\"\",\"class\":\"\",\"id\":\"\"},\"elements\":[]}]}]', 2, 1, '', '', '', '', '', '', 1, 1, '2017-12-07 11:01:15', 300, '0000-00-00 00:00:00', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_schemas`
--

CREATE TABLE `nlbuy_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_schemas`
--

INSERT INTO `nlbuy_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.8.0-2017-07-31'),
(10030, '3.6.12'),
(10038, '0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_session`
--

CREATE TABLE `nlbuy_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED DEFAULT NULL,
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_session`
--

INSERT INTO `nlbuy_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('jmjs3olckhik592hjgs26c1ivs', 0, 1, '1512664140', 'joomla|s:736:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTozMjtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MTI2NjA4MDE7czo0OiJsYXN0IjtpOjE1MTI2NjQxMzM7czozOiJub3ciO2k6MTUxMjY2NDE0MDt9czo1OiJ0b2tlbiI7czozMjoia0ZmaXBDMzlpejhSNDRFS3k3QmlHUVpEVmNXQklqM3IiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";', 0, ''),
('p1alidh0s2us7dg1ot463tao58', 1, 0, '1512664016', 'joomla|s:1400:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo1OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxMjY7czo1OiJ0aW1lciI7Tzo4OiJzdGRDbGFzcyI6Mzp7czo1OiJzdGFydCI7aToxNTEyNjYxMTY3O3M6NDoibGFzdCI7aToxNTEyNjY0MDE1O3M6Mzoibm93IjtpOjE1MTI2NjQwMTU7fXM6NToidG9rZW4iO3M6MzI6IjdEM01QekZGYjdheE5PV0tBRFdmaTlmc2pBWDhGY21aIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6MTc6ImNvbV9yc3BhZ2VidWlsZGVyIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoicGFnZSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319fXM6MjI6ImNvbV9zcGVhc3lpbWFnZWdhbGxlcnkiO086ODoic3RkQ2xhc3MiOjE6e3M6NDoiZWRpdCI7Tzo4OiJzdGRDbGFzcyI6MTp7czo1OiJhbGJ1bSI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YToxOntpOjA7aToyO31zOjQ6ImRhdGEiO047fX19fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7TzoyMDoiSm9vbWxhXENNU1xVc2VyXFVzZXIiOjE6e3M6MjoiaWQiO3M6MzoiMzAwIjt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO2E6MDp7fX1zOjk6ImNvbV9tZWRpYSI7Tzo4OiJzdGRDbGFzcyI6MTp7czoxMDoicmV0dXJuX3VybCI7czo5NToiaW5kZXgucGhwP29wdGlvbj1jb21fbWVkaWEmdmlldz1pbWFnZXMmdG1wbD1jb21wb25lbnQmZmllbGRpZD1tZWRpYS04MjUzJmVfbmFtZT0mYXNzZXQ9JmF1dGhvcj0iO319fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";', 300, 'AdminDaniel');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_speasyimagegallery_albums`
--

CREATE TABLE `nlbuy_speasyimagegallery_albums` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if item is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_speasyimagegallery_albums`
--

INSERT INTO `nlbuy_speasyimagegallery_albums` (`id`, `asset_id`, `title`, `alias`, `image`, `description`, `published`, `catid`, `created`, `created_by`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `attribs`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`) VALUES
(1, 87, 'Halloween', 'gal1', 'images/Gallery/Arklow-Parade-5.gif', '', 1, 0, '2017-12-06 14:18:41', 300, '2017-12-07 16:17:24', 300, 0, '0000-00-00 00:00:00', '', 0, '', '', 1, 9, '', 0, '*'),
(2, 88, 'Christmas', 'christmas', 'images/speasyimagegallery/albums/1/images/download (4).jpg', '', 1, 0, '2017-12-06 14:40:39', 300, '2017-12-07 16:26:55', 300, 300, '2017-12-07 16:26:55', '', 0, '', '', 1, 7, '', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_speasyimagegallery_images`
--

CREATE TABLE `nlbuy_speasyimagegallery_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `album_id` int(10) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_speasyimagegallery_images`
--

INSERT INTO `nlbuy_speasyimagegallery_images` (`id`, `asset_id`, `album_id`, `title`, `alt`, `filename`, `description`, `state`, `created`, `created_by`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `images`, `ordering`, `language`) VALUES
(14, 0, 2, 'Powerscourt', 'Image 1 4 948x945 1', 'image-1-4-948x945-1.jpg', '', 1, '2017-12-06 04:12:57', 300, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{\"original\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/image-1-4-948x945-1.jpg\",\"mini\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/image-1-4-948x945-1_mini.jpg\",\"thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/image-1-4-948x945-1_thumb.jpg\",\"x_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/image-1-4-948x945-1_x_thumb.jpg\",\"y_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/image-1-4-948x945-1_y_thumb.jpg\"}', 1, ''),
(15, 0, 2, 'Arklow Train Station', '', 'arklow-train-station2-1100x733.jpg', '', 1, '2017-12-06 05:12:07', 300, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{\"original\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/arklow-train-station2-1100x733.jpg\",\"mini\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/arklow-train-station2-1100x733_mini.jpg\",\"thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/arklow-train-station2-1100x733_thumb.jpg\",\"x_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/arklow-train-station2-1100x733_x_thumb.jpg\",\"y_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/arklow-train-station2-1100x733_y_thumb.jpg\"}', 2, ''),
(16, 0, 2, 'Craft Fair in Wicklow', '', '2008-fair-photo-311-233.jpg', '', 1, '2017-12-07 03:12:31', 300, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{\"original\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/2008-fair-photo-311-233.jpg\",\"mini\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/2008-fair-photo-311-233_mini.jpg\",\"thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/2008-fair-photo-311-233_thumb.jpg\",\"x_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/2008-fair-photo-311-233_x_thumb.jpg\",\"y_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/2008-fair-photo-311-233_y_thumb.jpg\"}', 3, ''),
(17, 0, 2, 'Butchers assemble !', '', 'download1.jpg', '', 1, '2017-12-07 03:12:55', 300, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{\"original\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download1.jpg\",\"mini\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download1_mini.jpg\",\"thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download1_thumb.jpg\",\"x_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download1_x_thumb.jpg\",\"y_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download1_y_thumb.jpg\"}', 4, ''),
(18, 0, 2, 'Taste Of Wicklow ', '', 'taste-of-wicklow-11.gif', '', 1, '2017-12-07 03:12:03', 300, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{\"original\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/taste-of-wicklow-11.gif\",\"mini\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/taste-of-wicklow-11_mini.gif\",\"thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/taste-of-wicklow-11_thumb.gif\",\"x_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/taste-of-wicklow-11_x_thumb.gif\",\"y_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/taste-of-wicklow-11_y_thumb.gif\"}', 5, ''),
(19, 0, 2, 'Wicklow Mountain Walk', '', 'download-1.jpg', '', 1, '2017-12-07 03:12:31', 300, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{\"original\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-1.jpg\",\"mini\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-1_mini.jpg\",\"thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-1_thumb.jpg\",\"x_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-1_x_thumb.jpg\",\"y_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-1_y_thumb.jpg\"}', 6, ''),
(20, 0, 2, 'Powerscourt Grounds', '', 'download-2.jpg', '', 1, '2017-12-07 03:12:03', 300, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{\"original\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-2.jpg\",\"mini\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-2_mini.jpg\",\"thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-2_thumb.jpg\",\"x_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-2_x_thumb.jpg\",\"y_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-2_y_thumb.jpg\"}', 7, ''),
(21, 0, 2, 'Santa\'s Workshop', '', 'download-3.jpg', '', 1, '2017-12-07 03:12:10', 300, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{\"original\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-3.jpg\",\"mini\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-3_mini.jpg\",\"thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-3_thumb.jpg\",\"x_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-3_x_thumb.jpg\",\"y_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-3_y_thumb.jpg\"}', 8, ''),
(22, 0, 2, 'Santa and Kids', '', 'download-4.jpg', '', 1, '2017-12-07 03:12:42', 300, '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '{\"original\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-4.jpg\",\"mini\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-4_mini.jpg\",\"thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-4_thumb.jpg\",\"x_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-4_x_thumb.jpg\",\"y_thumb\":\"images\\/speasyimagegallery\\/albums\\/2\\/images\\/download-4_y_thumb.jpg\"}', 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_tags`
--

CREATE TABLE `nlbuy_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_tags`
--

INSERT INTO `nlbuy_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 300, '2017-12-04 11:28:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_template_styles`
--

CREATE TABLE `nlbuy_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_template_styles`
--

INSERT INTO `nlbuy_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.png\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),
(7, 'protostar', 0, '1', 'protostar - Default', '{\"templateColor\":\"#0088cc\",\"templateBackgroundColor\":\"#f4f6f7\",\"logoFile\":\"images\\/Gallery\\/logo.jpg\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"1\"}'),
(8, 'isis', 1, '1', 'isis - Default', '{\"templateColor\":\"\",\"logoFile\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_ucm_base`
--

CREATE TABLE `nlbuy_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_ucm_content`
--

CREATE TABLE `nlbuy_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_ucm_history`
--

CREATE TABLE `nlbuy_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_ucm_history`
--

INSERT INTO `nlbuy_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 8, 5, '', '2017-12-04 13:15:20', 300, 555, '5d8ad3c4c0083815db779990a70846eaef696c6d', '{\"id\":\"8\",\"asset_id\":62,\"parent_id\":\"1\",\"lft\":\"11\",\"rgt\":12,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"About\",\"alias\":\"about\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"300\",\"created_time\":\"2017-12-04 13:15:20\",\"modified_user_id\":null,\"modified_time\":\"2017-12-04 13:15:20\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(2, 1, 1, '', '2017-12-04 13:15:48', 300, 1778, '23d882fe6b4f5112e955a90a30e2ee3dbb6a1fe8', '{\"id\":\"1\",\"asset_id\":63,\"title\":\"About \",\"alias\":\"about\",\"introtext\":\"<p>This is the about page<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-12-04 13:15:48\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-04 13:15:48\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-12-04 13:15:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(3, 2, 1, '', '2017-12-04 13:29:15', 300, 1795, '99e8c54d56d365d9a3a31c7d1798594b6410b967', '{\"id\":\"2\",\"asset_id\":64,\"title\":\"Contact Us\",\"alias\":\"contact-us\",\"introtext\":\"<p>This is the contact us article<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-04 13:29:15\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-04 13:29:15\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-12-04 13:29:15\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(4, 9, 5, '', '2017-12-04 13:29:41', 300, 565, '0e303382d99386ba0b2ecc94605c1edf9426d03a', '{\"id\":\"9\",\"asset_id\":65,\"parent_id\":\"1\",\"lft\":\"13\",\"rgt\":14,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Contact US\",\"alias\":\"contact-us\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"300\",\"created_time\":\"2017-12-04 13:29:41\",\"modified_user_id\":null,\"modified_time\":\"2017-12-04 13:29:41\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(5, 2, 1, '', '2017-12-04 13:29:52', 300, 1812, '83af00668723df79b007daa1c49983f2360c8783', '{\"id\":2,\"asset_id\":\"64\",\"title\":\"Contact Us\",\"alias\":\"contact-us\",\"introtext\":\"<p>This is the contact us article<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"9\",\"created\":\"2017-12-04 13:29:15\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-04 13:29:52\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-04 13:29:48\",\"publish_up\":\"2017-12-04 13:29:15\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(6, 10, 5, '', '2017-12-04 13:30:23', 300, 558, 'e364cf104e5896962d4505df273d6fb56fb4cfb8', '{\"id\":\"10\",\"asset_id\":66,\"parent_id\":\"1\",\"lft\":\"15\",\"rgt\":16,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Events\",\"alias\":\"events\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"300\",\"created_time\":\"2017-12-04 13:30:23\",\"modified_user_id\":null,\"modified_time\":\"2017-12-04 13:30:23\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(7, 11, 5, '', '2017-12-04 13:30:37', 300, 554, '9db41890aa076cf6969da317d62ea847a909150c', '{\"id\":\"11\",\"asset_id\":67,\"parent_id\":\"1\",\"lft\":\"17\",\"rgt\":18,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Blog\",\"alias\":\"blog\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"300\",\"created_time\":\"2017-12-04 13:30:37\",\"modified_user_id\":null,\"modified_time\":\"2017-12-04 13:30:37\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(8, 3, 1, '', '2017-12-04 13:30:58', 300, 1746, 'ff72cf60b510df9fa17a2542b7ea34db4371115c', '{\"id\":\"3\",\"asset_id\":68,\"title\":\"Blog\",\"alias\":\"blog\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2017-12-04 13:30:58\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-04 13:30:58\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-12-04 13:30:58\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(9, 4, 1, '', '2017-12-04 13:31:21', 300, 1745, '54d4b031d72314563e05dd3998ee2756ad8a182b', '{\"id\":\"4\",\"asset_id\":69,\"title\":\"Home\",\"alias\":\"home\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-04 13:31:21\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-04 13:31:21\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-12-04 13:31:21\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(10, 5, 1, '', '2017-12-04 13:34:20', 300, 1750, 'b1004f4ff89572dbd99cb05da26211a6fa957e9b', '{\"id\":\"5\",\"asset_id\":70,\"title\":\"Events\",\"alias\":\"events\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2017-12-04 13:34:20\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-04 13:34:20\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-12-04 13:34:20\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(11, 4, 1, '', '2017-12-04 13:39:43', 300, 7134, 'd2e68974a7b0087d757b2835c97647553aeab23b', '{\"id\":4,\"asset_id\":\"69\",\"title\":\"Home\",\"alias\":\"home\",\"introtext\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-04 13:31:21\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-04 13:39:43\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-04 13:38:28\",\"publish_up\":\"2017-12-04 13:31:21\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(12, 12, 5, '', '2017-12-04 13:39:54', 300, 554, '144866088b9b6f3d201b0154271dd8f9897d94d7', '{\"id\":\"12\",\"asset_id\":71,\"parent_id\":\"1\",\"lft\":\"19\",\"rgt\":20,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Home\",\"alias\":\"home\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"300\",\"created_time\":\"2017-12-04 13:39:54\",\"modified_user_id\":null,\"modified_time\":\"2017-12-04 13:39:54\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(13, 4, 1, '', '2017-12-04 13:40:19', 300, 7135, '74c98c7c8e95116cecd6a3e2c795eb4502a17002', '{\"id\":4,\"asset_id\":\"69\",\"title\":\"Home\",\"alias\":\"home\",\"introtext\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2017-12-04 13:31:21\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-04 13:40:19\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-04 13:40:05\",\"publish_up\":\"2017-12-04 13:31:21\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(15, 13, 5, '', '2017-12-04 14:29:31', 300, 562, '0dbba5bc0aca37e2ce98205a24e39064f38c5703', '{\"id\":\"13\",\"asset_id\":75,\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":22,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"Charties\",\"alias\":\"charties\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"300\",\"created_time\":\"2017-12-04 14:29:31\",\"modified_user_id\":null,\"modified_time\":\"2017-12-04 14:29:31\",\"hits\":\"0\",\"language\":\"*\",\"version\":null}', 0),
(16, 13, 5, '', '2017-12-04 18:46:33', 300, 591, '41d3aa1c664d1b203034c5c71cd1c68e501f31f7', '{\"id\":13,\"asset_id\":\"75\",\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":\"22\",\"level\":\"1\",\"path\":\"charties\",\"extension\":\"com_content\",\"title\":\"Charities\",\"alias\":\"charties\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-04 18:46:27\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"300\",\"created_time\":\"2017-12-04 14:29:31\",\"modified_user_id\":\"300\",\"modified_time\":\"2017-12-04 18:46:33\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}', 0),
(17, 2, 5, '', '2017-12-04 18:47:07', 300, 602, '9941a6470a1269c0f5941ff7853fdb88713d6983', '{\"id\":2,\"asset_id\":\"27\",\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":\"2\",\"level\":\"1\",\"path\":\"uncategorised\",\"extension\":\"com_content\",\"title\":\"Uncategorised\",\"alias\":\"uncategorised\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-04 18:47:05\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"300\",\"created_time\":\"2017-12-04 11:28:01\",\"modified_user_id\":\"300\",\"modified_time\":\"2017-12-04 18:47:07\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}', 0),
(18, 3, 1, '', '2017-12-06 19:35:38', 300, 1827, '35888fa8eab53cce1631e53fee38a92533251af6', '{\"id\":3,\"asset_id\":\"68\",\"title\":\"Blog\",\"alias\":\"blog\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2017-12-04 13:30:58\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-06 19:35:38\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-06 19:34:57\",\"publish_up\":\"2017-12-04 13:30:58\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/115589980.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/Gallery\\\\\\/river.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(19, 3, 1, '', '2017-12-06 19:46:49', 300, 1862, '500e030eb01e643c694639619903440bed35bbed', '{\"id\":3,\"asset_id\":\"68\",\"title\":\"Increase in funds for council districts\",\"alias\":\"blog\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2017-12-04 13:30:58\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-06 19:46:49\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-06 19:46:17\",\"publish_up\":\"2017-12-04 13:30:58\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/115589980.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/Gallery\\\\\\/river.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"2\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(20, 2, 1, '', '2017-12-06 20:01:16', 300, 1847, '9965cddc09f80c27950945a7414c3c9577cb1132', '{\"id\":2,\"asset_id\":\"64\",\"title\":\"Wicklow coastal defences need urgent repairs\",\"alias\":\"contact-us\",\"introtext\":\"<p>This is the contact us article<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"9\",\"created\":\"2017-12-04 13:29:15\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-06 20:01:16\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-06 20:01:10\",\"publish_up\":\"2017-12-04 13:29:15\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"11\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(21, 2, 1, '', '2017-12-06 20:02:25', 300, 1913, '13d321faf973ace2853b68080255dc175928d224', '{\"id\":2,\"asset_id\":\"64\",\"title\":\"Wicklow coastal defences need urgent repairs\",\"alias\":\"contact-us\",\"introtext\":\"<p>This is the contact us article<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"9\",\"created\":\"2017-12-04 13:29:15\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-06 20:02:25\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-06 20:01:51\",\"publish_up\":\"2017-12-04 13:29:15\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/Howard Mausoleum 01 - Representative View.JPG\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"11\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(23, 5, 1, '', '2017-12-06 20:12:33', 300, 1800, 'dc678b7356bfc9182929ab266753504be1f1c3dc', '{\"id\":5,\"asset_id\":\"70\",\"title\":\"Events\",\"alias\":\"events\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2017-12-04 13:34:20\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-06 20:12:33\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-06 20:03:51\",\"publish_up\":\"2017-12-04 13:34:20\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-9.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);
INSERT INTO `nlbuy_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(33, 6, 1, '', '2017-12-06 20:56:49', 300, 1834, '5e052872c36e93f6a704c27a951c57bf87e1f506', '{\"id\":6,\"asset_id\":\"74\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"charties\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-04 14:29:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-06 20:56:49\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-06 20:56:32\",\"publish_up\":\"2017-12-04 14:29:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":17,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"13\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(34, 6, 1, '', '2017-12-06 20:56:51', 300, 1836, '9a75da27dbcb3d99e560bc8a9a45251d249d2658', '{\"id\":6,\"asset_id\":\"74\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"charties\",\"introtext\":\"\\t\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-04 14:29:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-06 20:56:51\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-06 20:56:49\",\"publish_up\":\"2017-12-04 14:29:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":18,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"13\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(35, 5, 1, '', '2017-12-06 20:57:24', 300, 1851, 'b88c810bf8d77eccdaddc546dded6babdb3b8f72', '{\"id\":5,\"asset_id\":\"70\",\"title\":\"Wicklow sports organizations receive 1.7 million in funds\",\"alias\":\"events\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2017-12-04 13:34:20\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-06 20:57:24\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-06 20:57:01\",\"publish_up\":\"2017-12-04 13:34:20\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-9.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(36, 5, 1, '', '2017-12-07 10:21:48', 300, 3723, '87b8ad5f42a04b13a86e754e985b2b8fb8f8d460', '{\"id\":5,\"asset_id\":\"70\",\"title\":\"Wicklow sports organizations receive 1.7 million in funds\",\"alias\":\"events\",\"introtext\":\"<p><img src=\\\"images\\/Gallery\\/download.jpg\\\" alt=\\\"\\\" width=\\\"442\\\" height=\\\"297\\\" \\/><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Velit euismod in pellentesque massa placerat duis. Interdum velit euismod in pellentesque massa placerat. Ac auctor augue mauris augue neque gravida in fermentum et. Integer quis auctor elit sed vulputate mi sit. Dignissim sodales ut eu sem integer vitae justo eget. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. At quis risus sed vulputate odio ut enim. Nibh ipsum consequat nisl vel pretium lectus. Vitae aliquet nec ullamcorper sit amet risus nullam eget. Vestibulum lectus mauris ultrices eros in. Orci eu lobortis elementum nibh tellus. Scelerisque viverra mauris in aliquam sem fringilla. Ornare arcu odio ut sem nulla pharetra diam sit amet.<\\/p>\\r\\n<p>Elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl. Gravida quis blandit turpis cursus in. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis. Metus dictum at tempor commodo ullamcorper. Mattis rhoncus urna neque viverra justo nec ultrices. Amet nisl purus in mollis nunc sed. Augue eget arcu dictum varius duis at consectetur lorem donec. Tempus quam pellentesque nec nam aliquam sem. Libero volutpat sed cras ornare arcu. Eget velit aliquet sagittis id consectetur purus. Sed ullamcorper morbi tincidunt ornare. Urna molestie at elementum eu facilisis sed odio morbi quis. In ornare quam viverra orci sagittis. Sit amet consectetur adipiscing elit duis tristique. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Tincidunt vitae semper quis lectus nulla. Semper auctor neque vitae tempus quam pellentesque.<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"10\",\"created\":\"2017-12-04 13:34:20\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 10:21:48\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 10:20:36\",\"publish_up\":\"2017-12-04 13:34:20\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-9.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(37, 2, 5, '', '2017-12-07 10:24:56', 300, 602, '9aff42adaee4b728f815ebcfc2a7cca1d76a0065', '{\"id\":2,\"asset_id\":\"27\",\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":\"2\",\"level\":\"1\",\"path\":\"uncategorised\",\"extension\":\"com_content\",\"title\":\"news articles\",\"alias\":\"uncategorised\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 10:24:40\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"300\",\"created_time\":\"2017-12-04 11:28:01\",\"modified_user_id\":\"300\",\"modified_time\":\"2017-12-07 10:24:56\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}', 0),
(38, 5, 1, '', '2017-12-07 10:25:54', 300, 3722, '00de7ee935c569a37308706b4e787455c5140c6e', '{\"id\":5,\"asset_id\":\"70\",\"title\":\"Wicklow sports organizations receive 1.7 million in funds\",\"alias\":\"events\",\"introtext\":\"<p><img src=\\\"images\\/Gallery\\/download.jpg\\\" alt=\\\"\\\" width=\\\"442\\\" height=\\\"297\\\" \\/><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi cras. Velit euismod in pellentesque massa placerat duis. Interdum velit euismod in pellentesque massa placerat. Ac auctor augue mauris augue neque gravida in fermentum et. Integer quis auctor elit sed vulputate mi sit. Dignissim sodales ut eu sem integer vitae justo eget. Nullam eget felis eget nunc lobortis mattis aliquam faucibus purus. At quis risus sed vulputate odio ut enim. Nibh ipsum consequat nisl vel pretium lectus. Vitae aliquet nec ullamcorper sit amet risus nullam eget. Vestibulum lectus mauris ultrices eros in. Orci eu lobortis elementum nibh tellus. Scelerisque viverra mauris in aliquam sem fringilla. Ornare arcu odio ut sem nulla pharetra diam sit amet.<\\/p>\\r\\n<p>Elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl. Gravida quis blandit turpis cursus in. Imperdiet nulla malesuada pellentesque elit eget gravida cum sociis. Metus dictum at tempor commodo ullamcorper. Mattis rhoncus urna neque viverra justo nec ultrices. Amet nisl purus in mollis nunc sed. Augue eget arcu dictum varius duis at consectetur lorem donec. Tempus quam pellentesque nec nam aliquam sem. Libero volutpat sed cras ornare arcu. Eget velit aliquet sagittis id consectetur purus. Sed ullamcorper morbi tincidunt ornare. Urna molestie at elementum eu facilisis sed odio morbi quis. In ornare quam viverra orci sagittis. Sit amet consectetur adipiscing elit duis tristique. Lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit amet. Tincidunt vitae semper quis lectus nulla. Semper auctor neque vitae tempus quam pellentesque.<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-04 13:34:20\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 10:25:54\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 10:25:46\",\"publish_up\":\"2017-12-04 13:34:20\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-9.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"2\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(39, 2, 5, '', '2017-12-07 10:26:39', 300, 591, '58d5a6404b802a810d7d97ad742d6f79dbc9dd97', '{\"id\":2,\"asset_id\":\"27\",\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":\"2\",\"level\":\"1\",\"path\":\"uncategorised\",\"extension\":\"com_content\",\"title\":\"news articles\",\"alias\":\"na\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 10:26:15\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"300\",\"created_time\":\"2017-12-04 11:28:01\",\"modified_user_id\":\"300\",\"modified_time\":\"2017-12-07 10:26:39\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}', 0),
(40, 1, 1, '', '2017-12-07 10:31:15', 300, 1796, '73cefc26f48090a516007910800f05be6c6c87ea', '{\"id\":1,\"asset_id\":\"63\",\"title\":\"About \",\"alias\":\"about\",\"introtext\":\"<p>This is the about page<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2017-12-04 13:15:48\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 10:31:15\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 10:31:09\",\"publish_up\":\"2017-12-04 13:15:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(41, 1, 1, '', '2017-12-07 10:37:23', 300, 1833, 'a786f2d9ef76930d671ff27c4f5a8b9621e1e221', '{\"id\":1,\"asset_id\":\"63\",\"title\":\"About \",\"alias\":\"about\",\"introtext\":\"<p>This is the about page<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2017-12-04 13:15:48\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 10:37:23\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 10:36:54\",\"publish_up\":\"2017-12-04 13:15:48\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/download (1).jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(42, 4, 1, '', '2017-12-07 10:38:03', 300, 7192, 'eac294ad7b988dfa0d2acabd3c1eb8276e590c38', '{\"id\":4,\"asset_id\":\"69\",\"title\":\"Home\",\"alias\":\"home\",\"introtext\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2017-12-04 13:31:21\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 10:38:03\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 10:37:44\",\"publish_up\":\"2017-12-04 13:31:21\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/69411b38854405e9a491cd57a320944d.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(43, 7, 1, '', '2017-12-07 10:50:06', 300, 1814, '2b794a097dc3d256e3bc817e743a25fecf720f17', '{\"id\":\"7\",\"asset_id\":99,\"title\":\"News aricle\",\"alias\":\"news-aricle\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 10:50:06\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 10:50:06\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-12-07 10:50:06\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/1200px-IMG_FerrybankArklow1548.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(44, 8, 1, '', '2017-12-07 10:50:49', 300, 1827, '8b6a4b8d2709e3d6bdf5ee58a7f1539fd5426b5a', '{\"id\":\"8\",\"asset_id\":100,\"title\":\"news article 2\",\"alias\":\"news-article-2\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 10:50:49\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 10:50:49\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-12-07 10:50:49\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/57449b00-fb74-4ca4-f730-653097890079.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(45, 3, 1, '', '2017-12-07 10:53:08', 300, 2126, '2b9b18779077a910933b71f296ee49b5f218361c', '{\"id\":3,\"asset_id\":\"68\",\"title\":\"Increase in funds for council districts\",\"alias\":\"blog\",\"introtext\":\"<p>The Wicklow County Council voted in favor of the Local Authority Budget for 2018. Wicklow still remains very under funded compared to other counties. In the 2017 annual budget figures Wicklow spends per person than the national average across all services.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2017-12-04 13:30:58\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 10:53:08\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 10:53:01\",\"publish_up\":\"2017-12-04 13:30:58\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/115589980.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/Gallery\\\\\\/river.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"7\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(46, 2, 1, '', '2017-12-07 10:53:21', 300, 2132, 'e8f88bdec76995b568be79660d531e68184ea3d3', '{\"id\":2,\"asset_id\":\"64\",\"title\":\"Wicklow coastal defences need urgent repairs\",\"alias\":\"contact-us\",\"introtext\":\"<p>The Wicklow TD Stephen Donnelly is set to meet Minister Kevin Moran on the week of the 4\\/12\\/17. Three applications have been made in the last year for urgent repairs to be made to points along the coast but they have been unsuccessful.\\u00a0\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"9\",\"created\":\"2017-12-04 13:29:15\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 10:53:21\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 10:53:14\",\"publish_up\":\"2017-12-04 13:29:15\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/Howard Mausoleum 01 - Representative View.JPG\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"12\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(47, 5, 1, '', '2017-12-07 10:53:43', 300, 2266, '81739c93acb52360564a8eb1ce82553b8459f446', '{\"id\":5,\"asset_id\":\"70\",\"title\":\"Wicklow sports organizations receive 1.7 million in funds\",\"alias\":\"events\",\"introtext\":\"<p><img src=\\\"images\\/Gallery\\/download.jpg\\\" alt=\\\"\\\" width=\\\"442\\\" height=\\\"297\\\" \\/><\\/p>\\r\\n<p>Wicklow TD Andrew Doyle announced that over the next year sports clubs and organizations will receive more than\\u00a0\\u20ac1.7 million in funding. The increase in funding will benefit nearly 60 clubs and organizations across Wicklow. The Sports Capital Programme is re-installed as well.\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-04 13:34:20\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 10:53:43\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 10:53:30\",\"publish_up\":\"2017-12-04 13:34:20\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-9.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"3\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(48, 6, 1, '', '2017-12-07 10:54:01', 300, 2137, '2fc3335432b3b2c7329476defc44ecfa979cae72', '{\"id\":6,\"asset_id\":\"74\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"charties\",\"introtext\":\"<p>An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-04 14:29:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 10:54:01\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 10:53:48\",\"publish_up\":\"2017-12-04 14:29:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":19,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"16\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(49, 6, 1, '', '2017-12-07 11:13:23', 300, 2182, '7722be74a105595985c6f6d1bbf8070c61da5ffe', '{\"id\":6,\"asset_id\":\"74\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"charties\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-04 14:29:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 11:13:23\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 11:12:41\",\"publish_up\":\"2017-12-04 14:29:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":20,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"20\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);
INSERT INTO `nlbuy_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(50, 6, 1, '', '2017-12-07 11:16:11', 300, 2351, 'da077802b5c816e7c7c9adf8971db5d2c8e10ad7', '{\"id\":6,\"asset_id\":\"74\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"charties\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><img src=\\\"images\\/Gallery\\/115589980.jpg\\\" alt=\\\"\\\" width=\\\"900\\\" height=\\\"600\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-04 14:29:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 11:16:11\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 11:14:34\",\"publish_up\":\"2017-12-04 14:29:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":22,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"23\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(51, 6, 1, '', '2017-12-07 11:16:23', 300, 2351, 'db667a98333ad46e720ec901ba42fdd1ec523d8f', '{\"id\":6,\"asset_id\":\"74\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"charties\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><img src=\\\"images\\/Gallery\\/115589980.jpg\\\" alt=\\\"\\\" width=\\\"729\\\" height=\\\"486\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-04 14:29:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 11:16:23\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 11:16:11\",\"publish_up\":\"2017-12-04 14:29:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":23,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"24\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(52, 6, 1, '', '2017-12-07 11:18:45', 300, 2394, '652764b91c74fc84074a3cc2c5b8edbedeeafed5', '{\"id\":6,\"asset_id\":\"74\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"charties\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><img src=\\\"images\\/Gallery\\/115589980.jpg\\\" alt=\\\"\\\" width=\\\"729\\\" height=\\\"486\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-04 14:29:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 11:18:45\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 11:16:23\",\"publish_up\":\"2017-12-04 14:29:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":24,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"26\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(53, 6, 1, '', '2017-12-07 11:38:20', 300, 2394, '049610a24831614849935df2cfbf3fb1b00bc5f0', '{\"id\":6,\"asset_id\":\"74\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"charties\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><img src=\\\"images\\/Gallery\\/115589980.jpg\\\" alt=\\\"\\\" width=\\\"801\\\" height=\\\"534\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-04 14:29:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 11:38:20\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 11:28:00\",\"publish_up\":\"2017-12-04 14:29:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":26,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"41\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(54, 6, 1, '', '2017-12-07 11:54:15', 300, 2421, '4bc0c472914274d7f344aff5448f75bce657d288', '{\"id\":6,\"asset_id\":\"74\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"charties\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">,div class=\\\"main_img\\\"&gt;\\r\\n<p><img src=\\\"images\\/Gallery\\/115589980.jpg\\\" alt=\\\"\\\" width=\\\"801\\\" height=\\\"534\\\" \\/><\\/p>\\r\\n<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-04 14:29:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 11:54:15\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 11:38:20\",\"publish_up\":\"2017-12-04 14:29:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":27,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"46\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(55, 6, 1, '', '2017-12-07 11:55:35', 300, 2433, '86d8d8e260a4ae53e401f6e2aa13b58ce927f025', '{\"id\":6,\"asset_id\":\"74\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"charties\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\r\\n<p><img src=\\\"images\\/Gallery\\/115589980.jpg\\\" alt=\\\"\\\" width=\\\"801\\\" height=\\\"534\\\" \\/><\\/p>\\r\\n<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-04 14:29:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 11:55:35\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 11:55:12\",\"publish_up\":\"2017-12-04 14:29:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"1\\\",\\\"link_titles\\\":\\\"0\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"0\\\",\\\"link_category\\\":\\\"0\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"0\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"0\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"0\\\",\\\"show_email_icon\\\":\\\"0\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"0\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":29,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"49\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(56, 9, 1, '', '2017-12-07 14:13:19', 300, 1986, 'ce12ee6cd5c207722b3c230375364dc64c662288', '{\"id\":\"9\",\"asset_id\":101,\"title\":\"Article Template \",\"alias\":\"article-template\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:13:19\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(57, 10, 1, '', '2017-12-07 14:14:32', 300, 1974, 'ce770071c89f279860ba728a8e1f3667f50b4a1e', '{\"id\":\"10\",\"asset_id\":102,\"title\":\"Article Template  (2)\",\"alias\":\"article-template-2\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:14:32\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(58, 10, 1, '', '2017-12-07 14:16:04', 300, 2028, '22544cd428cd075f25ebb15c1683170e211fe3db', '{\"id\":10,\"asset_id\":\"102\",\"title\":\"Increase in funds for council districts\",\"alias\":\"article-template-2\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:16:04\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:14:32\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(59, 9, 1, '', '2017-12-07 14:17:17', 300, 1984, '3abb213b32dda95220107cd98ea4e86ed095e9d4', '{\"id\":9,\"asset_id\":\"101\",\"title\":\"Article Template \",\"alias\":\"article-template\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:17:17\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:17:04\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(60, 10, 1, '', '2017-12-07 14:17:48', 300, 2340, 'db75c9e30e4b74c1962ed32e93f0d5439860c10d', '{\"id\":10,\"asset_id\":\"102\",\"title\":\"Increase in funds for council districts\",\"alias\":\"article-template-2\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/115589980.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0The Wicklow County Council voted in favor of the Local Authority Budget for 2018. Wicklow still remains very under funded compared to other counties. In the 2017 annual budget figures Wicklow spends per person than the national average across all services.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:17:48\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:17:20\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(61, 11, 1, '', '2017-12-07 14:17:54', 300, 1974, '3c8e9b48942fa8293d06052817f7234090f954ec', '{\"id\":\"11\",\"asset_id\":103,\"title\":\"Article Template  (3)\",\"alias\":\"article-template-3\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:17:54\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(62, 11, 1, '', '2017-12-07 14:18:30', 300, 2339, 'af4ee6e32d10e2c872380d3021e54d4871e50329', '{\"id\":11,\"asset_id\":\"103\",\"title\":\"Wicklow coastal defences need urgent repairs\",\"alias\":\"article-template-3\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/Howard Mausoleum 01 - Representative View.JPG\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0The Wicklow TD Stephen Donnelly is set to meet Minister Kevin Moran on the week of the 4\\/12\\/17. Three applications have been made in the last year for urgent repairs to be made to points along the coast but they have been unsuccessful.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:18:30\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:17:54\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(65, 13, 1, '', '2017-12-07 14:19:47', 300, 1974, 'a111e5a7e04f8e2b80948adcda5a9806e7a14469', '{\"id\":\"13\",\"asset_id\":105,\"title\":\"Article Template  (5)\",\"alias\":\"article-template-5\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:19:47\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(66, 13, 1, '', '2017-12-07 14:20:26', 300, 2429, '6008812496eb1234e9f6c93c9a6d7fba652f86b5', '{\"id\":13,\"asset_id\":\"105\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"article-template-5\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/69411b38854405e9a491cd57a320944d.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:20:26\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:19:47\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/69411b38854405e9a491cd57a320944d.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(67, 13, 1, '', '2017-12-07 14:20:42', 300, 2425, 'b3ea117a319437dd4b24f50f980133e63aa7db9f', '{\"id\":13,\"asset_id\":\"105\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"article-template-5\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/69411b38854405e9a491cd57a320944d.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:20:42\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:20:34\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/115589980.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(69, 11, 1, '', '2017-12-07 14:21:54', 300, 2391, '4a5f8ecc723dfbc6f9912c091ba0bdec91ed7429', '{\"id\":11,\"asset_id\":\"103\",\"title\":\"Wicklow coastal defences need urgent repairs\",\"alias\":\"article-template-3\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/Howard Mausoleum 01 - Representative View.JPG\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0The Wicklow TD Stephen Donnelly is set to meet Minister Kevin Moran on the week of the 4\\/12\\/17. Three applications have been made in the last year for urgent repairs to be made to points along the coast but they have been unsuccessful.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:21:54\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:21:13\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/arklow-7.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);
INSERT INTO `nlbuy_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(70, 10, 1, '', '2017-12-07 14:22:16', 300, 2395, '7a037bb12265cc3bbf3932fb0dfa40ab0d7cecb7', '{\"id\":10,\"asset_id\":\"102\",\"title\":\"Increase in funds for council districts\",\"alias\":\"article-template-2\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/115589980.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0The Wicklow County Council voted in favor of the Local Authority Budget for 2018. Wicklow still remains very under funded compared to other counties. In the 2017 annual budget figures Wicklow spends per person than the national average across all services.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:22:16\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:22:06\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/1200px-IMG_FerrybankArklow1548.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(71, 12, 1, '', '2017-12-07 14:26:00', 300, 2519, 'f40929c6d79e0ddd2b0748ca8c3f4d1754f62ded', '{\"id\":12,\"asset_id\":\"104\",\"title\":\"Wicklow sports organizations receive 1.7 million in funds\",\"alias\":\"article-template-4\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/download (2).jpg\\\" alt=\\\"\\\" width=\\\"444\\\" height=\\\"312\\\" \\/><\\/p>\\r\\n<p>\\u00a0Wicklow TD Andrew Doyle announced that over the next year sports clubs and organizations will receive more than\\u00a0\\u20ac1.7 million in funding. The increase in funding will benefit nearly 60 clubs and organizations across Wicklow. The Sports Capital Programme is re-installed as well.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:26:00\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:25:34\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/download (5).jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/Gallery\\\\\\/1200px-IMG_FerrybankArklow1548.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(72, 12, 1, '', '2017-12-07 14:26:40', 300, 2431, '1a3e3ce48fa5d4d080b413dbae48dcd02c092667', '{\"id\":12,\"asset_id\":\"104\",\"title\":\"Wicklow sports organizations receive 1.7 million in funds\",\"alias\":\"article-template-4\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0Wicklow TD Andrew Doyle announced that over the next year sports clubs and organizations will receive more than\\u00a0\\u20ac1.7 million in funding. The increase in funding will benefit nearly 60 clubs and organizations across Wicklow. The Sports Capital Programme is re-installed as well.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:26:40\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:26:00\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/download (5).jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/Gallery\\\\\\/1200px-IMG_FerrybankArklow1548.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(73, 12, 1, '', '2017-12-07 14:27:15', 300, 2487, '6ddcf945f7822092886cc677f1a64fb73d22e970', '{\"id\":12,\"asset_id\":\"104\",\"title\":\"Wicklow sports organizations receive 1.7 million in funds\",\"alias\":\"article-template-4\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<img src=\\\"images\\/Gallery\\/115589980.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0Wicklow TD Andrew Doyle announced that over the next year sports clubs and organizations will receive more than\\u00a0\\u20ac1.7 million in funding. The increase in funding will benefit nearly 60 clubs and organizations across Wicklow. The Sports Capital Programme is re-installed as well.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:27:15\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:26:40\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/download (5).jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"images\\\\\\/Gallery\\\\\\/1200px-IMG_FerrybankArklow1548.jpg\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"2\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(74, 12, 1, '', '2017-12-07 14:27:26', 300, 2432, '37b62fde12b1e232c5f8a4fedc87171831e94b3a', '{\"id\":12,\"asset_id\":\"104\",\"title\":\"Wicklow sports organizations receive 1.7 million in funds\",\"alias\":\"article-template-4\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<img src=\\\"images\\/Gallery\\/115589980.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0Wicklow TD Andrew Doyle announced that over the next year sports clubs and organizations will receive more than\\u00a0\\u20ac1.7 million in funding. The increase in funding will benefit nearly 60 clubs and organizations across Wicklow. The Sports Capital Programme is re-installed as well.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:27:26\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:27:15\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/download (5).jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"3\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(75, 9, 1, '', '2017-12-07 14:29:13', 300, 2103, '30830a3f3a7a434fb537ce3d034de534db2681e8', '{\"id\":9,\"asset_id\":\"101\",\"title\":\"Article Template \",\"alias\":\"article-template\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0Article\\u00a0Title<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:29:13\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:28:36\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"4\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(76, 12, 1, '', '2017-12-07 14:29:54', 300, 2567, '19350c06abf3086e996c5e5457f1de90b69fe980', '{\"id\":12,\"asset_id\":\"104\",\"title\":\"Wicklow sports organizations receive 1.7 million in funds\",\"alias\":\"article-template-4\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0Wicklow sports organizations receive 1.7 million in funds<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<img src=\\\"images\\/Gallery\\/115589980.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0Wicklow TD Andrew Doyle announced that over the next year sports clubs and organizations will receive more than\\u00a0\\u20ac1.7 million in funding. The increase in funding will benefit nearly 60 clubs and organizations across Wicklow. The Sports Capital Programme is re-installed as well.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:29:54\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:29:28\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/download (5).jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"5\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(77, 12, 1, '', '2017-12-07 14:30:13', 300, 2602, 'a953cd078b3a57179234b01c35858355158524ee', '{\"id\":12,\"asset_id\":\"104\",\"title\":\"Wicklow sports organizations receive 1.7 million in funds\",\"alias\":\"article-template-4\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 24pt;\\\">Wicklow sports organizations receive 1.7 million in funds<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<img src=\\\"images\\/Gallery\\/115589980.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0Wicklow TD Andrew Doyle announced that over the next year sports clubs and organizations will receive more than\\u00a0\\u20ac1.7 million in funding. The increase in funding will benefit nearly 60 clubs and organizations across Wicklow. The Sports Capital Programme is re-installed as well.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:30:13\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:29:54\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/download (5).jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":11,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"6\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(78, 12, 1, '', '2017-12-07 14:30:49', 300, 2602, '4a09d1c6b65d9ab64c4573c7579b0727d67e08b5', '{\"id\":12,\"asset_id\":\"104\",\"title\":\"Wicklow sports organizations receive 1.7 million in funds\",\"alias\":\"article-template-4\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">Wicklow sports organizations receive 1.7 million in funds<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_img\\\">\\u00a0<img src=\\\"images\\/Gallery\\/115589980.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0Wicklow TD Andrew Doyle announced that over the next year sports clubs and organizations will receive more than\\u00a0\\u20ac1.7 million in funding. The increase in funding will benefit nearly 60 clubs and organizations across Wicklow. The Sports Capital Programme is re-installed as well.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:30:49\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:30:13\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/download (5).jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":12,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"7\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(79, 12, 1, '', '2017-12-07 14:32:26', 300, 2655, 'edb6d1a9be311e0c9abe1c81e745dca797b3c5da', '{\"id\":12,\"asset_id\":\"104\",\"title\":\"Wicklow sports organizations receive 1.7 million in funds\",\"alias\":\"article-template-4\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">Wicklow sports organizations receive 1.7 million in funds<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_img\\\"><span style=\\\"font-size: 12.16px;\\\"><img src=\\\"images\\/Gallery\\/download (6).jpg\\\" alt=\\\"\\\" width=\\\"808\\\" height=\\\"430\\\" \\/> <\\/span><\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0Wicklow TD Andrew Doyle announced that over the next year sports clubs and organizations will receive more than\\u00a0\\u20ac1.7 million in funding. The increase in funding will benefit nearly 60 clubs and organizations across Wicklow. The Sports Capital Programme is re-installed as well.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:32:26\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:31:11\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/download (5).jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":14,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"8\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(80, 12, 1, '', '2017-12-07 14:33:40', 300, 2592, 'd6cae0fb937627aa71ca22dc5f322bc933bf2ebc', '{\"id\":12,\"asset_id\":\"104\",\"title\":\"Wicklow sports organizations receive 1.7 million in funds\",\"alias\":\"article-template-4\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">Wicklow sports organizations receive 1.7 million in funds<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_img\\\"><img src=\\\"images\\/Gallery\\/inpho_01023011-1024x691.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0Wicklow TD Andrew Doyle announced that over the next year sports clubs and organizations will receive more than\\u00a0\\u20ac1.7 million in funding. The increase in funding will benefit nearly 60 clubs and organizations across Wicklow. The Sports Capital Programme is re-installed as well.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:33:40\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:32:26\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/download (5).jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":15,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"9\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(81, 12, 1, '', '2017-12-07 14:34:57', 300, 2588, '0abcafa908910d3486c6ad43bae2a7329206232c', '{\"id\":12,\"asset_id\":\"104\",\"title\":\"Wicklow sports organizations receive 1.7 million in funds\",\"alias\":\"article-template-4\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">Wicklow sports organizations receive 1.7 million in funds<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_img\\\"><img src=\\\"images\\/Gallery\\/inpho_01023011-1024x691.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0Wicklow TD Andrew Doyle announced that over the next year sports clubs and organizations will receive more than\\u00a0\\u20ac1.7 million in funding. The increase in funding will benefit nearly 60 clubs and organizations across Wicklow. The Sports Capital Programme is re-installed as well.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:34:57\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:34:45\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/hurling.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":17,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"10\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(82, 13, 1, '', '2017-12-07 14:36:22', 300, 2422, 'edd1abf3b932f1774f9f5e265de09769b8ca877c', '{\"id\":13,\"asset_id\":\"105\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"article-template-5\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/69411b38854405e9a491cd57a320944d.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:36:22\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:36:06\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/images.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(83, 13, 1, '', '2017-12-07 14:36:50', 300, 2426, '57f8eb78595153a527db2047596957c24b24d98a', '{\"id\":13,\"asset_id\":\"105\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"article-template-5\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/69411b38854405e9a491cd57a320944d.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:36:50\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:36:22\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/images (1).jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(84, 13, 1, '', '2017-12-07 14:37:50', 300, 2463, '8b9f3bbb97f789557efe8adb96721fb2d23b529f', '{\"id\":13,\"asset_id\":\"105\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"article-template-5\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/69411b38854405e9a491cd57a320944d.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:37:50\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:36:50\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/cleanup-at-ballycane-some-tidy-towns-volunteers.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);
INSERT INTO `nlbuy_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(85, 13, 1, '', '2017-12-07 14:40:09', 300, 2504, '50e71a0c900bd80ce765312461cad1f2e6ade2e1', '{\"id\":13,\"asset_id\":\"105\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"article-template-5\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0Tidy Towns funding increased<\\/span><\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/b2-1.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:40:09\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:37:50\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/cleanup-at-ballycane-some-tidy-towns-volunteers.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(86, 13, 1, '', '2017-12-07 14:40:23', 300, 2533, '3a4bfe513c4142b07d02a37fe4faf0b0f93015e8', '{\"id\":13,\"asset_id\":\"105\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"article-template-5\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0Tidy Towns funding increased<\\/span><\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/b2-1.jpg\\\" alt=\\\"\\\" width=\\\"831\\\" height=\\\"623\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:40:23\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:40:09\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/cleanup-at-ballycane-some-tidy-towns-volunteers.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"2\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(87, 13, 1, '', '2017-12-07 14:40:53', 300, 2533, '85fdf8d3634a3dc7110fc80f099d5695ae6cc771', '{\"id\":13,\"asset_id\":\"105\",\"title\":\"Tidy Towns funding increased\",\"alias\":\"article-template-5\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0Tidy Towns funding increased<\\/span><\\/p>\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/b2-1.jpg\\\" alt=\\\"\\\" width=\\\"831\\\" height=\\\"623\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0An additional\\u00a0\\u20ac50,000 in funding has been approved and was announced by the Minister for Rural and Community Development. This increase in funding will affect all Tidy Town groups across Wicklow and is set to\\u00a0commemorate the the 60th anniversary of the national competition.\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:40:53\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:40:23\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/cleanup-at-ballycane-some-tidy-towns-volunteers.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"3\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(88, 11, 1, '', '2017-12-07 14:44:21', 300, 2518, '7e35debe97737a770e3946e923a5c655697e3f08', '{\"id\":11,\"asset_id\":\"103\",\"title\":\"Wicklow coastal defences need urgent repairs\",\"alias\":\"article-template-3\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<div class=\\\"main_content\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><span style=\\\"font-size: 24pt;\\\">Wicklow coastal defences need urgent repairs<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/image (1).jpg\\\" alt=\\\"\\\" width=\\\"795\\\" height=\\\"423\\\" \\/><\\/p>\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0The Wicklow TD Stephen Donnelly is set to meet Minister Kevin Moran on the week of the 4\\/12\\/17. Three applications have been made in the last year for urgent repairs to be made to points along the coast but they have been unsuccessful.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:44:21\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:41:24\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/image.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(89, 10, 1, '', '2017-12-07 14:47:51', 300, 2478, 'd569a9e6e2953306b5168f1368f9bb6bdb6aa5da', '{\"id\":10,\"asset_id\":\"102\",\"title\":\"Increase in funds for council districts\",\"alias\":\"article-template-2\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0Increase in funds for council districts<\\/span><\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/Houses.jpg\\\" alt=\\\"\\\" width=\\\"669\\\" height=\\\"445\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0The Wicklow County Council voted in favor of the Local Authority Budget for 2018. Wicklow still remains very under funded compared to other counties. In the 2017 annual budget figures Wicklow spends per person than the national average across all services.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:47:51\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:44:39\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/John 21.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(90, 10, 1, '', '2017-12-07 14:49:02', 300, 2478, '35c3d1c86415b5d2b487742813d4eea77f43dfef', '{\"id\":10,\"asset_id\":\"102\",\"title\":\"Increase in funds for council districts\",\"alias\":\"article-template-2\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0Increase in funds for council districts<\\/span><\\/p>\\r\\n<div class=\\\"main_img\\\">\\u00a0<\\/div>\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/Houses.jpg\\\" alt=\\\"\\\" width=\\\"669\\\" height=\\\"445\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0The Wicklow County Council voted in favor of the Local Authority Budget for 2018. Wicklow still remains very under funded compared to other counties. In the 2017 annual budget figures Wicklow spends per person than the national average across all services.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:49:02\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:47:51\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/John 21.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":6,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"1\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(91, 9, 1, '', '2017-12-07 14:49:52', 300, 2062, 'cd28e906e0d29e1dc3f9d223388ed7242f2c6591', '{\"id\":9,\"asset_id\":\"101\",\"title\":\"Article Template \",\"alias\":\"article-template\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0Article\\u00a0Title<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:49:52\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:49:19\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"4\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(92, 9, 1, '', '2017-12-07 14:52:19', 300, 2158, '9f1c1f0edcda6366761811678bdcbed568e1d217', '{\"id\":9,\"asset_id\":\"101\",\"title\":\"Article Template \",\"alias\":\"article-template\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0Article\\u00a0Title<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<p>\\u00a0image<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>content<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:52:19\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:51:28\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"4\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"4\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(93, 14, 1, '', '2017-12-07 14:52:48', 300, 2129, 'f3af515353b9015cbba7045d1289fb29f4a55a2a', '{\"id\":\"14\",\"asset_id\":106,\"title\":\"Article Template  (6)\",\"alias\":\"article-template-6\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0Article\\u00a0Title<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<p>\\u00a0image<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>content<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:52:48\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(94, 14, 1, '', '2017-12-07 14:54:30', 300, 2180, 'e4dab2b725cbd9b752486f7d61c90d7f68d73431', '{\"id\":14,\"asset_id\":\"106\",\"title\":\"Article Template  (6)\",\"alias\":\"article-template-6\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0Article\\u00a0Title<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<p>\\u00a0image<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>content<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:54:30\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:52:48\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/image (2).jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(95, 14, 1, '', '2017-12-07 14:56:20', 300, 2710, 'e978a71a47db98444df53fb83291118aa386494d', '{\"id\":14,\"asset_id\":\"106\",\"title\":\"Article Template  (6)\",\"alias\":\"article-template-6\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0Article\\u00a0Title<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<p><img src=\\\"images\\/Gallery\\/tmg-article_default_mobile.jpg\\\" alt=\\\"\\\" width=\\\"699\\\" height=\\\"473\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Following an investigation by the gardai in Wicklow town they are satisfied the two vehicles reported at Pebble Bay and Friars Hill are not the vehicles which have been involved in robberies last week.<\\/p>\\r\\n<p>Two vehicles fitting the description of a garda appeal were reported in the area, but gardai have clarified the silver Skoda and a silver van were acting innocently.<\\/p>\\r\\n<p>But have asked the public to remain vigilant and not to leave work tools in vans over night.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:56:20\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:54:30\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/image (2).jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(96, 14, 1, '', '2017-12-07 14:57:48', 300, 2728, 'e520ec141de83beb842f5b9087a8f6ab0bc05158', '{\"id\":14,\"asset_id\":\"106\",\"title\":\"Garda continue their search for robbers\",\"alias\":\"article-template-6\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0Article\\u00a0Title<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 24pt;\\\">\\u00a0<\\/span><\\/p>\\r\\n<p><img src=\\\"images\\/Gallery\\/tmg-article_default_mobile.jpg\\\" alt=\\\"\\\" width=\\\"699\\\" height=\\\"473\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Following an investigation by the gardai in Wicklow town they are satisfied the two vehicles reported at Pebble Bay and Friars Hill are not the vehicles which have been involved in robberies last week.<\\/p>\\r\\n<p>Two vehicles fitting the description of a garda appeal were reported in the area, but gardai have clarified the silver Skoda and a silver van were acting innocently.<\\/p>\\r\\n<p>But have asked the public to remain vigilant and not to leave work tools in vans over night.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 14:57:48\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 14:56:20\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/image (2).jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(97, 14, 1, '', '2017-12-07 15:05:58', 300, 2723, '4e4d5bbfe703eea229a13d4db18be0b22eca5250', '{\"id\":14,\"asset_id\":\"106\",\"title\":\"Garda continue their search for robbers\",\"alias\":\"article-template-6\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">Gardai continue their search for robbers <\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><img src=\\\"images\\/Gallery\\/tmg-article_default_mobile.jpg\\\" alt=\\\"\\\" width=\\\"699\\\" height=\\\"473\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Following an investigation by the gardai in Wicklow town they are satisfied the two vehicles reported at Pebble Bay and Friars Hill are not the vehicles which have been involved in robberies last week.<\\/p>\\r\\n<p>Two vehicles fitting the description of a garda appeal were reported in the area, but gardai have clarified the silver Skoda and a silver van were acting innocently.<\\/p>\\r\\n<p>But have asked the public to remain vigilant and not to leave work tools in vans over night.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 15:05:58\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 15:05:45\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/image (2).jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"3\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0),
(98, 9, 1, '', '2017-12-07 15:12:25', 300, 2706, 'f5e08a246f9337122ec1b34010b64ea99ac64834', '{\"id\":9,\"asset_id\":\"101\",\"title\":\"Storm Caroline - Temperatures will plummet\",\"alias\":\"article-template\",\"introtext\":\"<div class=\\\"article_center\\\">\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"main_content\\\">\\r\\n<p><span style=\\\"font-size: 24pt;\\\">Storm Caroline - Temperatures will plummet <\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<img src=\\\"images\\/Gallery\\/article-2590003-1C9E4DA900000578-124_964x595.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>A nationwide weather alert has been issued as Storm Caroline is set to cause significant disruption to commuters tomorrow and Friday.<\\/p>\\r\\n<p>Heavy wind, rain and wintry showers are all on the cards, as a bitterly cold air mass is set to push across the country.<\\/p>\\r\\n<p>Tomorrow will start off cold, bright and windy, however showers will start to drift down in a brisk northwest flow, which will lead to heavy showers turning wintry in the afternoon.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":0,\"catid\":\"2\",\"created\":\"2017-12-07 14:13:19\",\"created_by\":\"300\",\"created_by_alias\":\"\",\"modified\":\"2017-12-07 15:12:25\",\"modified_by\":\"300\",\"checked_out\":\"300\",\"checked_out_time\":\"2017-12-07 15:06:08\",\"publish_up\":\"2017-12-07 14:13:19\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/Gallery\\\\\\/_64791969_frost_gary.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"_:default\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":9,\"ordering\":\"5\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"4\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_updates`
--

CREATE TABLE `nlbuy_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_update_sites`
--

CREATE TABLE `nlbuy_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `nlbuy_update_sites`
--

INSERT INTO `nlbuy_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 1, 1512641964, ''),
(2, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 0, 0, ''),
(3, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 0, 0, ''),
(4, 'RSPageBuilder!', 'extension', 'https://www.rsjoomla.com/updates/free/com_rspagebuilder/Component/com_rspagebuilder.xml', 1, 0, ''),
(9, 'SP Easy Image Gallery Module', 'extension', 'https://www.joomshaper.com/updates/mod-sp-easyimagegallery.xml', 1, 0, ''),
(10, 'SP Easy Image Gallery', 'extension', 'https://www.joomshaper.com/updates/com-sp-easyimagegallery.xml', 1, 0, ''),
(11, 'Minitek Wall Module', 'extension', 'http://update.minitek.gr/joomla-extensions/minitek_wall_module.xml', 1, 0, ''),
(12, 'Minitek Wall', 'extension', 'http://update.minitek.gr/joomla-extensions/minitek_wall.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_update_sites_extensions`
--

CREATE TABLE `nlbuy_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `nlbuy_update_sites_extensions`
--

INSERT INTO `nlbuy_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 802),
(3, 28),
(4, 10001),
(9, 10021),
(10, 10022),
(11, 10037),
(12, 10038);

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_usergroups`
--

CREATE TABLE `nlbuy_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_usergroups`
--

INSERT INTO `nlbuy_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_users`
--

CREATE TABLE `nlbuy_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_users`
--

INSERT INTO `nlbuy_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(300, 'Super User', 'AdminDaniel', 'danielotoole0@gmail.com', '$2y$10$NVAZXZF977B3F4WlV85vm.OuBGuBUlePgFbqJ9NESEYAnYwVHscDW', 0, 1, '2017-12-04 11:28:01', '2017-12-07 15:39:30', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_user_keys`
--

CREATE TABLE `nlbuy_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_user_notes`
--

CREATE TABLE `nlbuy_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_user_profiles`
--

CREATE TABLE `nlbuy_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_user_usergroup_map`
--

CREATE TABLE `nlbuy_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_user_usergroup_map`
--

INSERT INTO `nlbuy_user_usergroup_map` (`user_id`, `group_id`) VALUES
(300, 8);

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_utf8_conversion`
--

CREATE TABLE `nlbuy_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_utf8_conversion`
--

INSERT INTO `nlbuy_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `nlbuy_viewlevels`
--

CREATE TABLE `nlbuy_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nlbuy_viewlevels`
--

INSERT INTO `nlbuy_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nlbuy_assets`
--
ALTER TABLE `nlbuy_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `nlbuy_associations`
--
ALTER TABLE `nlbuy_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `nlbuy_banners`
--
ALTER TABLE `nlbuy_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `nlbuy_banner_clients`
--
ALTER TABLE `nlbuy_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `nlbuy_banner_tracks`
--
ALTER TABLE `nlbuy_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `nlbuy_categories`
--
ALTER TABLE `nlbuy_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `nlbuy_contact_details`
--
ALTER TABLE `nlbuy_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `nlbuy_content`
--
ALTER TABLE `nlbuy_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `nlbuy_contentitem_tag_map`
--
ALTER TABLE `nlbuy_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `nlbuy_content_frontpage`
--
ALTER TABLE `nlbuy_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `nlbuy_content_rating`
--
ALTER TABLE `nlbuy_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `nlbuy_content_types`
--
ALTER TABLE `nlbuy_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `nlbuy_extensions`
--
ALTER TABLE `nlbuy_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `nlbuy_fields`
--
ALTER TABLE `nlbuy_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_user_id` (`created_user_id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `nlbuy_fields_categories`
--
ALTER TABLE `nlbuy_fields_categories`
  ADD PRIMARY KEY (`field_id`,`category_id`);

--
-- Indexes for table `nlbuy_fields_groups`
--
ALTER TABLE `nlbuy_fields_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_created_by` (`created_by`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_context` (`context`(191)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `nlbuy_fields_values`
--
ALTER TABLE `nlbuy_fields_values`
  ADD KEY `idx_field_id` (`field_id`),
  ADD KEY `idx_item_id` (`item_id`(191));

--
-- Indexes for table `nlbuy_finder_filters`
--
ALTER TABLE `nlbuy_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `nlbuy_finder_links`
--
ALTER TABLE `nlbuy_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `nlbuy_finder_links_terms0`
--
ALTER TABLE `nlbuy_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_links_terms1`
--
ALTER TABLE `nlbuy_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_links_terms2`
--
ALTER TABLE `nlbuy_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_links_terms3`
--
ALTER TABLE `nlbuy_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_links_terms4`
--
ALTER TABLE `nlbuy_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_links_terms5`
--
ALTER TABLE `nlbuy_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_links_terms6`
--
ALTER TABLE `nlbuy_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_links_terms7`
--
ALTER TABLE `nlbuy_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_links_terms8`
--
ALTER TABLE `nlbuy_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_links_terms9`
--
ALTER TABLE `nlbuy_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_links_termsa`
--
ALTER TABLE `nlbuy_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_links_termsb`
--
ALTER TABLE `nlbuy_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_links_termsc`
--
ALTER TABLE `nlbuy_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_links_termsd`
--
ALTER TABLE `nlbuy_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_links_termse`
--
ALTER TABLE `nlbuy_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_links_termsf`
--
ALTER TABLE `nlbuy_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `nlbuy_finder_taxonomy`
--
ALTER TABLE `nlbuy_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `nlbuy_finder_taxonomy_map`
--
ALTER TABLE `nlbuy_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `nlbuy_finder_terms`
--
ALTER TABLE `nlbuy_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `nlbuy_finder_terms_common`
--
ALTER TABLE `nlbuy_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `nlbuy_finder_tokens`
--
ALTER TABLE `nlbuy_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `nlbuy_finder_tokens_aggregate`
--
ALTER TABLE `nlbuy_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `nlbuy_finder_types`
--
ALTER TABLE `nlbuy_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nlbuy_icagenda`
--
ALTER TABLE `nlbuy_icagenda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlbuy_icagenda_category`
--
ALTER TABLE `nlbuy_icagenda_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlbuy_icagenda_customfields`
--
ALTER TABLE `nlbuy_icagenda_customfields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlbuy_icagenda_customfields_data`
--
ALTER TABLE `nlbuy_icagenda_customfields_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlbuy_icagenda_events`
--
ALTER TABLE `nlbuy_icagenda_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlbuy_icagenda_feature`
--
ALTER TABLE `nlbuy_icagenda_feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlbuy_icagenda_feature_xref`
--
ALTER TABLE `nlbuy_icagenda_feature_xref`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlbuy_icagenda_filters`
--
ALTER TABLE `nlbuy_icagenda_filters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlbuy_icagenda_registration`
--
ALTER TABLE `nlbuy_icagenda_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlbuy_languages`
--
ALTER TABLE `nlbuy_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `nlbuy_menu`
--
ALTER TABLE `nlbuy_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `nlbuy_menu_types`
--
ALTER TABLE `nlbuy_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `nlbuy_messages`
--
ALTER TABLE `nlbuy_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `nlbuy_messages_cfg`
--
ALTER TABLE `nlbuy_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `nlbuy_minitek_wall_widgets`
--
ALTER TABLE `nlbuy_minitek_wall_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlbuy_minitek_wall_widgets_source`
--
ALTER TABLE `nlbuy_minitek_wall_widgets_source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlbuy_modules`
--
ALTER TABLE `nlbuy_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `nlbuy_modules_menu`
--
ALTER TABLE `nlbuy_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `nlbuy_newsfeeds`
--
ALTER TABLE `nlbuy_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `nlbuy_overrider`
--
ALTER TABLE `nlbuy_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlbuy_postinstall_messages`
--
ALTER TABLE `nlbuy_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `nlbuy_redirect_links`
--
ALTER TABLE `nlbuy_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `nlbuy_rspagebuilder`
--
ALTER TABLE `nlbuy_rspagebuilder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlbuy_schemas`
--
ALTER TABLE `nlbuy_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `nlbuy_session`
--
ALTER TABLE `nlbuy_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `nlbuy_speasyimagegallery_albums`
--
ALTER TABLE `nlbuy_speasyimagegallery_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlbuy_speasyimagegallery_images`
--
ALTER TABLE `nlbuy_speasyimagegallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nlbuy_tags`
--
ALTER TABLE `nlbuy_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `nlbuy_template_styles`
--
ALTER TABLE `nlbuy_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `nlbuy_ucm_base`
--
ALTER TABLE `nlbuy_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `nlbuy_ucm_content`
--
ALTER TABLE `nlbuy_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `nlbuy_ucm_history`
--
ALTER TABLE `nlbuy_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `nlbuy_updates`
--
ALTER TABLE `nlbuy_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `nlbuy_update_sites`
--
ALTER TABLE `nlbuy_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `nlbuy_update_sites_extensions`
--
ALTER TABLE `nlbuy_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `nlbuy_usergroups`
--
ALTER TABLE `nlbuy_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `nlbuy_users`
--
ALTER TABLE `nlbuy_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `nlbuy_user_keys`
--
ALTER TABLE `nlbuy_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `nlbuy_user_notes`
--
ALTER TABLE `nlbuy_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `nlbuy_user_profiles`
--
ALTER TABLE `nlbuy_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `nlbuy_user_usergroup_map`
--
ALTER TABLE `nlbuy_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `nlbuy_viewlevels`
--
ALTER TABLE `nlbuy_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nlbuy_assets`
--
ALTER TABLE `nlbuy_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=107;
--
-- AUTO_INCREMENT for table `nlbuy_banners`
--
ALTER TABLE `nlbuy_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_banner_clients`
--
ALTER TABLE `nlbuy_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_categories`
--
ALTER TABLE `nlbuy_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `nlbuy_contact_details`
--
ALTER TABLE `nlbuy_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_content`
--
ALTER TABLE `nlbuy_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `nlbuy_content_types`
--
ALTER TABLE `nlbuy_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `nlbuy_extensions`
--
ALTER TABLE `nlbuy_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10039;
--
-- AUTO_INCREMENT for table `nlbuy_fields`
--
ALTER TABLE `nlbuy_fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_fields_groups`
--
ALTER TABLE `nlbuy_fields_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_finder_filters`
--
ALTER TABLE `nlbuy_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_finder_links`
--
ALTER TABLE `nlbuy_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_finder_taxonomy`
--
ALTER TABLE `nlbuy_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nlbuy_finder_terms`
--
ALTER TABLE `nlbuy_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_finder_types`
--
ALTER TABLE `nlbuy_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_icagenda`
--
ALTER TABLE `nlbuy_icagenda`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nlbuy_icagenda_category`
--
ALTER TABLE `nlbuy_icagenda_category`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nlbuy_icagenda_customfields`
--
ALTER TABLE `nlbuy_icagenda_customfields`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_icagenda_customfields_data`
--
ALTER TABLE `nlbuy_icagenda_customfields_data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_icagenda_events`
--
ALTER TABLE `nlbuy_icagenda_events`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nlbuy_icagenda_feature`
--
ALTER TABLE `nlbuy_icagenda_feature`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_icagenda_feature_xref`
--
ALTER TABLE `nlbuy_icagenda_feature_xref`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_icagenda_filters`
--
ALTER TABLE `nlbuy_icagenda_filters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_icagenda_registration`
--
ALTER TABLE `nlbuy_icagenda_registration`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_languages`
--
ALTER TABLE `nlbuy_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nlbuy_menu`
--
ALTER TABLE `nlbuy_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;
--
-- AUTO_INCREMENT for table `nlbuy_menu_types`
--
ALTER TABLE `nlbuy_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nlbuy_messages`
--
ALTER TABLE `nlbuy_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_minitek_wall_widgets`
--
ALTER TABLE `nlbuy_minitek_wall_widgets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nlbuy_minitek_wall_widgets_source`
--
ALTER TABLE `nlbuy_minitek_wall_widgets_source`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nlbuy_modules`
--
ALTER TABLE `nlbuy_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `nlbuy_newsfeeds`
--
ALTER TABLE `nlbuy_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_overrider`
--
ALTER TABLE `nlbuy_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `nlbuy_postinstall_messages`
--
ALTER TABLE `nlbuy_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nlbuy_redirect_links`
--
ALTER TABLE `nlbuy_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_rspagebuilder`
--
ALTER TABLE `nlbuy_rspagebuilder`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `nlbuy_speasyimagegallery_albums`
--
ALTER TABLE `nlbuy_speasyimagegallery_albums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nlbuy_speasyimagegallery_images`
--
ALTER TABLE `nlbuy_speasyimagegallery_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `nlbuy_tags`
--
ALTER TABLE `nlbuy_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nlbuy_template_styles`
--
ALTER TABLE `nlbuy_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `nlbuy_ucm_content`
--
ALTER TABLE `nlbuy_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_ucm_history`
--
ALTER TABLE `nlbuy_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `nlbuy_updates`
--
ALTER TABLE `nlbuy_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_update_sites`
--
ALTER TABLE `nlbuy_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nlbuy_usergroups`
--
ALTER TABLE `nlbuy_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `nlbuy_users`
--
ALTER TABLE `nlbuy_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT for table `nlbuy_user_keys`
--
ALTER TABLE `nlbuy_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_user_notes`
--
ALTER TABLE `nlbuy_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nlbuy_viewlevels`
--
ALTER TABLE `nlbuy_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
