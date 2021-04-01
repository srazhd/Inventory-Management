-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2021 at 07:23 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventorydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('raz', 'raz'),
('rakib', 'rakib');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pID` int(11) NOT NULL,
  `pName` varchar(100) NOT NULL,
  `pDes` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pID`, `pName`, `pDes`) VALUES
(1, 'Apple', 'Pain Apple'),
(2, 'Mango', 'Mago'),
(3, 'Jackfroot', 'Jackfroot'),
(4, 'Litchi', 'Litchi');

-- --------------------------------------------------------

--
-- Table structure for table `purchesselltabel`
--

CREATE TABLE `purchesselltabel` (
  `psID` int(11) NOT NULL,
  `isPurches` int(11) NOT NULL,
  `pID` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchesselltabel`
--

INSERT INTO `purchesselltabel` (`psID`, `isPurches`, `pID`, `qty`) VALUES
(1, 1, 1, 10),
(2, 1, 2, 30),
(3, 0, 2, 10),
(4, 0, 2, 5),
(5, 0, 1, 5),
(6, 1, 1, 15),
(7, 1, 2, 15),
(8, 0, 1, 5),
(9, 1, 1, 5),
(10, 1, 3, 50),
(11, 1, 4, 70),
(12, 0, 1, 10),
(13, 0, 2, 20),
(14, 1, 1, 10),
(15, 0, 1, 5),
(16, 1, 3, 100),
(17, 1, 4, 30),
(18, 1, 1, 50),
(19, 1, 1, 5),
(20, 0, 2, 50),
(21, 1, 2, 40),
(22, 1, 2, 50),
(23, 1, 1, 30),
(24, 1, 4, 10),
(25, 1, 1, 20),
(26, 1, 4, 40),
(27, 1, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`name`, `email`, `username`, `password`) VALUES
('Saraf Raz Alam', 'raz@gmail.com', 'raz', 'raz'),
('MD Rakib', 'rakib@gmail.com', 'rakib', 'rakib');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pID`);

--
-- Indexes for table `purchesselltabel`
--
ALTER TABLE `purchesselltabel`
  ADD PRIMARY KEY (`psID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchesselltabel`
--
ALTER TABLE `purchesselltabel`
  MODIFY `psID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
