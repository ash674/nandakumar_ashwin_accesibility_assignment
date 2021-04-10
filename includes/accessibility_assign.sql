-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 10, 2021 at 01:23 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accessibility_assign`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pics`
--

DROP TABLE IF EXISTS `tbl_pics`;
CREATE TABLE IF NOT EXISTS `tbl_pics` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `vidname` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pics`
--

INSERT INTO `tbl_pics` (`id`, `vidname`, `description`, `image`) VALUES
(1, 'file-1.mp4', '', 'img1.jpg'),
(2, 'file-2.mp4', '', 'img2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trailers`
--

DROP TABLE IF EXISTS `tbl_trailers`;
CREATE TABLE IF NOT EXISTS `tbl_trailers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video` varchar(255) NOT NULL DEFAULT '',
  `music` varchar(50) NOT NULL,
  `descrip` varchar(255) NOT NULL DEFAULT '',
  `images` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_trailers`
--

INSERT INTO `tbl_trailers` (`id`, `video`, `music`, `descrip`, `images`) VALUES
(1, 'trailer1.mp4', '', 'Breaking Bad', 'img1.jpg'),
(2, 'trailer2.mp4', '', 'Avatar', 'img2.jpg'),
(3, 'music_1.mp3', 'music_1.mp3', 'Bangarang By Skrillex', 'img3.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
