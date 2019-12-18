-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2019 at 08:41 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_homepage`
--

DROP TABLE IF EXISTS `tbl_homepage`;
CREATE TABLE IF NOT EXISTS `tbl_homepage` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `image` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `heading` text NOT NULL,
  `bio` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_homepage`
--

INSERT INTO `tbl_homepage` (`ID`, `name`, `image`, `description`, `heading`, `bio`) VALUES
(1, 'I’M HARWINDER DAHELE', 'harwinder.png', 'DESIGNER & WEB DEVELOPER', 'A LITTLE ABOUT ME', 'The things I like most to do in my regular basis is that\r\n        I prefer to make new design regarding different things \r\n        which are based  on new  technology. I also \r\n        love to cook different dishes as depends on \r\n        new taste which gives me great experience \r\n        about new tasted food. And I like to photoshoot, \r\n        wherever I visit new sports I try to capture \r\n        those moments.'),
(2, 'SPORTS PROJECT', 'project1.jpg', 'This is my project for sports, which was done by using cinema 4D and after effects.', 'SPORTS PROJECT', 'SPORTS');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_portfolio_projects`
--

DROP TABLE IF EXISTS `tbl_portfolio_projects`;
CREATE TABLE IF NOT EXISTS `tbl_portfolio_projects` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_portfolio_projects`
--

INSERT INTO `tbl_portfolio_projects` (`ID`, `name`, `image`, `description`) VALUES
(1, 'SPORTS PROJECT', 'project1.jpg', 'This is my sports project which has been done in cinema 4D and after effects. This project was on a game of soccer.'),
(2, 'JET ENGINE PROJECT', 'project2.jpg', 'This is my project on Jet engine. I did this in Cinema 4D.'),
(3, 'INFOGRAPHIC POSTER', 'project3.png', 'This is a infographic poster which is done in photoshop, after that I animate this poster by using node and AJAX.'),
(4, 'TRAA PROJECT', 'project4.jpg', 'This is my project on TRAA website.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
