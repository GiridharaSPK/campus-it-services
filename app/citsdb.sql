-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 23, 2017 at 07:05 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `IT_DB`
--

-- --------------------------------------------------------

--
-- Table structure for table `body`
--

CREATE TABLE `body` (
  `uid` int(2) NOT NULL,
  `title` varchar(32) NOT NULL,
  `text` varchar(64) NOT NULL,
  `image` varchar(128) NOT NULL,
  `hyperlink` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `body`
--

INSERT INTO `body` (`uid`, `title`, `text`, `image`, `hyperlink`) VALUES
(1, 'Elemnet 1', 'this is the body text', 'placeholder.png', 'http://www.google.com'),
(2, 'Element 2', 'This is element 2', 'placeholder.png\r\n', 'http://www.bml.edu.in'),
(3, 'Element 3', 'This is element 3 text', 'placeholder.png', 'http://lms.bml.edu.in/'),
(4, 'Elemnet 4', 'This is element 4 text', 'placeholder.png', ''),
(5, 'Element 5', 'this is elemnt 5 text here', 'placeholder.png', 'https://www.w3schools.com/css/trolltunga.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `Other_Values`
--

CREATE TABLE `Other_Values` (
  `Heading` varchar(32) NOT NULL,
  `SubHeading` varchar(32) NOT NULL,
  `Ending` varchar(32) NOT NULL,
  `SubEnding` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Other_Values`
--

INSERT INTO `Other_Values` (`Heading`, `SubHeading`, `Ending`, `SubEnding`) VALUES
('Campus IT Services', 'One Line Description', 'Contact details', 'itsupport@bml.edu.in');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `body`
--
ALTER TABLE `body`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `body`
--
ALTER TABLE `body`
  MODIFY `uid` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
