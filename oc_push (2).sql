-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 27, 2020 at 07:07 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oc_push`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 0,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `username`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'Fij75rpKFEINcRLxJwHg622FZab5UBFVnTanTq0tswRsDy5RI91eG7vAaHkWdJJAkamycyvn5Dd9wFkqSPd9ENryyP4YDo3vNWAxW8zc3N2QvdnH5eGOKobQICAQp1ZpNpS1Iku7PhHKjdGuzak5eMaeeFb6DAciwet87sTgmb21U5PFwWCf5qJP6AdHnbHtzNxxTRiH1v4Caqa65IzvEnjiYhNsH7GLmijZc6jV2kgIDQp5X6cKGqgHWmPCUtib', 1, '2020-09-15 10:17:12', '2020-09-15 10:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '::1'),
(2, 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `session_id`, `ip`, `date_added`, `date_modified`) VALUES
(5, 1, '073161b4342a7b441d2d4b312b', '127.0.0.1', '2020-09-28 09:40:25', '2020-09-28 09:40:25'),
(3, 1, '6609ded0be2f913cff011444a9', '127.0.0.1', '2020-09-16 20:53:56', '2020-09-16 20:53:56'),
(4, 1, '669b0ca179507e5b1cf6e07756', '127.0.0.1', '2020-09-16 20:54:01', '2020-09-16 20:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(1, 6, 1),
(2, 6, 5),
(3, 6, 3),
(4, 3, 1),
(5, 3, 2),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(1, 1, 'Description'),
(2, 1, 'No. of Cores'),
(4, 1, 'test 1'),
(5, 1, 'test 2'),
(6, 1, 'test 3'),
(7, 1, 'test 4'),
(8, 1, 'test 5'),
(9, 1, 'test 6'),
(10, 1, 'test 7'),
(11, 1, 'test 8'),
(3, 1, 'Clockspeed');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(4, 1),
(5, 3),
(6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(4, 1, 'Technical'),
(5, 1, 'Motherboard'),
(6, 1, 'Processor');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `language_id`, `title`, `link`, `image`, `sort_order`) VALUES
(79, 7, 1, 'iPhone 6', 'index.php?route=product/product&amp;path=57&amp;product_id=49', 'catalog/demo/banners/iPhone6.jpg', 0),
(87, 6, 1, 'HP Banner', 'index.php?route=product/manufacturer/info&amp;manufacturer_id=7', 'catalog/demo/compaq_presario.jpg', 0),
(94, 8, 1, 'NFL', '', 'catalog/demo/manufacturer/nfl.png', 0),
(95, 8, 1, 'RedBull', '', 'catalog/demo/manufacturer/redbull.png', 0),
(96, 8, 1, 'Sony', '', 'catalog/demo/manufacturer/sony.png', 0),
(91, 8, 1, 'Coca Cola', '', 'catalog/demo/manufacturer/cocacola.png', 0),
(92, 8, 1, 'Burger King', '', 'catalog/demo/manufacturer/burgerking.png', 0),
(93, 8, 1, 'Canon', '', 'catalog/demo/manufacturer/canon.png', 0),
(88, 8, 1, 'Harley Davidson', '', 'catalog/demo/manufacturer/harley.png', 0),
(89, 8, 1, 'Dell', '', 'catalog/demo/manufacturer/dell.png', 0),
(90, 8, 1, 'Disney', '', 'catalog/demo/manufacturer/disney.png', 0),
(80, 7, 1, 'MacBookAir', '', 'catalog/demo/banners/MacBookAir.jpg', 0),
(97, 8, 1, 'Starbucks', '', 'catalog/demo/manufacturer/starbucks.png', 0),
(98, 8, 1, 'Nintendo', '', 'catalog/demo/manufacturer/nintendo.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) UNSIGNED NOT NULL,
  `api_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, '', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2011-05-30 12:14:55'),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2010-08-22 06:32:15'),
