-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 07:28 AM
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
(1, 1, 2, 'wallpaper', 'wallpaper', '', 'wallpaper', '', '2', 'Wallpaper', 10, '', '', '', 'prv1_sabnam-faria-0131.jpg', 'prv2_sabnam-faria-0131.jpg', 'dtl1_1sabnam-faria-013.jpg', 'dtl2_1sabnam-faria-013.jpg', 'con1_1Peya_Bipasha_03.jpg', 'con2_1Peya_Bipasha_03.jpg', NULL, NULL, '2016-04-24', '2016-06-26', NULL, 'admin', NULL, 'MFC,others,', 'deny', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `b2m_cms_content`
--
ALTER TABLE `b2m_cms_content`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `b2m_cms_content`
--
ALTER TABLE `b2m_cms_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=384;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
