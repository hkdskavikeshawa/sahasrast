-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2024 at 09:43 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sahasrastudiodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `event_type` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `event_datetime` datetime NOT NULL,
  `crowd_quantity` int(11) NOT NULL,
  `photography_type` varchar(255) NOT NULL,
  `expected_cost` decimal(10,2) NOT NULL,
  `other_wantings` text DEFAULT NULL,
  `event_description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `full_name`, `event_type`, `location`, `event_datetime`, `crowd_quantity`, `photography_type`, `expected_cost`, `other_wantings`, `event_description`, `created_at`) VALUES
(1, 'Dilmith', 'Birthday', 'Kottawa', '2024-12-03 09:00:00', 50, 'Birthday', '50000.00', 'Decoration', '21st Birthday', '2024-05-30 19:17:00'),
(2, 'Devanga', 'Birthday', 'Kottawa', '2025-01-14 17:00:00', 100, 'Birthday', '100000.00', 'Be on time', '25th Birthday', '2024-05-30 19:19:25'),
(3, 'sss', 'sss', 'sss', '2027-01-01 10:00:00', 3, 'fff', '4667.00', 'fff', 'Type Here..ffff.', '2024-05-30 19:29:00'),
(7, 'dd', 'dd', 'dd', '2027-02-01 21:02:00', 11, 'dd', '2234444.00', 'sssss', 'Type Here...sssss', '2024-05-30 19:41:10');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Full_Name` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Address` varchar(70) NOT NULL,
  `Phone_Number` int(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Full_Name`, `Username`, `Address`, `Phone_Number`, `Email`, `Password`) VALUES
('dilmith seniru', 'dila', 'pannipitiya', 77, 'dila123@gmail.com', '123'),
('Devanga ', 'Devz', 'Kottawa', 1234567890, 'devz@gmail.com', '123'),
('dev', 'devzz', 'kottawa', 111, 'devzz@gmail.com', '123'),
('Lanka', 'LankaJ', 'Kottawa', 12345, 'lanka@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `managerlog`
--

CREATE TABLE `managerlog` (
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `managerlog`
--

INSERT INTO `managerlog` (`Username`, `Password`) VALUES
('admin', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
