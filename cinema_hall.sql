-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 08:07 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinema_hall`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_animation_map`
--

CREATE TABLE `ad_animation_map` (
  `id` int(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ad_audio_map`
--

CREATE TABLE `ad_audio_map` (
  `id` int(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ad_game_map`
--

CREATE TABLE `ad_game_map` (
  `id` int(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ad_video_map`
--

CREATE TABLE `ad_video_map` (
  `id` int(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ad_wallpaper_map`
--

CREATE TABLE `ad_wallpaper_map` (
  `id` int(11) NOT NULL,
  `code` varchar(200) NOT NULL,
  `cid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `b2m_cms_admin`
--

CREATE TABLE `b2m_cms_admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `permalink` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `hash` varchar(100) NOT NULL,
  `about` varchar(250) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `signup_ip` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `published` varchar(10) NOT NULL COMMENT 'yes , no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `b2m_cms_admin`
--

INSERT INTO `b2m_cms_admin` (`id`, `name`, `permalink`, `email`, `password`, `hash`, `about`, `created_by`, `created_on`, `updated_on`, `signup_ip`, `gender`, `published`) VALUES
(1, 'admin', '', 'admin@b2m-tech.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', 'admin', '2015-03-02 00:00:00', '0000-00-00 00:00:00', '', '', 'yes'),
(2, 'b2madmin', '', 'moazzam@b2m-tech.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', 'yes'),
(3, 'tushar', '', 'tushar@b2m-tech.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', 'admin', '2015-03-02 00:00:00', '0000-00-00 00:00:00', '', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `b2m_cms_category`
--

CREATE TABLE `b2m_cms_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(11) NOT NULL,
  `language` varchar(20) NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `cat_name` text NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `created` date NOT NULL,
  `modified_date` date DEFAULT NULL,
  `created_by` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL COMMENT 'Here NULL means Delete ',
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `b2m_cms_category`
--

INSERT INTO `b2m_cms_category` (`id`, `type_id`, `language`, `parent_id`, `cat_name`, `image`, `created`, `modified_date`, `created_by`, `status`, `type`) VALUES
(1, 1, 'English', 0, 'Bollywood', NULL, '2016-04-24', '2016-04-25', 'admin', 'published', 'Wallpaper'),
(2, 1, 'English', 1, 'Celebrity', NULL, '2016-04-24', '2016-04-25', 'admin', 'published', 'Wallpaper'),
(3, 2, 'English', 0, 'Bangla Movie', NULL, '2016-04-24', '2016-04-25', 'admin', 'published', 'Animation'),
(4, 2, 'English', 3, 'Valobasar Golpo', NULL, '2016-04-24', '2016-04-25', 'admin', 'published', 'Animation'),
(5, 1, 'English', 0, 'Bangla Movie', NULL, '2016-04-25', NULL, 'admin', 'published', 'Wallpaper'),
(6, 1, 'English', 5, 'Valobasar Golpo', NULL, '2016-04-25', NULL, 'admin', 'published', 'Wallpaper'),
(7, 2, 'English', 0, 'Bollywood', NULL, '2016-04-25', NULL, 'admin', 'published', 'Animation'),
(8, 2, 'English', 7, 'Celebrity', NULL, '2016-04-25', NULL, 'admin', 'published', 'Animation'),
(9, 1, 'English', 5, 'OSTITTO', NULL, '2016-04-25', NULL, 'admin', 'published', 'Wallpaper'),
(10, 2, 'English', 3, 'OSTITTO', NULL, '2016-04-25', NULL, 'admin', 'published', 'Animation'),
(11, 3, 'English', 0, 'Bangla Movie', NULL, '2016-04-25', NULL, 'admin', 'published', 'Audio'),
(12, 4, 'English', 0, 'Bangla Movie', NULL, '2016-04-25', NULL, 'admin', 'published', 'Video'),
(13, 3, 'English', 11, 'OSTITTO', NULL, '2016-04-25', NULL, 'admin', 'published', 'Audio'),
(14, 4, 'English', 12, 'OSTITTO', NULL, '2016-04-25', '2016-04-25', 'admin', 'published', 'Video'),
(15, 3, 'English', 11, 'Valobasar Golpo', NULL, '2016-04-25', NULL, 'admin', 'published', 'Audio'),
(16, 4, 'English', 12, 'Valobasar Golpo', NULL, '2016-04-25', NULL, 'admin', 'published', 'Video'),
(17, 3, 'English', 0, 'Audio Album', NULL, '2016-04-26', NULL, 'admin', 'published', 'Audio'),
(18, 3, 'English', 17, 'Bangla POP Song', NULL, '2016-04-26', '2016-04-26', 'admin', 'published', 'Audio'),
(19, 3, 'English', 17, 'Bangla Band Song', NULL, '2016-04-26', '2016-04-26', 'admin', 'published', 'Audio'),
(20, 1, 'English', 0, 'Greetings', NULL, '2016-04-27', NULL, 'admin', 'published', 'Wallpaper'),
(21, 2, 'English', 0, 'Greetings', NULL, '2016-04-27', NULL, 'admin', 'published', 'Animation'),
(22, 1, 'English', 20, 'Love Greetings', NULL, '2016-04-27', NULL, 'admin', 'published', 'Wallpaper'),
(23, 2, 'English', 21, 'Love Greetings', NULL, '2016-04-27', NULL, 'admin', 'published', 'Animation'),
(24, 4, 'English', 0, 'Islamic Video', NULL, '2016-04-27', NULL, 'admin', 'published', 'Video'),
(25, 4, 'English', 24, 'Hamd O Naat', NULL, '2016-04-27', NULL, 'admin', 'published', 'Video'),
(26, 3, 'English', 0, 'Islamic Song', NULL, '2016-04-27', NULL, 'admin', 'published', 'Audio'),
(27, 3, 'English', 26, 'Hamd O Naat', NULL, '2016-04-27', NULL, 'admin', 'published', 'Audio'),
(28, 1, 'English', 0, 'Sprots', NULL, '2016-04-27', '2016-09-20', 'admin', 'published', 'Wallpaper'),
(29, 1, 'English', 28, 'Cricket', NULL, '2016-04-27', '2016-09-20', 'admin', 'published', 'Wallpaper'),
(30, 2, 'English', 0, 'Sports', NULL, '2016-04-27', NULL, 'admin', 'published', 'Animation'),
(31, 4, 'English', 0, 'Sports', NULL, '2016-04-27', NULL, 'admin', 'published', 'Video'),
(32, 4, 'English', 31, 'Cricket', NULL, '2016-04-27', NULL, 'admin', 'published', 'Video'),
(33, 2, 'English', 30, 'Cricket', NULL, '2016-04-27', NULL, 'admin', 'published', 'Animation'),
(34, 4, 'English', 12, 'Old is Gold', NULL, '2016-04-28', NULL, 'admin', 'published', 'Video'),
(35, 3, 'English', 11, 'Old is Gold', NULL, '2016-04-28', NULL, 'admin', 'published', 'Audio'),
(36, 4, 'English', 12, 'Movie Song', NULL, '2016-04-28', NULL, 'admin', 'published', 'Video'),
(37, 3, 'English', 11, 'Movie Song', NULL, '2016-04-28', NULL, 'admin', 'published', 'Audio'),
(38, 5, 'English', 0, 'Java Game', NULL, '2016-05-18', '2016-10-26', 'admin', 'published', 'Game'),
(39, 1, 'English', 0, 'Event', NULL, '2016-06-04', NULL, 'admin', 'published', 'Wallpaper'),
(40, 1, 'English', 39, 'Ramadan', NULL, '2016-06-04', NULL, 'admin', 'published', 'Wallpaper'),
(41, 2, 'English', 0, 'Event', NULL, '2016-06-04', NULL, 'admin', 'published', 'Animation'),
(42, 2, 'English', 41, 'Ramadan', NULL, '2016-06-04', NULL, 'admin', 'published', 'Animation'),
(43, 1, 'English', 39, 'Eid Al-Fitr', NULL, '2016-06-26', NULL, 'admin', 'published', 'Wallpaper'),
(44, 2, 'English', 41, 'Eid Al-Fitr', NULL, '2016-06-26', NULL, 'admin', 'published', 'Animation'),
(45, 4, 'English', 0, 'Bollywood', NULL, '2016-07-11', NULL, 'admin', 'published', 'Video'),
(46, 4, 'English', 45, 'Celebrity Talks', NULL, '2016-07-11', NULL, 'admin', 'published', 'Video'),
(47, 4, 'English', 45, 'Gossip', NULL, '2016-07-11', NULL, 'admin', 'published', 'Video'),
(48, 4, 'English', 45, 'Funny Talks', NULL, '2016-07-11', NULL, 'admin', 'published', 'Video'),
(49, 1, 'English', 0, 'Bangladeshi Celebrity', NULL, '2016-07-12', NULL, 'admin', 'published', 'Wallpaper'),
(50, 2, 'English', 0, 'Bangladeshi Celebrity', NULL, '2016-07-12', NULL, 'admin', 'published', 'Animation'),
(51, 1, 'English', 49, 'Bangladeshi Celebrity', NULL, '2016-07-12', NULL, 'admin', 'published', 'Wallpaper'),
(52, 2, 'English', 50, 'Bangladeshi Celebrity', NULL, '2016-07-12', NULL, 'admin', 'published', 'Animation'),
(53, 1, 'English', 39, 'Eid Ul-Adha', NULL, '2016-08-23', NULL, 'admin', 'published', 'Wallpaper'),
(54, 2, 'English', 41, 'Eid Ul-Adha', NULL, '2016-08-23', NULL, 'admin', 'published', 'Animation'),
(55, 5, 'English', 0, 'Android Game', NULL, '2016-10-26', NULL, 'admin', 'published', 'Game'),
(56, 5, 'English', 55, 'Action Game', NULL, '2016-10-26', NULL, 'admin', 'published', 'Game'),
(57, 4, 'English', 45, 'Photoshoot Special', NULL, '2016-12-01', NULL, 'admin', 'published', 'Video'),
(58, 1, 'English', 39, 'Pohela Boishakh', NULL, '2017-04-09', NULL, 'admin', 'published', 'Wallpaper'),
(59, 2, 'English', 41, 'Pohela Boishakh', NULL, '2017-04-09', NULL, 'admin', 'published', 'Animation'),
(60, 4, 'English', 45, 'Movie Reviews', NULL, '2017-04-23', NULL, 'admin', 'published', 'Video'),
(61, 4, 'English', 0, 'Bangla Song', NULL, '2017-06-03', NULL, 'admin', 'published', 'Video'),
(62, 4, 'English', 61, 'Bangla Classic Song', NULL, '2017-06-03', NULL, 'admin', 'published', 'Video'),
(63, 4, 'English', 61, 'Bangla Band Song', NULL, '2017-06-03', NULL, 'admin', 'published', 'Video'),
(64, 4, 'English', 61, 'Pop Song', NULL, '2017-06-17', NULL, 'admin', 'published', 'Video'),
(65, 3, 'English', 0, 'Bangla Song', NULL, '2017-06-20', NULL, 'admin', 'published', 'Audio'),
(66, 3, 'English', 65, 'Classic Song', NULL, '2017-06-20', NULL, 'admin', 'published', 'Audio'),
(67, 3, 'English', 65, 'Pop Song', NULL, '2017-06-21', NULL, 'admin', 'published', 'Audio'),
(68, 3, 'English', 65, 'Rabindra Sangeet', NULL, '2017-11-16', NULL, 'admin', 'published', 'Audio'),
(69, 4, 'English', 0, 'Streaming', NULL, '2018-10-30', NULL, 'admin', 'published', 'Video'),
(70, 4, 'English', 69, 'Bangla Movie Song', NULL, '2018-05-15', '2018-10-30', 'admin', 'NULL', 'Video'),
(71, 1, 'English', 28, 'Football', NULL, '2018-06-10', NULL, 'admin', 'published', 'Wallpaper'),
(72, 2, 'English', 30, 'Football', NULL, '2018-06-10', NULL, 'admin', 'published', 'Animation'),
(73, 4, 'English', 31, 'Football', NULL, '2018-06-10', NULL, 'admin', 'published', 'Video'),
(74, 7, 'English', 0, 'UEFA Champions League', NULL, '2018-06-14', NULL, 'admin', 'published', 'Football Wallpaper'),
(75, 7, 'English', 74, '2018', NULL, '2018-06-14', NULL, 'admin', 'published', 'Football Wallpaper'),
(76, 5, 'English', 38, 'Action Game', NULL, '2018-09-20', NULL, 'admin', 'published', 'Game'),
(77, 5, 'English', 55, 'Sports Game', NULL, '2018-10-17', NULL, 'admin', 'published', 'Game'),
(78, 5, 'English', 55, 'Racing Game', NULL, '2018-10-17', NULL, 'admin', 'published', 'Game'),
(80, 4, 'English', 69, 'Bangla natok', NULL, '2018-10-29', '2018-10-30', 'admin', 'NULL', 'Video'),
(81, 9, 'English', 0, 'Bangla Natok', NULL, '2018-10-29', NULL, 'admin', 'published', 'Streaming'),
(83, 9, 'English', 81, 'Bangla new natok', NULL, '2018-10-30', NULL, 'admin', 'published', 'Streaming'),
(84, 3, 'English', 0, 'Hip Hop', NULL, '2018-11-03', NULL, 'admin', 'published', 'Audio'),
(85, 3, 'English', 84, 'Y-Zet', NULL, '2018-11-03', NULL, 'admin', 'published', 'Audio'),
(86, 3, 'English', 84, 'Oasix ', NULL, '2018-11-03', NULL, 'admin', 'published', 'Audio'),
(87, 3, 'English', 65, 'Gazal', NULL, '2019-05-16', NULL, 'admin', 'published', 'Audio'),
(88, 10, 'English', 0, 'Funny video', NULL, '2019-12-04', '2019-12-04', 'admin', 'published', 'FunnyClip'),
(89, 10, 'English', 88, '2019', NULL, '2019-12-05', NULL, 'admin', 'published', 'FunnyClip'),
(90, 4, 'English', 0, 'Natok', NULL, '2020-02-10', NULL, 'admin', 'published', 'Video'),
(91, 4, 'English', 12, 'Full Movie', NULL, '2020-02-10', NULL, 'admin', 'published', 'Video'),
(92, 4, 'English', 90, 'Video Songs', NULL, '2020-02-10', NULL, 'admin', 'published', 'Video'),
(93, 4, 'English', 90, 'Full Telefilm', NULL, '2020-02-10', NULL, 'admin', 'published', 'Video'),
(94, 3, 'English', 26, 'Popular', NULL, '2022-03-10', NULL, 'admin', 'published', 'Audio'),
(95, 3, 'English', 26, 'Soulful ', NULL, '2022-03-10', NULL, 'admin', 'published', 'Audio'),
(96, 3, 'English', 26, 'Ham\'d', NULL, '2022-03-10', NULL, 'admin', 'published', 'Audio'),
(97, 3, 'English', 26, 'Naa\'th', NULL, '2022-03-10', NULL, 'admin', 'published', 'Audio'),
(98, 3, 'English', 26, 'Audio', NULL, '2022-03-10', NULL, 'admin', 'published', 'Audio'),
(99, 4, 'Bangla', 0, 'Islamic Songs', NULL, '2022-03-10', NULL, 'admin', 'published', 'Video'),
(100, 4, 'English', 24, 'Popular', NULL, '2022-03-10', NULL, 'admin', 'published', 'Video'),
(101, 4, 'English', 24, 'Soulful', NULL, '2022-03-10', NULL, 'admin', 'published', 'Video'),
(102, 4, 'English', 24, 'Ham\'d', NULL, '2022-03-10', NULL, 'admin', 'published', 'Video'),
(103, 4, 'English', 24, 'Naa\'th', NULL, '2022-03-10', NULL, 'admin', 'published', 'Video'),
(104, 4, 'English', 24, 'Audio', NULL, '2022-03-10', NULL, 'admin', 'published', 'Video');

-- --------------------------------------------------------

--
-- Table structure for table `b2m_cms_content`
--

CREATE TABLE `b2m_cms_content` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `short_des` varchar(100) NOT NULL,
  `apk_path` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `artist_name` varchar(50) DEFAULT NULL,
  `owner` varchar(30) NOT NULL,
  `type` varchar(200) NOT NULL,
  `price` int(100) NOT NULL,
  `phone_set` varchar(100) NOT NULL,
  `content_type` varchar(30) NOT NULL DEFAULT 'NULL' COMMENT 'For Video Upload .like horror,action,romantic',
  `file_name` varchar(50) DEFAULT NULL COMMENT 'game file name',
  `prv1_file_name` varchar(200) DEFAULT NULL,
  `prv2_file_name` varchar(200) DEFAULT NULL,
  `details1_file_name` varchar(200) DEFAULT NULL,
  `details2_file_name` varchar(150) DEFAULT NULL,
  `con1_file_name` varchar(100) DEFAULT NULL,
  `con2_file_name` varchar(100) DEFAULT NULL,
  `file_size` varchar(10) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `insert_date` date NOT NULL,
  `update_date` date DEFAULT NULL,
  `approve_date` date DEFAULT NULL,
  `created_by` varchar(20) NOT NULL,
  `mapping_status` int(11) DEFAULT NULL,
  `projects` varchar(200) NOT NULL DEFAULT 'NULL',
  `status` varchar(50) NOT NULL COMMENT 'Here NULL means Delete ',
  `owner_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `b2m_cms_content`
--

INSERT INTO `b2m_cms_content` (`id`, `cat_id`, `sub_cat_id`, `title`, `short_des`, `apk_path`, `description`, `artist_name`, `owner`, `type`, `price`, `phone_set`, `content_type`, `file_name`, `prv1_file_name`, `prv2_file_name`, `details1_file_name`, `details2_file_name`, `con1_file_name`, `con2_file_name`, `file_size`, `location`, `insert_date`, `update_date`, `approve_date`, `created_by`, `mapping_status`, `projects`, `status`, `owner_status`) VALUES
(1, 1, 2, 'wallpaper', 'wallpaper', '', 'wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_sabnam-faria-0131.jpg', 'prv2_sabnam-faria-0131.jpg', 'dtl1_1sabnam-faria-013.jpg', 'dtl2_1sabnam-faria-013.jpg', 'con1_1Peya_Bipasha_03.jpg', 'con2_1Peya_Bipasha_03.jpg', NULL, NULL, '2016-04-24', '2016-06-26', NULL, 'admin', NULL, 'MFC,others,', 'deny', NULL),
(2, 3, 4, 'VG_Op-01-44', 'Taniya Mirja', '', 'Taniya Mirja wallpaper', '', '2', 'Animation', 10, '', '', '', 'prv1_Hydrangeas.jpg', 'prv2_Hydrangeas.jpg', 'dtl1_Hydrangeas.jpg', 'dtl2_Jellyfish.jpg', 'con1_Jellyfish.jpg', 'con2_Jellyfish.jpg', NULL, NULL, '2016-04-24', '2016-06-26', NULL, 'admin', NULL, 'MFC,others,', 'deny', NULL),
(3, 3, 4, 'Borsho boron 2', 'Borsho boron 2', '', '', '', '2', 'Animation', 10, '', '', '', 'prv1_Chrysanthemum.jpg', 'prv2_Chrysanthemum1.jpg', 'dtl1_Chrysanthemum.jpg', 'dtl2_Chrysanthemum1.jpg', 'con1_Chrysanthemum.jpg', 'con2_Chrysanthemum1.jpg', NULL, NULL, '2016-04-24', '2016-06-26', NULL, 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(4, 5, 6, 'VG_Wall_Op_01', 'Milon and Taniya Mirja', '', 'Milon and Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_01_130x90.jpg', 'prv2_VG_Wall_Op_01_150x150.jpg', 'dtl1_VG_Wall_Op_01_300x170.jpg', 'dtl2_VG_Wall_Op_01_240x320.jpg', 'con1_VG_Wall_Op_01_720x1280.jpg', 'con2_VG_Wall_Op_01_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(5, 5, 6, 'VG_Wall_Op_02', 'Milon wallpaper', '', 'Milon wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_02_130x90.jpg', 'prv2_VG_Wall_Op_02_150x150.jpg', 'dtl1_VG_Wall_Op_02_300x170.jpg', 'dtl2_VG_Wall_Op_02_240x320.jpg', 'con1_VG_Wall_Op_02_720x1280.jpg', 'con2_VG_Wall_Op_02_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(6, 3, 4, 'VG_Op-02', 'Milon & Taniya Mirja wallpaper', '', 'Milon & Taniya Mirja wallpaper', '', '2', 'Animation', 10, '', '', '', 'prv1_VG_Op-02_130x90.gif', 'prv2_VG_Op-02_150x150.gif', 'dtl1_VG_Op-02_300x170.gif', 'dtl2_VG_Op-02_240x320.gif', 'con1_VG_Op-02_720x1280.gif', 'con2_VG_Op-02_480x800.gif', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(7, 3, 4, 'VG_Op-03', 'Milon & Taniya Mirja wallpaper', '', 'Milon & Taniya Mirja wallpaper', '', '2', 'Animation', 10, '', '', '', 'prv1_VG_Op-03_130x90.gif', 'prv2_VG_Op-03_150x150.gif', 'dtl1_VG_Op-03_300x170.gif', 'dtl2_VG_Op-03_240x320.gif', 'con1_VG_Op-03_720x1280.gif', 'con2_VG_Op-03_480x800.gif', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(8, 3, 4, 'VG_Op-04', 'Milon & Taniya Mirja wallpaper', '', 'Milon & Taniya Mirja wallpaper', '', '2', 'Animation', 10, '', '', '', 'prv1_VG_Op-04_130x90.gif', 'prv2_VG_Op-04_150x150.gif', 'dtl1_VG_Op-04_300x170.gif', 'dtl2_VG_Op-04_240x320.gif', 'con1_VG_Op-04_720x1280.gif', 'con2_VG_Op-04_480x800.gif', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(9, 3, 4, 'VG_Op-05', 'Milon & Taniya Mirja wallpaper', '', 'Milon & Taniya Mirja wallpaper', '', '2', 'Animation', 10, '', '', '', 'prv1_VG_Op-05_130x90.gif', 'prv2_VG_Op-05_150x150.gif', 'dtl1_VG_Op-05_300x170.gif', 'dtl2_VG_Op-05_240x320.gif', 'con1_VG_Op-05_720x1280.gif', 'con2_VG_Op-05_480x800.gif', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(10, 3, 4, 'VG_Op-06', 'Taniya Mirja wallpaper', '', 'Taniya Mirja wallpaper', '', '2', 'Animation', 10, '', '', '', 'prv1_VG_Op-06_130x90.gif', 'prv2_VG_Op-06_150x150.gif', 'dtl1_VG_Op-06_300x170.gif', 'dtl2_VG_Op-06_240x320.gif', 'con1_VG_Op-06_720x1280.gif', 'con2_VG_Op-06_480x800.gif', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(11, 3, 4, 'VG_Op-07', 'Taniya Mirja', '', 'Taniya Mirja wallpaper', '', '2', 'Animation', 10, '', '', '', 'prv1_VG_Op-07_130x90.gif', 'prv2_VG_Op-07_150x150.gif', 'dtl1_VG_Op-07_300x170.gif', 'dtl2_VG_Op-07_240x320.gif', 'con1_VG_Op-07_720x1280.gif', 'con2_VG_Op-07_480x800.gif', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(12, 12, 16, 'Ei Buker Bhetor', 'Valobasar Golpo video song', '', 'Valobasar Golpo video song', '', '2', 'Video', 30, '', 'Romantic', '', 'prv1_Ei_Buker_Bhetor_130x90.jpg', 'prv2_Ei_Buker_Bhetor_150x150.jpg', 'dtl1_Ei_Buker_Bhetor_300x170.jpg', 'dtl2_Ei_Buker_Bhetor_240x320.jpg', 'con1_Ei_Buker_Bhetor_Prev.mp4', 'con2_Ei_Buker_Bhetor_H.mp4', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(13, 3, 4, 'VG_Op-08', 'Taniya Mirja wallpaper', '', 'Taniya Mirja wallpaper', '', '2', 'Animation', 10, '', '', '', 'prv1_VG_Op-08_130x90.gif', 'prv2_VG_Op-08_150x150.gif', 'dtl1_VG_Op-08_300x170.gif', 'dtl2_VG_Op-08_240x320.gif', 'con1_VG_Op-08_720x1280.gif', 'con2_VG_Op-08_480x800.gif', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(14, 5, 6, 'VG_Wall_Op_03', 'Milon & Taniya Mirja wallpaper', '', 'Milon & Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_03_130x90.jpg', 'prv2_VG_Wall_Op_03_150x150.jpg', 'dtl1_VG_Wall_Op_03_300x170.jpg', 'dtl2_VG_Wall_Op_03_240x320.jpg', 'con1_VG_Wall_Op_03_720x1280.jpg', 'con2_VG_Wall_Op_03_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(15, 5, 6, 'VG_Wall_Op_04', 'Milon & Taniya Mirja wallpaper', '', 'Milon & Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_04_130x90.jpg', 'prv2_VG_Wall_Op_04_150x150.jpg', 'dtl1_VG_Wall_Op_04_300x170.jpg', 'dtl2_VG_Wall_Op_04_240x320.jpg', 'con1_VG_Wall_Op_04_720x1280.jpg', 'con2_VG_Wall_Op_04_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(16, 5, 6, 'VG_Wall_Op_05', 'Taniya Mirja', '', 'Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_05_130x90.jpg', 'prv2_VG_Wall_Op_05_150x150.jpg', 'dtl1_VG_Wall_Op_05_300x170.jpg', 'dtl2_VG_Wall_Op_05_240x320.jpg', 'con1_VG_Wall_Op_05_720x1280.jpg', 'con2_VG_Wall_Op_05_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(17, 5, 6, 'VG_wal_op_06', 'Milon wallpaper', '', 'Milon wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_06_130x90.jpg', 'prv2_VG_Wall_Op_06_150x150.jpg', 'dtl1_VG_Wall_Op_06_300x170.jpg', 'dtl2_VG_Wall_Op_06_240x320.jpg', 'con1_VG_Wall_Op_06_720x1280.jpg', 'con2_VG_Wall_Op_06_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(18, 5, 6, 'VG_Wall_Op_07', 'Milon & Taniya Mirja wallpaper', '', 'Milon & Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_07_130x90.jpg', 'prv2_VG_Wall_Op_07_150x150.jpg', 'dtl1_VG_Wall_Op_07_300x170.jpg', 'dtl2_VG_Wall_Op_07_240x320.jpg', 'con1_VG_Wall_Op_07_720x1280.jpg', 'con2_VG_Wall_Op_07_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(19, 5, 6, 'VG_Wall_Op_08', 'Milon & Taniya Mirja wallpaper', '', 'Milon & Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_08_130x90.jpg', 'prv2_VG_Wall_Op_08_150x150.jpg', 'dtl1_VG_Wall_Op_08_300x170.jpg', 'dtl2_VG_Wall_Op_08_240x320.jpg', 'con1_VG_Wall_Op_08_720x1280.jpg', 'con2_VG_Wall_Op_08_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(20, 5, 6, 'VG_Wall_Op_09', 'Milon & Taniya Mirja wallpaper', '', 'Milon & Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_09_130x90.jpg', 'prv2_VG_Wall_Op_09_150x150.jpg', 'dtl1_VG_Wall_Op_09_300x170.jpg', 'dtl2_VG_Wall_Op_09_240x320.jpg', 'con1_VG_Wall_Op_09_720x1280.jpg', 'con2_VG_Wall_Op_09_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(21, 5, 6, 'VG_Wall_Op_10', 'Milon wallpaper', '', 'Milon wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_10_130x90.jpg', 'prv2_VG_Wall_Op_10_150x150.jpg', 'dtl1_VG_Wall_Op_10_300x170.jpg', 'dtl2_VG_Wall_Op_10_240x320.jpg', 'con1_VG_Wall_Op_10_720x1280.jpg', 'con2_VG_Wall_Op_10_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(22, 5, 6, 'VG_Wall_Op_11', 'Taniya Mirja wallpaper', '', 'Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_11_130x90.jpg', 'prv2_VG_Wall_Op_11_150x150.jpg', 'dtl1_VG_Wall_Op_11_300x170.jpg', 'dtl2_VG_Wall_Op_11_240x320.jpg', 'con1_VG_Wall_Op_11_720x1280.jpg', 'con2_VG_Wall_Op_11_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(23, 5, 6, 'VG_Wall_Op_12', 'Milon & Taniya Mirja wallpaper', '', 'Milon & Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_12_130x90.jpg', 'prv2_VG_Wall_Op_12_150x150.jpg', 'dtl1_VG_Wall_Op_12_300x170.jpg', 'dtl2_VG_Wall_Op_12_240x320.jpg', 'con1_VG_Wall_Op_12_720x1280.jpg', 'con2_VG_Wall_Op_12_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(24, 5, 6, 'VG_wal_op_13', 'Milon & Taniya Mirja wallpaper', '', 'Milon & Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_13_130x90.jpg', 'prv2_VG_Wall_Op_13_150x150.jpg', 'dtl1_VG_Wall_Op_13_300x170.jpg', 'dtl2_VG_Wall_Op_13_240x320.jpg', 'con1_VG_Wall_Op_13_720x1280.jpg', 'con2_VG_Wall_Op_13_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(25, 5, 6, 'VG_Wall_Op_14', 'Milon & Taniya Mirja wallpaper', '', 'Milon & Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_14_130x90.jpg', 'prv2_VG_Wall_Op_14_150x150.jpg', 'dtl1_VG_Wall_Op_14_300x170.jpg', 'dtl2_VG_Wall_Op_14_240x320.jpg', 'con1_VG_Wall_Op_14_720x1280.jpg', 'con2_VG_Wall_Op_14_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(26, 5, 6, 'Milon wallpaper', 'Milon wallpaper', '', 'Milon & Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_15_130x90.jpg', 'prv2_VG_Wall_Op_15_150x150.jpg', 'dtl1_VG_Wall_Op_15_300x170.jpg', 'dtl2_VG_Wall_Op_15_240x320.jpg', 'con1_VG_Wall_Op_15_720x1280.jpg', 'con2_VG_Wall_Op_15_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(27, 5, 6, 'VG_Wall_Op_16', 'Taniya Mirja wallpaper', '', 'Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_16_130x90.jpg', 'prv2_VG_Wall_Op_16_150x150.jpg', 'dtl1_VG_Wall_Op_16_300x170.jpg', 'dtl2_VG_Wall_Op_16_240x320.jpg', 'con1_VG_Wall_Op_16_720x1280.jpg', 'con2_VG_Wall_Op_16_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(28, 5, 6, 'VG_Wall_Op_17', 'Taniya Mirja wallpaper', '', 'Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_17_130x90.jpg', 'prv2_VG_Wall_Op_17_150x150.jpg', 'dtl1_VG_Wall_Op_17_300x170.jpg', 'dtl2_VG_Wall_Op_17_240x320.jpg', 'con1_VG_Wall_Op_17_720x1280.jpg', 'con2_VG_Wall_Op_17_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(29, 5, 6, 'VG_Wall_Op_18', 'Taniya Mirja wallpaper', '', 'Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_18_130x90.jpg', 'prv2_VG_Wall_Op_18_150x150.jpg', 'dtl1_VG_Wall_Op_18_300x170.jpg', 'dtl2_VG_Wall_Op_18_240x320.jpg', 'con1_VG_Wall_Op_18_720x1280.jpg', 'con2_VG_Wall_Op_18_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(30, 5, 6, 'VG_Wall_Op_19', 'Milon & Taniya Mirja wallpaper', '', 'Milon & Taniya Mirja wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VG_Wall_Op_19_130x90.jpg', 'prv2_VG_Wall_Op_19_150x150.jpg', 'dtl1_VG_Wall_Op_19_300x170.jpg', 'dtl2_VG_Wall_Op_19_240x320.jpg', 'con1_VG_Wall_Op_19_720x1280.jpg', 'con2_VG_Wall_Op_19_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(31, 1, 2, 'AnushkaRanjan', 'Anushka Ranjan wallpaper', '', 'Anushka Ranjan wallpaper', '', '3', 'Wallpaper', 10, '', '', '', 'prv1_AnushkaRanjan_130x90.jpg', 'prv2_AnushkaRanjan_150x150.jpg', 'dtl1_AnushkaRanjan_300x170.jpg', 'dtl2_AnushkaRanjan_240x320.jpg', 'con1_AnushkaRanjan_720x1280.jpg', 'con2_AnushkaRanjan_480x800.jpg', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(32, 1, 2, 'Deepika', 'Deepika wallpaper', '', 'Deepika wallpaper', '', '3', 'Wallpaper', 10, '', '', '', 'prv1_Deepika_130x90.jpg', 'prv2_Deepika_150x150.jpg', 'dtl1_Deepika_300x170.jpg', 'dtl2_Deepika_240x320.jpg', 'con1_Deepika_720x1280.jpg', 'con2_Deepika_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(33, 1, 2, 'Deepika2', 'Deepika wallpaper', '', 'Deepika wallpaper', '', '3', 'Wallpaper', 10, '', '', '', 'prv1_Deepika2_130x90.jpg', 'prv2_Deepika2_150x150.jpg', 'dtl1_Deepika2_300x170.jpg', 'dtl2_Deepika2_240x320.jpg', 'con1_Deepika2_720x1280.jpg', 'con2_Deepika2_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(34, 1, 2, 'Hrithik', 'Hrithik wallpaper', '', 'Hrithik wallpaper', '', '3', 'Wallpaper', 10, '', '', '', 'prv1_Hrithik_130x90.jpg', 'prv2_Hrithik_150x150.jpg', 'dtl1_Hrithik_300x170.jpg', 'dtl2_Hrithik_240x320.jpg', 'con1_Hrithik_720x1280.jpg', 'con2_Hrithik_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(35, 1, 2, 'Kangana', 'Kangana wallpaper', '', 'Kangana wallpaper', '', '3', 'Wallpaper', 10, '', '', '', 'prv1_Kangana_130x90.jpg', 'prv2_Kangana_150x150.jpg', 'dtl1_Kangana_300x170.jpg', 'dtl2_Kangana_240x320.jpg', 'con1_Kangana_720x1280.jpg', 'con2_Kangana_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(36, 1, 2, 'Salman', 'Salman khan wallpaper', '', 'Salman khan wallpaper', '', '3', 'Wallpaper', 10, '', '', '', 'prv1_Salman_130x90.jpg', 'prv2_Salman_150x150.jpg', 'dtl1_Salman_300x170.jpg', 'dtl2_Salman_240x320.jpg', 'con1_Salman_720x1280.jpg', 'con2_Salman_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(37, 1, 2, 'Salman2', 'Salman khan wallpaper', '', 'Salman khan wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Salman2_130x90.jpg', 'prv2_Salman2_150x150.jpg', 'dtl1_Salman2_300x170.jpg', 'dtl2_Salman2_240x320.jpg', 'con1_Salman2_720x1280.jpg', 'con2_Salman2_480x800.jpg', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(38, 7, 8, 'AnushkaRanjan', 'Anushka Ranjan Animation', '', 'Anushka Ranjan Animation', '', '3', 'Animation', 10, '', '', '', 'prv1_AnushkaRanjan_130x90.gif', 'prv2_AnushkaRanjan_150x150.gif', 'dtl1_AnushkaRanjan_300x170.gif', 'dtl2_AnushkaRanjan_240x320.gif', 'con1_AnushkaRanjan_720x1280.gif', 'con2_AnushkaRanjan_480x800.gif', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(39, 7, 8, 'Deepika2', 'Deepika Animantion', '', 'Deepika Animantion', '', '3', 'Animation', 10, '', '', '', 'prv1_Deepika2_130x90.gif', 'prv2_Deepika2_150x150.gif', 'dtl1_Deepika2_300x170.gif', 'dtl2_Deepika2_240x320.gif', 'con1_Deepika2_720x1280.gif', 'con2_Deepika2_480x800.gif', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(40, 7, 8, 'Hrithik', 'Hrithik Animation', '', 'Hrithik Animation', '', '3', 'Animation', 10, '', '', '', 'prv1_Hrithik_130x90.gif', 'prv2_Hrithik_150x150.gif', 'dtl1_Hrithik_300x170.gif', 'dtl2_Hrithik_240x320.gif', 'con1_Hrithik_720x1280.gif', 'con2_Hrithik_480x800.gif', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(41, 7, 8, 'Kangana', 'Kangana Animation', '', 'Kangana Animation', '', '3', 'Animation', 10, '', '', '', 'prv1_Kangana_130x90.gif', 'prv2_Kangana_150x150.gif', 'dtl1_Kangana_300x170.gif', 'dtl2_Kangana_240x320.gif', 'con1_Kangana_720x1280.gif', 'con2_Kangana_480x800.gif', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(42, 7, 8, 'Salman', 'Salman khan animation', '', 'Salman khan animation', '', '3', 'Animation', 10, '', '', '', 'prv1_Salman_130x90.gif', 'prv2_Salman_150x150.gif', 'dtl1_Salman_300x170.gif', 'dtl2_Salman_240x320.gif', 'con1_Salman_720x1280.gif', 'con2_Salman_480x800.gif', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(43, 12, 16, 'Beder meye jochna', 'Valobasar Golpo video song', '', 'Valobasar Golpo video song', '', '2', 'Video', 30, '', 'Romantic', '', 'prv1_Beder_meye_jochna_130x90.jpg', 'prv2_Beder_meye_jochna_150x150.jpg', 'dtl1_Beder_meye_jochna_300x170.jpg', 'dtl2_Beder_meye_jochna_240x320.jpg', 'con1_Beder_meye_jochna_Prev.mp4', 'con2_Beder_meye_jochna_H.mp4', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(44, 3, 10, 'Ostitto_Animation-1', 'Ostitto Movie Animation', '', 'Ostitto Movie Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ostitto_Anim_Op_01_130x90.gif', 'prv2_Ostitto_Anim_Op_01_150x150.gif', 'dtl1_Ostitto_Anim_Op_01_300x170.gif', 'dtl2_Ostitto_Anim_Op_01_240x320.gif', 'con1_Ostitto_Anim_Op_01_720x1280.gif', 'con2_Ostitto_Anim_Op_01_480x800.gif', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(45, 3, 10, 'Ostitto_Animation-2', 'Ostitto Movie Animation', '', 'Ostitto Movie Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ostitto_Anim_Op_02_130x90.gif', 'prv2_Ostitto_Anim_Op_02_150x150.gif', 'dtl1_Ostitto_Anim_Op_02_300x170.gif', 'dtl2_Ostitto_Anim_Op_02_240x320.gif', 'con1_Ostitto_Anim_Op_02_720x1280.gif', 'con2_Ostitto_Anim_Op_02_480x800.gif', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(46, 3, 10, 'Ostitto_Animation-3', 'Ostitto Movie Animation', '', 'Ostitto Movie Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ostitto_Anim_Op_03_130x90.gif', 'prv2_Ostitto_Anim_Op_03_150x150.gif', 'dtl1_Ostitto_Anim_Op_03_300x170.gif', 'dtl2_Ostitto_Anim_Op_03_240x320.gif', 'con1_Ostitto_Anim_Op_03_720x1280.gif', 'con2_Ostitto_Anim_Op_03_480x800.gif', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(47, 3, 10, 'Ostitto_Animation-4', 'Ostitto Movie Animation', '', 'Ostitto Movie Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ostitto_Anim_Op_04_130x90.gif', 'prv2_Ostitto_Anim_Op_04_150x150.gif', 'dtl1_Ostitto_Anim_Op_04_300x170.gif', 'dtl2_Ostitto_Anim_Op_04_240x320.gif', 'con1_Ostitto_Anim_Op_04_720x1280.gif', 'con2_Ostitto_Anim_Op_04_480x800.gif', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(48, 3, 10, 'Ostitto_Animation-5', 'Ostitto Movie Animation', '', 'Ostitto Movie Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ostitto_Anim_Op_05_130x90.gif', 'prv2_Ostitto_Anim_Op_05_150x150.gif', 'dtl1_Ostitto_Anim_Op_05_300x170.gif', 'dtl2_Ostitto_Anim_Op_05_240x320.gif', 'con1_Ostitto_Anim_Op_05_720x1280.gif', 'con2_Ostitto_Anim_Op_05_480x800.gif', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', ' NULL'),
(49, 3, 10, 'Ostitto_Animation-6', 'Ostitto Movie Animation', '', 'Ostitto Movie Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ostitto_Anim_Op_06_130x90.gif', 'prv2_Ostitto_Anim_Op_06_150x150.gif', 'dtl1_Ostitto_Anim_Op_06_300x170.gif', 'dtl2_Ostitto_Anim_Op_06_240x320.gif', 'con1_Ostitto_Anim_Op_06_720x1280.gif', 'con2_Ostitto_Anim_Op_06_480x800.gif', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', 'NULL'),
(50, 3, 10, 'Ostitto_Animation-7', 'Ostitto Movie Animation', '', 'Ostitto Movie Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ostitto_Anim_Op_07_130x90.gif', 'prv2_Ostitto_Anim_Op_07_150x150.gif', 'dtl1_Ostitto_Anim_Op_07_300x170.gif', 'dtl2_Ostitto_Anim_Op_07_240x320.gif', 'con1_Ostitto_Anim_Op_07_720x1280.gif', 'con2_Ostitto_Anim_Op_07_480x800.gif', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', ' NULL'),
(51, 3, 10, 'Ostitto_Animation-8', 'Ostitto Movie Animation', '', 'Ostitto Movie Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ostitto_Anim_Op_08_130x90.gif', 'prv2_Ostitto_Anim_Op_08_150x150.gif', 'dtl1_Ostitto_Anim_Op_08_300x170.gif', 'dtl2_Ostitto_Anim_Op_08_240x320.gif', 'con1_Ostitto_Anim_Op_08_720x1280.gif', 'con2_Ostitto_Anim_Op_08_480x800.gif', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(52, 3, 10, 'Ostitto_Animation-9', 'Ostitto Movie Animation', '', 'Ostitto Movie Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ostitto_Anim_Op_09_130x90.gif', 'prv2_Ostitto_Anim_Op_09_150x150.gif', 'dtl1_Ostitto_Anim_Op_09_300x170.gif', 'dtl2_Ostitto_Anim_Op_09_240x320.gif', 'con1_Ostitto_Anim_Op_09_720x1280.gif', 'con2_Ostitto_Anim_Op_09_480x800.gif', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(53, 3, 10, 'Ostitto_Animation-10', 'Ostitto Movie Animation', '', 'Ostitto Movie Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ostitto_Anim_Op_10_130x90.gif', 'prv2_Ostitto_Anim_Op_10_150x150.gif', 'dtl1_Ostitto_Anim_Op_10_300x170.gif', 'dtl2_Ostitto_Anim_Op_10_240x320.gif', 'con1_Ostitto_Anim_Op_10_720x1280.gif', 'con2_Ostitto_Anim_Op_10_480x800.gif', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(54, 3, 10, 'Ostitto_Animation-11', 'Ostitto Movie Animation', '', 'Ostitto Movie Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ostitto_Anim_Op_11_130x90.gif', 'prv2_Ostitto_Anim_Op_11_150x150.gif', 'dtl1_Ostitto_Anim_Op_11_300x170.gif', 'dtl2_Ostitto_Anim_Op_11_240x320.gif', 'con1_Ostitto_Anim_Op_11_720x1280.gif', 'con2_Ostitto_Anim_Op_11_480x800.gif', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(55, 5, 9, 'Ostitto_Wall_Op_01', 'Arefin shuvo and Trisha', '', 'Arefin shuvo and Trisha wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Ostitto_Wall_Op_01_130x90.jpg', 'prv2_Ostitto_Wall_Op_01_150x150.jpg', 'dtl1_Ostitto_Wall_Op_01_300x170.jpg', 'dtl2_Ostitto_Wall_Op_01_240x320.jpg', 'con1_Ostitto_Wall_Op_01_720x1280.jpg', 'con2_Ostitto_Wall_Op_01_480x800.jpg', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(56, 5, 9, 'Ostitto_Wall_Op_02', 'Arefin shuvo and Trisha', '', 'Arefin shuvo and Trisha wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Ostitto_Wall_Op_02_130x90.jpg', 'prv2_Ostitto_Wall_Op_02_150x150.jpg', 'dtl1_Ostitto_Wall_Op_02_300x170.jpg', 'dtl2_Ostitto_Wall_Op_02_240x320.jpg', 'con1_Ostitto_Wall_Op_02_720x1280.jpg', 'con2_Ostitto_Wall_Op_02_480x800.jpg', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(57, 3, 10, 'Ostitto_Animation-12', 'Ostitto Movie Animation', '', 'Ostitto Movie Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ostitto_Anim_Op_12_130x90.gif', 'prv2_Ostitto_Anim_Op_12_150x150.gif', 'dtl1_Ostitto_Anim_Op_12_300x170.gif', 'dtl2_Ostitto_Anim_Op_12_240x320.gif', 'con1_Ostitto_Anim_Op_12_720x1280.gif', 'con2_Ostitto_Anim_Op_12_480x800.gif', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(58, 5, 9, 'Ostitto_Wall_Op_03', 'Arefin shuvo and Trisha', '', 'Arefin shuvo and Trisha wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Ostitto_Wall_Op_03_130x90.jpg', 'prv2_Ostitto_Wall_Op_03_150x150.jpg', 'dtl1_Ostitto_Wall_Op_03_300x170.jpg', 'dtl2_Ostitto_Wall_Op_03_240x320.jpg', 'con1_Ostitto_Wall_Op_03_720x1280.jpg', 'con2_Ostitto_Wall_Op_03_480x800.jpg', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(59, 5, 9, 'Ostitto_Wall_Op_04', 'Trisha', '', 'Trisha wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Ostitto_Wall_Op_04_130x90.jpg', 'prv2_Ostitto_Wall_Op_04_150x150.jpg', 'dtl1_Ostitto_Wall_Op_04_300x170.jpg', 'dtl2_Ostitto_Wall_Op_04_240x320.jpg', 'con1_Ostitto_Wall_Op_04_720x1280.jpg', 'con2_Ostitto_Wall_Op_04_480x800.jpg', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(60, 3, 10, 'Ostitto_Animation-13', 'Ostitto Movie Animation', '', 'Ostitto Movie Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ostitto_Anim_Op_13_130x90.gif', 'prv2_Ostitto_Anim_Op_13_150x150.gif', 'dtl1_Ostitto_Anim_Op_13_300x170.gif', 'dtl2_Ostitto_Anim_Op_13_240x320.gif', 'con1_Ostitto_Anim_Op_13_720x1280.gif', 'con2_Ostitto_Anim_Op_13_480x800.gif', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(61, 3, 10, 'Ostitto_Animation-14', 'Ostitto Movie Animation', '', 'Ostitto Movie Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ostitto_Anim_Op_14_130x90.gif', 'prv2_Ostitto_Anim_Op_14_150x150.gif', 'dtl1_Ostitto_Anim_Op_14_300x170.gif', 'dtl2_Ostitto_Anim_Op_14_240x320.gif', 'con1_Ostitto_Anim_Op_14_720x1280.gif', 'con2_Ostitto_Anim_Op_14_480x800.gif', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(62, 11, 15, 'Ei Buker Bhetor', 'Valobasar Golpo audio song', '', 'Valobasar Golpo audio song', 'Milon and Taniya Mirja', '2', 'Audio', 20, '', '', '', 'prv1_Ei_Buker_Bhetor_130x90.jpg', 'prv2_Ei_Buker_Bhetor_150x150.jpg', 'dtl1_Ei_Buker_Bhetor_300x170.jpg', 'dtl2_Ei_Buker_Bhetor_240x320.jpg', 'con1_Ei_Buker_Bhetor_Prev.mp3', 'con2_Ei_Buker_Bhetor_H.mp3', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(63, 12, 14, 'Ostitto Tilte Song', 'Ostitto Tilte Song', '', 'Ostitto Bangla Movie Tilte Song', '', '2', 'Video', 30, '', 'Romantic', '', 'prv1_Ostitto_Tilte_song_130x90.JPG', 'prv2_Ostitto_Tilte_song_150x150.JPG', 'dtl1_Ostitto_Tilte_song_300x170.JPG', 'dtl2_Ostitto_Tilte_song_240x320.JPG', 'con1_Ostitto_Tilte_song_Prev.mp4', 'con2_Ostitto_Tilte_song_H.mp4', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(64, 12, 14, 'Ayna Bolna', 'Ostitto Bangla Movie Song', '', 'Ostitto Bangla Movie Song', '', '2', 'Video', 30, '', 'Romantic', '', 'prv1_Ayna_Bolna_130x90.JPG', 'prv2_Ayna_Bolna_150x150.JPG', 'dtl1_Ayna_Bolna_300x170.JPG', 'dtl2_Ayna_Bolna_240x320.JPG', 'con1_Ayna_Bolna_Prev.mp4', 'con2_Ayna_Bolna_H.mp4', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(65, 12, 14, 'Ontor Khuje', 'Ostitto Bangla Movie Song', '', 'Ostitto Bangla Movie Song', '', '2', 'Video', 30, '', 'Romantic', '', 'prv1_Ontor_Khuje_130x90.JPG', 'prv2_Ontor_Khuje_150x150.JPG', 'dtl1_Ontor_Khuje_300x170.JPG', 'dtl2_Ontor_Khuje_240x320.JPG', 'con1_Ontor_Khuje_Prev.mp4', 'con2_Ontor_Khuje_H.mp4', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(66, 12, 14, 'Tor name likhichi hridoy', 'Ostitto Bangla Movie Song', '', 'Ostitto Bangla Movie Song', '', '2', 'Video', 30, '', 'Romantic', '', 'prv1_tor_name_likhichi_hridoy_130x90.JPG', 'prv2_tor_name_likhichi_hridoy_150x150.JPG', 'dtl1_tor_name_likhichi_hridoy_300x170.JPG', 'dtl2_tor_name_likhichi_hridoy_240x320.JPG', 'con1_tor_name_likhichi_hridoy_Prev.mp4', 'con2_tor_name_likhichi_hridoy_H.mp4', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(67, 12, 16, 'Mon Siemana', 'Valobasar Golpo video song', '', 'Valobasar Golpo video song', '', '2', 'Video', 30, '', 'Romantic', '', 'prv1_mon_siemana_130x90.jpg', 'prv2_mon_siemana_150x150.jpg', 'dtl1_mon_siemana_300x170.jpg', 'dtl2_mon_siemana_240x320.jpg', 'con1_mon_siemana_Prev.mp4', 'con2_mon_siemana_H.mp4', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(68, 11, 15, 'Beder meye jochna', 'Valobasar Golpo audio song', '', 'Valobasar Golpo audio song', 'Milon and Taniya Mirja', '2', 'Audio', 20, '', '', '', 'prv1_Beder_meye_jochna_130x90.jpg', 'prv2_Beder_meye_jochna_150x150.jpg', 'dtl1_Beder_meye_jochna_300x170.jpg', 'dtl2_Beder_meye_jochna_240x320.jpg', 'con1_Beder_meye_jochna_Prev.mp3', 'con2_Beder_meye_jochna_H.mp3', NULL, NULL, '2016-04-25', '2016-04-25', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(69, 11, 15, 'Mon Siemana', 'Valobasar Golpo audio song', '', 'Valobasar Golpo audio song', 'Milon and Taniya Mirja', '2', 'Audio', 20, '', '', '', 'prv1_mon_siemana_130x90.jpg', 'prv2_mon_siemana_150x150.jpg', 'dtl1_mon_siemana_300x170.jpg', 'dtl2_mon_siemana_240x320.jpg', 'con1_mon_siemana_Prev.mp3', 'con2_mon_siemana_H.mp3', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(70, 11, 15, 'Mone to Chotto Shoytan', 'Valobasar Golpo audio song', '', 'Valobasar Golpo audio song', 'Milon and Taniya Mirja', '2', 'Audio', 20, '', '', '', 'prv1_Mone_to_Chotto_Shoytan_130x90.JPG', 'prv2_Mone_to_Chotto_Shoytan_150x150.JPG', 'dtl1_Mone_to_Chotto_Shoytan_300x170.JPG', 'dtl2_Mone_to_Chotto_Shoytan_240x320.JPG', 'con1_Romanc_Prev.mp3', 'con2_Mone_to_Chotto_Shoytan_H.mp3', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(71, 12, 16, 'Mone to Chotto Shoytan', 'Valobasar Golpo video song', '', 'Valobasar Golpo video song', '', '2', 'Video', 30, '', 'Romantic', '', 'prv1_Mone_to_Chotto_Shoytan_130x90.JPG', 'prv2_Mone_to_Chotto_Shoytan_150x150.JPG', 'dtl1_Mone_to_Chotto_Shoytan_300x170.JPG', 'dtl2_Mone_to_Chotto_Shoytan_300x170.JPG', 'con1_Romanc_Prev.mp4', 'con2_Mone_to_Chotto_Shoytan_H.mp4', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(72, 11, 13, 'Ostitto Tilte Song', 'Ostitto Bangla Movie Song', '', 'Ostitto Bangla Movie Song', 'Tisha and Arifin Shuvo', '2', 'Audio', 20, '', '', '', 'prv1_Austitto_Tilte_song_130x90.JPG', 'prv2_Austitto_Tilte_song_150x150.JPG', 'dtl1_Austitto_Tilte_song_300x170.JPG', 'dtl2_Austitto_Tilte_song_240x320.JPG', 'con1_Austitto_Tilte_song_Prev.mp3', 'con2_Austitto_Tilte_song_H.mp3', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(73, 11, 13, 'Ayna Bolna', 'Ostitto Bangla Movie Song', '', 'Ostitto Bangla Movie Song', 'Tisha and Arifin Shuvo', '2', 'Audio', 20, '', '', '', 'prv1_AYNA_BOLNA_FINAL_MASTER_130x90.JPG', 'prv2_AYNA_BOLNA_FINAL_MASTER_150x150.JPG', 'dtl1_AYNA_BOLNA_FINAL_MASTER_300x170.JPG', 'dtl2_AYNA_BOLNA_FINAL_MASTER_240x320.JPG', 'con1_AYNA_BOLNA_FINAL_MASTER_Prev.mp3', 'con2_AYNA_BOLNA_FINAL_MASTER_H.mp3', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(74, 11, 13, 'Ontor Khuje', 'Ostitto Bangla Movie Song', '', 'Ostitto Bangla Movie Song', 'Tisha and Arifin Shuvo', '2', 'Audio', 20, '', '', '', 'prv1_ONTOR_KHUJE_130x90.JPG', 'prv2_ONTOR_KHUJE_150x150.JPG', 'dtl1_ONTOR_KHUJE_300x170.JPG', 'dtl2_ONTOR_KHUJE_240x320.JPG', 'con1_ONTOR_KHUJE_Prev.mp3', 'con2_ONTOR_KHUJE_H.mp3', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(75, 11, 13, 'Tor name likhichi hridoy', 'Ostitto Bangla Movie Song', '', 'Ostitto Bangla Movie Song', 'Tisha and Arifin Shuvo', '2', 'Audio', 20, '', '', '', 'prv1_tor_name_likhichi_hridoy_130x90.JPG', 'prv2_tor_name_likhichi_hridoy_150x150.JPG', 'dtl1_tor_name_likhichi_hridoy_300x170.JPG', 'dtl2_tor_name_likhichi_hridoy_240x320.JPG', 'con1_tor_name_likhichi_hridoy_Prev.mp3', 'con2_tor_name_likhichi_hridoy_H.mp3', NULL, NULL, '2016-04-25', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(76, 1, 2, 'CFC', 'CFC', '', 'CFC', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Chrysanthemum.jpg', 'prv2_Hydrangeas.jpg', 'dtl1_Chrysanthemum.jpg', 'dtl2_Koala.jpg', 'con1_Lighthouse.jpg', 'con2_Tulips.jpg', NULL, NULL, '2016-04-26', '2016-06-26', NULL, 'admin', NULL, 'CFC,', 'deny', NULL),
(77, 17, 18, 'Agun Lagaiya Dilo', 'Ahare Sonali Bondhu by Nayan', '', 'Hasson Rajar Gaan album Ahare Sonali Bondhu by Nayan\n', 'Nayan', '4', 'Audio', 20, '', '', '', 'prv1_Hason-Rajar-Gaan_130x90.jpg', 'prv2_Hason-Rajar-Gaan_150x150.jpg', 'dtl1_Hason-Rajar-Gaan_300x170.jpg', 'dtl2_Hason-Rajar-Gaan_240x320.jpg', 'con1_Agun_Lagaiya_Dilo_Prev.mp3', 'con2_Agun_Lagaiya_Dilo.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(78, 17, 18, 'Ahare Sonali Bondhu', 'Ahare Sonali Bondhu by Nayan', '', 'Hasson Rajar Gaan album Ahare Sonali Bondhu by Nayan\n', 'Nayan', '4', 'Audio', 20, '', '', '', 'prv1_Hason-Rajar-Gaan_130x901.jpg', 'prv2_Hason-Rajar-Gaan_150x1501.jpg', 'dtl1_Hason-Rajar-Gaan_300x1701.jpg', 'dtl2_Hason-Rajar-Gaan_240x3201.jpg', 'con1_Ahare_Sonali_Bondhu_Prev.mp3', 'con2_Ahare_Sonali_Bondhu.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(79, 17, 18, 'Ami Na Loilam Allahir Nam', 'Ahare Sonali Bondhu by Nayan', '', 'Hasson Rajar Gaan album Ahare Sonali Bondhu by Nayan\n', 'Nayan', '4', 'Audio', 20, '', '', '', 'prv1_Hason-Rajar-Gaan_130x902.jpg', 'prv2_Hason-Rajar-Gaan_150x1502.jpg', 'dtl1_Hason-Rajar-Gaan_300x1702.jpg', 'dtl2_Hason-Rajar-Gaan_240x3202.jpg', 'con1_Ami_Na_Loilam_Allahir_Nam_Prev.mp3', 'con2_Ami_Na_Loilam_Allahir_Nam.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(80, 17, 18, 'Bawla Ke Banailo', 'Ahare Sonali Bondhu by Nayan', '', 'Hasson Rajar Gaan album Ahare Sonali Bondhu by Nayan\n', 'Nayan', '4', 'Audio', 20, '', '', '', 'prv1_Hason-Rajar-Gaan_130x903.jpg', 'prv2_Hason-Rajar-Gaan_150x1503.jpg', 'dtl1_Hason-Rajar-Gaan_300x1703.jpg', 'dtl2_Hason-Rajar-Gaan_240x3203.jpg', 'con1_Bawla_Ke_Banailo_Prev.mp3', 'con2_Bawla_Ke_Banailo.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(81, 17, 18, 'Charilam Hasoner Naw', 'Ahare Sonali Bondhu by Nayan', '', 'Hasson Rajar Gaan album Ahare Sonali Bondhu by Nayan\n', 'Nayan', '4', 'Audio', 20, '', '', '', 'prv1_Hason-Rajar-Gaan_130x904.jpg', 'prv2_Hason-Rajar-Gaan_150x1504.jpg', 'dtl1_Hason-Rajar-Gaan_300x1704.jpg', 'dtl2_Hason-Rajar-Gaan_240x3204.jpg', 'con1_Charilam_Hasoner_Naw_Prev.mp3', 'con2_Charilam_Hasoner_Naw.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(82, 17, 18, 'Hasonrajay Koy Ami Kich Noyre', 'Ahare Sonali Bondhu by Nayan', '', 'Hasson Rajar Gaan album Ahare Sonali Bondhu by Nayan\n', 'Nayan', '4', 'Audio', 20, '', '', '', 'prv1_Hason-Rajar-Gaan_130x905.jpg', 'prv2_Hason-Rajar-Gaan_150x1505.jpg', 'dtl1_Hason-Rajar-Gaan_300x1705.jpg', 'dtl2_Hason-Rajar-Gaan_240x3205.jpg', 'con1_Hasonrajay_Koy_Ami_Kich_Noyre_Prev.mp3', 'con2_Hasonrajay_Koy_Ami_Kich_Noyre.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(83, 17, 18, 'Kanai Tumi Keir Kelaw', 'Ahare Sonali Bondhu by Nayan', '', 'Hasson Rajar Gaan album Ahare Sonali Bondhu by Nayan\n', 'Nayan', '4', 'Audio', 20, '', '', '', 'prv1_Hason-Rajar-Gaan_130x906.jpg', 'prv2_Hason-Rajar-Gaan_150x1506.jpg', 'dtl1_Hason-Rajar-Gaan_300x1706.jpg', 'dtl2_Hason-Rajar-Gaan_240x3206.jpg', 'con1_Kanai_Tumi_Keir_Kelaw_Prev.mp3', 'con2_Kanai_Tumi_Keir_Kelaw.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(84, 17, 18, 'Keno Ailayna Ailay Nare', 'Ahare Sonali Bondhu by Nayan', '', 'Hasson Rajar Gaan album Ahare Sonali Bondhu by Nayan', 'Nayan', '4', 'Audio', 20, '', '', '', 'prv1_Hason-Rajar-Gaan_130x907.jpg', 'prv2_Hason-Rajar-Gaan_150x1507.jpg', 'dtl1_Hason-Rajar-Gaan_300x1707.jpg', 'dtl2_Hason-Rajar-Gaan_240x3207.jpg', 'con1_Kanai_Tumi_Keir_Kelaw_Prev1.mp3', 'con2_Keno_Ailayna_Ailay_Nare.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(85, 17, 18, 'Matir Pinjirar Majhe', 'Ahare Sonali Bondhu by Nayan', '', 'Hasson Rajar Gaan album Ahare Sonali Bondhu by Nayan\n', 'Nayan', '4', 'Audio', 20, '', '', '', 'prv1_Hason-Rajar-Gaan_130x908.jpg', 'prv2_Hason-Rajar-Gaan_150x1508.jpg', 'dtl1_Hason-Rajar-Gaan_300x1708.jpg', 'dtl2_Hason-Rajar-Gaan_240x3208.jpg', 'con1_Matir_Pinjirar_Majhe_Prev.mp3', 'con2_Matir_Pinjirar_Majhe.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(86, 17, 18, 'Nisha Lagilore', 'Ahare Sonali Bondhu by Nayan', '', 'Hasson Rajar Gaan album Ahare Sonali Bondhu by Nayan\n', 'Nayan', '4', 'Audio', 20, '', '', '', 'prv1_Hason-Rajar-Gaan_130x909.jpg', 'prv2_Hason-Rajar-Gaan_150x1509.jpg', 'dtl1_Hason-Rajar-Gaan_300x1709.jpg', 'dtl2_Hason-Rajar-Gaan_240x3209.jpg', 'con1_Nisha_Lagilore_Prev.mp3', 'con2_Nisha_Lagilore.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(87, 17, 18, 'Premer Bajare Bike', 'Ahare Sonali Bondhu by Nayan', '', 'Hasson Rajar Gaan album Ahare Sonali Bondhu by Nayan\n', 'Nayan', '4', 'Audio', 20, '', '', '', 'prv1_Hason-Rajar-Gaan_130x9010.jpg', 'prv2_Hason-Rajar-Gaan_150x15010.jpg', 'dtl1_Hason-Rajar-Gaan_300x17010.jpg', 'dtl2_Hason-Rajar-Gaan_240x32010.jpg', 'con1_Premer_Bajare_Bike_Prev.mp3', 'con2_Premer_Bajare_Bike.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(88, 17, 18, 'Sona Bonde Amare', 'Ahare Sonali Bondhu by Nayan', '', 'Hasson Rajar Gaan album Ahare Sonali Bondhu by Nayan\n', 'Nayan', '4', 'Audio', 20, '', '', '', 'prv1_Hason-Rajar-Gaan_130x9011.jpg', 'prv2_Hason-Rajar-Gaan_150x15011.jpg', 'dtl1_Hason-Rajar-Gaan_300x17011.jpg', 'dtl2_Hason-Rajar-Gaan_240x32011.jpg', 'con1_Sona_Bonde_Amare_Prev.mp3', 'con2_Sona_Bonde_Amare.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(89, 17, 19, 'Rajahin Rajjo', 'Song from Gorbo Banlgdesh ', '', 'Shunno band song from Gorbo Bangladesh Album', 'Shunno', '4', 'Audio', 20, '', '', '', 'prv1_Shunno_130x90.jpg', 'prv2_Shunno_150x150.jpg', 'dtl1_Shunno_300x170.jpg', 'dtl2_Shunno_240x320.jpg', 'con1_01_Rajahin_Rajjo_Prev.mp3', 'con2_01_Rajahin_Rajjo.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(90, 17, 19, 'Gorbo Bangladesh', 'Song from Gorbo Banlgdesh ', '', 'Shunno band song from Gorbo Bangladesh Album\n', 'Shunno', '4', 'Audio', 20, '', '', '', 'prv1_Shunno_130x901.jpg', 'prv2_Shunno_150x1501.jpg', 'dtl1_Shunno_300x1701.jpg', 'dtl2_Shunno_240x3201.jpg', 'con1_02_Gorbo_Bangladesh_Prev.mp3', 'con2_02_Gorbo_Bangladesh.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(91, 17, 19, 'Sunno Hate', 'Song from Gorbo Banlgdesh', '', 'Shunno band song from Gorbo Bangladesh Album\n', 'Shunno', '4', 'Audio', 20, '', '', '', 'prv1_Shunno_130x902.jpg', 'prv2_Shunno_150x1502.jpg', 'dtl1_Shunno_300x1702.jpg', 'dtl2_Shunno_240x3202.jpg', 'con1_03_Sunno_Hate_Prev.mp3', 'con2_03_Sunno_Hate.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(92, 17, 19, 'Nijhum Rat', 'Song from Gorbo Banlgdesh', '', 'Shunno band song from Gorbo Bangladesh Album\n', 'Shunno', '4', 'Audio', 20, '', '', '', 'prv1_Shunno_130x903.jpg', 'prv2_Shunno_150x1503.jpg', 'dtl1_Shunno_300x1703.jpg', 'dtl2_Shunno_240x3203.jpg', 'con1_04_Nijhum_Rat_Prev.mp3', 'con2_04_Nijhum_Rat.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(93, 17, 19, 'Khanchar Vetor Ochin Pakhi', 'Song from Gorbo Banlgdesh', '', 'Shunno band song from Gorbo Bangladesh Album\n', 'Shunno', '4', 'Audio', 20, '', '', '', 'prv1_Shunno_130x904.jpg', 'prv2_Shunno_150x1504.jpg', 'dtl1_Shunno_300x1704.jpg', 'dtl2_Shunno_240x3204.jpg', 'con1_05_Khanchar_Vetor_Ochin_Pakhi_Prev.mp3', 'con2_05_Khanchar_Vetor_Ochin_Pakhi.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(94, 17, 19, 'Jochnar pore', 'Song from Gorbo Banlgdesh', '', 'Shunno band song from Gorbo Bangladesh Album\n', 'Shunno', '4', 'Audio', 20, '', '', '', 'prv1_Shunno_130x905.jpg', 'prv2_Shunno_150x1505.jpg', 'dtl1_Shunno_300x1705.jpg', 'dtl2_Shunno_240x3205.jpg', 'con1_06_Jochnar_pore_Prev.mp3', 'con2_06_Jochnar_pore.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(95, 17, 19, 'Sadhinotar Prantore', 'Song from Gorbo Banlgdesh', '', 'Shunno band song from Gorbo Bangladesh Album\n', 'Shunno', '4', 'Audio', 20, '', '', '', 'prv1_Shunno_130x906.jpg', 'prv2_Shunno_150x1506.jpg', 'dtl1_Shunno_300x1706.jpg', 'dtl2_Shunno_240x3206.jpg', 'con1_07_Sadhinotar_Prantore_Prev.mp3', 'con2_07_Sadhinotar_Prantore.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(96, 17, 19, 'Se Vabe', 'Song from Gorbo Banlgdesh', '', 'Shunno band song from Gorbo Bangladesh Album\n', 'Shunno', '4', 'Audio', 20, '', '', '', 'prv1_Shunno_130x907.jpg', 'prv2_Shunno_150x1507.jpg', 'dtl1_Shunno_300x1707.jpg', 'dtl2_Shunno_240x3207.jpg', 'con1_08_Se_Vabe_Prev.mp3', 'con2_08_Se_Vabe.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(97, 17, 19, 'AMBIVALENT SONG', 'Song from Gorbo Banlgdesh', '', 'Shunno band song from Gorbo Bangladesh Album\n', 'Shunno', '4', 'Audio', 20, '', '', '', 'prv1_Shunno_130x908.jpg', 'prv2_Shunno_150x1508.jpg', 'dtl1_Shunno_300x1708.jpg', 'dtl2_Shunno_240x3208.jpg', 'con1_09_AMBIVALENT_SONG_Prev.mp3', 'con2_09_AMBIVALENT_SONG.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(98, 17, 18, 'He Bondhu He Priyo', 'Song from Hey Bondhu Hey Priyo', '', 'Hey Bondhu Hey Priyo Album song by Abid\n', 'Abid', '4', 'Audio', 20, '', '', '', 'prv1_Ha-Bandhu-Ha-Abid_130x90.jpg', 'prv2_Ha-Bandhu-Ha-Abid_150x150.jpg', 'dtl1_Ha-Bandhu-Ha-Abid_300x170.jpg', 'dtl2_Ha-Bandhu-Ha-Abid_240x320.jpg', 'con1_01_He_Bondhu_He_Priyo_Prev.mp3', 'con2_01_He_Bondhu_He_Priyo.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(99, 17, 19, 'Tomar Kajol Dighi', 'Song from Hey Bondhu Hey Priyo', '', 'Hey Bondhu Hey Priyo Album song by Abid\n', 'Abid', '4', 'Audio', 20, '', '', '', 'prv1_Ha-Bandhu-Ha-Abid_130x901.jpg', 'prv2_Ha-Bandhu-Ha-Abid_150x1501.jpg', 'dtl1_Ha-Bandhu-Ha-Abid_300x1701.jpg', 'dtl2_Ha-Bandhu-Ha-Abid_240x3201.jpg', 'con1_02_Tomar_Kajol_Dighi_Prev.mp3', 'con2_02_Tomar_Kajol_Dighi.mp3', NULL, NULL, '2016-04-26', '2017-08-13', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(100, 17, 19, 'Soghono Gohono Ratre', 'Song from Hey Bondhu Hey Priyo', '', 'Hey Bondhu Hey Priyo Album song by Abid\n', 'Abid', '4', 'Audio', 20, '', '', '', 'prv1_Ha-Bandhu-Ha-Abid_130x902.jpg', 'prv2_Ha-Bandhu-Ha-Abid_150x1502.jpg', 'dtl1_Ha-Bandhu-Ha-Abid_300x1702.jpg', 'dtl2_Ha-Bandhu-Ha-Abid_240x3202.jpg', 'con1_03_Soghono_Gohono_Ratre_Prev.mp3', 'con2_03_Soghono_Gohono_Ratre.mp3', NULL, NULL, '2016-04-26', NULL, NULL, 'admin', NULL, 'MFC,others,', 'deny', NULL),
(101, 17, 18, 'Dekho Dekho Shuktara', 'Song from Hey Bondhu Hey Priyo', '', 'Hey Bondhu Hey Priyo Album song by Abid\n', 'Abid', '4', 'Audio', 20, '', '', '', 'prv1_Ha-Bandhu-Ha-Abid_130x903.jpg', 'prv2_Ha-Bandhu-Ha-Abid_150x1503.jpg', 'dtl1_Ha-Bandhu-Ha-Abid_300x1703.jpg', 'dtl2_Ha-Bandhu-Ha-Abid_240x3203.jpg', 'con1_04_Dekho_Dekho_Shuktara_Prev.mp3', 'con2_04_Dekho_Dekho_Shuktara.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(102, 17, 18, 'Pagla Hawar', 'Song from Hey Bondhu Hey Priyo', '', 'Hey Bondhu Hey Priyo Album song by Abid\n', 'Abid', '4', 'Audio', 20, '', '', '', 'prv1_Ha-Bandhu-Ha-Abid_130x904.jpg', 'prv2_Ha-Bandhu-Ha-Abid_150x1504.jpg', 'dtl1_Ha-Bandhu-Ha-Abid_300x1704.jpg', 'dtl2_Ha-Bandhu-Ha-Abid_240x3204.jpg', 'con1_05_Pagla_Haowar_Prev.mp3', 'con2_05_Pagla_Haowar.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(103, 17, 18, 'Noy E Modhur Khela', 'Song from Hey Bondhu Hey Priyo', '', 'Hey Bondhu Hey Priyo Album song by Abid\n', 'Abid', '4', 'Audio', 20, '', '', '', 'prv1_Ha-Bandhu-Ha-Abid_130x905.jpg', 'prv2_Ha-Bandhu-Ha-Abid_150x1505.jpg', 'dtl1_Ha-Bandhu-Ha-Abid_300x1705.jpg', 'dtl2_Ha-Bandhu-Ha-Abid_240x3205.jpg', 'con1_06_Noy_E_Modhur_Khela_Prev.mp3', 'con2_06_Noy_E_Modhur_Khela.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(104, 17, 18, 'Ami Kan Pete Roi', 'Song from Hey Bondhu Hey Priyo', '', 'Hey Bondhu Hey Priyo Album song by Abid\n', 'Abid', '4', 'Audio', 20, '', '', '', 'prv1_Ha-Bandhu-Ha-Abid_130x906.jpg', 'prv2_Ha-Bandhu-Ha-Abid_150x1506.jpg', 'dtl1_Ha-Bandhu-Ha-Abid_300x1706.jpg', 'dtl2_Ha-Bandhu-Ha-Abid_240x3206.jpg', 'con1_07_Ami_Kan_Pete_Roi_Prev.mp3', 'con2_07_Ami_Kan_Pete_Roi.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(105, 17, 18, 'Biroho Modhur Holo Aji', 'Song from Hey Bondhu Hey Priyo', '', 'Hey Bondhu Hey Priyo Album song by Abid\n', 'Abid', '4', 'Audio', 20, '', '', '', 'prv1_Ha-Bandhu-Ha-Abid_130x907.jpg', 'prv2_Ha-Bandhu-Ha-Abid_150x1507.jpg', 'dtl1_Ha-Bandhu-Ha-Abid_300x1707.jpg', 'dtl2_Ha-Bandhu-Ha-Abid_240x3207.jpg', 'con1_08_Biroho_Modhur_Holo_Aji_Prev.mp3', 'con2_08_Biroho_Modhur_Holo_Aji.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(106, 17, 18, 'Bodhuwa', 'Song from Hey Bondhu Hey Priyo', '', 'Hey Bondhu Hey Priyo Album song by Abid\n', 'Abid', '4', 'Audio', 20, '', '', '', 'prv1_Ha-Bandhu-Ha-Abid_130x908.jpg', 'prv2_Ha-Bandhu-Ha-Abid_150x1508.jpg', 'dtl1_Ha-Bandhu-Ha-Abid_300x1708.jpg', 'dtl2_Ha-Bandhu-Ha-Abid_240x3208.jpg', 'con1_09_Bodhuwa_Prev.mp3', 'con2_09_Bodhuwa.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(107, 17, 18, 'Hey Bondhu Hey Priyo Album song by Abid', 'Song from Hey Bondhu Hey Priyo', '', 'Hey Bondhu Hey Priyo Album song by Abid\n', 'Abid', '4', 'Audio', 20, '', '', '', 'prv1_Ha-Bandhu-Ha-Abid_130x909.jpg', 'prv2_Ha-Bandhu-Ha-Abid_150x1509.jpg', 'dtl1_Ha-Bandhu-Ha-Abid_300x1709.jpg', 'dtl2_Ha-Bandhu-Ha-Abid_240x3209.jpg', 'con1_10_Gari_Cholena_Prev.mp3', 'con2_10_Gari_Cholena.mp3', NULL, NULL, '2016-04-26', '2016-04-26', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(108, 20, 22, 'Love Greetings_Wall_1', 'Love Greeting wallpaper', '', 'Love Greeting wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VW_1_130x90.jpg', 'prv2_VW_1_150x150.jpg', 'dtl1_VW_1_300x170.jpg', 'dtl2_VW_1_240x320.jpg', 'con1_VW_1_720x1280.jpg', 'con2_VW_1_480x800.jpg', NULL, NULL, '2016-04-27', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(109, 20, 22, 'Love Greetings_Wall_2', 'Love Greeting wallpaper', '', 'Love Greeting wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VW_2_130x90.jpg', 'prv2_VW_2_150x150.jpg', 'dtl1_VW_2_300x170.jpg', 'dtl2_VW_2_240x320.jpg', 'con1_VW_2_720x1280.jpg', 'con2_VW_2_480x800.jpg', NULL, NULL, '2016-04-27', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(110, 20, 22, 'Love Greetings_Wall_3', 'Love Greeting wallpaper', '', 'Love Greeting wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VW_3_130x90.jpg', 'prv2_VW_3_150x150.jpg', 'dtl1_VW_3_300x170.jpg', 'dtl2_VW_3_240x320.jpg', 'con1_VW_3_720x1280.jpg', 'con2_VW_3_480x800.jpg', NULL, NULL, '2016-04-27', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(111, 20, 22, 'Love Greetings_Wall_4', 'Love Greeting wallpaper', '', 'Love Greeting wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_VW_4_130x90.jpg', 'prv2_VW_4_150x150.jpg', 'dtl1_VW_4_300x170.jpg', 'dtl2_VW_4_240x320.jpg', 'con1_VW_4_720x1280.jpg', 'con2_VW_4_480x800.jpg', NULL, NULL, '2016-04-27', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(112, 21, 23, 'Love Greetings_Ani_1', 'Love Greeting Animation', '', 'Love Greeting Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_VA_1_130x90.gif', 'prv2_VA_1_150x150.gif', 'dtl1_VA_1_300x170.gif', 'dtl2_VA_1_240x320.gif', 'con1_VA_1_720x1280.gif', 'con2_VA_1_480x800.gif', NULL, NULL, '2016-04-27', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(113, 21, 23, 'Love Greetings_Ani_2', 'Love Greeting Animation', '', 'Love Greeting Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_VA_2_130x90.gif', 'prv2_VA_2_150x150.gif', 'dtl1_VA_2_300x170.gif', 'dtl2_VA_2_240x320.gif', 'con1_VA_2_720x1280.gif', 'con2_VA_2_480x800.gif', NULL, NULL, '2016-04-27', '2016-04-27', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(114, 21, 23, 'Love Greetings_Ani_3', 'Love Greeting Animation', '', 'Love Greeting Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_VA_3_130x90.gif', 'prv2_VA_3_150x150.gif', 'dtl1_VA_3_300x170.gif', 'dtl2_VA_3_240x320.gif', 'con1_VA_3_720x1280.gif', 'con2_VA_3_480x800.gif', NULL, NULL, '2016-04-27', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(115, 21, 23, 'Love Greetings_Ani_4', 'Love Greeting Animation', '', 'Love Greeting Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_VA_4_130x90.gif', 'prv2_VA_4_150x150.gif', 'dtl1_VA_4_300x170.gif', 'dtl2_VA_4_240x320.gif', 'con1_VA_4_720x1280.gif', 'con2_VA_4_480x800.gif', NULL, NULL, '2016-04-27', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL);
INSERT INTO `b2m_cms_content` (`id`, `cat_id`, `sub_cat_id`, `title`, `short_des`, `apk_path`, `description`, `artist_name`, `owner`, `type`, `price`, `phone_set`, `content_type`, `file_name`, `prv1_file_name`, `prv2_file_name`, `details1_file_name`, `details2_file_name`, `con1_file_name`, `con2_file_name`, `file_size`, `location`, `insert_date`, `update_date`, `approve_date`, `created_by`, `mapping_status`, `projects`, `status`, `owner_status`) VALUES
(116, 28, 29, 'Afridi_Wall_02', 'Afridi Wallpaper', '', 'Shahid Afridi Wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Afridi_Wall_02_130x90.jpg', 'prv2_Afridi_Wall_02_150x150.jpg', 'dtl1_Afridi_Wall_02_300x170.jpg', 'dtl2_Afridi_Wall_02_240x320.jpg', 'con1_Afridi_Wall_02_720x1280.jpg', 'con2_Afridi_Wall_02_480x800.jpg', NULL, NULL, '2016-04-27', '2016-09-20', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(117, 28, 29, 'Mashrafe_Wall_03', 'Mashrafe Wallpaper', '', 'Mashrafe Wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Mashrafe_Wall_03_130x90.jpg', 'prv2_Mashrafe_Wall_03_150x150.jpg', 'dtl1_Mashrafe_Wall_03_300x170.jpg', 'dtl2_Mashrafe_Wall_03_240x320.jpg', 'con1_Mashrafe_Wall_03_720x1280.jpg', 'con2_Mashrafe_Wall_03_480x800.jpg', NULL, NULL, '2016-04-27', '2016-09-20', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(118, 28, 29, 'Sachin_Wall_01', 'Sachin Wallpaper', '', 'Sachin Wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Sachin_Wall_01_130x90.jpg', 'prv2_Sachin_Wall_01_150x150.jpg', 'dtl1_Sachin_Wall_01_300x170.jpg', 'dtl2_Sachin_Wall_01_240x320.jpg', 'con1_Sachin_Wall_01_720x1280.jpg', 'con2_Sachin_Wall_01_480x800.jpg', NULL, NULL, '2016-04-27', '2016-09-20', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(119, 28, 29, 'Sakib_wall_01', 'Sakib Wallpaper', '', 'Sakib al Hassan Wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Sakib_wall_01_wall_01_130x90.jpg', 'prv2_Sakib_wall_01_wall_01_150x150.jpg', 'dtl1_Sakib_wall_01_wall_01_300x170.jpg', 'dtl2_Sakib_wall_01_wall_01_240x320.jpg', 'con1_Sakib_wall_01_wall_01_720x1280.jpg', 'con2_Sakib_wall_01_wall_01_480x800.jpg', NULL, NULL, '2016-04-27', '2016-09-20', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(120, 28, 29, 'Sanga_Wall_04', 'Sangakara Wallpaper', '', 'Sangakara wallpaper in 2011 world cup', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Sanga_Wall_04_130x90.jpg', 'prv2_Sanga_Wall_04_150x150.jpg', 'dtl1_Sanga_Wall_04_300x170.jpg', 'dtl2_Sanga_Wall_04_240x320.jpg', 'con1_Sanga_Wall_04_720x1280.jpg', 'con2_Sanga_Wall_04_480x800.jpg', NULL, NULL, '2016-04-27', '2016-09-20', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(121, 28, 29, 'Al-Amin-bowling-6', 'Al-Amin-bowling action ', '', 'Al-Amin-bowling action ', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Al-Amin-bowling-6_130X90.jpg', 'prv2_Al-Amin-bowling-6_150X150.jpg', 'dtl1_Al-Amin-bowling-6_300X170.jpg', 'dtl2_Al-Amin-bowling-6_240X320.jpg', 'con1_Al-Amin-bowling-6_720X1280.jpg', 'con2_Al-Amin-bowling-6_480X800.jpg', NULL, NULL, '2016-04-27', '2016-09-20', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(122, 28, 29, 'E-LEWIS-1', 'Evin Lewis  Wallpaper', '', 'Evin Lewis  Wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_E-LEWIS-1_130x90.jpg', 'prv2_E-LEWIS-1_150x150.jpg', 'dtl1_E-LEWIS-1_320x170.jpg', 'dtl2_E-LEWIS-1_240x320.jpg', 'con1_E-LEWIS-1_720x1280.jpg', 'con2_E-LEWIS-1_480x800.jpg', NULL, NULL, '2016-04-27', '2016-09-20', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(123, 28, 29, 'Mahamudulla-&-Cooper-runing-10', 'Mahamudulla & Cooper runing wallpaper', '', 'Mahamudulla & Cooper runing wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Mahamudulla--Cooper-runing-10_130x90.jpg', 'prv2_Mahamudulla--Cooper-runing-10_150x150.jpg', 'dtl1_Mahamudulla--Cooper-runing-10_300x170.jpg', 'dtl2_Mahamudulla--Cooper-runing-10_240x320.jpg', 'con1_Mahamudulla--Cooper-runing-10_720x1280.jpg', 'con2_Mahamudulla--Cooper-runing-10_480x800.jpg', NULL, NULL, '2016-04-27', '2016-09-20', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(124, 28, 29, 'Barisal-Bulls-captain-2', 'Barisal Bull Captain Riyad wallpaper', '', 'Barisal Bull Captain Riyad wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Barisal-Bulls-captain-2_130X90.jpg', 'prv2_Barisal-Bulls-captain-2_150X150.jpg', 'dtl1_Barisal-Bulls-captain-2_300X170.jpg', 'dtl2_Barisal-Bulls-captain-2_240X320.jpg', 'con1_Barisal-Bulls-captain-2_720X1280.jpg', 'con2_Barisal-Bulls-captain-2_480X800.jpg', NULL, NULL, '2016-04-27', '2016-09-20', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(125, 28, 29, 'Al-Amin-reacts', 'Al-Amin reacts after taking his 1st wicket', '', 'Al-Amin reacts after taking his 1st wicket', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Al-Amin-reacts-after-taking-his-1st-wicket-7_130X90.jpg', 'prv2_Al-Amin-reacts-after-taking-his-1st-wicket-7_150X150.jpg', 'dtl1_Al-Amin-reacts-after-taking-his-1st-wicket-7_300X170.jpg', 'dtl2_Al-Amin-reacts-after-taking-his-1st-wicket-7_240X320.jpg', 'con1_Al-Amin-reacts-after-taking-his-1st-wicket-7_720X1280.jpg', 'con2_Al-Amin-reacts-after-taking-his-1st-wicket-7_480X800.jpg', NULL, NULL, '2016-04-27', '2016-09-20', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(126, 30, 33, 'Mahamudulla-8', 'Mahamudulla Riyad animation', '', 'Mahamudulla Riyad animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Mahamudulla-8_130X90.gif', 'prv2_Mahamudulla-8_150X150.gif', 'dtl1_Mahamudulla-8_300X170.gif', 'dtl2_Mahamudulla-8_240X320.gif', 'con1_Mahamudulla-8_720X1280.gif', 'con2_Mahamudulla-8_480X800.gif', NULL, NULL, '2016-04-27', '2016-04-27', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(127, 30, 33, 'Sami-7', 'Sami animation after taking wicket', '', 'Sami animation after taking wicket', '', '2', 'Animation', 10, '', '', '', 'prv1_Sami-7_130X90.gif', 'prv2_Sami-7_150X150.gif', 'dtl1_Sami-7_300X170.gif', 'dtl2_Sami-7_240X320.gif', 'con1_Sami-7_720X1280.gif', 'con2_Sami-7_480X800.gif', NULL, NULL, '2016-04-27', '2016-04-27', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(128, 30, 33, 'Evin-Lewis_3', 'Evin Lewis  animation', '', 'Evin Lewis  animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Evin-Lewis_3_130X90.gif', 'prv2_Evin-Lewis_3_150X150.gif', 'dtl1_Evin-Lewis_3_300X170.gif', 'dtl2_Evin-Lewis_3_240X320.gif', 'con1_Evin-Lewis_3_720X1280.gif', 'con2_Evin-Lewis_3_480X800.gif', NULL, NULL, '2016-04-27', '2016-04-27', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(129, 30, 33, 'AL-Amin-2', 'Al-Amin animation', '', 'Al-Amin animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Al-Amin-2_130X90.gif', 'prv2_Al-Amin-2_150X150.gif', 'dtl1_Al-Amin-2_300X170.gif', 'dtl2_Al-Amin-2_240X320.gif', 'con1_Al-Amin-2_720X1280.gif', 'con2_Al-Amin-2_480X800.gif', NULL, NULL, '2016-04-27', '2016-04-27', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(130, 30, 33, 'Cooper-bowling-10', 'Kevon Cooper Animation', '', 'Kevon Cooper Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Cooper-bowling-10_130X90.gif', 'prv2_Cooper-bowling-10_150X150.gif', 'dtl1_Cooper-bowling-10_300X170.gif', 'dtl2_Cooper-bowling-10_240X320.gif', 'con1_Cooper-bowling-10_720X1280.gif', 'con2_Cooper-bowling-10_480X800.gif', NULL, NULL, '2016-04-27', '2016-04-27', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(131, 30, 33, 'Sangakara', 'Sangakara Animation', '', 'Sangakara Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Sangakara_130x90.gif', 'prv2_Sangakara_150x150.gif', 'dtl1_Sangakara_300x170.gif', 'dtl2_Sangakara_240x320.gif', 'con1_Sangakara_720x1280.gif', 'con2_Sangakara_480x800.gif', NULL, NULL, '2016-04-27', '2016-04-27', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(132, 30, 33, 'Sakib', 'Sakib animation', '', 'Sakib animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Sakib_130x90.gif', 'prv2_Sakib_150x150.gif', 'dtl1_Sakib_300x170.gif', 'dtl2_Sakib_240x320.gif', 'con1_Sakib_720x1280.gif', 'con2_Sakib_480x800.gif', NULL, NULL, '2016-04-27', '2016-04-27', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(133, 31, 32, 'WC11_Bangladesh-inn_01', 'Bangladesh vs India WC11 Bangladesh Innings', '', 'Bangladesh vs India WC11 Bangladesh Innings', '', '2', 'Video', 30, '', 'Action', '', 'prv1_WC11_Bangladesh-inn_01_130x90.jpg', 'prv2_WC11_Bangladesh-inn_01_150x150.jpg', 'dtl1_WC11_Bangladesh-inn_01_300x170.jpg', 'dtl2_WC11_Bangladesh-inn_01_240x320.jpg', 'con1_WC11_Bangladesh-inn_01_Prev.mp4', 'con2_WC11_Bangladesh-inn_01.mp4', NULL, NULL, '2016-04-27', '2016-04-27', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(134, 31, 32, 'WC11_Bangladesh-inn_02', 'Bangladesh vs India WC11 Bangladesh Innings', '', 'Bangladesh vs India WC11 Bangladesh Innings', '', '2', 'Video', 30, '', 'Action', '', 'prv1_WC11_Bangladesh-inn_02_130x90.jpg', 'prv2_WC11_Bangladesh-inn_02_150x150.jpg', 'dtl1_WC11_Bangladesh-inn_02_300x170.jpg', 'dtl2_WC11_Bangladesh-inn_02_240x320.jpg', 'con1_WC11_Bangladesh-inn_02_Prev.mp4', 'con2_WC11_Bangladesh-inn_02.mp4', NULL, NULL, '2016-04-27', '2016-04-27', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(135, 31, 32, 'WC11_India-inn_01', 'Bangladesh vs India WC11 India Innings', '', 'Bangladesh vs India WC11 India Innings', '', '2', 'Video', 30, '', 'Action', '', 'prv1_WC11_India-inn_01_130x90.jpg', 'prv2_WC11_India-inn_01_150x150.jpg', 'dtl1_WC11_India-inn_01_300x170.jpg', 'dtl2_WC11_India-inn_01_240x320.jpg', 'con1_WC11_India-inn_01_Prev.mp4', 'con2_WC11_India-inn_01.mp4', NULL, NULL, '2016-04-27', '2016-04-27', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(136, 31, 32, 'WC11_India-inn_02', 'Bangladesh vs India WC11 India Innings', '', 'Bangladesh vs India WC11 India Innings', '', '2', 'Video', 30, '', 'Action', '', 'prv1_WC11_India-inn_02_130x90.jpg', 'prv2_WC11_India-inn_02_150x150.jpg', 'dtl1_WC11_India-inn_02_300x170.jpg', 'dtl2_WC11_India-inn_02_240x320.jpg', 'con1_WC11_India-inn_02_Prev.mp4', 'con2_WC11_India-inn_02.mp4', NULL, NULL, '2016-04-27', '2016-04-27', NULL, 'admin', NULL, 'CFC,', 'published', NULL),
(137, 12, 36, 'Aage Jodi Jantam', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Aage-Jodi-Jantam_130x90.jpg', 'prv2_Aage-Jodi-Jantam_150x150.jpg', 'dtl1_Aage-Jodi-Jantam_300x170.jpg', 'dtl2_Aage-Jodi-Jantam_240x320.jpg', 'con1_Aage_Jodi_Jantam_Prev1.mp4', 'con2_Aage_Jodi_Jantam_H1.mp4', NULL, NULL, '2016-04-28', '2016-04-28', '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(138, 12, 36, 'Aajare Aaja', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Aajare_Aaja-Sobnom_130x90.jpg', 'prv2_Aajare_Aaja-Sobnom_150x150.jpg', 'dtl1_Aajare_Aaja-Sobnom_300x170.jpg', 'dtl2_Aajare_Aaja-Sobnom_240x320.jpg', 'con1_Aajare_Aaja_Full-Sobnom_Prev2.mp4', 'con2_Aajare_Aaja_Full-Sobnom_H2.mp4', NULL, NULL, '2016-04-28', '2016-04-28', '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(139, 12, 36, 'Aakash jure Koti Tara', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Aakash_Jure_Koti_Tara_Ektai_To_Chad-Inch_Inch_Preme-1_130x90.jpg', 'prv2_Aakash_Jure_Koti_Tara_Ektai_To_Chad-Inch_Inch_Preme-1_150x150.jpg', 'dtl1_Aakash_Jure_Koti_Tara_Ektai_To_Chad-Inch_Inch_Preme-1_300x170.jpg', 'dtl2_Aakash_Jure_Koti_Tara_Ektai_To_Chad-Inch_Inch_Preme-1_240x320.jpg', 'con1_Aakash_jure_Koti_Tara_Ektai__prev1.mp4', 'con2_Aakash_Jure_Koti_Tara_Ektai_To_Chad-Inch_Inch_Preme1_H1.mp4', NULL, NULL, '2016-04-28', '2016-04-28', '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(140, 12, 36, 'Aakash Matir Buke', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Aakash_Matir_Buke_130x90.jpg', 'prv2_Aakash_Matir_Buke_150x150.jpg', 'dtl1_Aakash_Matir_Buke_300x170.jpg', 'dtl2_Aakash_Matir_Buke_240x320.jpg', 'con1_Aakash_Matir_Buke_prev.mp4', 'con2_Aakash_Matir_Buke_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(141, 12, 36, 'Aalo aalo ronjon', 'Bangla Video Song', '', 'Bangla Video Song', '', '7', 'Video', 30, '', 'Romantic', '', 'prv1_Aalo-aalo-ronjon_130x90.jpg', 'prv2_Aalo-aalo-ronjon_150x150.jpg', 'dtl1_Aalo-aalo-ronjon_300x170.jpg', 'dtl2_Aalo-aalo-ronjon_240x320.jpg', 'con1_Aalo_aalo_ronjon_Prev.mp4', 'con2_Aalo_aalo_ronjon.mp4', NULL, NULL, '2016-05-02', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(142, 12, 36, 'Aamar mone bhalobasa chara', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Aamar_mone_bhalobasa_chara_130x90.jpg', 'prv2_Aamar_mone_bhalobasa_chara_150x150.jpg', 'dtl1_Aamar_mone_bhalobasa_chara_300x170.jpg', 'dtl2_Aamar_mone_bhalobasa_chara_240x320.jpg', 'con1_Aamar_Mone_Bhalobasa_prev.mp4', 'con2_Aamar_mone_bhalobasa_chara_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(143, 12, 36, 'Aami Laylare Layla', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Aami_Laylare_Layla_130x90.jpg', 'prv2_Aami_Laylare_Layla_150x150.jpg', 'dtl1_Aami_Laylare_Layla_300x170.jpg', 'dtl2_Aami_Laylare_Layla_240x320.jpg', 'con1_Aami_Laylare_Layla_prev.mp4', 'con2_Aami_Laylare_Layla_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(144, 12, 36, 'Aami Na dekhe Tomake', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Aami_Na_Dekhe_Tomake_130x90.jpg', 'prv2_Aami_Na_Dekhe_Tomake_150x150.jpg', 'dtl1_Aami_Na_Dekhe_Tomake_300x170.jpg', 'dtl2_Aami_Na_Dekhe_Tomake_240x320.jpg', 'con1_Aami_Na_dekhe_Tomake__prev.mp4', 'con2_Aami_Na_Dekhe_Tomake_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(145, 12, 36, 'Aami Premer Adalote', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Aami_premer_Adalote_130x90.jpg', 'prv2_Aami_premer_Adalote_150x150.jpg', 'dtl1_Aami_premer_Adalote_300x170.jpg', 'dtl2_Aami_premer_Adalote_240x320.jpg', 'con1_Aami_Premer_Adalote__prev.mp4', 'con2_Aami_premer_Adalote_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(146, 12, 36, 'Aami Tomake Peyechi', 'Bangla Movie Song', '', '', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Aami_Tomake_Peyechi_130x90.jpg', 'prv2_Aami_Tomake_Peyechi_150x150.jpg', 'dtl1_Aami_Tomake_Peyechi_300x170.jpg', 'dtl2_Aami_Tomake_Peyechi_240x320.jpg', 'con1_Aami_Tomake_Peyeci_prev.mp4', 'con2_Aami_Tomake_Peyechi_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(147, 12, 36, 'Aami tomay dekhe thomke uthi', 'Bangla Video Song', '', 'Bangla Video Song', '', '4', 'Video', 30, '', 'Romantic', '', 'prv1_Aami-tomay-dekhe-thomke-uthi_130x90.jpg', 'prv2_Aami-tomay-dekhe-thomke-uthi_150x150.jpg', 'dtl1_Aami-tomay-dekhe-thomke-uthi_300x170.jpg', 'dtl2_Aami-tomay-dekhe-thomke-uthi_240x320.jpg', 'con1_Aami_tomay_dekhe_thomke_uthi_prev.mp4', 'con2_Aami_tomay_dekhe_thomke_uthi_H.mp4', NULL, NULL, '2016-05-02', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(148, 12, 36, 'Aaro aage keno tumi elena', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Aaro_aage_keno_tumi_elena_130x90.jpg', 'prv2_Aaro_aage_keno_tumi_elena_150x150.jpg', 'dtl1_Aaro_aage_keno_tumi_elena_300x170.jpg', 'dtl2_Aaro_aage_keno_tumi_elena_240x320.jpg', 'con1_Aaro_aage_keno_tumi_elena_prev.mp4', 'con2_Aaro_aage_keno_tumi_elena_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(149, 12, 36, 'Ami Mis Dayna', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Ami_Mis_Dayna_130x90.jpg', 'prv2_Ami_Mis_Dayna_150x150.jpg', 'dtl1_Ami_Mis_Dayna_300x170.jpg', 'dtl2_Ami_Mis_Dayna_240x320.jpg', 'con1_Ami_Mis_Dayna_Prev.mp4', 'con2_Ami_Mis_Dayna_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(150, 12, 36, 'Aslong as you Love Me', 'Bangla Video Song', '', 'Bangla Video Song', '', '7', 'Video', 30, '', 'Romantic', '', 'prv1_Aslong-as-U-LOve-Me_130x90.jpg', 'prv2_Aslong-as-U-LOve-Me_150x150.jpg', 'dtl1_Aslong-as-U-LOve-Me_300x170.jpg', 'dtl2_Aslong-as-U-LOve-Me_240x320.jpg', 'con1_Aslong_as_U_LOve_Me_Prev.mp4', 'con2_Aslong_as_U_LOve_Me.mp4', NULL, NULL, '2016-05-02', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(151, 12, 36, 'Bajere baje', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Bajere_baje_130x90.jpg', 'prv2_Bajere_baje_150x150.jpg', 'dtl1_Bajere_baje_300x170.jpg', 'dtl2_Bajere_baje_240x320.jpg', 'con1_Bajere_baje_Prev1.mp4', 'con2_Bajere_baje_H1.mp4', NULL, NULL, '2016-05-02', '2016-05-02', '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(152, 12, 36, 'Bak Bakum Payra', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Bak_Bakum_Payra-Biyabari_130x90.jpg', 'prv2_Bak_Bakum_Payra-Biyabari_150x150.jpg', 'dtl1_Bak_Bakum_Payra-Biyabari_300x170.jpg', 'dtl2_Bak_Bakum_Payra-Biyabari_240x320.jpg', 'con1_Bak_Bakum_Payra-Biyabari_Prev.mp4', 'con2_Bak_Bakum_Payra-Biyabari_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(153, 12, 36, 'Bangali Babu Holore Kaabu', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Bangali_Babu_Holore_Kaabu-Sobnom_130x90.jpg', 'prv2_Bangali_Babu_Holore_Kaabu-Sobnom_150x150.jpg', 'dtl1_Bangali_Babu_Holore_Kaabu-Sobnom_300x170.jpg', 'dtl2_Bangali_Babu_Holore_Kaabu-Sobnom_240x320.jpg', 'con1_Bangali_Babu_Holore_Kaabu-Sobnom_Prev.mp4', 'con2_Bangali_Babu_Holore_Kaabu-Sobnom_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(154, 12, 36, 'Beche Achi Jotodin Prethibite', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Beche_Achi_Jotodin_Prethibite_130x90.jpg', 'prv2_Beche_Achi_Jotodin_Prethibite_150x150.jpg', 'dtl1_Beche_Achi_Jotodin_Prethibite_300x170.jpg', 'dtl2_Beche_Achi_Jotodin_Prethibite_240x320.jpg', 'con1_Beche_Achi_Jotodin_Prethibite_prev.mp4', 'con2_Beche_Achi_Jotodin_Prethibite_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(155, 12, 36, 'Bhalobasar cheyeo', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Bhalobasar_cheyeo_130x90.jpg', 'prv2_Bhalobasar_cheyeo_150x150.jpg', 'dtl1_Bhalobasar_cheyeo_300x170.jpg', 'dtl2_Bhalobasar_cheyeo_240x320.jpg', 'con1_bhalobasar_cheyeo_prev.mp4', 'con2_Bhalobasar_cheyeo_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(156, 12, 36, 'Bhalobasha Express', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Bhalobasha_Express_130x90.jpg', 'prv2_Bhalobasha_Express_150x150.jpg', 'dtl1_Bhalobasha_Express_300x170.jpg', 'dtl2_Bhalobasha_Express_240x320.jpg', 'con1_Bhalobasha_Express_prev.mp4', 'con2_Bhalobasha_Express_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(157, 12, 36, 'Bhalobasha Jibone Ekbar Ase', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Bhalobasha_Jibone_Ekbar_Ase_130x90.jpg', 'prv2_Bhalobasha_Jibone_Ekbar_Ase_150x150.jpg', 'dtl1_Bhalobasha_Jibone_Ekbar_Ase_300x170.jpg', 'dtl2_Bhalobasha_Jibone_Ekbar_Ase_240x320.jpg', 'con1_Bhalobasha_Jibone_Ekbar_Ase_prev.mp4', 'con2_Bhalobasha_Jibone_Ekbar_Ase_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(158, 12, 36, 'Bhalobasha Mane', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Bhalobasha_Mane_130x90.jpg', 'prv2_Bhalobasha_Mane_150x150.jpg', 'dtl1_Bhalobasha_Mane_300x170.jpg', 'dtl2_Bhalobasha_Mane_240x320.jpg', 'con1_Bhalobasha_Mane_prev.mp4', 'con2_Bhalobasha_Mane_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(159, 12, 36, 'Bhalobashar Aagune Jolbo Dujone', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Bhalobashar_Aagune_Jolbo_Dujone_130x90.jpg', 'prv2_Bhalobashar_Aagune_Jolbo_Dujone_150x150.jpg', 'dtl1_Bhalobashar_Aagune_Jolbo_Dujone_300x170.jpg', 'dtl2_Bhalobashar_Aagune_Jolbo_Dujone_240x320.jpg', 'con1_Bhalobashar_Aagune_Jolbo_Dujone_prev.mp4', 'con2_Bhalobashar_Aagune_Jolbo_Dujone_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(160, 12, 36, 'Bhalobasiya Gelam Phasiya', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Bhalobasiya_Gelam_Phasiya_130x90.jpg', 'prv2_Bhalobasiya_Gelam_Phasiya_150x150.jpg', 'dtl1_Bhalobasiya_Gelam_Phasiya_300x170.jpg', 'dtl2_Bhalobasiya_Gelam_Phasiya_240x320.jpg', 'con1_Bhalobasiya_Gelam_Phasiya_prev.mp4', 'con2_Bhalobasiya_Gelam_Phasiya.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(161, 12, 36, 'Bhenge Jabe Hredoye Sat Aasman', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Bhenge_Jabe_Hredoye_Sat_Aasman_130x90.jpg', 'prv2_Bhenge_Jabe_Hredoye_Sat_Aasman_150x150.jpg', 'dtl1_Bhenge_Jabe_Hredoye_Sat_Aasman_300x170.jpg', 'dtl2_Bhenge_Jabe_Hredoye_Sat_Aasman_240x320.jpg', 'con1_Bhenge_Jabe_Hredoye_Sat_Aasman_prev.mp4', 'con2_Bhenge_Jabe_Hredoye_Sat_Aasman_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(162, 12, 36, 'Buke boro jala pura', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Buke_boro_jala_pura_130x90.jpg', 'prv2_Buke_boro_jala_pura_150x150.jpg', 'dtl1_Buke_boro_jala_pura_300x170.jpg', 'dtl2_Buke_boro_jala_pura_240x320.jpg', 'con1_Buke_boro_jala_pura_prev.mp4', 'con2_Buke_boro_jala_pura_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(163, 12, 36, 'Chobbishte Ghonta', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Chobbishte_Ghonta_130x90.jpg', 'prv2_Chobbishte_Ghonta_150x150.jpg', 'dtl1_Chobbishte_Ghonta_300x170.jpg', 'dtl2_Chobbishte_Ghonta_240x320.jpg', 'con1_Chobbishte_Ghonta_prev.mp4', 'con2_Chobbishte_Ghonta_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(164, 12, 36, 'Cholo Cholo Shojon', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Cholo_Cholo_Shojon_130x90.jpg', 'prv2_Cholo_Cholo_Shojon_150x150.jpg', 'dtl1_Cholo_Cholo_Shojon_300x170.jpg', 'dtl2_Cholo_Cholo_Shojon_240x320.jpg', 'con1_Cholo_Cholo_Shojon-Balobasher_Lal_Golap_prev.mp4', 'con2_Cholo_Cholo_Shojon-Balobasher_Lal_Golap_H360_1280x720.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(165, 12, 36, 'Chomke jai thomke jai', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Chomke_jai_thomke_jai_130x90.JPG', 'prv2_Chomke_jai_thomke_jai_150x150.JPG', 'dtl1_Chomke_jai_thomke_jai_300x170.JPG', 'dtl2_Chomke_jai_thomke_jai_240x320.JPG', 'con1_Chomke_jai_thomke_jai_Prev.mp4', 'con2_Chomke_jai_thomke_jai_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(166, 12, 36, 'Chotto Ekta Shobdo', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Chotto_Ekta_Shobdo-Valobashar_Lal_Golap_130x90.jpg', 'prv2_Chotto_Ekta_Shobdo-Valobashar_Lal_Golap_150x150.jpg', 'dtl1_Chotto_Ekta_Shobdo-Valobashar_Lal_Golap_300x170.jpg', 'dtl2_Chotto_Ekta_Shobdo-Valobashar_Lal_Golap_240x320.jpg', 'con1_Chotto_Ekta_Shobdo-Valobashar_Lal_Golap_prev.mp4', 'con2_Chotto_Ekta_Shobdo-Valobashar_Lal_Golap-H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(167, 12, 36, 'Chupi Share Chole Geli e Mone', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Chupi_Share_Chole_Geli_e_Mone-Inch_Inch_Preme-2_130x90.jpg', 'prv2_Chupi_Share_Chole_Geli_e_Mone-Inch_Inch_Preme-2_150x150.jpg', 'dtl1_Chupi_Share_Chole_Geli_e_Mone-Inch_Inch_Preme-2_300x170.jpg', 'dtl2_Chupi_Share_Chole_Geli_e_Mone-Inch_Inch_Preme-2_240x320.jpg', 'con1_Chupi_Share_Chole_Geli_e_Mone-Inch_Inch_Preme_Prev.mp4', 'con2_Chupi_Share_Chole_Geli_e_Mone-Inch_Inch_Preme1_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(168, 12, 36, 'Domka Hawa', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Donka_Hawa-Valobasher_Lal_Golap_130x90.jpg', 'prv2_Donka_Hawa-Valobasher_Lal_Golap_150x150.jpg', 'dtl1_Donka_Hawa-Valobasher_Lal_Golap_300x170.jpg', 'dtl2_Donka_Hawa-Valobasher_Lal_Golap_240x320.jpg', 'con1_Donka_Hawa-Valobasher_Lal_Golap_Prev.mp4', 'con2_Donka_Hawa-Valobasher_Lal_Golap_H.mp4', NULL, NULL, '2016-05-02', '2016-06-13', '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(169, 12, 36, 'Duniyate aapon bolte', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Duniyate_aapon_bolte_130x90.jpg', 'prv2_Duniyate_aapon_bolte_150x150.jpg', 'dtl1_Duniyate_aapon_bolte_300x170.jpg', 'dtl2_Duniyate_aapon_bolte_240x320.jpg', 'con1_Duniyate_aapon_bolte_Prev.mp4', 'con2_Duniyate_aapon_bolte_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(170, 12, 36, 'E Jibon juddhote', 'Bangla Movie Song', '', '', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_E_Jibon_juddhote_130x90.jpg', 'prv2_E_Jibon_juddhote_150x150.jpg', 'dtl1_E_Jibon_juddhote_300x170.jpg', 'dtl2_E_Jibon_juddhote_240x320.jpg', 'con1_E_Jibon_juddhote_Prev.mp4', 'con2_E_Jibon_juddhote_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(171, 12, 36, 'Ei Ontore Legeche Aagun', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Ei_Ontore_Legeche_Aagun-2_130x90.jpg', 'prv2_Ei_Ontore_Legeche_Aagun-2_150x150.jpg', 'dtl1_Ei_Ontore_Legeche_Aagun-2_300x170.jpg', 'dtl2_Ei_Ontore_Legeche_Aagun-2_240x320.jpg', 'con1_Ei_Ontore_Legeche_Aagun_Prev.mp4', 'con2_Ei_Ontore_Legeche_Aagun_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(172, 12, 36, 'Ei Prithibir buke asechi aami', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Ei_Prithibir_buke_asechi_aami_130x90.jpg', 'prv2_Ei_Prithibir_buke_asechi_aami_150x150.jpg', 'dtl1_Ei_Prithibir_buke_asechi_aami_300x170.jpg', 'dtl2_Ei_Prithibir_buke_asechi_aami_240x320.jpg', 'con1_Ei_Prithibir_buke_asechi_aami_Prev.mp4', 'con2_Ei_Prithibir_buke_asechi_aami_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(173, 12, 36, 'Ekbar dekhe preme pori', 'Bangla Movie Song', '', '', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Ekbar_dekhe_preme_pori_130x90.jpg', 'prv2_Ekbar_dekhe_preme_pori_150x150.jpg', 'dtl1_Ekbar_dekhe_preme_pori_300x170.jpg', 'dtl2_Ekbar_dekhe_preme_pori_240x320.jpg', 'con1_Ekbar_dekhe_preme_pori_Prev.mp4', 'con2_Ekbar_dekhe_preme_pori_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(174, 12, 36, 'Ekta kotha jane aamar mone', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Ekta_kotha_jane_aamar_mone_130x90.jpg', 'prv2_Ekta_kotha_jane_aamar_mone_150x150.jpg', 'dtl1_Ekta_kotha_jane_aamar_mone_300x170.jpg', 'dtl2_Ekta_kotha_jane_aamar_mone_240x320.jpg', 'con1_Ekta_kotha_jane_aamar_mone_Prev.mp4', 'con2_Ekta_kotha_jane_aamar_mone_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(175, 12, 36, 'Emon Shami Pabinako', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Emon_Shami_Pabinako-3_130x90.JPG', 'prv2_Emon_Shami_Pabinako-3_150x150.JPG', 'dtl1_Emon_Shami_Pabinako-3_300x170.JPG', 'dtl2_Emon_Shami_Pabinako-3_240x320.JPG', 'con1_Emon_Shami_Pabinako_Prev.mp4', 'con2_Emon_Shami_Pabinako_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(176, 12, 36, 'Eto bhalobesona aamay', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Eto_bhalobesona_aamay_130x90.jpg', 'prv2_Eto_bhalobesona_aamay_150x150.jpg', 'dtl1_Eto_bhalobesona_aamay_300x170.jpg', 'dtl2_Eto_bhalobesona_aamay_240x320.jpg', 'con1_Eto_bhalobesona_aamay_Prev.mp4', 'con2_Eto_bhalobesona_aamay_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(177, 12, 36, 'Hajar dorshok mone mojaiya', 'Bangla Movie Song', '', 'Bangla Movie Song', '', '6', 'Video', 30, '', 'Romantic', '', 'prv1_Hajar-dorshok-mone-mojaiya_130x90.jpg', 'prv2_Hajar-dorshok-mone-mojaiya_150x150.jpg', 'dtl1_Hajar-dorshok-mone-mojaiya_300x170.jpg', 'dtl2_Hajar-dorshok-mone-mojaiya_240x320.jpg', 'con1_Hajar_dorshok_mone_mojaiya_Prev.mp4', 'con2_Hajar_dorshok_mone_mojaiya_H.mp4', NULL, NULL, '2016-05-02', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'published', NULL),
(178, 11, 37, 'Chidi likhese bou', 'Bangla Movie Song', '', 'Bangla Movie Song by Monir khan & Sonia', 'Monir khan & Sonia', '6', 'Audio', 20, '', '', '', 'prv1_Banglar_Bou_130x90.jpg', 'prv2_Banglar_Bou_150x150.jpg', 'dtl1_Banglar_Bou_300x170.jpg', 'dtl2_Banglar_Bou_240x320.jpg', 'con1_Chidi_likhese_bou_prev.mp3', 'con2_Chidi_likhese_bou.mp3', NULL, NULL, '2016-05-07', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(179, 11, 37, 'Chora dud khailore', 'Chora dud khailore ', '', 'Chora dud khailore & Onima-Di -Kosta', 'Onima-Di -Kosta', '6', 'Audio', 20, '', '', '', 'prv1_Banglar_Bou_130x901.jpg', 'prv2_Banglar_Bou_150x1501.jpg', 'dtl1_Banglar_Bou_300x1701.jpg', 'dtl2_Banglar_Bou_240x3201.jpg', 'con1_Chora_dud_khailore_prev.mp3', 'con2_Chora_dud_khailore.mp3', NULL, NULL, '2016-05-07', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(180, 11, 37, 'Dada go tor', 'Dada go tor', '', 'Dada go tor by Polash & Nafisha', 'Polash & Nafisha', '6', 'Audio', 20, '', '', '', 'prv1_Banglar_Bou_130x902.jpg', 'prv2_Banglar_Bou_150x1502.jpg', 'dtl1_Banglar_Bou_300x1702.jpg', 'dtl2_Banglar_Bou_240x3202.jpg', 'con1_Dada_go_tor_prev.mp3', 'con2_Dada_go_tor.mp3', NULL, NULL, '2016-05-07', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(181, 11, 37, 'Kemon koira', 'Kemon koira', '', 'Kemon koira by Monir khan', 'Monir khan', '6', 'Audio', 20, '', '', '', 'prv1_Banglar_Bou_130x903.jpg', 'prv2_Banglar_Bou_150x1503.jpg', 'dtl1_Banglar_Bou_300x1703.jpg', 'dtl2_Banglar_Bou_240x3203.jpg', 'con1_Kemon_koira_prev.mp3', 'con2_Kemon_koira.mp3', NULL, NULL, '2016-05-07', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(182, 11, 37, 'Kokil er dakis na', 'Kokil er dakis na', '', 'Kokil er dakis na by Momtaj & Polash', 'Momtaj & Polash', '6', 'Audio', 20, '', '', '', 'prv1_Banglar_Bou_130x904.jpg', 'prv2_Banglar_Bou_150x1504.jpg', 'dtl1_Banglar_Bou_300x1704.jpg', 'dtl2_Banglar_Bou_240x3204.jpg', 'con1_Kokil_er_dakis_na_prev.mp3', 'con2_Kokil_er_dakis_na.mp3', NULL, NULL, '2016-05-07', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(183, 11, 37, 'Moner manush ', 'Moner manush ', '', 'Moner manush by Andru & konok chapa', 'Andu & konok chapa', '6', 'Audio', 20, '', '', '', 'prv1_Banglar_Bou_130x905.jpg', 'prv2_Banglar_Bou_150x1505.jpg', 'dtl1_Banglar_Bou_300x1705.jpg', 'dtl2_Banglar_Bou_240x3205.jpg', 'con1_Moner_manush_prev.mp3', 'con2_Moner manush .mp3', NULL, NULL, '2016-05-07', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(184, 11, 37, 'Nittiy nittiy udoy', 'Nittiy nittiy udoy', '', 'Nittiy nittiy udoy by Monir & Jumu', 'Monir & Jumu', '6', 'Audio', 20, '', '', '', 'prv1_Banglar_Bou_130x906.jpg', 'prv2_Banglar_Bou_150x1506.jpg', 'dtl1_Banglar_Bou_300x1706.jpg', 'dtl2_Banglar_Bou_240x3206.jpg', 'con1_Nittiy_nittiy_udoy_prev.mp3', 'con2_Nittiy_nittiy_udoy.mp3', NULL, NULL, '2016-05-07', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(185, 11, 37, 'O shashuri Ammajan', 'O shashuri Ammajan', '', 'O shashuri Ammajan by Momtaj', 'Momtaj', '6', 'Audio', 20, '', '', '', 'prv1_Banglar_Bou_130x907.jpg', 'prv2_Banglar_Bou_150x1507.jpg', 'dtl1_Banglar_Bou_300x1707.jpg', 'dtl2_Banglar_Bou_240x3207.jpg', 'O shashuri Ammajan_prev.mp3.sfk', 'con2_O_shashuri_Ammajan.mp3', NULL, NULL, '2016-05-07', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(186, 11, 37, 'Sonogo ruposi', 'Sonogo ruposi', '', 'Sonogo ruposi by Andro kishor', 'Andro kishor', '6', 'Audio', 20, '', '', '', 'prv1_Banglar_Bou_130x908.jpg', 'prv2_Banglar_Bou_150x1508.jpg', 'dtl1_Banglar_Bou_300x1708.jpg', 'dtl2_Banglar_Bou_240x3208.jpg', 'con1_Sonogo_ruposi_prev.mp3', 'con2_Sonogo_ruposi.mp3', NULL, NULL, '2016-05-07', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(187, 11, 37, 'Tumi jayo na', 'Tumi jayo na by Momtaj', '', 'Tumi jayo na', 'Momtaj', '6', 'Audio', 20, '', '', '', 'prv1_Banglar_Bou_130x909.jpg', 'prv2_Banglar_Bou_150x1509.jpg', 'dtl1_Banglar_Bou_300x1709.jpg', 'dtl2_Banglar_Bou_240x3209.jpg', 'con1_Tumi_jayo_na_prev.mp3', 'con2_Tumi_jayo_na.mp3', NULL, NULL, '2016-05-07', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(188, 11, 37, 'O shasuri O Ammajan', 'O shasuri O Ammajan', '', 'O shasuri O Ammajan by Momtaj', 'Momtaj', '6', 'Audio', 20, '', '', '', 'prv1_Banglar_Bou_130x9010.jpg', 'prv2_Banglar_Bou_150x15010.jpg', 'dtl1_Banglar_Bou_300x17010.jpg', 'dtl2_Banglar_Bou_240x32010.jpg', 'con1_O_shasuri_O_Ammajan2_prev.mp3', 'con2_O_shasuri_O_Ammajan.mp3', NULL, NULL, '2016-05-07', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(189, 11, 37, 'Ai mon vanga', 'Ai mon vanga', '', 'Ai mon vanga by Andu & konok chapa', 'Andu & konok chapa', '6', 'Audio', 20, '', '', '', 'prv1_Kotha_Daw_Shathe_Hobe_130x90.jpg', 'prv2_Kotha_Daw_Shathe_Hobe_150x150.jpg', 'dtl1_Kotha_Daw_Shathe_Hobe_300x170.jpg', 'dtl2_Kotha_Daw_Shathe_Hobe_240x320.jpg', 'con1_Ei_mon_vanga_er_prev.mp3', 'con2_Ai_mon_vanga.mp3', NULL, NULL, '2016-05-07', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(190, 11, 37, 'Akti ridoy ', 'Akti ridoy ', '', 'Akti ridoy by Andu & konok chapa', 'Andu & konok chapa', '6', 'Audio', 20, '', '', '', 'prv1_Kotha_Daw_Shathe_Hobe_130x901.jpg', 'prv2_Kotha_Daw_Shathe_Hobe_150x1501.jpg', 'dtl1_Kotha_Daw_Shathe_Hobe_300x1701.jpg', 'dtl2_Kotha_Daw_Shathe_Hobe_240x3201.jpg', 'con1_Akti_ridoy_ak_prev.mp3', 'con2_Akti_ridoy_ak.mp3', NULL, NULL, '2016-05-07', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(191, 11, 37, 'Amare saria re', 'Amare saria re', '', 'Amare saria re by Andro kishor & Ruma', 'Andro kishor & Ruma', '6', 'Audio', 20, '', '', '', 'prv1_Kotha_Daw_Shathe_Hobe_130x902.jpg', 'prv2_Kotha_Daw_Shathe_Hobe_150x1502.jpg', 'dtl1_Kotha_Daw_Shathe_Hobe_300x1702.jpg', 'dtl2_Kotha_Daw_Shathe_Hobe_240x3202.jpg', 'con1_Amare_saria_bondu_prev.mp3', 'con2_Amare_saria_re.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(192, 11, 37, 'Borishal er maia', 'Borishal er maia', '', 'Borishal er maia by Andro kishor & Sweety', 'Andro kishor & Sweety', '6', 'Audio', 20, '', '', '', 'prv1_Kotha_Daw_Shathe_Hobe_130x903.jpg', 'prv2_Kotha_Daw_Shathe_Hobe_150x1503.jpg', 'dtl1_Kotha_Daw_Shathe_Hobe_300x1703.jpg', 'dtl2_Kotha_Daw_Shathe_Hobe_240x3203.jpg', 'con1_Borishaler_maia_prev.mp3', 'con2_Borishal_er_maia.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(193, 11, 37, 'Manush monron shil', 'Manush monron shil', '', 'Manush monron shil by Monir khan & uttom deyan', 'Monir khan & uttom deyan', '6', 'Audio', 20, '', '', '', 'prv1_Kotha_Daw_Shathe_Hobe_130x904.jpg', 'prv2_Kotha_Daw_Shathe_Hobe_150x1504.jpg', 'dtl1_Kotha_Daw_Shathe_Hobe_300x1704.jpg', 'dtl2_Kotha_Daw_Shathe_Hobe_240x3204.jpg', 'con1_Allah_manush_moronshil_prev.mp3', 'con2_Manush_monron_shil.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(194, 11, 37, 'Ore dusto pola', 'Ore dusto pola', '', 'Ore dusto pola by Rijia parvin & Polash', 'Rijia parvin & Polash', '6', 'Audio', 20, '', '', '', 'prv1_Kotha_Daw_Shathe_Hobe_130x905.jpg', 'prv2_Kotha_Daw_Shathe_Hobe_150x1505.jpg', 'dtl1_Kotha_Daw_Shathe_Hobe_300x1705.jpg', 'dtl2_Kotha_Daw_Shathe_Hobe_240x3205.jpg', 'con1_O_re_dusto_pola_prev.mp3', 'con2_Ore_dusto_pola.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(195, 11, 37, 'Shurjer kase prio', 'Shurjer kase prio', '', 'Shurjer kase prio by ', 'Andu & konok chapa', '6', 'Audio', 20, '', '', '', 'prv1_Kotha_Daw_Shathe_Hobe_130x906.jpg', 'prv2_Kotha_Daw_Shathe_Hobe_150x1506.jpg', 'dtl1_Kotha_Daw_Shathe_Hobe_300x1706.jpg', 'dtl2_Kotha_Daw_Shathe_Hobe_240x3206.jpg', 'con1_Shurjer_kase_prio_prev.mp3', 'con2_Shurjer_kase_prio.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(196, 11, 37, 'Tumi valo basho na', 'Tumi valo basho na', '', 'Tumi valo basho na', 'S.I. Tutul', '6', 'Audio', 20, '', '', '', 'prv1_Kotha_Daw_Shathe_Hobe_130x907.jpg', 'prv2_Kotha_Daw_Shathe_Hobe_150x1507.jpg', 'dtl1_Kotha_Daw_Shathe_Hobe_300x1707.jpg', 'dtl2_Kotha_Daw_Shathe_Hobe_240x3207.jpg', 'con1_Tumi_valobasho_na_prev.mp3', 'con2_Tumi_valo_basho_na.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(197, 11, 37, 'Akti ridoy ak', 'Akti ridoy ak', '', 'Akti ridoy ak by Andu & konok chapa', 'Andu & konok chapa', '6', 'Audio', 20, '', '', '', 'prv1_Kotha_Daw_Shathe_Hobe_130x908.jpg', 'prv2_Kotha_Daw_Shathe_Hobe_150x1508.jpg', 'dtl1_Kotha_Daw_Shathe_Hobe_300x1708.jpg', 'dtl2_Kotha_Daw_Shathe_Hobe_240x3208.jpg', 'con1_Akti_ridoy_ak_prev1.mp3', 'con2_Akti_ridoy_ak1.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(198, 11, 37, 'Beche asi joto ', 'Beche asi joto ', '', 'Beche asi joto ', 'Monir khan & konok chapa', '6', 'Audio', 20, '', '', '', 'prv1_130x90.jpg', 'prv2_150x150.jpg', 'dtl1_300x170.jpg', 'dtl2_240x320.jpg', 'con1_Beche_aci_prev.mp3', 'con2_Beche_asi_joto_.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(199, 11, 37, 'Buke boro jala', 'Buke boro jala', '', 'Buke boro jala by Buke boro jala', 'Monir khan & konok chapa', '6', 'Audio', 20, '', '', '', 'prv1_130x901.jpg', 'prv2_150x1501.jpg', 'dtl1_300x1701.jpg', 'dtl2_240x3201.jpg', 'con1_Buke_boro_jala__prev.mp3', 'con2_Buke_boro_jala.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(200, 11, 37, 'Duniate apno bolte', 'Duniate apno bolte', '', 'Duniate apno bolte by Monir khan & Samina Chowdhury ', 'Monir khan & Samina Chowdhury ', '6', 'Audio', 20, '', '', '', 'prv1_130x902.jpg', 'prv2_150x1502.jpg', 'dtl1_300x1702.jpg', 'dtl2_240x3202.jpg', 'con1_Duniate_apon_prev.mp3', 'con2_Duniate_apno_bolte.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(201, 11, 37, 'Ghor ta jodi ', 'Ghor ta jodi', '', 'Ghor ta jodi  by Andu & konok chapa', 'Andu & konok chapa', '6', 'Audio', 20, '', '', '', 'prv1_130x903.jpg', 'prv2_150x1503.jpg', 'dtl1_300x1703.jpg', 'dtl2_240x3203.jpg', 'con1_Gor_ta_jodi_prev.mp3', 'con2_Ghor_ta_jodi_.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(202, 11, 37, 'Ghor ta jodi', 'Ghor ta jodi', '', 'Ghor ta jodi by S.I. Tutul', 'S.I. Tutul', '6', 'Audio', 20, '', '', '', 'prv1_130x904.jpg', 'prv2_150x1504.jpg', 'dtl1_300x1704.jpg', 'dtl2_240x3204.jpg', 'con1_Gorta_jodi_prev_.mp3', 'con2_Ghor_ta_jodi.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(203, 11, 37, 'Jano bondu tomer ', 'Jano bondu tomer ', '', 'Jano bondu tomer  by Andro kishor & Shabina yesmin', 'Andro kishor & Shabina yesmin', '6', 'Audio', 20, '', '', '', 'prv1_130x905.jpg', 'prv2_150x1505.jpg', 'dtl1_300x1705.jpg', 'dtl2_240x3205.jpg', 'con1_Jano_bondu_prev.mp3', 'con2_Jano_bondu_tomer_.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(204, 11, 37, 'Je valo basha tumi', 'Je valo basha tumi', '', 'Je valo basha tumi by Andro kishor & Shabina yesmin', 'Andro kishor & Shabina yesmin', '6', 'Audio', 20, '', '', '', 'prv1_130x906.jpg', 'prv2_150x1506.jpg', 'dtl1_300x1706.jpg', 'dtl2_240x3206.jpg', 'con1_Je_valobasha_tumi_prev.mp3', 'con2_Je_valo_basha_tumi.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(205, 11, 37, 'Rongila rongila', 'Rongila rongila', '', 'Rongila rongila by kumar bishojit & Doly shayontoni', 'kumar bishojit & Doly shayontoni', '6', 'Audio', 20, '', '', '', 'prv1_130x907.jpg', 'prv2_150x1507.jpg', 'dtl1_300x1707.jpg', 'dtl2_240x3207.jpg', 'con1_Rongila_Rongila_prev.mp3', 'con2_Rongila_rongila.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(206, 11, 37, 'Sathi amer', 'Sathi amer', '', 'Sathi amer by Tutul& Anima', 'Tutul& Anima', '6', 'Audio', 20, '', '', '', 'prv1_130x908.jpg', 'prv2_150x1508.jpg', 'dtl1_300x1708.jpg', 'dtl2_240x3208.jpg', 'con1_Shati_amer_chiro_prev.mp3', 'con2_Sathi_amer.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(207, 11, 37, 'Shurjo ta sakhi ase', 'Shurjo ta sakhi ase', '', 'Shurjo ta sakhi ase', 'Biplop & sonia', '6', 'Audio', 20, '', '', '', 'prv1_130x909.jpg', 'prv2_150x1509.jpg', 'dtl1_300x1709.jpg', 'dtl2_240x3209.jpg', 'con1_Shurjo_ta_shakkhi_prev.mp3', 'con2_Shurjo_ta_sakhi_ase.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(208, 11, 37, 'Sob kisuri suru', 'Sob kisuri suru', '', 'Sob kisuri suru by Monir khan & konok chapa', 'Monir khan & konok chapa', '6', 'Audio', 20, '', '', '', 'prv1_130x9010.jpg', 'prv2_150x15010.jpg', 'dtl1_300x17010.jpg', 'dtl2_240x32010.jpg', 'con1_Sob_kisu_ri__prev.mp3', 'con2_Sob_kisuri_suru.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(209, 11, 37, 'Valo basha mane', 'Valo basha mane', '', 'Valo basha mane by kumar bishojit & haimanti', 'kumar bishojit & haimanti', '6', 'Audio', 20, '', '', '', 'prv1_130x9011.jpg', 'prv2_150x15011.jpg', 'dtl1_300x17011.jpg', 'dtl2_240x32011.jpg', 'con1_Valobasha_mane_prev.mp3', 'con2_Valo_basha_mane.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(210, 11, 37, 'Amer shopno je', 'Amer shopno je', '', 'Amer shopno je by Erin & Shakil khan', 'Erin & Shakil khan', '6', 'Audio', 20, '', '', '', 'prv1_130x9012.jpg', 'prv2_150x15012.jpg', 'dtl1_300x17012.jpg', 'dtl2_240x32012.jpg', 'con1_Amer_shopno_je_prev.mp3', 'con2_Amer_shopno_je.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(211, 11, 37, 'Amer shopno tumi', 'Amer shopno tumi', '', 'Amer shopno tumi by Nodi & mehedi', 'Nodi & mehedi', '6', 'Audio', 20, '', '', '', 'prv1_130x9013.jpg', 'prv2_150x15013.jpg', 'dtl1_300x17013.jpg', 'dtl2_240x32013.jpg', 'con1_Amer_shopno_tumi_prev.mp3', 'con2_Amer_shopno_tumi.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(212, 11, 37, 'Ami je ke tomer', 'Ami je ke tomer', '', 'Ami je ke tomer by Shanur& Emon', 'Shanur& Emon', '6', 'Audio', 20, '', '', '', 'prv1_130x9014.jpg', 'prv2_150x15014.jpg', 'dtl1_300x17014.jpg', 'dtl2_240x32014.jpg', 'con1_Ami_je_ke_tomer_prev.mp3', 'con2_Ami_je_ke_tomer.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(213, 11, 37, 'Ami tomer bodu', 'Ami tomer bodu', '', 'Ami tomer bodu by Nipun & Ovi', 'Nipun & Ovi', '6', 'Audio', 20, '', '', '', 'prv1_130x9015.jpg', 'prv2_150x15015.jpg', 'dtl1_300x17015.jpg', 'dtl2_240x32015.jpg', 'con1_Ami_tomer_bodu_prev.mp3', 'con2_Ami_tomer_bodu.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(214, 17, 18, 'Akta Jibon Aktai Mon', 'Akta Jibon Aktai Mon', '', 'Akta Jibon Aktai Mon by Konok Chapa', 'Konok Chapa', '8', 'Audio', 20, '', '', '', 'prv1_EKC_130x90.jpg', 'prv2_EKC_150x150.jpg', 'dtl1_EKC_300x170.jpg', 'dtl2_EKC_240x320.jpg', 'con1_Akta_Jibon_Aktai_Mon_Prev.mp3', 'con2_Akta_Jibon_Aktai_Mon.mp3', NULL, NULL, '2016-05-08', '2016-05-08', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(215, 11, 37, 'Ar koto rat aka', 'Ar koto rat aka', '', 'Ar koto rat aka by Badhon', 'Badhon', '6', 'Audio', 20, '', '', '', 'prv1_130x9016.jpg', 'prv2_150x15016.jpg', 'dtl1_300x17016.jpg', 'dtl2_240x32016.jpg', 'con1_Ar_koto_rat_aka_prev.mp3', 'con2_Ar_koto_rat_aka.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(216, 11, 37, 'Chiro dine tumi', 'Chiro dine tumi', '', 'Chiro dine tumi by ', 'Mim & Niloy', '6', 'Audio', 20, '', '', '', 'prv1_130x9017.jpg', 'prv2_150x15017.jpg', 'dtl1_300x17017.jpg', 'dtl2_240x32017.jpg', 'con1_Chiro_din_tumi_prev.mp3', 'con2_Chiro dine tumi.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(217, 11, 37, 'Doro dia tumi chole', 'Doro dia tumi chole ', '', 'Doro dia tumi chole by Erin', 'Erin', '6', 'Audio', 20, '', '', '', 'prv1_130x9018.jpg', 'prv2_150x15018.jpg', 'dtl1_300x17018.jpg', 'dtl2_240x32018.jpg', 'con1_Doro_dia_tumi_chole_prev.mp3', 'con2_Doro_dia_tumi_chole.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(218, 11, 37, 'Khub chena mukh', 'Khub chena mukh', '', 'Khub chena mukh by Romana', 'Romana', '6', 'Audio', 20, '', '', '', 'prv1_130x9019.jpg', 'prv2_150x15019.jpg', 'dtl1_300x17019.jpg', 'dtl2_240x32019.jpg', 'con1_Khub_chena_chena_prev.mp3', 'con2_Khub_chena_chena.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(219, 11, 37, 'Khub jante isse ', 'Khub jante isse ', '', 'Khub jante isse  by Shamoli & Badsha', 'Shamoli & Badsha', '6', 'Audio', 20, '', '', '', 'prv1_130x9020.jpg', 'prv2_150x15020.jpg', 'dtl1_300x17020.jpg', 'dtl2_240x32020.jpg', 'con1_Khub_jante_isse_prev.mp3', 'con2_Khub_jante_isse_.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(220, 11, 37, 'Valobasha dia more', 'Valobasha dia more', '', 'Valobasha dia more by Shoshi', 'Shoshi', '6', 'Audio', 20, '', '', '', 'prv1_130x9021.jpg', 'prv2_150x15021.jpg', 'dtl1_300x17021.jpg', 'dtl2_240x32021.jpg', 'con1_Valobasha_dia_more_prev.mp3', 'con2_Valobasha_dia_more.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(221, 17, 18, 'Akta Kothai Jane', 'Akta Kothai Jane', '', 'Akta Kothai Jane by Konok Chapa', 'Konok Chapa', '8', 'Audio', 20, '', '', '', 'prv1_EKC_130x901.jpg', 'prv2_EKC_150x1501.jpg', 'dtl1_EKC_300x1701.jpg', 'dtl2_EKC_240x3201.jpg', 'con1_', 'con2_Akta_Kothai_Jane.mp3', NULL, NULL, '2016-05-08', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(222, 17, 18, 'Aktu Aktu Kore', 'Aktu Aktu Kore', '', 'Aktu Aktu Kore by Konok Chapa', 'Konok Chapa', '8', 'Audio', 20, '', '', '', 'prv1_EKC_130x902.jpg', 'prv2_EKC_150x1502.jpg', 'dtl1_EKC_300x1702.jpg', 'dtl2_EKC_240x3202.jpg', 'con1_Aktu_Aktu_Kore_Prev.mp3', 'con2_Aktu_Aktu_Kore.mp3', NULL, NULL, '2016-05-08', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(223, 17, 18, 'Amar Valobaser', 'Amar Valobaser', '', 'Amar Valobaser by Konok Chapa', 'Konok Chapa', '8', 'Audio', 20, '', '', '', 'prv1_EKC_130x903.jpg', 'prv2_EKC_150x1503.jpg', 'dtl1_EKC_300x1703.jpg', 'dtl2_EKC_240x3203.jpg', 'con1_Amar_Valobaser_Prev.mp3', 'con2_Amar_Valobaser.mp3', NULL, NULL, '2016-05-08', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(224, 17, 18, 'Ato Din Kothay Ccle', 'Ato Din Kothay Ccle', '', 'Ato Din Kothay Ccle by Konok Chapa', 'Konok Chapa', '8', 'Audio', 20, '', '', '', 'prv1_EKC_130x904.jpg', 'prv2_EKC_150x1504.jpg', 'dtl1_EKC_300x1704.jpg', 'dtl2_EKC_240x3204.jpg', 'con1_Ato_Din_Kothay_Ccle_Prev.mp3', 'con2_Ato_Din_Kothay_Ccle.mp3', NULL, NULL, '2016-05-08', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(225, 17, 18, 'Kesu Kesu Manuser Jibone', 'Kesu Kesu Manuser Jibone', '', 'Kesu Kesu Manuser Jibone by Konok Chapa', 'Konok Chapa', '8', 'Audio', 20, '', '', '', 'prv1_EKC_130x905.jpg', 'prv2_EKC_150x1505.jpg', 'dtl1_EKC_300x1705.jpg', 'dtl2_EKC_240x3205.jpg', 'con1_Kesu_Kesu_Manuser_Jibone_Prev.mp3', 'con2_Kesu_Kesu_Manuser_Jibone.mp3', NULL, NULL, '2016-05-08', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(226, 17, 18, 'Milon Hobe Koto Dine', 'Milon Hobe Koto Dine', '', 'Milon Hobe Koto Dine by Konok Chapa', 'Konok Chapa', '8', 'Audio', 20, '', '', '', 'prv1_EKC_130x906.jpg', 'prv2_EKC_150x1506.jpg', 'dtl1_EKC_300x1706.jpg', 'dtl2_EKC_240x3206.jpg', 'con1_Milon_Hobe_Koto_Dine_Prev.mp3', 'con2_Milon_Hobe_Koto_Dine.mp3', NULL, NULL, '2016-05-08', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL);
INSERT INTO `b2m_cms_content` (`id`, `cat_id`, `sub_cat_id`, `title`, `short_des`, `apk_path`, `description`, `artist_name`, `owner`, `type`, `price`, `phone_set`, `content_type`, `file_name`, `prv1_file_name`, `prv2_file_name`, `details1_file_name`, `details2_file_name`, `con1_file_name`, `con2_file_name`, `file_size`, `location`, `insert_date`, `update_date`, `approve_date`, `created_by`, `mapping_status`, `projects`, `status`, `owner_status`) VALUES
(227, 17, 18, 'Ontore o Tumi', 'Ontore o Tumi', '', 'Ontore o Tumi by Konok Chapa', 'Konok Chapa', '8', 'Audio', 20, '', '', '', 'prv1_EKC_130x907.jpg', 'prv2_EKC_150x1507.jpg', 'dtl1_EKC_300x1707.jpg', 'dtl2_EKC_240x3207.jpg', 'con1_Ontore_o_Tumi_Prev.mp3', 'con2_Ontore_o_Tumi.mp3', NULL, NULL, '2016-05-08', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(228, 17, 18, 'Tumari Nam Hridoya', 'Tumari Nam Hridoya', '', 'Tumari Nam Hridoya by Konok Chapa', 'Konok Chapa', '8', 'Audio', 20, '', '', '', 'prv1_EKC_130x908.jpg', 'prv2_EKC_150x1508.jpg', 'dtl1_EKC_300x1708.jpg', 'dtl2_EKC_240x3208.jpg', 'con1_Tumari_Nam_Hridoya_Prev.mp3', 'con2_Tumari_Nam_Hridoya.mp3', NULL, NULL, '2016-05-08', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(229, 17, 18, 'Tumi Sara Duniate', 'Tumi Sara Duniate', '', 'Tumi Sara Duniate by Konok Chapa', 'Konok Chapa', '8', 'Audio', 20, '', '', '', 'prv1_EKC_130x909.jpg', 'prv2_EKC_150x1509.jpg', 'dtl1_EKC_300x1709.jpg', 'dtl2_EKC_240x3209.jpg', 'con1_Tumi_Sara_Duniate_Prev.mp3', 'con2_Tumi_Sara_Duniate.mp3', NULL, NULL, '2016-05-08', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(230, 11, 37, 'Akbar dekhe pram', 'Akbar dekhe pram', '', 'Akbar dekhe pram by S.I. Tutul & Anima', 'S.I. Tutul & Anima', '6', 'Audio', 20, '', '', '', 'prv1_130x9022.jpg', 'prv2_150x15022.jpg', 'dtl1_300x17022.jpg', 'dtl2_240x32022.jpg', 'con1_Akbar_dekhe_pram_a_prev.mp3', 'con2_Akbar_dekhe_pram.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(231, 11, 37, 'Ato valo besho na', 'Ato valo besho na', '', 'Ato valo besho na by Ferdus & Mowshumi', 'Ferdus & Mowshumi', '6', 'Audio', 20, '', '', '', 'prv1_130x9023.jpg', 'prv2_150x15023.jpg', 'dtl1_300x17023.jpg', 'dtl2_240x32023.jpg', 'con1_Ato_valo_besho_na__prev.mp3', 'con2_Ato_valo_besho_na.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(232, 11, 37, 'Jake valobashe a mon', 'Jake valobashe a mon', '', 'Jake valobashe a mon by Munni & Farjana mimi & Tausif', 'Munni & Farjana mimi & Tausif', '6', 'Audio', 20, '', '', '', 'prv1_130x9024.jpg', 'prv2_150x15024.jpg', 'dtl1_300x17024.jpg', 'dtl2_240x32024.jpg', 'con1_Jake_valobashe_a_mon_prev.mp3', 'con2_Jake_valobashe_a_mon.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(233, 11, 37, 'Jake valobashe a mon', 'Jake valobashe a mon', '', 'Jake valobashe a mon by Munni & Farjana mimi & Tausif', 'Munni & Farjana mimi & Tausif', '6', 'Audio', 20, '', '', '', 'prv1_130x9025.jpg', 'prv2_150x15025.jpg', 'dtl1_300x17025.jpg', 'dtl2_240x32025.jpg', 'con1_Jake_valobashe_a_mon_prev1.mp3', 'con2_Jake_valobashe_a_mon1.mp3', NULL, NULL, '2016-05-08', '2016-05-18', '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(234, 11, 37, 'Kotha boro jala', 'Kotha boro jala', '', 'Kotha boro jala by Popy & Riaz', 'Popy & Riaz', '6', 'Audio', 20, '', '', '', 'prv1_130x9026.jpg', 'prv2_150x15026.jpg', 'dtl1_300x17026.jpg', 'dtl2_240x32026.jpg', 'con1_Kotha_boro_jala_prev.mp3', 'con2_Kotha_boro_jala.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(235, 11, 37, 'Ronger pahar pramer', 'Ronger pahar pramer', '', 'Ronger pahar pramer ', 'Mun& Reshon& Omith Hasan', '6', 'Audio', 20, '', '', '', 'prv1_130x9027.jpg', 'prv2_150x15027.jpg', 'dtl1_300x17027.jpg', 'dtl2_240x32027.jpg', 'con1_Ronger_pahar_pramer_prev.mp3', 'con2_Ronger_pahar_pramer.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(236, 11, 37, 'Tumi jeno Soddo', 'Tumi jeno Soddo', '', 'Tumi jeno Soddo by Tutul& Anima', 'Tutul& Anima', '6', 'Audio', 20, '', '', '', 'prv1_130x9028.jpg', 'prv2_150x15028.jpg', 'dtl1_300x17028.jpg', 'dtl2_240x32028.jpg', 'con1_Tumi_shudu_jano_prev.mp3', 'con2_Tumi_jeno_Soddo.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(237, 11, 37, 'Tumi shudu jano', 'Tumi shudu jano', '', 'Tumi shudu jano by Mimi & Mayen', 'Mimi & Mayen', '6', 'Audio', 20, '', '', '', 'prv1_130x9029.jpg', 'prv2_150x15029.jpg', 'dtl1_300x17029.jpg', 'dtl2_240x32029.jpg', 'con1_Tumi_jeno_Soddo_prev.mp3', 'con2_Tumi_shudu_jano.mp3', NULL, NULL, '2016-05-08', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(238, 11, 37, 'Valobashi valobashi', 'Valobashi valobashi', '', 'Valobashi valobashi by Arif & Anima - Di-Kosta', 'Arif & Anima - Di-Kosta', '6', 'Audio', 20, '', '', '', 'prv1_130x9030.jpg', 'prv2_150x15030.jpg', 'dtl1_300x17030.jpg', 'dtl2_240x32030.jpg', 'con1_Valobashi_valobashi_prev.mp3', 'con2_Valobashi_valobashi.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(239, 11, 37, 'Akti ridoy ak jon', 'Akti ridoy ak jon', '', 'Akti ridoy ak jon by Andu & konok chapa', 'Andu & konok chapa', '8', 'Audio', 20, '', '', '', 'prv1_130x9031.jpg', 'prv2_150x15031.jpg', 'dtl1_300x17031.jpg', 'dtl2_240x32031.jpg', 'con1_Akti_ridoy_ak_jon_ke_prev.mp3', 'con2_Akti_ridoy_ak_jon.mp3', NULL, NULL, '2016-05-09', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(240, 11, 37, 'Amon nach dekhabo', 'Amon nach dekhabo', '', 'Amon nach dekhabo by Polash & mim', 'Polash & mim', '8', 'Audio', 20, '', '', '', 'prv1_130x9032.jpg', 'prv2_150x15032.jpg', 'dtl1_300x17032.jpg', 'dtl2_240x32032.jpg', 'con1_Amon_nacha_dekhabo_prev.mp3', 'con2_Amon_nach_dekhabo.mp3', NULL, NULL, '2016-05-09', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(241, 11, 37, 'Dekho dekho gram', 'Dekho dekho gram', '', 'Dekho dekho gram by Andro kishor ', 'Andro kishor ', '8', 'Audio', 20, '', '', '', 'prv1_130x9033.jpg', 'prv2_150x15033.jpg', 'dtl1_300x17033.jpg', 'dtl2_240x32033.jpg', 'con1_Dekho_dekho_gram_prev.mp3', 'con2_Dekho_dekho_gram.mp3', NULL, NULL, '2016-05-09', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(242, 11, 37, 'Dui noyon er ', 'Dui noyon er ', '', 'Dui noyon er  by Andu & konok chapa', 'Andu & konok chapa', '8', 'Audio', 20, '', '', '', 'prv1_130x9034.jpg', 'prv2_150x15034.jpg', 'dtl1_300x17034.jpg', 'dtl2_240x32034.jpg', 'con1_Dui_noyon_er_prev.mp3', 'con2_Dui_noyon_er_.mp3', NULL, NULL, '2016-05-09', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(243, 26, 27, 'A Razzak Ka Mahina', 'A Razzak Ka Mahina', '', 'A Razzak Ka Mahina by Kari Barek Boideshe', 'Kari Barek Boideshe', '6', 'Audio', 20, '', '', '', 'prv1_Khaja-Baba_130x90.jpg', 'prv2_Khaja-Baba_150x150.jpg', 'dtl1_Khaja-Baba_300x170.jpg', 'dtl2_Khaja-Baba_240x320.jpg', 'con1_A_Razzak_Ka_Mahina_Prev.mp3', 'con2_A Razzak Ka Mahina.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(244, 11, 37, 'Je amer moner 2', 'Je amer moner 2', '', 'Je amer moner 2 by S.I. Tutul', 'S.I. Tutul', '8', 'Audio', 20, '', '', '', 'prv1_130x9035.jpg', 'prv2_150x15035.jpg', 'dtl1_300x17035.jpg', 'dtl2_240x32035.jpg', 'con1_Je_amar_moner_prev.mp3', 'con2_Je_amer_moner.mp3', NULL, NULL, '2016-05-09', '2016-05-09', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(245, 26, 27, 'Allah r Oli Khaja', 'Allah r Oli Khaja', '', 'Allah r Oli Khaja by Kari Barek Boideshe', 'Kari Barek Boideshe', '6', 'Audio', 20, '', '', '', 'prv1_Khaja-Baba_130x901.jpg', 'prv2_Khaja-Baba_150x1501.jpg', 'dtl1_Khaja-Baba_300x1701.jpg', 'dtl2_Khaja-Baba_240x3201.jpg', 'con1_Allah_r_Oli_Khaja-Prev.mp3', 'con2_Allah r Oli Khaja.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(246, 26, 27, 'Dui Kule Sultan Khaja', 'Dui Kule Sultan Khaja', '', 'Dui Kule Sultan Khaja by Kari Barek Boideshe', 'Kari Barek Boideshe', '6', 'Audio', 20, '', '', '', 'prv1_Khaja-Baba_130x902.jpg', 'prv2_Khaja-Baba_150x1502.jpg', 'dtl1_Khaja-Baba_300x1702.jpg', 'dtl2_Khaja-Baba_240x3202.jpg', 'con1_Dui_Kule_Sultan_Khaja_Prev.mp3', 'con2_Dui_Kule_Sultan_Khaja.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(247, 11, 37, 'Keno age hai hai', 'Keno age hai hai', '', 'Keno age hai hai by Sabina Yesmin', 'Sabina Yesmin', '8', 'Audio', 20, '', '', '', 'prv1_130x9036.jpg', 'prv2_150x15036.jpg', 'dtl1_300x17036.jpg', 'dtl2_240x32036.jpg', 'con1_Keno_age_hai_hai_prev.mp3', 'con2_Keno_age_hai_hai.mp3', NULL, NULL, '2016-05-09', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(248, 11, 37, 'Ma go ma', 'Ma go ma', '', 'Ma go ma by Ashif', 'Ashif', '8', 'Audio', 20, '', '', '', 'prv1_130x9037.jpg', 'prv2_150x15037.jpg', 'dtl1_300x17037.jpg', 'dtl2_240x32037.jpg', 'con1_Ma_go_ma__prev.mp3', 'con2_Ma_go_ma.mp3', NULL, NULL, '2016-05-09', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(249, 11, 37, 'Nupur poria dilam', 'Nupur poria dilam', '', 'Nupur poria dilam by S.I. Tutul', 'S.I. Tutul', '8', 'Audio', 20, '', '', '', 'prv1_130x9038.jpg', 'prv2_150x15038.jpg', 'dtl1_300x17038.jpg', 'dtl2_240x32038.jpg', 'con1_Nupur_porai_dilam_prev.mp3', 'con2_Nupur_poria_dilam.mp3', NULL, NULL, '2016-05-09', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(250, 11, 37, 'O amer roshia ', 'O amer roshia ', '', 'O amer roshia by Tutul & konok chapa', 'Tutul & konok chapa', '8', 'Audio', 20, '', '', '', 'prv1_130x9039.jpg', 'prv2_150x15039.jpg', 'dtl1_300x17039.jpg', 'dtl2_240x32039.jpg', 'con1_O_amer_roshia_prev.mp3', 'con2_O_amer_roshia_.mp3', NULL, NULL, '2016-05-09', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(251, 26, 27, 'Khaja Me Hu Pardeshi', 'Khaja Me Hu Pardeshi', '', 'Khaja Me Hu Pardeshi by Kari Barek Boideshe', 'Kari Barek Boideshe', '6', 'Audio', 20, '', '', '', 'prv1_Khaja-Baba_130x903.jpg', 'prv2_Khaja-Baba_150x1503.jpg', 'dtl1_Khaja-Baba_300x1703.jpg', 'dtl2_Khaja-Baba_240x3203.jpg', 'con1_Khaja_Me_Hu_Pardeshi_Prev.mp3', 'con2_Khaja_Me_Hu_Pardeshi.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(252, 11, 37, 'Dhakar king', 'Dhakar king', '', 'Dhakar king by Pulok & koras', 'Pulok & koras', '6', 'Audio', 20, '', '', '', 'prv1_Dhakar_King_130x90.jpg', 'prv2_Dhakar_King_150x150.jpg', 'dtl1_Dhakar_King_300x170.jpg', 'dtl2_Dhakar_King_240x320.jpg', 'con1_Dhakar_king_prev.mp3', 'con2_Dhakar_king.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(253, 26, 27, 'Muhammad ka Dulale', 'Muhammad ka Dulale', '', 'Muhammad ka Dulale by Kari Barek Boideshe', 'Kari Barek Boideshe', '6', 'Audio', 20, '', '', '', 'prv1_Khaja-Baba_130x904.jpg', 'prv2_Khaja-Baba_150x1504.jpg', 'dtl1_Khaja-Baba_300x1704.jpg', 'dtl2_Khaja-Baba_240x3204.jpg', 'con1_Muhammad_ka_Dulale_Prev.mp3', 'con2_Muhammad ka Dulale.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(254, 11, 37, 'Hat baria', 'Hat baria', '', 'Hat baria by Tutul & Jinat jahan', 'Tutul & Jinat jahan', '6', 'Audio', 20, '', '', '', 'prv1_Dhakar_King_130x901.jpg', 'prv2_Dhakar_King_150x1501.jpg', 'dtl1_Dhakar_King_300x1701.jpg', 'dtl2_Dhakar_King_240x3201.jpg', 'con1_Hat_bari_suina_prev.mp3', 'con2_Hat_baria.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(255, 11, 37, 'U are may ', 'U are may ', '', 'U are may  by Tutul& Bindia', 'Tutul& Bindia', '6', 'Audio', 20, '', '', '', 'prv1_Dhakar_King_130x902.jpg', 'prv2_Dhakar_King_150x1502.jpg', 'dtl1_Dhakar_King_300x1702.jpg', 'dtl2_Dhakar_King_240x3202.jpg', 'con1_U_are_my_love_prev.mp3', 'con2_U_are_may_.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(256, 26, 27, 'Rasuler Peyara', 'Rasuler Peyara', '', 'Rasuler Peyara by Kari Barek Boideshe', 'Kari Barek Boideshe', '6', 'Audio', 20, '', '', '', 'prv1_Khaja-Baba_130x905.jpg', 'prv2_Khaja-Baba_150x1505.jpg', 'dtl1_Khaja-Baba_300x1705.jpg', 'dtl2_Khaja-Baba_240x3205.jpg', 'con1_Rasuler_Peyara_Prev.mp3', 'con2_Rasuler Peyara.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(257, 11, 37, 'Akahs matir', 'Akahs matir', '', 'Akahs matir by Poash & Mun', 'Poash & Mun', '6', 'Audio', 20, '', '', '', 'prv1_Dhakar_King_130x903.jpg', 'prv2_Dhakar_King_150x1503.jpg', 'dtl1_Dhakar_King_300x1703.jpg', 'dtl2_Dhakar_King_240x3203.jpg', 'con1_Akhas_matir_tolere_prev.mp3', 'con2_Akhas_matir.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(258, 11, 37, 'Pram holo paglami', 'Pram holo paglami', '', 'Pram holo paglami by Reshad & Anima', 'Reshad & Anima', '6', 'Audio', 20, '', '', '', 'prv1_Dhakar_King_130x904.jpg', 'prv2_Dhakar_King_150x1504.jpg', 'dtl1_Dhakar_King_300x1704.jpg', 'dtl2_Dhakar_King_240x3204.jpg', 'con1_Pram_holo_paglami_prev.mp3', 'con2_Pram_holo_paglami.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(259, 11, 37, 'Tomay dekhle', 'Tomay dekhle', '', 'Tomay dekhle by Monir khan & konok chapa', 'Monir khan & konok chapa', '6', 'Audio', 20, '', '', '', 'prv1_Dhakar_King_130x905.jpg', 'prv2_Dhakar_King_150x1505.jpg', 'dtl1_Dhakar_King_300x1705.jpg', 'dtl2_Dhakar_King_240x3205.jpg', 'con1_Tomay_dekhle__prev.mp3', 'con2_Tomay_dekhle.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(260, 11, 37, 'Jodi theme jai', 'Jodi theme jai', '', 'Jodi theme jai by Ayub Bachchu', 'Ayub Bachchu', '6', 'Audio', 20, '', '', '', 'prv1_Dhakar_King_130x906.jpg', 'prv2_Dhakar_King_150x1506.jpg', 'dtl1_Dhakar_King_300x1706.jpg', 'dtl2_Dhakar_King_240x3206.jpg', 'con1_Jodi_theme_jai_prev.mp3', 'con2_Jodi_theme_jai.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(261, 26, 27, 'Sajerwala Khaja', 'Sajerwala Khaja', '', 'Sajerwala Khaja by Kari Barek Boideshe', 'Kari Barek Boideshe', '6', 'Audio', 20, '', '', '', 'prv1_Khaja-Baba_130x906.jpg', 'prv2_Khaja-Baba_150x1506.jpg', 'dtl1_Khaja-Baba_300x1706.jpg', 'dtl2_Khaja-Baba_240x3206.jpg', 'con1_Sajerwala_Khaja_Prev.mp3', 'con2_Sajerwala_Khaja.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(262, 26, 27, 'Tumi Dekha Dao Na Amare', 'Tumi Dekha Dao Na Amare', '', 'Tumi Dekha Dao Na Amare by Kari Barek Boideshe', 'Kari Barek Boideshe', '6', 'Audio', 20, '', '', '', 'prv1_Khaja-Baba_130x907.jpg', 'prv2_Khaja-Baba_150x1507.jpg', 'dtl1_Khaja-Baba_300x1707.jpg', 'dtl2_Khaja-Baba_240x3207.jpg', 'con1_Tumi_Dekha_Dao_Na_Amare_Prev.mp3', 'con2_Tumi_Dekha_Dao_Na_Amare.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(263, 11, 37, 'Beyar Dhum Ajj', 'Beyar Dhum Ajj', '', 'Beyar Dhum Ajj by Sujon Reza & Reba', 'Sujon Reza & Reba', '8', 'Audio', 20, '', '', '', 'prv1_K.jpg', 'prv2_K.jpg', 'dtl1_K.jpg', 'dtl2_K.jpg', 'con1_Beyar_Dhum_Ajj_Prev.mp3', 'con2_Beyar_Dhum_Ajj.mp3', NULL, NULL, '2016-05-09', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(264, 11, 37, 'Sona bondu tui', 'Sona bondu tui', '', 'Sona bondu tui by Andro kishor', 'Andro kishor', '6', 'Audio', 20, '', '', '', 'prv1_Dhakar_King_130x907.jpg', 'prv2_Dhakar_King_150x1507.jpg', 'dtl1_Dhakar_King_300x1707.jpg', 'dtl2_Dhakar_King_240x3207.jpg', 'con1_Shona_bondu_tui_prev.mp3', 'con2_Sona_bondu_tui.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(265, 11, 37, 'Bidai Dena Nani Goo', 'Bidai Dena Nani Goo', '', 'Bidai Dena Nani Goo by Juma Khandakar', 'Juma Khandakar', '8', 'Audio', 20, '', '', '', 'prv1_K1.jpg', 'prv2_K1.jpg', 'dtl1_K1.jpg', 'dtl2_K1.jpg', 'con1_Bidai_Dena_Nani_Goo_Prev.mp3', 'con2_Bidai_Dena_Nani_Goo.mp3', NULL, NULL, '2016-05-09', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(266, 11, 37, 'Ami akash suyaci', 'Ami akash suyaci', '', 'Ami akash suyaci by S.I. Tutul', 'S.I. Tutul', '6', 'Audio', 20, '', '', '', 'prv1_Dhakar_King_130x908.jpg', 'prv2_Dhakar_King_150x1508.jpg', 'dtl1_Dhakar_King_300x1708.jpg', 'dtl2_Dhakar_King_240x3208.jpg', 'con1_Ami_akhas_suysi_prev.mp3', 'con2_Ami_akash_suyaci.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(267, 11, 37, 'Dada tor Hat Doriya', 'Dada tor Hat Doriya', '', 'Dada tor Hat Doriya by Polash & Nafis', 'Polash & Nafis', '8', 'Audio', 20, '', '', '', 'prv1_K2.jpg', 'prv2_K2.jpg', 'dtl1_K2.jpg', 'dtl2_K2.jpg', 'con1_Dada_tor_Hat_Doriya_Prev.mp3', 'con2_Dada_tor_Hat_Doriya.mp3', NULL, NULL, '2016-05-09', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(268, 11, 37, 'Ami pram er', 'Ami pram er', '', 'Ami pram er by Mousumi & skil khan', 'Mousumi & skil khan', '6', 'Audio', 20, '', '', '', 'prv1_Dhakar_King_130x909.jpg', 'prv2_Dhakar_King_150x1509.jpg', 'dtl1_Dhakar_King_300x1709.jpg', 'dtl2_Dhakar_King_240x3209.jpg', 'con1_Ami_pram_er_prev.mp3', 'con2_Ami_pram_er.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(269, 11, 37, 'Ato valo vesho na', 'Ato valo vesho na', '', 'Ato valo vesho na by konok chapa', 'konok chapa', '6', 'Audio', 20, '', '', '', 'prv1_Dhakar_King_130x9010.jpg', 'prv2_Dhakar_King_150x15010.jpg', 'dtl1_Dhakar_King_300x17010.jpg', 'dtl2_Dhakar_King_240x32010.jpg', 'con1_Ato_valobasho_na_prev.mp3', 'con2_Ato_valo_vesho_na.mp3', NULL, NULL, '2016-05-09', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(270, 11, 37, 'Hater Badhon Beter Bari', 'Hater Badhon Beter Bari', '', 'Hater Badhon Beter Bari by Juma Khandakar', 'Juma Khandakar', '8', 'Audio', 20, '', '', '', 'prv1_K3.jpg', 'prv2_K3.jpg', 'dtl1_K3.jpg', 'dtl2_K3.jpg', 'con1_Hater_Badhon_Beter_Bari_Prev.mp3', 'con2_Hater_Badhon_Beter_Bari.mp3', NULL, NULL, '2016-05-09', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(271, 11, 37, 'Buke boro jala', 'Buke boro jala', '', 'Buke boro jala by Shakib khan & Shahana', 'Shakib khan & Shahana', '6', 'Audio', 20, '', '', '', 'prv1_Dhakar_King_130x9011.jpg', 'prv2_Dhakar_King_150x15011.jpg', 'dtl1_Dhakar_King_300x17011.jpg', 'dtl2_Dhakar_King_240x32011.jpg', 'con1_Buke_boro_jala_prev.mp3', 'con2_Buke_boro_jala1.mp3', NULL, NULL, '2016-05-09', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(272, 11, 37, 'khairun Loo', 'khairun Loo', '', 'khairun Loo by Momotaj & Polash', 'Momotaj & Polash', '8', 'Audio', 20, '', '', '', 'prv1_K4.jpg', 'prv2_K4.jpg', 'dtl1_K4.jpg', 'dtl2_K4.jpg', 'con1_khairun_Loo_Prev.mp3', 'con2_khairun Loo.mp3', NULL, NULL, '2016-05-09', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(273, 11, 37, 'Marben Na', 'Marben Na', '', 'Marben Na by Andru Kishore & Sabina', 'Andru Kishore & Sabina', '8', 'Audio', 20, '', '', '', 'prv1_K5.jpg', 'prv2_K5.jpg', 'dtl1_K5.jpg', 'dtl2_K5.jpg', 'con1_Marben_Na_Prev.mp3', 'con2_Marben_Na.mp3', NULL, NULL, '2016-05-09', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(274, 11, 37, 'Mathar Kasho Deya Bondhu', 'Mathar Kasho Deya Bondhu', '', 'Mathar Kasho Deya Bondhu by Polash & Jhuma', 'Polash & Jhuma', '8', 'Audio', 20, '', '', '', 'prv1_K6.jpg', 'prv2_K6.jpg', 'dtl1_K6.jpg', 'dtl2_K6.jpg', 'con1_Mathar_Kesh_Deya_Prev.mp3', 'con2_Mathar_Kasho_Deya_Bondhu.mp3', NULL, NULL, '2016-05-10', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(275, 11, 37, 'Moner Manus Pailam Ree', 'Moner Manus Pailam Ree', '', 'Moner Manus Pailam Ree by Andru Kishore & Samina', 'Andru Kishore & Samina', '8', 'Audio', 20, '', '', '', 'prv1_K7.jpg', 'prv2_K7.jpg', 'dtl1_K7.jpg', 'dtl2_K7.jpg', 'con1_Moner_Manus_Pailam_Ree_Prev.mp3', 'con2_Moner_Manus_Pailam_Re.mp3', NULL, NULL, '2016-05-10', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(276, 11, 37, 'Paya Doira Koi', 'Paya Doira Koi', '', 'Paya Doira Koi by Juma Khandakar', 'Juma Khandakar', '8', 'Audio', 20, '', '', '', 'prv1_K8.jpg', 'prv2_K8.jpg', 'dtl1_K8.jpg', 'dtl2_K8.jpg', 'con1_Paya_Doira_Koi_Prev.mp3', 'con2_Paya_Doira_Koi.mp3', NULL, NULL, '2016-05-10', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(277, 11, 37, 'Ali Ali Maula Ali', 'Ali Ali Maula Ali', '', 'Ali Ali Maula Ali by D. Md. Samir Kawual', 'D. Md. Samir Kawual', '2', 'Audio', 20, '', '', '', 'prv1_Guerrilla_130x90.jpg', 'prv2_Guerrilla_150x150.jpg', 'dtl1_Guerrilla_300x170.jpg', 'dtl2_Guerrilla_240x320.jpg', 'con1_Ali_Ali_Maula_Ali_Prev.mp3', 'con2_Ali_Ali_Maula_Ali.mp3', NULL, NULL, '2016-05-10', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(278, 11, 37, 'Ami Manuser Vai', 'Ami Manuser Vai', '', 'Ami Manuser Vai by Nilu Billha, Shemul Yuosuf, Shaid Hossen Tipu, Chandan Chowduri, Shawon Mhamud', 'Nilu, Shemul, Tipu, Chandan, Shawon', '2', 'Audio', 20, '', '', '', 'prv1_Guerrilla_130x901.jpg', 'prv2_Guerrilla_150x1501.jpg', 'dtl1_Guerrilla_300x1701.jpg', 'dtl2_Guerrilla_240x3201.jpg', 'con1_Ami_Manuser_Vai_Prev.mp3', 'con2_Ami_Manuser_Vai.mp3', NULL, NULL, '2016-05-10', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(279, 11, 37, 'Bolo Bir Bolo Unnoto Momo Shir', 'Bolo Bir Bolo Unnoto Momo Shir', '', 'Bolo Bir Bolo Unnoto Momo Shir by Chandan Chowdhri', 'Chandan Chowdhri', '2', 'Audio', 20, '', '', '', 'prv1_Guerrilla_130x902.jpg', 'prv2_Guerrilla_150x1502.jpg', 'dtl1_Guerrilla_300x1702.jpg', 'dtl2_Guerrilla_240x3202.jpg', 'con1_Bolo_Bir_Bolo_Unnoto_Momo_Shir_Prev.mp3', 'con2_Bolo_Bir_Bolo_Unnoto_Momo_Shir.mp3', NULL, NULL, '2016-05-10', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(280, 11, 37, 'Joy Sotterao Joy', 'Joy Sotterao Joy', '', 'Joy Sotterao Joy by Onindita Bristy', 'Onindita Bristy', '2', 'Audio', 20, '', '', '', 'prv1_Guerrilla_130x903.jpg', 'prv2_Guerrilla_150x1503.jpg', 'dtl1_Guerrilla_300x1703.jpg', 'dtl2_Guerrilla_240x3203.jpg', 'con1_Joy_Sotterao_Joy_Prev.mp3', 'con2_Joy_Sotterao_Joy.mp3', NULL, NULL, '2016-05-10', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(281, 11, 37, 'Joy Sotterao Joy_2', 'Joy Sotterao Joy_2', '', 'Joy Sotterao Joy_2 by Onindita Bristy, Shaon Mhamud, Shemul Yousuf', 'Onindita Bristy, Shaon Mhamud, Shemul Yousuf', '2', 'Audio', 20, '', '', '', 'prv1_Guerrilla_130x904.jpg', 'prv2_Guerrilla_150x1504.jpg', 'dtl1_Guerrilla_300x1704.jpg', 'dtl2_Guerrilla_240x3204.jpg', 'con1_Joy_Sotterao_Joy-2_Prev.mp3', 'con2_Joy_Sotterao_Joy_2.mp3', NULL, NULL, '2016-05-10', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(282, 11, 37, 'Neroso Dogdho Somoy', 'Neroso Dogdho Somoy', '', 'Neroso Dogdho Somoy by Shemul Yousuf', 'Shemul Yousuf', '2', 'Audio', 20, '', '', '', 'prv1_Guerrilla_130x905.jpg', 'prv2_Guerrilla_150x1505.jpg', 'dtl1_Guerrilla_300x1705.jpg', 'dtl2_Guerrilla_240x3205.jpg', 'con1_Neroso_Dogdho_Somoy_Prev.mp3', 'con2_Neroso_Dogdho_Somoy.mp3', NULL, NULL, '2016-05-10', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(283, 11, 37, 'Tepantorer Mathe', 'Tepantorer Mathe', '', 'Tepantorer Mathe by Shemul Yousuf', 'Shemul Yousuf', '2', 'Audio', 20, '', '', '', 'prv1_Guerrilla_130x906.jpg', 'prv2_Guerrilla_150x1506.jpg', 'dtl1_Guerrilla_300x1706.jpg', 'dtl2_Guerrilla_240x3206.jpg', 'con1_Tepantorer_Mathe_Prev.mp3', 'con2_Tepantorer_Mathe.mp3', NULL, NULL, '2016-05-10', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(284, 11, 37, 'Ak Holo Shopno', 'Ak Holo Shopno', '', 'Ak Holo Shopno by Andru Kishore & Kanak Chapa', 'Andru Kishore & Kanak Chapa', '6', 'Audio', 20, '', '', '', 'prv1_Sultan_130x90.jpg', 'prv2_Sultan_150x150.jpg', 'dtl1_Sultan_300x170.jpg', 'dtl2_Sultan_240x320.jpg', 'con1_Ak_Holo_Shopno_Prev.mp3', 'con2_Ak_Holo_Shopno.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(285, 11, 37, 'Ak Suije Batte Jole', 'Ak Suije Batte Jole', '', 'Ak Suije Batte Jole by Andru Kishore', 'Andru Kishore', '2', 'Audio', 20, '', '', '', 'prv1_Sultan_130x901.jpg', 'prv2_Sultan_150x1501.jpg', 'dtl1_Sultan_300x1701.jpg', 'dtl2_Sultan_240x3201.jpg', 'con1_Ak_Suije_Batte_Jole_Prev.mp3', 'con2_Ak_Suije_Batte_Jole.mp3', NULL, NULL, '2016-05-10', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(286, 11, 37, 'Duneyate Apon Bolte', 'Duneyate Apon Bolte', '', 'Duneyate Apon Bolte by Monir Khan & Samina Chowdhury', 'Monir Khan & Samina Chowdhury', '6', 'Audio', 20, '', '', '', 'prv1_Sultan_130x902.jpg', 'prv2_Sultan_150x1502.jpg', 'dtl1_Sultan_300x1702.jpg', 'dtl2_Sultan_240x3202.jpg', 'con1_Duneyate_Apon_Bolte_Prev.mp3', 'con2_Duneyate_Apon_Bolte.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(287, 11, 37, 'Happy Valentine\'s Day', 'Happy Valentine\'s Day', '', 'Happy Valentine\'s Day by Baby Najnin & Polash', 'Baby Najnin & Polash', '6', 'Audio', 20, '', '', '', 'prv1_Sultan_130x903.jpg', 'prv2_Sultan_150x1503.jpg', 'dtl1_Sultan_300x1703.jpg', 'dtl2_Sultan_240x3203.jpg', 'con1_Happy_Valentines_Day_Prev.mp3', 'con2_Happy_Valentines_Day.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(288, 11, 37, 'Jormele Morite Hoy', 'Jormele Morite Hoy', '', 'Jormele Morite Hoy by Kazi Maruf', 'Kazi Maruf', '6', 'Audio', 20, '', '', '', 'prv1_Sultan_130x904.jpg', 'prv2_Sultan_150x1504.jpg', 'dtl1_Sultan_300x1704.jpg', 'dtl2_Sultan_240x3204.jpg', 'con1_Jormele_Morite_Hoy_Prev.mp3', 'con2_Jormele_Morite_Hoy.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(289, 11, 37, 'Ke Deya Ke Korila', 'Ke Deya Ke Korila', '', 'Ke Deya Ke Korila by Andru Kishore & Sabina', 'Andru Kishore & Sabina', '6', 'Audio', 20, '', '', '', 'prv1_Sultan_130x905.jpg', 'prv2_Sultan_150x1505.jpg', 'dtl1_Sultan_300x1705.jpg', 'dtl2_Sultan_240x3205.jpg', 'con1_Ke_Deya_Ke_Korila_Prev.mp3', 'con2_Ke_Deya_Ke_Korila.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(290, 11, 37, 'My Name Is Sultan', 'My Name Is Sultan', '', 'My Name Is Sultan by S.I. Tutul', 'S.I. Tutul', '6', 'Audio', 20, '', '', '', 'prv1_Sultan_130x906.jpg', 'prv2_Sultan_150x1506.jpg', 'dtl1_Sultan_300x1706.jpg', 'dtl2_Sultan_240x3206.jpg', 'con1_My_Name_Is_Sultan_Prev.mp3', 'con2_My_Name_Is_Sultan.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(291, 11, 37, 'Ogo Ruposhe Sundore', 'Ogo Ruposhe Sundore', '', 'Ogo Ruposhe Sundore by S.I. Tutul', 'S.I. Tutul', '6', 'Audio', 20, '', '', '', 'prv1_Sultan_130x907.jpg', 'prv2_Sultan_150x1507.jpg', 'dtl1_Sultan_300x1707.jpg', 'dtl2_Sultan_240x3207.jpg', 'con1_Ogo_Ruposhe_Sundore_Prev.mp3', 'con2_Ogo_Ruposhe_Sundore.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(292, 11, 37, 'Sobkesuri e Suru Aca', 'Sobkesuri e Suru Aca', '', 'Sobkesuri e Suru Aca by Monir Khan & Kanak Chapa', 'Monir Khan & Kanak Chapa', '6', 'Audio', 20, '', '', '', 'prv1_Sultan_130x908.jpg', 'prv2_Sultan_150x1508.jpg', 'dtl1_Sultan_300x1708.jpg', 'dtl2_Sultan_240x3208.jpg', 'con1_Sobkesuri_e_Suru_Aca_Prev.mp3', 'con2_Sobkesuri_e_Suru_Aca.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(293, 17, 18, 'A chokhe R Kesui', 'A chokhe R Kesui', '', 'A chokhe R Kesui by Moon', 'Moon', '6', 'Audio', 20, '', '', '', 'prv1_Pagri_130x90.jpg', 'prv2_Pagri_150x150.jpg', 'dtl1_Pagri_300x170.jpg', 'dtl2_Pagri_240x320.jpg', 'con1_A_chokhe_R_Kesui_Prev.mp3', 'con2_A_chokhe_R_Kesui.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(294, 17, 18, 'Akhon R Angul Katia', 'Akhon R Angul Katia', '', 'Akhon R Angul Katia by Moon', 'Moon', '6', 'Audio', 20, '', '', '', 'prv1_Pagri_130x901.jpg', 'prv2_Pagri_150x1501.jpg', 'dtl1_Pagri_300x1701.jpg', 'dtl2_Pagri_240x3201.jpg', 'con1_Akhon_R_Angul_Katia_Prev.mp3', 'con2_Akhon_R_Angul_Katia.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(295, 17, 18, 'Ami Je Onona', 'Ami Je Onona', '', 'Ami Je Onona by Moon', 'Moon', '6', 'Audio', 20, '', '', '', 'prv1_Pagri_130x902.jpg', 'prv2_Pagri_150x1502.jpg', 'dtl1_Pagri_300x1702.jpg', 'dtl2_Pagri_240x3202.jpg', 'con1_Ami_Je_Onona_Prev_Prev.mp3', 'con2_Ami_Je_Onona.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(296, 17, 18, 'Bristy Pore Rum Jum', 'Bristy Pore Rum Jum', '', 'Bristy Pore Rum Jum by Moon', 'Moon', '6', 'Audio', 20, '', '', '', 'prv1_Pagri_130x903.jpg', 'prv2_Pagri_150x1503.jpg', 'dtl1_Pagri_300x1703.jpg', 'dtl2_Pagri_240x3203.jpg', 'con1_Bristy_Pore_Rum_Jum_Prev.mp3', 'con2_Bristy_Pore_Rum_Jum.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(297, 17, 18, 'Din Kate Na Rat Kate Na', 'Din Kate Na Rat Kate Na', '', 'Din Kate Na Rat Kate Na by Moon', 'Moon', '6', 'Audio', 20, '', '', '', 'prv1_Pagri_130x904.jpg', 'prv2_Pagri_150x1504.jpg', 'dtl1_Pagri_300x1704.jpg', 'dtl2_Pagri_240x3204.jpg', 'con1_Din_Kate_Na_Rat_Kate_Na_Prev.mp3', 'con2_Din_Kate_Na_Rat_Kate_Na.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(298, 17, 18, 'Maula  Tomer Doyer', 'Maula  Tomer Doyer', '', 'Maula  Tomer Doyer by Moon', 'Moon', '6', 'Audio', 20, '', '', '', 'prv1_Pagri_130x905.jpg', 'prv2_Pagri_150x1505.jpg', 'dtl1_Pagri_300x1705.jpg', 'dtl2_Pagri_240x3205.jpg', 'con1_Maula_Tomer_Doyer_Prev.mp3', 'con2_Maula_Tomer_Doyer.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(299, 17, 18, 'Pore Bole kotojone', 'Pore Bole kotojone', '', 'Pore Bole kotojone by Moon', 'Moon', '6', 'Audio', 20, '', '', '', 'prv1_Pagri_130x906.jpg', 'prv2_Pagri_150x1506.jpg', 'dtl1_Pagri_300x1706.jpg', 'dtl2_Pagri_240x3206.jpg', 'con1_Pore_Bole_kotojone_prev.mp3', 'con2_Pore_Bole_kotojone.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(300, 17, 18, 'Sojone Amy Sajia', 'Sojone Amy Sajia', '', 'Sojone Amy Sajia by Moon', 'Moon', '6', 'Audio', 20, '', '', '', 'prv1_Pagri_130x907.jpg', 'prv2_Pagri_150x1507.jpg', 'dtl1_Pagri_300x1707.jpg', 'dtl2_Pagri_240x3207.jpg', 'con1_Sojone_Amy_Sajia_Prev.mp3', 'con2_Sojone_Amy_Sajia.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(301, 17, 18, 'Ure Jabe Ural Pakhe', 'Ure Jabe Ural Pakhe', '', 'Ure Jabe Ural Pakhe by Moon', 'Moon', '6', 'Audio', 20, '', '', '', 'prv1_Pagri_130x908.jpg', 'prv2_Pagri_150x1508.jpg', 'dtl1_Pagri_300x1708.jpg', 'dtl2_Pagri_240x3208.jpg', 'con1_Ure_Jabe_Ural_Pakhe.mp3', 'con2_Ure_Jabe_Ural_Pakhe.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(302, 17, 18, 'Vindeshe', 'Vindeshe', '', 'Vindeshe by Moon', 'Moon', '6', 'Audio', 20, '', '', '', 'prv1_Pagri_130x909.jpg', 'prv2_Pagri_150x1509.jpg', 'dtl1_Pagri_300x1709.jpg', 'dtl2_Pagri_240x3209.jpg', 'con1_Vindeshe_Prev.mp3', 'con2_Vindeshe.mp3', NULL, NULL, '2016-05-10', NULL, '2018-02-28', 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(303, 11, 37, 'Aseshe Tomer Gore', 'Aseshe Tomer Gore', '', 'Aseshe Tomer Gore by Monir Khan', 'Monir Khan', '8', 'Audio', 20, '', '', '', 'prv1_TJMP_130x90.jpg', 'prv2_TJMP_150x150.jpg', 'dtl1_TJMP_300x170.jpg', 'dtl2_TJMP_240x320.jpg', 'con1_Aseshe_Tomer_Gore_Prev.mp3', 'con2_Aseshe_Tomer_Gore.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(304, 11, 37, 'Chupi Chupi Bole Mone', 'Chupi Chupi Bole Mone', '', 'Chupi Chupi Bole Mone by Asif & Baby Najnin', 'Asif & Baby Najnin', '8', 'Audio', 20, '', '', '', 'prv1_TJMP_130x901.jpg', 'prv2_TJMP_150x1501.jpg', 'dtl1_TJMP_300x1701.jpg', 'dtl2_TJMP_240x3201.jpg', 'con1_Chupi_Chupi_Bole_Mone_Prev.mp3', 'con2_Chupi_Chupi_Bole_Mone.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(305, 11, 37, 'Dui Noyoner Noyon', 'Dui Noyoner Noyon', '', 'Dui Noyoner Noyon by Andru Kishore & Kanak Chapa', 'Andru Kishore & Kanak Chapa', '8', 'Audio', 20, '', '', '', 'prv1_TJMP_130x902.jpg', 'prv2_TJMP_150x1502.jpg', 'dtl1_TJMP_300x1702.jpg', 'dtl2_TJMP_240x3202.jpg', 'con1_Dui_Noyoner_Noyon_Prev.mp3', 'con2_Dui_Noyoner_Noyon.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(306, 11, 37, 'Dui Noyoner Noyon_2', 'Dui Noyoner Noyon_2', '', 'Dui Noyoner Noyon_2 by Andru Kishore & Kanak Chapa', 'Andru Kishore & Kanak Chapa', '8', 'Audio', 20, '', '', '', 'prv1_TJMP_130x903.jpg', 'prv2_TJMP_150x1503.jpg', 'dtl1_TJMP_300x1703.jpg', 'dtl2_TJMP_240x3203.jpg', 'con1_Dui_Noyoner_Noyon-2_Prev.mp3', 'con2_Dui_Noyoner_Noyon_2.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(307, 11, 37, 'Eso Aaso Tumi', 'Eso Aaso Tumi', '', 'Eso Aaso Tumi by Andru Kishore Shakila', 'Andru Kishore Shakila', '8', 'Audio', 20, '', '', '', 'prv1_TJMP_130x904.jpg', 'prv2_TJMP_150x1504.jpg', 'dtl1_TJMP_300x1704.jpg', 'dtl2_TJMP_240x3204.jpg', 'con1_Eso_Aaso_Tumi_Prev.mp3', 'con2_Eso_Aaso_Tumi.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(308, 11, 37, 'Full Pant Khuilla Half Pant Porse', 'Full Pant Khuilla Half Pant Porse', '', 'Full Pant Khuilla Half Pant Porse by Shakib Khan & Shabnur', 'Shakib Khan & Shabnur', '8', 'Audio', 20, '', '', '', 'prv1_TJMP_130x905.jpg', 'prv2_TJMP_150x1505.jpg', 'dtl1_TJMP_300x1705.jpg', 'dtl2_TJMP_240x3205.jpg', 'con1_Fulpan_Khulla_Half_Pant_Porse_Prev.mp3', 'con2_Full_Pant_Khuilla_Half_Pant_Porse.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(309, 11, 37, 'Kano Aga Hay Hay', 'Kano Aga Hay Hay', '', 'Kano Aga Hay Hay by Sabina Yeasmin', 'Sabina Yeasmin', '8', 'Audio', 20, '', '', '', 'prv1_TJMP_130x906.jpg', 'prv2_TJMP_150x1506.jpg', 'dtl1_TJMP_300x1706.jpg', 'dtl2_TJMP_240x3206.jpg', 'con1_Kano_Aage_Hay_Hay-Prev.mp3', 'con2_Kano_Aga_Hay_Hay.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(310, 11, 37, 'Mayabe aaj Soboi', 'Mayabe aaj Soboi', '', 'Mayabe aaj Soboi by Onima De Kosta', 'Onima De Kosta', '8', 'Audio', 20, '', '', '', 'prv1_TJMP_130x907.jpg', 'prv2_TJMP_150x1507.jpg', 'dtl1_TJMP_300x1707.jpg', 'dtl2_TJMP_240x3207.jpg', 'con1_Mayabe_aaj_Soboi_Prev.mp3', 'con2_Mayabe_aaj_Soboi.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(311, 11, 37, 'Surjer Kase Preo Din', 'Surjer Kase Preo Din', '', 'Surjer Kase Preo Din by Andru Kishore & Kanak Chapa', 'Andru Kishore & Kanak Chapa', '8', 'Audio', 20, '', '', '', 'prv1_TJMP_130x908.jpg', 'prv2_TJMP_150x1508.jpg', 'dtl1_TJMP_300x1708.jpg', 'dtl2_TJMP_240x3208.jpg', 'con1_Surjer_Kase_Preo_Din_Prev.mp3', 'con2_Surjer_Kase_Preo_Din.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(312, 11, 37, 'Akti ridoy', 'Akti ridoy', '', 'Akti ridoy by Shakib Khan &Opu Bisshas', 'Shakib Khan &Opu Bisshas', '8', 'Audio', 20, '', '', '', 'prv1_130x9040.jpg', 'prv2_150x15040.jpg', 'dtl1_300x17040.jpg', 'dtl2_240x32040.jpg', 'con1_Akti_ridoy_prev.mp3', 'con2_Akti_ridoy.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(313, 11, 37, 'Baje som soma', 'Baje som soma', '', 'Baje som soma by Shakib khan & Purnima', 'Shakib khan & Purnima', '8', 'Audio', 20, '', '', '', 'prv1_130x9041.jpg', 'prv2_150x15041.jpg', 'dtl1_300x17041.jpg', 'dtl2_240x32041.jpg', 'con1_Baje_som_soma_prev.mp3', 'con2_Baje_som_soma.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(314, 11, 37, 'Dui noyoner noyon', 'Dui noyoner noyon', '', 'Dui noyoner noyon by Shakib Khan & Opu Bisshas', 'Shakib Khan &Opu Bisshas', '8', 'Audio', 20, '', '', '', 'prv1_130x9042.jpg', 'prv2_150x15042.jpg', 'dtl1_300x17042.jpg', 'dtl2_240x32042.jpg', 'con1_Dui_noyoner_noyon_prev.mp3', 'con2_Dui_noyoner_noyon.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(315, 11, 37, 'Keno age hai', 'Keno age hai', '', 'Keno age hai & Shakib Khan &Opu Bisshas', 'Shakib Khan &Opu Bisshas', '8', 'Audio', 20, '', '', '', 'prv1_130x9043.jpg', 'prv2_150x15043.jpg', 'dtl1_300x17043.jpg', 'dtl2_240x32043.jpg', 'con1_Keno_age_hai_prev.mp3', 'con2_Keno_age_hai.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(316, 11, 37, 'Manush ase manush', 'Manush ase manush', '', 'Manush ase manush by Purnima', 'Purnima', '8', 'Audio', 20, '', '', '', 'prv1_130x9044.jpg', 'prv2_150x15044.jpg', 'dtl1_300x17044.jpg', 'dtl2_240x32044.jpg', 'con1_Manush_ase_manush_prev.mp3', 'con2_Manush_ase_manush.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(317, 11, 37, 'O amer roshia', 'O amer roshia', '', 'O amer roshia by Amin Khan & Shabnur', 'Amin Khan & Shabnur', '8', 'Audio', 20, '', '', '', 'prv1_130x9045.jpg', 'prv2_150x15045.jpg', 'dtl1_300x17045.jpg', 'dtl2_240x32045.jpg', 'con1_O_amer_roshia_prev1.mp3', 'con2_O_amer_roshia.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(318, 11, 37, 'shisti kortar upore', 'shisti kortar upore', '', 'shisti kortar upore by Riaz & Purnima', 'Riaz & Purnima', '8', 'Audio', 20, '', '', '', 'prv1_130x9046.jpg', 'prv2_150x15046.jpg', 'dtl1_300x17046.jpg', 'dtl2_240x32046.jpg', 'con1_shisti_kortar_upore_prev.mp3', 'con2_shisti_kortar_upore.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(319, 11, 37, 'shurjer kase prio', 'shurjer kase prio', '', 'shurjer kase prio by Shakib Khan & Opu Bisshas', 'Shakib Khan & Opu Bisshas', '8', 'Audio', 20, '', '', '', 'prv1_130x9047.jpg', 'prv2_150x15047.jpg', 'dtl1_300x17047.jpg', 'dtl2_240x32047.jpg', 'con1_shurjer_kase_prio_prev.mp3', 'con2_shurjer_kase_prio.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(320, 11, 37, 'Tomar oi mukher', 'Tomar oi mukher', '', 'Tomar oi mukher by Shakib Khan & Shabnur', 'Shakib Khan & Shabnur', '8', 'Audio', 20, '', '', '', 'prv1_130x9048.jpg', 'prv2_150x15048.jpg', 'dtl1_300x17048.jpg', 'dtl2_240x32048.jpg', 'con1_Tomar_oi_mukher_prev.mp3', 'con2_Tomar_oi_mukher.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(321, 11, 37, 'Tumi valobasho', 'Tumi valobasho', '', 'Tumi valobasho by Shakib Khan &Opu Bisshas', 'Shakib Khan &Opu Bisshas', '8', 'Audio', 20, '', '', '', 'prv1_130x9049.jpg', 'prv2_150x15049.jpg', 'dtl1_300x17049.jpg', 'dtl2_240x32049.jpg', 'con1_Tumi_valobasho_prev.mp3', 'con2_Tumi_valobasho.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(322, 11, 37, 'Akti jibon er', 'Akti jibon er', '', 'Akti jibon er by Shakib Khan &Opu Bisshas', 'Shakib Khan &Opu Bisshas', '8', 'Audio', 20, '', '', '', 'prv1_Romantic_Hits_130x90.jpg', 'prv2_Romantic_Hits_150x150.jpg', 'dtl1_Romantic_Hits_300x170.jpg', 'dtl2_Romantic_Hits_240x320.jpg', 'con1_Akti_jonom_noy_prev.mp3', 'con2_Akti_jibon_er.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(323, 11, 37, 'Akti ridoy ak', 'Akti ridoy ak', '', 'Akti ridoy ak by Shakib Khan & Opu Bisshas', 'Shakib Khan & Opu Bisshas', '8', 'Audio', 20, '', '', '', 'prv1_Romantic_Hits_130x901.jpg', 'prv2_Romantic_Hits_150x1501.jpg', 'dtl1_Romantic_Hits_300x1701.jpg', 'dtl2_Romantic_Hits_240x3201.jpg', 'con1_Akti_ridoy_ak_prev2.mp3', 'con2_Akti_ridoy_ak2.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(324, 11, 37, 'Bukero bedon', 'Bukero bedon', '', 'Bukero bedon by Amin Khan', 'Amin Khan', '8', 'Audio', 20, '', '', '', 'prv1_Romantic_Hits_130x902.jpg', 'prv2_Romantic_Hits_150x1502.jpg', 'dtl1_Romantic_Hits_300x1702.jpg', 'dtl2_Romantic_Hits_240x3202.jpg', 'con1_Bukero_bedon_prev.mp3', 'con2_Bukero_bedon.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(325, 11, 37, 'Diboshe tomake chai', 'Diboshe tomake chai', '', 'Diboshe tomake chai by Shakib Khan & Shabnur', 'Shakib Khan & Shabnur', '8', 'Audio', 20, '', '', '', 'prv1_Romantic_Hits_130x903.jpg', 'prv2_Romantic_Hits_150x1503.jpg', 'dtl1_Romantic_Hits_300x1703.jpg', 'dtl2_Romantic_Hits_240x3203.jpg', 'con1_Diboshe_tomake_chai_prev.mp3', 'con2_Diboshe_tomake_chai.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(326, 11, 37, 'Hou jodi nil akash', 'Hou jodi nil akash', '', 'Hou jodi nil akash by S.I. Tutul', 'S.I. Tutul', '8', 'Audio', 20, '', '', '', 'prv1_Romantic_Hits_130x904.jpg', 'prv2_Romantic_Hits_150x1504.jpg', 'dtl1_Romantic_Hits_300x1704.jpg', 'dtl2_Romantic_Hits_240x3204.jpg', 'con1_Hou_jodi_nil_prev.mp3', 'con2_Hou_jodi_nil_akash.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(327, 11, 37, 'Nupur poria dilam', 'Nupur poria dilam', '', 'Nupur poria dilam by Shakib Khan & Shabnur', 'Shakib Khan & Shabnur', '8', 'Audio', 20, '', '', '', 'prv1_Romantic_Hits_130x905.jpg', 'prv2_Romantic_Hits_150x1505.jpg', 'dtl1_Romantic_Hits_300x1705.jpg', 'dtl2_Romantic_Hits_240x3205.jpg', 'con1_Nupur_poria_prev.mp3', 'con2_Nupur_poria_dilam1.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(328, 11, 37, 'Pram a porese ', 'Pram a porese ', '', 'Pram a porese  by Srabanti', 'Srabanti', '8', 'Audio', 20, '', '', '', 'prv1_Romantic_Hits_130x906.jpg', 'prv2_Romantic_Hits_150x1506.jpg', 'dtl1_Romantic_Hits_300x1706.jpg', 'dtl2_Romantic_Hits_240x3206.jpg', 'con1_Pram_a_porese_mon_prev.mp3', 'con2_Pram_a_porese_.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(329, 11, 37, 'Shat ronga pram', 'Shat ronga pram', '', 'Shat ronga pram by Andru Kishore & BBaby Najnin', 'Andru Kishore & BBaby Najnin', '8', 'Audio', 20, '', '', '', 'prv1_Romantic_Hits_130x907.jpg', 'prv2_Romantic_Hits_150x1507.jpg', 'dtl1_Romantic_Hits_300x1707.jpg', 'dtl2_Romantic_Hits_240x3207.jpg', 'con1_Shat_ronga_akta_prev.mp3', 'con2_Shat_ronga_pram.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(330, 11, 37, 'Tomake vulite gia', 'Tomake vulite gia', '', 'Tomake vulite gia by Riaz & Popi', 'Riaz & Popi', '8', 'Audio', 20, '', '', '', 'prv1_Romantic_Hits_130x908.jpg', 'prv2_Romantic_Hits_150x1508.jpg', 'dtl1_Romantic_Hits_300x1708.jpg', 'dtl2_Romantic_Hits_240x3208.jpg', 'con1_Tomake_vulite_gia_prev.mp3', 'con2_Tomake_vulite_gia.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(331, 11, 37, 'Tomer oi mukher hashi', 'Tomer oi mukher hashi', '', 'Tomer oi mukher hashi by Shakib Khan & Shabnur', 'Shakib Khan & Shabnur', '8', 'Audio', 20, '', '', '', 'prv1_Romantic_Hits_130x909.jpg', 'prv2_Romantic_Hits_150x1509.jpg', 'dtl1_Romantic_Hits_300x1709.jpg', 'dtl2_Romantic_Hits_240x3209.jpg', 'con1_Tomar_oi_mukher_prev1.mp3', 'con2_Tomer_oi_mukher_hashi.mp3', NULL, NULL, '2016-05-12', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(332, 39, 40, 'Ramadan_Wallpaper_01', 'Ramadan Wallpaper', '', 'Ramadan Wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_R_Wall_01_130x90.jpg', 'prv2_R_Wall_01_150x150.jpg', 'dtl1_R_Wall_01_300x170.jpg', 'dtl2_R_Wall_01_240x320.jpg', 'con1_R_Wall_01_720x1280.jpg', 'con2_R_Wall_01_480x800.jpg', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(333, 39, 40, 'Ramadan_Wallpaper_02', 'Ramadan Wallpaper', '', 'Ramadan Wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_R_Wall_02_130x90.jpg', 'prv2_R_Wall_02_150x150.jpg', 'dtl1_R_Wall_02_300x170.jpg', 'dtl2_R_Wall_02_240x320.jpg', 'con1_R_Wall_02_720x1280.jpg', 'con2_R_Wall_02_480x800.jpg', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(334, 39, 40, 'Ramadan_Wallpaper_03', 'Ramadan Wallpaper', '', 'Ramadan Wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_R_Wall_03_130x90.jpg', 'prv2_R_Wall_03_150x150.jpg', 'dtl1_R_Wall_03_300x170.jpg', 'dtl2_R_Wall_03_240x320.jpg', 'con1_R_Wall_03_720x1280.jpg', 'con2_R_Wall_03_480x800.jpg', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(335, 39, 40, 'Ramadan_Wallpaper_04', 'Ramadan Wallpaper', '', 'Ramadan Wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_R_Wall_04_130x90.jpg', 'prv2_R_Wall_04_150x150.jpg', 'dtl1_R_Wall_04_300x170.jpg', 'dtl2_R_Wall_04_240x320.jpg', 'con1_R_Wall_04_720x1280.jpg', 'con2_R_Wall_04_480x800.jpg', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(336, 39, 40, 'Ramadan_Wallpaper_05', 'Ramadan Wallpaper', '', 'Ramadan Wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_R_Wall_05_130x90.jpg', 'prv2_R_Wall_05_150x150.jpg', 'dtl1_R_Wall_05_300x170.jpg', 'dtl2_R_Wall_05_240x320.jpg', 'con1_R_Wall_05_720x1280.jpg', 'con2_R_Wall_05_480x800.jpg', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(337, 39, 40, 'Ramadan_Wallpaper_06', 'Ramadan Wallpaper', '', 'Ramadan Wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Wal_1_130x90.jpg', 'prv2_Wal_1_150x150.jpg', 'dtl1_Wal_1_300x170.jpg', 'dtl2_Wal_1_240x320.jpg', 'con1_Wal_1_720x1280.jpg', 'con2_Wal_1_480x800.jpg', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(338, 39, 40, 'Ramadan_Wallpaper_07', 'Ramadan Wallpaper', '', 'Ramadan Wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Wal_2_130x90.jpg', 'prv2_Wal_2_150x150.jpg', 'dtl1_Wal_2_300x170.jpg', 'dtl2_Wal_2_240x320.jpg', 'con1_Wal_2_720x1280.jpg', 'con2_Wal_2_480x800.jpg', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(339, 39, 40, 'Ramadan_Wallpaper_08', 'Ramadan Wallpaper', '', 'Ramadan Wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Wal_3_130x90.jpg', 'prv2_Wal_3_150x150.jpg', 'dtl1_Wal_3_300x170.jpg', 'dtl2_Wal_3_240x320.jpg', 'con1_Wal_3_720x1280.jpg', 'con2_Wal_3_480x800.jpg', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(340, 39, 40, 'Ramadan_Wallpaper_09', 'Ramadan Wallpaper', '', 'Ramadan Wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Wal_4_130x90.jpg', 'prv2_Wal_4_150x150.jpg', 'dtl1_Wal_4_300x170.jpg', 'dtl2_Wal_4_240x320.jpg', 'con1_Wal_4_720x1280.jpg', 'con2_Wal_4_480x800.jpg', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(341, 39, 40, 'Ramadan_Wallpaper_10', 'Ramadan Wallpaper', '', 'Ramadan Wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_Wal_5_130x90.jpg', 'prv2_Wal_5_150x150.jpg', 'dtl1_Wal_5_300x170.jpg', 'dtl2_Wal_5_240x320.jpg', 'con1_Wal_5_720x1280.jpg', 'con2_Wal_5_480x800.jpg', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(342, 41, 42, 'Ramadan_Animation_01', 'Ramadan Animation', '', 'Ramadan Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_R_Anim_01_130x90.gif', 'prv2_R_Anim_01_150x150.gif', 'dtl1_R_Anim_01_300x170.gif', 'dtl2_R_Anim_01_240x320.gif', 'con1_R_Anim_01_720x1280.gif', 'con2_R_Anim_01_480x800.gif', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(343, 41, 42, 'Ramadan_Animation_02', 'Ramadan Animation', '', 'Ramadan Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_R_Anim_02_130x90.gif', 'prv2_R_Anim_02_150x150.gif', 'dtl1_R_Anim_02_300x170.gif', 'dtl2_R_Anim_02_240x320.gif', 'con1_R_Anim_02_720x1280.gif', 'con2_R_Anim_02_480x800.gif', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(344, 41, 42, 'Ramadan_Animation_03', 'Ramadan Animation', '', 'Ramadan Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_R_Anim_03_130x90.gif', 'prv2_R_Anim_03_150x150.gif', 'dtl1_R_Anim_03_300x170.gif', 'dtl2_R_Anim_03_240x320.gif', 'con1_R_Anim_03_720x1280.gif', 'con2_R_Anim_03_480x800.gif', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(345, 41, 42, 'Ramadan_Animation_04', 'Ramadan Animation', '', 'Ramadan Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ani_1_130x90.gif', 'prv2_Ani_1_150x150.gif', 'dtl1_Ani_1_300x170.gif', 'dtl2_Ani_1_240x320.gif', 'con1_Ani_1_720x1280.gif', 'con2_Ani_1_480x800.gif', NULL, NULL, '2016-06-04', '2018-04-08', NULL, 'admin', NULL, 'MFC,others,', 'NULL', NULL),
(346, 41, 42, 'Ramadan_Animation_05', 'Ramadan Animation', '', 'Ramadan Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ani_2_130x90.gif', 'prv2_Ani_2_150x150.gif', 'dtl1_Ani_2_300x170.gif', 'dtl2_Ani_2_240x320.gif', 'con1_Ani_2_720x1280.gif', 'con2_Ani_2_480.gif', NULL, NULL, '2016-06-04', '2018-04-08', NULL, 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(347, 41, 42, 'Ramadan_Animation_06', 'Ramadan Animation', '', 'Ramadan Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ani_3_130x90.gif', 'prv2_Ani_3_150x150.gif', 'dtl1_Ani_3_300x170.gif', 'dtl2_Ani_3_240x320.gif', 'con1_Ani_3_720x1280.gif', 'con2_Ani_3_480x800.gif', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(348, 41, 42, 'Ramadan_Animation_07', 'Ramadan Animation', '', 'Ramadan Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ani_4_130x90.gif', 'prv2_Ani_4_150x150.gif', 'dtl1_Ani_4_300x170.gif', 'dtl2_Ani_4_240x320.gif', 'con1_Ani_4_720x1280.gif', 'con2_Ani_4_480x800.gif', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL);
INSERT INTO `b2m_cms_content` (`id`, `cat_id`, `sub_cat_id`, `title`, `short_des`, `apk_path`, `description`, `artist_name`, `owner`, `type`, `price`, `phone_set`, `content_type`, `file_name`, `prv1_file_name`, `prv2_file_name`, `details1_file_name`, `details2_file_name`, `con1_file_name`, `con2_file_name`, `file_size`, `location`, `insert_date`, `update_date`, `approve_date`, `created_by`, `mapping_status`, `projects`, `status`, `owner_status`) VALUES
(349, 41, 42, 'Ramadan_Animation_08', 'Ramadan Animation', '', 'Ramadan Animation', '', '2', 'Animation', 10, '', '', '', 'prv1_Ani_5_130x90.gif', 'prv2_Ani_5_150x150.gif', 'dtl1_Ani_5_300x170.gif', 'dtl2_Ani_5_240x320.gif', 'con1_Ani_5_720x1280.gif', 'con2_Ani_5_480x800.gif', NULL, NULL, '2016-06-04', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(350, 17, 18, 'A Ke Lojja A Ke Shehoron', 'A Ke Lojja A Ke Shehoron', '', 'A Ke Lojja A Ke Shehoron by Kona & Bappa', 'Kona & Bappa', '4', 'Audio', 20, '', '', '', 'prv1_ILU_07_130x90.jpg', 'prv2_ILU_07_150x150.jpg', 'dtl1_ILU_07_300x170.jpg', 'dtl2_ILU_07_240x320.jpg', 'con1_A_Ke_Lojja_A_Ke_Shehoron_Kona_Bappa_Prv.mp3', 'con2_A_Ke_Lojja_A_Ke_Shehoron_Kona_Bappa.mp3', NULL, NULL, '2016-06-19', '2017-08-22', NULL, 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(351, 17, 18, 'Akashe Aj Roder Hashi', 'Akashe Aj Roder Hashi', '', 'Akashe Aj Roder Hashi by Hridoy Khan & Alita', 'Hridoy Khan & Alita', '4', 'Audio', 20, '', '', '', 'prv1_ILU_07_130x901.jpg', 'prv2_ILU_07_150x1501.jpg', 'dtl1_ILU_07_300x1701.jpg', 'dtl2_ILU_07_240x3201.jpg', 'con1_Akashe_Aj_Roder_Hashi_Hridoy_Khan_Alita_Prv.mp3', 'con2_Akashe_Aj_Roder_Hashi_Hridoy_Khan_Alita.mp3', NULL, NULL, '2016-06-19', '2017-08-22', NULL, 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(352, 17, 18, 'Kashe Aale Valobese', 'Kashe Aale Valobese', '', 'Kashe Aale Valobese by Hridoy Khan & Alita', 'Hridoy Khan & Alita', '4', 'Audio', 20, '', '', '', 'prv1_ILU_07_130x902.jpg', 'prv2_ILU_07_150x1502.jpg', 'dtl1_ILU_07_300x1702.jpg', 'dtl2_ILU_07_240x3202.jpg', 'con1_Kashe_Aale_Valobese_Hridoy_Khan_Alita_Prv.mp3', 'con2_Kashe_Aale_Valobese_Hridoy_Khan_Alita_.mp3', NULL, NULL, '2016-06-19', '2017-08-22', NULL, 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(353, 17, 18, 'Preme Porese Ami', 'Preme Porese Ami', '', 'Preme Porese Ami by Habib', 'Habib', '4', 'Audio', 20, '', '', '', 'prv1_ILU_07_130x903.jpg', 'prv2_ILU_07_150x1503.jpg', 'dtl1_ILU_07_300x1703.jpg', 'dtl2_ILU_07_240x3203.jpg', 'con1_Preme_Porese_Ami_Habib_Prv.mp3', 'con2_Preme_Porese_Ami_Habib.mp3', NULL, NULL, '2016-06-19', '2017-08-22', NULL, 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(354, 17, 18, 'Sheleta Valobase Meyata Jane', 'Sheleta Valobase Meyata Jane', '', 'Sheleta Valobase Meyata Jane by S.I.Tutul & Sonia', 'S.I.Tutul & Sonia', '4', 'Audio', 20, '', '', '', 'prv1_ILU_07_130x904.jpg', 'prv2_ILU_07_150x1504.jpg', 'dtl1_ILU_07_300x1704.jpg', 'dtl2_ILU_07_240x3204.jpg', 'con1_Sheleta_Valobase_Meyata_Jane_S.mp3', 'con2_Sheleta_Valobase_Meyata_Jane_S.mp3', NULL, NULL, '2016-06-19', '2017-08-22', NULL, 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(355, 17, 18, 'Tmi Aso Sara Bela', 'Tmi Aso Sara Bela', '', 'Tmi Aso Sara Bela by S.I.Tutul & Nancy', 'S.I.Tutul & Nancy', '4', 'Audio', 20, '', '', '', 'prv1_ILU_07_130x905.jpg', 'prv2_ILU_07_150x1505.jpg', 'dtl1_ILU_07_300x1705.jpg', 'dtl2_ILU_07_240x3205.jpg', 'con1_Tmi_Aso_Sara_Bela_S.mp3', 'con2_Tmi_Aso_Sara_Bela_S.mp3', NULL, NULL, '2016-06-19', '2017-08-22', NULL, 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(356, 17, 18, 'Tumi Dure Dure kano Thako', 'Tumi Dure Dure kano Thako', '', 'Tumi Dure Dure kano Thako by S.I.Tutul & Shamina', 'S.I.Tutul & Shamina', '4', 'Audio', 20, '', '', '', 'prv1_ILU_07_130x906.jpg', 'prv2_ILU_07_150x1506.jpg', 'dtl1_ILU_07_300x1706.jpg', 'dtl2_ILU_07_240x3206.jpg', 'con1_Tumi_Dure_Dure_kano_Thako_S.mp3', 'con2_Tumi_Dure_Dure_kano_Thako_S.mp3', NULL, NULL, '2016-06-19', '2017-08-22', NULL, 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(357, 17, 18, 'Tumi Manush Na Ke Pori', 'Tumi Manush Na Ke Pori', '', 'Tumi Manush Na Ke Pori by Hridoy Khan', 'Hridoy Khan', '4', 'Audio', 20, '', '', '', 'prv1_ILU_07_130x907.jpg', 'prv2_ILU_07_150x1507.jpg', 'dtl1_ILU_07_300x1707.jpg', 'dtl2_ILU_07_240x3207.jpg', 'con1_Tumi_Manush_Na_Ke_Pori_Hridoy_Khan_Prv.mp3', 'con2_Tumi_Manush_Na_Ke_Pori_Hridoy_Khan.mp3', NULL, NULL, '2016-06-19', '2017-08-22', NULL, 'admin', NULL, 'MFC,others,', 'unpublished', NULL),
(358, 17, 18, 'Amar Gohin Ghenner Naiya', 'Amar Gohin Ghenner Naiya', '', 'Amar Gohin Ghenner Naiya by Momotajj Ali Khan', 'Momotajj Ali Khan', '4', 'Audio', 20, '', '', '', 'prv1_Palki_06_130x90.jpg', 'prv2_Palki_06_150x150.jpg', 'dtl1_Palki_06_300x170.jpg', 'dtl2_Palki_06_240x320.jpg', 'con1_Amar_Gohin_Ghenner_Naiya-Momotajj_Ali_Khan_Prv.mp3', 'con2_Amar_Gohin_Ghenner_Naiya-Momotajj_Ali_Khan.mp3', NULL, NULL, '2016-06-19', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(359, 17, 18, 'Baiya Jaiya Kon Ghate', 'Baiya Jaiya Kon Ghate', '', 'Baiya Jaiya Kon Ghate by Momotajj Ali Khan', 'Momotajj Ali Khan', '4', 'Audio', 20, '', '', '', 'prv1_Palki_06_130x901.jpg', 'prv2_Palki_06_150x1501.jpg', 'dtl1_Palki_06_300x1701.jpg', 'dtl2_Palki_06_240x3201.jpg', 'con1_Baiya_Jaiya_Kon_Ghate_Momotajj_Ali_Khan_Prv.mp3', 'con2_Baiya_Jaiya_Kon_Ghate_Momotajj_Ali_Khan.mp3', NULL, NULL, '2016-06-19', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(360, 17, 18, 'Chader bodon', 'Chader bodon', '', 'Chader bodon by Procholeto', 'Procholeto', '4', 'Audio', 20, '', '', '', 'prv1_Palki_06_130x902.jpg', 'prv2_Palki_06_150x1502.jpg', 'dtl1_Palki_06_300x1702.jpg', 'dtl2_Palki_06_240x3202.jpg', 'con1_Chader_bodon_Procholeto_Prv.mp3', 'con2_Chader_bodon_Procholeto.mp3', NULL, NULL, '2016-06-19', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(361, 17, 18, 'Jare Shere Aalam', 'Jare Shere Aalam', '', 'Jare Shere Aalam by Momotajj Ali Khan', 'Momotajj Ali Khan', '4', 'Audio', 20, '', '', '', 'prv1_Palki_06_130x903.jpg', 'prv2_Palki_06_150x1503.jpg', 'dtl1_Palki_06_300x1703.jpg', 'dtl2_Palki_06_240x3203.jpg', 'con1_Jare_Shere_Aalam_Momotajj_Ali_Khan_Prv.mp3', 'con2_Jare_Shere_Aalam_Momotajj_Ali_Khan.mp3', NULL, NULL, '2016-06-20', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(362, 17, 18, 'Ki bolibo Soner chadre', 'Ki bolibo Soner chadre', '', 'Ki bolibo Soner chadre by Momotajj Ali Khan', 'Momotajj Ali Khan', '4', 'Audio', 20, '', '', '', 'prv1_Palki_06_130x904.jpg', 'prv2_Palki_06_150x1504.jpg', 'dtl1_Palki_06_300x1704.jpg', 'dtl2_Palki_06_240x3204.jpg', 'con1_Ki_bolibo_Soner_chadre_Momotajj_Ali_Khan_Prv.mp3', 'con2_Ki_bolibo_Soner_chadre_Momotajj_Ali_Khan.mp3', NULL, NULL, '2016-06-20', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(363, 17, 18, 'O amar Dorodeya', 'O amar Dorodeya', '', 'O amar Dorodeya by Momotajj Ali Khan', 'Momotajj Ali Khan', '4', 'Audio', 20, '', '', '', 'prv1_Palki_06_130x905.jpg', 'prv2_Palki_06_150x1505.jpg', 'dtl1_Palki_06_300x1705.jpg', 'dtl2_Palki_06_240x3205.jpg', 'con1_O_amar_Dorodeya_momotajj_Ali_Khan_Prv.mp3', 'con2_O_amar_Dorodeya_Momotajj_Ali_Khan.mp3', NULL, NULL, '2016-06-20', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(364, 17, 18, 'Palki', 'Palki', '', 'Palki by Shongroho', 'Shongroho', '4', 'Audio', 20, '', '', '', 'prv1_Palki_06_130x906.jpg', 'prv2_Palki_06_150x1506.jpg', 'dtl1_Palki_06_300x1706.jpg', 'dtl2_Palki_06_240x3206.jpg', 'con1_Palki_Shongroho_Prv.mp3', 'con2_Palki_Shongroho.mp3', NULL, NULL, '2016-06-20', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(365, 17, 18, 'Ronggela Nayer Maji', 'Ronggela Nayer Maji', '', 'Ronggela Nayer Maji by Momotajj Ali Khan', 'Momotajj Ali Khan', '4', 'Audio', 20, '', '', '', 'prv1_Palki_06_130x907.jpg', 'prv2_Palki_06_150x1507.jpg', 'dtl1_Palki_06_300x1707.jpg', 'dtl2_Palki_06_240x3207.jpg', 'con1_Ronggela_Nayer_Magi_Momotajj_Ali_Khan_Prv.mp3', 'con2_Ronggela_Nayer_Magi_Momotajj_Ali_Khan.mp3', NULL, NULL, '2016-06-20', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(366, 17, 18, 'Tumi Amar Bundhu Lago', 'Tumi Amar Bundhu Lago', '', 'Tumi Amar Bundhu Lago by Shongroho', 'Shongroho', '4', 'Audio', 20, '', '', '', 'prv1_Palki_06_130x908.jpg', 'prv2_Palki_06_150x1508.jpg', 'dtl1_Palki_06_300x1708.jpg', 'dtl2_Palki_06_240x3208.jpg', 'con1_Tumi_Amar_Bundhu_Lago_Shongroho_Prv.mp3', 'con2_Tumi_Amar_Bundhu_Lago_Shongroho.mp3', NULL, NULL, '2016-06-20', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(367, 17, 18, 'Tumi Dau Dekha Dodori', 'Tumi Dau Dekha Dodori', '', 'Tumi Dau Dekha Dodori by Hajera Bibi', 'Hajera Bibi', '4', 'Audio', 20, '', '', '', 'prv1_Palki_06_130x909.jpg', 'prv2_Palki_06_150x1509.jpg', 'dtl1_Palki_06_300x1709.jpg', 'dtl2_Palki_06_240x3209.jpg', 'con1_Tumi_Dau_Dekha_Dodori_Hajera_Bibi_Prv.mp3', 'con2_Tumi_Dau_Dekha_Dodori_Hajera_Bibi.mp3', NULL, NULL, '2016-06-20', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(368, 17, 18, 'Ujan Ghangger Naiya', 'Ujan Ghangger Naiya', '', 'Ujan Ghangger Naiya by Momotajj Ali Khan', 'Momotajj Ali Khan', '4', 'Audio', 20, '', '', '', 'prv1_Palki_06_130x9010.jpg', 'prv2_Palki_06_150x15010.jpg', 'dtl1_Palki_06_300x17010.jpg', 'dtl2_Palki_06_240x32010.jpg', 'con1_Ujan_Ghangger_Naiya_momotajj_Ali_Khan_Prv.mp3', 'con2_Ujan_Ghangger_Naiya_Momotajj_Ali_Khan.mp3', NULL, NULL, '2016-06-20', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(369, 17, 18, 'Ami Protishod nete Pare Na', 'Ami Protishod nete Pare Na', '', 'Ami Protishod nete Pare Na by Pushpita', 'Pushpita', '4', 'Audio', 20, '', '', '', 'prv1_Shada-Kalo_04_130x90.jpg', 'prv2_Shada-Kalo_04_150x150.jpg', 'dtl1_Shada-Kalo_04_300x170.jpg', 'dtl2_Shada-Kalo_04_240x320.jpg', 'con1_Ami_Protishod_Nite_Pare_Na_Pushpita_Prv.mp3', 'con2_Ami_Protishod_nete_Pare_Na_Pushpita.mp3', NULL, NULL, '2016-06-21', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(370, 17, 18, 'Ata shopno Shada Kalo', 'Ata shopno Shada Kalo', '', 'Ata shopno Shada Kalo by Pushpita', 'Pushpita', '4', 'Audio', 20, '', '', '', 'prv1_Shada-Kalo_04_130x901.jpg', 'prv2_Shada-Kalo_04_150x1501.jpg', 'dtl1_Shada-Kalo_04_300x1701.jpg', 'dtl2_Shada-Kalo_04_240x3201.jpg', 'con1_Ata_shopno_Shada_Kalo_Pushpita_Prv.mp3', 'con2_Ata_shopno_Shada_Kalo_Pushpita.mp3', NULL, NULL, '2016-06-21', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(371, 17, 18, 'Brishity Dhoya Rate', 'Brishity Dhoya Rate', '', 'Brishity Dhoya Rate by Pushpita', 'Pushpita', '4', 'Audio', 20, '', '', '', 'prv1_Shada-Kalo_04_130x902.jpg', 'prv2_Shada-Kalo_04_150x1502.jpg', 'dtl1_Shada-Kalo_04_300x1702.jpg', 'dtl2_Shada-Kalo_04_240x3202.jpg', 'con1_Brishity_Dhoya_Rate_Pushpita_Prv.mp3', 'con2_Brishity_Dhoya_Rate_Pushpita.mp3', NULL, NULL, '2016-06-21', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(372, 17, 18, 'Dakho Nil Akashe', 'Dakho Nil Akashe', '', 'Dakho Nil Akashe by Pushpita', 'Pushpita', '4', 'Audio', 20, '', '', '', 'prv1_Shada-Kalo_04_130x903.jpg', 'prv2_Shada-Kalo_04_150x1503.jpg', 'dtl1_Shada-Kalo_04_300x1703.jpg', 'dtl2_Shada-Kalo_04_240x3203.jpg', 'con1_Dakho_Nil_Akashe_Pushpita_Prv.mp3', 'con2_Dakho_Nil_Akashe_Pushpita.mp3', NULL, NULL, '2016-06-21', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(373, 17, 18, 'Dosh Digonto', 'Dosh Digonto', '', 'Dosh Digonto by Pushpita', 'Pushpita', '4', 'Audio', 20, '', '', '', 'prv1_Shada-Kalo_04_130x904.jpg', 'prv2_Shada-Kalo_04_150x1504.jpg', 'dtl1_Shada-Kalo_04_300x1704.jpg', 'dtl2_Shada-Kalo_04_240x3204.jpg', 'con1_Dakho_Nil_Akashe_Pushpita_Prv1.mp3', 'con2_Dosh_Digonto_Pushpita.mp3', NULL, NULL, '2016-06-21', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(374, 17, 18, 'Kalnto Rood Mekhe', 'Kalnto Rood Mekhe', '', 'Kalnto Rood Mekhe by Pushpita', 'Pushpita', '4', 'Audio', 20, '', '', '', 'prv1_Shada-Kalo_04_130x905.jpg', 'prv2_Shada-Kalo_04_150x1505.jpg', 'dtl1_Shada-Kalo_04_300x1705.jpg', 'dtl2_Shada-Kalo_04_240x3205.jpg', 'con1_Kalnto_Rood_Mekhe_Pushpita_Prv.mp3', 'con2_Kalnto_Rood_Mekhe_Pushpita.mp3', NULL, NULL, '2016-06-21', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(375, 17, 18, 'O Majjhi', 'O Majjhi', '', 'O Majjhi by Pushpita', 'Pushpita', '4', 'Audio', 20, '', '', '', 'prv1_Shada-Kalo_04_130x906.jpg', 'prv2_Shada-Kalo_04_150x1506.jpg', 'dtl1_Shada-Kalo_04_300x1706.jpg', 'dtl2_Shada-Kalo_04_240x3206.jpg', 'con1_O_Majjhi_Pushpita_Prv.mp3', 'con2_O_Majjhi_Pushpita.mp3', NULL, NULL, '2016-06-21', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(376, 17, 18, 'Ratrri Mane', 'Ratrri Mane', '', 'Ratrri Mane by Pushpita', 'Pushpita', '4', 'Audio', 20, '', '', '', 'prv1_Shada-Kalo_04_130x907.jpg', 'prv2_Shada-Kalo_04_150x1507.jpg', 'dtl1_Shada-Kalo_04_300x1707.jpg', 'dtl2_Shada-Kalo_04_240x3207.jpg', 'con1_Ratrri_Mane_Pushpita_Prv.mp3', 'con2_Ratrri_Mane_Pushpita.mp3', NULL, NULL, '2016-06-21', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(377, 17, 18, 'Shoto Shoto Koto Asha', 'Shoto Shoto Koto Asha', '', 'Shoto Shoto Koto Asha by Pushpita', 'Pushpita', '4', 'Audio', 20, '', '', '', 'prv1_Shada-Kalo_04_130x908.jpg', 'prv2_Shada-Kalo_04_150x1508.jpg', 'dtl1_Shada-Kalo_04_300x1708.jpg', 'dtl2_Shada-Kalo_04_240x3208.jpg', 'con1_Shoto_Shoto_Koto_Asha_Pushpita_Prv.mp3', 'con2_Shoto_Shoto_Koto_Asha_Pushpita.mp3', NULL, NULL, '2016-06-21', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(378, 17, 18, 'Tumi Proshno Koro Na', 'Tumi Proshno Koro Na', '', 'Tumi Proshno Koro Na by Pushpita', 'Pushpita', '4', 'Audio', 20, '', '', '', 'prv1_Shada-Kalo_04_130x909.jpg', 'prv2_Shada-Kalo_04_150x1509.jpg', 'dtl1_Shada-Kalo_04_300x1709.jpg', 'dtl2_Shada-Kalo_04_240x3209.jpg', 'con1_Tumi_Proshno_Koro_Na_Pushpita_Prv.mp3', 'con2_Tumi_Proshno_Koro_Na_Pushpita.mp3', NULL, NULL, '2016-06-21', '2018-03-14', NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(379, 17, 18, 'Aaji komolo mukulo', 'Aaji komolo mukulo', '', 'Aaji komolo mukulo by Rezwana Choudhury Bannya', 'Rezwana Choudhury Bannya', '4', 'Audio', 20, '', '', '', 'prv1_Shilaydaha_05_130x90.jpg', 'prv2_Shilaydaha_05_150x150.jpg', 'dtl1_Shilaydaha_05_300x170.jpg', 'dtl2_Shilaydaha_05_240x320.jpg', 'con1_Aaji_komolo_mukulo_Rezwana_Choudhury_Bannya_Prv.mp3', 'con2_Aaji_komolo_mukulo_Rezwana_Choudhury_Bannya.mp3', NULL, NULL, '2016-06-22', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(380, 17, 18, 'Bodhu miche raag korona', 'Bodhu miche raag korona', '', 'Bodhu miche raag korona by Rezwana Choudhury Bannya', 'Rezwana Choudhury Bannya', '4', 'Audio', 20, '', '', '', 'prv1_Shilaydaha_05_130x901.jpg', 'prv2_Shilaydaha_05_150x1501.jpg', 'dtl1_Shilaydaha_05_300x1701.jpg', 'dtl2_Shilaydaha_05_240x3201.jpg', 'con1_Bodhu_miche_raag_korona_Rezwana_Choudhury_Bannya_Prv.mp3', 'con2_Bodhu_miche_raag_korona_Rezwana_Choudhury_Bannya.mp3', NULL, NULL, '2016-06-22', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(381, 17, 18, 'Ke dilo abar aaghat', 'Ke dilo abar aaghat', '', 'Ke dilo abar aaghat by Rezwana Choudhury Bannya', 'Rezwana Choudhury Bannya', '4', 'Audio', 20, '', '', '', 'prv1_Shilaydaha_05_130x902.jpg', 'prv2_Shilaydaha_05_150x1502.jpg', 'dtl1_Shilaydaha_05_300x1702.jpg', 'dtl2_Shilaydaha_05_240x3202.jpg', 'con1_Ke_dilo_abar_aaghat_Rezwana_Choudhury_Bannya_Prv.mp3', 'con2_Ke_dilo_abar_aaghat_Rezwana_Choudhury_Bannya.mp3', NULL, NULL, '2016-06-22', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(382, 17, 18, 'Khachar paki ti chilo', 'Khachar paki ti chilo', '', 'Khachar paki ti chilo by Rezwana Choudhury Bannya', 'Rezwana Choudhury Bannya', '4', 'Audio', 20, '', '', '', 'prv1_Shilaydaha_05_130x903.jpg', 'prv2_Shilaydaha_05_150x1503.jpg', 'dtl1_Shilaydaha_05_300x1703.jpg', 'dtl2_Shilaydaha_05_240x3203.jpg', 'con1_Khachar_paki_ti_chilo_Rezwana_Choudhury_Bannya_prv.mp3', 'con2_Khachar_paki_ti_chilo_Rezwana_Choudhury_Bannya.mp3', NULL, NULL, '2016-06-22', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL),
(383, 17, 18, 'Purbacholer pane takai', 'Purbacholer pane takai', '', 'Purbacholer pane takai by Rezwana Choudhury Bannya', 'Rezwana Choudhury Bannya', '4', 'Audio', 20, '', '', '', 'prv1_Shilaydaha_05_130x904.jpg', 'prv2_Shilaydaha_05_150x1504.jpg', 'dtl1_Shilaydaha_05_300x1704.jpg', 'dtl2_Shilaydaha_05_240x3204.jpg', 'con1_Purbacholer_pane_takai_Rezwana_Choudhury_Bannya_Prv.mp3', 'con2_Purbacholer_pane_takai_Rezwana_Choudhury_Bannya.mp3', NULL, NULL, '2016-06-22', NULL, NULL, 'admin', NULL, 'MFC,others,', 'published', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `b2m_cms_game_details_android`
--

CREATE TABLE `b2m_cms_game_details_android` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `handset` varchar(200) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `apk_file` varchar(100) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `insert_date` date NOT NULL,
  `update_date` date NOT NULL,
  `upload_by` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `b2m_cms_game_details_android`
--

INSERT INTO `b2m_cms_game_details_android` (`id`, `game_id`, `handset`, `model`, `apk_file`, `width`, `height`, `insert_date`, `update_date`, `upload_by`, `type`, `status`) VALUES
(1, 6797, 'samsung', 'j5', 'Android-DeadSpace.rar', 360, 400, '2018-09-20', '0000-00-00', 'admin', 'Game', 'pending'),
(2, 6799, 'samsung', 'j5', 'Java-BrainCoachDrKawashima-14052015_Uploaded.rar', 360, 400, '2018-09-20', '0000-00-00', 'admin', 'Game', 'pending'),
(3, 6796, 'Huawei', 'Y7', 'Australian Football League.apk', 720, 1280, '2018-09-20', '0000-00-00', 'admin', 'Game', 'pending'),
(4, 2378, 'Huawei', 'Y7', 'Bridge_Constructor.apk', 720, 1280, '2018-09-20', '0000-00-00', 'admin', 'Game', 'pending'),
(5, 6797, 'samsung', 'j5', 'Bridge_Constructor.apk', 360, 400, '2018-09-26', '0000-00-00', 'admin', 'Game', 'pending'),
(6, 6798, 'HUAWEI', 'Y7', 'Basketball3D.apk', 720, 1280, '2018-10-17', '0000-00-00', 'admin', 'Game', 'pending'),
(7, 6799, 'HUAWEI', 'Y7', 'Cash Or Crash.apk', 720, 1280, '2018-10-17', '0000-00-00', 'admin', 'Game', 'pending'),
(8, 6800, 'HUAWEI', 'Y7', 'FlickFootball.apk', 720, 1280, '2018-10-17', '0000-00-00', 'admin', 'Game', 'pending'),
(9, 6801, 'HUAWEI', 'Y7', 'IncredibleSheriff.apk', 720, 1280, '2018-10-17', '0000-00-00', 'admin', 'Game', 'pending'),
(10, 6802, 'HUAWEI', 'Y7', 'octpong.apk', 720, 1280, '2018-10-17', '0000-00-00', 'admin', 'Game', 'pending'),
(11, 6797, 'HUAWEI', 'Y7', 'PocketBowling3D.apk', 720, 1280, '2018-10-17', '0000-00-00', 'admin', 'Game', 'pending'),
(12, 6802, 'HUAWEI', 'Y7', 'brn_android_all_multilang.apk', 720, 1280, '2018-10-17', '0000-00-00', 'admin', 'Game', 'pending'),
(13, 6803, 'samsung', 'f23', 'octpong.apk', 343, 343, '2018-10-17', '0000-00-00', 'admin', 'Game', 'pending'),
(14, 6803, 'samsung', 'f23', 'octpong.apk', 343, 343, '2018-10-17', '0000-00-00', 'admin', 'Game', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `b2m_cms_game_details_java`
--

CREATE TABLE `b2m_cms_game_details_java` (
  `id` int(11) NOT NULL,
  `game_id` int(11) NOT NULL,
  `handset` varchar(200) DEFAULT NULL,
  `model` varchar(200) DEFAULT NULL,
  `jar_file` varchar(120) DEFAULT NULL,
  `jad_file` varchar(120) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `insert_date` date NOT NULL,
  `update_date` date NOT NULL,
  `upload_by` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `b2m_cms_game_details_java`
--

INSERT INTO `b2m_cms_game_details_java` (`id`, `game_id`, `handset`, `model`, `jar_file`, `jad_file`, `width`, `height`, `insert_date`, `update_date`, `upload_by`, `type`, `status`) VALUES
(1, 6798, 'samsung', 'j5', 'Java-BrainCoachDrKawashima-14052015_Uploaded.rar', 'Android-DeadSpace.rar', NULL, NULL, '2018-09-20', '0000-00-00', 'admin', 'Game', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `b2m_cms_type`
--

CREATE TABLE `b2m_cms_type` (
  `id` int(11) NOT NULL,
  `type_name` varchar(20) NOT NULL,
  `created` datetime NOT NULL,
  `modified_date` datetime NOT NULL,
  `created_by` varchar(20) NOT NULL,
  `status` varchar(11) NOT NULL COMMENT 'Here NULL means Delete '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `b2m_cms_type`
--

INSERT INTO `b2m_cms_type` (`id`, `type_name`, `created`, `modified_date`, `created_by`, `status`) VALUES
(1, 'Wallpaper', '2015-11-15 00:00:00', '2015-11-15 08:04:57', 'admin', 'published'),
(2, 'Animation', '2015-09-09 00:00:00', '2015-11-15 08:03:57', 'admin', 'published'),
(3, 'Audio', '2015-09-07 00:00:00', '0000-00-00 00:00:00', '', 'published'),
(4, 'Video', '2015-09-07 00:00:00', '0000-00-00 00:00:00', '', 'published'),
(5, 'Game', '2015-10-05 00:00:00', '2015-10-05 09:07:12', 'admin', 'published'),
(6, 'Football Video', '2018-06-14 00:00:00', '0000-00-00 00:00:00', 'admin', 'published'),
(7, 'Football Wallpaper', '2018-06-14 00:00:00', '0000-00-00 00:00:00', 'admin', 'published'),
(9, 'Streaming', '2018-10-29 00:00:00', '0000-00-00 00:00:00', 'admin', 'published'),
(10, 'FunnyClip', '2019-12-04 00:00:00', '0000-00-00 00:00:00', 'admin', 'published');

-- --------------------------------------------------------

--
-- Table structure for table `b2m_cms_upload_temp`
--

CREATE TABLE `b2m_cms_upload_temp` (
  `id` int(11) NOT NULL,
  `csv_file_name` varchar(150) DEFAULT NULL,
  `created_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `content_owner`
--

CREATE TABLE `content_owner` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL COMMENT 'published,unpublished,pending,block'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_owner`
--

INSERT INTO `content_owner` (`id`, `name`, `status`) VALUES
(2, 'B2m', 'published'),
(3, 'Fever', 'published'),
(4, 'Fahim Music', 'published'),
(5, 'Bright Solution Multimedia', 'published'),
(6, 'CD Vision', 'published'),
(7, 'Drishmo Pot', 'published'),
(8, 'CD Plus', 'published'),
(9, 'N-TV', 'published'),
(10, 'PERFORM', 'published'),
(11, 'Raliance', 'published'),
(12, 'Digital Turbine', 'published'),
(13, 'Piyawasa', 'published'),
(14, 'Inbox Production', 'published');

-- --------------------------------------------------------

--
-- Table structure for table `user_content_tbl`
--

CREATE TABLE `user_content_tbl` (
  `user_content_tbl_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `content_view_id` int(10) NOT NULL,
  `offset` int(10) NOT NULL DEFAULT 3,
  `limit` int(10) NOT NULL,
  `hit_day` date NOT NULL,
  `push_day` date NOT NULL,
  `got_hit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_content_tbl`
--

INSERT INTO `user_content_tbl` (`user_content_tbl_id`, `user_id`, `content_view_id`, `offset`, `limit`, `hit_day`, `push_day`, `got_hit`) VALUES
(167, 1, 0, 3, 0, '2015-08-25', '2015-08-27', ''),
(168, 1, 0, 3, 0, '2015-08-25', '2015-08-27', ''),
(169, 1, 0, 3, 0, '2015-08-25', '2015-08-27', ''),
(170, 1, 0, 3, 0, '2015-08-25', '2015-08-27', ''),
(171, 1, 0, 3, 0, '2015-08-25', '2015-08-27', ''),
(172, 1, 0, 3, 0, '2015-08-25', '2015-08-27', ''),
(173, 0, 0, 3, 2, '2016-08-28', '2016-08-29', ''),
(174, 1, 0, 3, 0, '2015-08-25', '2015-08-27', ''),
(175, 1, 0, 3, 0, '2015-08-25', '2015-08-27', ''),
(176, 0, 0, 3, 2, '2016-08-27', '2016-08-27', ''),
(177, 0, 0, 3, 2, '2016-08-27', '2016-08-29', ''),
(178, 0, 0, 3, 2, '2016-08-27', '2016-08-27', ''),
(179, 1, 0, 3, 0, '2015-08-31', '2015-09-02', ''),
(180, 0, 0, 3, 2, '2016-08-27', '2016-08-27', ''),
(181, 1, 0, 3, 0, '2015-08-31', '2015-09-02', ''),
(182, 1, 0, 3, 0, '2015-08-31', '2015-09-02', ''),
(183, 0, 0, 3, 2, '2016-08-27', '2016-08-27', ''),
(184, 0, 0, 3, 2, '2016-08-27', '2016-08-27', ''),
(185, 1, 0, 3, 0, '2015-09-01', '2015-09-03', ''),
(186, 1, 0, 3, 0, '2015-09-01', '2015-09-03', ''),
(187, 1, 0, 3, 0, '2015-09-01', '2015-09-03', ''),
(188, 1, 0, 3, 0, '2015-09-01', '2015-09-03', ''),
(189, 1, 0, 3, 0, '2015-09-01', '2015-09-03', ''),
(190, 1, 0, 3, 0, '2015-09-01', '2015-09-03', ''),
(191, 1, 0, 3, 0, '2015-09-01', '2015-09-03', ''),
(192, 1, 0, 3, 0, '2015-09-01', '2015-09-03', ''),
(193, 0, 0, 3, 2, '2016-08-27', '2016-08-27', ''),
(194, 1, 0, 3, 0, '2015-09-01', '2015-09-03', ''),
(195, 1, 0, 3, 0, '2015-09-01', '2015-09-03', ''),
(196, 1, 0, 3, 0, '2015-09-01', '2015-09-03', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad_animation_map`
--
ALTER TABLE `ad_animation_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_audio_map`
--
ALTER TABLE `ad_audio_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_game_map`
--
ALTER TABLE `ad_game_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_video_map`
--
ALTER TABLE `ad_video_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_wallpaper_map`
--
ALTER TABLE `ad_wallpaper_map`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b2m_cms_admin`
--
ALTER TABLE `b2m_cms_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b2m_cms_category`
--
ALTER TABLE `b2m_cms_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent_id`);

--
-- Indexes for table `b2m_cms_content`
--
ALTER TABLE `b2m_cms_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b2m_cms_game_details_android`
--
ALTER TABLE `b2m_cms_game_details_android`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b2m_cms_game_details_java`
--
ALTER TABLE `b2m_cms_game_details_java`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b2m_cms_type`
--
ALTER TABLE `b2m_cms_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `b2m_cms_upload_temp`
--
ALTER TABLE `b2m_cms_upload_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_owner`
--
ALTER TABLE `content_owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_content_tbl`
--
ALTER TABLE `user_content_tbl`
  ADD PRIMARY KEY (`user_content_tbl_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad_animation_map`
--
ALTER TABLE `ad_animation_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_audio_map`
--
ALTER TABLE `ad_audio_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_game_map`
--
ALTER TABLE `ad_game_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_video_map`
--
ALTER TABLE `ad_video_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_wallpaper_map`
--
ALTER TABLE `ad_wallpaper_map`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `b2m_cms_admin`
--
ALTER TABLE `b2m_cms_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `b2m_cms_category`
--
ALTER TABLE `b2m_cms_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `b2m_cms_content`
--
ALTER TABLE `b2m_cms_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;

--
-- AUTO_INCREMENT for table `b2m_cms_game_details_android`
--
ALTER TABLE `b2m_cms_game_details_android`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `b2m_cms_game_details_java`
--
ALTER TABLE `b2m_cms_game_details_java`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `b2m_cms_type`
--
ALTER TABLE `b2m_cms_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `b2m_cms_upload_temp`
--
ALTER TABLE `b2m_cms_upload_temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `content_owner`
--
ALTER TABLE `content_owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_content_tbl`
--
ALTER TABLE `user_content_tbl`
  MODIFY `user_content_tbl_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
