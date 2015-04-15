-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2015 at 02:32 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `college`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `studentId` int(10) NOT NULL AUTO_INCREMENT,
  `fisrtName` varchar(50) NOT NULL,
  `nameLast` varchar(50) NOT NULL,
  `course` varchar(225) NOT NULL,
  `duration` int(10) NOT NULL,
  `address` varchar(225) NOT NULL,
  `birthDate` date NOT NULL,
  `phoneNumber` int(50) NOT NULL,
  PRIMARY KEY (`studentId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=106 ;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentId`, `fisrtName`, `nameLast`, `course`, `duration`, `address`, `birthDate`, `phoneNumber`) VALUES
(101, 'Ashish', 'Rawat', 'IPRC', 2, 'Devine Street', '1991-03-02', 2114024461),
(102, 'Neha', 'Sahota', 'IPRC', 2, 'Erindale', '1992-09-06', 2124024465),
(103, 'Kuldeep', 'Singh', 'IPRC', 2, 'Finch', '1990-05-12', 2124468123),
(104, 'Bino', 'Sammule', 'IPRC', 2, 'Finch', '1990-12-26', 2116659456),
(105, 'Revati', 'Rajendaran', 'IPRC', 2, 'College ave', '1991-09-24', 2116698024);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
