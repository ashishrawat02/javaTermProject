-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2015 at 03:06 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

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
`studentId` int(10) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `course` varchar(225) NOT NULL,
  `duration` int(10) NOT NULL,
  `address` varchar(225) NOT NULL,
  `birthDate` date NOT NULL,
  `phoneNumber` int(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10652 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentId`, `firstName`, `lastName`, `course`, `duration`, `address`, `birthDate`, `phoneNumber`) VALUES
(101, 'Ashish', 'Rawat', 'IPRC', 3, '54E,849 Devine Street', '1991-03-02', 2114024455),
(102, 'revati', 'radendra', 'itp', 2, 'college ve', '1991-03-02', 2114024455),
(1015, 'joe', 'barkhouse', 'greenhhouse', 50, 'telfer', '1989-03-02', 13514601);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`studentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `studentId` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10652;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
