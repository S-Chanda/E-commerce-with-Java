-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2023 at 01:48 PM
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
-- Database: `believe_wear`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `CartId` int(60) NOT NULL,
  `UserId` int(60) NOT NULL,
  `Pid` int(60) NOT NULL,
  `ProductName` varchar(60) NOT NULL,
  `Price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`CartId`, `UserId`, `Pid`, `ProductName`, `Price`) VALUES
(12, 18, 16, 'bottle', 50),
(13, 18, 17, 'sawl', 50),
(17, 0, 20, 'believe limitless collection', 500);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID [int]` int(60) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(256) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID [int]`, `Username`, `Address`, `Phone`, `Email`, `Password`, `image`) VALUES
(20, 'suyasha', 'chjjhjsb', '9877893838', 'taushif@gmail.com', 'oTOpkI112WnxXqrW7c3v0VzUqIpVOwQmvegDJert3Ob+VZFx/eZdyG1pc/pCw3WR', 'profile.jpg'),
(22, 'suyasha', 'chitwan', '9877893838', 'adhikarisuyasha26@gmail.com', 'QM10d9C8Ns4A4oAKA7Ner7jzzNvyuRVPP7znMu0oUNBR7d6Ch9rKRr1JwFtIloAL', 'img.jpg'),
(23, 'himani', 'baneswor', '9863480461', 'himani@gmail.com', 'R9rsGNOa9q7/GFSXjaulC43gSgcbT7ghVQ7kmhm7Po6w+sw2D4JoQfPtBN3c+EQz', 'h.png');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Pid` int(50) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Catagory` varchar(50) NOT NULL,
  `Price` int(50) NOT NULL,
  `SKUID` int(50) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `Brand` varchar(50) NOT NULL,
  `Rating` varchar(40) NOT NULL,
  `Image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Pid`, `ProductName`, `Catagory`, `Price`, `SKUID`, `Description`, `Brand`, `Rating`, `Image`) VALUES
(20, 'believe limitless collection', 'hoodie', 500, 1234, 'blue color', 'believewear', '8', 'c8.png'),
(22, 'believe positive collection', 'hoodie', 500, 1234, 'green', 'believewear', '10', 'c12.png'),
(23, ' believe empower collection', 'tshirt', 500, 1234, 'black', 'believewear', '8', 'c10.png'),
(24, 'believe dreamers collection', 'hoodie', 500, 1234, 'black', 'believewear', '8', 'c7.png'),
(25, 'seek discomfort', 'sweatshirt', 500, 1234, 'pink', 'believewear', '10', 'c9.png'),
(26, 'believe women day collection', 'sweatshirt', 505, 1234, 'white', 'believewear', '8', 'c14.png'),
(27, 'believe casual collection', 'dress', 1000, 1234, 'check', 'believewear', '10', 'c16.jpg'),
(28, 'believe casual collection', 'long dress', 100000, 1234, 'orange', 'believewear', '10', 'c17.jpg'),
(29, 'believe casual collection', 'pant', 2000, 1234, 'black', 'believewear', '8', 'c18.jpg'),
(30, 'believe casual collection', 'blazer set', 1000, 1234, 'check', 'believewear', '8', 'c15.jpg'),
(31, 'believe casual collection', 'two piece', 1000, 1234, 'blue', 'believewear', '8', 'c19.jpg'),
(32, 'believe casual collection', 'pant set', 1000, 1234, 'white and blue', 'believewear', '10', 'c20.jpg'),
(33, 'believe casual collection', 'tshirt', 20, 1234, 'pink', 'believewear', '8', 'c21.jpg'),
(34, 'believe women day collection', 'outer', 1000, 1234, 'black', 'believewear', '10', 'c5.png'),
(35, 'bottle', 'kitchen', 500, 1234, '200 liters', 'miniso', '10', 'profile.png'),
(36, 'love over fear', 'hoodie', 500, 1234, 'white', 'believewear', '10', 'c11.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`CartId`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID [int]`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `CartId` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Customer_ID [int]` int(60) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Pid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
