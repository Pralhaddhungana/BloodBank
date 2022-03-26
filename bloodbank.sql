-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2022 at 02:29 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `bloodinfo`
--

CREATE TABLE `bloodinfo` (
  `bid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `bg` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodinfo`
--

INSERT INTO `bloodinfo` (`bid`, `hid`, `bg`) VALUES
(3, 3, 'A+'),
(4, 3, 'A-'),
(5, 4, 'AB+'),
(6, 4, 'A+'),
(7, 4, 'A-'),
(8, 3, 'B+'),
(9, 3, 'AB-'),
(10, 3, 'O-'),
(11, 3, 'O+'),
(12, 3, 'B-'),
(14, 9, 'A+'),
(15, 9, 'A-'),
(16, 17, 'A+'),
(17, 17, 'A-'),
(18, 17, 'B-'),
(19, 17, 'B+'),
(20, 17, 'AB+'),
(21, 18, 'AB+'),
(22, 18, 'O-'),
(23, 18, 'O+'),
(24, 18, 'AB-');

-- --------------------------------------------------------

--
-- Table structure for table `bloodrequest`
--

CREATE TABLE `bloodrequest` (
  `reqid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `rid` int(11) NOT NULL,
  `bg` varchar(11) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bloodrequest`
--

INSERT INTO `bloodrequest` (`reqid`, `hid`, `rid`, `bg`, `status`) VALUES
(6, 3, 6, 'A+', 'Pending'),
(8, 4, 9, 'AB+', 'Pending'),
(9, 0, 3, '', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `id` int(11) NOT NULL,
  `hname` varchar(100) NOT NULL,
  `hemail` varchar(100) NOT NULL,
  `hpassword` varchar(100) NOT NULL,
  `hphone` varchar(100) NOT NULL,
  `hcity` varchar(100) NOT NULL,
  `hlatitude` double NOT NULL,
  `hlongitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`id`, `hname`, `hemail`, `hpassword`, `hphone`, `hcity`, `hlatitude`, `hlongitude`) VALUES
(3, 'BB', 'BB@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '987456410235', 'kathmandu', 0, 0),
(4, 'kist', 'kist@gmail.com', '987654', '6543219870', 'lalitpur', 0, 0),
(5, 'patan', 'patan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '0156547881', 'lalitpur', 0, 0),
(6, 'himalaya', 'himalaya@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9808928708', 'lalitpur', 0, 0),
(7, 'bir', 'bir@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9876543210', 'kathmandu', 0, 0),
(8, 'gangalal', 'gangalal@gmail.com', 'c33367701511b4f6020ec61ded352059', '9876543210', 'kathmandu', 0, 0),
(9, 'helping hands', 'helping@gmail.com', 'aa7a646a2844db41053f783af40e4042', '9841372413', 'kathmandu', 0, 0),
(10, 'gagalal', 'gagalal@gmail.com', 'c33367701511b4f6020ec61ded352059', '9876543210', 'kathmandu', 0, 0),
(11, 'grand', 'grand@gmail.com', 'c33367701511b4f6020ec61ded352059', '9876543210', 'kathmandu', 0, 0),
(12, 'civil', 'civil@gmail.com', 'c33367701511b4f6020ec61ded352059', '9876543210', 'kathmandu', 0, 0),
(13, 'langtang', 'langtang@gmail.com', 'c33367701511b4f6020ec61ded352059', '9876543210', 'kathmandu', 27.717275081866454, 85.3224283914801),
(14, 'om', 'om@gmail.com', '6c44e5cd17f0019c64b042e4a745412a', '9876543211', 'kathmandu', 0, 0),
(15, 'omshanti', 'omshanti@gmail.com', 'c33367701511b4f6020ec61ded352059', '9876543210', 'kathmandu', 27.746509648938204, 85.33976291002591),
(16, 'omdental', 'omdental@gmail.com', 'c33367701511b4f6020ec61ded352059', '9876543210', 'lalitpur', 27.65166387707991, 85.32696364245263),
(17, 'tilganga', 'tilganga@gmail.com', 'c33367701511b4f6020ec61ded352059', '9876543212', 'kathmandu', 27.70389563411529, 85.35072326660156),
(18, 'cmc', 'cmc@gmail.com', 'c33367701511b4f6020ec61ded352059', '9876543223', 'bharatpur', 27.670016563963433, 84.43793046010362),
(19, 'br', 'br@gmail.com', 'c33367701511b4f6020ec61ded352059', '9876543233', 'lalitpur', 27.65334976790645, 85.35394191741943);

-- --------------------------------------------------------

--
-- Table structure for table `receivers`
--

CREATE TABLE `receivers` (
  `id` int(11) NOT NULL,
  `rname` varchar(100) NOT NULL,
  `remail` varchar(100) NOT NULL,
  `rpassword` varchar(100) NOT NULL,
  `rphone` varchar(100) NOT NULL,
  `rbg` varchar(10) NOT NULL,
  `rcity` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receivers`
--

INSERT INTO `receivers` (`id`, `rname`, `remail`, `rpassword`, `rphone`, `rbg`, `rcity`) VALUES
(3, 'pratik', 'basnetpratik@gmail.com', 'c33367701511b4f6020ec61ded352059', '9808928709', 'A+', 'kathmandu'),
(4, 'pralhad', 'pralhad@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9875643211', 'AB+', 'kathmandu'),
(6, 'susan', 'susan@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9841047237', 'AB+', 'kathmandu'),
(7, 'ram', 'ram@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9876543210', 'B+', 'kathmandu'),
(8, 'pratik', 'paaartik@gmail.com', 'aa7a646a2844db41053f783af40e4042', '9808928709', 'A+', 'kathmandu'),
(9, 'shyam', 'shyam@gmail.com', 'c33367701511b4f6020ec61ded352059', '9876543210', 'A+', 'kathmandu'),
(10, 'dhungey', 'dhungey@gmail.com', 'c33367701511b4f6020ec61ded352059', '9876543210', 'B+', 'kathmandu'),
(11, 'budo', 'budo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '9876543210', 'AB+', 'kathmandu'),
(12, 'hari', 'hari@gmail.com', 'c33367701511b4f6020ec61ded352059', '9876543210', 'B+', 'kathmandu'),
(13, 'ajay', 'ajay@gmail.com', 'c33367701511b4f6020ec61ded352059', '9876543210', 'A+', 'kathmandu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bloodinfo`
--
ALTER TABLE `bloodinfo`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `hid` (`hid`);

--
-- Indexes for table `bloodrequest`
--
ALTER TABLE `bloodrequest`
  ADD PRIMARY KEY (`reqid`),
  ADD KEY `hid` (`hid`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hemail` (`hemail`);

--
-- Indexes for table `receivers`
--
ALTER TABLE `receivers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `remail` (`remail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bloodinfo`
--
ALTER TABLE `bloodinfo`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `bloodrequest`
--
ALTER TABLE `bloodrequest`
  MODIFY `reqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `receivers`
--
ALTER TABLE `receivers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bloodinfo`
--
ALTER TABLE `bloodinfo`
  ADD CONSTRAINT `bloodinfo_ibfk_1` FOREIGN KEY (`hid`) REFERENCES `hospitals` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
