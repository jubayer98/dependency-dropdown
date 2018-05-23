-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2018 at 09:31 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `central_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `demo_data`
--

CREATE TABLE `demo_data` (
  `data_id` int(5) NOT NULL,
  `ward_no` int(5) DEFAULT NULL,
  `sub_block_name` varchar(100) DEFAULT NULL,
  `center_name` varchar(100) DEFAULT NULL,
  `center_type` varchar(100) DEFAULT NULL,
  `house_no` int(5) DEFAULT NULL,
  `date` int(5) DEFAULT NULL,
  `ha_details` varchar(100) NOT NULL,
  `union_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `demo_data`
--

INSERT INTO `demo_data` (`data_id`, `ward_no`, `sub_block_name`, `center_name`, `center_type`, `house_no`, `date`, `ha_details`, `union_id`) VALUES
(1, 1, 'A1', 'Center_19_A1', 'Non-Permanent', 101, 5, 'Karim - 0171xxx', 19),
(2, 2, 'B1', 'Center_19_B1', 'Non-Permanent', 121, 9, 'Rahim - 0181xxx', 19),
(3, 3, 'C1', 'Center_19_C1', 'Non-Permanent', 125, 11, 'Fahim - 0161xxx', 19),
(4, 1, 'A2', 'Center_27_A2', 'Permanent', 255, 26, 'Rabeya - 0151xxx', 27),
(5, 2, 'B2', 'Center_27_B2', 'Permanent', 267, 28, 'Rabeya - 0181xxx', 27),
(6, 3, 'C2', 'Center_27_C2', 'Permanent', 307, 31, 'Rabeya - 0171xxx', 27),
(7, 1, 'A3', 'Center_55_A3', 'CC', 77, 13, 'Josim - 0191xxx', 55),
(8, 2, 'B3', 'Center_55_B3', 'CC', 127, 15, 'Moin - 0191xxx', 55),
(9, 3, 'C3', 'Center_55_C3', 'CC', 227, 19, 'Khaled - 0191xxx', 55);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `demo_data`
--
ALTER TABLE `demo_data`
  ADD PRIMARY KEY (`data_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `demo_data`
--
ALTER TABLE `demo_data`
  MODIFY `data_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
