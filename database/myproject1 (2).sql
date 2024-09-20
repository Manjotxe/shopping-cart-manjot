-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2024 at 11:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myproject1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `userid`, `productid`, `qty`) VALUES
(4, 1, 11, 99),
(6, 1, 18, 19),
(10, 1, 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryname`) VALUES
(1, 'TV\'s'),
(2, 'Dishwasher'),
(3, 'Ranges'),
(4, 'Computer'),
(5, 'Blu-ray & DVD Player'),
(6, 'Projectors'),
(7, 'Hometheater System'),
(8, 'Cameras'),
(9, 'Camcorders'),
(10, 'Washer & Dryers'),
(11, 'Refrigerators'),
(12, 'Microwaves');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `fullname`, `email`, `message`) VALUES
(1, 'manjot', 'jjj@gmail.com', 'hello ji'),
(2, 'manjot', 'jjj@gmail.com', 'hello ji');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `pdescription` text NOT NULL,
  `pprice` varchar(255) NOT NULL,
  `pstock` int(11) NOT NULL,
  `pimage` varchar(255) NOT NULL,
  `special` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `pname`, `pdescription`, `pprice`, `pstock`, `pimage`, `special`) VALUES
(11, 1, 'Samsung', 'Samsung 356', 'Rs.20000', 43, 'product_images/1689761769253.jpg', 1),
(12, 8, 'Nikon D7000', 'Nikon', 'Rs.3500', 53, 'product_images/1689761854152.jpg', 0),
(13, 8, 'Kodak Camera', 'Camera', 'Rs.3000', 112, 'product_images/1689761924940.jpg', 0),
(14, 1, 'Acer Monitor', '22 inch', 'Rs.15000', 234, 'product_images/1689762117134.png', 0),
(15, 9, 'Sony camcorders', 'Sony lense', 'Rs.16000', 765, 'product_images/1689762203261.png', 1),
(16, 6, 'Samsung Projector', 'Projector', 'Rs.27950', 11, 'product_images/1689762255660.jpg', 1),
(18, 2, 'Godrej', 'Dishwasher', 'Rs.1200', 7, 'product_images/1689846777245.png', 0),
(19, 3, 'LG RH', 'LG ', 'Rs.9999', 296, 'product_images/1689851658873.jpg', 0),
(20, 3, 'Samsung Range', 'Range', 'Rs.7500', 2, 'product_images/1689852129258.png', 0),
(21, 5, 'Phillips Bdp32', 'DVD Player', 'Rs.1365', 541, 'product_images/1689923736709.jpg', 0),
(22, 7, 'Intex GT43', 'Hometheator', 'Rs.2500', 1102, 'product_images/1689923887667.jpg', 0),
(23, 7, 'Zebronics Fast21', 'Hometheator', 'Rs.4350', 359, 'product_images/1689924057750.jpeg', 0),
(24, 10, 'Whirpool DR', 'Dryers', 'Rs.14599', 7, 'product_images/1689924236917.jpg', 0),
(25, 12, 'Black Decker', 'Microwave', 'Rs.6700', 47, 'product_images/1689924384069.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'Nitin', 'nitin@gmail.com', '123'),
(2, 'Nitin', 'nitin@gmail.com', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
