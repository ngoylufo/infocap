-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 21, 2018 at 11:33 PM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infocap`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(20) NOT NULL,
  `link` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `link_text` (`text`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `text`, `link`) VALUES
(1, 'Home', 'home'),
(2, 'About', 'about'),
(3, 'Database', 'database');

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
CREATE TABLE IF NOT EXISTS `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(80) NOT NULL,
  `birthDate` date NOT NULL,
  `gender` int(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cellphone` varchar(15) NOT NULL,
  `summary` text,
  `recDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `firstName`, `lastName`, `birthDate`, `gender`, `email`, `cellphone`, `summary`, `recDate`) VALUES
(12, 'Gourjel', 'Lufo', '2018-11-08', 1, 'gourjellufo@gmail.com', '0782254475', 'Hey there!', '2018-11-19 23:12:48'),
(18, 'Ngoy', 'Lufo', '2018-11-07', 1, 'ngoylufo@gmail.com', '0732103788', 'hey', '2018-11-20 17:36:04'),
(24, 'Henry', 'Hendricks', '2018-11-07', 1, 'hhendricks@gmail.com', '0732103788', 'hey', '2018-11-20 17:36:05'),
(30, 'Jovete', 'Lufo', '2018-11-07', 1, 'jovetelufo@gmail.com', '0732103788', 'hey', '2018-11-20 17:36:06'),
(39, 'Fanny', 'De Castro', '2018-11-14', 2, 'fdecastro@outlook.com', '0782254475', 'het', '2018-11-21 18:27:41'),
(40, 'Joyce', 'Lufo', '2018-11-14', 2, 'joylufo@outlook.com', '0782254475', 'het', '2018-11-21 18:27:45'),
(45, 'Jeff', 'Lufo', '2018-12-05', 1, 'jefflufo@github.com', '0782254475', 'Hey there!', '2018-11-21 23:25:14'),
(46, 'Jonathan', 'William', '2018-12-05', 1, 'jwilliam@gmail.com', '0782254475', 'Hey there!', '2018-11-21 23:27:45'),
(47, 'Yannick', 'Nyengue', '2018-11-09', 1, 'ynyengue@gmail.com', '0782254475', 'Hey there!', '2018-11-21 23:28:37'),
(48, 'Henry', 'Hendricks', '2018-11-20', 1, 'henryhendricks@gmail.com', '0732103788', 'Hey There', '2018-11-21 23:30:30'),
(49, 'Mujinga', 'Naweji', '2018-11-05', 2, 'mnaweji@outlook.com', '0792547784', 'Hey there', '2018-11-21 23:30:30'),
(50, 'Livi', 'Nyengue', '2018-11-20', 2, 'lnyengue@gmail.com', '0732103788', 'Hey', '2018-11-21 23:32:00'),
(51, 'Samatha', 'Briggs', '2018-11-06', 2, 'sbriggs@gmail.com', '0792547784', 'Hey!', '2018-11-21 23:32:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
