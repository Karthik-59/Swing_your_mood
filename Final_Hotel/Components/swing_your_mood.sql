-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2022 at 08:57 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `swing_your_mood`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(11) NOT NULL,
  `username` text NOT NULL,
  `reason` text NOT NULL,
  `description` text NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `username`, `reason`, `description`, `timestamp`) VALUES
(1, 'dheeraj', 'food review', 'Great food', '2022-04-03 15:57:05'),
(2, 'krishna', 'Delivery review', 'Great way of delivey management', '2022-04-03 15:57:35'),
(3, 'pkrishnadheeraj', 'Food Review', 'Awesome & Delicious Food', '2022-04-03 16:13:54'),
(4, 'raja', 'Food Quality', 'Food quality is very great and the taste is mind blowing.', '2022-04-03 19:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `menu_orders`
--

CREATE TABLE `menu_orders` (
  `sno` int(11) NOT NULL,
  `username` text NOT NULL,
  `menu_names` text NOT NULL,
  `menu_qty` text NOT NULL,
  `menu_prices` text NOT NULL,
  `status` int(1) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu_orders`
--

INSERT INTO `menu_orders` (`sno`, `username`, `menu_names`, `menu_qty`, `menu_prices`, `status`, `timestamp`) VALUES
(1, 'pkrishnadheeraj', 'Dosa,Idly,', '2,1,', '40,30,', 2, '2022-04-02 23:14:11'),
(2, 'pkrishnadheeraj', 'Idly,Dosa,', '2,1,', '30,40,', 2, '2022-04-02 23:14:46'),
(3, 'pkrishnadheeraj', 'Pav Bhaji,Paratha,Dosa,Bonda,', '1,2,1,1,', '50,40,40,40,', 2, '2022-04-02 23:29:18'),
(4, 'raja', 'Pav Bhaji,Pakoda,Bonda,', '2,1,2,', '50,30,40,', 2, '2022-04-03 18:48:03'),
(12, 'raja', 'Paratha,Dosa,Cutlet,', '2,3,1,', '40,40,45,', 1, '2022-04-03 19:28:58'),
(13, 'raja', 'Pav Bhaji,Idly,', '2,1,', '50,30,', 0, '2022-04-03 21:51:49'),
(14, 'nikhilesh', 'Monster,Sting,thumps Up,', '2,2,1,', '45,25,55,', 0, '2022-05-14 00:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `special_orders`
--

CREATE TABLE `special_orders` (
  `sno` int(11) NOT NULL,
  `username` text NOT NULL,
  `specials_qty` text NOT NULL,
  `specials_prices` text NOT NULL,
  `specials_names` text NOT NULL,
  `status` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `special_orders`
--

INSERT INTO `special_orders` (`sno`, `username`, `specials_qty`, `specials_prices`, `specials_names`, `status`, `timestamp`) VALUES
(1, 'pkrishnadheeraj', '2,3,1,', '550,300,250,', 'South Indian Thali 3,Veg Pulav,Tomato Rice,', 2, '2022-04-03 12:14:14'),
(2, 'raja', '1,2,', '550,375,', 'North Indian Thali 1,North Indian Thali 2,', 2, '2022-04-03 19:28:20'),
(3, 'raja', '2,1,', '375,300,', 'North Indian Thali 2,Veg Pulav,', 0, '2022-04-03 21:52:04'),
(4, 'raja', '2,1,', '550,375,', 'North Indian Thali 1,South Indian Thali 2,', 0, '2022-04-03 21:52:38'),
(5, 'nikhilesh', '1,1,', '425,250,', 'Cognac,Vermouth Special,', 0, '2022-05-14 00:19:22');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `sno` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp(),
  `aadhar` int(10) NOT NULL,
  `mobile_no` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`sno`, `username`, `password`, `timestamp`, `aadhar`, `mobile_no`) VALUES
(1, 'dheeraj', '$2y$10$0a3PZ3wEQER0KmuMblOK1u2CwCTvilUfjWeXpqD3axAee7FmPMSAS', '2021-06-26 06:00:36', 0, 0),
(2, 'krishnap', '$2y$10$YVg/uX0yJ0h34YRd35ML3.zyx.CmYA6w3tOe8./Pf0R0OqPQkTwfm', '2021-07-02 07:52:10', 0, 0),
(5, 'pkrishnadheeraj', '$2y$10$vYTfRo7LOP.8JTFHbA8aFeBCoafZLxRaVtihsNXYQtBS91ZvTL1VO', '2022-04-02 19:15:21', 0, 0),
(6, 'admin', '$2y$10$vYTfRo7LOP.8JTFHbA8aFeBCoafZLxRaVtihsNXYQtBS91ZvTL1VO', '2022-04-03 16:20:58', 0, 0),
(7, 'raja', '$2y$10$QkNAZA5yO5tsaYi4u16NJ.fBPmyr78KiqcfWxBDLmZtYBZrumAPyK', '2022-04-03 18:47:32', 0, 0),
(8, 'sample', '$2y$10$I6GHm/934sYN7jpQLF2zhuTOQ1bGZPRylIRqovQM7sqYsUsQrsNXu', '2022-05-13 23:48:52', 123456789, 123456789),
(9, 'nikhilesh', '$2y$10$JIcI6horjtzj6rNrsmUoreEo.oTcKhlypJdGq.67MVVG.NKb5b3om', '2022-05-14 00:15:46', 2147483647, 1234567890);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `menu_orders`
--
ALTER TABLE `menu_orders`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `special_orders`
--
ALTER TABLE `special_orders`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `menu_orders`
--
ALTER TABLE `menu_orders`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `special_orders`
--
ALTER TABLE `special_orders`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
