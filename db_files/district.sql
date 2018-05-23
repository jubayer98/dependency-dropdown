-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2018 at 09:30 AM
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
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(100) NOT NULL,
  `division_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `district_name`, `division_id`) VALUES
(1, 'Barguna', 1),
(2, 'Barishal', 1),
(3, 'Bhola', 1),
(4, 'Jhalokati', 1),
(5, 'Patuakhali', 1),
(6, 'Pirojpur', 1),
(7, 'Bandarban', 2),
(8, 'Brahmanbaria', 2),
(9, 'Chandpur', 2),
(10, 'Chattogram', 2),
(11, 'Cox\'s Bazar', 2),
(12, 'Cumilla', 2),
(13, 'Feni', 2),
(14, 'Khagrachhari', 2),
(15, 'Lakshmipur', 2),
(16, 'Noakhali', 2),
(17, 'Rangamati', 2),
(18, 'Dhaka', 3),
(19, 'Faridpur', 3),
(20, 'Gazipur', 3),
(21, 'Gopalganj', 3),
(22, 'Kishoreganj', 3),
(23, 'Madaripur', 3),
(24, 'Manikganj', 3),
(25, 'Munshiganj', 3),
(26, 'Narayanganj', 3),
(27, 'Narsingdi', 3),
(28, 'Rajbari', 3),
(29, 'Shariatpur', 3),
(30, 'Tangail', 3),
(31, 'Bagerhat', 4),
(32, 'Chuadanga', 4),
(33, 'Jashore', 4),
(34, 'Jhenaidah', 4),
(35, 'Khulna', 4),
(36, 'Kushtia', 4),
(37, 'Magura', 4),
(38, 'Meherpur', 4),
(39, 'Narail', 4),
(40, 'Satkhira', 4),
(41, 'Jamalpur', 5),
(42, 'Mymensingh', 5),
(43, 'Netrokona', 5),
(44, 'Sherpur', 5),
(45, 'Bogura', 6),
(46, 'Chapai Nawabganj', 6),
(47, 'Joypurhat', 6),
(48, 'Naogaon', 6),
(49, 'Natore', 6),
(50, 'Pabna', 6),
(51, 'Rajshahi', 6),
(52, 'Sirajganj', 6),
(53, 'Dinajpur', 7),
(54, 'Gaibandha', 7),
(55, 'Kurigram', 7),
(56, 'Lalmonirhat', 7),
(57, 'Nilphamari', 7),
(58, 'Panchagarh', 7),
(59, 'Rangpur', 7),
(60, 'Thakurgaon', 7),
(61, 'Habiganj', 8),
(62, 'Moulvibazar', 8),
(63, 'Sunamganj', 8),
(64, 'Sylhet', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