(20, 'catalog/demo/compaq_presario.jpg', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2011-07-16 02:14:42'),
(24, '', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2011-05-30 12:15:18'),
(18, 'catalog/demo/hp_2.jpg', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2011-05-30 12:13:55'),
(17, '', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2011-05-30 12:15:11'),
(28, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:12', '2010-08-22 06:32:46'),
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2010-08-22 06:31:45'),
(29, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:37', '2010-08-22 06:32:39'),
(30, '', 25, 0, 0, 1, 1, '2009-02-02 13:11:59', '2010-08-22 06:33:00'),
(31, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:24', '2010-08-22 06:33:06'),
(32, '', 25, 0, 0, 1, 1, '2009-02-03 14:17:34', '2010-08-22 06:33:12'),
(33, '', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2011-05-30 12:15:25'),
(34, 'catalog/demo/ipod_touch_4.jpg', 0, 1, 4, 7, 1, '2009-02-03 14:18:11', '2011-05-30 12:15:31'),
(35, '', 28, 0, 0, 0, 1, '2010-09-17 10:06:48', '2010-09-18 14:02:42'),
(36, '', 28, 0, 0, 0, 1, '2010-09-17 10:07:13', '2010-09-18 14:02:55'),
(37, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:39', '2011-04-22 01:55:08'),
(38, '', 34, 0, 0, 0, 1, '2010-09-18 14:03:51', '2010-09-18 14:03:51'),
(39, '', 34, 0, 0, 0, 1, '2010-09-18 14:04:17', '2011-04-22 01:55:20'),
(40, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:36', '2010-09-18 14:05:36'),
(41, '', 34, 0, 0, 0, 1, '2010-09-18 14:05:49', '2011-04-22 01:55:30'),
(42, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:34', '2010-11-07 20:31:04'),
(43, '', 34, 0, 0, 0, 1, '2010-09-18 14:06:49', '2011-04-22 01:55:40'),
(44, '', 34, 0, 0, 0, 1, '2010-09-21 15:39:21', '2010-11-07 20:30:55'),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2011-04-26 08:52:11'),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2011-04-26 08:52:23'),
(47, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:16', '2010-11-07 11:13:16'),
(48, '', 34, 0, 0, 0, 1, '2010-11-07 11:13:33', '2010-11-07 11:13:33'),
(49, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:04', '2010-11-07 11:14:04'),
(50, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:23', '2011-04-22 01:16:01'),
(51, '', 34, 0, 0, 0, 1, '2010-11-07 11:14:38', '2011-04-22 01:16:13'),
(52, '', 34, 0, 0, 0, 1, '2010-11-07 11:16:09', '2011-04-22 01:54:57'),
(53, '', 34, 0, 0, 0, 1, '2010-11-07 11:28:53', '2011-04-22 01:14:36'),
(54, '', 34, 0, 0, 0, 1, '2010-11-07 11:29:16', '2011-04-22 01:16:50'),
(55, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:32', '2010-11-08 10:31:32'),
(56, '', 34, 0, 0, 0, 1, '2010-11-08 10:31:50', '2011-04-22 01:16:37'),
(57, '', 0, 1, 1, 3, 1, '2011-04-26 08:53:16', '2011-05-30 12:15:05'),
(58, '', 52, 0, 0, 0, 1, '2011-05-08 13:44:16', '2011-05-08 13:44:16');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(28, 1, 'Monitors', '', 'Monitors', '', ''),
(33, 1, 'Cameras', '', 'Cameras', '', ''),
(32, 1, 'Web Cameras', '', 'Web Cameras', '', ''),
(31, 1, 'Scanners', '', 'Scanners', '', ''),
(30, 1, 'Printers', '', 'Printers', '', ''),
(29, 1, 'Mice and Trackballs', '', 'Mice and Trackballs', '', ''),
(27, 1, 'Mac', '', 'Mac', '', ''),
(26, 1, 'PC', '', 'PC', '', ''),
(17, 1, 'Software', '', 'Software', '', ''),
(25, 1, 'Components', '', 'Components', '', ''),
(24, 1, 'Phones &amp; PDAs', '', 'Phones &amp; PDAs', '', ''),
(20, 1, 'Desktops', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Desktops', 'Example of category description', ''),
(35, 1, 'test 1', '', 'test 1', '', ''),
(36, 1, 'test 2', '', 'test 2', '', ''),
(37, 1, 'test 5', '', 'test 5', '', ''),
(38, 1, 'test 4', '', 'test 4', '', ''),
(39, 1, 'test 6', '', 'test 6', '', ''),
(40, 1, 'test 7', '', 'test 7', '', ''),
(41, 1, 'test 8', '', 'test 8', '', ''),
(42, 1, 'test 9', '', 'test 9', '', ''),
(43, 1, 'test 11', '', 'test 11', '', ''),
(34, 1, 'MP3 Players', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'MP3 Players', '', ''),
(18, 1, 'Laptops &amp; Notebooks', '&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n', 'Laptops &amp; Notebooks', '', ''),
(44, 1, 'test 12', '', 'test 12', '', ''),
(45, 1, 'Windows', '', 'Windows', '', ''),
(46, 1, 'Macs', '', 'Macs', '', ''),
(47, 1, 'test 15', '', 'test 15', '', ''),
(48, 1, 'test 16', '', 'test 16', '', ''),
(49, 1, 'test 17', '', 'test 17', '', ''),
(50, 1, 'test 18', '', 'test 18', '', ''),
(51, 1, 'test 19', '', 'test 19', '', ''),
(52, 1, 'test 20', '', 'test 20', '', ''),
(53, 1, 'test 21', '', 'test 21', '', ''),
(54, 1, 'test 22', '', 'test 22', '', ''),
(55, 1, 'test 23', '', 'test 23', '', ''),
(56, 1, 'test 24', '', 'test 24', '', ''),
(57, 1, 'Tablets', '', 'Tablets', '', ''),
(58, 1, 'test 25', '', 'test 25', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(28, 25, 0),
(28, 28, 1),
(35, 25, 0),
(35, 28, 1),
(35, 35, 2),
(36, 25, 0),
(36, 28, 1),
(36, 36, 2),
(29, 25, 0),
(29, 29, 1),
(30, 25, 0),
(30, 30, 1),
(31, 25, 0),
(31, 31, 1),
(32, 25, 0),
(32, 32, 1),
(20, 20, 0),
(27, 20, 0),
(27, 27, 1),
(26, 20, 0),
(26, 26, 1),
(24, 24, 0),
(18, 18, 0),
(45, 18, 0),
(45, 45, 1),
(46, 18, 0),
(46, 46, 1),
(17, 17, 0),
(33, 33, 0),
(34, 34, 0),
(37, 34, 0),
(37, 37, 1),
(38, 34, 0),
(38, 38, 1),
(39, 34, 0),
(39, 39, 1),
(40, 34, 0),
(40, 40, 1),
(41, 34, 0),
(41, 41, 1),
(42, 34, 0),
(42, 42, 1),
(43, 34, 0),
(43, 43, 1),
(44, 34, 0),
(44, 44, 1),
(47, 34, 0),
(47, 47, 1),
(48, 34, 0),
(48, 48, 1),
(49, 34, 0),
(49, 49, 1),
(50, 34, 0),
(50, 50, 1),
(51, 34, 0),
(51, 51, 1),
(52, 34, 0),
(52, 52, 1),
(58, 34, 0),
(58, 52, 1),
(58, 58, 2),
(53, 34, 0),
(53, 53, 1),
(54, 34, 0),
(54, 54, 1),
(55, 34, 0),
(55, 55, 1),
(56, 34, 0),
(56, 56, 1),
(57, 57, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(20) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.61250001, 1, '2014-09-25 14:40:00'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 1, '2020-10-23 18:11:26'),
(3, 'Euro', 'EUR', '', '€', '2', 0.78460002, 1, '2014-09-25 14:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `language_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text DEFAULT NULL,
  `wishlist` text DEFAULT NULL,
  `newsletter` tinyint(1) NOT NULL DEFAULT 0,
  `address_id` int(11) NOT NULL DEFAULT 0,
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `code` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(2, 1, 0, 1, 'Chibueze', 'Okoye', 'tricelex@gmail.com', '070-621-94202', '', 'ef2efe00b216c7fa0cb4d1f8b8ecd8439293097e', 'fEJ5A098S', NULL, NULL, 0, 1, '', '102.134.114.33', 1, 0, '', 'vukETT0RYLlmOrZirRmac1LsIIbQ58elA1QmtOME', '2019-03-01 13:50:53'),
(3, 1, 0, 1, 'Fr Donatus', 'Anosike', 'ugomail600@gmail.com', '+447538493527', '', 'f1d6fce660fc10b59e8be4b0bc433ebb2fee164b', 'u0leOwm9L', NULL, NULL, 0, 0, '', '90.202.107.149', 1, 0, '', '', '2019-03-04 22:53:01'),
(4, 1, 0, 1, 'Chinonye', 'Okorie', 'philolov2009@outlook.com', '+2348091050107', '', '10f33a18f97ffa8a5a1c9e386c666d8180b4ffc9', 'bh40HHYrq', NULL, NULL, 0, 4, '', '197.210.45.25', 1, 0, '', '', '2019-03-21 01:59:26'),
(5, 1, 0, 1, 'Jamesrah', 'JamesrahYD', 'khaydaralikas9@mail.ru', '82853623293', '', '307fc25e59e7773205f27ab3a90bf36320bf4fdc', '0vgNX9WSH', NULL, NULL, 0, 0, '', '178.159.37.34', 1, 0, '', '', '2019-04-05 09:25:29'),
(6, 1, 0, 1, 'okey', 'ndubuisi', 'obejorbusiness@yahoo.com', '08032037060', '', 'f9830880926f15398988e3f676613dca867bbade', 'FdGVtFGq6', NULL, NULL, 1, 5, '', '5.79.70.74', 1, 0, '', '', '2019-04-08 17:29:34'),
(7, 1, 0, 1, 'Flexibleenk', 'zzusalmehnrjzsbGP', 'torririli@hotmail.com', '88847395866', '', '9877b2872d91e10f56d9a8ddac995050ec95ebe5', '9JvSyKCcm', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-04 02:36:18'),
(8, 1, 0, 1, 'BlackVuevck', 'xwusayme3mdzdmxGP', 'ciorideper@hotmail.com', '89974641946', '', '1e78814aad7855b09244bfff65db3610976b8486', 'gCyvF6KAD', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-05 09:18:22'),
(9, 1, 0, 1, 'Ascentdqz', 'svusafmexmzidpoGP', 'director@vdsina.ru', '84172165795', '', 'c1ab8cd9794b459af8f0c4e3bc3abf214cb42376', 'J7OT5S3yV', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-07 13:26:30'),
(10, 1, 0, 1, 'Flashpaqksz', 'szusaymeymusxdlGP', 'lippestranra@gmail.com', '84859623544', '', '7c13e484d2dc2bd4f2d88df7891431cc91a46c16', 'Sc4uC3P06', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-09 07:28:19'),
(11, 1, 0, 1, 'Vitamixpkn', 'swusafme2tdddniGP', 'support@vdsina.ru', '81325411419', '', '652d0aa706e8eaa2271aefb42e07aac9dc7dbd9d', 'AWqYP3tsl', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-11 18:46:57'),
(12, 1, 0, 1, 'custom writing', 'custom writing', 'arsen3vlsalkov@hotmail.com', '86124381294', '', '3f9739ec7ccebcd6db38a32d33c52fed7f5752ce', 'LqDnOn1KB', NULL, NULL, 0, 0, '', '31.184.238.148', 1, 0, '', '', '2019-05-13 04:15:53'),
(13, 1, 0, 1, 'Augustmsu', 'szusalmehnwuc2zGP', 'acsomabot@mail.com', '88948928171', '', 'e3270899e3b860f70568309e851fd7e65b13f1fa', 'jJkrNk4LZ', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-13 11:40:46'),
(14, 1, 0, 1, 'Chibueze', 'Okoye', '3icelex@gmail.com', '07062194202', '', '0db8afc2b489981fd244375aaf284424dffee514', 'brOokZINM', NULL, NULL, 0, 65, '', '102.134.114.1', 1, 0, '', '', '2019-05-13 14:01:52'),
(28, 1, 0, 1, 'goodluck', 'omoyi', 'omoyigoodluckadie@yahoo.com', '08099418802', '', '32fe8aaabb9d9b9ccc18e2fd9565cc6500cdae55', 'BWewPqLWO', NULL, NULL, 0, 0, '', '197.210.64.90', 1, 0, '', '', '2019-05-23 14:00:46'),
(23, 1, 0, 1, 'ndubuisi', 'okechukwu', 'obejor22@yahoo.com', '08037104679', '', '4d19cc5416e5e9c7df8be3404b11919d88936bba', 'EmAqW2MLi', NULL, NULL, 1, 0, '', '197.210.44.185', 1, 0, '', '', '2019-05-17 12:57:12'),
(16, 1, 0, 1, 'Le', 'Hoang', 'couponsplusdeals.com@gmail.com', '+10962513941', '', 'd039d4520d26c055d4a5ddca7b54828f7705be83', 'pDjlxuLgd', NULL, NULL, 0, 0, '', '14.248.132.160', 1, 0, '', '', '2019-05-16 11:28:35'),
(17, 1, 0, 1, 'BlackVuelzf', 'xwusafmezmgczsiGP', 'nnagpal@aol.com', '87818798995', '', 'd6eb9003adc6c42d169af712a7ab8b3dc4ffcdcf', 'ByLjL1GQc', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-16 15:49:35'),
(18, 1, 0, 1, 'omoyi', 'goodluck', 'goodluckomoyi30@gmail.com', '07066302022', '', '3d0cdefb01ffbe58ca4fcfb52a1d465fb3705433', 'B15iyJDRA', NULL, NULL, 1, 9, '', '154.118.10.7', 1, 0, '', '', '2019-05-17 11:27:36'),
(19, 1, 0, 1, 'Kimberly', 'Oparah', 'kimberlyoparah@gmail.com', '07057412001', '', '905ef19455110240c2adb3e66c7570bb59365378', 'uFfQWDgbJ', NULL, NULL, 0, 8, '', '197.210.45.51', 1, 0, '', '', '2019-05-17 11:36:24'),
(20, 1, 0, 1, 'Vincent', 'Ebenezer', 'evincent919@gmail.com', '080-507-37934', '', '5de5390eedf3d918e7a9e526d6ef8f8e54ae537f', 'vzRDhn6Fn', NULL, NULL, 1, 7, '', '41.217.83.249', 1, 0, '', 'tV2Z1AOhLd3RamOtp1WeB25qkGaOLRa5kW73298u', '2019-05-17 11:38:22'),
(21, 1, 0, 1, 'IFEOLUWA', 'ADEOYE', 'ifeade85@gmail.com', '07030803287', '', 'dd82c28365408e4cb5cc8fa417649180c6c318e5', 'QbvFdLZRn', NULL, NULL, 1, 10, '', '5.79.70.74', 1, 0, '', '', '2019-05-17 11:45:00'),
(22, 1, 0, 1, 'Philip', 'Okolo', 'philipvalentine103@yahoo.com', '08061147847', '', '765c653896967c2dd3b0545bee99b19d7c7ba1c1', 'IQy1za0IY', NULL, NULL, 0, 21, '', '197.210.29.21', 1, 0, '', '', '2019-05-17 11:45:07'),
(24, 1, 0, 1, 'Flashpaqtrx', 'xwusaymeqnacckqGP', 'jessvalo@yahoo.com', '88845134253', '', '64c477382b1e7b8b7be5c30ebf8ff61d0426e99f', 'lpQ0atvqc', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-17 14:16:42'),
(25, 1, 0, 1, 'Universalhcr', 'zvusafmeytercrpGP', 'yoelvilla@gmail.com', '87344391992', '', '47e917b2fa7e70f604dfd37d2a35488c4799da53', 'qQiT5c1WH', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-17 17:56:44'),
(26, 1, 0, 1, 'Fortressfqy', 'xwusafmelmjzz2hGP', 'director@mchost.ru', '87998346289', '', 'bf816aa88b23089061fec5210a00f55b8db3d408', 'loAxfkpic', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-20 18:58:24'),
(27, 1, 0, 1, 'Rigidayp', 'xwusalmeimutxwpGP', 'steve.marston@cdpehs.com', '82945646311', '', '622b2e64df51e63bc93f296fe3b925bd389d41fd', 'vvtryJAZe', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-21 12:39:54'),
(29, 1, 0, 1, 'Bluetoothpxl', 'xvusalmeqtonckzGP', 'blimie.distinctivecreations@gmail.com', '88576169253', '', 'c038da57eef85b2f753c70f0ede6774b995febab', 'G47SjyEav', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-25 06:55:29'),
(30, 1, 0, 1, 'Rigidhmp', 'xzusalmefnurcbnGP', 'nativeofalexandria@gmail.com', '81636321446', '', '0c4c678c3a09e016c3c8dd01ae1b650b6683667b', 'MeC1GXMkO', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-25 09:49:12'),
(31, 1, 0, 1, 'Fingerboardvvh', 'zwusaymemnhcdksGP', 'accounting@associatestaffing.com', '88335673345', '', 'db8d5780c95338f07b0bea0218b8881f884f4659', '2VqOv4niF', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-26 00:57:50'),
(32, 1, 0, 1, 'Yamahafql', 'swusalmentbnxiaGP', 'ted@hylandesign.com', '88475726318', '', '335c2cd74a04a54accb3c050284ce8c09ffe91d9', 'i0G79THAt', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-26 19:51:16'),
(33, 1, 0, 1, 'Beatertci', 'xvusalmecmskxvsGP', 'bill@vdsina.ru', '87136383686', '', '1c6f7d3fa5862a423245632665d5f84928803da1', 'Lq6cWK0DK', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-27 02:48:23'),
(34, 1, 0, 1, 'Leupoldvjk', 'swusalmebmpadlsGP', '222@222.com', '81152312738', '', 'bb6f8afd73a53ee0b40ff535e001123fb26c4bef', 'Sxd2fAPuO', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-27 11:19:44'),
(35, 1, 0, 1, 'benjamin', 'busari', 'benjaminusari@rocketmail.com', '09076342075', '', '2cc16e8430eaa613e9a1aeba3580d0cb45e43531', 'UDHxPIEe4', NULL, NULL, 0, 0, '', '41.58.234.127', 1, 0, '', '', '2019-05-27 12:23:02'),
(36, 1, 0, 1, 'Epiphoneaiw', 'xzusafmesmqwctdGP', 'ferrari_marc@bentley.edu', '83795268711', '', '1b728ed4528222a4a080c72360dfc1f692b17596', 'IHWLxkE0o', NULL, NULL, 0, 0, '', '41.58.109.159', 1, 0, '', '', '2019-05-27 18:17:06'),
(37, 1, 0, 1, 'Irrigationdzo', 'zvusaymeotwjdkqGP', 'crystal@worcott.com', '87315262872', '', '57c700b20e735ca07a2fd2c51f7a46a58f9529ea', 'wlGtCpXqU', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-28 11:02:26'),
(38, 1, 0, 1, 'Mojaverbl', 'svusaymewnzwxjqGP', 'sylviamgross@gmail.com', '88936533957', '', '6770c9586e17fa4e0c3480f95ceecb6ab351a6c5', 'IvhdnLLiO', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-28 16:50:50'),
(39, 1, 0, 1, 'Fortressftd', 'xwusaymemtvkdanGP', 'maureenweiss29@gmail.com', '89524922997', '', '816ac0ba25b5a540e12c6be7ed3315e5cd0a999b', 'XyQsD1FjG', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-28 18:35:22'),
(40, 1, 0, 1, 'Seriesdrp', 'swusafmeutrbzndGP', 'sandra.melo.nc@hotmail.com', '81763135211', '', '8f14bceeed95ea46f606f2f435ede95be0684294', 'SW3dp6PQl', NULL, NULL, 0, 0, '', '23.225.204.130', 1, 0, '', '', '2019-05-29 09:29:55'),
(41, 1, 0, 1, 'Feederaxc', 'zwusaymegtskcjgGP', 'penningsfarm@gmail.com', '85233512221', '', '1fdb797d2d7cf57a8297aef853188b44cf06c9b3', 'mOpnLB5cn', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-29 19:54:22'),
(42, 1, 0, 1, 'Professionalbgi', 'xzusaymejmjvzpjGP', 'seele100@mail.chapman.edu', '86144977141', '', '0193a966ebb616cef4a0f6e979f6aa56fbacf734', 'Wh4JYQx9g', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-29 23:13:03'),
(98, 1, 0, 1, 'Asmau', 'Shuaibu', 'asmauabdulshuaibu@gmail.com', '08037865774', '', '14e359ea5b99319a52fe58974ffc7e833e055f2a', 'qMwUPj1C1', NULL, NULL, 1, 0, '', '105.112.74.14', 1, 0, '', '', '2019-07-21 13:06:03'),
(44, 1, 0, 1, 'Fenderzyy', 'zzusalmextvgchbGP', 'mark@htgus.com', '88956456388', '', '5c040df294a881513201ded52341aed59bd3446e', 'febwoejAm', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-06-01 19:11:27'),
(43, 1, 0, 1, 'Flashpaqjaw', 'zvusaymeytfhxruGP', 'mikey4tlc@gmail.com', '85282155526', '', '294193cb885ecee6819e223e31c7fa9e7d559662', 'LIwIrLAO4', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-05-31 17:33:53'),
(45, 1, 0, 1, 'Feederdke', 'xvusaymejmakcexGP', 'mwascher@thestandardcompanies.com', '81488354433', '', '93db73094360064d74a9b758157f95d3d399ddb9', 'ZiN0ngSFP', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-06-02 10:10:34'),
(46, 1, 0, 1, 'Dillion', 'Megida', 'dillionmegida@gmail.com', '09058961095', '', 'cf6da3a59fbc90a2049955f84f267e39471dfa9b', 'zEEikCOYj', NULL, NULL, 1, 0, '', '41.58.83.59', 1, 0, '', '', '2019-06-03 09:30:26'),
(47, 1, 0, 1, 'Ifeanyi', 'Ifeabunike', 'ici@miratechnologiesng.com', '08183468573', '', '43a20f749423d3605d5a96b51b7f87f4b12fe980', '9ubjYGBXb', NULL, NULL, 1, 0, '', '41.190.31.164', 1, 0, '', '', '2019-06-03 09:34:48'),
(48, 1, 0, 1, 'Bronconyj', 'szusafmertdmczkGP', 'ekellyinpa@gmail.com', '83615265758', '', 'd69d0343fdf46a25b2eeda1e4c2f4e93c93c8b0d', 'gtgmCpgXY', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-06-03 20:28:40'),
(49, 1, 0, 1, 'RainMachinenri', 'xzusalmegtfxzxfGP', 'thidumas@hotmail.com', '89911531964', '', 'b527eeff11394435a095c682f89a1c219de92c13', 'Qv0G0z1Os', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-06-05 00:07:45'),
(51, 1, 0, 1, 'Testeredx', 'swusalmemnoxxbuGP', 'mcabrera5256@westbronxacademy.org', '82934447656', '', '3c956fbb3623aad2940c0f4dadf526010458b3aa', 'bQf7ZBfTO', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-06-06 23:40:16'),
(52, 1, 0, 1, 'Telecasterwuq', 'zvusaymecmtcdocGP', 'flyzphi@gmail.com', '84954786359', '', 'a9825f8d5fd70329fb775be64bdeb8a2f6ff340a', 'e01dBv2Vx', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-06-07 13:06:36'),
(118, 1, 0, 1, 'MSNYCUlceM', 'MSNYCUlceMTW', 'mikeolewooth@maidservicenyc.pro', '87546256278', '', '4c90e0a85bea6a6f48e7c94a860d0e6ad352fb33', 'UnemNolJ9', NULL, NULL, 0, 0, '', '95.128.163.99', 1, 0, '', '', '2019-08-01 13:01:46'),
(53, 1, 0, 1, 'Humminbirdiwl', 'zvusaymednpkxmrGP', 'jessoliver2001@yahoo.com', '85919316731', '', '2463cb7423727d2f4de2ddde66e6cd9097a426a9', 'Zj3Pfbl5f', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-06-07 19:25:57'),
(54, 1, 0, 1, 'Carpetrrl', 'swusalmewnlgdqhGP', 'nachixomi@yahoo.com', '86696898876', '', '40e4f06844626d0ae57917e9245873f6e2a9062d', 'SRXDeOyMZ', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-06-08 02:08:41'),
(55, 1, 0, 1, 'Visionlzg', 'svusalmepmojzecGP', 'sally.m.lunetta@gmail.com', '83347816556', '', 'eedb99b6ea13e21dc905776768d3c42fa2387ff0', 'fhISW1fTo', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-06-09 16:25:12'),
(56, 1, 0, 1, 'Humminbirdgyi', 'zvusaymesmobcjbGP', 'deantesshelling@yahoo.com', '89998335882', '', '7920394d899d53a6390cdfa8c26ace7183f74098', 'xUJmRS415', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-06-10 14:59:19'),
(57, 1, 0, 1, 'Vincent ', 'Ebenezer', 'evincent919@yahoo.com', '08050737934', '', '54c1be94cfa1753692019b1bd6811e88fcc86fbe', 'MObUyqV4b', NULL, NULL, 1, 14, '', '197.210.28.19', 1, 0, '', '', '2019-06-11 16:47:03'),
(60, 1, 0, 1, 'Vitamixmez', 'swusafmeomjbcpuGP', 'fullfimoting@mail.com', '83896441658', '', '77b60aa0aa39910f63873f00c8d8db2b81895740', 'kFnfHy0lu', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-06-12 11:39:40'),
(68, 1, 0, 1, 'Kizito', 'Agwubuo', 'kizito.agwubuo@ubagroup.com', '07034145049', '', 'bcdf8f7cd5bee2847cb7ba0c9e9c77aeb931a6cf', 'G3Uxr8dbr', NULL, NULL, 0, 61, '', '196.216.146.252', 1, 0, '', '', '2019-06-20 09:47:53'),
(58, 1, 0, 1, 'Haywardcvu', 'zzusalmenthxzbxGP', 'chelseephalen@gmail.com', '83883941234', '', '8efd62bee0a449f7438ca9f2a9296c4853c400c0', 'V96UuKmmr', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-06-11 23:51:46'),
(59, 1, 0, 1, 'Mojavervh', 'swusaymebncrcxuGP', 'beltonbernadette@hotmail.com', '85273148272', '', 'fe97ed41ffd903c2428d32999433c50fcc191b0d', 'sbmAInf9s', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-06-12 07:21:22'),
(61, 1, 0, 1, 'omoyi', 'goodluck', 'goodluck123@gmail.com', '07066302022', '', '66853984f0ec18a34121cfd42b9e37bb3b9ef2c6', 'vaqMmTjOC', NULL, NULL, 0, 18, '', '197.210.8.251', 1, 0, '', '', '2019-06-13 10:17:09'),
(62, 1, 0, 1, 'Kimberly', 'Oparah', 'oparah_kimberly@yahoo.com', '+2347057412001', '', '67d6f588f69f02fa1e09e72b580f0341eb2d5a5d', 'ApBqZozn4', NULL, NULL, 0, 22, '', '197.210.8.251', 1, 0, '', '', '2019-06-13 10:47:13'),
(63, 1, 0, 1, 'Vincent ', 'Ebenezer', 'info@objor.com', '08050737934', '', 'f367d402b2c26177901df6ea5340bbda47a4d44a', 'fpwJ3ySNT', NULL, NULL, 1, 23, '', '197.210.8.251', 1, 0, '', '', '2019-06-13 10:47:57'),
(64, 1, 0, 1, 'wale ', 'tunde', 'waletunde4@gmail.com', '07066302022', '', '8d47c8c2f206c4d677854a8516295ee59ea60074', 'mDqeDUMQ5', NULL, NULL, 0, 39, '', '197.210.8.251', 1, 0, '', '', '2019-06-13 11:31:50'),
(65, 1, 0, 1, 'chidubem', 'onyekaonwu', 'desmondwick39@gmail.com', '+237670716586', '', '239539e84b28ef2c4de624cbf75af892b96321df', 'tvDpZURBB', NULL, NULL, 0, 53, '', '129.0.76.65', 1, 0, '', '', '2019-06-17 13:12:21'),
(66, 1, 0, 1, 'Vincent ', 'Ebenezer', 'evincent919@email.com', '08050737934', '', '39b1a45cdd1d74d7cbfe916fbed08243dd049b64', '1AkGuJDK3', NULL, NULL, 1, 54, '', '197.210.60.226', 1, 0, '', '', '2019-06-18 12:44:25'),
(67, 1, 0, 1, 'felix', 'anthony', 'felixanthony@gmail.com', '07066302022', '', '244e9fabdd839b8d2cbc750bc16c806d52261756', 'EdZDJb5mr', NULL, NULL, 1, 55, '', '197.210.60.226', 1, 0, '', '', '2019-06-18 12:48:55'),
(69, 1, 0, 1, 'Richard', 'Joshua', 'richardjosh073@gmail.com', '09076342075', '', '4a62f5dd4747a6337a6d8701151f9df29009ecb2', '0HwdbgN0H', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-06-20 12:07:01'),
(70, 1, 0, 1, 'Vincent ', 'Ebenezer', 'evincent919@hotmail.com', '08050737934', '', '3e4980f578b65cac34004894f0ba0b5dabb502e7', 'p3WNvgtPz', NULL, NULL, 1, 63, '', '197.210.8.56', 1, 0, '', '', '2019-06-24 09:32:26'),
(71, 1, 0, 1, 'Christopher', 'Adimachukwu', 'adimacgroup@gmail.com', '08065219756', '', '2a1dee92cb6507fa65b5e9e05bc4dcb54fa588d2', 'dvbtqNmPv', NULL, NULL, 0, 0, '', '105.112.96.69', 1, 0, '', '', '2019-06-25 21:56:53'),
(72, 1, 0, 1, 'Janefrances', 'Adimachukwu ', 'Jadimachukwu@gmail.com', '08078675554', '', '9dab904aebb42641b1a56c7afab9b759dbf7ec60', '1wmncQ0qY', NULL, NULL, 0, 0, '', '41.203.78.234', 1, 0, '', '', '2019-06-26 06:34:19'),
(73, 1, 0, 1, 'Chukwuemerie ', 'Uduchukwu ', 'emexco4unity@gmail.com', '07038404557', '', '5a220b2fbf041cca80b3646dffab6a8d6a4838b1', 'mlz8wmAxw', NULL, NULL, 0, 64, '', '105.112.96.169', 1, 0, '', 'VXinwOHagweAM6el6xDs6GvED4aiI5qttqJE70Wr', '2019-06-26 16:32:49'),
(74, 1, 0, 1, 'Tosin ', 'Oges ', 'tosint79@gmail.com', '07059562070', '', 'a587562032c688978f08b5646648ff06deaf4658', '81WyNYwbz', NULL, NULL, 0, 0, '', '197.210.28.32', 1, 0, '', '', '2019-07-02 15:16:08'),
(75, 1, 0, 1, 'Adebayo', 'Niyi', 'abayo2281@gmail.com', '08021080403', '', '6f7715a121aab07d83d979c31b3313ea818dd6a2', '4J4YHtvcp', NULL, NULL, 0, 0, '', '41.203.73.36', 1, 0, '', '', '2019-07-03 12:35:03'),
(76, 1, 0, 1, 'Zodiacndo', 'swusafmeunhjc3eGP', 'retabattlink@gmail.com', '86487235171', '', 'e44175ae5c9ffa88b3de929aa8a668ad2b5ea807', 'zfPcOVZf3', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-07-04 03:05:18'),
(78, 1, 0, 1, 'O.innocent ', 'Tobias ', 'onyimarome@gmail.com', '08030878473', '', 'e36d58238003232ecab159257d784b7278e030ac', 'P6aiZM22v', NULL, NULL, 1, 67, '', '105.112.96.85', 1, 0, '', '', '2019-07-05 21:33:40'),
(77, 1, 0, 1, 'Fingerboardidh', 'svusafmeimtachwGP', 'platifanan@hotmail.com', '88183766267', '', '9b97977cc1f544e76fbf61836443e972a82f9544', 'Mmdem1b4r', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-07-05 03:17:32'),
(79, 1, 0, 1, 'Airbladecti', 'xwusafme3mbgdjjGP', 'pbunch33@sbcglobal.net', '89275898783', '', 'f8723b7a14b351efa1d9822f6770108bd4d01372', '0RrE3sKVm', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-07-06 14:47:17'),
(80, 1, 0, 1, 'KitchenAidxyv', 'xwusaymemnxuzmvGP', 'gumpcirocon@mail.com', '82475842735', '', '11e791d8c410fbfa1f6ff90053b2669c36bcccfd', 'c52Fy7Kzn', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-07-06 22:47:40'),
(81, 1, 0, 1, 'Furrionccm', 'xwusayme3maxzjpGP', 'staug79@yahoo.com', '85969168531', '', '5a4873c423952ff536f839b70cdf914d5ae1e3ac', 'uCUgqLCK5', NULL, NULL, 0, 0, '', '46.23.204.195', 1, 0, '', '', '2019-07-08 18:29:33'),
(82, 1, 0, 1, 'Dysonckf', 'svusaymeqmkvcvnGP', 'renov8hotels@cox.net', '88381914344', '', 'bcf3d3f9a5ba074ba8ca63563f881bcbdbc33ff4', 'QdGnaoUIN', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-07-09 06:52:19'),
(83, 1, 0, 1, 'Osi', 'Chukwudi', 'osichukwudi@yahoo.com', '08064683286', '', 'f01f796bf922ad3c0227ba28dfc1e07d91989143', 'uvi9DyWx5', NULL, NULL, 0, 0, '', '197.210.64.0', 1, 0, '', '', '2019-07-09 18:30:52'),
(84, 1, 0, 1, 'Omolara', 'Ilara', 'janetcroft2003@yahoo.com', '08034957210', '', '8d3fc3a0efd3f3724198cb029d290e0a7e34e0e6', 'evud52kw7', NULL, NULL, 1, 0, '', '41.203.77.146', 1, 0, '', '', '2019-07-10 18:25:15'),
(85, 1, 0, 1, 'Paul', 'Ogunlana', 'dapoogunlana@gmail.com', '07036539719', '', '71c4cd2bc9d7983e4dd99c56ee76bc1fb040bdc9', '6GMgMucy0', NULL, NULL, 1, 68, '', '5.79.70.74', 1, 0, '', '', '2019-07-10 19:06:11'),
(87, 1, 0, 1, 'Chinonso', 'Chukwu', 'jameschinonso@gmail.com', '+2348138255468', '', '4b22f7978f80b97d6f697aab5f7d11e9e82e66c6', 'yrZVQ2q2b', NULL, NULL, 1, 69, '', '105.112.57.130', 1, 0, '', '', '2019-07-12 06:50:56'),
(86, 1, 0, 1, 'Bronconyp', 'zwusaymetmsazwjGP', 'clayton.hough@gmail.com', '87821412957', '', 'fc7b5558d37c6791440611f18b5220ef20b6bdb9', 'xqLr1pGKE', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-07-10 20:04:55'),
(153, 1, 0, 1, 'MdqQopaHino', 'MdqQopaHinoAE', 'shepovalov111222@mail.ru', '89668315625', '', 'df7f63bd5dd6677d189a83a51d6055aab9cee488', '1PmAcmBI8', NULL, NULL, 0, 0, '', '176.110.134.2', 1, 0, '', '', '2019-09-08 00:52:45'),
(88, 1, 0, 1, 'Nzubechi', 'Ohaekwe', 'zubixzest2020@gmail.com', '08130475826', '', '1ef7ea3b1692d9c46f174f8567c1816160cf24bf', 'BRIHHNYHB', NULL, NULL, 0, 0, '', '197.210.45.214', 1, 0, '', '', '2019-07-12 12:06:24'),
(89, 1, 0, 1, 'Smiles', 'Cketua', 'stylishendless@gmail.com', '0906 405 4791', '', 'cd963840f0d4bfca360082d32339b3c27c4beb20', 'M5fSazSbR', NULL, NULL, 0, 70, '', '197.210.57.248', 1, 0, '', '', '2019-07-13 06:24:57'),
(90, 1, 0, 1, 'Etim', 'Paul', 'owojela@yahoo.com', '09090197354', '', '1715b6d0198eafc3b1a66d513ba2c7fcee3b2735', 'RC08ds04I', NULL, NULL, 1, 72, '', '41.190.30.225', 1, 0, '', '', '2019-07-15 07:40:29'),
(91, 1, 0, 1, 'Humminbirdinl', 'zvusaymewnardhuGP', 'heather.l.babcock@gmail.com', '86883178445', '', '7a92fa3ff41d3ae4af1ac9ccb3853253a416599d', 'gZp9TdlqE', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-07-15 15:47:23'),
(92, 1, 0, 1, 'Samuel', 'Tony', 'samueltony788@gmail.com', '09026086788', '', '72b10fe61161c5b4ca9b9e69a68c854ab740995c', 'PW6AQkqWQ', NULL, NULL, 1, 0, '', '41.203.78.37', 1, 0, '', '', '2019-07-16 14:11:14'),
(93, 1, 0, 1, 'Mbaebie', 'Joseph', 'ugochukwu.joseph66@gmail.com', '07060557137', '', 'f04442331437d9fba8a448e8f87b1ea4a37f83ef', '9e7uORj5W', NULL, NULL, 0, 71, '', '105.112.106.8', 1, 0, '', '', '2019-07-17 09:43:08'),
(94, 1, 0, 1, 'Squieroin', 'swusafmejmcidonGP', 'yoni6440@gmail.com', '89666838476', '', '279e791f5707846da0b671c59279d2dfb29c5420', 'u1Nyr9chW', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-07-17 14:14:33'),
(100, 1, 0, 1, 'NDUBUISI', 'OKECHUKWU', 'Aircelbusiness@gmail.com', '08092221957', '', '5b76658c2411ebffa7430d030cfe37b12e2f7023', 'z3hQNlB0C', NULL, NULL, 0, 76, '', '197.210.65.105', 1, 0, '', '', '2019-07-28 22:23:08'),
(95, 1, 0, 1, 'Benjamin', 'Busari', 'benjaminbusari@gmail.com', '09076342075', '', '503e42f795dee782fce9f281bec0ed700ba17e16', 'mj6JkNFCQ', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-07-18 15:38:03'),
(96, 1, 0, 1, 'Alex', 'Jordan', 'alexjorsan40429@gmail.com', '08026799790', '', '59c733aa1f8c9f5256cc5610ebdbb1602f6c2847', 'XLWx8TIlo', NULL, NULL, 0, 0, '', '105.112.26.152', 1, 0, '', '', '2019-07-19 15:57:40'),
(97, 1, 0, 1, 'Alex', 'Jordan', 'alexjordan40429@gmail.com', '08026799790', '', '709ef1f786bdd3b5f26c85905c818f781b7f3909', 'rbU9gfPp5', NULL, NULL, 0, 0, '', '41.203.78.60', 1, 0, '', '', '2019-07-19 16:01:54'),
(99, 1, 0, 1, 'IFEOLUWA', 'ADEOYE', 'adeoyeifeoluwa02@gmail.com', '07030803287', '', '9c0dcd87752b9e56111b7c0febf2f06552cfb1cd', 'mbAVVTvJd', NULL, NULL, 1, 0, '', '197.210.44.201', 1, 0, '', '', '2019-07-22 14:57:57'),
(120, 1, 0, 1, 'Portablesdx', 'xwusalmebmeocbrGP', 'jaredmetzger@yahoo.com', '86914512952', '', 'ab1caf77f18adb7f8b78789f9120a207f4207bde', 'huGDlv9Rc', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-08-05 14:06:22'),
(119, 1, 0, 1, 'EROInfaria', 'EROInfariaII', 'emaly@manhattan-massage.com', '85739912913', '', 'b2ba510e46abee838dfa4a3d836cff8d0008ddad', 'iD8PkxH3h', NULL, NULL, 0, 0, '', '95.128.163.99', 1, 0, '', '', '2019-08-02 08:29:00'),
(117, 1, 0, 1, 'Ife', 'Ifeabunike', 'haboglobalsanitary@gmail.com', '0902', '', '4fb8a38ddae7937b403a8fefca9cc8c29edc15b5', '03zjbEW5u', NULL, NULL, 0, 0, '', '41.190.2.252', 1, 0, '', '', '2019-07-31 18:33:50'),
(104, 1, 0, 1, 'Chidi', 'Kene', 'chdifeabunike177@gmail.com', '080', '', '41115bdbe881bece7f9a9dc552f0cddac40f8a2e', 'gWu6XVi7M', NULL, NULL, 0, 0, '', '41.58.104.226', 1, 0, '', '', '2019-07-29 13:21:03'),
(105, 1, 0, 1, 'Chibueze', 'Okoye', 'lovevikky4christ@yahoo.com', '090', '', '98feecac1872c8a19693a34db99061a176473463', 'zGATcSe9C', NULL, NULL, 0, 0, '', '41.58.104.226', 1, 0, '', '', '2019-07-29 13:33:45'),
(166, 1, 0, 1, 'PRINCE', 'OJO', 'ojoolamilekan161@yahoo.com', '07064376782', '', '00e563a134c3db6e30d55c9fabd48f252085ee13', 's6hFP2B4U', NULL, NULL, 0, 97, '', '41.190.30.39', 1, 0, '', '', '2019-09-26 11:42:24'),
(107, 1, 0, 1, 'CHUKWUMA', 'NWABUIKWU', 'chuks321@gmail.com', '08032006608', '', 'ff9019c241eabd8e898c492eb9397f9464db00c8', 'Lo05aRn5q', NULL, NULL, 0, 78, '', '197.210.3.59', 1, 0, '', '', '2019-07-31 08:42:31'),
(108, 1, 0, 1, 'Mike', 'Ifeabunike', 'haboglobalenergy@gmail.com', '080', '', '5a37dbd0fb014967f1624c9470add176a2ee7e9c', 'xXSoZGO0k', NULL, NULL, 0, 0, '', '41.203.78.141', 1, 0, '', '', '2019-07-31 14:44:01'),
(109, 1, 0, 1, 'Mira', 'Ifeabunike', 'miratechsoftware@gmail.com', '080', '', '1cd3f0a2117c0613f7106c28c5c0d448e0825735', 'XBTcwfUAa', NULL, NULL, 0, 0, '', '41.203.78.141', 1, 0, '', 'EnFjT4YUmt7QY4mYzROei2X7lgwcLc4ikpdSqEKi', '2019-07-31 14:47:49'),
(121, 1, 0, 1, 'Zodiacewu', 'zvusaymegtoxcxkGP', 'maureen_sheridan@hotmail.com', '85168961758', '', '654b879c2dfacd65f4f277e3990fe429752b206c', 'dBkxi1TWT', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-08-05 22:32:35'),
(122, 1, 0, 1, 'Pouringcck', 'swusaymedtvlxdrGP', 'nomacampbell@hotmail.com', '84842979292', '', 'ec43c78593701cd0fd13089175ab6af76c12e359', 'khcyAnXcb', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-08-06 13:08:07'),
(123, 1, 0, 1, 'ztdgolovko', 'tiltazesB', 'truxanov1985@ukr.net', '88142291782', '', 'ea6e5b485efc3a0310ae2917c1d93de4225432b0', 'Mlwvkdmdv', NULL, NULL, 0, 0, '', '176.36.21.189', 1, 0, '', '', '2019-08-06 18:59:11'),
(124, 1, 0, 1, 'Marshalleys', 'zzusalmehtpscruGP', 'timprouty@comcast.net', '84297693221', '', '138453de0b1413ddab8725ac798a7859ac0ac10d', 'ra6qoMN26', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-08-07 08:34:27'),
(125, 1, 0, 1, 'Sightwad', 'zzusaymemtwucoaGP', 'premar603@aol.com', '85698789896', '', 'ccf97925ca2ce691e8982487e10e0ce33ed71bdf', 'ZxiAVaWL0', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-08-08 08:02:19'),
(126, 1, 0, 1, 'Fingerboardjfb', 'zwusafmeomdkccmGP', 'jrutkofske@hotmail.com', '84521923118', '', 'cc67e949685c67a23ec1d7d8041071e6ddc34176', 'UwYL34L4P', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-08-08 22:16:39'),
(127, 1, 0, 1, 'Adelani ', 'Soares ', 'Eugenesoares@outlook.com', '08103171240', '', '8e90233184b412b5df26cadf4925d9de4b663fd8', 'a1gvjRp1g', NULL, NULL, 1, 79, '', '197.210.8.152', 1, 0, '', '', '2019-08-09 02:02:07'),
(128, 1, 0, 1, 'ICI', 'Ifeabunike', 'miratechnologiesng@gmail.com', '08183468573', '', 'd330b48663ce9be46f4ceba4e884d412e64719fa', 'mkOrJrSRY', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', 'Mz05qJy8nwuOt90rObCirv3VY9tYKKkaiTDrFzyA', '2019-08-10 22:53:30'),
(129, 1, 0, 1, 'Sanderifu', 'svusafmebtvczylGP', 'lanwoi@comcast.net', '88237822687', '', 'cc61212a64405b8b999dd7bee44631817a6fd37e', 'UT7G0CmHo', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-08-13 20:28:26'),
(130, 1, 0, 1, 'Artisanozi', 'zwusafmeptluxgoGP', 'asbest@x-store.net', '88229462243', '', '730a2b4e937d683438870bd9868c8fae70685060', 'TiWbHBEGc', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-08-14 00:23:30'),
(131, 1, 0, 1, 'Premiumohl', 'xwusafmejtauxtaGP', 'biliverna@gmail.com', '87346353999', '', '5eea8e9c4081b445666bb03c6e448299a903f72b', '0W4vuHDxN', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-08-14 06:54:19'),
(132, 1, 0, 1, 'Okafor', 'Jude-Martins', 'Javijuujuu@gmail.com', '08166853581', '', '12676b989a17d430ea9d005c3399487d5d9fcbfe', 'i0R3QHz1B', NULL, NULL, 0, 85, '', '105.112.33.197', 1, 0, '', '', '2019-08-14 15:35:02'),
(133, 1, 0, 1, 'Fortressdbw', 'zzusaymesmsicgzGP', 'traynmike@juno.com', '87385565427', '', '9e1cc3fbea472da696cee6bf6e9ae0343a979aab', 'Y4awowhQv', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-08-14 18:19:56'),
(134, 1, 0, 1, 'Emeka', 'Samuel', 'emekas249@gmail.com', '08067917722', '', 'a8caacb2ba3c9fb537c824cc8acdb1afc4705be0', 'qbQ0poZYN', NULL, NULL, 0, 86, '', '197.210.227.135', 1, 0, '', '', '2019-08-15 16:20:47'),
(135, 1, 0, 1, 'odededle', 'johnson', 'b4jj2001a@yahoo.com', '08034255769', '', 'f0b3fcdf5a5f7db5f8d0f7e5696eae8518438923', 'Ntc20kZQW', NULL, NULL, 0, 87, '', '105.112.28.181', 1, 0, '', '', '2019-08-15 17:53:07'),
(136, 1, 0, 1, 'Jessica', 'Amaka', 'jessicaamaka993@gmail.com', '08064954900', '', '8ac0aa9514c43a5f173130f994b245ba598d4fb6', 'RTFqiLBxs', NULL, NULL, 1, 88, '', '197.210.54.114', 1, 0, '', '', '2019-08-15 18:03:30'),
(137, 1, 0, 1, 'Danbala', 'Galadima', 'galadimadanbala1.7e693aa@m.evernote.com', '08065201176', '', '5e4666c903ac394a324b57c400ab4bd9f9c78219', 'kPb7xU3Ku', NULL, NULL, 1, 0, '', '5.79.70.74', 1, 0, '', '', '2019-08-16 00:52:03'),
(138, 1, 0, 1, 'Rubbernpq', 'xwusaymeqmtbxvwGP', 'valgvihalfthroug@mail.com', '88818294346', '', '74f7e104b20b876569b9f28dc27590b2a2f68ec8', 'ezJdxlKaf', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-08-16 04:21:36'),
(139, 1, 0, 1, 'TOLULOPE', 'Animashaun', 'animahaun_tolulope@yahoo.com', '07086460404', '', '791aaebe0731644abf7274a9086e1a6b6eccb6bd', '0RXnJgDEV', NULL, NULL, 0, 0, '', '197.210.44.98', 1, 0, '', '', '2019-08-16 10:27:04'),
(140, 1, 0, 1, 'Kingsley', 'Atasie', 'kingsleyatasie2@gmail.com', '08162538707', '', 'bd8ef853e5d44c286e39930ae76aa61d005b9597', '1XCrmh0Mm', NULL, NULL, 0, 90, '', '197.210.58.172', 1, 0, '', '', '2019-08-16 13:42:24'),
(141, 1, 0, 1, 'whales osh', 'osh', 'olawale.oshiyemi@gmail.com', '08062291200', '', 'c7cf27d8d50973d93a53063699557e1c2222d80a', 'vjgQAgDZU', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-08-17 16:18:33'),
(142, 1, 0, 1, 'orermaGal', 'orermaGal', 'madison@renovation-manhattan.com', '85258958224', '', '4790039faf123bce591a79e7bc494c3d91d32e36', 'eQeZEoMo9', NULL, NULL, 0, 0, '', '5.35.19.197', 1, 0, '', '', '2019-08-18 06:02:33'),
(143, 1, 0, 1, 'KAGRARIETUT', 'KAGRARIETUT', 'elizabeth@nosystem.info', '83739856138', '', 'b067ab713c1887fc86c15449c86e6461930ea825', 'kX54gUQz1', NULL, NULL, 0, 0, '', '5.35.19.197', 1, 0, '', '', '2019-08-19 06:47:37'),
(144, 1, 0, 1, 'JoshuaSoags', 'JoshuaSoagsPZ', 'denisbelyaev1995313b5hd@rambler.ru', '85123736524', '', '03e7fce448a219cf9d685be60735bd6a99466b2d', 'k5Ud3KoLH', NULL, NULL, 0, 0, '', '134.249.178.23', 1, 0, '', '', '2019-08-19 10:27:24'),
(145, 1, 0, 1, 'Mohammed', 'A.A.', 'okwobu88@gmail.com', '08023957957', '', 'da93215ea751599e1f57e5f3f01505754e174c5f', 'nGJpBfPT7', NULL, NULL, 1, 0, '', '105.112.121.34', 1, 0, '', '', '2019-08-23 11:32:17'),
(146, 1, 0, 1, 'Mauton', 'Sejoro', 'csejoro@gmail.com', '08168582295', '', '0349fb1d6a4e9d72fc05ecd7b181ff75f15b3164', 'VJaGVJGar', NULL, NULL, 1, 91, '', '154.117.121.123', 1, 0, '', '', '2019-08-23 18:52:22'),
(147, 1, 0, 1, 'KasSehaHino', 'KasSehaHinoRC', 'ndui2019@mail.ru', '82742635271', '', '0f6ab7ead6ea95cce6064aa2dd5a7107eea09641', 'MczFCP6qa', NULL, NULL, 0, 0, '', '176.110.134.2', 1, 0, '', '', '2019-08-25 21:06:04'),
(148, 1, 0, 1, 'Johnmark ', 'Nnamdi', 'johnmarknnamdi13@gmail.com', '08113727289', '', '7e3b15841559a7a2d5c2ce3d2a4365eb6e1d83a3', 'eeWfLrnEz', NULL, NULL, 0, 92, '', '41.190.12.65', 1, 0, '', '', '2019-08-28 07:33:24'),
(149, 1, 0, 1, 'Dapo', 'Ogunlana', 'dapoogunlana@outlook.com', '7036539719', '', 'e87c5d673fb0cdf6bdad491015f9e7253b9a00d5', 'r70p0aqlQ', NULL, NULL, 0, 93, '', '105.112.75.184', 1, 0, '', '', '2019-08-29 21:29:00'),
(150, 1, 0, 1, 'EKENEDIRICHUKWU', 'NDUBUISI', 'OBEJOREKENE@GMAIL.COM', '08039393659', '', '0d5044d37ae8c4f29a3cd8c81e98f2e2ecead1a1', 'Io0YbQGUi', NULL, NULL, 0, 0, '', '197.210.45.21', 1, 0, '', '', '2019-09-02 16:33:51'),
(151, 1, 0, 1, 'Tolulope', 'Anisty', 'animashaun_tolulope@yahoo.com', '08161264080', '', '0ed5a3273fb6ed30f3237d8821423dda00c0b768', 'BP9kCr6Ia', NULL, NULL, 0, 167, '', '5.79.70.74', 1, 0, '', '', '2019-09-05 14:43:56'),
(152, 1, 0, 1, 'Tolulope', 'Animashaun', 'animashuntolulop@gmail.com', '07086460404', '', '8f718ce4ac69a2a3723ebdc2e208f0233f5abfe0', '3SkZFqyqv', NULL, NULL, 0, 94, '', '5.79.70.74', 1, 0, '', '75IpfmTnd8EMqFEeyH420TJUzZCxioMLVxMt91Z5', '2019-09-06 14:23:34'),
(154, 1, 0, 1, 'MalasbBaHino', 'MalasbBaHinoDV', 'andrey.musayev321@mail.ru', '89232258378', '', 'bf7e902989531d1ebb61db2046cc13eb7798d4a9', 'itkr615AS', NULL, NULL, 0, 0, '', '176.110.134.2', 1, 0, '', '', '2019-09-09 01:52:50'),
(155, 1, 0, 1, 'infememus', 'infememusGC', 'tasepiner@gmail.com', '82348149911', '', 'd4a3b0bf8e4c09b28de49da80aa6490f18be9232', 'jN7Ac3zy4', NULL, NULL, 0, 0, '', '161.129.65.113', 1, 0, '', '', '2019-09-09 16:21:18'),
(156, 1, 0, 1, 'KdfIioqlHino', 'KdfIioqlHinoNE', 'neket94r@mail.ru', '87944242244', '', 'cb329ae95a0e02df24280fb3498dc000f02f4c1d', 'Qzg48UspM', NULL, NULL, 1, 0, '', '176.110.134.2', 1, 0, '', '', '2019-09-09 22:27:06'),
(157, 1, 0, 1, 'LabBinalHino', 'LabBinalHinoBC', 'zhil19871@mail.ru', '82268747278', '', '046e4725d2525f26fbd1b2f0697c847d79335a5e', 'VLSpB6UP7', NULL, NULL, 0, 0, '', '176.110.134.2', 1, 0, '', '', '2019-09-11 01:31:46'),
(163, 1, 0, 1, 'Olajire', 'Dominic', 'lerryjay45@gmail.com', '08182886545', '', '8e988c0d93991ddd9f178c68abe581c750cea569', '8crYD6MGg', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-09-12 13:23:26'),
(164, 1, 0, 1, 'FASFASF', 'AFASFDFDS', 'ihli0gf@gmail.com', '4365563', '', '81639ec5bc6696dcf811a032b23fac7eb4489d3b', 'Q3ePm3dE0', NULL, NULL, 1, 0, '', '5.79.70.74', 1, 0, '', '', '2019-09-13 13:01:43'),
(179, 1, 0, 1, 'qunosores', 'Bourbonnais', 'quno1990@mail.ru', '81863482287', '', '349dda261a75dd12f83b17b477d8ceaf80e27c8b', '7KmM1O6K5', NULL, NULL, 0, 0, '', '109.126.206.232', 1, 0, '', '', '2019-10-14 11:15:54'),
(167, 1, 0, 1, 'Okoro', 'Friday', 'Obabajah@gmail.com', '08134000285', '', '1a40b50f3ca4b0a847852227e9747a115567a356', 'uS1HEpCvO', NULL, NULL, 0, 99, '', '41.203.73.182', 1, 0, '', '', '2019-09-27 09:40:23'),
(168, 1, 0, 1, 'Akowe', 'Shedrach', 'Shedymails@gmail.com', '07068837104', '', '72eafc86d91e62e1f9c8468c9b58d6e9b5a3491e', 'LgX7Lz9as', NULL, NULL, 0, 0, '', '41.203.73.177', 1, 0, '', '', '2019-09-27 15:35:05'),
(169, 1, 0, 1, 'Mickey', 'Keen', 'michealadebayo921@gmail.com', '08117115923', '', 'c92b733e029b340a9658bb7d02cca733e626b2a8', 'lKju7OzIG', NULL, NULL, 0, 100, '', '129.205.112.128', 1, 0, '', '', '2019-09-28 12:31:09'),
(170, 1, 0, 1, 'Ajibola', 'Quadri', 'haijibola225@gmail.com', '  07068347915', '', '5c1afcb98fcee9ee3b095c6534863b0254444c2f', 'OzrkdrglQ', NULL, NULL, 0, 101, '', '197.210.226.215', 1, 0, '', '', '2019-09-28 21:15:15'),
(171, 1, 0, 1, 'NsaQJjlGata', 'NsaQJjlGataFW', 'ivanbunin677@mail.ru', '86713857245', '', '85d36a5a4722d0517e0add83c6cdffb363bfeab9', 'ltvNTmXEJ', NULL, NULL, 0, 0, '', '176.110.134.2', 1, 0, '', '', '2019-09-30 13:40:06'),
(172, 1, 0, 1, 'Don ', 'Michael', 'dedon@hotmail.co.uk', '+2348030668143', '', '12dee6f512c27e54e0507e0c1875a8747284040b', '3hgQbZl3Y', NULL, NULL, 0, 0, '', '197.210.46.17', 1, 0, '', '', '2019-09-30 19:24:24'),
(173, 1, 0, 1, 'Premiumfow', 'svusalmetnhcchjGP', 'nichdesettco@mail.com', '81256512128', '', '3e82618045c291eee6f7979c16efca2706b36cd6', 'K5DHHcs0r', NULL, NULL, 0, 0, '', '188.138.188.34', 1, 0, '', '', '2019-10-01 03:55:06'),
(174, 1, 0, 1, 'Alban', 'Gnahoua', 'Agnahoua7@gmail.com', '0783194010', '', '794527b5a2bb07fdcdad781ba6cee9ce93b33500', 'S6tTYk2h4', NULL, NULL, 0, 105, '', '91.164.112.182', 1, 0, '', '', '2019-10-02 19:44:37'),
(175, 1, 0, 1, 'Dave', 'Nonso', 'Nonsodave4@gmail.com', '09033012438', '', '780428bfefdb929c056df7e2ecef9f0f6a8f4041', '1CHrAgA2u', NULL, NULL, 0, 106, '', '41.203.78.161', 1, 0, '', '', '2019-10-03 02:27:46'),
(176, 1, 0, 1, 'Bama', 'Bama', 'Bamalanceworld@yahoo.com', '07064450703', '', 'abafdff4b1b589736213a60d2544bc2058151b14', 'rfd38nNbJ', NULL, NULL, 1, 107, '', '197.210.8.113', 1, 0, '', '', '2019-10-05 17:34:32'),
(177, 1, 0, 1, 'Emeka', 'Nnoli', 'emmykings20005@gmail.com', '08034354859', '', '7e77e024b22064b43318718adab66c4022b02027', '2reH6tWny', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-10-05 20:32:02'),
(178, 1, 0, 1, 'Kosisochukwu ', 'Igwe', 'Kosisochukwuigwe72@gmail.com', '09060485167', '', '16f1b25b8570ce706f0e91a72d0508326a67e67c', '8ssemch4B', NULL, NULL, 0, 108, '', '197.210.29.62', 1, 0, '', '', '2019-10-09 00:49:26'),
(180, 1, 0, 1, 'Ifeanyi', 'ICI', 'greatestgreatemeka@gmail.com', '08183468573', '', '4e3e337f74c6f14f1036c7277234199d9be62879', 'p7PfXQztQ', NULL, NULL, 0, 0, '', '197.210.8.119', 1, 0, '', '', '2019-11-05 15:28:22'),
(185, 1, 0, 1, 'Chi', 'Chi', 'k@gmail.com', '09083206129', '', 'd9f15356d50432d047ef670ad109f91c5ef82a09', 'IDDzerLBp', NULL, NULL, 0, 0, '', '105.112.11.5', 1, 0, '', '', '2019-11-14 14:28:32'),
(237, 1, 0, 1, 'Usman', 'Kabir', 'usmankabir36730@gmail.com', '07036347400', '', '5e840aea69a6112afc9b9d5eda574d285db76b2c', 'AbFBLmu2a', NULL, NULL, 0, 164, '', '197.210.28.209', 1, 0, '', '', '2019-12-09 17:43:27'),
(181, 1, 0, 1, 'Ibe', 'Olivia Chiamak', 'dssenation@gmail.com', '08145754826', '', 'b63a18ed73c90bb41a008b1273f9ffd0527de6d9', 'VT1UzVLmM', NULL, NULL, 0, 111, '', '197.210.71.50', 1, 0, '', '', '2019-11-09 11:00:15'),
(182, 1, 0, 1, 'lookDap', 'Суворов Олег', 'simbaevololo@gmail.com', '84114996689', '', 'a5f5dd3b1dd50300fca8a128b4f7a4cc61e87b1c', 'yfTVQwKKH', NULL, NULL, 0, 0, '', '31.184.218.89', 1, 0, '', '', '2019-11-11 19:41:31'),
(183, 1, 0, 1, 'mikel', 'obi', 'todod15086@resmail24.com', '09087654321', '', '71ac039a3a3290237571f60a8f1d50cef43fc753', '1xjLw7X5t', NULL, NULL, 0, 0, '', '41.58.221.117', 1, 0, '', '', '2019-11-13 13:16:24'),
(184, 1, 0, 1, 'Chijioke Century', 'Ezeilo', 'century4gd@gmail.com', '08024344723', '', 'e8a514c495b3dd3f10e87a9f08b418f4c0fc5bd6', 'qNDOHFLvT', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-11-13 18:39:33'),
(186, 1, 0, 1, 'Sani', 'Aliyu', 'sanialiyu900@gmail.com', '07063965096', '', 'b2c8c259f439d72dd87c84515428c02f51a534ce', 'WlWBZ6r5Q', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-11-15 14:48:56'),
(187, 1, 0, 1, 'DR IK', 'ANEMEJE', 'gerministar@gmail.com', '08036652744', '', '7835859e8c3512ec4aab3f27f33d2d11e178c4cc', '4H6i2f2a3', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-11-16 19:11:47'),
(195, 1, 0, 1, 'root', 'user', 'root@gmail.com', '07062194202', '', '258b909c5941ab67b5e9877b87f5eba2bc1df897', 'DdpTKpSZx', NULL, NULL, 0, 0, '', '41.58.89.178', 1, 0, '', '', '2019-11-18 13:23:37'),
(196, 1, 0, 1, 'Emeka Great', 'Chimezie', 'greatestgreatemeka@yahoo.com', '07065910409', '', '28632dcb240978af0bacc0048ab49bb611254bb5', 'dk8pL3gzl', NULL, NULL, 0, 0, '[]', '41.58.109.121', 1, 0, '', '', '2019-11-18 13:31:45'),
(197, 1, 0, 1, 'Falase', 'Pelumi', 'ultimatefeps1@gmail.com', '07038191684', '', '2e9343412c9f0cf29031c96ebe26713f5339a9ed', 'c8MZPlz3Q', NULL, NULL, 0, 115, '', '197.210.61.42', 1, 0, '', '', '2019-11-18 19:29:30'),
(198, 1, 0, 1, 'Chidera ', 'Okechukwu ', 'okechukwuchidera12@gmail.com', '08146714483 ', '', 'a9739efb97b900a71ab11735938fb98e01278f00', 'jviSLKIRV', NULL, NULL, 0, 0, '', '197.210.84.156', 1, 0, '', '', '2019-11-19 06:10:35'),
(199, 1, 0, 1, 'Uchenna', ' chidubem', 'uchidubemvalentine@Gmail.com', '09063936661', '', 'c4a662523df783530f8894d413b93bd1b768779f', 'k50MBgvxo', NULL, NULL, 0, 118, '', '197.210.46.10', 1, 0, '', '', '2019-11-19 08:56:00'),
(200, 1, 0, 1, 'Aghamba', 'Onyekachi', 'o_aghamba@yahoo.com', '08175069905', '', 'f5a49f16d0ba5b6df222b2f253ac25d54dc84467', 'Y4GkiYPBP', NULL, NULL, 0, 120, '', '105.112.28.60', 1, 0, '', '', '2019-11-19 12:27:28'),
(201, 1, 0, 1, 'Ashley', 'Cole ', 'ashleycole353@gmail.com', '08182558489', '', '47454f30b0ce5a27f8a3d091cbb32bedb72c14d4', '5Ykd4mzZ1', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', 'dR1wFEEo6dxeMvwqhiDPVsetvkZxfJrnP1k4X6rj', '2019-11-19 15:50:54'),
(202, 1, 0, 1, 'Adefuwa ', 'Oluwaponmile', 'supersondultimate@gmail.com', '2349091458969', '', 'fbee4825b93fc16c48f11164022847c6bf5cb3c5', 'cdFkerSxM', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-11-19 17:22:22'),
(203, 1, 0, 1, 'Iliyas ', 'Ismail ', 'iliyasmail77@gmail.com', '08100000565', '', 'c4353c71786e817ead137806ca094c00a1fbada0', 'qBEDN8aT4', NULL, NULL, 0, 0, '', '41.203.73.144', 1, 0, '', '', '2019-11-21 14:39:27'),
(204, 1, 0, 1, 'Femi', 'ALAYO ', 'femzzyalayobabatunde@gmail.com', '07015804109 ', '', 'defc5a91dcbd17ffdc7e06b9427d1c36b7796cba', 'wJac50ML2', NULL, NULL, 0, 0, '', '197.210.85.74', 1, 0, '', '', '2019-11-21 23:02:28'),
(205, 1, 0, 1, 'Terna', 'Ignatius Asogo', 'asogo2013@gmail.com', '07051516448', '', '67568dd1009740cfa3b7fb8907c255565eb13694', 'RtH5gt6M6', NULL, NULL, 0, 0, '', '129.205.113.206', 1, 0, '', '', '2019-11-22 04:47:34'),
(206, 1, 0, 1, 'Folorunsho ', 'James ', 'orotoshofolorunsgo3@gmail.com', '08033542172', '', '802086c8559390b9fc6c0bb1fc9070c5d7aed86a', 'oD4gBUNiS', NULL, NULL, 0, 0, '', '197.210.174.145', 1, 0, '', '', '2019-11-23 08:30:31'),
(207, 1, 0, 1, 'Folorunsho ', 'James ', 'orotoshofolorunsho3@gmail.com', '08033542172', '', '367acb49fb8dc5b267448654a90e76f2e00e029e', '2ZWxUnWKW', NULL, NULL, 0, 125, '', '105.112.58.181', 1, 0, '', '', '2019-11-23 09:36:15'),
(210, 1, 0, 1, 'BABATUNDE', 'ADENIYI', 'adebabsa2015@gmail.com', '08066605866', '', '84edce6480eb84704f68a2388612847ad23586f0', 'XCnpdEHCG', NULL, NULL, 0, 1429, '', '197.210.53.22', 1, 0, '', '', '2019-11-26 23:55:44'),
(208, 1, 0, 1, 'Shodimu', 'Sola', 'shollaysa2019@outlook.com', '08128913367', '', '3f7f010121a8f088b69c95f9bc78933b68ba8ea4', 'wwAZABFIv', NULL, NULL, 0, 127, '', '197.255.38.67', 1, 0, '', '', '2019-11-23 13:03:15'),
(209, 1, 0, 1, 'Adah', 'Abigail', 'abigirl_abba@yahoo.com', '08105025761', '', 'be676e0df9a74a6157cb946d9ea6a1198de0bf60', 'mUSNXc7As', NULL, NULL, 0, 0, '', '197.210.46.89', 1, 0, '', '', '2019-11-24 19:17:53'),
(211, 1, 0, 1, 'Umar ', 'Babale ', 'umarbabale@gmail.com', '08030781680', '', 'a389245b3dbf505fe6892c455d3acc15bb721243', 'vwf9TYB0r', NULL, NULL, 0, 0, '', '197.210.65.135', 1, 0, '', '', '2019-11-27 09:03:34'),
(212, 1, 0, 1, 'Obinna', 'Onuorah', 'obinnaonuorah12@gmail.com', '07062547969', '', '8e31fb4b1840597c4f0501d9357cf5b668b61b8c', 'GjJk5s9d8', NULL, NULL, 0, 0, '', '105.112.97.156', 1, 0, '', '', '2019-11-27 14:20:27'),
(263, 1, 0, 1, 'Cynthia Felix', 'Marie', 'cynthfelix1981@gmail.com', '08039365028', '', '0ec6784df9ec1b0a66b62027badfe0cf73a2684c', 'SrXiCmP6b', NULL, NULL, 0, 0, '', '197.210.226.153', 1, 0, '', '', '2019-12-20 08:19:58'),
(213, 1, 0, 1, 'OiidqcvaGata', 'OiidqcvaGataXR', 'udopaqert@mail.ru', '84286198518', '', 'ca782865cb4828a9be13bcd36647eec095403f73', 'paXB0v4ND', NULL, NULL, 0, 0, '', '176.110.134.2', 1, 0, '', '', '2019-12-02 23:09:09'),
(214, 1, 0, 1, 'BosYysqaGata', 'BosYysqaGataDV', 'hsiaqpod@mail.ru', '85516863283', '', 'c4af073c8ebf9854aeaf8ef13add1d489b4ac7a8', '22ZiVqE2K', NULL, NULL, 0, 0, '', '176.110.134.2', 1, 0, '', '', '2019-12-02 23:31:03'),
(215, 1, 0, 1, 'KdpoOqyGata', 'KdpoOqyGataAH', 'lamodise@mail.ru', '83481731554', '', '0f2e96cb0447517289114a67007f1a15cfbc5b7d', 'PPVc8LW2L', NULL, NULL, 0, 0, '', '176.110.134.2', 1, 0, '', '', '2019-12-03 12:42:46'),
(216, 1, 0, 1, 'Ayomide', 'Bello', 'ayomideb051@gmail.com', '08086568850', '', '4be147ff171e1ecd6ae348b8ccdc78aabf4dec3f', 'KVgZOBkl9', NULL, NULL, 0, 138, '', '197.210.53.61', 1, 0, '', '', '2019-12-05 22:35:25'),
(217, 1, 0, 1, 'Adewale ', 'Olalekan', 'adewaleolalekan231@gmail.com', '09022110374', '', '2ccee31d12c392d4926b822f340eae0c5a25fe2a', 'KBJ0uljqE', NULL, NULL, 0, 140, '', '197.211.58.13', 1, 0, '', '', '2019-12-06 04:17:35'),
(218, 1, 0, 1, 'Jamiu ', 'Bolaji ', 'jamiubolaji7711@gmail.com', '08028075267', '', '281a2a09c8748a7661ba76a5adac7569eb07cfd3', 'lrURVZcv8', NULL, NULL, 0, 0, '', '105.112.31.128', 1, 0, '', '', '2019-12-06 08:35:57'),
(219, 1, 0, 1, 'Gafar', 'Babatunde', 'olarewajut940@gmail.com', '08025936355', '', '4eadb72ea333c8ce2c1d2f4a1d28041f9f2fd3d2', '0dOPCqRjg', NULL, NULL, 0, 142, '', '197.211.58.3', 1, 0, '', '', '2019-12-06 09:18:33'),
(220, 1, 0, 1, 'Bamidele', 'Olaoluwa', 'bamideleolaoluwa503@gmail.com', '08118159882', '', 'b3fc99f8d8fd35a0b6ecb7a41bd121837ae4ecef', 'RhlP4o7fh', NULL, NULL, 0, 0, '', '197.210.28.70', 1, 0, '', '', '2019-12-06 14:18:19'),
(221, 1, 0, 1, 'Matthew', 'Efosa', 'Matthew.efosa@yahoo.com', '09023915488', '', 'c07552118a3e719191e34a563202e6c7dfb8011e', 'JYTBVUK0F', NULL, NULL, 0, 145, '', '129.205.113.222', 1, 0, '', '', '2019-12-06 15:18:08'),
(222, 1, 0, 1, 'Adeoye', 'Bukola', 'latifatjimoh77@yahoo.com', '07067601681', '', '37cbf87b1a81badae066c7dd0d1a85f20aab5031', '9I0BE2U8V', NULL, NULL, 0, 0, '', '197.210.45.13', 1, 0, '', '', '2019-12-06 16:40:00'),
(223, 1, 0, 1, 'Rollexx', 'Lavish', 'alexkateandrew@gmail.com', '08188280136', '', 'de628a22abd87327a5b837d507b9e498186aae61', 'WQ9P04gtA', NULL, NULL, 0, 0, '', '105.112.31.66', 1, 0, '', '', '2019-12-06 18:01:49'),
(224, 1, 0, 1, 'Adamson', 'GENESIS', 'Adamsongenesis@gmail.com', '09053631648', '', '57e44bf6810c4ed0c2023b19042ec36fa8a3b6f3', 'E2VxEktFF', NULL, NULL, 0, 0, '', '105.112.112.80', 1, 0, '', '', '2019-12-06 22:49:42'),
(225, 1, 0, 1, 'bimbirrispCat', 'bimbirrispCat', 'lqvapbiatoMumbEmantee@addimail.top', '84694168996', '', '7f46561351ec38eced69c209ff6332c27612d095', '50lrDlD1D', NULL, NULL, 0, 0, '', '5.188.210.83', 1, 0, '', '', '2019-12-06 23:03:12'),
(226, 1, 0, 1, 'Shamsu', 'Ibrahim', 'shamsualpha092@gmail.com', '08066267061', '', 'eef806496ce32472e9be41162089b52bfec56127', 'iNTayBBlS', NULL, NULL, 0, 0, '', '197.210.29.49', 1, 0, '', '', '2019-12-07 07:09:42'),
(240, 1, 0, 1, 'JamesCok', 'JamesCokVP', 'ingashevashova@rambler.ru', '85768254812', '', 'b013ee5e48b111ec2f52733bbce4df7d164596e8', 'QJdq0Kbqb', NULL, NULL, 0, 0, '', '195.238.108.90', 1, 0, '', '', '2019-12-11 13:37:50'),
(227, 1, 0, 1, 'Emmanuel', 'Anegbeh', 'anegbehemmanuel@gmail.com', '08158482271', '', '8318d08349d7552007ff8b4a662e597df0a58358', 'uk82FTZmt', NULL, NULL, 0, 149, '', '197.210.29.153', 1, 0, '', '', '2019-12-07 12:32:31'),
(228, 1, 0, 1, 'Mayaki', 'Peter', 'clearmayaks44@gmail.com', '08033687407', '', 'e75d61bf35eec4914b5b9830d199df23c0f20684', '0m7z0qqGo', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-07 18:09:19'),
(229, 1, 0, 1, 'Frank', 'Ifemegbunem', 'frankokwunwa@gmail.com', '08069819795', '', '46a6fbec1cfe25d9607f356cec3a9ec2e47c6425', 'HGHyPZC5N', NULL, NULL, 0, 165, '', '105.112.55.80', 1, 0, '', '', '2019-12-07 19:42:05'),
(230, 1, 0, 1, 'Chinweuba', 'Okoye', 'chrisokoye393@gmail.com', '+2348063803286', '', 'b4fdda03ae4b65342860aa7e55e6e9836d2de9df', 'Yzf4kfo7b', NULL, NULL, 0, 153, '', '197.210.71.222', 1, 0, '', '', '2019-12-07 22:00:46'),
(231, 1, 0, 1, 'Nkechika', 'Ezenwa', 'nkechikaezenwa@gmail.com', '08097274427', '', '0aac670f3a386a6da6aba8dcf1f4bfd82f1d1a81', 'b10ZUHxep', NULL, NULL, 0, 155, '', '197.210.64.28', 1, 0, '', '', '2019-12-08 19:36:22'),
(232, 1, 0, 1, 'Juwon', 'Opeyemi', 'tinsel722@gmail.com', '09066211303 ', '', 'adc05d94bd4b82e850768f67fddd001bf6ad73d8', 'FvUUYQsPc', NULL, NULL, 0, 0, '', '105.112.181.235', 1, 0, '', '', '2019-12-08 20:50:22'),
(233, 1, 0, 1, 'Ariel', 'savior', 'Natashamike449@gmail.com', '09034975180', '', '768bcb6a30bb21a9350086c11ae1ac0c5b8e0ef3', '0M6X86fB7', NULL, NULL, 0, 158, '', '197.210.64.189', 1, 0, '', '', '2019-12-08 22:40:13'),
(234, 1, 0, 1, 'Paul', 'Praise', 'Paulpraiseberry17977@gmail.com', '07061944485', '', '47357745a840727a3c1b1dc3c6ee6b97deb76aeb', '9OPs8BZGG', NULL, NULL, 0, 0, '', '197.210.65.134', 1, 0, '', '', '2019-12-09 07:29:15'),
(235, 1, 0, 1, 'Michael ', 'Anyasor ', 'anyasor6@gmail.com', '08109244752', '', 'fc80410fb38f91fc146debea3f041dee8ab57c74', 'REY1ukimM', NULL, NULL, 0, 0, '', '197.210.53.66', 1, 0, '', '', '2019-12-09 09:58:14'),
(236, 1, 0, 1, 'Taiwo', 'Sunday', 'Sundaymichealtaiwo123456789@gmail.com', '08131206774', '', 'cd977b06abc3f1a7cd9cefed964dd19d252062e4', 'bFvdiZYIT', NULL, NULL, 0, 161, '', '197.210.8.238', 1, 0, '', '', '2019-12-09 12:01:48'),
(238, 1, 0, 1, 'Paul', 'Praise', 'Paulpraiseraskids17977@gmail.com', '07061944485', '', 'f4279d129b825e36e06828cc5b28a0647a107af6', 'Rw4B8bmvj', NULL, NULL, 0, 0, '', '197.210.47.88', 1, 0, '', '', '2019-12-09 17:44:21'),
(239, 1, 0, 1, 'Paulo', 'Itz', 'itzgoodenss@gmail.com', '08150369121', '', '95daa735bf0201f37816645241f4625212ccfd64', '1EFd8XKEZ', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-10 09:03:29'),
(673, 1, 0, 1, 'Andy', 'Orakpo', 'orakpoa@gmail.com', '07031393998', '', '1d2010416d62b994168d41dd6eeb41a7f95719cc', 'dnZ4xvGQa', NULL, NULL, 0, 686, '', '105.112.104.162', 1, 0, '', '', '2020-01-29 14:27:07'),
(241, 1, 0, 1, 'KurazhNof', 'KurazhNofZD', 'kurazh1212@yandex.ru', '88567486344', '', '7df1c937d0dee661d5c8049e0cf3e0b9cc3275b2', 'WYkCtk1Tp', NULL, NULL, 0, 0, '', '213.242.21.172', 1, 0, '', '', '2019-12-15 02:25:21'),
(242, 1, 0, 1, 'Sabbasmarianus', 'Enuofu', 'enuofumarianus@gmail.com', '08134569340', '', 'ce159b7500cdbca1e023e4af9531d62cfe44b977', '0Do3ynKgl', NULL, NULL, 0, 0, '', '197.210.85.11', 1, 0, '', '', '2019-12-15 20:06:39'),
(243, 1, 0, 1, 'PETRUS', 'ENUOFU', 'www.enumary@gmail.com', '07066796574', '', 'fd0b2d3cd741eccc84dc33bcdc9078be53f917d6', 'Dzzt16XkF', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-15 20:10:00'),
(645, 1, 0, 1, 'Chijioke', 'Lucky', 'luckychijioke66@gmail.com', '09053464246', '', 'bd33ec826d00aae258ab2c5b22da10cc48479aa3', 'PyK7iWFc0', NULL, NULL, 0, 659, '', '197.211.61.32', 1, 0, '', '', '2020-01-21 20:35:07'),
(244, 1, 0, 1, 'Lady', 'Lag', 'yakehol151@tmail2.com', ' 27765878260', '', 'bfdbe79c7fe1855349fe10d93b360c9c1dd8c55b', 'XS0aNIZxP', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-17 11:14:56'),
(650, 1, 0, 1, 'morrison', 'abadegbene', 'abadegbenemorrison7@gmail.com', '07055723159', '', 'b56d5837c925dc96126e970d3718a2df538d9721', 'a4VKMjjOP', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '3BAUsT8dZCkjFO3ZZm0CkMglBWS1kJRRxs7kQMxr', '2020-01-22 11:17:31'),
(247, 1, 0, 1, 'Ajiboye', 'Tosin', 'Tosocrowns@gmail.com', '08059850750', '', 'b885546ef35b7ac2d7dfeb51bd02c9e44dd80b7f', '74nfgDqnj', NULL, NULL, 0, 175, '', '197.211.58.94', 1, 0, '', '', '2019-12-19 05:15:11'),
(245, 1, 0, 1, 'BUKAYO', 'AJIBOYE', 'ajiboyebukayo3@gmail.com', '08108239322', '', 'c94fd9d5bd347240dc7ebaadde95bed3096f142d', 'Bw5DxZH0U', NULL, NULL, 0, 171, '', '197.210.44.189', 1, 0, '', '', '2019-12-17 12:56:09'),
(246, 1, 0, 1, 'Chukwuemerie', 'Uduchukwu', 'emexco4unity@yahoo.com', ' 2347038404557', '', 'f28e20124cd5b355e2179f579371f95090d2cdf3', 'ajnvbJNk5', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-17 23:07:48'),
(248, 1, 0, 1, 'Udeze', 'Darby', 'udexe20@gmail.com', '09024013547', '', 'fbe4082b3167c5fd8e6ad028d22fa89a3dcd654e', 'jqrhlIaCT', NULL, NULL, 0, 176, '', '105.112.11.150', 1, 0, '', '', '2019-12-19 06:41:24');
INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `language_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `safe`, `token`, `code`, `date_added`) VALUES
(249, 1, 0, 1, 'Innocent', 'Amadi', 'iwaokpoyo@gmail.com', '08034101517', '', '23d2e98b891a92afd954b250b231dee3e48eaecd', 'Ly0nlIcvX', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-19 08:59:13'),
(250, 1, 0, 1, 'Mary', 'Sue', 'mary@gmail.com', '07062194202', '', 'cfe11e75b75127d465a49ee9f0cf372efeddefea', 'loT77tLqP', NULL, NULL, 0, 0, '', '197.210.28.65', 1, 0, '', '', '2019-12-19 15:27:31'),
(251, 1, 0, 1, 'Mikel', 'Obi', 'mikelobi@gmail.com', '07062194202', '', '8d5ed009ab75b3bdcd82a9be486192b46d6ebaf8', 'EJJq7FWQ6', NULL, NULL, 0, 0, '', '197.210.28.65', 1, 0, '', '', '2019-12-19 15:55:28'),
(252, 1, 0, 1, 'Jonah', 'John', 'jonsnow1@gmail.com', '07062194202', '', '3f0a74d85cee3279850fbe0649ef9a1cebe35055', 'a05BEoYVW', NULL, NULL, 0, 0, '', '197.210.28.65', 1, 0, '', '', '2019-12-19 16:07:57'),
(253, 1, 0, 1, 'peter', 'dury', 'peterdury@gmail.com', '07062194202', '', 'fafe4b316d1a5449fe6c953cc45d60255a0cf826', 'MB0YpCsgM', NULL, NULL, 0, 0, '', '197.210.28.65', 1, 0, '', '', '2019-12-19 16:26:34'),
(254, 1, 0, 1, 'Ben', 'Flow', 'benami@gmail.com', '07062194202', '', 'db55a0969c2379d8205ac6012d590c3c13c66946', 'jHTdiNZa9', NULL, NULL, 0, 0, '', '197.210.28.65', 1, 0, '', '', '2019-12-19 16:51:41'),
(255, 1, 0, 1, 'Kubiat', 'Effiong', 'amicablekubiat@gmail.com', '08155562677', '', '372d3999eab77f026b6c93bc0dd8ef40a43ffc50', '8KTuWw4Zj', NULL, NULL, 0, 242, '', '197.211.58.132', 1, 0, '', '', '2019-12-19 17:34:13'),
(256, 1, 0, 1, 'Believe', 'Udenna ', 'udennabelieve2019@gmail.com', '08120501131', '', 'd7588d4bfa41e57480ec6886429dab0d5f4043bb', 'hZZLvRAah', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', 'x3hE9LqRDZEoguRKuRF3KTMDSf1FVAQPqdUQPpvq', '2019-12-19 17:40:00'),
(257, 1, 0, 1, 'Believe ', 'Udenna ', 'udennabelieve@gmail.com', '08120501131', '', 'b929f75b149e549db1fb1cf656864074333814e0', 'RyNTGis8i', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-19 18:28:12'),
(258, 1, 0, 1, 'Believe ', 'Udenna ', 'udennabelievepeter@gmail.com', '08120501131', '', 'aa9a49d9e9d21ee5786b2d19d1d69c1345d96d24', 'LeLpqDED7', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-19 18:32:55'),
(259, 1, 0, 1, 'gabriel', 'asoro', 'gabrielasoro93@gmail.com', '08114231060', '', 'edef6fb9733a540d9b261db3922652b0a84ce0d3', 'EJvSIJswN', NULL, NULL, 0, 0, '', '197.211.58.101', 1, 0, '', '', '2019-12-19 21:57:27'),
(260, 1, 0, 1, 'Henry', 'Ugo', 'Elviskelly722@gmail.com', '08112801343', '', 'aa43863481c2ccb68700dee66be0f53af9eb2fef', 'mdIIdBurX', NULL, NULL, 0, 0, '', '197.211.58.98', 1, 0, '', '', '2019-12-19 21:58:36'),
(261, 1, 0, 1, 'ossai', 'gabriel', 'ossaigabriel02@gmail.com', '08125184853', '', '8e7e2d4a3c551006377fc2342ac70a1ab9feb57f', 'ZFT9NerpZ', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-20 00:43:22'),
(262, 1, 0, 1, 'Prince', 'John', 'solomonp76@gmail.com', '07833295553', '', '1d7007bdd3c5dc2a8fe2a5d50f10f44d4ab09ab8', 'QxpxsiKaY', NULL, NULL, 0, 187, '', '105.112.38.99', 1, 0, '', '', '2019-12-20 03:46:54'),
(264, 1, 0, 1, 'Felix ', 'Precious ', 'felixprecious27@gmail.com', '08080607517', '', '374401407f364ca12beea2e9d0213e433304bae2', 'VHHtGqQ2k', NULL, NULL, 0, 0, '', '197.210.226.223', 1, 0, '', '', '2019-12-20 09:54:36'),
(265, 1, 0, 1, 'Onunkwo', 'Anthony', 'onunkwoanthony3@gmail.com', '08060823134', '', '207fa38fb70fa8c14ec9ae5ca1c261f524639af6', 'WeijmYhxm', NULL, NULL, 0, 192, '', '5.79.70.74', 1, 0, '', '', '2019-12-20 11:45:09'),
(266, 1, 0, 1, 'star', 'boy', 'obisikechimeremeze9@gmail.com', '08105490197', '', '5dce785aca85d70fc1b2d4477ff6559d7d04ec35', 'o0SezpOZN', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-20 12:36:31'),
(267, 1, 0, 1, 'femi', 'kila', 'femi@gmail.com', '07062194202', '', '9ddfd67cfa72285c8c658f5d437548ed0e4fd634', 'lW7kf8p9M', NULL, NULL, 0, 0, '', '197.210.8.119', 1, 0, '', '', '2019-12-20 12:39:45'),
(268, 1, 0, 1, 'Joshua ', 'Eriakporie ', 'Joem72422@gmail.com', '08052425167', '', '42cf59776c47ab0b2d9bcfb6ddca88a1c80bcebe', 'almBOH8qe', NULL, NULL, 0, 0, '', '197.211.58.103', 1, 0, '', '', '2019-12-20 16:08:39'),
(269, 1, 0, 1, 'Chris', 'Ohide', 'edomcrist.pinging@gmail.com', '08168167290', '', '4d1d83a9b991c7dbc4b5bbae53a0c9b2d562ba41', 'u5VIPIKYo', NULL, NULL, 0, 0, '', '197.210.185.142', 1, 0, '', '', '2019-12-20 18:07:58'),
(270, 1, 0, 1, 'Darlington ', 'anya', 'darlingtonanya634@gmail.com', '09077362346', '', 'd95abd8e69dde371cddc11b965ac637f0efa3e4f', 'yCnGGSAym', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-20 20:22:10'),
(271, 1, 0, 1, 'Adesanya', 'Seyi', 'adesanyaseyi30@gmail.com', '08078776296', '', 'd5d6a8817de142dc3154c3b0b1053cf819a27246', '3k00ZSpKD', NULL, NULL, 0, 197, '', '197.211.58.105', 1, 0, '', '', '2019-12-20 21:13:59'),
(272, 1, 0, 1, 'Jeremiah', 'Okonjo', 'jeremiahokonjo@gmail.com', '08162482404', '', 'caff7dd7cccaa46358c12b22e4882480961c8490', 'yapu5mEln', NULL, NULL, 0, 199, '', '129.205.113.223', 1, 0, '', '', '2019-12-21 04:04:36'),
(273, 1, 0, 1, 'Daniel ', 'Jenny', 'danieljenny825@gmail.com', '08063017727', '', '769216bcbdcfa060c76c0b3c74e07415211e6a08', 'aTawHMn2f', NULL, NULL, 0, 0, '', '41.190.3.102', 1, 0, '', '', '2019-12-21 09:25:25'),
(274, 1, 0, 1, 'Ayomikun', 'Ayodele', 'commsjohnson57@gmail.com', '09065537857', '', '00c9d49273de0fb9d40aaedddf4bcf0b7b873e16', 'EqdabdAyH', NULL, NULL, 0, 0, '', '197.210.227.140', 1, 0, '', '', '2019-12-21 10:15:19'),
(275, 1, 0, 1, 'Patience ', 'omafuaire ', 'Patience.emovon@yahoo.com', '08066271722', '', '9f9e14585216c8bf12c418a24f95956eb7d2cdfb', 'NSz5gxukK', NULL, NULL, 0, 203, '', '5.79.70.74', 1, 0, '', '', '2019-12-21 13:15:36'),
(300, 1, 0, 1, 'Felix', 'Ebi', 'Febiwari@yahoo.com', '08068915100', '', '9bb154c2384faac38b9498415942151de57136b5', 'G4fL0Odil', NULL, NULL, 0, 239, '', '197.210.70.12', 1, 0, '', '', '2019-12-27 07:12:39'),
(276, 1, 0, 1, 'Chekwube', 'Ezeigwe', 'Chekwubechekwube81@gmail.com', '08037580850', '', '4588f21438f0c823d16be15bb9e6597a6108090d', 'H3lbzOxK9', NULL, NULL, 0, 205, '', '197.211.61.111', 1, 0, '', '', '2019-12-21 15:48:44'),
(298, 1, 0, 1, 'Ahmad', 'Muhammad', 'ahmadmuhammad303@gmail.com', '081-619-48438', '', 'df556b81f7a5e5a2aee303e4f92b547b335b2efd', 'fXeJmwQd2', NULL, NULL, 0, 234, '', '197.210.44.133', 1, 0, '', '', '2019-12-26 11:46:14'),
(277, 1, 0, 1, 'Emmanuel', 'Adeniyi', 'adeniyiemmanuel93@gmail.com', '09039715575', '', '09ad7eea86f32ceb951db7c72aa8ab57ed0716c9', 'be7WTWlRB', NULL, NULL, 0, 363, '', '197.210.47.196', 1, 0, '', '', '2019-12-21 16:23:40'),
(278, 1, 0, 1, 'Daniel', 'Joseph', 'josephorukpe2018@gmail.com', '09035472135', '', '4e1c2157e105be4506f69f1070a59e0de146a10d', 'r8Ebkg2IW', NULL, NULL, 0, 208, '', '197.210.63.57', 1, 0, '', '', '2019-12-21 17:49:24'),
(279, 1, 0, 1, 'Akazue', 'Joseph', 'akazuejoseph@gmail.com', '08087735249', '', 'dca720fd3e60bafde81386ef7866b5ae7f59611f', 'pwXd04Yog', NULL, NULL, 0, 207, '', '197.211.58.104', 1, 0, '', '', '2019-12-21 17:52:24'),
(299, 1, 0, 1, 'Desmond', 'Atokoh', 'prof_dd1@yahoo.com', '08064093766', '', '90989c8429dc6b7cd146786daf55104b83a56c40', 'oZZAzgjou', NULL, NULL, 0, 237, '', '197.210.53.241', 1, 0, '', '', '2019-12-26 18:37:51'),
(280, 1, 0, 1, 'Daniel', 'Asukwo', 'danielasukwo42@gmail.com', '08180805444', '', '06fc23651f62dafefc2403e7874b5573a790299f', 'ZMpUDWymc', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-21 22:42:20'),
(281, 1, 0, 1, 'Moshood', 'Shittu', 'moshoodshittu01@gmail.com', '08037544844', '', 'd80d4ccbbe168338c3a432c037a05bdbfb91c0c4', 'NzVCOkrbG', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-22 11:06:59'),
(282, 1, 0, 1, 'Abdurrahman', 'Auwal Tayyib', 'abdurrahmanauwaltayyib@gmail.com', '08101749104', '', '1df4fa4c2defc2a827669a2e0bb657ede2464577', 'ij5HC788w', NULL, NULL, 0, 213, '', '197.210.71.156', 1, 0, '', '', '2019-12-22 11:21:15'),
(283, 1, 0, 1, 'Janda', 'Ibrahim ', 'igambo80@yahoo.com', '07052870116 ', '', '133030d3b608791987bbabc2906535feb08c4701', 'aLkNiY2W7', NULL, NULL, 0, 0, '', '129.205.113.216', 1, 0, '', '', '2019-12-22 16:53:33'),
(284, 1, 0, 1, 'Samuel', 'Adekunle', 'oluwatomisinadekunle@gmail.com', '07066990968', '', '61891df81b6fc3f0d8ad6dd855badfebff56cfaf', 'LV1luI62Y', NULL, NULL, 0, 216, '', '197.210.85.184', 1, 0, '', '', '2019-12-22 20:55:06'),
(285, 1, 0, 1, 'Okoli', 'Okoli', 'talk2emma00@gmail.com', '09018045840', '', '57c5a9bc836033758516ab478ba5ec18bf9b4aae', 'PpPDoSYbb', NULL, NULL, 0, 218, '', '105.112.183.162', 1, 0, '', '', '2019-12-22 21:48:23'),
(296, 1, 0, 1, 'Success ', 'Ewaghan', 'ewaghansuccess90@gmail.com', '08154183925', '', '577be3506329912cc88eefdb0a3d186446c725d3', 'DvnO7U3ol', NULL, NULL, 0, 0, '', '197.211.58.120', 1, 0, '', '', '2019-12-24 16:07:07'),
(286, 1, 0, 1, 'Khamees', 'Usman', 'Khameeshehuusan@gmail.com', '07065373414', '', 'ea4209d4b08bd590c8da53656e1c71494afc4055', '1IE8jKsz5', NULL, NULL, 0, 0, '', '197.210.227.89', 1, 0, '', '', '2019-12-23 14:03:04'),
(287, 1, 0, 1, 'panle', 'Taitus', 'taipanle@gmail.com', '07060881707', '', 'c359a0049e85c21b49d4f40c4ad576b7eb174c96', 'z4eQ94vCG', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-23 15:26:23'),
(288, 1, 0, 1, 'Ajayi yusuff ', 'Titilope', 'Ajayititilope2018@gmail.com', '08164258243', '', '750044212dccadf19551e114c20f69ec5cd272a3', 'lClV98pyu', NULL, NULL, 0, 0, '', '105.112.156.14', 1, 0, '', '', '2019-12-23 17:23:29'),
(289, 1, 0, 1, 'Etido', 'Nkwo', 'etidonkwo@gmail.com', '08027300488', '', 'e89f666c338fc4081700bcdebc67b1c86fdc8e93', 'In2RIHqVi', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-23 19:25:48'),
(290, 1, 0, 1, 'Richard', 'Okoye', 'rmoors656@gmail.com', '08055405319', '', '930c3eeecee3a7b0c046351aafd0934f52f9cf25', '0FokLPx3P', NULL, NULL, 0, 225, '', '197.211.58.108', 1, 0, '', '', '2019-12-23 20:47:40'),
(291, 1, 0, 1, 'chinonso', 'uche', 'uchec5529@gmail.com', '08159276023', '', 'a274ba5db4f8ddb67b386d93b74630eba9584f5a', 'mLZ4uL48Z', NULL, NULL, 0, 227, '', '105.112.11.118', 1, 0, '', '', '2019-12-23 20:56:43'),
(292, 1, 0, 1, 'Uzoma', 'Collins ', 'cuzoma5@gmail.com', '08109514657', '', '7d23a9eb5b394b8289388a636d0f86931d8fe6f9', 'RAjZgI2tg', NULL, NULL, 0, 229, '', '197.210.84.213', 1, 0, '', '', '2019-12-23 23:35:04'),
(293, 1, 0, 1, 'Sawo', 'Victor ', 'engrvictord@gmail.com', '08036205078', '', '82450bfc289a84835ad56bb4f6c64edc2023ca81', '4RTX6Af5G', NULL, NULL, 0, 230, '', '102.89.3.44', 1, 0, '', '', '2019-12-24 00:23:34'),
(294, 1, 0, 1, 'Akpo', 'Lucas', 'Akpolucas057@gmail.com', '09029109443', '', 'a87f123fde216201f4b63928af161484cd5f582b', 'MGJ03BQGX', NULL, NULL, 0, 0, '', '197.211.58.108', 1, 0, '', '', '2019-12-24 01:02:34'),
(295, 1, 0, 1, 'Emmanuel ', 'Okafor', 'okafore907@gmail.com', '08148134614', '', '6a2d96efd1e282dad9eaa31467985a9e7ada52f7', 'fBzM0WE9b', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-24 06:46:39'),
(297, 1, 0, 1, 'Victor', 'Uche', 'victoruche45@gmail.com', '08106216229', '', 'b36c12322965c0f0bdd8dc7f1e5e1fa1d2ebec68', 'AgAIJLjyp', NULL, NULL, 0, 233, '', '197.210.53.174', 1, 0, '', '', '2019-12-25 08:37:15'),
(376, 1, 0, 1, 'Aronfegbe', 'Tolulope', 'aronfegbetolulope@gmail.com', '08109825047', '', 'f0a289f89f1621262e8906b8f32c473e93104467', 'gUMvj8lYi', NULL, NULL, 0, 332, '', '129.205.112.208', 1, 0, '', '', '2020-01-02 18:36:26'),
(301, 1, 0, 1, 'Pius', 'Nengak', 'Sirpius2525@gmail.com', '08101119833 ', '', 'f4e68858036b2e9c3c37d7cabc01c2ba86115a61', 'Tg98jvvIq', NULL, NULL, 0, 241, '', '197.210.71.221', 1, 0, '', '2c7OCvRDWDBLZj2k2GDPDtdGo07PGAYHsDnsSuvg', '2019-12-27 19:48:21'),
(302, 1, 0, 1, 'KdiiqOjGata', 'KdiiqOjGataBQ', 'pokhonyan82@mail.ru', '81528642822', '', 'ab57a96d7e8c908224d61e30f5afca9a44381de2', 'dfqwF3szP', NULL, NULL, 0, 0, '', '176.110.134.2', 1, 0, '', '', '2019-12-28 06:10:52'),
(303, 1, 0, 1, 'Cyriacus', 'Ikenna ', 'ikennaabii@yahoo.com', '07034546906', '', 'cfd32de72f894b59df4624725c29b63065978fb1', 'h0ocZVUjT', NULL, NULL, 0, 0, '', '197.210.47.74', 1, 0, '', '', '2019-12-28 07:26:13'),
(304, 1, 0, 1, 'yk', 'yyakub', 'yyakubyk33@gmail.com', '08059770971', '', '746f19a4695413fb7094fde49c81d2935932de4c', 'aIoAJyID5', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-28 07:28:33'),
(305, 1, 0, 1, 'Augustine', 'Michael', 'Uchechukwujohn87@gmail.com', '08100366497', '', '8db528979d6f4b972d2a1e2ee86bc81866810f25', '0zS6D1TQB', NULL, NULL, 0, 245, '', '197.210.52.114', 1, 0, '', '', '2019-12-28 07:33:55'),
(306, 1, 0, 1, 'Lange', 'Musa Danasabe', 'langelov30@gmail.com', '07033913822', '', 'c5bb244f36e02613469f16c7f3e2f271a665584a', 'AoXveK7O1', NULL, NULL, 0, 0, '', '105.112.61.207', 1, 0, '', '', '2019-12-28 07:44:58'),
(307, 1, 0, 1, 'Tesy', 'Nana', 'tesynana1@gmail.com', '09039117529', '', '3548adb5c922055ce1c40be4f9d5740245517daa', 'ZXAnxYscf', NULL, NULL, 0, 248, '', '105.112.177.72', 1, 0, '', '', '2019-12-28 08:38:34'),
(678, 1, 0, 1, 'ismail', 'omar', 'chromesuitedesigns@gmail.com', ' 2348151685112', '', 'b74199f284cd531e2147813369caed1e5031a068', 'TcJFhtny5', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2020-01-30 10:37:58'),
(308, 1, 0, 1, 'Gideon', 'Adat', 'gideonadat@gmail.com', '08103677705', '', 'ae55be4d1c5a5558942e14427ed61873859cd035', 'XuENT2Pnp', NULL, NULL, 0, 0, '', '197.211.58.132', 1, 0, '', '', '2019-12-28 08:50:35'),
(309, 1, 0, 1, 'Anyor', 'Ezra', 'ezraanyor@gmail.com', '07051166172', '', '1e4868ecfe0f69debdee840c55b1b0df412bad1d', 'hAySHu41Y', NULL, NULL, 0, 251, '', '41.203.73.154', 1, 0, '', '', '2019-12-28 09:50:46'),
(310, 1, 0, 1, 'stanley', 'chisom', 'ohmskafi@yahoo.com', '07039183316', '', '6dfcd75a68b7e43b3da0afbfb790ce311207a43b', 'iuW2ppjud', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-28 10:33:40'),
(311, 1, 0, 1, 'TUWATIMI', 'ZECHARIAH', 'tzechariah1995@gmail.com', '08069013308', '', '05a863f1b88a8c4d96b61d1e9e874b3967caf883', 'ppGynAFRh', NULL, NULL, 0, 0, '', '197.211.58.129', 1, 0, '', '', '2019-12-28 11:29:45'),
(312, 1, 0, 1, 'Ibrahim', 'Abu-Ammar', 'romacyder@gmail.com', '08036218145', '', 'e3025ec678252198a228ea3b2fbbce878eaff52a', '8y3mADMpw', NULL, NULL, 0, 0, '', '197.210.53.142', 1, 0, '', '', '2019-12-28 13:15:27'),
(313, 1, 0, 1, 'Festus ', 'Odetola ', 'festoo30@gmail.com', '+2349076251961', '', 'b47bbd60d45a0a9f815ba2a5e77aea898f99bc2f', 'ipHb1KoVh', NULL, NULL, 0, 255, '', '197.211.58.130', 1, 0, '', '', '2019-12-28 13:37:41'),
(314, 1, 0, 1, 'Collins', 'Uchenna', 'uchennacollins904@gmail.com', '07068121045', '', 'ca64974a3c4c36de01e73c43cb8a4a5b026ee676', '5IfRIoeO7', NULL, NULL, 0, 257, '', '197.210.28.111', 1, 0, '', '', '2019-12-28 17:22:35'),
(315, 1, 0, 1, 'martins', 'anayo', 'martinsanayo79@gmail.com', '08065459679', '', '049dc1dda2d5063b49e936ca31c882e56344ea53', 'bwCI4XCAX', NULL, NULL, 0, 259, '', '197.210.71.219', 1, 0, '', '', '2019-12-28 22:56:27'),
(316, 1, 0, 1, 'Bernard ', 'Munachi', 'BernardMunachi@yahoo.com', '09016969465', '', '11f6e10cc38eea6e2d56f6ae1de78d2b4900ac77', 'rzoDbvYH1', NULL, NULL, 0, 0, '', '105.112.120.87', 1, 0, '', '', '2019-12-28 23:07:01'),
(317, 1, 0, 1, 'Opeyemi', 'Kolade', 'Koladeopeyemi242@gmail.com', '09053344755', '', 'c526dd2b2fbfac6e1f50c64009b992bbad268d56', 'gVq1sZMpx', NULL, NULL, 0, 0, '', '197.210.63.59', 1, 0, '', '', '2019-12-29 00:50:13'),
(318, 1, 0, 1, 'Osas Timothy ', 'Saturday ', 'Timotexsy@gmail.com', '08028358482', '', '04d38a422cfd58493651e0a1f82fb1b96a6fd1c7', '0XjmGPuRm', NULL, NULL, 0, 283, '', '105.112.23.37', 1, 0, '', '', '2019-12-29 01:30:58'),
(319, 1, 0, 1, 'Onyi', 'Peter', 'peteronyi991@gmail.com', '07010401133', '', 'c5569abc1d4a3809a5c856dde69b9ac63d1ad09d', 'ngKBAH4a4', NULL, NULL, 0, 0, '', '197.211.58.134', 1, 0, '', '', '2019-12-29 08:52:42'),
(320, 1, 0, 1, 'chukwuma ', 'nwosu', 'uzodikekossy25@gmail.com', '07037587894', '', '6dfbe1e5249be50a37a954d4d45bf1b5620d3b41', 'FfVpWBcYt', NULL, NULL, 0, 0, '', '5.79.70.74', 1, 0, '', '', '2019-12-29 09:30:29'),
(321, 1, 0, 1, 'Yekini', 'Samson', 'yekinisamson12345@gmail.com', '07017042950', '', '53e976de9d49857a3fb9e500048360c6491917a3', 'BeyhKQ9jx', NULL, NULL, 0, 0, '', '105.112.31.206', 1, 0, '', '', '2019-12-29 11:18:04'),
(322, 1, 0, 1, 'Okechukwu ', 'PraiseJah ', 'praisejo145@gmail.com', '08155858316, 08169379174 ', '', 'acec1fc8284def26ca4b2761e2680772516c0476', '2qIhOPpc1', NULL, NULL, 0, 265, '', '129.205.114.34', 1, 0, '', '', '2019-12-29 11:27:10');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `customer_activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT 0.00,
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `validation` varchar(255) NOT NULL,
  `location` varchar(10) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(160) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`, `status`, `sort_order`) VALUES
(1, 'activity_customer_add', 'catalog/model/account/customer/addCustomer/after', 'event/activity/addCustomer', 1, 0),
(2, 'activity_customer_edit', 'catalog/model/account/customer/editCustomer/after', 'event/activity/editCustomer', 1, 0),
(3, 'activity_customer_password', 'catalog/model/account/customer/editPassword/after', 'event/activity/editPassword', 1, 0),
(4, 'activity_customer_forgotten', 'catalog/model/account/customer/editCode/after', 'event/activity/forgotten', 1, 0),
(5, 'activity_transaction', 'catalog/model/account/customer/addTransaction/after', 'event/activity/addTransaction', 1, 0),
(6, 'activity_customer_login', 'catalog/model/account/customer/deleteLoginAttempts/after', 'event/activity/login', 1, 0),
(7, 'activity_address_add', 'catalog/model/account/address/addAddress/after', 'event/activity/addAddress', 1, 0),
(8, 'activity_address_edit', 'catalog/model/account/address/editAddress/after', 'event/activity/editAddress', 1, 0),
(9, 'activity_address_delete', 'catalog/model/account/address/deleteAddress/after', 'event/activity/deleteAddress', 1, 0),
(10, 'activity_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'event/activity/addAffiliate', 1, 0),
(11, 'activity_affiliate_edit', 'catalog/model/account/customer/editAffiliate/after', 'event/activity/editAffiliate', 1, 0),
(12, 'activity_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'event/activity/addOrderHistory', 1, 0),
(13, 'activity_return_add', 'catalog/model/account/return/addReturn/after', 'event/activity/addReturn', 1, 0),
(14, 'mail_transaction', 'catalog/model/account/customer/addTransaction/after', 'mail/transaction', 1, 0),
(15, 'mail_forgotten', 'catalog/model/account/customer/editCode/after', 'mail/forgotten', 1, 0),
(16, 'mail_customer_add', 'catalog/model/account/customer/addCustomer/after', 'mail/register', 1, 0),
(17, 'mail_customer_alert', 'catalog/model/account/customer/addCustomer/after', 'mail/register/alert', 1, 0),
(18, 'mail_affiliate_add', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate', 1, 0),
(19, 'mail_affiliate_alert', 'catalog/model/account/customer/addAffiliate/after', 'mail/affiliate/alert', 1, 0),
(20, 'mail_voucher', 'catalog/model/checkout/order/addOrderHistory/after', 'extension/total/voucher/send', 1, 0),
(21, 'mail_order_add', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order', 1, 0),
(22, 'mail_order_alert', 'catalog/model/checkout/order/addOrderHistory/before', 'mail/order/alert', 1, 0),
(23, 'statistics_review_add', 'catalog/model/catalog/review/addReview/after', 'event/statistics/addReview', 1, 0),
(24, 'statistics_return_add', 'catalog/model/account/return/addReturn/after', 'event/statistics/addReturn', 1, 0),
(25, 'statistics_order_history', 'catalog/model/checkout/order/addOrderHistory/after', 'event/statistics/addOrderHistory', 1, 0),
(26, 'admin_mail_affiliate_approve', 'admin/model/customer/customer_approval/approveAffiliate/after', 'mail/affiliate/approve', 1, 0),
(27, 'admin_mail_affiliate_deny', 'admin/model/customer/customer_approval/denyAffiliate/after', 'mail/affiliate/deny', 1, 0),
(28, 'admin_mail_customer_approve', 'admin/model/customer/customer_approval/approveCustomer/after', 'mail/customer/approve', 1, 0),
(29, 'admin_mail_customer_deny', 'admin/model/customer/customer_approval/denyCustomer/after', 'mail/customer/deny', 1, 0),
(30, 'admin_mail_reward', 'admin/model/customer/customer/addReward/after', 'mail/reward', 1, 0),
(31, 'admin_mail_transaction', 'admin/model/customer/customer/addTransaction/after', 'mail/transaction', 1, 0),
(32, 'admin_mail_return', 'admin/model/sale/return/addReturn/after', 'mail/return', 1, 0),
(33, 'admin_mail_forgotten', 'admin/model/user/user/editCode/after', 'mail/forgotten', 1, 0),
(34, 'advertise_google', 'admin/model/catalog/product/deleteProduct/after', 'extension/advertise/google/deleteProduct', 1, 0),
(35, 'advertise_google', 'admin/model/catalog/product/copyProduct/after', 'extension/advertise/google/copyProduct', 1, 0),
(36, 'advertise_google', 'admin/view/common/column_left/before', 'extension/advertise/google/admin_link', 1, 0),
(37, 'advertise_google', 'admin/model/catalog/product/addProduct/after', 'extension/advertise/google/addProduct', 1, 0),
(38, 'advertise_google', 'catalog/controller/checkout/success/before', 'extension/advertise/google/before_checkout_success', 1, 0),
(39, 'advertise_google', 'catalog/view/common/header/after', 'extension/advertise/google/google_global_site_tag', 1, 0),
(40, 'advertise_google', 'catalog/view/common/success/after', 'extension/advertise/google/google_dynamic_remarketing_purchase', 1, 0),
(41, 'advertise_google', 'catalog/view/product/product/after', 'extension/advertise/google/google_dynamic_remarketing_product', 1, 0),
(42, 'advertise_google', 'catalog/view/product/search/after', 'extension/advertise/google/google_dynamic_remarketing_searchresults', 1, 0),
(43, 'advertise_google', 'catalog/view/product/category/after', 'extension/advertise/google/google_dynamic_remarketing_category', 1, 0),
(44, 'advertise_google', 'catalog/view/common/home/after', 'extension/advertise/google/google_dynamic_remarketing_home', 1, 0),
(45, 'advertise_google', 'catalog/view/checkout/cart/after', 'extension/advertise/google/google_dynamic_remarketing_cart', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'theme', 'default'),
(21, 'dashboard', 'activity'),
(22, 'dashboard', 'sale'),
(23, 'dashboard', 'recent'),
(24, 'dashboard', 'order'),
(25, 'dashboard', 'online'),
(26, 'dashboard', 'map'),
(27, 'dashboard', 'customer'),
(28, 'dashboard', 'chart'),
(29, 'report', 'sale_coupon'),
(31, 'report', 'customer_search'),
(32, 'report', 'customer_transaction'),
(33, 'report', 'product_purchased'),
(34, 'report', 'product_viewed'),
(35, 'report', 'sale_return'),
(36, 'report', 'sale_order'),
(37, 'report', 'sale_shipping'),
(38, 'report', 'sale_tax'),
(39, 'report', 'customer_activity'),
(40, 'report', 'customer_order'),
(41, 'report', 'customer_reward'),
(42, 'advertise', 'google'),
(43, 'module', 'browser_notification');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension_install`
--

INSERT INTO `oc_extension_install` (`extension_install_id`, `extension_download_id`, `filename`, `date_added`) VALUES
(1, 0, 'browser notification-3x.ocmod.zip', '2020-09-21 11:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension_path`
--

INSERT INTO `oc_extension_path` (`extension_path_id`, `extension_install_id`, `path`, `date_added`) VALUES
(1, 1, 'admin/model/extension/module', '2020-09-21 11:27:58'),
(2, 1, 'admin/controller/extension/module/browser_notification.php', '2020-09-21 11:27:58'),
(3, 1, 'admin/model/extension/module/browser_notification.php', '2020-09-21 11:27:58'),
(4, 1, 'catalog/controller/extension/module/browser_notification.php', '2020-09-21 11:27:58'),
(5, 1, 'catalog/model/extension/module/browser_notification.php', '2020-09-21 11:27:58'),
(6, 1, 'admin/language/en-gb/extension/module/browser_notification.php', '2020-09-21 11:27:58'),
(7, 1, 'admin/view/template/extension/module/browser_notification_send.twig', '2020-09-21 11:27:58'),
(8, 1, 'admin/view/template/extension/module/browser_notification.twig', '2020-09-21 11:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_added`, `date_modified`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2009-01-06 23:26:25', '2010-02-26 22:33:24'),
(4, 'UK Shipping', 'UK Shipping Zones', '2009-06-23 01:14:53', '2010-12-15 15:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_category`
--

CREATE TABLE `oc_googleshopping_category` (
  `google_product_category` varchar(10) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product`
--

CREATE TABLE `oc_googleshopping_product` (
  `product_advertise_google_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `has_issues` tinyint(1) DEFAULT NULL,
  `destination_status` enum('pending','approved','disapproved') NOT NULL DEFAULT 'pending',
  `impressions` int(11) NOT NULL DEFAULT 0,
  `clicks` int(11) NOT NULL DEFAULT 0,
  `conversions` int(11) NOT NULL DEFAULT 0,
  `cost` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `conversion_value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `google_product_category` varchar(10) DEFAULT NULL,
  `condition` enum('new','refurbished','used') DEFAULT NULL,
  `adult` tinyint(1) DEFAULT NULL,
  `multipack` int(11) DEFAULT NULL,
  `is_bundle` tinyint(1) DEFAULT NULL,
  `age_group` enum('newborn','infant','toddler','kids','adult') DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `gender` enum('male','female','unisex') DEFAULT NULL,
  `size_type` enum('regular','petite','plus','big and tall','maternity') DEFAULT NULL,
  `size_system` enum('AU','BR','CN','DE','EU','FR','IT','JP','MEX','UK','US') DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `is_modified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product_status`
--

CREATE TABLE `oc_googleshopping_product_status` (
  `product_id` int(11) NOT NULL DEFAULT 0,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `product_variation_id` varchar(64) NOT NULL DEFAULT '',
  `destination_statuses` text NOT NULL,
  `data_quality_issues` text NOT NULL,
  `item_level_issues` text NOT NULL,
  `google_expiration_date` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_product_target`
--

CREATE TABLE `oc_googleshopping_product_target` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_googleshopping_target`
--

CREATE TABLE `oc_googleshopping_target` (
  `advertise_google_target_id` int(11) UNSIGNED NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `campaign_name` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(2) NOT NULL DEFAULT '',
  `budget` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `feeds` text NOT NULL,
  `status` enum('paused','active') NOT NULL DEFAULT 'paused',
  `date_added` date DEFAULT NULL,
  `roas` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT 0,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'About Us', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Terms &amp; Conditions', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Privacy Policy', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Delivery Information', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en-gb', 'en-US,en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'account', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(67, 1, 'carousel.29', 'content_top', 3),
(66, 1, 'slideshow.27', 'content_top', 1),
(65, 1, 'featured.28', 'content_top', 2),
(72, 3, 'category', 'column_left', 1),
(73, 3, 'banner.30', 'column_left', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(44, 3, 0, 'product/category'),
(42, 1, 0, 'common/home'),
(20, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `extension_install_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(1, 1, 'Web Push Notification', 'browser-notification-fx', 'RajinderChoudhary', '1.0', 'https://www.opencart.com/index.php?route=marketplace/extension\"filter_member=rajinder4981', '<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<modification>\r\n	<name>Web Push Notification</name>\r\n	<version>1.0</version>\r\n	<author>RajinderChoudhary</author>\r\n	<link>https://www.opencart.com/index.php?route=marketplace/extension&quot;filter_member=rajinder4981</link>\r\n	<code>browser-notification-fx</code>\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n		<search><![CDATA[\r\n			public function index() {\r\n			]]></search>\r\n			<add position=\"after\" ><![CDATA[\r\n		// Web Push Notification code start from here\r\n\r\n		$data[\'apiKey\']             = $this->config->get(\'module_browser_notification_apiKey\');\r\n		$data[\'authDomain\']         = $this->config->get(\'module_browser_notification_authDomain\');\r\n		$data[\'databaseURL\']        = $this->config->get(\'module_browser_notification_databaseURL\');\r\n		$data[\'storageBucket\']      = $this->config->get(\'module_browser_notification_storageBucket\');\r\n		$data[\'messagingSenderId\']  = $this->config->get(\'module_browser_notification_messagingSenderId\');\r\n	\r\n		// Web Push Notification code end here\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/view/theme/*/template/common/header.twig\">\r\n		<operation>\r\n		<search><![CDATA[\r\n			</head>\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				{# Web Push Notification code start from here #}\r\n				<script src=\"https://www.gstatic.com/firebasejs/4.6.2/firebase.js\"></script>\r\n				<script>  \r\n					var config = {\r\n						apiKey: \"{{apiKey}}\",\r\n						authDomain: \"{{authDomain}}\",\r\n						databaseURL: \"{{databaseURL}}\",\r\n						storageBucket: \"{{storageBucket}}\",\r\n						messagingSenderId: \"{{messagingSenderId}}\",\r\n					};\r\n					firebase.initializeApp(config);\r\n\r\n					const messaging = firebase.messaging();\r\n					messaging\r\n						.requestPermission()\r\n						.then(function () {\r\n							return messaging.getToken()\r\n						})\r\n						.then(function(token) {\r\n							$.ajax({\r\n							url: \"index.php?route=extension/module/browser_notification/setToken\", \r\n							type: \'POST\',\r\n							data: {token: token},\r\n							success: function(response){}\r\n							});\r\n						})\r\n						.catch(function (err) {\r\n							console.log(\"Unable to get permission to notify.\", err);\r\n						});\r\n\r\n					messaging.onMessage(function(payload) {\r\n						\r\n						$(document).ready(function(){\r\n\r\n							$(\"#fcm-title\").html(payload.notification.title);\r\n							$(\"#fcm-message\").html(payload.notification.body);\r\n							if(payload.notification.click_action != \'\'){\r\n								$(\"#fcm-action\").html(\"Click <a target=\'_blank\' href=\'\"+payload.notification.click_action+\"\'>here</a> to know more\");\r\n							}else{\r\n								$(\"#fcm-action\").html(\"\");\r\n							}\r\n							$(\"#fcm-modal\").modal(\"show\");\r\n						});\r\n					});\r\n\r\n					messaging.onTokenRefresh(() => {\r\n					messaging.getToken().then((refreshedToken) => {\r\n						$.ajax({\r\n							url: \"index.php?route=extension/module/browser_notification/setToken\", \r\n							type: \'POST\',\r\n							data: {token: refreshedToken},\r\n							success: function(response){}\r\n						});\r\n					}).catch((err) => {\r\n						console.log(\'Unable to retrieve refreshed token \', err);\r\n					});\r\n					});\r\n				</script>\r\n				{# Web Push Notification code end here #}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n    <file path=\"admin/controller/common/column_left.php\">\r\n		<operation>\r\n		<search><![CDATA[\r\n			$system = array();\r\n			]]></search>\r\n			<add position=\"before\" offset=\"3\"><![CDATA[\r\n				$data[\'menus\'][] = array(\r\n				\'id\'       => \'menu-browser-notification\',\r\n				\'icon\'	   => \'fa-bell\',\r\n				\'name\'	   => \'Web Push Notification\',\r\n				\'href\'     => $this->url->link(\'extension/module/browser_notification/send\', \'user_token=\' . $this->session->data[\'user_token\'], true),\r\n				\'children\' => array()\r\n			);\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/view/theme/*/template/common/footer.twig\">\r\n		<operation>\r\n		<search><![CDATA[\r\n			</body>\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				<div id=\"fcm-modal\" class=\"modal fade\" role=\"dialog\">\r\n					<div class=\"modal-dialog\">\r\n						<div class=\"modal-content\">\r\n							<div class=\"modal-header\">\r\n								<button type=\"button\" class=\"close\" data-dismiss=\"modal\">&times;</button>\r\n								<h4 id=\"fcm-title\" class=\"modal-title\"></h4>\r\n							</div>\r\n							<div class=\"modal-body\">\r\n								<p id=\"fcm-message\"></p><br/>\r\n								<p id=\"fcm-action\"></p>\r\n							</div>\r\n							<div class=\"modal-footer\">\r\n								<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">Close</button>\r\n							</div>\r\n						</div>\r\n					</div>\r\n				</div>\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2020-09-21 11:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{\"name\":\"Category\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}'),
(29, 'Home Page', 'carousel', '{\"name\":\"Home Page\",\"banner_id\":\"8\",\"width\":\"130\",\"height\":\"100\",\"status\":\"1\"}'),
(28, 'Home Page', 'featured', '{\"name\":\"Home Page\",\"product\":[\"43\",\"40\",\"42\",\"30\"],\"limit\":\"4\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(27, 'Home Page', 'slideshow', '{\"name\":\"Home Page\",\"banner_id\":\"7\",\"width\":\"1140\",\"height\":\"380\",\"status\":\"1\"}'),
(31, 'Banner 1', 'banner', '{\"name\":\"Banner 1\",\"banner_id\":\"6\",\"width\":\"182\",\"height\":\"182\",\"status\":\"1\"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT 0,
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(60) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `order_status_id` int(11) NOT NULL DEFAULT 0,
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT 1.00000000,
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT 0,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `tax` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `points` int(8) NOT NULL DEFAULT 0,
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `weight_class_id` int(11) NOT NULL DEFAULT 0,
  `length` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `width` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `height` decimal(15,8) NOT NULL DEFAULT 0.00000000,
  `length_class_id` int(11) NOT NULL DEFAULT 0,
  `subtract` tinyint(1) NOT NULL DEFAULT 1,
  `minimum` int(11) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `viewed` int(5) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'Product 1', '', '', '', '', '', '', '', 939, 7, 'catalog/demo/htc_touch_hd_1.jpg', 5, 1, '100.0000', 200, 9, '2009-02-03', '146.40000000', 2, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:06:50', '2011-09-30 01:05:39'),
(29, 'Product 2', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/palm_treo_pro_1.jpg', 6, 1, '279.9900', 0, 9, '2009-02-03', '133.00000000', 2, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 16:42:17', '2011-09-30 01:06:08'),
(30, 'Product 3', '', '', '', '', '', '', '', 7, 6, 'catalog/demo/canon_eos_5d_1.jpg', 9, 1, '100.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 16:59:00', '2011-09-30 01:05:23'),
(31, 'Product 4', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/nikon_d300_1.jpg', 0, 1, '80.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 3, 1, 1, 0, 1, 0, '2009-02-03 17:00:10', '2011-09-30 01:06:00'),
(32, 'Product 5', '', '', '', '', '', '', '', 999, 6, 'catalog/demo/ipod_touch_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 17:07:26', '2011-09-30 01:07:22'),
(33, 'Product 6', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/samsung_syncmaster_941bw.jpg', 0, 1, '200.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 17:08:31', '2011-09-30 01:06:29'),
(34, 'Product 7', '', '', '', '', '', '', '', 1000, 6, 'catalog/demo/ipod_shuffle_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:07:54', '2011-09-30 01:07:17'),
(35, 'Product 8', '', '', '', '', '', '', '', 1000, 5, '', 0, 0, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 18:08:31', '2011-09-30 01:06:17'),
(36, 'Product 9', '', '', '', '', '', '', '', 994, 6, 'catalog/demo/ipod_nano_1.jpg', 8, 0, '100.0000', 100, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 18:09:19', '2011-09-30 01:07:12'),
(40, 'product 11', '', '', '', '', '', '', '', 970, 5, 'catalog/demo/iphone_1.jpg', 8, 1, '101.0000', 0, 9, '2009-02-03', '10.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:12', '2011-09-30 01:06:53'),
(41, 'Product 14', '', '', '', '', '', '', '', 977, 5, 'catalog/demo/imac_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-03', '5.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 0, 1, 0, '2009-02-03 21:07:26', '2011-09-30 01:06:44'),
(42, 'Product 15', '', '', '', '', '', '', '', 990, 5, 'catalog/demo/apple_cinema_30.jpg', 8, 1, '100.0000', 400, 9, '2009-02-04', '12.50000000', 1, '1.00000000', '2.00000000', '3.00000000', 1, 1, 2, 0, 1, 0, '2009-02-03 21:07:37', '2011-09-30 00:46:19'),
(43, 'Product 16', '', '', '', '', '', '', '', 929, 5, 'catalog/demo/macbook_1.jpg', 8, 0, '500.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:07:49', '2011-09-30 01:05:46'),
(44, 'Product 17', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/macbook_air_1.jpg', 8, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:00', '2011-09-30 01:05:53'),
(45, 'Product 18', '', '', '', '', '', '', '', 998, 5, 'catalog/demo/macbook_pro_1.jpg', 8, 1, '2000.0000', 0, 100, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:17', '2011-09-15 22:22:01'),
(46, 'Product 19', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/sony_vaio_1.jpg', 10, 1, '1000.0000', 0, 9, '2009-02-03', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-03 21:08:29', '2011-09-30 01:06:39'),
(47, 'Product 21', '', '', '', '', '', '', '', 1000, 5, 'catalog/demo/hp_1.jpg', 7, 1, '100.0000', 400, 9, '2009-02-03', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 0, 1, 0, 1, 0, '2009-02-03 21:08:40', '2011-09-30 01:05:28'),
(48, 'product 20', 'test 1', '', '', '', '', '', 'test 2', 995, 5, 'catalog/demo/ipod_classic_1.jpg', 8, 1, '100.0000', 0, 9, '2009-02-08', '1.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 2, 1, 1, 0, 1, 0, '2009-02-08 17:21:51', '2011-09-30 01:07:06'),
(49, 'SAM1', '', '', '', '', '', '', '', 0, 8, 'catalog/demo/samsung_tab_1.jpg', 0, 1, '199.9900', 0, 9, '2011-04-25', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2011-04-26 08:57:34', '2011-09-30 01:06:23');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(43, 2, 1, '1'),
(47, 4, 1, '16GB'),
(43, 4, 1, '8gb'),
(42, 3, 1, '100mhz'),
(47, 2, 1, '4');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(35, 1, 'Product 8', '&lt;p&gt;\r\n	Product 8&lt;/p&gt;\r\n', '', 'Product 8', '', ''),
(48, 1, 'iPod Classic', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;More room to move.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			With 80GB or 160GB of storage and up to 40 hours of battery life, the new iPod classic lets you enjoy up to 40,000 songs or up to 200 hours of video or any combination wherever you go.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;strong&gt;Sleeker design.&lt;/strong&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Beautiful, durable, and sleeker than ever, iPod classic now features an anodized aluminum and polished stainless steel enclosure with rounded edges.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'iPod Classic', '', ''),
(40, 1, 'iPhone', '&lt;p class=&quot;intro&quot;&gt;\r\n	iPhone is a revolutionary new mobile phone that allows you to make a call by simply tapping a name or number in your address book, a favorites list, or a call log. It also automatically syncs all your contacts from a PC, Mac, or Internet service. And it lets you select and listen to voicemail messages in whatever order you want just like email.&lt;/p&gt;\r\n', '', 'iPhone', '', ''),
(28, 1, 'HTC Touch HD', '&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&amp;quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm&amp;reg; MSM 7201A&amp;trade; 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO&amp;trade; 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth&amp;reg; 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi&amp;reg;: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB&amp;trade; (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD&amp;trade; memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', '	 HTC Touch HD', '', ''),
(44, 1, 'MacBook Air', '&lt;div&gt;\r\n	MacBook Air is ultrathin, ultraportable, and ultra unlike anything else. But you don&amp;rsquo;t lose inches and pounds overnight. It&amp;rsquo;s the result of rethinking conventions. Of multiple wireless innovations. And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.&lt;/div&gt;\r\n', '', 'MacBook Air', '', ''),
(45, 1, 'MacBook Pro', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Latest Intel mobile architecture&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Powered by the most advanced mobile processors from Intel, the new Core 2 Duo MacBook Pro is over 50% faster than the original Core Duo MacBook Pro and now supports up to 4GB of RAM.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Leading-edge graphics&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			The NVIDIA GeForce 8600M GT delivers exceptional graphics processing power. For the ultimate creative canvas, you can even configure the 17-inch model with a 1920-by-1200 resolution display.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Designed for life on the road&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Innovations such as a magnetic power connection and an illuminated keyboard with ambient light sensor put the MacBook Pro in a class by itself.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Connect. Create. Communicate.&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Quickly set up a video conference with the built-in iSight camera. Control presentations and media from up to 30 feet away with the included Apple Remote. Connect to high-bandwidth peripherals with FireWire 800 and DVI.&lt;/p&gt;\r\n		&lt;p&gt;\r\n			&lt;b&gt;Next-generation wireless&lt;/b&gt;&lt;/p&gt;\r\n		&lt;p&gt;\r\n			Featuring 802.11n wireless technology, the MacBook Pro delivers up to five times the performance and up to twice the range of previous-generation technologies.&lt;/p&gt;\r\n	&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'MacBook Pro', '', ''),
(29, 1, 'Palm Treo Pro', '&lt;p&gt;\r\n	Redefine your workday with the Palm Treo Pro smartphone. Perfectly balanced, you can respond to business and personal email, stay on top of appointments and contacts, and use Wi-Fi or GPS when you&amp;rsquo;re out and about. Then watch a video on YouTube, catch up with news and sports on the web, or listen to a few songs. Balance your work and play the way you like it, with the Palm Treo Pro.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile&amp;reg; 6.1 Professional Edition&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Qualcomm&amp;reg; MSM7201 400MHz Processor&lt;/li&gt;\r\n	&lt;li&gt;\r\n		320x320 transflective colour TFT touchscreen&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/UMTS/EDGE/GPRS/GSM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Tri-band UMTS &amp;mdash; 850MHz, 1900MHz, 2100MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM &amp;mdash; 850/900/1800/1900&lt;/li&gt;\r\n	&lt;li&gt;\r\n		802.11b/g with WPA, WPA2, and 801.1x authentication&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in GPS&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth Version: 2.0 + Enhanced Data Rate&lt;/li&gt;\r\n	&lt;li&gt;\r\n		256MB storage (100MB user available), 128MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2.0 megapixel camera, up to 8x digital zoom and video capture&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Removable, rechargeable 1500mAh lithium-ion battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Up to 5.0 hours talk time and up to 250 hours standby&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroSDHC card expansion (up to 32GB supported)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MicroUSB 2.0 for synchronization and charging&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.5mm stereo headset jack&lt;/li&gt;\r\n	&lt;li&gt;\r\n		60mm (W) x 114mm (L) x 13.5mm (D) / 133g&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Palm Treo Pro', '', ''),
(36, 1, 'iPod Nano', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Video in your pocket.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Its the small iPod with one very big idea: video. The worlds most popular music player now lets you enjoy movies, TV shows, and more on a two-inch display thats 65% brighter than before.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Cover Flow.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Browse through your music collection by flipping through album art. Select an album to turn it over and see the track list.&lt;strong&gt;&amp;nbsp;&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Enhanced interface.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Experience a whole new way to browse and view your music and video.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Sleek and colorful.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With an anodized aluminum and polished stainless steel enclosure and a choice of five colors, iPod nano is dressed to impress.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;iTunes.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Available as a free download, iTunes makes it easy to browse and buy millions of songs, movies, TV shows, audiobooks, and games and download free podcasts all at the iTunes Store. And you can import your own music, manage your whole media library, and sync your iPod or iPhone with ease.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Nano', '', ''),
(46, 1, 'Sony VAIO', '&lt;div&gt;\r\n	Unprecedented power. The next generation of processing technology has arrived. Built into the newest VAIO notebooks lies Intel&amp;#39;s latest, most powerful innovation yet: Intel&amp;reg; Centrino&amp;reg; 2 processor technology. Boasting incredible speed, expanded wireless connectivity, enhanced multimedia support and greater energy efficiency, all the high-performance essentials are seamlessly combined into a single chip.&lt;/div&gt;\r\n', '', 'Sony VAIO', '', ''),
(47, 1, 'HP LP3065', '&lt;p&gt;\r\n	Stop your co-workers in their tracks with the stunning new 30-inch diagonal HP LP3065 Flat Panel Monitor. This flagship monitor features best-in-class performance and presentation features on a huge wide-aspect screen while letting you work as comfortably as possible - you might even forget you&amp;#39;re at the office&lt;/p&gt;\r\n', '', 'HP LP3065', '', ''),
(32, 1, 'iPod Touch', '&lt;p&gt;\r\n	&lt;strong&gt;Revolutionary multi-touch interface.&lt;/strong&gt;&lt;br /&gt;\r\n	iPod touch features the same multi-touch screen technology as iPhone. Pinch to zoom in on a photo. Scroll through your songs and videos with a flick. Flip through your library by album artwork with Cover Flow.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Gorgeous 3.5-inch widescreen display.&lt;/strong&gt;&lt;br /&gt;\r\n	Watch your movies, TV shows, and photos come alive with bright, vivid color on the 320-by-480-pixel display.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Music downloads straight from iTunes.&lt;/strong&gt;&lt;br /&gt;\r\n	Shop the iTunes Wi-Fi Music Store from anywhere with Wi-Fi.1 Browse or search to find the music youre looking for, preview it, and buy it with just a tap.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Surf the web with Wi-Fi.&lt;/strong&gt;&lt;br /&gt;\r\n	Browse the web using Safari and watch YouTube videos on the first iPod with Wi-Fi built in&lt;br /&gt;\r\n	&amp;nbsp;&lt;/p&gt;\r\n', '', '	 iPod Touch', '', ''),
(41, 1, 'iMac', '&lt;div&gt;\r\n	Just when you thought iMac had everything, now there&acute;s even more. More powerful Intel Core 2 Duo processors. And more memory standard. Combine this with Mac OS X Leopard and iLife &acute;08, and it&acute;s more all-in-one than ever. iMac packs amazing performance into a stunningly slim space.&lt;/div&gt;\r\n', '', 'iMac', '', ''),
(33, 1, 'Samsung SyncMaster 941BW', '&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&amp;quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it&amp;#39;s not hard to imagine.&lt;/div&gt;\r\n', '', 'Samsung SyncMaster 941BW', '', ''),
(34, 1, 'iPod Shuffle', '&lt;div&gt;\r\n	&lt;strong&gt;Born to be worn.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Clip on the worlds most wearable music player and take up to 240 songs with you anywhere. Choose from five colors including four new hues to make your musical fashion statement.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;strong&gt;Random meets rhythm.&lt;/strong&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		With iTunes autofill, iPod shuffle can deliver a new musical experience every time you sync. For more randomness, you can shuffle songs during playback with the slide of a switch.&lt;/p&gt;\r\n	&lt;strong&gt;Everything is easy.&lt;/strong&gt;\r\n	&lt;p&gt;\r\n		Charge and sync with the included USB dock. Operate the iPod shuffle controls with one hand. Enjoy up to 12 hours straight of skip-free music playback.&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'iPod Shuffle', '', ''),
(43, 1, 'MacBook', '&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n', '', 'MacBook', '', ''),
(31, 1, 'Nikon D300', '&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon&amp;#39;s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		Similar to the D3, the D300 features Nikon&amp;#39;s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera&amp;#39;s new features. The D300 features a new 51-point autofocus system with Nikon&amp;#39;s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera&amp;#39;s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br /&gt;\r\n		&lt;br /&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon&amp;#39;s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;', '', 'Nikon D300', '', ''),
(49, 1, 'Samsung Galaxy Tab 10.1', '&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1, is the world&amp;rsquo;s thinnest tablet, measuring 8.6 mm thickness, running with Android 3.0 Honeycomb OS on a 1GHz dual-core Tegra 2 processor, similar to its younger brother Samsung Galaxy Tab 8.9.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 gives pure Android 3.0 experience, adding its new TouchWiz UX or TouchWiz 4.0 &amp;ndash; includes a live panel, which lets you to customize with different content, such as your pictures, bookmarks, and social feeds, sporting a 10.1 inches WXGA capacitive touch screen with 1280 x 800 pixels of resolution, equipped with 3 megapixel rear camera with LED flash and a 2 megapixel front camera, HSPA+ connectivity up to 21Mbps, 720p HD video recording capability, 1080p HD playback, DLNA support, Bluetooth 2.1, USB 2.0, gyroscope, Wi-Fi 802.11 a/b/g/n, micro-SD slot, 3.5mm headphone jack, and SIM slot, including the Samsung Stick &amp;ndash; a Bluetooth microphone that can be carried in a pocket like a pen and sound dock with powered subwoofer.&lt;/p&gt;\r\n&lt;p&gt;\r\n	Samsung Galaxy Tab 10.1 will come in 16GB / 32GB / 64GB verities and pre-loaded with Social Hub, Reader&amp;rsquo;s Hub, Music Hub and Samsung Mini Apps Tray &amp;ndash; which gives you access to more commonly used apps to help ease multitasking and it is capable of Adobe Flash Player 10.2, powered by 6860mAh battery that gives you 10hours of video-playback time.&amp;nbsp;&amp;auml;&amp;ouml;&lt;/p&gt;\r\n', '', 'Samsung Galaxy Tab 10.1', '', ''),
(42, 1, 'Apple Cinema 30&quot;', '&lt;p&gt;\r\n	&lt;font face=&quot;helvetica,geneva,arial&quot; size=&quot;2&quot;&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The 30-inch Apple Cinema HD Display delivers an amazing 2560 x 1600 pixel resolution. Designed specifically for the creative professional, this display provides more space for easier access to all the tools and palettes needed to edit, format and composite your work. Combine this display with a Mac Pro, MacBook Pro, or PowerMac G5 and there\'s no limit to what you can achieve. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features an active-matrix liquid crystal display that produces flicker-free images that deliver twice the brightness, twice the sharpness and twice the contrast ratio of a typical CRT display. Unlike other flat panels, it\'s designed with a pure digital interface to deliver distortion-free images that never need adjusting. With over 4 million digital pixels, the display is uniquely suited for scientific and technical applications such as visualizing molecular structures or analyzing geological data. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Offering accurate, brilliant color performance, the Cinema HD delivers up to 16.7 million colors across a wide gamut allowing you to see subtle nuances between colors from soft pastels to rich jewel tones. A wide viewing angle ensures uniform color from edge to edge. Apple\'s ColorSync technology allows you to create custom profiles to maintain consistent color onscreen and in print. The result: You can confidently use this display in all your color-critical applications. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;Housed in a new aluminum design, the display has a very thin bezel that enhances visual accuracy. Each display features two FireWire 400 ports and two USB 2.0 ports, making attachment of desktop peripherals, such as iSight, iPod, digital and still cameras, hard drives, printers and scanners, even more accessible and convenient. Taking advantage of the much thinner and lighter footprint of an LCD, the new displays support the VESA (Video Electronics Standards Association) mounting interface standard. Customers with the optional Cinema Display VESA Mount Adapter kit gain the flexibility to mount their display in locations most appropriate for their work environment. &lt;br&gt;\r\n	&lt;br&gt;\r\n	&lt;/font&gt;&lt;font face=&quot;Helvetica&quot; size=&quot;2&quot;&gt;The Cinema HD features a single cable design with elegant breakout for the USB 2.0, FireWire 400 and a pure digital connection using the industry standard Digital Video Interface (DVI) interface. The DVI connection allows for a direct pure-digital connection.&lt;br&gt;\r\n	&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n&lt;h3&gt;\r\n	Features:&lt;/h3&gt;\r\n&lt;p&gt;\r\n	Unrivaled display performance&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch (viewable) active-matrix liquid crystal display provides breathtaking image quality and vivid, richly saturated color.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 2560-by-1600 pixel resolution for display of high definition still and video imagery.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wide-format design for simultaneous display of two full pages of text and graphics.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Industry standard DVI connector for direct attachment to Mac- and Windows-based desktops and notebooks&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Incredibly wide (170 degree) horizontal and vertical viewing angle for maximum visibility and color performance.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Lightning-fast pixel response for full-motion digital video playback.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for 16.7 million saturated colors, for use in all graphics-intensive applications.&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Simple setup and operation&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Single cable with elegant breakout for connection to DVI, USB and FireWire ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in two-port USB 2.0 hub for easy connection of desktop peripheral devices.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports to support iSight and other desktop peripherals&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Sleek, elegant design&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Huge virtual workspace, very small footprint.&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Narrow Bezel design to minimize visual impact of using dual displays&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Unique hinge design for effortless adjustment&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Support for VESA mounting solutions (Apple Cinema Display VESA Mount Adapter sold separately)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;h3&gt;\r\n	Technical specifications&lt;/h3&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen size (diagonal viewable image size)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Apple Cinema HD Display: 30 inches (29.7-inch viewable)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen type&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Thin film transistor (TFT) active-matrix liquid crystal display (AMLCD)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Resolutions&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		2560 x 1600 pixels (optimum resolution)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		2048 x 1280&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1920 x 1200&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1280 x 800&lt;/li&gt;\r\n	&lt;li&gt;\r\n		1024 x 640&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Display colors (maximum)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16.7 million&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Viewing angle (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		170° horizontal; 170° vertical&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Brightness (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 400 cd/m2&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Contrast ratio (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		700:1&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Response time (typical)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		16 ms&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Pixel pitch&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		30-inch Cinema HD Display: 0.250 mm&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Screen treatment&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Antiglare hardcoat&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;User controls (hardware and software)&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Display Power,&lt;/li&gt;\r\n	&lt;li&gt;\r\n		System sleep, wake&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Brightness&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Monitor tilt&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Connectors and cables&lt;/b&gt;&lt;br&gt;\r\n	Cable&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		DVI (Digital Visual Interface)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		FireWire 400&lt;/li&gt;\r\n	&lt;li&gt;\r\n		USB 2.0&lt;/li&gt;\r\n	&lt;li&gt;\r\n		DC power (24 V)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	Connectors&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Two-port, self-powered USB 2.0 hub&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Two FireWire 400 ports&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Kensington security port&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;VESA mount adapter&lt;/b&gt;&lt;br&gt;\r\n	Requires optional Cinema Display VESA Mount Adapter (M9649G/A)&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Compatible with VESA FDMI (MIS-D, 100, C) compliant mounting solutions&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Electrical requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Input voltage: 100-240 VAC 50-60Hz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum power when operating: 150W&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Energy saver mode: 3W or less&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Environmental requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Operating temperature: 50° to 95° F (10° to 35° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Storage temperature: -40° to 116° F (-40° to 47° C)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Operating humidity: 20% to 80% noncondensing&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Maximum operating altitude: 10,000 feet&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Agency approvals&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		FCC Part 15 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55022 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN55024&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VCCI Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AS/NZS 3548 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CNS 13438 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ICES-003 Class B&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ISO 13406 part 2&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MPR II&lt;/li&gt;\r\n	&lt;li&gt;\r\n		IEC 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		UL 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		CSA 60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		EN60950&lt;/li&gt;\r\n	&lt;li&gt;\r\n		ENERGY STAR&lt;/li&gt;\r\n	&lt;li&gt;\r\n		TCO \'03&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;Size and weight&lt;/b&gt;&lt;br&gt;\r\n	30-inch Apple Cinema HD Display&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Height: 21.3 inches (54.3 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Width: 27.2 inches (68.8 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Depth: 8.46 inches (21.5 cm)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Weight: 27.5 pounds (12.5 kg)&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;\r\n	&lt;b&gt;System Requirements&lt;/b&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Mac Pro, all graphic options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		MacBook Pro&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI-X) with ATI Radeon 9650 or better or NVIDIA GeForce 6800 GT DDL or better&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Power Mac G5 (PCI Express), all graphics options&lt;/li&gt;\r\n	&lt;li&gt;\r\n		PowerBook G4 with dual-link DVI support&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows PC and graphics card that supports DVI ports with dual-link digital bandwidth and VESA DDC standard for plug-and-play setup&lt;/li&gt;\r\n&lt;/ul&gt;\r\n', '', 'Apple Cinema 30', '', ''),
(30, 1, 'Canon EOS 5D', '&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n', '', 'sdf', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT 0,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(440, 42, 1, 30, 1, '66.0000', '0000-00-00', '0000-00-00'),
(439, 42, 1, 20, 1, '77.0000', '0000-00-00', '0000-00-00'),
(438, 42, 1, 10, 1, '88.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2345, 30, 'catalog/demo/canon_eos_5d_2.jpg', 0),
(2321, 47, 'catalog/demo/hp_3.jpg', 0),
(2035, 28, 'catalog/demo/htc_touch_hd_2.jpg', 0),
(2351, 41, 'catalog/demo/imac_3.jpg', 0),
(1982, 40, 'catalog/demo/iphone_6.jpg', 0),
(2001, 36, 'catalog/demo/ipod_nano_5.jpg', 0),
(2000, 36, 'catalog/demo/ipod_nano_4.jpg', 0),
(2005, 34, 'catalog/demo/ipod_shuffle_5.jpg', 0),
(2004, 34, 'catalog/demo/ipod_shuffle_4.jpg', 0),
(2011, 32, 'catalog/demo/ipod_touch_7.jpg', 0),
(2010, 32, 'catalog/demo/ipod_touch_6.jpg', 0),
(2009, 32, 'catalog/demo/ipod_touch_5.jpg', 0),
(1971, 43, 'catalog/demo/macbook_5.jpg', 0),
(1970, 43, 'catalog/demo/macbook_4.jpg', 0),
(1974, 44, 'catalog/demo/macbook_air_4.jpg', 0),
(1973, 44, 'catalog/demo/macbook_air_2.jpg', 0),
(1977, 45, 'catalog/demo/macbook_pro_2.jpg', 0),
(1976, 45, 'catalog/demo/macbook_pro_3.jpg', 0),
(1986, 31, 'catalog/demo/nikon_d300_3.jpg', 0),
(1985, 31, 'catalog/demo/nikon_d300_2.jpg', 0),
(1988, 29, 'catalog/demo/palm_treo_pro_3.jpg', 0),
(1995, 46, 'catalog/demo/sony_vaio_5.jpg', 0),
(1994, 46, 'catalog/demo/sony_vaio_4.jpg', 0),
(1991, 48, 'catalog/demo/ipod_classic_4.jpg', 0),
(1990, 48, 'catalog/demo/ipod_classic_3.jpg', 0),
(1981, 40, 'catalog/demo/iphone_2.jpg', 0),
(1980, 40, 'catalog/demo/iphone_5.jpg', 0),
(2344, 30, 'catalog/demo/canon_eos_5d_3.jpg', 0),
(2320, 47, 'catalog/demo/hp_2.jpg', 0),
(2034, 28, 'catalog/demo/htc_touch_hd_3.jpg', 0),
(2350, 41, 'catalog/demo/imac_2.jpg', 0),
(1979, 40, 'catalog/demo/iphone_3.jpg', 0),
(1978, 40, 'catalog/demo/iphone_4.jpg', 0),
(1989, 48, 'catalog/demo/ipod_classic_2.jpg', 0),
(1999, 36, 'catalog/demo/ipod_nano_2.jpg', 0),
(1998, 36, 'catalog/demo/ipod_nano_3.jpg', 0),
(2003, 34, 'catalog/demo/ipod_shuffle_2.jpg', 0),
(2002, 34, 'catalog/demo/ipod_shuffle_3.jpg', 0),
(2008, 32, 'catalog/demo/ipod_touch_2.jpg', 0),
(2007, 32, 'catalog/demo/ipod_touch_3.jpg', 0),
(2006, 32, 'catalog/demo/ipod_touch_4.jpg', 0),
(1969, 43, 'catalog/demo/macbook_2.jpg', 0),
(1968, 43, 'catalog/demo/macbook_3.jpg', 0),
(1972, 44, 'catalog/demo/macbook_air_3.jpg', 0),
(1975, 45, 'catalog/demo/macbook_pro_4.jpg', 0),
(1984, 31, 'catalog/demo/nikon_d300_4.jpg', 0),
(1983, 31, 'catalog/demo/nikon_d300_5.jpg', 0),
(1987, 29, 'catalog/demo/palm_treo_pro_2.jpg', 0),
(1993, 46, 'catalog/demo/sony_vaio_2.jpg', 0),
(1992, 46, 'catalog/demo/sony_vaio_3.jpg', 0),
(2327, 49, 'catalog/demo/samsung_tab_7.jpg', 0),
(2326, 49, 'catalog/demo/samsung_tab_6.jpg', 0),
(2325, 49, 'catalog/demo/samsung_tab_5.jpg', 0),
(2324, 49, 'catalog/demo/samsung_tab_4.jpg', 0),
(2323, 49, 'catalog/demo/samsung_tab_3.jpg', 0),
(2322, 49, 'catalog/demo/samsung_tab_2.jpg', 0),
(2317, 42, 'catalog/demo/canon_logo.jpg', 0),
(2316, 42, 'catalog/demo/hp_1.jpg', 0),
(2315, 42, 'catalog/demo/compaq_presario.jpg', 0),
(2314, 42, 'catalog/demo/canon_eos_5d_1.jpg', 0),
(2313, 42, 'catalog/demo/canon_eos_5d_2.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(224, 35, 11, '', 1),
(225, 47, 12, '2011-04-22', 1),
(223, 42, 2, '', 1),
(217, 42, 5, '', 1),
(209, 42, 6, '', 1),
(218, 42, 1, '', 1),
(208, 42, 4, 'test', 1),
(219, 42, 8, '2011-02-20', 1),
(222, 42, 7, '', 1),
(221, 42, 9, '22:25', 1),
(220, 42, 10, '2011-02-20 22:25', 1),
(226, 30, 5, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(1, 217, 42, 5, 41, 100, 0, '1.0000', '+', 0, '+', '1.00000000', '+'),
(6, 218, 42, 1, 31, 146, 1, '20.0000', '+', 2, '-', '20.00000000', '+'),
(7, 218, 42, 1, 43, 300, 1, '30.0000', '+', 3, '+', '30.00000000', '+'),
(5, 218, 42, 1, 32, 96, 1, '10.0000', '+', 1, '+', '10.00000000', '+'),
(4, 217, 42, 5, 39, 92, 1, '4.0000', '+', 0, '+', '4.00000000', '+'),
(2, 217, 42, 5, 42, 200, 1, '2.0000', '+', 0, '+', '2.00000000', '+'),
(3, 217, 42, 5, 40, 300, 0, '3.0000', '+', 0, '+', '3.00000000', '+'),
(8, 223, 42, 2, 23, 48, 1, '10.0000', '+', 0, '+', '10.00000000', '+'),
(10, 223, 42, 2, 44, 2696, 1, '30.0000', '+', 0, '+', '30.00000000', '+'),
(9, 223, 42, 2, 24, 194, 1, '20.0000', '+', 0, '+', '20.00000000', '+'),
(11, 223, 42, 2, 45, 3998, 1, '40.0000', '+', 0, '+', '40.00000000', '+'),
(12, 224, 35, 11, 46, 0, 1, '5.0000', '+', 0, '+', '0.00000000', '+'),
(13, 224, 35, 11, 47, 10, 1, '10.0000', '+', 0, '+', '0.00000000', '+'),
(14, 224, 35, 11, 48, 15, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(16, 226, 30, 5, 40, 5, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 226, 30, 5, 39, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(40, 42),
(41, 42),
(42, 40),
(42, 41);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `customer_group_id` int(11) NOT NULL DEFAULT 0,
  `points` int(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(515, 42, 1, 100),
(519, 47, 1, 300),
(379, 28, 1, 400),
(329, 43, 1, 600),
(339, 29, 1, 0),
(343, 48, 1, 0),
(335, 40, 1, 0),
(539, 30, 1, 200),
(331, 44, 1, 700),
(333, 45, 1, 800),
(337, 31, 1, 0),
(425, 35, 1, 0),
(345, 33, 1, 0),
(347, 46, 1, 0),
(545, 41, 1, 0),
(351, 36, 1, 0),
(353, 34, 1, 0),
(355, 32, 1, 0),
(521, 49, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1,
  `price` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(419, 42, 1, 1, '90.0000', '0000-00-00', '0000-00-00'),
(439, 30, 1, 2, '90.0000', '0000-00-00', '0000-00-00'),
(438, 30, 1, 1, '80.0000', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 20),
(28, 24),
(29, 20),
(29, 24),
(30, 20),
(30, 33),
(31, 33),
(32, 34),
(33, 20),
(33, 28),
(34, 34),
(35, 20),
(36, 34),
(40, 20),
(40, 24),
(41, 27),
(42, 20),
(42, 28),
(43, 18),
(43, 20),
(44, 18),
(44, 20),
(45, 18),
(46, 18),
(46, 20),
(47, 18),
(47, 20),
(48, 20),
(48, 34),
(49, 57);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_purpletree_vendor_stores`
--

CREATE TABLE `oc_purpletree_vendor_stores` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `store_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `store_logo` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `store_email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `store_phone` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `store_banner` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `document` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `store_description` text COLLATE utf8_unicode_ci NOT NULL,
  `store_address` text COLLATE utf8_unicode_ci NOT NULL,
  `store_city` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `store_country` int(11) NOT NULL,
  `store_state` int(11) NOT NULL,
  `store_zipcode` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `store_shipping_policy` text COLLATE utf8_unicode_ci NOT NULL,
  `store_return_policy` text COLLATE utf8_unicode_ci NOT NULL,
  `store_meta_keywords` text COLLATE utf8_unicode_ci NOT NULL,
  `store_meta_descriptions` text COLLATE utf8_unicode_ci NOT NULL,
  `store_bank_details` varchar(356) COLLATE utf8_unicode_ci NOT NULL,
  `store_tin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `store_shipping_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `store_shipping_order_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `store_shipping_charge` decimal(6,2) NOT NULL,
  `store_live_chat_enable` tinyint(1) NOT NULL,
  `store_live_chat_code` text COLLATE utf8_unicode_ci NOT NULL,
  `store_status` tinyint(1) NOT NULL,
  `store_commission` float(6,4) DEFAULT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `store_created_at` date NOT NULL,
  `store_updated_at` date NOT NULL,
  `seller_paypal_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `multi_store_id` int(11) NOT NULL,
  `role` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `oc_purpletree_vendor_stores`
--

INSERT INTO `oc_purpletree_vendor_stores` (`id`, `seller_id`, `store_name`, `store_logo`, `store_email`, `store_phone`, `store_banner`, `document`, `store_description`, `store_address`, `store_city`, `store_country`, `store_state`, `store_zipcode`, `store_shipping_policy`, `store_return_policy`, `store_meta_keywords`, `store_meta_descriptions`, `store_bank_details`, `store_tin`, `store_shipping_type`, `store_shipping_order_type`, `store_shipping_charge`, `store_live_chat_enable`, `store_live_chat_code`, `store_status`, `store_commission`, `is_removed`, `store_created_at`, `store_updated_at`, `seller_paypal_id`, `multi_store_id`, `role`, `customer_id`, `status`) VALUES
(1, 14, 'Chris Store', '', '', '123142424', '', '', '', 'No 34 Monsuru Bisiriyu Street Ago Palace Way Okota', 'Okota', 156, 2412, '100263', '', '', 'polop', 'polop', '9849584\r\npolice ace', '', 'pts_flat_rate_shipping', 'pts_product_wise', '0.00', 0, '', 1, NULL, 0, '2019-05-13', '2019-05-15', '', 0, 'ADMIN', 14, 1),
(8, 23, 'okey store', '', '', '08037104679', '', '', '', '10 adepele street computer village ikeja,lagos state', 'ikeja', 156, 2412, '100001', 'transfer and pay on delivery accepted', '14 days return policy,as obejor return policy', 'okey', 'phones and computers and accessories', 'No-gtbank no 0121917936\r\nName- ndubuisi okechukwu .o', '', '', '', '0.00', 0, '', 1, NULL, 0, '2019-05-17', '2019-05-17', '', 0, 'ADMIN', 23, 1),
(9, 28, 'Gluck store', '', '', '08099418802', '', '', '', '33 lawson street oke-ira ogba aguda lagos', 'ikeja', 156, 2412, '100001', 'pay on delivery', '7 days return policy', 'computing and accessories', '33 lawson street oke-ira, ogba aguda, lagos state.', 'Gtb \r\n0113928360', '', 'pts_flat_rate_shipping', 'pts_product_wise', '0.00', 0, '', 1, NULL, 0, '2019-05-23', '2019-09-02', '', 0, 'ADMIN', 28, 1),
(3, 18, 'goodluck store', 'catalog/Seller_18/90e0453915b11011ae0977d6eff70073-hot-7.jpg', '', '07066302022', 'catalog/Seller_18/05160ef7b7306a66d8e7f6fceb6b9742-IMG-20190410-WA0001.jpg', '', '', 'no 33 otigba street computer village, ikeja, lagos state.', 'ikeja', 156, 2412, '100001', 'pay on delivery', '7 working days apply to obejor policy', 'goodluck store', 'deals on  phones, computers and accessories.', 'firstbank nigeria plc, Goodluck omoyi adie, \r\naccount no. 3038504740.', '', '', '', '0.00', 0, '', 1, NULL, 0, '2019-05-17', '2019-05-17', '', 0, 'ADMIN', 18, 1),
(4, 19, 'Kim\'s Clothing', '', '', '07057412001', '', '', '', '4 modupe ola street,iyana ipaja, Lagos.', 'Ikeja', 156, 2412, '100001', '', '', 'Kim\'s clothing', 'Female,Male and Kiddies ears', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-05-17', '2020-05-19', '', 0, 'ADMIN', 19, 1),
(5, 20, 'E &amp; V GROUPS', 'catalog/Seller_20/f12dc27e9e3703901a440fed9d4ff3ae-lii-01.jpg', '', '08050737934', 'catalog/Seller_20/619972f77533568f04b2a67b447097b8-2019-05-07 2.jpgBJ8uJz12V.jpg', '', '', '20 Omil road ogba Lagos. Nig', 'ikeja', 156, 2412, '100001 ', 'All to get to customer within 7 days .', 'No Return After 7 days.', 'E &amp; V GROUPS ', 'Sales of Computer Gadget.', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2019-05-17', '2019-05-17', '', 0, 'ADMIN', 20, 1),
(6, 21, 'Dammyluv', 'catalog/Seller_21/c343907c54782730fa1939a5cff48323-rosebackground202070.jpg', '', '07030803287/ 0', '', '', '', 'Emmanuel Cathedral Church,Ado', 'Ado-Ekiti', 156, 2401, '360221', 'pay on delivery ', '7 days apply by obejor policy', 'Dammyluv', 'Phone and accessorize,with smart watch  ', 'Access Bank Plc\r\nBank Name ; Adeoye Ifeoluwa Ebenezer\r\nAccount No ; 0738011105', '', 'pts_flat_rate_shipping', 'pts_product_wise', '0.00', 0, '', 1, NULL, 0, '2019-05-17', '2019-05-17', '', 0, 'ADMIN', 21, 1),
(7, 22, 'Valen Store', 'catalog/Seller_22/59873289dcfd371ca12ecbac4a737321-11m.jpg', '', '08061147847', 'catalog/Seller_22/aca664466da1521dd8b62ad5722e42d0-12.png', '', '', '10  adepele street computer village ikeja, lagos state', 'ikeja', 156, 2412, '10001', 'pay on delivery', '7 working days', 'valen store', 'deals on IT products', 'UBA bank\r\nokolo philip u\r\n2033706937', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-05-17', '2019-07-11', '', 0, 'ADMIN', 22, 1),
(10, 35, 'CRAX CLOTHINGS', '', '', '09076342075', '', '', '', '66652b abakaliki hhsw', 'ilorn', 156, 2411, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2019-05-27', '2020-01-03', '', 0, 'ADMIN', 35, 1),
(11, 69, 'Connectify', '', '', '09076224510', '', '', '', '54 akundairo muhammad ave', 'malete', 156, 2411, '241104', '', '', '', '', 'cashmaire alloway', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-06-20', '2019-06-20', '', 0, 'ADMIN', 69, 1),
(12, 72, 'Lea Group', 'catalog/Seller_72/21b5c088b333c0152a4f9bda3c46d355-IMG20190626072359163.jpg', '', '08078675554', 'catalog/Seller_72/5391f87eb37b26d6ee081df682506858-2.jpg', '', '', 'No. 5 shop New Plaza beside Calido Fine Hotel, Eme Court Road, Nnewi Anambra State. ', 'Nnewi', 156, 2392, '', '', '', '', '', 'Polaris bank \r\nBank name : Janefrances Chidimma Adimachukwu \r\nAccount number :3050418114', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-06-26', '2020-05-19', '', 0, 'ADMIN', 72, 1),
(13, 74, 'Stylish T', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', 'Tosint UBA ', '', '', '', '0.00', 0, '', 1, NULL, 0, '2019-07-02', '2019-07-02', '', 0, 'ADMIN', 74, 1),
(14, 78, 'Onyimarome', '', '', '08038482734', '', '', '', 'Nnewi Post Office Complex ', 'Nnewi ', 156, 2392, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-07-05', '2020-05-19', '', 0, 'ADMIN', 78, 1),
(15, 83, 'Secureafrik', '', '', '08081586935', '', '', '', '1 church streetoworo-shoki', 'Lagos ', 156, 2412, '234', '', '7 days ', '', '', '0018189923 Secureafrik impex solutions limited stanbic ', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-07-09', '2020-05-19', '', 0, 'ADMIN', 83, 1),
(16, 85, 'Paul test store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-07-11', '2020-05-19', '', 0, 'ADMIN', 85, 1),
(17, 88, 'ZUBIX-LINK', 'catalog/Seller_88/2ad56c6ecd1b3665a87dd09ef430e310-sd20 mini.mini.jpg', '', '08130475826', '', '', '', 'suite 14 of 17 oremeji street, computer village, ikeja', 'lagos', 156, 2412, '100242', '3 days after oder', '7 days', 'ZUBIX-LINK WORLD LTD', 'computers and accessories ', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2019-07-12', '2019-07-12', '', 0, 'ADMIN', 88, 1),
(18, 141, 'whales osh', '', '', '08062291200', '', '', '', 'number 10  suite 23 adepele street computer vilage', '', 156, 2412, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2019-08-17', '2019-08-17', '', 0, 'ADMIN', 141, 1),
(19, 150, 'G4 BOUTIQUE', '', '', '08039393659', '', '', '', '23B ALLEN AVENUE OFF MAJEKODUNMI STREET NEAR SHOPPY PLAZA.', 'LAGOS', 156, 2412, '100271', '2 to 3 days for those within Lagos and 2 Additional days  for those outside Lagos  ', '7 days return policy', 'G4 BOUTIQUE', '23B ALLEN AVENUE OFF MAJEKODUNMI STREET NEAR SHOPPY PLAZA.', ' BANK NAME : GUARANTY TRUST BANK\r\nACCOUNT NUMBER : 0046726871\r\nACCOUNT NAME : NDUBUISI EKENEDIRICHUKWU CHIOMA', '', '', '', '0.00', 0, '', 1, NULL, 0, '2019-09-02', '2019-09-02', '', 0, 'ADMIN', 150, 1),
(20, 151, 'Anisty kanpala home.', '', '', '07086460404', '', '', '', '28 Atan, road off nathan street Ojuelegba, Yaba, Lagos state.', 'Lagos', 156, 2412, ' 100271 ', 'For customer within  Lagos, can get their goods within 2 - 3 working days for those outside Lagos, might take additional 2 work days ', 'Item should be return on or before seven days.', 'Kampala tops,computer', 'Kampala tops,computer', 'animashunn tolulope. uba \r\n2053532471', '', '', '', '0.00', 0, '', 1, NULL, 0, '2019-09-05', '2019-09-05', '', 0, 'ADMIN', 151, 1),
(21, 1, 'Sonia Store', '', '', '09035841658', '', '', '', 'ikeja lagos', 'ikeja', 156, 2412, '763456', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-11-14', '2020-01-22', '', 0, 'ADMIN', 1, 1),
(22, 1, 'GreatHub Technologies', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-11-18', '2019-11-18', '', 0, 'ADMIN', 1, 1),
(23, 1, 'root store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-11-18', '2019-11-18', '', 0, 'ADMIN', 1, 1),
(24, 1, 'root store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-11-18', '2019-11-18', '', 0, 'ADMIN', 1, 1),
(25, 1, 'root store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-11-18', '2019-11-18', '', 0, 'ADMIN', 1, 1),
(26, 1, 'root store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-11-18', '2019-11-18', '', 0, 'ADMIN', 1, 1),
(27, 1, 'root store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-11-18', '2019-11-18', '', 0, 'ADMIN', 1, 1),
(28, 1, 'root store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-11-18', '2019-11-18', '', 0, 'ADMIN', 1, 1),
(29, 1, 'root store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-11-18', '2019-11-18', '', 0, 'ADMIN', 1, 1),
(30, 195, 'root store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-11-18', '2019-11-18', '', 0, 'ADMIN', 195, 1),
(31, 1, 'GreatHub Technologies', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2019-11-18', '2019-11-18', '', 0, 'ADMIN', 1, 1),
(32, 196, 'GreatHub Technologies', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2019-11-18', '2019-11-18', '', 0, 'ADMIN', 196, 1),
(33, 14, 'Chris Store', '', '', '123142424', '', '', '', 'No 34 Monsuru Bisiriyu Street Ago Palace Way Okota', 'Okota', 156, 2412, '100263', '', '', 'polop', 'polop', '9849584\r\npolice ace', '', 'pts_flat_rate_shipping', 'pts_product_wise', '0.00', 0, '', 1, 0.0000, 0, '2019-12-19', '2019-12-19', '', 0, 'USER', 1, 0),
(34, 14, 'Chris Store', '', '', '123142424', '', '', '', 'No 34 Monsuru Bisiriyu Street Ago Palace Way Okota', 'Okota', 156, 2412, '100263', '', '', 'polop', 'polop', '9849584\r\npolice ace', '', 'pts_flat_rate_shipping', 'pts_product_wise', '0.00', 0, '', 1, 0.0000, 0, '2019-12-19', '2019-12-19', '', 0, 'USER', 1, 0),
(35, 14, 'Chris Store', '', '', '123142424', '', '', '', 'No 34 Monsuru Bisiriyu Street Ago Palace Way Okota', 'Okota', 156, 2412, '100263', '', '', 'polop', 'polop', '9849584\r\npolice ace', '', 'pts_flat_rate_shipping', 'pts_product_wise', '0.00', 0, '', 1, 0.0000, 0, '2019-12-19', '2019-12-19', '', 0, 'USER', 253, 0),
(36, 14, 'Chris Store', '', '', '123142424', '', '', '', 'No 34 Monsuru Bisiriyu Street Ago Palace Way Okota', 'Okota', 156, 2412, '100263', '', '', 'polop', 'polop', '9849584\r\npolice ace', '', 'pts_flat_rate_shipping', 'pts_product_wise', '0.00', 0, '', 1, 0.0000, 0, '2019-12-19', '2019-12-19', '', 0, 'USER', 254, 1),
(37, 14, 'Chris Store', '', '', '123142424', '', '', '', 'No 34 Monsuru Bisiriyu Street Ago Palace Way Okota', 'Okota', 156, 2412, '100263', '', '', 'polop', 'polop', '9849584\r\npolice ace', '', 'pts_flat_rate_shipping', 'pts_product_wise', '0.00', 0, '', 1, 0.0000, 0, '2019-12-20', '2019-12-20', '', 0, 'USER', 267, 1),
(38, 1, 'FRANK kurt', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-01', '2020-01-01', '', 0, 'ADMIN', 1, 0),
(45, 18, 'goodluck store', 'catalog/Seller_18/90e0453915b11011ae0977d6eff70073-hot-7.jpg', '', '07066302022', 'catalog/Seller_18/05160ef7b7306a66d8e7f6fceb6b9742-IMG-20190410-WA0001.jpg', '', '', 'no 33 otigba street computer village, ikeja, lagos state.', 'ikeja', 156, 2412, '100001', 'pay on delivery', '7 working days apply to obejor policy', 'goodluck store', 'deals on  phones, computers and accessories.', 'firstbank nigeria plc, Goodluck omoyi adie, \r\naccount no. 3038504740.', '', '', '', '0.00', 0, '', 1, 0.0000, 0, '2020-01-09', '2020-01-09', '', 0, 'SUBADMIN', 511, 1),
(39, 14, 'Chris Store', '', '', '123142424', '', '', '', 'No 34 Monsuru Bisiriyu Street Ago Palace Way Okota', 'Okota', 156, 2412, '100263', '', '', 'polop', 'polop', '9849584\r\npolice ace', '', 'pts_flat_rate_shipping', 'pts_product_wise', '0.00', 0, '', 1, 0.0000, 0, '2020-01-03', '2020-01-03', '', 0, 'SUBADMIN', 18, 1),
(40, 14, 'Chris Store', '', '', '123142424', '', '', '', 'No 34 Monsuru Bisiriyu Street Ago Palace Way Okota', 'Okota', 156, 2412, '100263', '', '', 'polop', 'polop', '9849584\r\npolice ace', '', 'pts_flat_rate_shipping', 'pts_product_wise', '0.00', 0, '', 1, 0.0000, 0, '2020-01-03', '2020-01-03', '', 0, 'SUBADMIN', 403, 1),
(41, 404, 'Obed store', '', '', '07040002622', '', '', '', '10,Adepele street computer village ikeja Lagos state.', 'Lagos', 156, 2412, '100211', 'For products complaints outside 7days in relation to defective items, you may:\r\nVisit an authorized service centre  to obtain a warranty.  If the service  centre  is not in your location, you may choose to contact Obejor. Com Help line.', 'For products complaints outside 7days in relation to defective items, you may:\r\nVisit an authorized service centre  to obtain a warranty.  If the service  centre  is not in your location, you may choose to contact Obejor. Com Help line.', 'Obed store ', '10,Adepele street computer village ikeja lagos state ', 'Diamond bank\r\n0038693118', '212164490001', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-03', '2020-05-19', '', 0, 'ADMIN', 404, 1),
(42, 14, 'Chris Store', '', '', '123142424', '', '', '', 'No 34 Monsuru Bisiriyu Street Ago Palace Way Okota', 'Okota', 156, 2412, '100263', '', '', 'polop', 'polop', '9849584\r\npolice ace', '', 'pts_flat_rate_shipping', 'pts_product_wise', '0.00', 0, '', 1, 0.0000, 0, '2020-01-03', '2020-01-03', '', 0, 'USER', 109, 1),
(43, 14, 'Chris Store', '', '', '123142424', '', '', '', 'No 34 Monsuru Bisiriyu Street Ago Palace Way Okota', 'Okota', 156, 2412, '100263', '', '', 'polop', 'polop', '9849584\r\npolice ace', '', 'pts_flat_rate_shipping', 'pts_product_wise', '0.00', 0, '', 1, 0.0000, 0, '2020-01-03', '2020-01-03', '', 0, 'USER', 406, 1),
(44, 1, 'Mansur Suleiman', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-04', '2020-01-04', '', 0, 'ADMIN', 1, 0),
(46, 1, 'God\'s will electronics', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-18', '2020-01-18', '', 0, 'ADMIN', 1, 0),
(56, 1, 'jalals Store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-21', '2020-01-21', '', 0, 'ADMIN', 1, 0),
(47, 612, 'God\'s will electronics', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-18', '2020-01-18', '', 0, '', 0, 0),
(48, 1, 'Williams Store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-20', '2020-01-20', '', 0, 'ADMIN', 1, 0),
(55, 632, 'Adeniyi Store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-21', '2020-01-21', '', 0, '', 0, 0),
(49, 627, 'Williams store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-20', '2020-01-20', '', 0, '', 0, 0),
(50, 1, 'okoye store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-20', '2020-01-20', '', 0, 'ADMIN', 1, 0),
(51, 1, 'Excessneeds', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-20', '2020-01-20', '', 0, 'ADMIN', 1, 0),
(54, 633, 'Fashionista', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-21', '2020-01-21', '', 0, 'ADMIN', 633, 1),
(53, 1, 'Fashionista', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-21', '2020-01-21', '', 0, 'ADMIN', 1, 0),
(67, 1, 'Chido Line', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-22', '2020-01-22', '', 0, 'ADMIN', 1, 1),
(57, 1, 'Best Electronics', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-21', '2020-01-21', '', 0, 'ADMIN', 1, 0),
(52, 1, 'Adeniyi Store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-21', '2020-01-21', '', 0, 'ADMIN', 1, 0),
(58, 635, 'De Best', '', '', '08133298414', '', '', '', 'lagos', 'lagos', 156, 2412, '1234567', 'we', '', '', '', 'f', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-01-21', '2020-01-21', '', 0, 'ADMIN', 635, 1),
(59, 635, 'De Best', '', '', '08133298414', '', '', '', 'lagos', 'lagos', 156, 2412, '1234567', 'we', '', '', '', 'f', '', '', '', '0.00', 0, '', 1, 0.0000, 0, '2020-01-21', '2020-01-21', '', 0, 'USER', 635, 1),
(60, 635, 'De Best', '', '', '08133298414', '', '', '', 'lagos', 'lagos', 156, 2412, '1234567', 'we', '', '', '', 'f', '', '', '', '0.00', 0, '', 1, 0.0000, 0, '2020-01-21', '2020-01-21', '', 0, 'USER', 635, 1),
(61, 635, 'De Best', '', '', '08133298414', '', '', '', 'lagos', 'lagos', 156, 2412, '1234567', 'we', '', '', '', 'f', '', '', '', '0.00', 0, '', 1, 0.0000, 0, '2020-01-21', '2020-01-21', '', 0, 'USER', 638, 1),
(62, 635, 'De Best', '', '', '08133298414', '', '', '', 'lagos', 'lagos', 156, 2412, '1234567', 'we', '', '', '', 'f', '', '', '', '0.00', 0, '', 1, 0.0000, 0, '2020-01-21', '2020-01-21', '', 0, 'USER', 639, 1),
(63, 635, 'De Best', '', '', '08133298414', '', '', '', 'lagos', 'lagos', 156, 2412, '1234567', 'we', '', '', '', 'f', '', '', '', '0.00', 0, '', 1, 0.0000, 0, '2020-01-21', '2020-01-21', '', 0, 'USER', 643, 1),
(64, 1, 'Kate Kathrine Store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-22', '2020-01-22', '', 0, 'ADMIN', 1, 1),
(66, 1, 'Vivian Line', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-22', '2020-01-22', '', 0, 'ADMIN', 1, 1),
(65, 1, 'Rose stylist', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-22', '2020-01-22', '', 0, 'ADMIN', 1, 1),
(68, 1, 'Accounts', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-22', '2020-01-22', '', 0, 'ADMIN', 1, 1),
(69, 1, 'Ebus Store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-22', '2020-01-22', '', 0, 'ADMIN', 1, 1),
(71, 1, 'Courageous Store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-22', '2020-01-22', '', 0, 'ADMIN', 1, 1),
(70, 1, 'Jovita Boutique', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-22', '2020-01-22', '', 0, 'ADMIN', 1, 1),
(73, 1, 'Sonia Store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-22', '2020-01-22', '', 0, 'ADMIN', 1, 1),
(72, 1, 'Greatest', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-22', '2020-01-22', '', 0, 'ADMIN', 1, 1),
(74, 662, 'Mendes Stores', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-22', '2020-05-19', '', 0, 'ADMIN', 662, 1),
(75, 663, 'Glories Maul', '', '', '09035841658', '', '', '', 'ikeja', 'lagos', 156, 2412, '987546', '', 'welcome', 'yes', '', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-01-22', '2020-03-02', '', 0, 'ADMIN', 663, 1),
(76, 664, 'Chisom Store', '', '', '09035841658', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-01-23', '2020-01-23', '', 0, 'ADMIN', 664, 1),
(77, 666, 'Nwanne Stores', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-01-24', '2020-01-24', '', 0, 'ADMIN', 666, 1),
(78, 671, 'David Design', '', '', '09023154961', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-01-29', '2020-01-29', '', 0, 'ADMIN', 671, 1),
(79, 672, 'David Engineering', '', '', '09035841658', '', '', '', '', '', 156, 2388, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-01-29', '2020-01-29', '', 0, 'ADMIN', 672, 1),
(80, 0, 'bengagdets', 'catalog/Seller_1286/3ebf173baf15af87f95e161c676fcc62-IMG-20200705-WA0037.jpg', '', '08034430700', '', '', '', '6 Ola Ayeni Street\r\nComputer village\r\nIkeja Lagos Nigeria.', 'ikeja ', 156, 2412, '', 'new items sale', 'if still in good condition ,', '', '', 'ben integreated service ltd , zenith bank , account nub 1014207087 ', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-02-18', '2020-08-06', '', 0, 'ADMIN', 0, 1),
(89, 736, 'Zino blinks', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-02-25', '2020-02-25', '', 0, '', 0, 0),
(82, 726, 'simply posh boutique', 'catalog/Seller_726/d026684c4a4da20b06b9ff672e8ed17e-300793671580968915329161723718646745792512n.jpg', '', '08080082403', 'catalog/Seller_726/106ad9239b7d7bd7038d61cb763a19e9-300793671580968915329161723718646745792512n.jpg', '', '', '1 Rialto close\r\n1 jane Ebong street, uyo', 'Ojota', 156, 2412, '100242', '', '', 'simply posh ', 'simply posh is a fashion designer store located at 74 Ogudu Ojota beside medcourt pharmacy ', '2341016734 \r\nEcoBank\r\nDan Samuel ', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-02-20', '2020-02-20', '', 0, 'ADMIN', 726, 1),
(81, 0, 'Soundloaded Store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-02-18', '2020-02-18', '', 0, 'ADMIN', 0, 1),
(83, 729, 'Cheta IT World', '', '', '09091199608', '', '', '', '33 erinle st, iju ishaga, lagos', 'Lagos', 156, 2412, '100211', '7 Day Return Policy ', '7 Day Return Policy ', 'World of Quality IT Products ', 'World of Quality IT Products ', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-02-22', '2020-02-24', '', 0, 'ADMIN', 729, 1),
(84, 730, 'Jentle Graphics', '', '', '08161171584', '', '', '', '13 ilaje street mile12 Lagos', 'mile12', 156, 2412, '100211', '2-3 days for Lagos customer and 3-4 days for customer outside Lagos', '7 days return if eligible', 'Jentle-Graphics', 'Jentle Graphics is ideal place for all your graphic design tools', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-02-24', '2020-02-24', '', 0, 'ADMIN', 730, 1),
(85, 731, 'Cheta\'s Blog', '', '', '09091199608', '', '', '', '33 erinle street, iju ishaga, lagos', 'lagos', 156, 2412, '', '', '', 'Chetas Blog', '', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-02-24', '2020-02-24', '', 0, 'ADMIN', 731, 1),
(86, 734, 'Tosin Oges world', '', '', '07040002622', '', '', '', '', 'lagos', 156, 2412, '', '', '', '', '', 'uba', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-02-25', '2020-02-25', '', 0, 'ADMIN', 734, 1),
(87, 735, 'pauls store', '', '', '09091199608', '', '', '', '', 'lagos', 156, 2412, '105102', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-02-25', '2020-05-19', '', 0, 'ADMIN', 735, 1),
(88, 0, 'Zino Blicks', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-02-25', '2020-02-25', '', 0, 'ADMIN', 0, 1),
(90, 737, 'Damian Blinks', '', '', '09035841658', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-02-25', '2020-02-25', '', 0, 'ADMIN', 737, 1),
(91, 741, 'okeyndu Store', '', '', '08099418802', '', '', '', '22 Medical road computer village ikeja', 'Lagos', 156, 2412, '100211', '2-3 working days', '7 days return if eligible', 'Computer Accessories and all IT related items', 'Computer Accessories and all IT related items', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-03-04', '2020-03-04', '', 0, 'ADMIN', 741, 1),
(92, 742, 'AJ Business Ventures', '', '', '09056863595', '', '', '', 'Lagos street fadunsi avenue', 'Lagos', 156, 0, '100211', '2-3 day for a customer within Lagos and  3-4 days customer outside lagos', '7 days return if eligible', 'AJ Business Venture  for all women fashion and fashion accessories', 'AJ Business Venture for all women fashion and fashion accessories', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-03-04', '2020-03-04', '', 0, 'ADMIN', 742, 1),
(93, 743, 'Luci Osaz world', '', '', '07040002622', '', '', '', 'no 10 adepele street computer village ikeja', 'Lagos', 156, 2412, '100211', '2-5 working days ', '7 days Returns window ', 'Fashion world ', 'Fashion world ', 'Gtb', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-03-05', '2020-05-19', '', 0, 'ADMIN', 743, 1),
(94, 745, 'Tosin T world', '', '', '07040002622', '', '', '', 'no 10 adepele street computer village ikeja', 'Lagos', 156, 2412, '100211', '2 - 5 working days', '7 days return ', 'stylist world ', 'stylist world ', 'UBA', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-03-05', '2020-03-05', '', 0, 'ADMIN', 745, 1),
(95, 746, 'James IT World', '', '', '07040002622', '', '', '', 'no 10 adepele street computer village ikeja', 'Lagos', 156, 2412, '100211', '', '', '', '', 'Uba', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-03-06', '2020-05-19', '', 0, 'ADMIN', 746, 1),
(96, 747, 'Jumoke store', '', '', '08168002506', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-03-06', '2020-05-19', '', 0, 'ADMIN', 747, 1),
(97, 748, 'Samuel Fashion', '', '', '09035841658', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-03-06', '2020-03-06', '', 0, 'ADMIN', 748, 1),
(98, 749, 'Olajide faeshion', '', '', '09035841658', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-03-06', '2020-05-19', '', 0, 'ADMIN', 749, 1),
(99, 752, 'AG Ventures', '', '', '08099418802', '', '', '', '33 Fadunsi Avenue Oke-ira aguda ogba ikeja', 'Lagos', 156, 2412, '100211', '2-3 day for Lagos customer and 3-4 days for customer outside Lagos', '7 Days return if eligible', 'AG Ventures', 'AG Venture is a global store that provides quality electrical appliances for homes and offices,', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-03-10', '2020-03-10', '', 0, 'ADMIN', 752, 1),
(100, 753, 'Davido', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-03-10', '2020-03-10', '', 0, 'ADMIN', 753, 1),
(101, 754, 'Chido Store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-03-10', '2020-03-10', '', 0, 'ADMIN', 754, 1),
(102, 755, 'Tony Mall', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-03-10', '2020-03-10', '', 0, 'ADMIN', 755, 1),
(103, 756, 'Tene Shops', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-03-10', '2020-03-10', '', 0, 'ADMIN', 756, 1),
(104, 757, 'Actual Print', '', '', '07066302022', '', '', '', '33 Lawson Street Ogba Ikeja Lagos\r\n33 Lawson Street Ogba Ikeja Lagos', 'Lagos', 156, 2412, '100211', '2-3 days for Lagos customer and 3-4 day outside Lagos', '7 days return if eligible', 'Actual Print', 'Actual Print the best place for all kind of printing services', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-03-10', '2020-05-19', '', 0, 'ADMIN', 757, 1),
(105, 18, 'goodluck store', 'catalog/Seller_18/90e0453915b11011ae0977d6eff70073-hot-7.jpg', '', '07066302022', 'catalog/Seller_18/05160ef7b7306a66d8e7f6fceb6b9742-IMG-20190410-WA0001.jpg', '', '', 'no 33 otigba street computer village, ikeja, lagos state.', 'ikeja', 156, 2412, '100001', 'pay on delivery', '7 working days apply to obejor policy', 'goodluck store', 'deals on  phones, computers and accessories.', 'firstbank nigeria plc, Goodluck omoyi adie, \r\naccount no. 3038504740.', '', '', '', '0.00', 0, '', 1, 0.0000, 0, '2020-03-18', '2020-03-18', '', 0, 'USER', 759, 1),
(106, 20, 'E &amp; V GROUPS', 'catalog/Seller_20/f12dc27e9e3703901a440fed9d4ff3ae-lii-01.jpg', '', '08050737934', 'catalog/Seller_20/619972f77533568f04b2a67b447097b8-2019-05-07 2.jpgBJ8uJz12V.jpg', '', '', '20 Omil road ogba Lagos. Nig', 'ikeja', 156, 2412, '100001 ', 'All to get to customer within 7 days .', 'No Return After 7 days.', 'E &amp; V GROUPS ', 'Sales of Computer Gadget.', '', '', '', '', '0.00', 0, '', 1, 0.0000, 0, '2020-03-18', '2020-03-18', '', 0, 'USER', 20, 1),
(107, 18, 'goodluck store', 'catalog/Seller_18/90e0453915b11011ae0977d6eff70073-hot-7.jpg', '', '07066302022', 'catalog/Seller_18/05160ef7b7306a66d8e7f6fceb6b9742-IMG-20190410-WA0001.jpg', '', '', 'no 33 otigba street computer village, ikeja, lagos state.', 'ikeja', 156, 2412, '100001', 'pay on delivery', '7 working days apply to obejor policy', 'goodluck store', 'deals on  phones, computers and accessories.', 'firstbank nigeria plc, Goodluck omoyi adie, \r\naccount no. 3038504740.', '', '', '', '0.00', 0, '', 1, 0.0000, 0, '2020-03-18', '2020-03-18', '', 0, 'USER', 741, 1),
(108, 20, 'E &amp; V GROUPS', 'catalog/Seller_20/f12dc27e9e3703901a440fed9d4ff3ae-lii-01.jpg', '', '08050737934', 'catalog/Seller_20/619972f77533568f04b2a67b447097b8-2019-05-07 2.jpgBJ8uJz12V.jpg', '', '', '20 Omil road ogba Lagos. Nig', 'ikeja', 156, 2412, '100001 ', 'All to get to customer within 7 days .', 'No Return After 7 days.', 'E &amp; V GROUPS ', 'Sales of Computer Gadget.', '', '', '', '', '0.00', 0, '', 1, 0.0000, 0, '2020-03-18', '2020-03-18', '', 0, 'USER', 57, 1),
(109, 18, 'goodluck store', 'catalog/Seller_18/90e0453915b11011ae0977d6eff70073-hot-7.jpg', '', '07066302022', 'catalog/Seller_18/05160ef7b7306a66d8e7f6fceb6b9742-IMG-20190410-WA0001.jpg', '', '', 'no 33 otigba street computer village, ikeja, lagos state.', 'ikeja', 156, 2412, '100001', 'pay on delivery', '7 working days apply to obejor policy', 'goodluck store', 'deals on  phones, computers and accessories.', 'firstbank nigeria plc, Goodluck omoyi adie, \r\naccount no. 3038504740.', '', '', '', '0.00', 0, '', 1, 0.0000, 0, '2020-03-18', '2020-03-18', '', 0, 'USER', 752, 1),
(110, 828, 'Adfm inspire', '', '', '08037153275', '', '', '', '', 'Ikeja', 156, 2412, '1001', 'Delivery Nationwide charges apply', 'No return policy ', '', 'We are an indigenous online store that sells very unique products for general use', '0431431616 ADFM inspire  GTBank', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-05-14', '2020-05-19', '', 0, 'ADMIN', 828, 1),
(111, 862, 'Berry tech solution', '', '', '08124955173', '', '', '', '', 'ajegunle', 156, 2412, '00173', '7 working day', 'Return  wedine two days of delivery ', '', '', 'Account name &gt;MALIK RASAK. Olanrewaju\r\nAccount number &gt;0245705123\r\nBank name &gt;gtbank', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-05-25', '2020-05-25', '', 0, 'ADMIN', 862, 1),
(112, 891, 'Oluwaseun yusuff', 'catalog/Seller_891/cc694a74fb0d7645a223c2b1dc1d09b1-inbound4264823652447031258.jpg', '', '07054849285', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-05-29', '2020-05-29', '', 0, 'ADMIN', 891, 1),
(113, 892, 'Lyon Mack Shoppers', '', '', '07041443717', '', '', '', 'Aja, Lagos Nigeria', 'Lagos, Nigeria', 156, 2412, '10001', 'Standard', 'Standard', 'Lyon Mack Shoppers', 'Lyon Mack Shoppers is an online store for all kinds of Accessories, clothing and Designers both male and female', 'Nkama Christian Nnachi, \r\n3206472016.\r\nU.B.A Bank', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-05-29', '2020-05-29', 'bigdreamchris@gmail.com', 0, 'ADMIN', 892, 1),
(114, 915, 'Richy place', '', '', '07011450030', '', '', '', '', 'lagos', 156, 2412, '23401', '', '', '', '', '0010357496 (gtb)  sylvester umoh ', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-06-02', '2020-06-02', '', 0, 'ADMIN', 915, 1),
(115, 921, 'vivian store', '', '', '08132296743', '', '', '', 'no 19 Araromi street iyana ipaja lagos state\r\n', 'ikeja computer village', 156, 2412, '', '2-3 days for Lagos\r\n3-4 days for outside Lagos', '7 days return policy eligible', 'vivian-store', 'Vivian store deals with phone accessories', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-06-03', '2020-06-06', '', 0, 'ADMIN', 921, 1),
(116, 0, 'vivian custimatic store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-06-05', '2020-06-05', '', 0, 'ADMIN', 0, 1),
(117, 0, 'eby store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-06-08', '2020-06-08', '', 0, 'ADMIN', 0, 1),
(118, 0, 'eby store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-06-08', '2020-06-08', '', 0, 'ADMIN', 0, 1),
(119, 971, 'Okonkwo Iyke limited', '', '', '09041391427 ', '', '', '', 'Abuja Central, ', 'Abuja', 156, 2389, '', '', '', '', 'We deal on brand new keke Nape ', 'Okonkwo Iyke limited ', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-06-08', '2020-06-08', '', 0, 'ADMIN', 971, 1),
(120, 979, 'Ibadan', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', 'Gt bank\r\n', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-06-09', '2020-06-09', '', 0, 'ADMIN', 979, 1),
(121, 1122, 'Harmal', '', '', '08052574243', '', '', '', '19 onakoya Street Ikosi Ketu ', 'Ketu', 156, 2412, '', '', '', '', '', 'Ibironke Okueso\r\n0018249612\r\nStanbic IBTC Bank', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-06-24', '2020-06-24', '', 0, 'ADMIN', 1122, 1),
(122, 0, 'Afrione', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-06-26', '2020-06-26', '', 0, 'ADMIN', 0, 1),
(123, 1128, 'vin world', '', '', '07059207063', '', '', '', 'Lagos', 'Lagos', 156, 2412, '100211', '2-3 Lagos Customer to Receive, 5 Working days for other cities ', 'Seven Days Return windows', 'vin world', 'vin world', 'uba \r\ngu', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-06-28', '2020-06-28', '', 0, 'ADMIN', 1128, 1),
(124, 0, 'Damian Store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-06-29', '2020-06-29', '', 0, 'ADMIN', 0, 1),
(125, 1129, 'Damian Store', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-06-29', '2020-06-29', '', 0, '', 0, 0),
(127, 1137, 'Hameed Store', 'catalog/Seller_1137/84c474eaf0a805ac75bbfc0c4497aab1-icon-0120.png', '', '08133298414', '', '', '', 'Ikeja Lagos', '', 156, 2402, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-06-30', '2020-06-30', '', 0, 'ADMIN', 1137, 1),
(126, 1120, 'Afrifone Limited', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-06-29', '2020-06-30', '', 0, '', 0, 0),
(128, 1151, 'Afrione', '', '', '09087620348', '', '', '', 'plot c block 10, ilupeju industrial estate, ilupeju, Lagos', 'Lagos', 156, 2412, '100252', '', '7 days', 'afrione', 'afrione', '', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-07-07', '2020-07-07', '', 0, 'ADMIN', 1151, 1),
(129, 1168, 'KM 38 opposite Lagos business school ajah', '', '', '08139288564', '', '', '', 'Lekki', 'Lekki', 156, 2412, '', 'Once goods are paid for before delivery ', 'The customer can return with in 7 days after no more return ', 'Hybrid solar installation and designer ', 'Ajah to Lagos business school ajah, opposite is Granmedila hotel ', '1017020582 Sirlee Global Trading, Zenith Bank plc', '1052474374', '', '', '0.00', 0, '', 0, NULL, 0, '2020-07-11', '2020-07-11', '', 0, 'ADMIN', 1168, 1),
(130, 1183, 'Scureafrik', '', '', '08064683286', '', '', '', '', 'Lagos', 156, 2412, '100211', '2 - 3 Day for Lagos \r\nand 5 working Days For other City ', '7 Day Return Policy ', 'Scureafrik', 'Scureafrik', 'Stanbic\r\n 0018189923\r\nSecureAfrik Impex solution Limited ', '', '', '', '0.00', 0, '', 1, NULL, 0, '2020-07-15', '2020-07-29', '', 0, 'ADMIN', 1183, 1),
(131, 1280, 'Xavier', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-08-02', '2020-08-02', '', 0, 'ADMIN', 1280, 1),
(132, 150, 'G4 BOUTIQUE', '', '', '08039393659', '', '', '', '23B ALLEN AVENUE OFF MAJEKODUNMI STREET NEAR SHOPPY PLAZA.', 'LAGOS', 156, 2412, '100271', '2 to 3 days for those within Lagos and 2 Additional days  for those outside Lagos  ', '7 days return policy', 'G4 BOUTIQUE', '23B ALLEN AVENUE OFF MAJEKODUNMI STREET NEAR SHOPPY PLAZA.', ' BANK NAME : GUARANTY TRUST BANK\r\nACCOUNT NUMBER : 0046726871\r\nACCOUNT NAME : NDUBUISI EKENEDIRICHUKWU CHIOMA', '', '', '', '0.00', 0, '', 1, 0.0000, 0, '2020-08-03', '2020-08-03', '', 0, 'USER', 1282, 1),
(133, 0, 'bengagdets', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-08-06', '2020-08-06', '', 0, 'ADMIN', 0, 1),
(134, 1291, 'Michris', '', '', '', '', '', '', '', '', 0, 0, '', '', '', '', '', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-08-08', '2020-08-08', '', 0, 'ADMIN', 1291, 1),
(135, 1319, 'Muridell', '', '', '08014135885', '', '', '', 'Suite 3 (Wisdom café), café 2001, New hall, Lagos', 'Lagos', 156, 2412, '', '', '', '', '', 'Murtadha Oduntan Oladele\r\n0542264437\r\nGTbank', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-08-15', '2020-08-15', '', 0, 'ADMIN', 1319, 1),
(136, 1375, 'Iyk sonic', '', '', '08103314868', '', '', '', '46 Unity plaza ', 'Lagos', 156, 2412, '', '', '', 'Quality ', 'Best price', '', '', '', '', '0.00', 0, '', 0, NULL, 0, '2020-08-23', '2020-08-23', '', 0, 'ADMIN', 1375, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_push_notification_schedules`
--

CREATE TABLE `oc_push_notification_schedules` (
  `schedule_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `message` varchar(250) NOT NULL,
  `image_url` varchar(180) NOT NULL,
  `audience` varchar(20) NOT NULL DEFAULT 'all',
  `platform` varchar(20) NOT NULL DEFAULT 'all',
  `web_link` varchar(200) NOT NULL,
  `mobile_link_type` varchar(20) NOT NULL,
  `mobile_link` varchar(200) NOT NULL,
  `broadcast_date` datetime NOT NULL,
  `clicks` int(11) NOT NULL,
  `delivery` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `h_field` varchar(250) NOT NULL DEFAULT 'OPEN',
  `status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `oc_push_notification_schedules`
--

INSERT INTO `oc_push_notification_schedules` (`schedule_id`, `title`, `message`, `image_url`, `audience`, `platform`, `web_link`, `mobile_link_type`, `mobile_link`, `broadcast_date`, `clicks`, `delivery`, `date_added`, `h_field`, `status`) VALUES
(1, 'Independence Awoof', 'We are doing give away', '', 'all', 'mobile', '', 'product', '12', '2020-09-19 16:09:47', 0, 0, '2020-09-19 17:04:37', 'OPEN', 'pending'),
(2, 'Independence Awoof', 'We are doing give away', '', 'all', 'mobile', '', 'product', '12', '2020-09-19 17:09:00', 0, 0, '2020-09-19 17:14:38', 'OPEN', 'pending'),
(3, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'all', 'http://www.whatever.com', 'product', '12', '2020-09-19 17:09:00', 0, 0, '2020-09-19 17:15:30', 'OPEN', 'published'),
(4, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'mobile', '', 'product', '12', '2020-09-19 17:09:00', 0, 0, '2020-09-19 17:16:10', 'OPEN', 'pending'),
(5, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'mobile', '', 'product', '12', '2020-09-16 17:09:00', 0, 0, '2020-09-19 17:24:50', 'OPEN', 'pending'),
(6, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'mobile', '', 'product', '12', '2020-09-09 17:09:00', 0, 0, '2020-09-19 17:33:06', 'OPEN', 'pending'),
(7, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'mobile', '', 'product', '12', '2020-09-09 17:09:00', 0, 0, '2020-09-19 17:34:10', 'OPEN', 'pending'),
(8, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'mobile', '', 'product', '12', '2020-09-09 17:09:00', 0, 0, '2020-09-19 17:35:11', 'OPEN', 'pending'),
(9, 'Christmas Bonanza', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-25 17:40:10', 'OPEN', 'published'),
(10, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-25 23:18:52', 'OPEN', 'pending'),
(11, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-25 23:40:52', 'OPEN', 'pending'),
(12, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-25 23:41:49', 'OPEN', 'pending'),
(13, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-25 23:42:24', 'OPEN', 'pending'),
(14, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-25 23:44:04', 'OPEN', 'pending'),
(15, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-25 23:46:57', 'OPEN', 'pending'),
(16, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-25 23:54:39', 'OPEN', 'pending'),
(17, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 00:02:40', 'OPEN', 'pending'),
(18, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'buyers', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:19:47', 'OPEN', 'pending'),
(19, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'buyers', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:20:27', 'OPEN', 'pending'),
(20, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'buyers', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:20:59', 'OPEN', 'pending'),
(21, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'buyers', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:21:39', 'OPEN', 'pending'),
(22, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'buyers', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:23:00', 'OPEN', 'pending'),
(23, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'buyers', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:23:51', 'OPEN', 'pending'),
(24, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:25:06', 'OPEN', 'pending'),
(25, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:31:56', 'OPEN', 'pending'),
(26, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:32:04', 'OPEN', 'pending'),
(27, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:32:47', 'OPEN', 'pending'),
(28, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:35:57', 'OPEN', 'pending'),
(29, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:37:50', 'OPEN', 'pending'),
(30, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:54:10', 'OPEN', 'pending'),
(31, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:54:39', 'OPEN', 'pending'),
(32, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:55:23', 'OPEN', 'pending'),
(33, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:56:27', 'OPEN', 'pending'),
(34, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:57:00', 'OPEN', 'pending'),
(35, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 11:57:42', 'OPEN', 'pending'),
(36, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:02:32', 'OPEN', 'pending'),
(37, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:02:46', 'OPEN', 'pending'),
(38, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:20:37', 'OPEN', 'pending'),
(39, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:22:35', 'OPEN', 'pending'),
(40, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:24:07', 'OPEN', 'pending'),
(41, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:24:56', 'OPEN', 'pending'),
(42, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:26:14', 'OPEN', 'pending'),
(43, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:30:16', 'OPEN', 'pending'),
(44, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:31:03', 'OPEN', 'pending'),
(45, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:32:53', 'OPEN', 'pending'),
(46, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:33:15', 'OPEN', 'pending'),
(47, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:37:22', 'OPEN', 'published'),
(48, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:39:48', 'OPEN', 'pending'),
(49, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'buyers', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:45:44', 'OPEN', 'pending'),
(50, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:47:38', 'OPEN', 'pending'),
(51, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:51:28', 'OPEN', 'pending'),
(52, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:53:10', 'OPEN', 'pending'),
(53, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:53:14', 'OPEN', 'pending'),
(54, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:55:23', 'OPEN', 'pending'),
(55, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:55:23', 'OPEN', 'pending'),
(56, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:55:23', 'OPEN', 'pending'),
(57, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:55:23', 'OPEN', 'pending'),
(58, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:55:24', 'OPEN', 'pending'),
(59, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:55:24', 'OPEN', 'pending'),
(60, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:55:25', 'OPEN', 'pending'),
(61, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:55:25', 'OPEN', 'pending'),
(62, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:56:45', 'OPEN', 'pending'),
(63, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 12:57:37', 'OPEN', 'pending'),
(64, 'Independence Awoof', 'We are doing give away', 'catalog/demo/apple_logo.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 13:11:01', 'OPEN', 'pending'),
(65, 'Independence Awoof', 'Test Message whatever', 'catalog/opencart-logo.png', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 13:12:03', 'OPEN', 'pending'),
(66, 'Independence Awoof', 'We are doing give away', 'catalog/cart.png', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 2, '2020-09-26 14:12:51', 'OPEN', 'published'),
(67, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 1, '2020-09-26 14:15:14', 'OPEN', 'published'),
(68, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 1, '2020-09-26 14:43:57', 'OPEN', 'published'),
(69, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 1, 1, '2020-09-26 14:44:10', 'OPEN', 'published'),
(70, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 1, 1, '2020-09-26 14:44:43', 'OPEN', 'published'),
(71, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 1, '2020-09-26 14:46:01', 'OPEN', 'published'),
(72, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 1, '2020-09-26 14:46:43', 'OPEN', 'published'),
(73, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 1, '2020-09-26 14:46:52', 'OPEN', 'published'),
(74, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 14:47:33', 'OPEN', 'published'),
(75, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 14:49:56', 'OPEN', 'published'),
(76, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 14:51:36', 'OPEN', 'published'),
(77, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 14:53:23', 'OPEN', 'published'),
(78, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 14:55:02', 'OPEN', 'published'),
(79, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 14:56:18', 'OPEN', 'published'),
(80, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 14:59:16', 'OPEN', 'published'),
(81, 'Independence Awoof', 'We are doing give away', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-09-26 15:03:37', 'OPEN', 'published'),
(82, 'Christmas Bonanzer', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '2020-09-27 12:15:34', 0, 0, '2020-09-27 13:15:34', 'OPEN', 'published'),
(83, 'Christmas Bonanzer', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '2020-09-27 12:22:12', 0, 0, '2020-09-27 13:22:12', 'OPEN', 'published'),
(84, 'Independence Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_2.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '2020-09-27 12:29:18', 0, 0, '2020-09-27 13:29:18', 'OPEN', 'published'),
(85, 'Independence Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_2.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '2020-09-27 12:36:48', 0, 0, '2020-09-27 13:36:48', 'OPEN', 'published'),
(86, 'Independence Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_2.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '2020-09-27 12:38:00', 0, 0, '2020-09-27 13:38:00', 'OPEN', 'published'),
(87, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '2020-09-27 12:44:50', 0, 0, '2020-09-27 13:44:50', 'OPEN', 'published'),
(88, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '2020-09-27 12:44:50', 0, 1, '2020-09-28 11:03:50', 'OPEN', 'published'),
(89, 'Independence Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_2.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '2020-09-27 12:29:18', 1, 1, '2020-09-28 11:04:18', 'OPEN', 'published'),
(90, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 1, '2020-09-28 11:08:00', 'OPEN', 'published'),
(91, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 19:12:42', 'OPEN', 'published'),
(92, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 19:12:56', 'OPEN', 'published'),
(93, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 19:15:13', 'OPEN', 'published'),
(94, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 19:16:03', 'OPEN', 'pending'),
(95, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 19:16:49', 'OPEN', 'pending'),
(96, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 19:18:18', 'OPEN', 'published'),
(97, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 19:22:58', 'OPEN', 'published'),
(98, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 19:23:30', 'OPEN', 'published'),
(99, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 19:25:28', 'OPEN', 'pending'),
(100, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 19:25:50', 'OPEN', 'pending'),
(101, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 19:26:26', 'OPEN', 'published'),
(102, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 19:26:43', 'OPEN', 'published'),
(103, 'October Bonus', 'Enjoy Obejor Store October Specials and bonaza', 'catalog/demo/apple_logo.jpg', 'buyers', 'browser', 'https://www.obejor.com.ng', 'category', '', '2020-10-23 18:49:31', 0, 0, '2020-10-23 19:49:31', 'OPEN', 'published'),
(104, 'October Bonus', 'Enjoy Obejor Store October Specials and bonaza', 'catalog/demo/apple_logo.jpg', 'buyers', 'browser', 'https://www.obejor.com.ng', 'category', '', '2020-10-23 18:49:31', 0, 0, '2020-10-23 19:49:42', 'OPEN', 'published'),
(105, 'October Bonus', 'Enjoy Obejor Store October Specials and bonaza', 'catalog/demo/apple_logo.jpg', 'buyers', 'browser', 'https://www.obejor.com.ng', 'category', '', '2020-10-23 18:49:31', 0, 0, '2020-10-23 19:51:35', 'OPEN', 'published'),
(106, 'October Bonus', 'Enjoy Obejor Store October Specials and bonaza', 'catalog/demo/apple_logo.jpg', 'buyers', 'browser', 'https://www.obejor.com.ng', 'category', '', '2020-10-23 18:49:31', 0, 0, '2020-10-23 19:51:46', 'OPEN', 'published'),
(107, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 19:51:53', 'OPEN', 'pending'),
(108, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 19:54:11', 'OPEN', 'pending'),
(109, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 20:01:33', 'OPEN', 'pending'),
(110, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 1, '2020-10-23 20:06:28', 'OPEN', 'pending'),
(111, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 1, '2020-10-23 20:08:07', 'OPEN', 'pending'),
(112, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 1, '2020-10-23 20:10:25', 'OPEN', 'pending'),
(113, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 1, '2020-10-23 20:13:42', 'OPEN', 'pending'),
(114, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 1, '2020-10-23 20:16:19', 'OPEN', 'pending'),
(115, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 20:30:35', 'OPEN', 'pending'),
(116, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 20:32:07', 'OPEN', 'pending'),
(117, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 20:33:12', 'OPEN', 'pending'),
(118, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 20:35:59', 'OPEN', 'pending'),
(119, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 20:46:29', 'OPEN', 'pending'),
(120, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 20:47:12', 'OPEN', 'pending'),
(121, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 20:47:33', 'OPEN', 'pending'),
(122, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 20:48:00', 'OPEN', 'pending'),
(123, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 20:48:23', 'OPEN', 'pending'),
(124, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 20:48:43', 'OPEN', 'pending'),
(125, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 20:49:54', 'OPEN', 'pending'),
(126, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 20:50:44', 'OPEN', 'pending'),
(127, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 21:05:37', 'OPEN', 'pending'),
(128, 'Christmas Bonanza', 'Test Message whatever', 'catalog/demo/canon_eos_5d_1.jpg', 'all', 'browser', 'http://www.whatever.com', 'product', '', '0000-00-00 00:00:00', 0, 0, '2020-10-23 22:19:35', 'OPEN', 'pending'),
(129, 'October Bonus', 'Enjoy Obejor Store October Specials and bonaza', 'catalog/demo/apple_logo.jpg', 'buyers', 'browser', 'https://www.obejor.com.ng', 'category', '', '2020-10-23 18:49:31', 0, 0, '2020-10-23 22:20:22', 'OPEN', 'published'),
(130, 'October Bonus', 'Enjoy Obejor Store October Specials and bonaza', 'catalog/demo/apple_logo.jpg', 'buyers', 'browser', 'https://www.obejor.com.ng', 'category', '', '2020-10-23 18:49:31', 0, 0, '2020-10-23 22:21:10', 'OPEN', 'pending'),
(131, 'October Bonus', 'Enjoy Obejor Store October Specials and bonaza', 'catalog/demo/apple_logo.jpg', 'buyers', 'browser', 'https://www.obejor.com.ng', 'category', '', '2020-10-23 18:49:31', 0, 0, '2020-10-23 22:22:09', 'OPEN', 'pending'),
(132, 'October Bonus', 'Enjoy Obejor Store October Specials and bonaza', 'catalog/demo/apple_logo.jpg', 'buyers', 'browser', 'https://www.obejor.com.ng', 'category', '', '2020-10-23 18:49:31', 0, 0, '2020-10-23 22:22:28', 'OPEN', 'pending'),
(133, 'October Bonus', 'Enjoy Obejor Store October Specials and bonaza', 'catalog/demo/apple_logo.jpg', 'buyers', 'browser', 'https://www.obejor.com.ng', 'category', '', '2020-10-23 18:49:31', 0, 0, '2020-10-23 22:24:28', 'OPEN', 'pending'),
(134, 'October Bonus', 'Enjoy Obejor Store October Specials and bonaza', 'catalog/demo/canon_eos_5d_1.jpg', 'buyer', 'browser', 'https://www.obejor.com.ng', 'category', '', '2020-10-23 18:49:31', 0, 0, '2020-10-23 22:40:59', 'OPEN', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `oc_push_subscribers`
--

CREATE TABLE `oc_push_subscribers` (
  `id` double NOT NULL,
  `customer_id` double NOT NULL,
  `platform` varchar(10) NOT NULL DEFAULT 'mobile',
  `usertype` varchar(50) NOT NULL,
  `token` mediumtext NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `recieved` int(11) NOT NULL,
  `clicked` int(11) NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'subscribed',
  `tlog` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_push_subscribers`
--

INSERT INTO `oc_push_subscribers` (`id`, `customer_id`, `platform`, `usertype`, `token`, `date_added`, `recieved`, `clicked`, `status`, `tlog`) VALUES
(29, 18, 'mobile', 'seller', 'clwz4LLOv2w:APA91bHQuvPNXFp-zy8JbOm1lxFRtQaXKfMz6zY9FSNNS9xDo7LupyPqIpYAtPVzEoRpQv8m16VPhk3WIL8-BbSFI_D9RPiMWnrcAhV33YG6bM9TEVSLD5_6hOrk3KCFv70wf437g-ZE', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(4, 726, 'mobile', 'seller', 'fg1ykGdRwmQ:APA91bGHrzF0WU44-eeuZ42TEj9XcfavnEH7RsWt5Xp7ZkZJS48q98aJzMgnTAMwjZJkjZ6aMEA6ciNZ0qfyrHsuqMpl9G8IxmYdUq3ETVKwSL-v97DyjpEO-SzyvUTuTVrnNASOfT90', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(20, 726, 'mobile', 'seller', 'frWw9ELtT14:APA91bEaaJ44SCuBxKgRRbDKQ2f4MadCwAwDZQwEgSU_TIsmJuhcCBQMJ-R-6H6jXYftkS1DtSAkzzWKagUjNBVJscX37BSrNqzfI7gR19UT2FzLXL3oE3v_2lfo840t36LgIA4gQDy5', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(21, 635, 'mobile', 'seller', 'dQzXSoxyE2Y:APA91bHDSyPrOr3Elzs_iqy9h6rUbeo8RtSwODtKQ7Mf9pfFKh5vGAG1xc-2vRKETQGbhIBNJYNjSmzuCc1BNfhom4iQ2DHe_5DFrWs0ZEcTLO_gWwniuku_BMfiEZZA106rbOpKgsAd', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(22, 726, 'mobile', 'seller', 'dQzXSoxyE2Y:APA91bHDSyPrOr3Elzs_iqy9h6rUbeo8RtSwODtKQ7Mf9pfFKh5vGAG1xc-2vRKETQGbhIBNJYNjSmzuCc1BNfhom4iQ2DHe_5DFrWs0ZEcTLO_gWwniuku_BMfiEZZA106rbOpKgsAd', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(23, 726, 'mobile', 'seller', 'ezBTkL8t3aM:APA91bGVp-N-6iI_lT9bgo2J0wnRidgZzQDrQ39P2JK2zvbOn7WxFTHBDSb6FxnuL7EqZZFyj988OYz8lbkvG0imCdirNA3DLXSuUpeNgNoZ8QGzmqORhPqcet3ZI2jSOVC2ZJwiwQBp', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(24, 726, 'mobile', 'seller', 'clwz4LLOv2w:APA91bHQuvPNXFp-zy8JbOm1lxFRtQaXKfMz6zY9FSNNS9xDo7LupyPqIpYAtPVzEoRpQv8m16VPhk3WIL8-BbSFI_D9RPiMWnrcAhV33YG6bM9TEVSLD5_6hOrk3KCFv70wf437g-ZE', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(27, 18, 'mobile', 'seller', 'eI8OmgAgn18:APA91bGb_Ad1bGN8hpoH0YdRrwxcIVOUX-UV_kdTswQR2Z8YsMoLdqSfdicjNhkZWGNxYTbt3wWiprbIQkwPRVhKORXAG8bp_xZ1_W_zukAmym391cm_INbof2vhNoylTR4FiomjUCvR', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(26, 20, 'mobile', 'seller', 'fYVdIzFvIZI:APA91bEVBczMzc914a5flSE37A9wh2xx0_Ez7MvQ5VP1LOfoxNE3nPsp9up9VVSq5V0NIvs6TY7Kdgs7p4SZLp0feBAvMuR6R-572h7yK99U9yTAsuPnL8N_NfQl7vY9jbWH9yGZk6xD', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(28, 18, 'mobile', 'seller', 'fH7-X3g0TAM:APA91bG2rCTzp7FJ8StscFXTj0W56J0Otmb_-GlgtKgRuakG0YiSi0XultRXFaQvBXs7wIO0de7lhZ3q9myrzu3_s1SoQXM-ogTKOh2YceYcTuCSZ2lXuQgWtW94kjs7UZBMibOwcJ-t', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(19, 726, 'mobile', 'seller', 'doCi1beKaIY:APA91bGcUZjYfdhSzRJVksBsIu3v2zoZkmWZAnEbG5Bmy4XiVRtTTkA9XBUpBNo23nUJsAikS7xkDs3R5HsI-z7s3M1R_-97ToviqD2XUMkvBKZ3eOZLqHybYcmSRxXrWOCiQz05c9s-', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(18, 18, 'mobile', 'seller', 'f6_JHNsgwd8:APA91bHBlO5TnI2rOmDcmNQxUMWz9bOXJrNMKpCizUXFS08cbs-n-TIMtF5uLvmeLB3fPRgpWXB_oRE5ShqjstIfIUtgHYlR8ACPLUT7L_JfU9XZcLE4W8TCCw0EtTr-8V_p83RWvCIC', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(17, 18, 'mobile', 'seller', 'cfGVkxBpFNo:APA91bFVTUuZWX5jVEfiltUUiZsr8LRUnFLAcnjqkvSInJYQdjsuqnwA8QH5qmyUKg0bkvfLkwGylhpt2C_npt8nij3cS4fdUOjOZmqyIkFIut_LYTGnZ6b2O6Aeaz4UZkA-x9HkM4pZ', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(30, 726, 'mobile', 'seller', 'fH7-X3g0TAM:APA91bG2rCTzp7FJ8StscFXTj0W56J0Otmb_-GlgtKgRuakG0YiSi0XultRXFaQvBXs7wIO0de7lhZ3q9myrzu3_s1SoQXM-ogTKOh2YceYcTuCSZ2lXuQgWtW94kjs7UZBMibOwcJ-t', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(31, 18, 'mobile', 'seller', 'fdM2NZO00MU:APA91bH7xJBuapjbQcQJAstsLRt07swb2vcrHw5gHmn1WPN_HnSmVCuRVD7lwUMJYxxsNE4VZ76II1tedRFVfhaccipH9MX3ooIwqsm1mYFxa4vRkSL-VYeGDbw0lIXF_js03PZjGP_1', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(32, 18, 'mobile', 'seller', 'fdhwaHh2X8o:APA91bEdo8COU-goj77oISkwoITi33wwZgXUXUJ22csBezBwfhjnjk8pzqocZuwWBlblfekjxGp70A2BZxFHnfeOgEqXNE66yHHj9p8frti_Kcdne8Crwh5JD6RsCOtnS7fcz2uaQpXz', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(33, 726, 'mobile', 'seller', 'fdM2NZO00MU:APA91bH7xJBuapjbQcQJAstsLRt07swb2vcrHw5gHmn1WPN_HnSmVCuRVD7lwUMJYxxsNE4VZ76II1tedRFVfhaccipH9MX3ooIwqsm1mYFxa4vRkSL-VYeGDbw0lIXF_js03PZjGP_1', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(34, 726, 'mobile', 'seller', 'ewy4cE_lRG0:APA91bFnR_z7beLyw4wcn2DzjX9TUqG7lVev7lcvBVGmx3ixG5Lm_kPIv9gsxn-ziyrC8NiGjpXedMZZMzcUfEl2L0Txp1e3ob91wgKmpADzdQyXxsOooeYmZek1I6sxt38-qbSNSC5S', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(35, 18, 'mobile', 'seller', 'ewy4cE_lRG0:APA91bFnR_z7beLyw4wcn2DzjX9TUqG7lVev7lcvBVGmx3ixG5Lm_kPIv9gsxn-ziyrC8NiGjpXedMZZMzcUfEl2L0Txp1e3ob91wgKmpADzdQyXxsOooeYmZek1I6sxt38-qbSNSC5S', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(36, 18, 'mobile', 'seller', 'foDRGxVIQwM:APA91bECulNFyTkKDS0A1G-Ez2Crnpe70XSHmB4PMNl5ewRRju6kWnycyZTGTFEp0xN9pgDLQDbzq_M7Mz8we60qKkbZAXEC54hsaggFZ-i5AHZddQINimKEDqrihq-caGU8TSJhnBMR', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(37, 18, 'mobile', 'seller', 'fSdRANQBWRc:APA91bF-euJsaZrIvl5HRGiX_3vj26kDLi3QWj6uLFVC3KZQ9vqelwmIFw4bq_mcrJAWzly3Ab4OlU7to1Idn5wVU0XrMUOnSeAsuuG8oGlY_TNX8UKejxj-qzEyylz1SaPwmuUh0Z7w', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(38, 18, 'mobile', 'seller', 'f88g6Ak3lvg:APA91bEMBZrf2XfDzO8g8U4C8Ched_z_LPlMUX-Z0Pjll5jMplwsIwd3GcIPlK1p7wNn9GMvyt8-mKvCBc11rSTvdZALfkkCHyUSXEOkR2JUd-cjK8bfdFoTSamBdqGP9hWin4tqHpW4', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(39, 18, 'mobile', 'seller', 'd8awuaFKq0k:APA91bFKCGe1PuSghFuAHLQst5_zIfzF4VupQ2H1o45biZh1YIzePelchFoBjosfxCloQCWvFe1LForWM6T8o-vIIAABzccGnmRzvKAQCOq5Hf5ZJha8alKGntph03VF_0z1diTaP68U', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(40, 18, 'mobile', 'seller', 'cgpB--vfqIM:APA91bGByzd7g5xVwfiYeNwslSvrKUQbQaNpgJylZbsySf0TyCQ7SeoTUAEzj8pUK-BplioMFW9JeJmnYmf3NG4Fa-agbhh0NxL4LNUxcJgi5XJBJPStCZNorpjbMoiIaerWhcmKoMlR', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(41, 18, 'mobile', 'seller', 'fJiu2DP1q6U:APA91bFgohKM3NHQgsFRpdchxfwia333wR1a3uJr57mKcsZah69USx-IbKs5sMv8dzWrMW4A8lfh6FxyAN-obuUAF2NrMmTaGO4oLVhdkXp5dYM2TUHyOesvEcd1rt_ceb5uz_0QyoSP', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(42, 18, 'mobile', 'seller', 'cLftARHA2xs:APA91bEV9WVrc1kx-d16GkB2_7KnGbsr31EN-A2RggvU50_zSOlSrYpsAoe1kLT4VrNbezIwUivv1WXq9W-2n6ri8vCN5vDfsxg1raz-WzZY3REjmj0ChkXCMjscxkcg_YZ2PR_nyw4X', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(43, 18, 'mobile', 'seller', 'fz8s_muPl40:APA91bFLLkfA3KC2qr2dtiOXqsAgonkswOf_F4wtW-koRwdup-HJd0-uBM4hoOhaH2Ytl-g07u4wUbwDpNRtyptLpL-64KQtyjdq_hbYUqoinTAFgjr59UrpAs7l3EqcWjkYZXmHUOOr', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(44, 726, 'mobile', 'seller', 'cWK2WKEli90:APA91bHgYJOW3eBMR3SZ-oEILTGLr2jLjaQxGHkxOUE6St6nCpNQSQ4rwuEzNTB3yLmjna5a-tNXIU4RRzxDb7_oVOv7RVIzIQ7eaKYqi6ftkijCWvi6_dGK6zdTsPMKb9F0XN7emcQf', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(45, 18, 'mobile', 'seller', 'ftfHDfe0q8Q:APA91bFzRfJMdDoudKWFqUnMGrLhMXijO647xLL2pFv-jbhFfK2PeOnfEKwbGrdthoqknaEc-asdawpwx7mVBb5xLiUevtxIc1MdriOxNruaFpfg3GW-B_8facbyVPof1JpP5mYm3le6', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(46, 18, 'mobile', 'seller', 'e9d7J_v8KjY:APA91bG0llyjRodikewxJmdcAxGApWhlFVXs228YRaLI9jrDxeF6bubuGDrPRnW7l5y7DtOMUEQ-gOJmgtK3dcp5Bh9DHSG6R0lG8U-ma5eHfShy8yj8D3ZgBZAcOkwBBFur5Cp34kUL', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(47, 18, 'mobile', 'seller', 'foCzU7zaDvo:APA91bGpfjdsQN0cCpa3U2TRzf4YN6mTOyt1Qh3BadQM4MSjcwlFDdQvn88JHN8fGPqoiI32wKMZa6jLGfK5jzSHxRGg5Xz92FoS7sZkiKUK_YEd08DcXPxOSKknKP6wgUxcL7LCSPUh', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(48, 18, 'mobile', 'seller', 'fT4EPyvW5Js:APA91bGBaYfWoY5gKpYkJ4vq82WpHbyreCxvvaE3qeRbZ0HmHNRcV1_vFCFfIPOEAweg7QXGUj9UEaskjeXdWT0SXyZ9f_E6-DKg5SdNJlEfHoY56zdiW8FSt7T507pjSYSngmfJXfqd', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(49, 0, 'mobile', 'customer', 'foEIp_9SOGA:APA91bGU9CsOnkIi10_6iUHEnCLd6vdJbWotpIgk62Tt55ebB7j1OHWuT4GJUAzXSU2FiFjWwuTWzOBtOIdiqIASCYSYMoOz7qkU9Ud4Ma2UjKzqf-WRia39EEm5ZKhuurYhhgDbjdjy', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(50, 0, 'mobile', 'customer', 'cEC6CFHwp98:APA91bH5qa2dsdncm1KfJqkEpSjhfOG51ZB5Tm8GJFwqcymcy4F83263cYPNALhrzwrLo_fGfBs9Jd34GLswxWB_q_OagPkjCFn1zOZHNZe3BmLYcykpTduvH-WE2UKtk2AwrWXM1_Jc', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(51, 0, 'mobile', 'customer', 'ey1RyuvlfM8:APA91bHBDdaqin65E_QQcPH9BEbp8RwAjtog0-tkQq4CtH94D9UqvslOztewD47DANcKyLLTDr0XajB7dsuX5rKtdwBotJ-vUkz5_h_MVnwvej8M52u4hoGwoAI2csAYkc56hgoerBhb', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(52, 0, 'mobile', 'customer', 'e9E2R-pBeho:APA91bGiqkMFJi-vKQE88SAf8H8Lp0_zW5UAr9zPD4C48ge3vQ3RgyITW8YBo86ZRzPVT1pPUlTnGkRqmvrqKveDtf0VXVuqqrcvgne_C4ok32U0ZDAVF6rpvSP6sgcKuBvt2ObP165i', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(53, 0, 'mobile', 'customer', 'e3KNqjgs_8E:APA91bGBGpmjCNZjhGWUo1HJG-T1t-_nZg5Dz9slb5zjHBVDkrUg7ASFwLMgxb7AApJCepuTGqrPdzcED_3Gl6aqc9KzyQIx51MyN-8rDu3KDeEGKq7TTDzK_oDrGvlDZorpSCx8g3q9', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(54, 0, 'mobile', 'customer', 'eZ2ubwKhpfQ:APA91bHsBLmjIfA2QGWVhkh72MQuXGymvUpQxpQldRAE8vXd07_7G1E0108c5THj0uqpeqV13igES187IASvyi8zCNKAHae4Ct-SY3KdIpE7kYzWCfPGnRxccvI407AP-Rao02LA9sg_', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(55, 0, 'mobile', 'customer', 'fsWizYpwp7E:APA91bFO5rRHe-k3YXQuDmcplXZ-DwOVwWqyuu62_YTV5RC6OkBPLSAdLpGuZjfZKaD1MiuypA2PMzsr5xOcWtT6Xb9bfsxMNe1ct7pJmdRMeaaE4Rc1HnyLL7kpTAUY51WE8gdpTfMv', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(56, 0, 'mobile', 'customer', 'dPFQ8Qb_xQk:APA91bEaI0KDWAcNEdrGpNRsL-iS2ftTVm4LJ6dIk7nffLX-NNabyK1CB320-Ez2Yr3oe0vpHpadCXX4yge955TeM6wxjb3dgG3RVZPqcxTg-WaQAjgKHDpArAyQisb4XtW9Oclm-KxG', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(57, 0, 'mobile', 'customer', 'dadsmPDcaPc:APA91bFNbmQzn0TYMq1agzDQkleDabBLUxN1-Cs4GYQ1k2csuS16TehVsCokLwzLWaSxYvQEnjwRhyGk308QBDdI9uzdFNLNSe8Vk_14HuhuVPrSe3Jk5fgHd0219UR1VMOxJWTa2n17', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(58, 0, 'mobile', 'customer', 'e26CsHshiwo:APA91bG3FW81MScu_jdjjQhyFjj4mUtiFFec29XBr6D9sZ2lHdh0cyRKLx4NaIruCueFhpbsEPAWgr2H3mQxljc9-dRpnQh8753PboQAxZ-zAYkfmy8uPR6_KS18I49H2YLHI7ruqkkW', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(59, 0, 'mobile', 'customer', 'eINTQEY1QEE:APA91bFFRPTu5YkK8SziUzoOX393f3LUZpSNWCxE2xjgeO2dXZm9zgMOh7GBxV8RGBmuQivS24LiF9G6t9EevHvEFElbwHn12HuFEUqa_j7_ITv-SrnvcQOXwe0ZXQKBUZJJK4Hy7fAg', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(60, 0, 'mobile', 'customer', 'dlhmHo0B7Qo:APA91bEblw7MRUXHKVcy81UmGhPS3yx76oiZpau8bz-J3kkvun7vtC6o7YNEHSP57SZJ1lVmtsz-J2rAA-iQJVEAbige0vhBMvMa98A8UVXwVK7nVogtTUqPFPaqqJPYds1PNTr0eKmB', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(61, 0, 'mobile', 'customer', 'fcHyYBd7ke0:APA91bEyBGNxQDTtGkShq3Rh_U0hFn4gLoRfvadahnrF5B7Gr4ZJwVvk6akJHv39z77f-TvAam7Qa_q-q2G_Jthdu2aC5Xwk_8KDz1h4uklQ1K-bZyeBOXS4cC706EyTqbYI8LS607FH', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(62, 0, 'mobile', 'customer', 'cdV5qi9G4Wo:APA91bFj8lRFWUrVE-i8dWh18XrpbVWWOZ6Xa5Z_fqmm20RPU3gpGS8uuGP1EQpllrQumH2gcxPM8ZUOxqkNBjPJ2bzh143Ch01KUNwf--x1Qfj_DUFLOxWsUjgDXhzv01doaua1I20e', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(63, 0, 'mobile', 'customer', 'fYm7PDsug8M:APA91bGA9IaxNXQbW6RwMZlZB8dxfWePKncjMYmR6nFkY7NFGOlvofyu1GRxKk4KwUq8Dzy1T_pBfPq-CcRMGRpLu-k2KYld9-rHO1xi6glZntoTh0SNM7YpAKj68uJHJAu5tEyRJ95j', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(64, 0, 'mobile', 'customer', 'eK1ZaE2CnuE:APA91bFm-80r4Z5uWemWiKk2ZbJDCwJqh7nj2LgTnmSYw30Y2FKSqZc-RJv9LtIfNgFUkNcmNkiNNnXQRFQK1o6Zx-CgpV4gELC95vEI-k50w54YkGikxCz_3luqwnHhOF48iiiKkyGG', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(65, 0, 'mobile', 'customer', 'cmAO--TS3xE:APA91bEZ8GkHvbC_isOdnkIYyBzqmBLStVTU-DpAqmFqorSxnMmIH2HaPcQZ5Z41lfeDi2HMU1Rp2WSh2AyqsRKtEl8j9zydooxWDk2yjqg4GJwRREIKaxjCO2R5s8hmpVRwfn9ENblA', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(66, 0, 'mobile', 'customer', 'dRYPH-AodAw:APA91bHg4Lbs1Kej-864yW4JbPMk621_9oSVlC8DNgpboLCgwjGbFTImq-vq37m17p7y5ieyVu5V46iASHRBt5HCHz7zt3TIwzCKT5rgnzcOSCWT3v5BhhVSxuvXAVJkHTqpDkiJwxsa', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(67, 0, 'mobile', 'customer', 'c5DgzRJmvH4:APA91bEyDHeIuMy1KWeKEJGIqwh1wVwkluAJfPSw-Y8IfJQKc527jq2_LWLKeRT13cgDBKtLamYgFdq_sOHpqSYdPC4klrKhoO0M-aAlEtqlAk5hSnPhWGRZsSM9XpbR3OXvbKg6PKag', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(68, 0, 'mobile', 'customer', 'dJK0qyx9znQ:APA91bHvW_PnyBgY80TEsgCo9pneiRR3Wb9_zFql42-OjgW7_TdMJ2diX7tm6OAMWFLLtemVvTZxv1ymlD0XfHTRUMt8YrmSVxtLZupPWwN1RaFNtmK6MO-JPfU8pfqu49oIcOXNl-43', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(69, 0, 'mobile', 'customer', 'eAqG0w-DDzM:APA91bGCLzhxinVtBQLDoycLWhwuRh9zKkXjZy0l4PHAJerOx5D040PBXL1xfe6xbNI8jA3essJqWUR2t5qqurYcZNEwMTE3Ni8VOVW58oAhcDeCyHEvmk1X1EGpYTnJFpJaY5DWLND9', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(70, 20, 'mobile', 'seller', 'cKw9voNjP88:APA91bFbqiSZgP5S0m6Qm4-umbxHG7aOvoi7bfjWhm0j3ExhSRd75XDYaQPOcaXSH6njP2AlZW4RG0IVzmKpCl62LIwX2BpLKXFYxaeNLkj4oh597zo6B3UwchVA98sUN4rSx1hrJZfw', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(71, 0, 'mobile', 'customer', 'dnI41odhhxk:APA91bHhTgYN2BNvUSJ-0fR0ZvIgpyi24kx7rho-kVjCsjKvNGu_WcwVSRJ19W0yBo-ojfyerNHNR8qjgI4k8HQB2OP0_CHDt_jKiPcut_68m-USWEfYe63nTWg3BnvFA8bY00JEnYGU', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(72, 0, 'mobile', 'customer', 'cakFUhyyZXM:APA91bHnvxOxss_NljA40WJqxE1dk3W_8c1mGtXNwj82QRbgGISD-0t1KFLqE7C6VIeroDIsqWAWK2pxJHGZycAa2pD0c6Z9zI2JPYsGE9Kkw6lrFnCFdjjrvbtvOp5tQdK78U3gX2_7', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(73, 0, 'mobile', 'customer', 'f_KMBqhW8eo:APA91bE28O83w0368BEpWOXZnujRHQRJb9jAiN8TGQVRA2P6TGbi-EXUQvKlSz8NeF9HMbMhRp1ignURQ9ZJ10X8QtKAP2BIfF6C3Oz7P8AjevwNdWYJKOlFMOYUso5ia_e1erUHV7wm', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(74, 0, 'mobile', 'customer', 'fPhs88eiECQ:APA91bH7yYucpdew90Ij9KddmVAZC1ZWIB3O92Yn1wCKto8q01KoRfbsE7949AcReyil_YPEnwQRGea6e5nk46N8RCj8R9rLR_NEovOx2-0zCWMC-bhZyS-PuDH7NbSqIkQhVTcMTcHC', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(75, 0, 'mobile', 'customer', 'dg9-Eyi039I:APA91bFy73ZTT8wcR8Ue7bvXDavOZBkZ_3GLP57Z2vSp685Mu8TX8k4zoLBFlWRfOPpRvSE0ZSCi3M0stW8E7KnvtXQCJa58QAK6kyj6ZBef3qnFXq5VwmvIZ67xCq4WOC-v5ajGcU4p', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(76, 0, 'mobile', 'customer', 'f0CsgS8oDjQ:APA91bE-tPZWwp7UM6XcH4sU3l8-AH9iM9K4uILMyZ87qfV0b_Co52OS2PNNwgGKKUoCmXQfgH3_vCQucKPJOEc735M-krOefWSur4PkcqRYI2fciMHc90Z7aC0VMPsa5t0jSM2HBPVB', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(77, 0, 'mobile', 'customer', 'f8c1kObO1Tc:APA91bGusAiGZvjTU2RX34jzZG_AZ9piSvclcZYlaJHSOEMhWuECDAKdLtClCeHMRmgQQgL_GWCgG8uZ4CU2U4XwQThrrhJPYceVhm_zWQvqvt8TJWLsvWjCrEa-DttJnJ5eL1rFf4rU', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(78, 0, 'mobile', 'customer', 'dw8OM-duR9I:APA91bEkQua-8u4_WCfOfwOMRTkEHpXWlIodvMDKCcykR5zZCXTAXtAPoPnNw-kQfLyIwrL43FG4JvdS90kBFM1VoTBLk5pr-HcVuo4sVkQiM-UXlre5TcZeWuHDocO26kMJc0hYiyLR', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(79, 0, 'mobile', 'customer', 'eqS1YppH7yY:APA91bHB1Y3SOp3Dzl_ActfW0lF2q9RNi3rT4qOQifvYZNaDB6pd9b92RdxFamNfNERofBDVfzNrSpXFUvYLMrTxoxLQIEIHgAdOc1G8jFzIhWUu4Y9oU5oDD_b6un0LHdbTkC6YFjVK', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(80, 0, 'mobile', 'customer', 'fnzhIkXLkDg:APA91bFv26pjhcXHzjEbxbsUffAaRHJhqn2tbbb-bxpjeV2ISLE2sCQOCiMFcANYUi2vN-Ng4Nv3uF4QaLdaYreNvp5FMhJ0CRRq0tF4o0Gj0lvSHJvtx2oMA7Xf0VfNcDdJNcoylPzu', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(81, 0, 'mobile', 'customer', 'fidVNbzGpGs:APA91bHgMCzL1RFVLijnOipe61FreSjqw6GiZYMaFa4XA_wZebnBrc3zeulqRMm5tZ6qFQBjga8tTnnpI4wkQ1D9FXPZIgTJyzrzE9XWyo2viVig9QQTZ9Qrp7aOJyQA-XRbSCFne41i', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(82, 0, 'mobile', 'customer', 'cjGysN0lFfU:APA91bH0mKK85RVFRp-ZWpNRCHjEDFaZWQVy8_crRpdR5VGrt53dw65wHG2nHXA4Q4i8TqHhqZWr9rz9UqEYV4IWJSOTHRsaKBduGFQE6jkiZBYsdq_yI1zOrTuCAnGDddlVxgiLbjtH', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(83, 0, 'mobile', 'customer', 'fCDRRkdxjyM:APA91bFhHpd7HVtXMYYYF-MqpyXApQPjaM5SKJNJm9VTkU8cjpymBZ1DLvuFd6GWUGK0MoktRBoC1qobRkAEZrLf1qrMqVbl-JBgJS_QhsHUUyknOfxJf9YpHqVklrOwW7JG7g9uYNe2', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(84, 0, 'mobile', 'customer', 'cGnOyG9R3HA:APA91bECOXJbwJGCOg4oifCpafmoUAZP2iOo2rxkBpTRRTBMQBmbtz-JG0rLzB7ldz-TN_-YbBcKh23-iwiwUd6VOutbGEhKcVmu1Opeb1Y9vebqnxgVDFLXsIDD5dAZic2JSdHT2bY2', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(85, 0, 'mobile', 'customer', 'cir70OB-QKI:APA91bHXn0um0pzZVTPGjYpzgqsv2sQL4iyMOWQuKaEDL4q2cJ1kL2Prh_D5SMcdKVmVISDXIUb93pGsRSHLAq4uhaeZuXxcr7DctSqn3BKeKtu50Gqo5BLoU8ipgAeiXIhBu9_rAxvy', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(86, 0, 'mobile', 'customer', 'c7MKibjQYAg:APA91bGktIHL21NXfSpZmo70odMocs3nITkYM_RC9Zv5E_SMlgmvuBTy4nB18cPKvhMgIW0SjONqki5AMcbQYobAlLPuPzMVQLTVZsc96HNHPeawRabCBh5NB3-bS6zevNS1uVLC11UH', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(87, 0, 'mobile', 'customer', 'fuWq-hyg8Ek:APA91bEs4PLY2ChcnpFRPBAetz4zPKiM8xWEmlh4vthfvkiTBtmthyT7xzphRjj6z1boTl5lfgCc2kvG6z14Zz-oX9GJAOo9irkh_GNn0xULBhyegdbq6fpr3b2iq67L9kMn9hZJbj7F', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(88, 0, 'mobile', 'customer', 'ecfa3VHefis:APA91bHO5AJEsUG3ohkDVB9OyYmUPi1HDiN0rKK6zE8QXsc9RdWY9Aqq33m2AsPmck-WKFx7C_Sp7dbuEIRfw-PQxXWvU6qbz86BDYqfItjjhOVcG82afS5a-5o_yxZHUXS08hgeZ7dr', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(89, 0, 'mobile', 'customer', 'd6odxCuVmVA:APA91bEdMOJgxX2wxcz1Wv5UiWfmY2juwE93Ly37XNm6OxtojDa1zGZNTl4rst3QV-xW7IKl1gRoGUKMdtsBUs_G3-ef3RSJCI67abLwzPVUFzJa_H93fOvcaGxjzPDHMW9XkHg825pi', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(90, 0, 'mobile', 'customer', 'c6A10IiXpNk:APA91bEhX-I-lyk30AO8s7m6lNAjVu1ScV3YywUe_BPnTJHhOylm6CIBgGEdkVZQHbbfZWxK-SeSaMkkOrpiio76Fm06pz0bsy-QfGlrdFaFqf_DSOTCU8Ua3f8OHa6J9pFTXUUhmJUG', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(91, 0, 'mobile', 'customer', 'e1L7ue5wjEU:APA91bGPY3QYkkLTbyNjyYlR36Frig1lfhyzc4xB2JbJqGj5V5dwdwF5xnuoKODauD0HCWleoM0xsL-s_fLP3N8_F3BcXkGvhL-gioVk2_C5tqqeKeid9D3BQAc0z8M9OtNUPqpBafSK', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(92, 0, 'mobile', 'customer', 'frqzJ0fjcwI:APA91bF1ssfAbKJVHGBhs_NOw74nVRvMHezLOSGGN-cG0u7w6saRi36-mem61hbfM2-akfhC2XpriXSvLjVW7AvKuO2JiaqzO20mSgLihAoP6YW0FsA0B1feYrbRUcO7mhfHqBO6QJdd', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(93, 0, 'mobile', 'customer', 'cYVurizfVXs:APA91bEZxRv10a7a8O5BEjnHDtIJ6qprCGs3NJG0pxC74O7GRXuOFYdrOw1FwKmAZvcX0mSpFqDK6p4KdVFHyHQQztrqvnmky3qzwjxTJZsl-Vtn3rUVljnLB-Ss5LX3CO5XCbnDl-R_', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(94, 0, 'mobile', 'customer', 'd3DphgPBa9I:APA91bGoNBf3oLbIThoBWSUldUn3iJj-NBBZmbAPZ-e_mH1yJixddL4Nw2xDOqXtZHHYdpBzQinO1VhUSIzQMnHII_meSuGw3OEwaHfTpHc4og1cMdsDjlH65RUxmXFd-9j6lTXu4oql', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(95, 0, 'mobile', 'customer', 'dmsLdQ5m7Eg:APA91bE8lsMpWzBFI82Cbf9YDZhvz2U9BVpM-bq1ifnTFK2qI3m9VrIveikWMWugr8qE-VfJ7qB9Tp0X7bdMDUaNsaOEjVgB5FwfHv2hxpxQlV1YjezL-isrE3QgtS0ElDNulchNJzoA', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(96, 0, 'mobile', 'customer', 'cPW4NM4Cqbw:APA91bEwgitC-r69g4om_HvETt80mFCPsyCLH7DhoPUxBEX6A6x_pr6IiXEHbZUhCjkuSuOpuX6vF_1uy54Ot8LBR6PBbJhvGfe-EZxcFY9SI9f8zgQO-mwbqgln-sdCq5imOpmzxXLV', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(97, 0, 'mobile', 'customer', 'cGVSEUELiQI:APA91bFGxrXtZCdjBa90hwQRtGrKn8Cls27vduJvTcHPIAZGVZE3aO9Ny1_WZKJ-Jcch-lmhiQ1Eol9R0716Kuagd1cFzyEwZJWQj1x9j3XlvIVqlCoJHvRwZ3SI44J3b7hXPTWsitJb', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(98, 0, 'mobile', 'customer', 'eMrKHPdRPEw:APA91bE4CSfYHDgFcf-ZWlyqNySSTTWm89VLpJFCDwJoeDExdNYxqCtkXj805nWEVre3dGPUAsKty-ukJ-vZB3LrkBJ_oobWH7onHc45ZVi486ZG2yAi1olgAe9nizVsDlv_XMrRPyRq', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(99, 0, 'mobile', 'customer', 'f_PSVwsDw8c:APA91bGsmp3isFMr9ArdvwUcqe9aqE2Y17BEuQf05K2pGED_X0Led0AUxPc_roMGx3y0ri9xUtp-K95i2xuj0jHXqBF94rEvuvw3w7CbhCcJ-DTdKQAV4vDOZuQeoUG9wqxTZd9mPWli', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(100, 0, 'mobile', 'customer', 'dEZ6HcrX56Q:APA91bEJL6sQwJJIvMJOQU1YrAGNRWkiVzHMbmavAymdS9ggVvt27fOH-coaMapYIRQ1FXnhJyZcuCVE_K0rYo8UGEJzlEWxzMm7XC-LJeFdf8bhyd3UwKcM5GZFnxOT4TteBTmN-Yey', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(101, 0, 'mobile', 'customer', 'fhchNrZQNeE:APA91bHRkNKTOFkvFqgYIEZOkpGRfmt5Vga74T-OcUALEJBXEOln-bC561QPg5ljO-0FzGFIRBAzzzObTP7RPYnAHDTj2c6wvQBScJ-AYTXzpgk3hekN0Ga84Zs99vYfKb6SK1pg3kMq', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(102, 0, 'mobile', 'customer', 'cyOgtLBYHVc:APA91bEgOUH0vxmvYhkAmy3IUV9ZRNQJcOAIRcdxoSJv1oCu0ElklCD2nNFdUHd0kZvubXrl0gNy0HI_hN6wrpBOsrROpd1Qqify-nJRm16NuF3UN5vcPHAs-LCgLigPuePzvuHuU2aP', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(103, 0, 'mobile', 'customer', 'ec73fwWEKeI:APA91bHJtBEZ8Yde2KSOnKNEkJOwpP8rH_vXh9iMNMzv6xdPdgTqQyjfM7LO8YSCHCPJvwWGTCErOCmraTY_WhSpAhcd2hYTFbbm6my5spj-rlwxO0Ng__F_M-KQB23ceXU9hYfiqbFQ', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(104, 0, 'mobile', 'customer', 'evR75STGb4E:APA91bGo5wOu90I7iK3JXkONyRGjhteiW9X6NPw4RzfK8d8Js10DtuE-Jceta9HVQhIA_wpqpJpv7WJMbk0iZ0xPu5CqPe8f6Aube9b8ZD1hTiitr4Pm9iYqV9GtAq2c-SuU75OjU6vL', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(105, 0, 'mobile', 'customer', 'ckGvR7quoPY:APA91bGcmdHwgElGuIYh8y5lpFvQBoLO3nbWRDoDzSmBYgcNnLjiBAkoQEcWtXqnxj5cdDq8VqvqjukynEPlkJ8uxyXqUCsj-BCDkkdAczMWqmxEQ7K1U087mve08L5nRNuoIgsAMjcm', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(106, 0, 'mobile', 'customer', 'eEKaB-Ed-zY:APA91bEsEwEfFOMpcQUtNAY2obZyOCUZR2f2sOXf0ahD4hTw-ecHWXRiFBS4_OXb3QQad2UAxtFyGmsgESHc2FdazsjjCEaP6iLz9sBEOIMaIrr_gXBERtA28CehAqf2L-aasg02h6F7', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(107, 0, 'mobile', 'customer', 'ep94RaUs7QM:APA91bHfUwV_rBHWaTuUNuYqSVOm1x0pWAXlRncuVdEZISN0yBq5Uv80XLokdb5yW7gTgOvfgglEin5LEdyhgtMxzCtdFOC5xIP0fESmI4M6s3CteytgCWLhNzPmRCdcdsnAQbJZJJLr', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(108, 0, 'mobile', 'customer', 'fcXFH_FfgAA:APA91bFrJplmiusPekN27KFeYtxuwUfW-mpoVktIWaeauu_pM5Ag2aehcWecz1C7nRnoYz7fseGoiejyNvyyBVWwcI1ScX68FRYRK2y6a6v00Wo6XT7rBUdxVndPeLIb21IscbAaTN1r', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(109, 0, 'mobile', 'customer', 'dj2o5Cui75M:APA91bF_q35fZlKsHHLldA6f9Oo2IXFW1PIIU-rv6skXDqZpBAnkbXBeVfquFbS6gMJn82CXMGzxTU_cpSlpkHVF5PncCyPE6xV2QGD4ZxpX3fMz-VTspZPCQg3YsMa4uvrMcD3a5t0-', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(110, 0, 'mobile', 'customer', 'fdOH4mj1qTg:APA91bGltp6k18v6pT89B1gh4ohOoMoUr0sCm1L6Uq0j5tKjM8nxfb9UfoslNkBMZ-YUgophZ0LleHu_6_t-wWpNvCZLg1WjP0lt92BHPSuX9cw9mgeP6aqZiDGv9xdX1EsG7_41aKHE', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(111, 0, 'mobile', 'customer', 'fNe3rblew9I:APA91bHCaTYqsDvifHq9IhJsJ5ZKTx_wWjv0Q-xWB6nXnVxXWUppWtg5SG3vqL-viPdWK-1PgijvxeRqm8yc_tUy0Eq57pU-fs2FYwfOBVoo7dM7wYX540cvpnRtGFftjlsPTzVmu3s6', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(112, 0, 'mobile', 'customer', 'cLWs3dA9UPk:APA91bG33BwOEWVJ6OXG-lZtzKb4fmWkpITfnaNZNl8mT7-f5apcLf-nlHzKAUsrQ2lOv0awhlAgULyYMEgZvV7scRKU3tp4jWkix-_Pgm-67V9ZEEPojIf4nZD8EvIMbYpPjypt3Raz', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(113, 0, 'mobile', 'customer', 'd-GzxGtJYOw:APA91bE5VYusk2xRW_Ffl2nNlJ2vHpYzJbEI1dR-QG1Cg-yRX8d2msjYQ3weKRsrszt26t4HwIx5Fk2rFyBIOQBFRalJQS_wlRxTV58uhrC4wtuncXP8OyPUmyLYNky2OJrOHpniPW8J', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(114, 0, 'mobile', 'customer', 'enEZTKBv7WY:APA91bHRdOZ5n813E160VUrtfYvnuy8j-LU0zPAuTZ7Ejg_ZI2-Lk0_lXyPorrQQPb0gcWvAOM99oXblnvjeOnhQ56Ctl0jnTV0hi7mbimvva69upEbNpNjucNyUQSw8GZfLQdOjxHWM', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(115, 0, 'mobile', 'customer', 'dd8WGFTEIzQ:APA91bF-KfcXYwk5BvCk2ntps-aZrbcNHYwLAAMzwESOGHpnCUV4YhQyHdSCXpmuVZ798Gfui_p0AGyC5No0IbvN29RnL9jQ_Dd4_u4Xqgntnpb8QNib7MLmBGJiqK3iaG-c54K6GQbn', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(116, 0, 'mobile', 'customer', 'c0rdiOJBc7Q:APA91bFSfJSbNwfVB8Zl9xAMMYwJPxDYDkRqSuNpayeVNIkPQEszLqIvEyyDQpbwK4FqVuUHeT4wRsvkWmjVxQe80GuRhj6_VzRp4xI1QjijloY_VhBUxZOMvF2Y_wSz5CR1-NeODZzL', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(117, 0, 'mobile', 'customer', 'eZ_b7ggmjWw:APA91bHG1wxMOD5an2DOltkuoT252J9Ckt_xgozUWtjPTg3qRKGnHPQgOM4LLYGuqrzW42yfnXfXarUXc65gerntext_XHxZe6_ZdXnrKjWosTfquK6DLXLPkJqJIZ9X2QMblRwoo7wd', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(118, 0, 'mobile', 'customer', 'eJMFLX3RFhc:APA91bG1cHCOmX7k1gR1YbArYoXulMe9vpFAkwWc042phbju6ssCDspCxXqwAdlRnPuh_dQWwgoh0h3xrmsorrbNuN0AfxSupchuFtZu2hVkwDShi8Pr4N1Y-Cbo6ONMVgQoT53bKqZA', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(119, 0, 'mobile', 'customer', 'fTrWKejbwuM:APA91bEmXRLnBePzcA3_UbpStVIaRUpgox5stNg1TQ7Wj73-plNhT6P4l229juYxEaPffEdi-n0zYcF2Kaf5potJSFFYO2FG4Sgzj9A_KVlGcPGFSrupEy6edz9DrY56XvtIwUhb6Y5M', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(120, 0, 'mobile', 'customer', 'f5MlwrAWR3U:APA91bE3OmnvoxoXxzCbp94M6BfrKWFfUzGnZ9A00En1Snt6KzNaxXWWjskTOSMj7Ohvv95jsOqOw_oU_RnOs6QEz-49JgnrjcZGy8BGelEpMxIdkor_owA9XoNHyg10x1uWooCj4NpP', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(121, 0, 'mobile', 'customer', 'cyUx_7y3MXE:APA91bHvn-zrZUEqhMAQPWCfg6gzkTifFITeJ90rX113mPUM_oFvHLAJtXg0MrskaDpjaFE0vfyRcZXrNLMxQj3dJ4PybdG4ba_do6I4ATqs4vL1Mt1THBoOYstVLXSnkG9myLNphGNL', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(122, 0, 'mobile', 'customer', 'fBuCPF9-Ovw:APA91bGdyRDQ8_Fyg6SerUoY6X5MRmGgG77mqmNiylXILd5pdYU5AyZDCxKQLC2F0Z9jtAIVG3PTRmSON5wluQvk1_1ESqbBorENqKn7TxU2Xkl0UCNybkENJHqTMgDlO8Sy4KPhkBUJ', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(123, 0, 'mobile', 'customer', 'daAKdJU4Alc:APA91bFHTYfYmKjIcr_RPo2U7cGm5-06y1lRT3ZHqIfjOg-q9AX3KbkSDf9WaPMU0WiSeDApdHPfA2FMD21vOEh07A4xP2XWQO_C67msBZMflIdG6_EE8vAfCtJMJqYjk-6dvnpm0B5P', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(124, 0, 'mobile', 'customer', 'f7zfToI8VSQ:APA91bGPMHwkX-Dov0NOAGn9p1cYi-tWX67ys9SeopqeT1BAm20OjBAGyIlEwg3M0aL0pNKdkrraWvRcga9MeGU2FkE2tsuy6aYyOEqjPlIDt9j5nwVtnRqHkwOyTAeipwO023WE6PlD', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(125, 0, 'mobile', 'customer', 'edpYPxRNCPc:APA91bFMsEvsHLjVAVPzIdqDC3Wotbh2HaCmezoO4GUOIMtsMykESkSXrpSmLlsDO5gnFm9BPnSYP-Mppd7pSrgLxkBlKvJ9mgXbYvUzHxAY8qIy9V5Va2QkYkLOsqaTzQ2hyB55FeKI', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(126, 0, 'mobile', 'customer', 'cJvoKO_MIww:APA91bFzsAnJlZFtpiEohLfTv9a0agerRAQPiPSwwY0ryU8prDOnX6Z26BZ8xpJeuDUxBt_oGefr154iEGrFSdNIBTg0b8ek91b6Xpxr5hSdWkCPOFi1ZBn_tQHoCobw5L6wLKS4FbOc', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(127, 0, 'mobile', 'customer', 'fAPMqRq47IA:APA91bFtvxOCu5jWFsmbo3rD42Mjex6wQimUTGROxaYPdcVDe_5ggsGQ42IZP5COhFYtY9ZC2nuKXtoYEzElS3kkX_Kr9ahESR-77LKD64T1ykkgC2UdGyha3Hly_W-o0w9oMBUI_lTC', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(128, 0, 'mobile', 'customer', 'dUj7D742CHI:APA91bFCr7QWX8Uvruwx02mYyjTeSjJUOcCvp7KMODb8odVtBUGA7gc_hXSbVwxyvykoCmFj__uWQqb_Xccx6W1BxRYxiw5Z-oYUaeAZKHPfX40lvvMeEYVBNyXdDpSKYI-b0HoZBy6e', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(129, 0, 'mobile', 'customer', 'eeuo1WkrNEc:APA91bGXEQvygRfI3MXJX6hLu2BtDx4lJSNDkijFYybYl4a_zFszBNkuWKHH9xNBJW22Wg2eLCUKPwe8dQy6YlfC7xWzrJa2-EdBJ81oXYnLyC_nsYBsjFGhGkUBWjVy_tOsWgBtZ4_u', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(130, 0, 'mobile', 'customer', 'e33IWHk0j_U:APA91bGT6jnlzsfICahXWFKMM6vXYgqWmjg8_vJaH1SFBddkkc92N6yID5qGLtM0MdMYTOEMk2rcfeP2u_3Gh0aQn4zMQYrZRP2PkilTFYVFVURmyViOkOOqBcbdB20OXLCdwD7qfbQf', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(131, 0, 'mobile', 'customer', 'dFkMcleHzi0:APA91bFCBLMjYpbslpO4XJglmAjXx1xj2Bw4gBXL4doKh5ipAV1vdGFU0xNoWiEjpvoorA26AEYBeGTswQKR3S2mc8AFcKLxeHT02bnQNIv5e_2itK-VCtSxoaBwkSCgI0qP97K8culx', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(132, 0, 'mobile', 'customer', 'fyE4qiontOs:APA91bEYfaVUJ7hlBoamfGYJO1b--pHJa6rPFoDqi7ICU6Tyz29iWjeWDxlKjEzsIHEAW-zNNT4515K5ILqJtxEqHUkOP7l8b35mLkdiCnQbbdA5YT3dcgT4Y4iLeFBVcQA_Xf_SiQ68', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(133, 0, 'mobile', 'customer', 'fR3QB2hc80Y:APA91bE8MJ6atSRRaJqk3D6h_T8DUVczf7SBTrY96QE7AMfJ1J0B7pu6fbrTY1YMt8fYhMsK6ZMEU6BAAR1oRWmVEfAeA9YyoaMrbXSZeMEh9oQsyyOTiFctvLf_nNxIh-vwSkKCUcYb', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(134, 0, 'mobile', 'customer', 'dUV1k2wqjs8:APA91bFIxQWzwE4QHCALWbDOrfqNHVbFu4K1CdnkpExIKXQViUy8EWs8QyapWKcXt7GGOuTiG94lL1pJe3i2orWiQFryfjMBDmVnaSzrSirCunxgIXj5IdecBKNUsZbQ8EFW5PcTHZjH', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(135, 0, 'mobile', 'customer', 'd-V3zdGDk5A:APA91bHWMmq3LC0EmsakDEl8afG-TqPRiXCfCgmBgtgdB01tAUq-I1Ut8HsiHouPY8OhkJl-IFkg4jcw0CauBoSKroprpCVP7GeUGXsUB2uDWc6vUkJ_xGrnqNpfrP7X43oxijbdSxCw', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(136, 0, 'mobile', 'customer', 'fLCndC6baJk:APA91bFix1fxdyODnc91HJpTJ6VRAum2tifndEruTh0nLjDW3Cr9h6uCppLorH8ONSAIrlrV7wJtztqbZ27OZ33jMJS5qNqRy7wPHCQEaT5dFO2IUMP2JhJoT99cWV2YBS3nPfHU0EyV', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(137, 0, 'mobile', 'customer', 'c8NQsjvXxb8:APA91bG147dNvKfAH8K25NguVFAAT6nGkpv4qqD2bLKOY2znMF75I86XIGh-qxMDsqFUs7PpEIhCrqt1Jc4-T4Sdw2vDQWis_1eDFafsDH90x0x5xbJ8IE9D9ewNWjvMWPWbIIGG-Zjf', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(138, 0, 'mobile', 'customer', 'cqfBaFBVZl0:APA91bHFrEm7XYPTo-_BI9iyMutFuCwfvkl68ZsrmUWBAHxa2JTa5ihyNcPhuKBsJe1y8eB9-NGykDvJbSnzLk6e0Wg-TsKuqpK1LEtcE6gZAlXY4FhvYtzzFvKYE9-EslyEelnMkPfN', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(139, 0, 'mobile', 'customer', 'e-L9RxtIwuU:APA91bHIvexZAMAJHIYbXdgjNuWua4amI9753x1Ztc7G8XvRdalvNLSBmcYgVGNlprizWg5257u69fUeXQttkpFP-HAFZAtth3aLeV_VRkPoCDF-NhdEm-SU7G4AzYqjfVxd4WN9ndX7', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(140, 0, 'mobile', 'customer', 'c9KizCfb-F0:APA91bEPmKo2Tvi-ORX-XYLJkYEvo0EA5qRi3dipw_bJ8RodkrtYwlDgdorFb68VsQqdeUbNeRPOTbKyq-TWJrNFM0hUSk7aXqi0s8yUzVkeSM-ywjj9RbzaQ9whVNwiyPDZee1FKNTl', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(141, 0, 'mobile', 'customer', 'dzAme6B1Etk:APA91bFKr2Zz3yzdrX1HQobDlZi4Ye7X0vIPJKTjrlcRCmdnVW6NCoglzZIJaRnGYtxkBz0--qkqdgA1KJJR9WD1FiR2UyDbVpdVsqcOlm5ku_NVLmPgcHQe5XfBxNMRnFIhAti7dhyU', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(142, 0, 'mobile', 'customer', 'cxJYUDNMakA:APA91bEPEq9yRZztlBGaLGwpwfmJXDAjAQYEO1Jj6aliN3dpK_Z5dajy2_-qc8AQC3NDH_Agt_NLRTq-X0KSeuTLHYYEHLOTtB_R3GMopv2SRnWQa7XX8inomC-ylOy6q8eZQuDTMRwk', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(143, 0, 'mobile', 'customer', 'cFCamOhaO0A:APA91bGOzCYy9b_It7tJmsmnhv4BuqFsripkvIA04ORzRGrhSikLIzWHc8MI8KEyWzPjc6th_fTXDsKZEF4BLoU0poWTgwQi0QTT8SQbLJu4lXy6lQ3Dx5z-Wgj3cpSu-O7dWkyz2W3g', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(144, 0, 'mobile', 'customer', 'ePy7siJhHSs:APA91bGp8MjYmFcU1TWtZnqg5DyAErRjbLO_PEoyIITVfLyQSFvEBbKHcLbUQgeU2Gt1NmZcVf8RE4al4rCl3k8DKO465oFjCHQFdOSmPeAPFzSu2L80ix_9ZLuEYppNizDfBLwS8Euh', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(145, 0, 'mobile', 'customer', 'dtRPkouuCGc:APA91bER2ODfe9nK5WkOlQ9FHMRH7E0Y9mKq-6FOddPgXLBeYjzAjIhDAVokrMDlGTDljCbYTVME68-YA9sG8lFMnHQQjLC5Ckj2fK9ujWqTWzJ1Te_ysrLXRkbhj2RDGNmj4sDiAFH8', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(146, 0, 'mobile', 'customer', 'fxtdYLfxSaE:APA91bFI_ZsvRzpMQ4ULU4F4REr9vQE-rtlFSQXHDcMcpy_0REJ6knG1pyA0VJh-IlsPBSzlE6h9by5blpA9NR_3uAvNkOSeFYQ8a532RfZNkkxWxI5ar-JoWpRmIHFahGI99FL1mGU-', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(147, 0, 'mobile', 'customer', 'emFQGphpsTk:APA91bHUlEKbGbcRBLswQql9UBI0T-9y772L8pD69nOk7h6KNxxFkMp6MxiW57v74W4jiwQC0-wmG6XN1uBNZehdwlddhVi8rXIrGpr8hpg-rBQc-BBn2cpdJqD-grgBysczqg9yRFQz', '2020-09-16 15:48:38', 0, 0, 'subscribed', ''),
(155, 0, 'mobile', 'buyer', '{&quot;endpoint&quot;:&quot;https://updates.push.services.mozilla.com/wpush/v2/gAAAAABfb0ajBnpTRW0qT07cNegVX7RfGaop02nB92sBO_Xn3PR3PB8s0jwMCrzMf12bhhUjX7V-4ghbNqHSoI0ACWp09OBamERZfZFUl-5zk3wFKe7lzbtqTCAoTN9X1Xt8dntQeYFd9r0gVGUpYgvqnbm_sJKlTyI-F8OJJR0KsUIMbFV-DvM&quot;,&quot;keys&quot;:{&quot;auth&quot;:&quot;5GssESMmhs7U_EmpBkQE3w&quot;,&quot;p256dh&quot;:&quot;BOY2EtO69eAG8N-SlDGwvksvr9x03r_B868daXet3YNPMy-Cf3MyhKAwYJ9oQZcND9R4cHphky36r8VeUpDNyLo&quot;}}', '2020-10-23 21:05:09', 0, 0, 'subscribed', ''),
(154, 0, 'browser', 'buyer', '{&quot;endpoint&quot;:&quot;https://fcm.googleapis.com/fcm/send/c3UNXBw1QaM:APA91bE-dYt5xkB0VBA9mPWb3AzLarbrFashJPLlSmkhkdpqKdD1niSS-2OJHrh8zYrFcBj0v2gujoUU5s6cuCB6CcsT76CTIqevXd05xp3V6y9uxORzjXHd_3MSBv-DKdaFAegPOfpb&quot;,&quot;expirationTime&quot;:null,&quot;keys&quot;:{&quot;p256dh&quot;:&quot;BBDIVYbROMyY8yiRLzi_d8kfhzIsAYkowJbSkmJqJEVEI47b-hk0yTp0LqYeEWw29omCg_K32ABbvd-DfaD-UEk&quot;,&quot;auth&quot;:&quot;Vq5eH7FxWucM2RgX7akR0Q&quot;}}', '2020-10-23 19:17:50', 0, 0, 'subscribed', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(824, 0, 1, 'product_id=48', 'ipod-classic'),
(836, 0, 1, 'category_id=20', 'desktops'),
(834, 0, 1, 'category_id=26', 'pc'),
(835, 0, 1, 'category_id=27', 'mac'),
(730, 0, 1, 'manufacturer_id=8', 'apple'),
(772, 0, 1, 'information_id=4', 'about_us'),
(768, 0, 1, 'product_id=42', 'test'),
(789, 0, 1, 'category_id=34', 'mp3-players'),
(781, 0, 1, 'category_id=36', 'test2'),
(774, 0, 1, 'category_id=18', 'laptop-notebook'),
(775, 0, 1, 'category_id=46', 'macs'),
(776, 0, 1, 'category_id=45', 'windows'),
(777, 0, 1, 'category_id=25', 'component'),
(778, 0, 1, 'category_id=29', 'mouse'),
(779, 0, 1, 'category_id=28', 'monitor'),
(780, 0, 1, 'category_id=35', 'test1'),
(782, 0, 1, 'category_id=30', 'printer'),
(783, 0, 1, 'category_id=31', 'scanner'),
(784, 0, 1, 'category_id=32', 'web-camera'),
(785, 0, 1, 'category_id=57', 'tablet'),
(786, 0, 1, 'category_id=17', 'software'),
(787, 0, 1, 'category_id=24', 'smartphone'),
(788, 0, 1, 'category_id=33', 'camera'),
(790, 0, 1, 'category_id=43', 'test11'),
(791, 0, 1, 'category_id=44', 'test12'),
(792, 0, 1, 'category_id=47', 'test15'),
(793, 0, 1, 'category_id=48', 'test16'),
(794, 0, 1, 'category_id=49', 'test17'),
(795, 0, 1, 'category_id=50', 'test18'),
(796, 0, 1, 'category_id=51', 'test19'),
(797, 0, 1, 'category_id=52', 'test20'),
(798, 0, 1, 'category_id=58', 'test25'),
(799, 0, 1, 'category_id=53', 'test21'),
(800, 0, 1, 'category_id=54', 'test22'),
(801, 0, 1, 'category_id=55', 'test23'),
(802, 0, 1, 'category_id=56', 'test24'),
(803, 0, 1, 'category_id=38', 'test4'),
(804, 0, 1, 'category_id=37', 'test5'),
(805, 0, 1, 'category_id=39', 'test6'),
(806, 0, 1, 'category_id=40', 'test7'),
(807, 0, 1, 'category_id=41', 'test8'),
(808, 0, 1, 'category_id=42', 'test9'),
(809, 0, 1, 'product_id=30', 'canon-eos-5d'),
(840, 0, 1, 'product_id=47', 'hp-lp3065'),
(811, 0, 1, 'product_id=28', 'htc-touch-hd'),
(812, 0, 1, 'product_id=43', 'macbook'),
(813, 0, 1, 'product_id=44', 'macbook-air'),
(814, 0, 1, 'product_id=45', 'macbook-pro'),
(816, 0, 1, 'product_id=31', 'nikon-d300'),
(817, 0, 1, 'product_id=29', 'palm-treo-pro'),
(818, 0, 1, 'product_id=35', 'product-8'),
(819, 0, 1, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 0, 1, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 0, 1, 'product_id=46', 'sony-vaio'),
(837, 0, 1, 'product_id=41', 'imac'),
(823, 0, 1, 'product_id=40', 'iphone'),
(825, 0, 1, 'product_id=36', 'ipod-nano'),
(826, 0, 1, 'product_id=34', 'ipod-shuffle'),
(827, 0, 1, 'product_id=32', 'ipod-touch'),
(828, 0, 1, 'manufacturer_id=9', 'canon'),
(829, 0, 1, 'manufacturer_id=5', 'htc'),
(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(831, 0, 1, 'manufacturer_id=6', 'palm'),
(832, 0, 1, 'manufacturer_id=10', 'sony'),
(841, 0, 1, 'information_id=6', 'delivery'),
(842, 0, 1, 'information_id=3', 'privacy'),
(843, 0, 1, 'information_id=5', 'terms');

-- --------------------------------------------------------

--
-- Table structure for table `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('029daf7b4e7c6b34e55b045dfd', '{\"user_id\":\"1\",\"user_token\":\"5dHp1pVulm0IkrY2957JWAPyV1LMtwBy\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-17 16:56:47'),
('067c53131bf13d2ad34c193913', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-27 17:56:02'),
('073161b4342a7b441d2d4b312b', '{\"api_id\":\"1\"}', '2020-09-28 09:04:26'),
('0e5c956a82da5155bf51163c1e', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-28 11:01:08'),
('12c755fbaa90b69d31b21e7978', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-10-23 18:12:48'),
('1a91665e9b9b2cffa5d75721d7', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-10-02 12:29:26'),
('1e3d3078b937184eeb6109c77c', '{\"user_id\":\"1\",\"user_token\":\"l0nFwqVSn4V0pz3hi9QzZZa9ydh4UTLV\"}', '2020-09-27 17:52:38'),
('217eecf73b0a683151125518b6', '{\"user_id\":\"1\",\"user_token\":\"X8TErOL0pwaERGTdiJT4FuMq5u3MHUlY\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-16 15:49:39'),
('29439ccb7f9caa2091eb098154', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-28 11:01:08'),
('2f106ff7e7b2c30165761e2039', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-22 09:27:43'),
('30ea2ef006af01d7d6f086c911', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-28 11:01:08'),
('3ba35cc663e290eb2aa54581cb', '{\"api_id\":\"1\"}', '2020-09-15 09:46:49'),
('5634ba69182f3c1ace4d4ac223', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-27 17:56:03'),
('56a115dd54a62df53cf4fbb735', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-10-23 20:29:09'),
('5e79894df71d3b5053b7dc7e43', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-27 17:52:23'),
('5f4ef0241389819fc1e5d1e616', '{\"user_id\":\"1\",\"user_token\":\"rzURtPsytgewitHsQvsJIj2TfSbreqDk\"}', '2020-09-15 09:46:59'),
('6440f9d834d48cf01cdaa5d90f', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-10-23 16:39:46'),
('6609ded0be2f913cff011444a9', '{\"api_id\":\"1\"}', '2020-09-16 20:17:56'),
('669b0ca179507e5b1cf6e07756', '{\"api_id\":\"1\",\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-16 20:18:04'),
('6c0d3dabaaf7070743b650c8f8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-28 11:01:08'),
('6e9f6181801bdf9b4b253ed25e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"WIRlnCbbwK6WNl2GIGpQjPICInbCgj4M\",\"success\":\"Success: Update Successful!\"}', '2020-09-19 20:09:28'),
('71a8dd02fdb6f8dbba0a1b5f1a', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-27 17:25:13'),
('784dd48b490e44a9e9618fea1e', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"CC1W7A8Q1pWfmqzgNVLyR7H6eEyNgRdv\",\"success\":\"Success: Schedule added successfully!\"}', '2020-09-27 13:08:56'),
('7d58df7a55bc5bdeaf29306fae', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-24 14:40:22'),
('94930e3b7de8e96b1f21f0f8f1', '{\"api_id\":\"1\"}', '2020-09-15 20:01:11'),
('aefa101caac7b0b19db5b5f5e8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-10-23 18:13:16'),
('bee36a5ea8b142ee990269d2e8', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-28 06:56:29'),
('c1b477b16dcea070df80850f4c', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-21 16:46:36'),
('c331e965ec278c4ae7703573a6', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-28 11:01:07'),
('ce093e31c99aaff123862bcada', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"dExzyTqmTQYouHLy3hmoFBNvYIVeEROe\",\"install\":\"GMUy08aWUe\"}', '2020-09-22 09:24:31'),
('d292886f44453fcbadd63121e6', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"PPtIBaaupcxDVQiinW8UY7NZ3i4Wrol9\",\"success\":\"Success: Update Successful!\"}', '2020-10-23 22:06:58'),
('d6f5ca120b249dce1775a7711d', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-28 11:03:33'),
('d77550bc5f107164f0907f886f', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"jPrE794MvRKOP0hRR2o8xQNJDv7IucAr\",\"success\":\"Success: Broadcast Successful!\"}', '2020-09-27 18:58:14'),
('ee0545f687a0e506296371bff6', '{\"user_id\":\"1\",\"user_token\":\"6KTvPJzIuhqKEnvfSSg6CaL8gudJDeNk\"}', '2020-09-28 11:04:15'),
('f44d02d4844d0a0c498f45f839', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-28 11:01:08'),
('fd74151bdde7497d41d44b5a59', '{\"language\":\"en-gb\",\"currency\":\"USD\"}', '2020-09-26 12:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT 0,
  `code` varchar(128) NOT NULL,
  `key` varchar(128) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(2, 0, 'config', 'config_shared', '0', 0),
(3, 0, 'config', 'config_secure', '0', 0),
(4, 0, 'voucher', 'total_voucher_sort_order', '8', 0),
(5, 0, 'voucher', 'total_voucher_status', '1', 0),
(6, 0, 'config', 'config_fraud_detection', '0', 0),
(7, 0, 'config', 'config_ftp_status', '0', 0),
(8, 0, 'config', 'config_ftp_root', '', 0),
(9, 0, 'config', 'config_ftp_password', '', 0),
(10, 0, 'config', 'config_ftp_username', '', 0),
(11, 0, 'config', 'config_ftp_port', '21', 0),
(12, 0, 'config', 'config_ftp_hostname', '', 0),
(13, 0, 'config', 'config_meta_title', 'Your Store', 0),
(14, 0, 'config', 'config_meta_description', 'My Store', 0),
(15, 0, 'config', 'config_meta_keyword', '', 0),
(16, 0, 'config', 'config_theme', 'default', 0),
(17, 0, 'config', 'config_layout_id', '4', 0),
(18, 0, 'config', 'config_country_id', '222', 0),
(19, 0, 'config', 'config_zone_id', '3563', 0),
(20, 0, 'config', 'config_language', 'en-gb', 0),
(21, 0, 'config', 'config_admin_language', 'en-gb', 0),
(22, 0, 'config', 'config_currency', 'USD', 0),
(23, 0, 'config', 'config_currency_auto', '1', 0),
(24, 0, 'config', 'config_length_class_id', '1', 0),
(25, 0, 'config', 'config_weight_class_id', '1', 0),
(26, 0, 'config', 'config_product_count', '1', 0),
(27, 0, 'config', 'config_limit_admin', '20', 0),
(28, 0, 'config', 'config_review_status', '1', 0),
(29, 0, 'config', 'config_review_guest', '1', 0),
(30, 0, 'config', 'config_voucher_min', '1', 0),
(31, 0, 'config', 'config_voucher_max', '1000', 0),
(32, 0, 'config', 'config_tax', '1', 0),
(33, 0, 'config', 'config_tax_default', 'shipping', 0),
(34, 0, 'config', 'config_tax_customer', 'shipping', 0),
(35, 0, 'config', 'config_customer_online', '0', 0),
(36, 0, 'config', 'config_customer_activity', '0', 0),
(37, 0, 'config', 'config_customer_search', '0', 0),
(38, 0, 'config', 'config_customer_group_id', '1', 0),
(39, 0, 'config', 'config_customer_group_display', '[\"1\"]', 1),
(40, 0, 'config', 'config_customer_price', '0', 0),
(41, 0, 'config', 'config_account_id', '3', 0),
(42, 0, 'config', 'config_invoice_prefix', 'INV-2020-00', 0),
(203, 0, 'config', 'config_api_id', '1', 0),
(44, 0, 'config', 'config_cart_weight', '1', 0),
(45, 0, 'config', 'config_checkout_guest', '1', 0),
(46, 0, 'config', 'config_checkout_id', '5', 0),
(47, 0, 'config', 'config_order_status_id', '1', 0),
(48, 0, 'config', 'config_processing_status', '[\"5\",\"1\",\"2\",\"12\",\"3\"]', 1),
(49, 0, 'config', 'config_complete_status', '[\"5\",\"3\"]', 1),
(50, 0, 'config', 'config_stock_display', '0', 0),
(51, 0, 'config', 'config_stock_warning', '0', 0),
(52, 0, 'config', 'config_stock_checkout', '0', 0),
(53, 0, 'config', 'config_affiliate_approval', '0', 0),
(54, 0, 'config', 'config_affiliate_auto', '0', 0),
(55, 0, 'config', 'config_affiliate_commission', '5', 0),
(56, 0, 'config', 'config_affiliate_id', '4', 0),
(57, 0, 'config', 'config_return_id', '0', 0),
(58, 0, 'config', 'config_return_status_id', '2', 0),
(59, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(60, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(61, 0, 'config', 'config_comment', '', 0),
(62, 0, 'config', 'config_open', '', 0),
(63, 0, 'config', 'config_image', '', 0),
(64, 0, 'config', 'config_fax', '', 0),
(65, 0, 'config', 'config_telephone', '123456789', 0),
(201, 0, 'config', 'config_email', 'nwosudamiankelechi@gmail.com', 0),
(67, 0, 'config', 'config_geocode', '', 0),
(68, 0, 'config', 'config_owner', 'Your Name', 0),
(69, 0, 'config', 'config_address', 'Address 1', 0),
(70, 0, 'config', 'config_name', 'Your Store', 0),
(71, 0, 'config', 'config_seo_url', '0', 0),
(72, 0, 'config', 'config_file_max_size', '300000', 0),
(73, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(74, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(75, 0, 'config', 'config_maintenance', '0', 0),
(76, 0, 'config', 'config_password', '1', 0),
(202, 0, 'config', 'config_encryption', 'TVsgfMByAjivEICOQd5hy7uHCo2ZVzPIFdktO4fN1smnSVI3Oe5R3fJHYfDjbhdhMphSh155Owbbz9swxMYSumUjNfPxxTIXEnzfsu3t0q2GTxmILC78ek1gXEojQFpOE9jIFqhLF0YGl8NauIAGzYiurzfm4Cxe6ci4U5wenK6NJW5rFdwih8ZycbtxOAmuy2SfivpMIBoPYwU0RDXbLOwsQN1ajDm4Wi9oMaDGpibpWyRb1cqsh4cGvPD0cQA8VkiMgTTnKMXP3grWXDd6Ln8bKraEKREDrJmwTxhe3gj5I0ylQHeTvxkTWvIxO1ryAXC427DJFh5vYm0mFwEpAxPxnC717feqDUevh2C9gpZ6jJB3Rkxnrb51chYYoWaZUCpEtGMuDn3o55U6muvvUBAMTCCZdDcr8BOe35jie6J4oygcHQMNBSjNUfrADeeeBSSq1ZXbLSLmMxcbXUbzxYeVqRawxUtpe0gqSNakgawT7GhJySSIpdOdI3ybAG0gr8lwo60SKawbJgJGvgHG0FZ24LLNbAQcEqtnyfjPlaeX0YScNQKwuuXSeq1CTJJSl1VowX8AIfJDITM7pGrFclIB17L5KS6QB6ZsCEyrggLuPbxZDAgBFG5jrIQzsXoyBA1ZOiCOtMyxbeGnwL4PfGqBwYRRaTY5aISuhqAI0ePNg655TNcG5Df9zoACMlMo4MlipVAjMZqd2WTAFOHlH9miDDiCBRsgMTqx2GCz7SbD0T7v4fkEmTZfDcAWI0ARnCAFoonhPOxZ2oYrk6bpXSGAMwvhEcSIPr35qJCkuN4PjsMGFJl9YQfCuoBXLF1ADcJsdbLw0nuFrgvi75nUoBs2nYJEWk0fTnefOFOzwnWBkAi6uiOyoVNTJ4G0GDrtPthoSv0WPvZkPhWvgNC8wYOfyo2aG7rtfMjBfJUXtLyhid2UDJzhmYAOgRrHclqENZcqVPSleytLKlToUT8TFZmwwCKGeKxQvStPrdAgGrMakYX38TlQjuWHItL6JeoQ', 0),
(78, 0, 'config', 'config_compression', '0', 0),
(79, 0, 'config', 'config_error_display', '1', 0),
(80, 0, 'config', 'config_error_log', '1', 0),
(81, 0, 'config', 'config_error_filename', 'error.log', 0),
(82, 0, 'config', 'config_google_analytics', '', 0),
(83, 0, 'config', 'config_mail_engine', 'mail', 0),
(84, 0, 'config', 'config_mail_parameter', '', 0),
(85, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(86, 0, 'config', 'config_mail_smtp_username', '', 0),
(87, 0, 'config', 'config_mail_smtp_password', '', 0),
(88, 0, 'config', 'config_mail_smtp_port', '25', 0),
(89, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(90, 0, 'config', 'config_mail_alert_email', '', 0),
(91, 0, 'config', 'config_mail_alert', '[\"order\"]', 1),
(92, 0, 'config', 'config_captcha', 'basic', 0),
(93, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(94, 0, 'config', 'config_login_attempts', '5', 0),
(95, 0, 'payment_free_checkout', 'payment_free_checkout_status', '1', 0),
(96, 0, 'payment_free_checkout', 'free_checkout_order_status_id', '1', 0),
(97, 0, 'payment_free_checkout', 'payment_free_checkout_sort_order', '1', 0),
(98, 0, 'payment_cod', 'payment_cod_sort_order', '5', 0),
(99, 0, 'payment_cod', 'payment_cod_total', '0.01', 0),
(100, 0, 'payment_cod', 'payment_cod_order_status_id', '1', 0),
(101, 0, 'payment_cod', 'payment_cod_geo_zone_id', '0', 0),
(102, 0, 'payment_cod', 'payment_cod_status', '1', 0),
(103, 0, 'shipping_flat', 'shipping_flat_sort_order', '1', 0),
(104, 0, 'shipping_flat', 'shipping_flat_status', '1', 0),
(105, 0, 'shipping_flat', 'shipping_flat_geo_zone_id', '0', 0),
(106, 0, 'shipping_flat', 'shipping_flat_tax_class_id', '9', 0),
(107, 0, 'shipping_flat', 'shipping_flat_cost', '5.00', 0),
(108, 0, 'total_shipping', 'total_shipping_sort_order', '3', 0),
(109, 0, 'total_sub_total', 'sub_total_sort_order', '1', 0),
(110, 0, 'total_sub_total', 'total_sub_total_status', '1', 0),
(111, 0, 'total_tax', 'total_tax_status', '1', 0),
(112, 0, 'total_total', 'total_total_sort_order', '9', 0),
(113, 0, 'total_total', 'total_total_status', '1', 0),
(114, 0, 'total_tax', 'total_tax_sort_order', '5', 0),
(115, 0, 'total_credit', 'total_credit_sort_order', '7', 0),
(116, 0, 'total_credit', 'total_credit_status', '1', 0),
(117, 0, 'total_reward', 'total_reward_sort_order', '2', 0),
(118, 0, 'total_reward', 'total_reward_status', '1', 0),
(119, 0, 'total_shipping', 'total_shipping_status', '1', 0),
(120, 0, 'total_shipping', 'total_shipping_estimator', '1', 0),
(121, 0, 'total_coupon', 'total_coupon_sort_order', '4', 0),
(122, 0, 'total_coupon', 'total_coupon_status', '1', 0),
(123, 0, 'module_category', 'module_category_status', '1', 0),
(124, 0, 'module_account', 'module_account_status', '1', 0),
(125, 0, 'theme_default', 'theme_default_product_limit', '15', 0),
(126, 0, 'theme_default', 'theme_default_product_description_length', '100', 0),
(127, 0, 'theme_default', 'theme_default_image_thumb_width', '228', 0),
(128, 0, 'theme_default', 'theme_default_image_thumb_height', '228', 0),
(129, 0, 'theme_default', 'theme_default_image_popup_width', '500', 0),
(130, 0, 'theme_default', 'theme_default_image_popup_height', '500', 0),
(131, 0, 'theme_default', 'theme_default_image_category_width', '80', 0),
(132, 0, 'theme_default', 'theme_default_image_category_height', '80', 0),
(133, 0, 'theme_default', 'theme_default_image_product_width', '228', 0),
(134, 0, 'theme_default', 'theme_default_image_product_height', '228', 0),
(135, 0, 'theme_default', 'theme_default_image_additional_width', '74', 0),
(136, 0, 'theme_default', 'theme_default_image_additional_height', '74', 0),
(137, 0, 'theme_default', 'theme_default_image_related_width', '200', 0),
(138, 0, 'theme_default', 'theme_default_image_related_height', '200', 0),
(139, 0, 'theme_default', 'theme_default_image_compare_width', '90', 0),
(140, 0, 'theme_default', 'theme_default_image_compare_height', '90', 0),
(141, 0, 'theme_default', 'theme_default_image_wishlist_width', '47', 0),
(142, 0, 'theme_default', 'theme_default_image_wishlist_height', '47', 0),
(143, 0, 'theme_default', 'theme_default_image_cart_height', '47', 0),
(144, 0, 'theme_default', 'theme_default_image_cart_width', '47', 0),
(145, 0, 'theme_default', 'theme_default_image_location_height', '50', 0),
(146, 0, 'theme_default', 'theme_default_image_location_width', '268', 0),
(147, 0, 'theme_default', 'theme_default_directory', 'default', 0),
(148, 0, 'theme_default', 'theme_default_status', '1', 0),
(149, 0, 'dashboard_activity', 'dashboard_activity_status', '1', 0),
(150, 0, 'dashboard_activity', 'dashboard_activity_sort_order', '7', 0),
(151, 0, 'dashboard_sale', 'dashboard_sale_status', '1', 0),
(152, 0, 'dashboard_sale', 'dashboard_sale_width', '3', 0),
(153, 0, 'dashboard_chart', 'dashboard_chart_status', '1', 0),
(154, 0, 'dashboard_chart', 'dashboard_chart_width', '6', 0),
(155, 0, 'dashboard_customer', 'dashboard_customer_status', '1', 0),
(156, 0, 'dashboard_customer', 'dashboard_customer_width', '3', 0),
(157, 0, 'dashboard_map', 'dashboard_map_status', '1', 0),
(158, 0, 'dashboard_map', 'dashboard_map_width', '6', 0),
(159, 0, 'dashboard_online', 'dashboard_online_status', '1', 0),
(160, 0, 'dashboard_online', 'dashboard_online_width', '3', 0),
(161, 0, 'dashboard_order', 'dashboard_order_sort_order', '1', 0),
(162, 0, 'dashboard_order', 'dashboard_order_status', '1', 0),
(163, 0, 'dashboard_order', 'dashboard_order_width', '3', 0),
(164, 0, 'dashboard_sale', 'dashboard_sale_sort_order', '2', 0),
(165, 0, 'dashboard_customer', 'dashboard_customer_sort_order', '3', 0),
(166, 0, 'dashboard_online', 'dashboard_online_sort_order', '4', 0),
(167, 0, 'dashboard_map', 'dashboard_map_sort_order', '5', 0),
(168, 0, 'dashboard_chart', 'dashboard_chart_sort_order', '6', 0),
(169, 0, 'dashboard_recent', 'dashboard_recent_status', '1', 0),
(170, 0, 'dashboard_recent', 'dashboard_recent_sort_order', '8', 0),
(171, 0, 'dashboard_activity', 'dashboard_activity_width', '4', 0),
(172, 0, 'dashboard_recent', 'dashboard_recent_width', '8', 0),
(173, 0, 'report_customer_activity', 'report_customer_activity_status', '1', 0),
(174, 0, 'report_customer_activity', 'report_customer_activity_sort_order', '1', 0),
(175, 0, 'report_customer_order', 'report_customer_order_status', '1', 0),
(176, 0, 'report_customer_order', 'report_customer_order_sort_order', '2', 0),
(177, 0, 'report_customer_reward', 'report_customer_reward_status', '1', 0),
(178, 0, 'report_customer_reward', 'report_customer_reward_sort_order', '3', 0),
(179, 0, 'report_customer_search', 'report_customer_search_sort_order', '3', 0),
(180, 0, 'report_customer_search', 'report_customer_search_status', '1', 0),
(181, 0, 'report_customer_transaction', 'report_customer_transaction_status', '1', 0),
(182, 0, 'report_customer_transaction', 'report_customer_transaction_status_sort_order', '4', 0),
(183, 0, 'report_sale_tax', 'report_sale_tax_status', '1', 0),
(184, 0, 'report_sale_tax', 'report_sale_tax_sort_order', '5', 0),
(185, 0, 'report_sale_shipping', 'report_sale_shipping_status', '1', 0),
(186, 0, 'report_sale_shipping', 'report_sale_shipping_sort_order', '6', 0),
(187, 0, 'report_sale_return', 'report_sale_return_status', '1', 0),
(188, 0, 'report_sale_return', 'report_sale_return_sort_order', '7', 0),
(189, 0, 'report_sale_order', 'report_sale_order_status', '1', 0),
(190, 0, 'report_sale_order', 'report_sale_order_sort_order', '8', 0),
(191, 0, 'report_sale_coupon', 'report_sale_coupon_status', '1', 0),
(192, 0, 'report_sale_coupon', 'report_sale_coupon_sort_order', '9', 0),
(193, 0, 'report_product_viewed', 'report_product_viewed_status', '1', 0),
(194, 0, 'report_product_viewed', 'report_product_viewed_sort_order', '10', 0),
(195, 0, 'report_product_purchased', 'report_product_purchased_status', '1', 0),
(196, 0, 'report_product_purchased', 'report_product_purchased_sort_order', '11', 0),
(197, 0, 'report_marketing', 'report_marketing_status', '1', 0),
(198, 0, 'report_marketing', 'report_marketing_sort_order', '12', 0),
(207, 0, 'developer', 'developer_sass', '0', 0),
(206, 0, 'developer', 'developer_theme', '0', 0),
(212, 0, 'custom_push', 'web_push_public_key', 'BK1RYandek6bbkKEbLXAeEFNNx0D5FK-Nj4bM5b80kNsvv3aJDoAF9BvmwR7Zn79THHQsTlg7WzSA0m64752mzw', 0),
(213, 0, 'custom_push', 'web_push_private_key', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post');

-- --------------------------------------------------------

--
-- Table structure for table `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '0.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT 0.0000,
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'e1a761a222741321887df8e028309a21b334ad7d', 'VVIBI6MlS', 'John', 'Doe', 'nwosudamiankelechi@gmail.com', '', '', '::1', 1, '2020-09-15 10:17:12');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"custom\\/push_notification\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/promotion\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/browser_notification\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/browser_notification\"],\"modify\":[\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/developer\",\"common\\/filemanager\",\"common\\/profile\",\"common\\/security\",\"custom\\/push_notification\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_approval\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"design\\/seo_url\",\"design\\/theme\",\"design\\/translation\",\"event\\/statistics\",\"event\\/theme\",\"extension\\/advertise\\/google\",\"extension\\/analytics\\/google\",\"extension\\/captcha\\/basic\",\"extension\\/captcha\\/google\",\"extension\\/dashboard\\/activity\",\"extension\\/dashboard\\/chart\",\"extension\\/dashboard\\/customer\",\"extension\\/dashboard\\/map\",\"extension\\/dashboard\\/online\",\"extension\\/dashboard\\/order\",\"extension\\/dashboard\\/recent\",\"extension\\/dashboard\\/sale\",\"extension\\/extension\\/advertise\",\"extension\\/extension\\/analytics\",\"extension\\/extension\\/captcha\",\"extension\\/extension\\/dashboard\",\"extension\\/extension\\/feed\",\"extension\\/extension\\/fraud\",\"extension\\/extension\\/menu\",\"extension\\/extension\\/module\",\"extension\\/extension\\/payment\",\"extension\\/extension\\/report\",\"extension\\/extension\\/shipping\",\"extension\\/extension\\/theme\",\"extension\\/extension\\/total\",\"extension\\/feed\\/google_base\",\"extension\\/feed\\/google_sitemap\",\"extension\\/feed\\/openbaypro\",\"extension\\/fraud\\/fraudlabspro\",\"extension\\/fraud\\/ip\",\"extension\\/fraud\\/maxmind\",\"extension\\/module\\/account\",\"extension\\/module\\/amazon_login\",\"extension\\/module\\/amazon_pay\",\"extension\\/module\\/banner\",\"extension\\/module\\/bestseller\",\"extension\\/module\\/browser_notification\",\"extension\\/module\\/carousel\",\"extension\\/module\\/category\",\"extension\\/module\\/divido_calculator\",\"extension\\/module\\/ebay_listing\",\"extension\\/module\\/featured\",\"extension\\/module\\/filter\",\"extension\\/module\\/google_hangouts\",\"extension\\/module\\/html\",\"extension\\/module\\/information\",\"extension\\/module\\/klarna_checkout_module\",\"extension\\/module\\/latest\",\"extension\\/module\\/laybuy_layout\",\"extension\\/module\\/pilibaba_button\",\"extension\\/module\\/pp_braintree_button\",\"extension\\/module\\/pp_button\",\"extension\\/module\\/pp_login\",\"extension\\/module\\/sagepay_direct_cards\",\"extension\\/module\\/sagepay_server_cards\",\"extension\\/module\\/slideshow\",\"extension\\/module\\/special\",\"extension\\/module\\/store\",\"extension\\/openbay\\/amazon\",\"extension\\/openbay\\/amazon_listing\",\"extension\\/openbay\\/amazon_product\",\"extension\\/openbay\\/amazonus\",\"extension\\/openbay\\/amazonus_listing\",\"extension\\/openbay\\/amazonus_product\",\"extension\\/openbay\\/ebay\",\"extension\\/openbay\\/ebay_profile\",\"extension\\/openbay\\/ebay_template\",\"extension\\/openbay\\/etsy\",\"extension\\/openbay\\/etsy_product\",\"extension\\/openbay\\/etsy_shipping\",\"extension\\/openbay\\/etsy_shop\",\"extension\\/openbay\\/fba\",\"extension\\/payment\\/amazon_login_pay\",\"extension\\/payment\\/authorizenet_aim\",\"extension\\/payment\\/authorizenet_sim\",\"extension\\/payment\\/bank_transfer\",\"extension\\/payment\\/bluepay_hosted\",\"extension\\/payment\\/bluepay_redirect\",\"extension\\/payment\\/cardconnect\",\"extension\\/payment\\/cardinity\",\"extension\\/payment\\/cheque\",\"extension\\/payment\\/cod\",\"extension\\/payment\\/divido\",\"extension\\/payment\\/eway\",\"extension\\/payment\\/firstdata\",\"extension\\/payment\\/firstdata_remote\",\"extension\\/payment\\/free_checkout\",\"extension\\/payment\\/g2apay\",\"extension\\/payment\\/globalpay\",\"extension\\/payment\\/globalpay_remote\",\"extension\\/payment\\/klarna_account\",\"extension\\/payment\\/klarna_checkout\",\"extension\\/payment\\/klarna_invoice\",\"extension\\/payment\\/laybuy\",\"extension\\/payment\\/liqpay\",\"extension\\/payment\\/nochex\",\"extension\\/payment\\/paymate\",\"extension\\/payment\\/paypoint\",\"extension\\/payment\\/payza\",\"extension\\/payment\\/perpetual_payments\",\"extension\\/payment\\/pilibaba\",\"extension\\/payment\\/pp_braintree\",\"extension\\/payment\\/pp_express\",\"extension\\/payment\\/pp_payflow\",\"extension\\/payment\\/pp_payflow_iframe\",\"extension\\/payment\\/pp_pro\",\"extension\\/payment\\/pp_pro_iframe\",\"extension\\/payment\\/pp_standard\",\"extension\\/payment\\/realex\",\"extension\\/payment\\/realex_remote\",\"extension\\/payment\\/sagepay_direct\",\"extension\\/payment\\/sagepay_server\",\"extension\\/payment\\/sagepay_us\",\"extension\\/payment\\/securetrading_pp\",\"extension\\/payment\\/securetrading_ws\",\"extension\\/payment\\/skrill\",\"extension\\/payment\\/twocheckout\",\"extension\\/payment\\/web_payment_software\",\"extension\\/payment\\/worldpay\",\"extension\\/report\\/customer_activity\",\"extension\\/report\\/customer_order\",\"extension\\/report\\/customer_reward\",\"extension\\/report\\/customer_search\",\"extension\\/report\\/customer_transaction\",\"extension\\/report\\/marketing\",\"extension\\/report\\/product_purchased\",\"extension\\/report\\/product_viewed\",\"extension\\/report\\/sale_coupon\",\"extension\\/report\\/sale_order\",\"extension\\/report\\/sale_return\",\"extension\\/report\\/sale_shipping\",\"extension\\/report\\/sale_tax\",\"extension\\/shipping\\/auspost\",\"extension\\/shipping\\/ec_ship\",\"extension\\/shipping\\/fedex\",\"extension\\/shipping\\/flat\",\"extension\\/shipping\\/free\",\"extension\\/shipping\\/item\",\"extension\\/shipping\\/parcelforce_48\",\"extension\\/shipping\\/pickup\",\"extension\\/shipping\\/royal_mail\",\"extension\\/shipping\\/ups\",\"extension\\/shipping\\/usps\",\"extension\\/shipping\\/weight\",\"extension\\/theme\\/default\",\"extension\\/total\\/coupon\",\"extension\\/total\\/credit\",\"extension\\/total\\/handling\",\"extension\\/total\\/klarna_fee\",\"extension\\/total\\/low_order_fee\",\"extension\\/total\\/reward\",\"extension\\/total\\/shipping\",\"extension\\/total\\/sub_total\",\"extension\\/total\\/tax\",\"extension\\/total\\/total\",\"extension\\/total\\/voucher\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"mail\\/affiliate\",\"mail\\/customer\",\"mail\\/forgotten\",\"mail\\/return\",\"mail\\/reward\",\"mail\\/transaction\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"marketplace\\/api\",\"marketplace\\/event\",\"marketplace\\/extension\",\"marketplace\\/install\",\"marketplace\\/installer\",\"marketplace\\/marketplace\",\"marketplace\\/modification\",\"marketplace\\/openbay\",\"report\\/online\",\"report\\/report\",\"report\\/statistics\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"startup\\/error\",\"startup\\/event\",\"startup\\/login\",\"startup\\/permission\",\"startup\\/router\",\"startup\\/sass\",\"startup\\/startup\",\"tool\\/backup\",\"tool\\/log\",\"tool\\/upload\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"extension\\/module\\/browser_notification\"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT 0.00000000
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Niederösterreich', 'NOS', 1),
(202, 14, 'Oberösterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-Württemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Thüringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'Kalimantan Utara', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1),
(1597, 103, 'Leitrim', 'LE', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord-Brabant', 'NB', 1),
(2336, 150, 'Noord-Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid-Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'Gävleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'Jämtland', 'Z', 1),
(3080, 203, 'Jönköping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, 'Örebro', 'T', 1),
(3085, 203, 'Östergötland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'Södermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'Värmland', 'S', 1),
(3091, 203, 'Västerbotten', 'AC', 1),
(3092, 203, 'Västernorrland', 'Y', 1),
(3093, 203, 'Västmanland', 'U', 1),
(3094, 203, 'Västra Götaland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graubünden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Zürich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 44, 'Qinghai', 'QH', 1),
(4233, 100, 'Papua Barat', 'PB', 1),
(4234, 100, 'Sulawesi Barat', 'SR', 1),
(4235, 100, 'Kepulauan Riau', 'KR', 1),
(4236, 105, 'Barletta-Andria-Trani', 'BT', 1),
(4237, 105, 'Fermo', 'FM', 1),
(4238, 105, 'Monza Brianza', 'MB', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT 0,
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`api_id`,`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`customer_activity_id`);

--
-- Indexes for table `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Indexes for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_googleshopping_category`
--
ALTER TABLE `oc_googleshopping_category`
  ADD PRIMARY KEY (`google_product_category`,`store_id`),
  ADD KEY `category_id_store_id` (`category_id`,`store_id`);

--
-- Indexes for table `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  ADD PRIMARY KEY (`product_advertise_google_id`),
  ADD UNIQUE KEY `product_id_store_id` (`product_id`,`store_id`);

--
-- Indexes for table `oc_googleshopping_product_status`
--
ALTER TABLE `oc_googleshopping_product_status`
  ADD PRIMARY KEY (`product_id`,`store_id`,`product_variation_id`);

--
-- Indexes for table `oc_googleshopping_product_target`
--
ALTER TABLE `oc_googleshopping_product_target`
  ADD PRIMARY KEY (`product_id`,`advertise_google_target_id`);

--
-- Indexes for table `oc_googleshopping_target`
--
ALTER TABLE `oc_googleshopping_target`
  ADD PRIMARY KEY (`advertise_google_target_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_purpletree_vendor_stores`
--
ALTER TABLE `oc_purpletree_vendor_stores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `seller_paypal_id` (`seller_paypal_id`),
  ADD KEY `multi_store_id` (`multi_store_id`);

--
-- Indexes for table `oc_push_notification_schedules`
--
ALTER TABLE `oc_push_notification_schedules`
  ADD PRIMARY KEY (`schedule_id`);

--
-- Indexes for table `oc_push_subscribers`
--
ALTER TABLE `oc_push_subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Indexes for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=679;

--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `customer_activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_googleshopping_product`
--
ALTER TABLE `oc_googleshopping_product`
  MODIFY `product_advertise_google_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=441;

--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2352;

--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;

--
-- AUTO_INCREMENT for table `oc_purpletree_vendor_stores`
--
ALTER TABLE `oc_purpletree_vendor_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `oc_push_notification_schedules`
--
ALTER TABLE `oc_push_notification_schedules`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;

--
-- AUTO_INCREMENT for table `oc_push_subscribers`
--
ALTER TABLE `oc_push_subscribers`
  MODIFY `id` double NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=844;

--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4239;

--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
