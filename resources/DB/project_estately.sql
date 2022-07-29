-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 15, 2022 at 08:13 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_estately`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` char(10) NOT NULL,
  `street_address` text NOT NULL,
  `district` varchar(50) NOT NULL,
  `division` varchar(50) NOT NULL,
  `latitude` decimal(10,5) DEFAULT NULL,
  `longitude` decimal(10,5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `street_address`, `district`, `division`, `latitude`, `longitude`) VALUES
('06fHm22UeX', '54 North Green Hague Avenue', 'Patuakhali', 'Khulna', '23.48719', '89.74244'),
('0kt6Pbxim1', '17 North Green Oak Way', 'Rangamati', 'Khulna', '25.16720', '89.53129'),
('0XDpVJLSOY', '51 North Green Nobel Avenue', 'Tangail', 'Sylhet', '23.20096', '88.38811'),
('2e66SeY7Zx', '47 North Green Old Boulevard', 'Habiganj', 'Khulna', '26.23185', '92.06541'),
('2Q6GB2tPHQ', '37 North Green Milton St.', 'Joypurhat', 'Khulna', '21.19256', '91.98170'),
('2RhCoFY7Nq', '26 East Green Hague Drive', 'Jhalokati', 'Barishal', '22.05807', '91.64576'),
('2UEJ9k7EQW', '747 South Green Second Road', 'Brahmanbaria', 'Khulna', '22.36573', '89.21492'),
('2X6X6M73uD', '21 North Green Milton Parkway', 'Rangamati', 'Rangpur', '25.41478', '90.76610'),
('386PruOGWL', '625 West Rocky Cowley Way', 'Sirajganj', 'Barishal', '23.38489', '88.82127'),
('40tHGLfPWD', '22 East Rocky Nobel Way', 'Cox\'s Bazar', 'Mymensingh', '23.07203', '92.25810'),
('56LxRD83Um', '868 North Green Milton Road', 'Faridpur', 'Barishal', NULL, '90.04935'),
('5WUr4mLL2A', '563 South Green Milton Street', 'Dinajpur', 'Rajshahi', '25.31484', '89.73866'),
('62TgNdPJLV', '200 South Green Hague Avenue', 'Pirojpur', 'Dhaka', '26.25747', '90.70325'),
('6NFI2L4Cd6', '18 West Green Fabien Way', 'Rangamati', 'Mymensingh', '22.87933', '91.22873'),
('7HUhJ9Ap2P', '856 North Rocky Nobel Parkway', 'Brahmanbaria', 'Rajshahi', '23.59846', '90.25187'),
('7PWHoL1lbj', '478 West Green Hague Parkway', 'Joypurhat', 'Mymensingh', '22.43476', '89.57003'),
('7sY7S29wXa', '658 South Rocky New Way', 'Habiganj', 'Mymensingh', '22.81914', NULL),
('BPGJq3j7QY', '887 North Green Milton Way', 'Thakurgaon', 'Barishal', '21.25344', '88.97468'),
('CpVCTU6BV3', '453 South White Milton Avenue', 'Munshiganj', 'Sylhet', '21.23471', '88.17915'),
('D2CVG7MK3X', '515 South Green Milton Freeway', 'Jhalokati', 'Khulna', '23.06470', '88.27468'),
('em7QjEFoSa', '889 West Green Second Street', 'Nilphamari', 'Khulna', '25.52754', '89.68893'),
('fXHqICmSoo', '20 North Green Cowley Blvd.', 'Shariatpur', 'Chattogram', '23.78562', '89.54886'),
('gWMI5GYIL1', '27 South White Hague Drive', 'Feni', 'Sylhet', '24.21796', '89.46239'),
('H6HiO6NE3f', '25 North Green Milton Avenue', 'Gazipur', 'Rangpur', '25.88839', '90.16118'),
('I360Ao2HAy', '727 North White Second Drive', 'Mymensingh', 'Khulna', NULL, '91.42480'),
('i55BtGJJRE', '463 North Green Second Boulevard', 'Bogura', 'Khulna', '23.33801', '88.44220'),
('iRC3H66UPx', '184 South Green Hague Blvd.', 'Netrokona', 'Mymensingh', '22.64458', '92.33817'),
('iXtOe9IFMF', '22 West White Oak Road', 'Faridpur', 'Dhaka', '25.06098', '91.69259'),
('J701AmjsQI', '250 North Green Nobel Boulevard', 'Bhola', 'Khulna', '23.73312', '91.67719'),
('jG25oTGYMK', '240 East White New Freeway', 'Rangpur', 'Sylhet', '25.82172', '88.78705'),
('JOFH9TTM5C', '532 North Green Milton Street', 'Chandpur', 'Rajshahi', '20.59418', '89.36275'),
('JTQ37vPTFE', '15 West Rocky Hague Road', 'Naogaon', 'Dhaka', '20.89135', '89.98963'),
('JVvABQPbK8', '83 North White Nobel Freeway', 'Bogura', 'Sylhet', NULL, '90.53635'),
('oa6e6bSM26', '13 North Green Milton Freeway', 'Chuadanga', 'Rajshahi', '24.23318', '90.93587'),
('QMLFW3hgMV', '87 North Rocky Second Way', 'Munshiganj', 'Mymensingh', NULL, NULL),
('qPB53UUBgB', '73 South White Clarendon Blvd.', 'Naogaon', 'Dhaka', '23.74838', '91.50115'),
('QSGQdD11KP', '761 North White Hague Road', 'Meherpur', 'Sylhet', '23.06003', '91.78485'),
('R5YE9UVyOR', '958 North Rocky Nobel Way', 'Panchagarh', 'Khulna', NULL, '88.66006'),
('RIyIKUb48G', '18 South White Fabien Road', 'Nilphamari', 'Sylhet', '20.93074', '91.81246'),
('RNKR4dUu6s', '45 East Green Hague Blvd.', 'Faridpur', 'Khulna', '20.79785', '91.27806'),
('rWZOakSz52', '973 West Green First Avenue', 'Kurigram', 'Sylhet', '20.36042', '88.98681'),
('SfcFP342qq', '116 South Green Hague Way', 'Jhalokati', 'Chattogram', '22.51734', '88.11698'),
('tnB32c4GyR', '69 West Green Nobel Way', 'Feni', 'Sylhet', '25.57996', '88.71637'),
('Ts22V8v7SI', '30 South White Second Avenue', 'Munshiganj', 'Barishal', '22.85490', NULL),
('ttV2EW3T76', '46 North Rocky Milton Drive', 'Tangail', 'Chattogram', '20.48987', '91.07993'),
('V5IDUGPzbe', '39 North Green Clarendon Road', 'Chuadanga', 'Khulna', '24.97037', '89.19759'),
('vIBFU4iA36', '703 West Green Cowley Freeway', 'Chuadanga', 'Rangpur', '25.55150', '90.05541'),
('W388ROMD2G', '791 North White First Way', 'Bogura', 'Chattogram', '23.24067', '89.45949'),
('wVkJ6lPM2S', '17 North White Hague Drive', 'Munshiganj', 'Chattogram', '21.38075', '92.27791'),
('XNCTBKGYN2', '23 North Green Hague Freeway', 'Nilphamari', 'Chattogram', '23.28960', '90.09489');

-- --------------------------------------------------------

--
-- Table structure for table `amenity`
--

CREATE TABLE `amenity` (
  `id` char(10) NOT NULL,
  `ac_type` enum('Central','Split','Window') DEFAULT NULL,
  `elevator` tinyint(1) NOT NULL DEFAULT 0,
  `gym` tinyint(1) NOT NULL DEFAULT 0,
  `laundry` tinyint(1) NOT NULL DEFAULT 0,
  `microwave` tinyint(1) NOT NULL DEFAULT 0,
  `parking` tinyint(1) NOT NULL DEFAULT 0,
  `pharmacy` tinyint(1) NOT NULL DEFAULT 0,
  `prayer_area` tinyint(1) NOT NULL DEFAULT 0,
  `refrigerator` tinyint(1) NOT NULL DEFAULT 0,
  `tv` tinyint(1) NOT NULL DEFAULT 0,
  `wheelchair` tinyint(1) NOT NULL DEFAULT 0,
  `wifi` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `amenity`
--

INSERT INTO `amenity` (`id`, `ac_type`, `elevator`, `gym`, `laundry`, `microwave`, `parking`, `pharmacy`, `prayer_area`, `refrigerator`, `tv`, `wheelchair`, `wifi`) VALUES
('06fHm22UeX', NULL, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0, 1),
('0kt6Pbxim1', 'Central', 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1),
('0XDpVJLSOY', 'Central', 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1),
('2e66SeY7Zx', 'Window', 1, 1, 0, 0, 1, 1, 0, 1, 1, 0, 0),
('2Q6GB2tPHQ', 'Central', 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1),
('2RhCoFY7Nq', 'Central', 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1),
('2UEJ9k7EQW', 'Window', 0, 1, 1, 1, 1, 0, 1, 0, 0, 1, 0),
('2X6X6M73uD', 'Split', 0, 1, 0, 0, 1, 1, 0, 1, 1, 0, 1),
('386PruOGWL', 'Central', 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1),
('40tHGLfPWD', 'Central', 0, 0, 0, 1, 0, 0, 1, 1, 1, 1, 0),
('56LxRD83Um', 'Window', 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0),
('5WUr4mLL2A', NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('62TgNdPJLV', NULL, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0, 1),
('6NFI2L4Cd6', 'Window', 1, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1),
('7HUhJ9Ap2P', 'Split', 1, 0, 1, 0, 1, 1, 1, 1, 0, 0, 0),
('7PWHoL1lbj', NULL, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1),
('7sY7S29wXa', NULL, 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1),
('BPGJq3j7QY', 'Central', 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1),
('CpVCTU6BV3', 'Split', 1, 0, 0, 0, 1, 1, 1, 0, 1, 1, 1),
('D2CVG7MK3X', 'Central', 0, 0, 0, 0, 1, 0, 1, 1, 1, 1, 0),
('em7QjEFoSa', 'Central', 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0),
('fXHqICmSoo', 'Central', 1, 1, 1, 0, 0, 0, 0, 1, 0, 1, 1),
('gWMI5GYIL1', 'Central', 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0),
('H6HiO6NE3f', NULL, 0, 1, 0, 1, 0, 0, 0, 0, 1, 1, 1),
('I360Ao2HAy', NULL, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1),
('i55BtGJJRE', NULL, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0),
('iRC3H66UPx', NULL, 1, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1),
('iXtOe9IFMF', NULL, 0, 0, 1, 0, 1, 0, 0, 1, 1, 0, 0),
('J701AmjsQI', NULL, 1, 0, 1, 1, 1, 0, 1, 0, 0, 0, 1),
('jG25oTGYMK', 'Window', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('JOFH9TTM5C', 'Central', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('JTQ37vPTFE', NULL, 1, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0),
('JVvABQPbK8', NULL, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0),
('oa6e6bSM26', 'Central', 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 0),
('QMLFW3hgMV', NULL, 0, 1, 0, 1, 1, 0, 1, 0, 0, 1, 0),
('qPB53UUBgB', NULL, 0, 1, 0, 1, 1, 0, 1, 0, 0, 0, 0),
('QSGQdD11KP', NULL, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1),
('R5YE9UVyOR', 'Central', 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 1),
('RIyIKUb48G', 'Central', 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 0),
('RNKR4dUu6s', NULL, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1),
('rWZOakSz52', 'Split', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1),
('SfcFP342qq', 'Central', 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0),
('tnB32c4GyR', NULL, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0),
('Ts22V8v7SI', 'Central', 1, 0, 0, 1, 0, 1, 1, 0, 0, 0, 1),
('ttV2EW3T76', 'Split', 0, 0, 0, 1, 1, 0, 0, 0, 1, 1, 0),
('V5IDUGPzbe', NULL, 0, 0, 1, 0, 0, 1, 0, 1, 1, 1, 1),
('vIBFU4iA36', NULL, 0, 1, 0, 0, 0, 0, 1, 0, 1, 1, 1),
('W388ROMD2G', 'Split', 0, 1, 1, 0, 1, 0, 0, 1, 0, 1, 1),
('wVkJ6lPM2S', NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1),
('XNCTBKGYN2', 'Central', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE `apartment` (
  `id` char(10) NOT NULL,
  `area` smallint(5) UNSIGNED NOT NULL,
  `bedroom` smallint(5) UNSIGNED NOT NULL,
  `attached_bathroom` smallint(5) UNSIGNED NOT NULL,
  `bathroom` smallint(5) UNSIGNED NOT NULL,
  `balcony` smallint(5) UNSIGNED NOT NULL,
  `kitchen` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`id`, `area`, `bedroom`, `attached_bathroom`, `bathroom`, `balcony`, `kitchen`) VALUES
('0kt6Pbxim1', 31740, 5, 1, 1, 2, 1),
('0XDpVJLSOY', 13473, 2, 2, 3, 3, 1),
('2e66SeY7Zx', 29260, 1, 2, 4, 5, 1),
('2RhCoFY7Nq', 7519, 3, 1, 5, 2, 2),
('2UEJ9k7EQW', 18254, 4, 2, 3, 1, 1),
('2X6X6M73uD', 23047, 4, 2, 4, 3, 1),
('386PruOGWL', 18121, 6, 2, 2, 3, 1),
('40tHGLfPWD', 24609, 6, 3, 3, 2, 2),
('5WUr4mLL2A', 30763, 6, 3, 5, 5, 2),
('6NFI2L4Cd6', 31611, 2, 3, 4, 1, 2),
('7PWHoL1lbj', 5895, 4, 1, 4, 1, 2),
('BPGJq3j7QY', 1095, 6, 2, 1, 3, 2),
('CpVCTU6BV3', 17571, 2, 3, 5, 3, 1),
('D2CVG7MK3X', 10271, 5, 3, 4, 4, 1),
('em7QjEFoSa', 31934, 2, 1, 4, 3, 2),
('fXHqICmSoo', 5354, 1, 2, 2, 3, 2),
('H6HiO6NE3f', 13968, 6, 1, 5, 0, 2),
('I360Ao2HAy', 8330, 2, 2, 2, 4, 2),
('iXtOe9IFMF', 21929, 6, 2, 2, 4, 1),
('J701AmjsQI', 5426, 2, 2, 1, 2, 1),
('jG25oTGYMK', 24192, 5, 2, 4, 4, 2),
('oa6e6bSM26', 13557, 1, 1, 4, 4, 2),
('QMLFW3hgMV', 20765, 4, 2, 3, 1, 1),
('QSGQdD11KP', 6786, 5, 2, 3, 0, 2),
('rWZOakSz52', 30852, 1, 1, 4, 4, 2),
('SfcFP342qq', 31085, 5, 3, 2, 1, 1),
('tnB32c4GyR', 1060, 2, 2, 4, 0, 1),
('Ts22V8v7SI', 4596, 3, 3, 4, 2, 2),
('ttV2EW3T76', 11503, 6, 3, 4, 2, 1),
('XNCTBKGYN2', 12953, 3, 2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` char(10) NOT NULL,
  `property_id` char(10) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `reservation_fee` decimal(15,2) UNSIGNED NOT NULL,
  `status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending',
  `remarks` tinytext DEFAULT NULL,
  `applied_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `property_id`, `user_email`, `reservation_fee`, `status`, `remarks`, `applied_at`, `updated_at`) VALUES
('a0P1CkPDPC', 'SfcFP342qq', 'mjsq37@example.com', '10500.21', 'Approved', 'Anne bought new car. Anne is shopping. John bought new car. Anne has free time. Tony has free time. ', '2008-06-30 08:50:57', '2008-05-23 21:18:40'),
('a0PcoH6II5', 'RIyIKUb48G', 'xtnb32@example.com', '25126.72', 'Approved', 'Tony is shopping. Anne is walking. John bought new car. ', '2008-03-24 16:46:16', '2008-05-24 23:47:52'),
('a0RG1ta456', 'SfcFP342qq', 'vpidu26@example.com', '9359.35', 'Pending', 'Anne has free time. John is shopping. Tony bought new car. John is walking. John is walking. ', '2008-03-15 13:06:43', '2008-10-26 02:01:28'),
('a0tHGLfPWD', 'JOFH9TTM5C', 'imefxh@example.com', '8877.28', 'Rejected', 'John is walking. Anne is walking. ', '2008-07-07 05:40:11', '2008-02-12 05:05:24'),
('a1288WC8IR', 'RIyIKUb48G', 'yrwzoaks@example.com', '11933.32', 'Rejected', 'John bought new car. Tony bought new car. ', '2008-12-23 19:19:23', '2008-11-22 15:18:29'),
('a1GPBE59kM', 'vIBFU4iA36', 'mjsq37@example.com', '13298.17', 'Rejected', 'Anne is walking. Tony is walking. John has free time. John bought new car. Tony has free time. ', '2008-04-29 08:18:03', '2008-06-12 22:38:29'),
('a1Rk40b6FC', 'RNKR4dUu6s', 'mjsq37@example.com', '11065.33', 'Pending', 'Anne bought new car. Tony bought new car. Tony has free time. John has free time. Tony has free time. ', '2008-10-15 09:28:01', '2008-06-29 04:51:48'),
('a1U154K3ft', '62TgNdPJLV', 'mjsq37@example.com', '3959.59', 'Approved', 'Anne bought new car. Anne bought new car. Anne is shopping. John bought new car. John has free time. ', '2008-11-27 10:22:42', '2008-03-03 00:04:14'),
('a1UMN5q56G', '6NFI2L4Cd6', 'vpidu26@example.com', '14571.44', 'Approved', 'Anne bought new car. Anne has free time. Tony is shopping. John bought new car. John bought new car. ', '2008-03-10 04:58:47', '2008-11-01 08:35:26'),
('a23MxeyhCR', 'vIBFU4iA36', 'imefxh@example.com', '42064.71', 'Rejected', 'Tony bought new car. Anne is shopping. ', '2008-07-29 12:14:45', '2008-12-07 15:04:29'),
('a28PSMFT7H', 'iXtOe9IFMF', 'imefxh@example.com', '7906.28', 'Rejected', 'Tony bought new car. Anne is shopping. ', '2008-02-23 00:55:27', '2008-05-31 13:10:35'),
('a2CVG7MK3X', '386PruOGWL', 'mjsq37@example.com', '44585.18', 'Pending', 'Anne bought new car. John is shopping. Tony has free time. John has free time. John has free time. ', '2008-06-10 08:14:41', '2008-08-03 07:29:33'),
('a2DpbZLTMw', '62TgNdPJLV', 'yrwzoaks@example.com', '1175.55', 'Pending', NULL, '2008-06-15 14:16:27', '2008-04-03 15:30:13'),
('a2G1DmsGGC', 'fXHqICmSoo', 'mjsq37@example.com', '15560.84', 'Approved', 'Anne is walking. Anne bought new car. Tony is walking. Tony has free time. John bought new car. ', '2008-03-27 04:08:44', '2008-04-18 18:36:53'),
('a2g8m4sacD', 'oa6e6bSM26', 'yrwzoaks@example.com', '3623.81', 'Rejected', 'Tony bought new car. Tony has free time. Tony bought new car. ', '2008-04-21 00:52:41', '2008-04-14 21:59:09'),
('a2LqK9NW4X', 'D2CVG7MK3X', 'yrwzoaks@example.com', '9143.48', 'Pending', 'Anne bought new car. Anne bought new car. John bought new car. ', '2008-06-13 13:11:26', '2008-07-03 22:54:32'),
('a2PI7tFLTI', 'QSGQdD11KP', 'vpidu26@example.com', '49689.08', 'Pending', 'John bought new car. John has free time. Anne bought new car. John is shopping. Anne bought new car. ', '2008-03-03 00:15:42', '2008-10-11 00:56:21'),
('a2TgNdPJLV', '62TgNdPJLV', 'mjsq37@example.com', '21259.19', 'Pending', NULL, '2008-03-19 13:08:55', '2008-10-08 19:47:59'),
('a2V8NOaVPW', '7PWHoL1lbj', 'mjsq37@example.com', '34782.81', 'Approved', 'Tony bought new car. Tony has free time. John bought new car. John is shopping. ', '2008-05-29 15:11:44', '2008-10-16 05:22:55'),
('a2Wf7Vm6k9', '2UEJ9k7EQW', 'imefxh@example.com', '32495.62', 'Pending', 'Anne has free time. Anne bought new car. Tony bought new car. ', '2008-05-01 02:04:46', '2008-08-29 22:45:08'),
('a31R7E09AF', 'RNKR4dUu6s', 'mjsq37@example.com', '37253.03', 'Pending', 'Anne is walking. John is shopping. Tony bought new car. John bought new car. Tony bought new car. ', '2008-06-17 12:45:52', '2008-10-31 07:40:52'),
('a360Ao2HAy', 'rWZOakSz52', 'yrwzoaks@example.com', '4014.11', 'Rejected', 'Anne bought new car. Anne bought new car. Tony has free time. John bought new car. John is walking. ', '2008-05-14 23:44:07', '2008-08-21 10:54:52'),
('a388ROMD2G', 'i55BtGJJRE', 'mjsq37@example.com', '22447.82', 'Pending', 'John has free time. Anne is shopping. John bought new car. Anne has free time. Anne is shopping. ', '2008-12-07 04:43:34', '2008-12-05 16:07:23'),
('a3Bqp3evIw', 'CpVCTU6BV3', 'xtnb32@example.com', '34809.19', 'Approved', NULL, '2008-05-05 21:33:22', '2008-04-30 06:23:25'),
('a3CQXtoKJF', '7sY7S29wXa', 'mjsq37@example.com', '24910.22', 'Pending', 'Tony is shopping. John bought new car. ', '2008-10-18 04:43:48', '2008-10-13 19:52:23'),
('a3VHPJVkLT', 'V5IDUGPzbe', 'vpidu26@example.com', '32050.60', 'Pending', 'John is walking. Anne is walking. Tony bought new car. Tony bought new car. John has free time. ', '2008-08-24 13:44:56', '2008-02-09 19:01:54'),
('a3xDEi90LL', '6NFI2L4Cd6', 'vpidu26@example.com', '28892.95', 'Pending', 'Anne bought new car. John is walking. Anne bought new car. Tony bought new car. ', '2008-03-09 12:09:14', '2008-10-30 09:27:31'),
('a4FPHDOvlB', '2e66SeY7Zx', 'xtnb32@example.com', '37847.97', 'Approved', 'Tony has free time. Anne is walking. Tony is shopping. ', '2008-10-24 03:58:26', '2008-02-18 17:02:25'),
('a4NeeT3DeF', '56LxRD83Um', 'xtnb32@example.com', '7429.68', 'Approved', 'John is shopping. Tony has free time. John bought new car. John has free time. Tony has free time. ', '2008-07-04 13:45:38', '2008-06-29 18:59:50'),
('a4t2rLJNX2', 'V5IDUGPzbe', 'xtnb32@example.com', '18065.26', 'Pending', 'Anne bought new car. Tony is walking. Anne bought new car. Tony bought new car. John is shopping. ', '2008-10-03 05:41:38', '2008-04-29 13:10:13'),
('a4U61t4KUK', 'em7QjEFoSa', 'mjsq37@example.com', '43740.88', 'Rejected', 'Tony has free time. Anne is walking. Anne has free time. Tony bought new car. Anne has free time. ', '2008-11-18 02:11:16', '2008-05-09 15:19:15'),
('a4vV52nnEU', 'J701AmjsQI', 'imefxh@example.com', '29317.16', 'Approved', 'Tony has free time. John is shopping. ', '2008-11-21 07:43:41', '2008-01-25 19:46:00'),
('a55BtGJJRE', '40tHGLfPWD', 'xtnb32@example.com', '45558.67', 'Pending', 'Tony has free time. Anne bought new car. ', '2008-01-20 00:52:59', '2008-12-14 10:07:55'),
('a571pdEROT', 'tnB32c4GyR', 'vpidu26@example.com', '44549.86', 'Rejected', 'Anne has free time. Tony bought new car. John has free time. ', '2008-08-02 08:03:52', '2008-01-17 14:17:39'),
('a585IBkTfq', '0XDpVJLSOY', 'xtnb32@example.com', '22874.86', 'Pending', 'John bought new car. Anne has free time. Tony has free time. John is walking. Tony has free time. ', '2008-07-11 12:45:14', '2008-04-10 14:17:27'),
('a5FwWx3R3V', 'JOFH9TTM5C', 'vpidu26@example.com', '39183.03', 'Pending', 'Anne is walking. Anne bought new car. John is shopping. Tony bought new car. Tony bought new car. ', '2008-08-19 04:13:35', '2008-05-09 08:02:21'),
('a5GM1AX2Xm', 'H6HiO6NE3f', 'vpidu26@example.com', '34264.65', 'Approved', 'Anne bought new car. Tony has free time. Tony is walking. Anne has free time. Tony is shopping. ', '2008-03-02 22:32:59', '2008-07-06 21:41:41'),
('a5IDUGPzbe', 'jG25oTGYMK', 'vpidu26@example.com', '36687.34', 'Pending', 'Tony is shopping. Tony has free time. John has free time. Tony has free time. John has free time. ', '2008-09-24 05:14:49', '2008-09-24 04:27:35'),
('a5lV6fIUnV', 'vIBFU4iA36', 'imefxh@example.com', '48059.45', 'Pending', 'Anne bought new car. Anne is shopping. John bought new car. Tony has free time. John bought new car. ', '2008-08-06 02:39:32', '2008-12-26 23:23:25'),
('a5Xi02DDOi', '2e66SeY7Zx', 'imefxh@example.com', '22685.96', 'Rejected', 'Tony bought new car. Tony has free time. John is walking. Tony is walking. Tony has free time. ', '2008-08-12 05:41:59', '2008-09-27 18:05:45'),
('a5YE9UVyOR', 'wVkJ6lPM2S', 'vpidu26@example.com', '24629.15', 'Pending', 'Tony has free time. Tony is walking. John has free time. ', '2008-07-25 22:57:51', '2008-10-13 23:19:48'),
('a65ebQo3kf', '2Q6GB2tPHQ', 'xtnb32@example.com', '5537.15', 'Pending', 'Anne bought new car. Tony is walking. Anne is walking. John is walking. John has free time. ', '2008-03-02 11:38:05', '2008-10-29 17:53:05'),
('a6B8du8241', '56LxRD83Um', 'vpidu26@example.com', '35694.77', 'Pending', 'Anne is walking. Tony is shopping. Tony bought new car. Anne has free time. Anne has free time. ', '2008-06-27 08:18:49', '2008-06-13 03:51:58'),
('a6fHm22UeX', 'D2CVG7MK3X', 'imefxh@example.com', '14681.63', 'Approved', 'Anne has free time. Tony bought new car. John has free time. John is shopping. John is walking. ', '2008-07-08 20:21:45', '2008-08-22 13:56:46'),
('a6HiO6NE3f', '0XDpVJLSOY', 'yrwzoaks@example.com', '23694.42', 'Approved', 'Tony bought new car. Anne is shopping. ', '2008-03-27 15:42:47', '2008-09-17 18:52:32'),
('a6KN4q7JhY', 'oa6e6bSM26', 'mjsq37@example.com', '1100.90', 'Approved', 'Anne is shopping. Tony is shopping. John bought new car. ', '2008-06-15 21:37:32', '2008-07-29 02:30:13'),
('a6LxRD83Um', 'qPB53UUBgB', 'vpidu26@example.com', '6707.17', 'Pending', 'Tony has free time. Anne has free time. John bought new car. Tony has free time. Tony has free time. ', '2008-10-31 03:46:18', '2008-08-15 01:59:41'),
('a6VRjkHoFp', 'XNCTBKGYN2', 'imefxh@example.com', '17382.64', 'Pending', 'John bought new car. John has free time. ', '2008-08-04 09:58:54', '2008-03-27 09:13:51'),
('a6YWCeWwXn', 'BPGJq3j7QY', 'mjsq37@example.com', '22492.17', 'Pending', 'Tony bought new car. Anne has free time. Anne bought new car. John bought new car. Tony has free time. ', '2008-05-31 05:21:45', '2008-07-10 08:19:03'),
('a701AmjsQI', '62TgNdPJLV', 'imefxh@example.com', '1975.97', 'Pending', 'Tony bought new car. John has free time. Tony bought new car. Tony is shopping. John has free time. ', '2008-03-14 05:11:35', '2008-09-28 12:53:49'),
('a784Ip1b4r', 'tnB32c4GyR', 'mjsq37@example.com', '33048.76', 'Approved', 'John bought new car. Anne has free time. Tony bought new car. John bought new car. Anne has free time. ', '2008-07-16 01:26:00', '2008-12-09 06:29:57'),
('a7BIFLnwbX', 'RIyIKUb48G', 'imefxh@example.com', '17915.04', 'Pending', 'Anne bought new car. Anne bought new car. ', '2008-09-18 23:33:51', '2008-05-15 08:13:49'),
('a7EGDK22SW', 'SfcFP342qq', 'mjsq37@example.com', '2324.84', 'Pending', 'Anne is shopping. Anne is walking. John is walking. ', '2008-03-07 23:31:15', '2008-10-12 01:40:03'),
('a7lVhS4O3C', '0kt6Pbxim1', 'vpidu26@example.com', '25020.01', 'Approved', 'Anne has free time. Anne bought new car. ', '2008-04-07 21:27:29', '2008-11-29 21:17:21'),
('a7MKS4Lm6M', 'I360Ao2HAy', 'vpidu26@example.com', '6574.47', 'Approved', NULL, '2008-01-17 04:27:51', '2008-05-22 18:51:17'),
('a7U6LOvpeW', '7sY7S29wXa', 'mjsq37@example.com', '23159.35', 'Pending', 'Anne is walking. Tony bought new car. Tony bought new car. Anne bought new car. Tony has free time. ', '2008-02-17 15:10:43', '2008-06-17 06:59:37'),
('a7UuRZET6L', '2RhCoFY7Nq', 'mjsq37@example.com', '32835.55', 'Pending', 'Anne bought new car. John is shopping. Tony has free time. John is shopping. Anne has free time. ', '2008-05-22 01:23:58', '2008-07-14 14:52:10'),
('a86BQXLM8L', 'JVvABQPbK8', 'imefxh@example.com', '38938.87', 'Pending', 'Anne is shopping. Tony is walking. Tony bought new car. John is walking. Tony bought new car. ', '2008-07-04 21:28:49', '2008-02-17 11:47:54'),
('a86PruOGWL', 'iXtOe9IFMF', 'yrwzoaks@example.com', '13078.70', 'Pending', NULL, '2008-09-23 00:42:19', '2008-08-03 21:58:02'),
('a8jG4UI8A0', 'SfcFP342qq', 'xtnb32@example.com', '23855.85', 'Rejected', 'Anne has free time. Tony is shopping. John bought new car. Tony bought new car. John has free time. ', '2008-12-02 17:47:29', '2008-04-03 03:58:39'),
('a8nAxLwmCd', 'JOFH9TTM5C', 'imefxh@example.com', '37225.59', 'Approved', NULL, '2008-10-28 22:54:52', '2008-09-28 06:02:35'),
('a8YIDXPEy0', 'gWMI5GYIL1', 'yrwzoaks@example.com', '16007.59', 'Approved', 'John has free time. Anne is shopping. Tony bought new car. Tony is walking. Anne is shopping. ', '2008-02-13 00:06:06', '2008-10-19 12:33:44'),
('a8ZIxdz7C5', 'oa6e6bSM26', 'imefxh@example.com', '33639.58', 'Pending', 'John bought new car. Tony is walking. John has free time. Tony bought new car. ', '2008-09-20 23:03:24', '2008-02-10 01:40:55'),
('a97uI1nicK', 'qPB53UUBgB', 'yrwzoaks@example.com', '17075.20', 'Rejected', 'Tony has free time. Tony is shopping. Tony has free time. John has free time. ', '2008-04-10 07:17:30', '2008-06-29 16:23:40'),
('a9CG4K3TNQ', 'QMLFW3hgMV', 'vpidu26@example.com', '20675.60', 'Pending', 'Anne bought new car. Tony is shopping. John is walking. Tony has free time. Tony has free time. ', '2008-02-02 05:12:43', '2008-03-17 09:41:37'),
('aA46OIdEwZ', 'XNCTBKGYN2', 'yrwzoaks@example.com', '3735.87', 'Pending', 'Anne is walking. Anne has free time. Tony is walking. Tony is walking. Tony has free time. ', '2008-02-26 13:27:26', '2008-05-11 17:31:18'),
('aa6e6bSM26', '0XDpVJLSOY', 'yrwzoaks@example.com', '17022.35', 'Approved', 'Anne bought new car. John is walking. Anne bought new car. Tony has free time. John is walking. ', '2008-07-29 18:43:17', '2008-05-19 19:03:23'),
('aB25INYw1V', 'gWMI5GYIL1', 'imefxh@example.com', '30673.02', 'Rejected', 'Anne has free time. Tony is shopping. John is shopping. Anne has free time. Tony is shopping. ', '2008-11-22 09:25:39', '2008-05-08 22:06:26'),
('aB4hehVB2H', 'jG25oTGYMK', 'mjsq37@example.com', '1520.50', 'Approved', 'Tony has free time. John is shopping. John has free time. Anne has free time. ', '2008-05-11 12:17:16', '2008-12-30 12:28:43'),
('abDedAZWT1', '06fHm22UeX', 'imefxh@example.com', '44861.46', 'Approved', 'Anne bought new car. Anne is shopping. ', '2008-08-07 13:22:07', '2008-12-20 00:41:51'),
('abOpSOfrHL', '56LxRD83Um', 'xtnb32@example.com', '37257.47', 'Pending', 'Tony is shopping. Tony bought new car. Tony is walking. John bought new car. Tony is walking. ', '2008-11-04 15:11:05', '2008-02-29 01:49:04'),
('aBwv6m2LVY', 'RIyIKUb48G', 'imefxh@example.com', '29470.38', 'Pending', 'Tony bought new car. Anne is walking. John is walking. Anne has free time. Anne has free time. ', '2008-06-04 07:12:23', '2008-10-10 06:12:20'),
('aBx8zVI482', 'H6HiO6NE3f', 'imefxh@example.com', '17164.03', 'Pending', 'Anne bought new car. Tony is shopping. Tony is shopping. John has free time. ', '2008-09-23 14:49:53', '2008-08-19 21:48:55'),
('abYKm45I1S', 'ttV2EW3T76', 'vpidu26@example.com', '35575.74', 'Pending', 'Anne is shopping. Anne is shopping. Tony has free time. Tony is shopping. Tony has free time. ', '2008-03-27 07:29:39', '2008-11-11 09:33:09'),
('aBZ9vONPHc', 'JVvABQPbK8', 'yrwzoaks@example.com', '29694.27', 'Rejected', 'John bought new car. John is walking. John has free time. ', '2008-10-01 10:44:08', '2008-08-14 22:24:45'),
('acaXsQCiWE', '62TgNdPJLV', 'xtnb32@example.com', '2760.17', 'Approved', NULL, '2008-05-15 01:52:54', '2008-01-31 22:15:16'),
('aCd863H7Rm', 'iRC3H66UPx', 'xtnb32@example.com', '46044.77', 'Pending', 'Anne is shopping. Anne bought new car. Anne is shopping. Anne is walking. Anne has free time. ', '2008-08-17 20:16:52', '2008-05-31 03:43:09'),
('aclEigUuXf', '0kt6Pbxim1', 'yrwzoaks@example.com', '33904.02', 'Pending', NULL, '2008-06-03 11:19:11', '2008-03-19 10:34:50'),
('acO1qKAK6B', 'gWMI5GYIL1', 'yrwzoaks@example.com', '41079.99', 'Rejected', 'John is walking. Anne is shopping. Tony bought new car. Anne bought new car. Anne bought new car. ', '2008-06-16 03:59:49', '2008-06-28 16:19:04'),
('aCOauLRCGN', '0XDpVJLSOY', 'xtnb32@example.com', '26170.56', 'Approved', 'John has free time. Tony bought new car. Tony has free time. Anne bought new car. Tony has free time. ', '2008-03-04 15:35:05', '2008-08-01 23:46:16'),
('acwLf5vRI7', 'H6HiO6NE3f', 'vpidu26@example.com', '40281.68', 'Rejected', 'Anne bought new car. John is walking. ', '2008-11-27 01:10:09', '2008-12-22 06:08:55'),
('ad6175GqCu', '6NFI2L4Cd6', 'yrwzoaks@example.com', '40686.66', 'Approved', 'Anne bought new car. Anne bought new car. Tony has free time. Anne has free time. Tony has free time. ', '2008-08-10 16:21:03', '2008-08-30 07:28:06'),
('aDENqvGrIQ', '56LxRD83Um', 'vpidu26@example.com', '19698.56', 'Pending', 'Anne has free time. Tony has free time. John bought new car. Anne has free time. Tony has free time. ', '2008-07-05 06:30:09', '2008-06-24 05:44:16'),
('ae43RdHMQB', '2X6X6M73uD', 'yrwzoaks@example.com', '32330.84', 'Pending', 'Tony is walking. John has free time. Tony bought new car. John bought new car. John has free time. ', '2008-08-16 20:12:17', '2008-12-22 05:00:32'),
('aE460C72Jg', '2Q6GB2tPHQ', 'imefxh@example.com', '36432.73', 'Pending', 'Anne is walking. Anne has free time. Tony bought new car. John bought new car. Tony is shopping. ', '2008-08-12 11:58:10', '2008-09-21 17:36:44'),
('ae4TbM7SIM', 'ttV2EW3T76', 'mjsq37@example.com', '48825.78', 'Rejected', 'John bought new car. Anne is walking. John is walking. Anne bought new car. Tony has free time. ', '2008-07-03 05:06:54', '2008-05-27 14:50:16'),
('ae66SeY7Zx', 'tnB32c4GyR', 'imefxh@example.com', '14509.41', 'Approved', 'Anne bought new car. Anne bought new car. ', '2008-07-02 22:13:24', '2008-11-12 22:46:17'),
('aE67aPf3wS', '6NFI2L4Cd6', 'xtnb32@example.com', '16352.48', 'Pending', 'Anne has free time. Anne has free time. Tony bought new car. John is walking. Tony has free time. ', '2008-03-30 10:45:40', '2008-12-10 05:31:24'),
('ae7Mvsk8GI', '2UEJ9k7EQW', 'imefxh@example.com', '15855.40', 'Rejected', 'Anne has free time. Anne has free time. Tony has free time. Tony has free time. Tony is shopping. ', '2008-04-18 01:52:22', '2008-07-28 19:36:29'),
('aEDVbFLYo7', 'J701AmjsQI', 'mjsq37@example.com', '44221.67', 'Approved', 'Anne is walking. Anne has free time. John has free time. Tony has free time. Tony bought new car. ', '2008-08-23 22:19:57', '2008-08-01 01:37:50'),
('aEHrD384TV', 'D2CVG7MK3X', 'yrwzoaks@example.com', '22780.15', 'Approved', NULL, '2008-09-23 18:25:30', '2008-01-27 01:14:34'),
('aeoDHo3OBp', '386PruOGWL', 'vpidu26@example.com', '23305.88', 'Pending', 'Anne is walking. Anne bought new car. Anne bought new car. ', '2008-11-02 18:19:01', '2008-05-20 20:53:11'),
('aeRpl4UVv5', 'QMLFW3hgMV', 'imefxh@example.com', '20728.18', 'Approved', 'John bought new car. Tony bought new car. ', '2008-08-09 13:16:25', '2008-03-29 02:36:30'),
('aeZKA5aqU7', '2X6X6M73uD', 'mjsq37@example.com', '28671.79', 'Approved', 'Anne bought new car. John is shopping. ', '2008-05-17 01:44:06', '2008-06-24 02:25:48'),
('aF11TE4dH2', 'jG25oTGYMK', 'xtnb32@example.com', '21730.65', 'Pending', 'Anne bought new car. Anne is walking. John bought new car. John bought new car. Tony has free time. ', '2008-02-16 15:00:12', '2008-07-08 00:59:30'),
('aF3gEzcYYh', 'SfcFP342qq', 'mjsq37@example.com', '37385.56', 'Pending', 'John bought new car. Anne bought new car. Anne has free time. Tony has free time. Anne is walking. ', '2008-11-05 11:07:46', '2008-02-04 18:57:45'),
('aF7U8dxm4p', 'gWMI5GYIL1', 'imefxh@example.com', '46876.96', 'Approved', 'John bought new car. Anne bought new car. Anne is walking. John is walking. ', '2008-03-07 23:06:26', '2008-12-09 15:17:52'),
('afcFP342qq', '0kt6Pbxim1', 'vpidu26@example.com', '22844.99', 'Rejected', 'Anne is shopping. Anne bought new car. John is walking. ', '2008-03-26 00:49:47', '2008-11-03 22:41:07'),
('aFFyCMWGcN', 'V5IDUGPzbe', 'xtnb32@example.com', '7454.61', 'Pending', 'John is shopping. Anne bought new car. John bought new car. Tony has free time. Tony has free time. ', '2008-01-27 15:54:57', '2008-12-15 23:05:45'),
('afluNL7L44', 'SfcFP342qq', 'xtnb32@example.com', '24860.90', 'Pending', 'Anne has free time. Tony has free time. Anne is shopping. ', '2008-08-04 16:07:53', '2008-08-07 00:01:21'),
('aFmSNdQ36t', 'rWZOakSz52', 'mjsq37@example.com', '13402.19', 'Rejected', 'Anne bought new car. John has free time. Anne has free time. Tony has free time. Tony is walking. ', '2008-07-04 05:25:25', '2008-11-26 12:00:15'),
('aFTD91SVHj', 'rWZOakSz52', 'yrwzoaks@example.com', '17955.80', 'Pending', 'Tony bought new car. Tony is walking. John bought new car. Tony has free time. Tony has free time. ', '2008-01-08 21:20:11', '2008-12-06 17:39:21'),
('aG25oTGYMK', 'SfcFP342qq', 'xtnb32@example.com', '13370.35', 'Pending', 'John bought new car. Anne is walking. Anne bought new car. ', '2008-08-08 17:24:37', '2008-08-16 04:38:25'),
('ag54fOUF8h', 'RIyIKUb48G', 'yrwzoaks@example.com', '13478.34', 'Pending', 'Anne bought new car. Anne bought new car. Anne is walking. John bought new car. Tony has free time. ', '2008-08-21 18:03:14', '2008-03-16 00:38:51'),
('aGa33nd3xZ', 'wVkJ6lPM2S', 'yrwzoaks@example.com', '17700.25', 'Pending', NULL, '2008-05-25 04:57:07', '2008-06-08 06:29:44'),
('aGM7GOWHW0', 'fXHqICmSoo', 'imefxh@example.com', '8256.77', 'Pending', 'Anne bought new car. Tony is shopping. Tony bought new car. John bought new car. John has free time. ', '2008-03-06 05:09:38', '2008-03-12 17:43:04'),
('aGpsq7Q1G1', '7sY7S29wXa', 'yrwzoaks@example.com', '17500.37', 'Pending', 'John is walking. Anne is shopping. ', '2008-08-13 23:33:57', '2008-06-07 02:08:49'),
('aGw7Kqb14V', 'Ts22V8v7SI', 'mjsq37@example.com', '11969.15', 'Pending', 'Anne bought new car. Anne bought new car. ', '2008-12-29 15:32:46', '2008-01-02 17:30:53'),
('agz4CloWVd', '0kt6Pbxim1', 'xtnb32@example.com', '37863.03', 'Rejected', 'Anne is walking. Anne is walking. Tony has free time. John has free time. John is shopping. ', '2008-01-07 21:01:12', '2008-05-26 16:15:47'),
('aH6OqOTSQw', 'QMLFW3hgMV', 'xtnb32@example.com', '9072.29', 'Pending', 'Anne has free time. Anne is shopping. Tony has free time. Anne is shopping. John has free time. ', '2008-02-13 19:53:24', '2008-04-11 15:55:51'),
('ah8D5IJ0RG', 'gWMI5GYIL1', 'mjsq37@example.com', '9246.57', 'Rejected', 'Tony bought new car. John bought new car. Tony is shopping. John has free time. Anne is walking. ', '2008-12-05 16:01:08', '2008-06-06 04:10:32'),
('aHCTn23tSB', 'CpVCTU6BV3', 'mjsq37@example.com', '3112.91', 'Approved', 'Anne bought new car. Anne has free time. Anne has free time. Tony bought new car. Tony is shopping. ', '2008-07-15 16:21:01', '2008-09-13 11:46:48'),
('aHCUGPlp7N', 'vIBFU4iA36', 'vpidu26@example.com', '16287.71', 'Approved', NULL, '2008-05-12 22:14:45', '2008-07-08 23:36:49'),
('aHG77WuCqP', '2e66SeY7Zx', 'mjsq37@example.com', '7892.78', 'Pending', 'Tony bought new car. Anne has free time. Tony is walking. Tony is walking. John bought new car. ', '2008-09-13 05:40:39', '2008-11-30 07:01:22'),
('aHnhp3JqID', '5WUr4mLL2A', 'yrwzoaks@example.com', '47704.70', 'Approved', 'Tony has free time. John bought new car. Anne bought new car. John is shopping. Tony has free time. ', '2008-12-27 06:24:36', '2008-03-08 07:58:56'),
('aHo8RER21j', '0kt6Pbxim1', 'imefxh@example.com', '14261.16', 'Rejected', 'Anne bought new car. Anne has free time. Anne bought new car. John is shopping. Tony has free time. ', '2008-06-22 12:21:20', '2008-04-26 13:14:06'),
('aHUhJ9Ap2P', '40tHGLfPWD', 'vpidu26@example.com', '47186.86', 'Approved', 'Tony bought new car. John is shopping. ', '2008-12-13 16:58:39', '2008-09-28 08:19:03'),
('aI18DT70s2', 'Ts22V8v7SI', 'yrwzoaks@example.com', '48533.67', 'Approved', 'John bought new car. Anne is shopping. ', '2008-04-04 03:49:46', '2008-07-07 20:49:55'),
('aI3B3v8RVD', 'JVvABQPbK8', 'imefxh@example.com', '532.75', 'Rejected', NULL, '2008-03-01 23:00:15', '2008-06-11 11:03:00'),
('aIb9L1RODJ', '0kt6Pbxim1', 'yrwzoaks@example.com', '32320.31', 'Rejected', NULL, '2008-05-31 07:26:50', '2008-03-12 20:31:24'),
('aIBFU4iA36', '2UEJ9k7EQW', 'xtnb32@example.com', '16322.63', 'Pending', 'John bought new car. John has free time. John bought new car. Tony is walking. John is walking. ', '2008-02-21 17:33:34', '2008-04-11 22:29:42'),
('aIBTBAwvwS', '62TgNdPJLV', 'vpidu26@example.com', '36017.64', 'Rejected', 'John has free time. John is shopping. ', '2008-08-11 23:36:31', '2008-07-28 09:51:45'),
('aIyIKUb48G', '40tHGLfPWD', 'xtnb32@example.com', '27229.64', 'Rejected', 'Anne has free time. Anne is walking. Anne bought new car. John bought new car. ', '2008-09-15 04:33:39', '2008-04-02 05:23:17'),
('ajNQSffMwb', '62TgNdPJLV', 'imefxh@example.com', '48348.64', 'Pending', 'Anne has free time. John is shopping. Tony bought new car. Tony has free time. John bought new car. ', '2008-03-09 17:18:30', '2008-09-25 18:43:24'),
('aJSHETCB4F', 'CpVCTU6BV3', 'imefxh@example.com', '44394.95', 'Approved', 'Anne bought new car. Tony is walking. Anne has free time. John bought new car. Tony has free time. ', '2008-06-16 06:04:30', '2008-07-19 12:25:53'),
('ajY86F5WvQ', 'iXtOe9IFMF', 'xtnb32@example.com', '40952.33', 'Pending', 'Tony has free time. Anne is walking. John bought new car. Tony bought new car. Tony bought new car. ', '2008-04-18 02:01:12', '2008-09-23 18:16:54'),
('ak38YjFCPc', '62TgNdPJLV', 'mjsq37@example.com', '6310.01', 'Pending', 'Anne has free time. Anne has free time. ', '2008-07-26 00:36:55', '2008-06-23 18:45:06'),
('ak3r1WreQq', 'CpVCTU6BV3', 'mjsq37@example.com', '29267.73', 'Pending', 'Anne has free time. Anne is walking. Tony has free time. John is shopping. Tony has free time. ', '2008-11-03 05:51:37', '2008-04-21 04:37:16'),
('aK6RJ8vY7G', 'Ts22V8v7SI', 'imefxh@example.com', '8935.04', 'Rejected', NULL, '2008-12-20 23:06:44', '2008-12-14 21:31:12'),
('akEhK1b1Wy', 'vIBFU4iA36', 'mjsq37@example.com', '48949.93', 'Pending', 'John bought new car. John bought new car. Tony bought new car. Tony bought new car. Tony bought new car. ', '2008-12-23 12:52:31', '2008-09-29 15:33:59'),
('aKIU2B8eKH', 'Ts22V8v7SI', 'yrwzoaks@example.com', '37026.08', 'Approved', 'Anne has free time. Anne bought new car. John has free time. John is shopping. Anne is walking. ', '2008-07-26 23:59:50', '2008-02-23 05:18:07'),
('akJWXIPsV5', 'iXtOe9IFMF', 'xtnb32@example.com', '39896.79', 'Rejected', NULL, '2008-05-12 02:44:21', '2008-11-04 23:21:33'),
('aksZRf8SFH', 'rWZOakSz52', 'imefxh@example.com', '47143.08', 'Pending', 'Anne bought new car. Anne is walking. John is shopping. Anne is shopping. John bought new car. ', '2008-02-02 13:00:24', '2008-01-23 15:10:57'),
('akt6Pbxim1', '7PWHoL1lbj', 'mjsq37@example.com', '33185.82', 'Pending', 'John bought new car. John has free time. Anne bought new car. John has free time. John bought new car. ', '2008-10-06 03:52:56', '2008-06-28 07:28:27'),
('aLb3NrDQra', 'qPB53UUBgB', 'xtnb32@example.com', '43044.75', 'Pending', 'Anne has free time. Tony is walking. ', '2008-03-11 23:15:52', '2008-05-06 04:38:43'),
('aLKkRcGF0L', 'rWZOakSz52', 'vpidu26@example.com', '7012.87', 'Pending', NULL, '2008-03-24 22:21:35', '2008-05-04 06:03:14'),
('aLmmCIT276', '2X6X6M73uD', 'vpidu26@example.com', '5590.34', 'Pending', NULL, '2008-02-20 04:48:18', '2007-12-31 23:44:51'),
('aLViHmN1h8', '2X6X6M73uD', 'mjsq37@example.com', '23922.38', 'Rejected', 'Anne bought new car. Anne bought new car. John has free time. John has free time. John has free time. ', '2008-01-20 01:30:26', '2008-11-03 02:19:08'),
('am1pWh8eDs', '40tHGLfPWD', 'yrwzoaks@example.com', '2867.15', 'Rejected', 'John has free time. Anne bought new car. Anne bought new car. Tony is shopping. ', '2008-06-11 16:14:30', '2008-09-30 14:57:23'),
('am3PCJL3JV', '386PruOGWL', 'xtnb32@example.com', '23666.88', 'Rejected', 'Tony has free time. John has free time. John is shopping. Tony is walking. John bought new car. ', '2008-03-23 10:30:04', '2008-02-25 15:28:41'),
('am7QjEFoSa', 'rWZOakSz52', 'xtnb32@example.com', '34693.58', 'Pending', NULL, '2008-09-07 12:44:49', '2008-04-02 20:50:25'),
('amG4I9tSJJ', 'J701AmjsQI', 'xtnb32@example.com', '22983.79', 'Pending', 'Tony bought new car. Anne is walking. John bought new car. ', '2008-10-03 22:02:25', '2008-10-18 13:07:18'),
('aMGMAo6VVW', 'JOFH9TTM5C', 'yrwzoaks@example.com', '34082.00', 'Pending', 'John is walking. Tony is shopping. Tony bought new car. ', '2008-02-12 07:32:45', '2008-04-30 18:35:34'),
('aMLFW3hgMV', 'I360Ao2HAy', 'xtnb32@example.com', '25798.81', 'Approved', 'Anne bought new car. John bought new car. John bought new car. John has free time. Anne has free time. ', '2008-05-25 20:20:13', '2008-02-07 14:15:03'),
('aN0Yma3moO', '2X6X6M73uD', 'yrwzoaks@example.com', '1502.46', 'Approved', 'Anne bought new car. John is shopping. John bought new car. John bought new car. John has free time. ', '2008-03-25 09:09:02', '2008-03-10 17:09:06'),
('aN1mJ856tm', 'CpVCTU6BV3', 'xtnb32@example.com', '38651.01', 'Pending', NULL, '2008-01-07 17:55:57', '2008-08-31 06:32:45'),
('anB32c4GyR', 'vIBFU4iA36', 'xtnb32@example.com', '11753.07', 'Pending', 'Anne is shopping. Anne is shopping. John is shopping. John bought new car. John bought new car. ', '2008-10-11 12:03:35', '2008-05-07 05:33:08'),
('aNCTBKGYN2', 'J701AmjsQI', 'vpidu26@example.com', '11322.55', 'Pending', 'Anne has free time. John is shopping. John has free time. Tony bought new car. Tony has free time. ', '2008-05-25 03:07:15', '2008-02-02 11:26:06'),
('aNFI2L4Cd6', '6NFI2L4Cd6', 'mjsq37@example.com', '8342.67', 'Rejected', 'Anne bought new car. John is shopping. Anne has free time. Anne is shopping. John has free time. ', '2008-02-15 14:51:19', '2008-09-11 16:44:22'),
('aNjJMb3lMY', 'vIBFU4iA36', 'vpidu26@example.com', '47048.67', 'Pending', NULL, '2008-09-13 05:43:04', '2008-03-12 01:27:13'),
('aNKR4dUu6s', 'iXtOe9IFMF', 'imefxh@example.com', '25304.99', 'Pending', 'Anne has free time. Tony is walking. Anne bought new car. John bought new car. John has free time. ', '2008-10-12 21:34:39', '2008-09-07 05:42:33'),
('ao2Su0PHJa', 'ttV2EW3T76', 'mjsq37@example.com', '20713.30', 'Rejected', 'Tony is walking. John bought new car. Tony bought new car. ', '2008-03-10 05:12:46', '2008-10-05 19:25:00'),
('aO7I4sORG2', '386PruOGWL', 'yrwzoaks@example.com', '10098.10', 'Rejected', 'Anne has free time. Tony is walking. John bought new car. John bought new car. Tony has free time. ', '2008-03-31 09:21:26', '2008-03-18 01:58:43'),
('aOFH9TTM5C', '2UEJ9k7EQW', 'mjsq37@example.com', '8060.31', 'Approved', 'Tony is walking. Tony bought new car. John is walking. Tony is shopping. ', '2008-09-05 06:28:32', '2008-05-08 13:13:09'),
('aojO8XiRLU', 'iRC3H66UPx', 'imefxh@example.com', '35079.18', 'Pending', 'Anne is walking. Tony has free time. John has free time. Anne has free time. Tony has free time. ', '2008-01-31 19:21:04', '2008-04-28 08:27:49'),
('aOjVOS4GnN', '2X6X6M73uD', 'mjsq37@example.com', '27385.93', 'Pending', 'John bought new car. Tony has free time. Tony is walking. Anne is shopping. ', '2008-05-08 19:45:29', '2008-06-11 06:01:07'),
('aOn5Z7jL9e', 'wVkJ6lPM2S', 'mjsq37@example.com', '670.62', 'Pending', NULL, '2008-02-26 04:31:12', '2008-12-15 07:18:31'),
('aot339XQXc', '6NFI2L4Cd6', 'mjsq37@example.com', '856.67', 'Rejected', 'John bought new car. John is walking. Anne is shopping. John is walking. John has free time. ', '2008-01-28 16:17:37', '2008-08-11 19:44:24'),
('aOvG3YQ2jU', 'I360Ao2HAy', 'vpidu26@example.com', '29867.29', 'Pending', 'Anne has free time. Tony is walking. ', '2008-05-24 16:57:06', '2008-02-03 14:40:12'),
('aOZHaRuF4C', '06fHm22UeX', 'imefxh@example.com', '12915.45', 'Rejected', 'Anne bought new car. Anne is shopping. John bought new car. Anne bought new car. Tony is shopping. ', '2008-12-19 10:38:02', '2008-09-15 18:40:17'),
('aP6ZU581Iz', 'QSGQdD11KP', 'yrwzoaks@example.com', '10758.56', 'Approved', 'Tony bought new car. John has free time. ', '2008-08-16 01:43:42', '2008-09-05 18:21:14'),
('aP75iZV17h', 'fXHqICmSoo', 'imefxh@example.com', '33396.93', 'Approved', 'Tony is walking. Anne bought new car. Tony bought new car. Anne has free time. John has free time. ', '2008-10-28 15:07:41', '2008-06-26 19:33:18'),
('aP8TZjp8DG', '386PruOGWL', 'mjsq37@example.com', '27070.01', 'Pending', 'John bought new car. John bought new car. John bought new car. Tony is walking. Tony bought new car. ', '2008-01-30 21:30:19', '2008-11-19 13:28:38'),
('aPB53UUBgB', 'i55BtGJJRE', 'imefxh@example.com', '48886.87', 'Pending', 'John is walking. Anne bought new car. John bought new car. Anne is shopping. John bought new car. ', '2008-11-23 06:42:25', '2008-11-06 19:38:11'),
('aPF11ZM5Qv', 'I360Ao2HAy', 'vpidu26@example.com', '7400.17', 'Rejected', 'Tony bought new car. Tony is shopping. John bought new car. ', '2008-05-22 16:43:47', '2008-01-30 14:14:51'),
('aPGJq3j7QY', 'JOFH9TTM5C', 'yrwzoaks@example.com', '5130.52', 'Approved', 'John bought new car. Tony has free time. ', '2008-10-19 02:49:36', '2008-09-08 01:51:52'),
('aPIKRoX0HL', 'QSGQdD11KP', 'yrwzoaks@example.com', '47113.16', 'Rejected', 'John has free time. Tony is walking. Anne bought new car. John is shopping. John has free time. ', '2008-01-08 03:58:09', '2008-06-18 08:41:25'),
('apK62JUPYs', 'jG25oTGYMK', 'xtnb32@example.com', '39580.83', 'Approved', 'Tony bought new car. Anne has free time. Tony bought new car. John has free time. Tony bought new car. ', '2008-06-15 13:10:12', '2008-03-07 05:34:00'),
('apSp6txBxJ', 'R5YE9UVyOR', 'mjsq37@example.com', '9485.23', 'Rejected', 'John bought new car. John has free time. John is shopping. Anne has free time. ', '2008-08-13 21:02:12', '2008-10-11 11:38:08'),
('aPt5RCe8LN', 'gWMI5GYIL1', 'imefxh@example.com', '45832.94', 'Pending', 'John is shopping. John bought new car. Anne is walking. ', '2008-11-23 12:04:01', '2008-05-12 07:41:37'),
('aPUvBZS7dy', 'tnB32c4GyR', 'yrwzoaks@example.com', '24341.72', 'Approved', 'John bought new car. Anne has free time. ', '2008-01-31 03:27:32', '2008-01-11 10:59:59'),
('apVCTU6BV3', 'R5YE9UVyOR', 'imefxh@example.com', '25167.63', 'Approved', 'Anne is shopping. Anne is shopping. John bought new car. Tony is shopping. Anne is walking. ', '2008-03-18 09:59:04', '2008-12-22 07:15:04'),
('aPvW3xDVJK', '40tHGLfPWD', 'vpidu26@example.com', '26811.37', 'Approved', 'Tony has free time. Anne is shopping. John is walking. ', '2008-12-31 05:41:45', '2008-11-04 15:16:37'),
('aPWHoL1lbj', 'CpVCTU6BV3', 'yrwzoaks@example.com', '27020.02', 'Pending', 'Tony has free time. Anne is walking. Tony bought new car. John has free time. John bought new car. ', '2008-01-12 18:22:54', '2008-09-11 17:26:42'),
('aq2Jemi3Bd', '7PWHoL1lbj', 'xtnb32@example.com', '9960.94', 'Approved', 'John bought new car. John is shopping. John has free time. ', '2008-11-24 07:05:44', '2008-10-03 19:31:44'),
('aq2mw8H7ZJ', 'SfcFP342qq', 'xtnb32@example.com', '23395.74', 'Approved', 'Anne has free time. Anne is shopping. John bought new car. John bought new car. Tony has free time. ', '2008-12-19 17:46:47', '2008-05-04 22:06:03'),
('aQ3B8nfhCN', 'RNKR4dUu6s', 'xtnb32@example.com', '7989.57', 'Pending', 'Anne has free time. Anne has free time. John bought new car. John is shopping. John has free time. ', '2008-04-16 04:55:32', '2008-06-25 03:38:43'),
('aQ6GB2tPHQ', '2UEJ9k7EQW', 'yrwzoaks@example.com', '42216.70', 'Rejected', 'Tony is walking. Anne is shopping. ', '2008-04-06 07:17:50', '2008-07-10 00:27:16'),
('aQ8VI3rnK1', 'I360Ao2HAy', 'mjsq37@example.com', '37700.60', 'Pending', 'John bought new car. Tony has free time. ', '2008-04-20 13:36:50', '2008-12-03 05:07:54'),
('aQPMnTM1au', '2Q6GB2tPHQ', 'vpidu26@example.com', '10558.24', 'Rejected', 'Tony bought new car. Tony is shopping. John has free time. John bought new car. Anne has free time. ', '2008-06-20 13:49:21', '2008-06-02 12:37:17'),
('aQuht7IQTB', 'QMLFW3hgMV', 'yrwzoaks@example.com', '44472.72', 'Approved', 'Anne bought new car. John bought new car. Tony is shopping. John bought new car. ', '2008-11-16 10:16:27', '2008-10-11 16:23:29'),
('aqW3aHJ6jc', '40tHGLfPWD', 'yrwzoaks@example.com', '13554.98', 'Pending', 'Anne has free time. Anne has free time. Tony bought new car. Tony bought new car. Anne has free time. ', '2008-02-04 03:37:02', '2008-01-12 19:56:03'),
('aQWG171AF1', 'R5YE9UVyOR', 'xtnb32@example.com', '35840.21', 'Approved', 'Anne has free time. Anne is walking. John bought new car. ', '2008-02-05 09:06:05', '2008-10-02 00:57:54'),
('aqWMpYQkGh', '6NFI2L4Cd6', 'mjsq37@example.com', '24593.76', 'Approved', 'Anne bought new car. John bought new car. Tony bought new car. Anne has free time. Tony bought new car. ', '2008-06-07 21:57:00', '2008-04-23 21:41:35'),
('ar1pcRSE0P', '2e66SeY7Zx', 'vpidu26@example.com', '28074.28', 'Pending', 'John bought new car. John has free time. Tony bought new car. ', '2008-06-08 14:28:29', '2008-05-23 03:26:55'),
('aR2O21JUKE', '0kt6Pbxim1', 'mjsq37@example.com', '3642.50', 'Rejected', 'Anne has free time. John is walking. Anne bought new car. John is shopping. John has free time. ', '2008-03-31 22:24:44', '2008-11-11 00:33:28'),
('ar33qPrEGR', 'RIyIKUb48G', 'xtnb32@example.com', '23932.93', 'Pending', 'Anne bought new car. John is walking. Anne bought new car. ', '2008-08-17 09:08:34', '2008-03-06 21:50:58'),
('aRC3H66UPx', 'em7QjEFoSa', 'imefxh@example.com', '38523.77', 'Rejected', 'John is shopping. John is walking. John is walking. Tony bought new car. Tony is shopping. ', '2008-03-17 01:45:56', '2008-01-04 06:34:50'),
('aRDVNBV7GT', 'Ts22V8v7SI', 'yrwzoaks@example.com', '13633.71', 'Rejected', 'Tony has free time. Anne has free time. Anne is shopping. Anne is walking. ', '2008-03-12 23:22:11', '2008-05-29 22:26:53'),
('aRdW6VWK27', '2RhCoFY7Nq', 'mjsq37@example.com', '19594.84', 'Pending', 'Anne bought new car. John has free time. Tony is walking. Anne has free time. John is shopping. ', '2008-01-10 11:39:55', '2008-10-17 10:20:39'),
('arH37UVT8y', 'i55BtGJJRE', 'xtnb32@example.com', '45684.25', 'Approved', 'Anne bought new car. Anne is walking. Tony bought new car. John has free time. Anne bought new car. ', '2008-05-17 09:26:41', '2008-10-28 00:48:04'),
('aRhCoFY7Nq', '7PWHoL1lbj', 'vpidu26@example.com', '36739.41', 'Approved', 'John bought new car. Tony is shopping. Tony has free time. ', '2008-06-23 06:13:35', '2008-12-06 04:44:59'),
('arMD9WRCUP', 'tnB32c4GyR', 'mjsq37@example.com', '14374.78', 'Rejected', 'Anne bought new car. Anne is walking. John has free time. John bought new car. John has free time. ', '2008-07-27 16:54:10', '2008-01-05 00:03:11'),
('as22V8v7SI', 'QMLFW3hgMV', 'mjsq37@example.com', '40652.92', 'Rejected', 'John is shopping. Tony has free time. John bought new car. ', '2008-05-03 10:41:51', '2008-09-15 22:37:41'),
('aS8q51jcNB', 'gWMI5GYIL1', 'imefxh@example.com', '24519.83', 'Pending', 'Anne is shopping. Tony has free time. Anne bought new car. Tony is walking. John bought new car. ', '2008-03-27 01:18:50', '2008-01-13 06:18:27'),
('aSARC76FLL', 'ttV2EW3T76', 'yrwzoaks@example.com', '27785.35', 'Approved', 'Tony is walking. Anne has free time. John is shopping. John is shopping. John bought new car. ', '2008-05-11 09:04:56', '2008-02-07 04:51:51'),
('asFkJpOgM4', '6NFI2L4Cd6', 'imefxh@example.com', '36134.03', 'Rejected', 'Tony bought new car. John has free time. Tony has free time. Tony is shopping. Anne has free time. ', '2008-01-17 11:44:33', '2008-07-19 08:05:28'),
('aSGDKexGBB', '2UEJ9k7EQW', 'imefxh@example.com', '33831.36', 'Rejected', 'Anne has free time. Tony is shopping. John has free time. Tony is walking. ', '2008-04-21 20:52:15', '2008-08-08 01:53:25'),
('aSGQdD11KP', 'CpVCTU6BV3', 'xtnb32@example.com', '8873.55', 'Pending', 'Anne bought new car. Anne is shopping. Tony has free time. John bought new car. ', '2008-05-06 05:49:08', '2008-04-24 07:30:43'),
('asPN7sONUg', 'Ts22V8v7SI', 'xtnb32@example.com', '22632.86', 'Pending', 'John has free time. Tony is walking. ', '2008-02-22 12:23:47', '2008-04-15 15:44:45'),
('asY7S29wXa', 'XNCTBKGYN2', 'vpidu26@example.com', '27679.89', 'Pending', 'Anne has free time. Anne is walking. Anne is shopping. ', '2008-01-06 07:34:51', '2008-01-31 05:00:06'),
('at63sXOxIg', '2X6X6M73uD', 'xtnb32@example.com', '48382.82', 'Approved', 'Tony is shopping. Tony is walking. John has free time. Tony has free time. Anne has free time. ', '2008-11-03 07:49:31', '2008-05-31 20:31:34'),
('aTBFRtPM3R', 'SfcFP342qq', 'yrwzoaks@example.com', '19277.67', 'Approved', 'John bought new car. Anne is walking. ', '2008-09-07 20:28:40', '2008-10-12 11:45:15'),
('atfvUFfMJj', 'JTQ37vPTFE', 'yrwzoaks@example.com', '27398.22', 'Pending', 'Anne has free time. Anne is shopping. John bought new car. Tony is shopping. Anne is walking. ', '2008-04-02 12:01:09', '2008-10-05 20:33:00'),
('aThSyDyCiU', '06fHm22UeX', 'vpidu26@example.com', '21822.07', 'Pending', 'Anne bought new car. Anne has free time. John bought new car. ', '2008-05-16 22:23:50', '2008-07-09 08:59:55'),
('aTQ37vPTFE', '2Q6GB2tPHQ', 'imefxh@example.com', '28797.69', 'Pending', 'Tony bought new car. Anne is shopping. ', '2008-12-27 23:46:49', '2008-06-21 20:36:32'),
('aTrqjoaUJy', 'iXtOe9IFMF', 'imefxh@example.com', '45672.00', 'Rejected', 'John bought new car. John is walking. Anne has free time. Tony has free time. Tony has free time. ', '2008-02-23 01:07:52', '2008-06-05 09:24:23'),
('atV2EW3T76', '56LxRD83Um', 'mjsq37@example.com', '48079.96', 'Rejected', 'Anne bought new car. Anne bought new car. ', '2008-01-26 02:40:56', '2008-08-07 02:30:28'),
('au1E3We4T4', '2UEJ9k7EQW', 'mjsq37@example.com', '35136.62', 'Pending', 'Anne bought new car. Tony bought new car. Tony bought new car. Tony has free time. Anne is shopping. ', '2008-05-16 15:22:06', '2008-09-24 21:36:03'),
('aU5Vt1HSH3', '2RhCoFY7Nq', 'mjsq37@example.com', '29480.36', 'Rejected', 'Tony bought new car. John has free time. Tony has free time. Tony has free time. John is walking. ', '2008-09-21 00:15:21', '2008-03-14 20:14:57'),
('aU96Vyo43N', '2RhCoFY7Nq', 'xtnb32@example.com', '37244.74', 'Rejected', NULL, '2008-02-21 21:07:49', '2008-01-15 04:26:02'),
('aUEJ9k7EQW', '40tHGLfPWD', 'xtnb32@example.com', '37519.11', 'Pending', NULL, '2008-09-08 16:26:34', '2008-03-21 06:01:19'),
('aULtRSL2Dx', 'QMLFW3hgMV', 'mjsq37@example.com', '20407.34', 'Rejected', 'Anne bought new car. Tony bought new car. Tony is shopping. John bought new car. Anne has free time. ', '2008-12-23 01:20:05', '2008-12-28 04:34:30'),
('aUmTEUPNwr', 'XNCTBKGYN2', 'vpidu26@example.com', '4329.31', 'Pending', 'Tony has free time. John bought new car. Tony is walking. Tony bought new car. Anne is shopping. ', '2008-05-12 21:02:24', '2008-10-09 11:58:06'),
('aUQE3xJqQ3', 'W388ROMD2G', 'xtnb32@example.com', '40295.81', 'Pending', 'Anne has free time. Tony has free time. Tony bought new car. Tony is shopping. Tony has free time. ', '2008-02-22 07:26:40', '2008-10-28 06:49:27'),
('auR6Fwd4EG', '2Q6GB2tPHQ', 'mjsq37@example.com', '34298.78', 'Approved', 'Tony bought new car. Anne is walking. Anne bought new car. Tony has free time. ', '2008-09-15 06:19:15', '2008-11-26 08:11:10'),
('aUScJuWAKP', '386PruOGWL', 'imefxh@example.com', '27837.06', 'Pending', 'John bought new car. John is shopping. ', '2008-05-11 22:58:03', '2008-06-10 08:46:57'),
('av2U6vUAQu', 'iRC3H66UPx', 'yrwzoaks@example.com', '578.52', 'Pending', 'Tony has free time. John has free time. Tony is walking. ', '2008-05-17 13:17:49', '2008-11-26 09:20:57'),
('aV4W1orTTH', 'SfcFP342qq', 'mjsq37@example.com', '13239.99', 'Approved', 'John bought new car. John is walking. ', '2008-06-24 08:58:19', '2008-05-12 15:35:45'),
('av9MwReusS', 'wVkJ6lPM2S', 'yrwzoaks@example.com', '7303.10', 'Rejected', NULL, '2008-05-13 12:49:17', '2008-05-22 13:02:44'),
('avBF6w55rB', 'fXHqICmSoo', 'imefxh@example.com', '20105.47', 'Approved', 'Anne bought new car. Anne is walking. ', '2008-11-22 15:26:43', '2008-08-10 08:51:27'),
('aVC05Rwb77', '2X6X6M73uD', 'imefxh@example.com', '42532.03', 'Rejected', 'Anne bought new car. John is shopping. Anne bought new car. Tony bought new car. Tony is walking. ', '2008-05-12 07:06:43', '2008-06-13 12:48:07'),
('aVkJ6lPM2S', '7sY7S29wXa', 'mjsq37@example.com', '17095.05', 'Approved', 'Anne bought new car. Anne has free time. Tony bought new car. John is walking. Tony is shopping. ', '2008-02-14 20:23:15', '2008-06-10 05:39:19'),
('aVnnl6O4uV', 'vIBFU4iA36', 'vpidu26@example.com', '23724.02', 'Approved', 'Anne bought new car. Anne bought new car. Tony has free time. Anne has free time. ', '2008-05-12 05:51:14', '2008-07-08 20:11:20'),
('aVvABQPbK8', 'QMLFW3hgMV', 'yrwzoaks@example.com', '49957.74', 'Pending', 'Tony has free time. Anne bought new car. John bought new car. ', '2008-07-17 04:51:50', '2008-02-13 22:32:42'),
('aWaICZVULH', '2e66SeY7Zx', 'mjsq37@example.com', '3062.19', 'Pending', 'Anne is walking. Anne has free time. Anne is walking. Anne has free time. Anne is walking. ', '2008-05-09 06:09:29', '2008-03-23 09:38:16'),
('aWMI5GYIL1', '56LxRD83Um', 'imefxh@example.com', '45025.64', 'Approved', 'Anne has free time. Tony is walking. ', '2008-04-24 08:25:49', '2008-02-07 11:38:32'),
('aWMoZgY54e', 'fXHqICmSoo', 'imefxh@example.com', '2495.55', 'Pending', 'Anne has free time. John is walking. Tony has free time. Anne has free time. Anne has free time. ', '2008-11-19 00:06:48', '2008-08-05 01:40:46'),
('awSMqOpZCP', '2Q6GB2tPHQ', 'vpidu26@example.com', '49770.28', 'Pending', 'John is walking. John bought new car. ', '2008-02-18 03:22:47', '2008-10-03 17:28:32'),
('aWUr4mLL2A', 'JTQ37vPTFE', 'mjsq37@example.com', '28136.00', 'Pending', 'Anne is walking. Anne is shopping. ', '2008-09-02 05:10:52', '2008-08-06 09:12:12'),
('aWZOakSz52', 'em7QjEFoSa', 'mjsq37@example.com', '3822.44', 'Approved', 'John is shopping. Tony bought new car. ', '2008-07-30 21:25:39', '2008-09-30 22:42:21'),
('aX5RK70FuA', '7HUhJ9Ap2P', 'vpidu26@example.com', '7722.60', 'Rejected', 'Anne has free time. Anne has free time. ', '2008-12-29 08:59:31', '2008-04-22 03:25:56'),
('aX6X6M73uD', 'iRC3H66UPx', 'yrwzoaks@example.com', '3163.14', 'Rejected', 'Anne bought new car. Tony bought new car. John has free time. ', '2008-09-21 13:46:05', '2008-08-05 11:20:28'),
('axAs27uFVe', '386PruOGWL', 'vpidu26@example.com', '40270.55', 'Rejected', 'Anne has free time. Anne is walking. Anne bought new car. ', '2008-10-24 11:17:03', '2008-05-02 18:46:37'),
('aXDpVJLSOY', '2e66SeY7Zx', 'xtnb32@example.com', '20936.66', 'Rejected', 'Tony is walking. Anne bought new car. John is walking. Tony has free time. John has free time. ', '2008-10-18 21:22:14', '2008-02-09 18:09:56'),
('aXeFAUYL0L', '2X6X6M73uD', 'imefxh@example.com', '521.28', 'Rejected', 'Anne is walking. Anne is shopping. ', '2008-12-26 09:26:16', '2008-09-14 17:10:59'),
('aXHqICmSoo', 'oa6e6bSM26', 'mjsq37@example.com', '40430.34', 'Approved', 'Anne is shopping. John is walking. Anne is shopping. Tony has free time. Tony has free time. ', '2008-02-11 20:08:03', '2008-11-24 03:40:54'),
('axTm7488Li', 'R5YE9UVyOR', 'imefxh@example.com', '10331.31', 'Rejected', NULL, '2008-11-14 23:18:14', '2008-04-19 23:25:48'),
('aXtOe9IFMF', 'J701AmjsQI', 'mjsq37@example.com', '47298.10', 'Pending', 'Anne bought new car. Anne bought new car. Tony has free time. John has free time. John is shopping. ', '2008-08-21 23:16:24', '2008-07-27 01:24:37'),
('aY3UJB6uVp', 'CpVCTU6BV3', 'xtnb32@example.com', '33925.98', 'Approved', 'Tony bought new car. John has free time. ', '2008-09-04 18:19:27', '2008-12-28 22:58:12'),
('aY8NouzO50', 'J701AmjsQI', 'vpidu26@example.com', '9813.27', 'Approved', 'John has free time. Anne has free time. John has free time. John bought new car. Tony is shopping. ', '2008-01-22 19:06:29', '2008-05-31 01:32:24'),
('aYeFDTHB3e', '5WUr4mLL2A', 'yrwzoaks@example.com', '28659.53', 'Pending', 'Anne bought new car. John is walking. Anne bought new car. John is walking. John has free time. ', '2008-08-10 16:26:02', '2008-06-05 18:37:04'),
('aYEP8TpVHn', '2e66SeY7Zx', 'mjsq37@example.com', '48114.72', 'Rejected', NULL, '2008-09-13 17:07:51', '2008-11-28 15:31:34'),
('ayG7APH8a3', 'wVkJ6lPM2S', 'yrwzoaks@example.com', '44931.03', 'Pending', 'Anne is shopping. John bought new car. Tony is shopping. Tony is walking. John has free time. ', '2008-09-11 11:35:28', '2008-01-14 17:11:55'),
('aYISU2UuI8', '2RhCoFY7Nq', 'vpidu26@example.com', '6305.07', 'Pending', 'Anne bought new car. Tony is shopping. ', '2008-06-09 03:06:24', '2008-08-15 05:05:22'),
('aYN8VYTbKn', 'tnB32c4GyR', 'xtnb32@example.com', '16453.96', 'Pending', 'John is shopping. John bought new car. John bought new car. Tony is shopping. Tony has free time. ', '2008-12-20 19:38:35', '2008-10-25 14:57:28'),
('ayoC77OQNN', 'BPGJq3j7QY', 'xtnb32@example.com', '36484.95', 'Approved', 'Tony has free time. Anne is shopping. John is shopping. Tony bought new car. Tony is walking. ', '2008-11-22 04:22:06', '2008-06-22 20:26:56'),
('azkJI1OGj0', 'qPB53UUBgB', 'vpidu26@example.com', '17237.63', 'Pending', 'Anne is walking. Anne bought new car. Tony is walking. ', '2008-06-26 00:52:20', '2008-12-01 11:49:22'),
('aZKjp3EUSR', '2UEJ9k7EQW', 'mjsq37@example.com', '42847.53', 'Approved', 'John has free time. Anne is walking. Anne bought new car. Tony has free time. ', '2008-09-16 00:15:26', '2008-05-29 01:33:47'),
('aZz8L2S4v1', '6NFI2L4Cd6', 'mjsq37@example.com', '10038.11', 'Pending', 'Tony bought new car. Tony has free time. John bought new car. Anne has free time. ', '2008-02-07 06:20:11', '2008-08-26 10:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `id` char(10) NOT NULL,
  `log_id` char(10) NOT NULL,
  `paid_amount` decimal(15,2) UNSIGNED NOT NULL,
  `paid_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('active','inactive') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` char(10) NOT NULL,
  `ordinal_number` tinyint(4) NOT NULL,
  `image_source` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `ordinal_number`, `image_source`) VALUES
('0kt6Pbxim1', 1, 'http://yhq.net83/rmfnn/bxl.jpeg'),
('0kt6Pbxim1', 6, 'http://qcf.local9/gdneg/okp.png'),
('0XDpVJLSOY', 2, 'http://nsc.localm/cscyt/fhwj.jpg'),
('2e66SeY7Zx', 5, 'http://kbgmh.local9/cqnzt/juwfs/poshg.jpeg'),
('2RhCoFY7Nq', 1, NULL),
('2RhCoFY7Nq', 2, 'http://rheh.web55/hvhjj/ycri.png'),
('2UEJ9k7EQW', 1, 'http://sxald.net/jxdew/xdsni.jpeg'),
('2UEJ9k7EQW', 3, 'http://rfix.net2/atrpg/revxx/fwd.jpeg'),
('2X6X6M73uD', 4, 'http://gjs.net/dvodc/cnx.jpeg'),
('386PruOGWL', 3, 'http://bgte.neti/omlue/zyo.jpeg'),
('40tHGLfPWD', 4, 'http://mvs.netb/ebkhz/dnwx.png'),
('56LxRD83Um', 2, NULL),
('5WUr4mLL2A', 6, 'http://xyhww.web0/elykc/itl.webp'),
('6NFI2L4Cd6', 3, 'http://mfg.local96/ncewe/euxfp.webp'),
('6NFI2L4Cd6', 6, 'http://amt.localw03/kymbu/hzsqy/euclr/cze.webp'),
('7PWHoL1lbj', 1, 'http://ipe.webn01/bnxqj/hwar.png'),
('7PWHoL1lbj', 3, NULL),
('7sY7S29wXa', 6, 'http://rtf.web/cjqge/xpi.png'),
('BPGJq3j7QY', 0, 'http://edne.net6/kqjjc/vpot.png'),
('BPGJq3j7QY', 5, NULL),
('CpVCTU6BV3', 3, 'http://vpoq.net09/yhymw/bcfry/sxx.jpg'),
('D2CVG7MK3X', 2, 'http://dji.local/plxxi/pqeqg/pwi.jpeg'),
('em7QjEFoSa', 3, 'http://hxf.netc4/nrxkj/ogxti/ufo.png'),
('em7QjEFoSa', 6, 'http://wnorp.web53/rjype/nbw.jpg'),
('fXHqICmSoo', 1, 'http://mud.net/kkqee/muf.webp'),
('H6HiO6NE3f', 2, 'http://ojkk.web5/lstmu/hxfh.jpg'),
('I360Ao2HAy', 1, 'http://jby.neth5/jdvrg/ypcg.jpeg'),
('iXtOe9IFMF', 0, NULL),
('iXtOe9IFMF', 4, NULL),
('J701AmjsQI', 1, NULL),
('jG25oTGYMK', 1, 'http://wno.net/ldgmx/qip.jpg'),
('jG25oTGYMK', 3, 'http://zyfr.local89/zrwew/zllso/law.webp'),
('jG25oTGYMK', 4, 'http://tybrv.net54/pvgey/ppg.webp'),
('JTQ37vPTFE', 4, 'http://qhc.net3/fvpeu/spi.jpg'),
('oa6e6bSM26', 2, 'http://hke.net/vqegz/kjrh.jpg'),
('QMLFW3hgMV', 1, 'http://ooyu.webv/drjlj/twql.jpeg'),
('QMLFW3hgMV', 4, 'http://krh.web3/qyins/pyx.webp'),
('QSGQdD11KP', 1, 'http://qid.net/vsncl/gpa.webp'),
('QSGQdD11KP', 4, 'http://khk.web23/dphlc/pbs.jpg'),
('rWZOakSz52', 0, 'http://lbf.web/ttuat/kid.png'),
('rWZOakSz52', 6, NULL),
('SfcFP342qq', 6, 'http://ggbiu.local0/hhrdy/ifc.webp'),
('tnB32c4GyR', 0, 'http://xbx.local/ydbrf/dmqdc.jpeg'),
('Ts22V8v7SI', 1, 'http://cnw.nety84/tmhdq/letz.webp'),
('Ts22V8v7SI', 3, 'http://qdgkt.web6/wjwnv/oxb.webp'),
('Ts22V8v7SI', 4, 'http://nem.net3/jovan/dwm.webp'),
('Ts22V8v7SI', 5, 'http://dhy.net1/wplmd/lygfr.webp'),
('ttV2EW3T76', 2, 'http://zqpoy.net79/xkyya/nwd.png'),
('ttV2EW3T76', 3, 'http://fpdhc.net8/zupep/smjmg.jpg'),
('XNCTBKGYN2', 2, 'http://gpn.web/qxtcb/jeyv.png');

-- --------------------------------------------------------

--
-- Table structure for table `lease_info`
--

CREATE TABLE `lease_info` (
  `id` char(10) NOT NULL,
  `lease` decimal(15,2) UNSIGNED NOT NULL,
  `terms` text DEFAULT NULL,
  `tenure_months` smallint(6) NOT NULL,
  `reservation_percentage` decimal(3,2) UNSIGNED NOT NULL DEFAULT 0.05,
  `termination_percentage` decimal(3,2) UNSIGNED DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lease_info`
--

INSERT INTO `lease_info` (`id`, `lease`, `terms`, `tenure_months`, `reservation_percentage`, `termination_percentage`, `updated_at`) VALUES
('06fHm22UeX', '5833632.72', 'Tony bought new car. Anne has free time. John bought new car. ', 337, '0.20', '0.09', '2008-04-02 12:01:09'),
('0kt6Pbxim1', '48389407.68', 'Anne bought new car. Anne is shopping. ', 155, '0.03', '0.08', '2008-10-11 12:03:35'),
('0XDpVJLSOY', '19756319.27', NULL, 187, '0.12', '0.04', '2008-07-02 22:13:24'),
('2e66SeY7Zx', '44500942.15', 'John bought new car. John is walking. Anne has free time. Anne has free time. Anne is walking. ', 217, '0.15', '0.19', '2008-02-14 20:23:15'),
('2Q6GB2tPHQ', '22577874.71', 'Tony is walking. Anne bought new car. Anne has free time. John has free time. John has free time. ', 492, '0.18', '0.18', '2008-08-10 16:21:03'),
('2RhCoFY7Nq', '10425356.32', 'John has free time. Tony is shopping. ', 63, '0.19', '0.17', '2008-07-30 21:25:39'),
('2UEJ9k7EQW', '27250512.70', 'John has free time. Anne is walking. Anne bought new car. Anne has free time. ', 170, '0.11', '0.07', '2008-09-23 00:42:19'),
('2X6X6M73uD', '34762651.58', 'Anne bought new car. John has free time. Anne is walking. John bought new car. John has free time. ', 189, '0.17', '0.13', '2008-07-08 20:21:45'),
('386PruOGWL', '27042833.39', NULL, 294, '0.05', '0.05', '2008-03-27 15:42:47'),
('40tHGLfPWD', '37212025.09', NULL, 537, '0.11', '0.19', '2008-06-10 08:14:41'),
('56LxRD83Um', '16713830.05', 'Tony bought new car. Anne bought new car. John is walking. John has free time. Anne bought new car. ', 345, '0.11', '0.10', '2008-06-08 14:28:29'),
('5WUr4mLL2A', '46857253.34', 'John bought new car. Tony is walking. John has free time. John has free time. Anne has free time. ', 569, '0.19', '0.09', '2008-08-21 23:16:24'),
('62TgNdPJLV', '12361957.28', 'John has free time. Anne is shopping. Tony bought new car. Anne has free time. Anne has free time. ', 427, '0.03', '0.13', '2008-05-16 15:22:06'),
('6NFI2L4Cd6', '48187054.61', 'Tony bought new car. John bought new car. Tony has free time. ', 489, '0.15', '0.15', '2008-02-11 20:08:03'),
('7HUhJ9Ap2P', '48122608.91', 'Anne is walking. Tony is walking. Tony bought new car. Tony bought new car. John has free time. ', 396, '0.10', '0.11', '2008-05-01 02:04:46'),
('7PWHoL1lbj', '7879507.18', 'John has free time. Anne has free time. Tony bought new car. Anne has free time. John bought new car. ', 78, '0.16', '0.08', '2008-10-19 02:49:36'),
('7sY7S29wXa', '49216923.89', 'Anne bought new car. Tony is walking. ', 346, '0.13', NULL, '2008-09-02 05:10:52'),
('BPGJq3j7QY', '355553.25', 'Anne bought new car. Tony has free time. Tony bought new car. Tony has free time. Anne bought new car. ', 404, '0.02', '0.06', '2008-10-06 03:52:56'),
('CpVCTU6BV3', '26180601.03', 'Anne has free time. Anne is walking. Tony bought new car. John is shopping. John is shopping. ', 567, '0.18', '0.03', '2008-12-13 16:58:39'),
('D2CVG7MK3X', '14738148.75', 'John has free time. Tony is walking. ', 600, '0.15', '0.03', '2008-07-17 04:51:50'),
('em7QjEFoSa', '48693008.80', 'Anne is shopping. John is shopping. John bought new car. John has free time. ', 121, '0.14', '0.09', '2008-05-06 05:49:08'),
('fXHqICmSoo', '7031146.01', 'Anne bought new car. John has free time. Tony is shopping. Tony has free time. Anne bought new car. ', 262, '0.06', '0.08', '2008-10-18 21:22:14'),
('gWMI5GYIL1', '11267464.82', 'Anne has free time. Tony is walking. John bought new car. Anne has free time. Anne has free time. ', 495, '0.08', '0.08', '2008-04-18 02:01:12'),
('H6HiO6NE3f', '20533536.53', 'John bought new car. Anne is shopping. Tony bought new car. Tony bought new car. Tony has free time. ', 65, '0.19', '0.11', '2008-05-14 23:44:07'),
('I360Ao2HAy', '11696131.95', 'Tony is shopping. Anne is shopping. Anne bought new car. Tony is shopping. Anne has free time. ', 311, '0.08', '0.16', '2008-03-18 09:59:04'),
('i55BtGJJRE', '31892996.62', 'Tony bought new car. Anne is shopping. Anne bought new car. Anne has free time. John has free time. ', 527, '0.16', '0.04', '2008-11-18 02:11:16'),
('iRC3H66UPx', '8197021.19', 'Tony bought new car. Tony has free time. John bought new car. Tony has free time. John has free time. ', 508, '0.05', '0.20', '2008-07-29 12:14:45'),
('iXtOe9IFMF', '33011640.80', 'Anne is shopping. Anne bought new car. Tony is shopping. ', 340, '0.08', '0.17', '2008-01-06 07:34:51'),
('J701AmjsQI', '7144034.03', 'Anne has free time. John is shopping. ', 333, '0.03', '0.17', '2008-01-12 18:22:54'),
('jG25oTGYMK', '36557365.63', 'Anne bought new car. Anne bought new car. Tony bought new car. Anne has free time. Anne is walking. ', 445, '0.15', '0.05', '2008-09-24 05:14:49'),
('JOFH9TTM5C', '29336715.57', 'John is shopping. Anne bought new car. Tony has free time. Tony has free time. ', 354, '0.13', '0.08', '2008-03-09 12:09:14'),
('JTQ37vPTFE', '29639343.23', NULL, 509, '0.15', '0.10', '2008-04-06 07:17:50'),
('JVvABQPbK8', '25231571.56', 'Anne is walking. John bought new car. ', 188, '0.17', '0.12', '2008-03-10 04:58:47'),
('oa6e6bSM26', '19888858.39', 'John is walking. Anne bought new car. Tony is shopping. John has free time. Tony is walking. ', 112, '0.16', '0.14', '2008-09-05 06:28:32'),
('QMLFW3hgMV', '31187022.34', 'Anne is walking. Anne is shopping. Tony bought new car. Tony bought new car. Anne bought new car. ', 216, '0.12', NULL, '2008-07-29 18:43:17'),
('qPB53UUBgB', '36182413.73', 'John has free time. Tony bought new car. Anne bought new car. ', 283, '0.13', '0.16', '2008-09-23 18:25:30'),
('QSGQdD11KP', '9276119.16', 'Anne bought new car. Anne is shopping. ', 174, '0.12', '0.17', '2008-08-08 17:24:37'),
('R5YE9UVyOR', '12462013.92', 'Anne has free time. Anne has free time. John bought new car. Tony is walking. John has free time. ', 588, '0.05', '0.05', '2008-12-23 12:52:31'),
('RIyIKUb48G', '8673808.60', 'Anne is walking. John bought new car. Tony bought new car. John has free time. Tony is walking. ', 457, '0.07', '0.18', '2008-04-20 13:36:50'),
('RNKR4dUu6s', '25407612.81', 'Tony bought new car. Anne is walking. Anne bought new car. Tony has free time. John is walking. ', 173, '0.09', '0.15', '2008-04-29 08:18:03'),
('rWZOakSz52', '46996276.17', 'John bought new car. John is walking. John bought new car. John bought new car. Tony is walking. ', 41, '0.16', '0.06', '2008-03-14 05:11:35'),
('SfcFP342qq', '47362386.14', 'Anne bought new car. John is shopping. Tony is shopping. Anne bought new car. John is walking. ', 491, '0.05', '0.02', '2008-05-03 10:41:51'),
('tnB32c4GyR', '301007.54', 'Anne is shopping. Anne is walking. Tony bought new car. John is walking. Tony bought new car. ', 305, '0.16', '0.05', '2008-07-25 22:57:51'),
('Ts22V8v7SI', '5842556.05', 'Anne is shopping. Anne is walking. John bought new car. John bought new car. John has free time. ', 587, '0.17', NULL, '2008-11-23 06:42:25'),
('ttV2EW3T76', '16669216.95', 'John bought new car. Anne is walking. John bought new car. Anne has free time. John has free time. ', 466, '0.14', '0.15', '2008-03-17 01:45:56'),
('V5IDUGPzbe', '24597987.72', 'Tony has free time. John is shopping. Anne bought new car. ', 513, '0.10', '0.07', '2008-05-12 07:06:43'),
('vIBFU4iA36', '7704649.33', 'Tony has free time. Anne is walking. ', 290, '0.14', '0.10', '2008-12-19 17:46:47'),
('W388ROMD2G', '29411400.65', NULL, 252, '0.09', '0.08', '2008-11-22 15:26:43'),
('wVkJ6lPM2S', '27795645.69', 'Anne bought new car. Tony has free time. John has free time. John has free time. John has free time. ', 282, '0.15', '0.19', '2008-08-12 05:41:59'),
('XNCTBKGYN2', '18941192.16', 'Anne has free time. John is shopping. Anne bought new car. Anne bought new car. Tony is walking. ', 279, '0.07', '0.11', '2008-12-07 04:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `lease_log`
--

CREATE TABLE `lease_log` (
  `id` char(10) NOT NULL,
  `log_id` char(10) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `lease_amount` decimal(15,2) UNSIGNED NOT NULL,
  `lease_tenure` date NOT NULL,
  `paid_amount` decimal(15,2) UNSIGNED NOT NULL,
  `due_amount` decimal(15,2) UNSIGNED DEFAULT NULL,
  `medium` varchar(50) NOT NULL,
  `reference_log_id` char(10) DEFAULT NULL,
  `remarks` tinytext DEFAULT NULL,
  `paid_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lease_log`
--

INSERT INTO `lease_log` (`id`, `log_id`, `user_email`, `lease_amount`, `lease_tenure`, `paid_amount`, `due_amount`, `medium`, `reference_log_id`, `remarks`, `paid_at`, `status`) VALUES
('0kt6Pbxim1', 'LLg2DG9Py2', 'xtnb32@example.com', '11405366.32', '2066-02-03', '22457489.64', '367754.16', 'MCash', NULL, 'Anne bought new car. Anne has free time. Tony is walking. Tony has free time. Tony has free time. ', '2008-01-22 10:01:47', 'Approved'),
('0kt6Pbxim1', 'LLggGNIMjB', 'xtnb32@example.com', '37405647.22', '2058-01-27', '1970223.59', '212742.80', 'SureCash', NULL, 'Anne is shopping. Tony bought new car. John is walking. John has free time. John has free time. ', '2008-10-24 22:45:31', 'Pending'),
('0XDpVJLSOY', 'LLgfW3IwsN', 'vpidu26@example.com', '40182096.39', '2063-03-24', '9490885.59', '206967.64', 'MCash', 'BUFWYOGl3C', 'Anne bought new car. Tony bought new car. John bought new car. Tony has free time. ', '2008-11-26 17:15:20', 'Pending'),
('0XDpVJLSOY', 'LLgSnCWQUJ', 'imefxh@example.com', '14186769.12', '2033-01-17', '30895418.83', '214488.81', 'MCash', 'wWxN7wDt3R', 'Tony is walking. Anne bought new car. John has free time. John has free time. Tony has free time. ', '2008-12-16 00:24:59', 'Pending'),
('0XDpVJLSOY', 'LLgYG4w1zK', 'yrwzoaks@example.com', '13303105.83', '2051-12-03', '27707626.23', '467248.34', 'Nagad', 'y72XfK67GP', 'John has free time. Anne bought new car. Tony bought new car. John has free time. Tony bought new car. ', '2008-01-18 19:40:59', 'Pending'),
('2e66SeY7Zx', 'LLg4ls8d3m', 'imefxh@example.com', '12578314.37', '2043-07-23', '19509027.90', '146165.79', 'Nagad', 'vFjPEDYRYD', 'Tony bought new car. Tony is shopping. Tony is shopping. John has free time. John has free time. ', '2008-12-06 18:47:05', 'Rejected'),
('2e66SeY7Zx', 'LLgYxPM3Kc', 'mjsq37@example.com', '16795910.22', '2058-06-11', '49961005.26', '134536.59', 'MCash', 'u2C58k6QsU', NULL, '2008-05-24 09:27:28', 'Pending'),
('2Q6GB2tPHQ', 'LLgRKW8TEl', 'yrwzoaks@example.com', '40601991.10', '2056-05-21', '36479642.65', NULL, 'Nagad', NULL, 'Anne has free time. Anne is shopping. Tony is walking. Anne has free time. Anne is shopping. ', '2008-10-28 04:49:07', 'Pending'),
('2RhCoFY7Nq', 'LLg2CW6YQl', 'xtnb32@example.com', '23618175.76', '2050-04-22', '45392958.60', '153385.24', 'SureCash', NULL, 'Anne bought new car. Anne bought new car. Tony has free time. John has free time. John is walking. ', '2008-04-04 10:32:06', 'Pending'),
('2RhCoFY7Nq', 'LLgBS2CPY2', 'mjsq37@example.com', '3402644.47', '2066-02-05', '24470782.27', '140327.53', 'Rocket', 'I8d4OW1r6b', 'John bought new car. Anne bought new car. Anne bought new car. John has free time. John bought new car. ', '2008-04-04 02:32:22', 'Pending'),
('2RhCoFY7Nq', 'LLgL32i0e6', 'vpidu26@example.com', '6313603.23', '2041-09-15', '11655136.28', '292128.62', 'Nagad', NULL, 'Tony has free time. Anne has free time. Tony has free time. John is shopping. Tony bought new car. ', '2008-12-27 20:39:52', 'Rejected'),
('2RhCoFY7Nq', 'LLgv4Ihc5h', 'xtnb32@example.com', '45518299.07', '2062-12-04', '11138980.03', '359756.32', 'MCash', NULL, 'Tony has free time. Anne has free time. John is walking. John has free time. John bought new car. ', '2008-08-26 13:52:43', 'Rejected'),
('2UEJ9k7EQW', 'LLg3TW6h4r', 'vpidu26@example.com', '6622073.04', '2043-08-14', '29406019.23', '206164.18', 'Nagad', NULL, 'Anne bought new car. Tony bought new car. ', '2008-09-02 05:08:12', 'Rejected'),
('2UEJ9k7EQW', 'LLg41BwsBM', 'imefxh@example.com', '9970684.11', '2057-01-17', '23978830.96', '442118.06', 'SureCash', NULL, 'John bought new car. John has free time. John bought new car. Tony is walking. John has free time. ', '2008-08-02 23:48:31', 'Approved'),
('2UEJ9k7EQW', 'LLgdIqN2Sd', 'vpidu26@example.com', '10970934.83', '2059-07-09', '9187745.81', '212902.36', 'bKash', 'BEvike5FJ3', 'John bought new car. Anne is shopping. John bought new car. Anne bought new car. Tony bought new car. ', '2008-03-01 12:22:35', 'Pending'),
('2UEJ9k7EQW', 'LLgn6qVHEj', 'yrwzoaks@example.com', '12743054.21', '2043-10-11', '6315428.95', '320254.56', 'Nagad', NULL, 'Anne bought new car. Tony has free time. Tony bought new car. John is walking. Tony is walking. ', '2008-03-06 13:45:16', 'Pending'),
('2UEJ9k7EQW', 'LLgqDf68j0', 'vpidu26@example.com', '29684263.75', '2059-11-15', '6905896.82', '53518.31', 'Rocket', 'NIuS8WseuR', 'Tony is shopping. Anne has free time. John has free time. Tony has free time. Tony has free time. ', '2008-03-07 07:49:29', 'Rejected'),
('2UEJ9k7EQW', 'LLgrqwBJRe', 'mjsq37@example.com', '409915.82', '2029-02-09', '4176309.99', NULL, 'SureCash', 'DTSQ6tQDI8', 'Anne is walking. John is shopping. John bought new car. Anne has free time. John bought new car. ', '2008-03-21 06:04:45', 'Pending'),
('2UEJ9k7EQW', 'LLgSXbDZ9Y', 'mjsq37@example.com', '48062501.23', '2028-03-17', '34631292.38', '485234.64', 'Upay', NULL, 'Anne bought new car. Anne has free time. ', '2008-03-10 01:59:06', 'Rejected'),
('2UEJ9k7EQW', 'LLgtkzJLKH', 'vpidu26@example.com', '7012898.68', '2059-01-30', '25418925.58', NULL, 'MCash', NULL, 'Tony bought new car. John is walking. John has free time. John has free time. ', '2008-02-26 06:48:05', 'Approved'),
('2UEJ9k7EQW', 'LLgZxFBjKS', 'vpidu26@example.com', '22598123.12', '2043-08-27', '41680923.57', '263645.28', 'bKash', 'm86hIMWBT6', 'Anne bought new car. John is shopping. Anne is shopping. Tony bought new car. John bought new car. ', '2008-09-01 16:15:05', 'Approved'),
('2X6X6M73uD', 'LLgIdbCR4E', 'imefxh@example.com', '14360553.97', '2058-08-31', '25616846.81', '83089.97', 'MCash', NULL, 'Anne bought new car. Anne bought new car. Tony has free time. Tony is walking. Tony has free time. ', '2008-01-03 18:41:50', 'Approved'),
('2X6X6M73uD', 'LLgJqtV0XD', 'mjsq37@example.com', '7509991.39', '2028-02-10', '3490235.81', '497079.54', 'Nagad', NULL, NULL, '2008-07-21 11:03:35', 'Pending'),
('386PruOGWL', 'LLgAHimp71', 'yrwzoaks@example.com', '23455277.53', '2031-01-27', '34217945.85', '442484.85', 'Nagad', NULL, NULL, '2008-02-21 04:21:52', 'Approved'),
('386PruOGWL', 'LLgzJV0E11', 'mjsq37@example.com', '48097578.46', '2027-08-14', '3159433.37', '65381.79', 'bKash', NULL, 'Anne is shopping. John bought new car. Tony bought new car. Tony bought new car. ', '2008-07-13 10:42:35', 'Rejected'),
('40tHGLfPWD', 'LLg5dOAiRb', 'imefxh@example.com', '7877285.69', '2032-04-18', '16705961.79', '141962.72', 'Nagad', NULL, 'Tony is walking. Anne bought new car. ', '2008-04-01 07:23:15', 'Pending'),
('40tHGLfPWD', 'LLgTOT8j64', 'mjsq37@example.com', '44535953.09', '2057-05-07', '22564166.85', '306911.03', 'Nagad', NULL, 'Anne has free time. Anne bought new car. Tony bought new car. Anne has free time. John has free time. ', '2008-01-12 05:14:13', 'Pending'),
('40tHGLfPWD', 'LLgx2KWbQO', 'imefxh@example.com', '47117111.31', '2023-09-14', '20374279.02', '441435.00', 'bKash', 'xg2U1QKPW3', 'Anne has free time. Anne is walking. John bought new car. Tony has free time. ', '2008-12-24 21:42:31', 'Approved'),
('56LxRD83Um', 'LLg2y7SC1R', 'xtnb32@example.com', '7042681.53', '2045-02-11', '18086177.58', '132638.72', 'Rocket', 'B8NLcknAeX', 'Anne is shopping. Anne is shopping. Anne bought new car. John is shopping. Anne has free time. ', '2008-06-15 10:42:26', 'Approved'),
('56LxRD83Um', 'LLgJnDK0DI', 'vpidu26@example.com', '27874959.78', '2038-08-25', '44341572.07', '219233.86', 'Nagad', 'KQx00QX1Rx', 'John has free time. John is shopping. Tony is walking. Tony bought new car. ', '2008-04-03 18:22:11', 'Pending'),
('5WUr4mLL2A', 'LLgDX55UX3', 'xtnb32@example.com', '35711482.16', '2041-07-14', '25232279.18', '312035.37', 'Rocket', NULL, 'Anne has free time. Tony bought new car. Anne bought new car. John is shopping. John has free time. ', '2008-09-19 00:33:19', 'Rejected'),
('5WUr4mLL2A', 'LLgH1P3N23', 'mjsq37@example.com', '47273540.44', '2045-12-02', '46024679.88', '358337.49', 'MCash', 'JFXnSKlu94', 'John is walking. Tony is walking. John bought new car. John is walking. ', '2008-05-10 07:49:13', 'Pending'),
('5WUr4mLL2A', 'LLghRQ4F6q', 'imefxh@example.com', '13936256.46', '2029-11-06', '31691602.83', '225317.75', 'Upay', NULL, 'Anne bought new car. Anne is shopping. Tony has free time. Tony is walking. John has free time. ', '2008-11-07 15:52:24', 'Pending'),
('5WUr4mLL2A', 'LLglcRJ7k3', 'xtnb32@example.com', '40207588.36', '2046-03-14', '10241779.62', '434071.60', 'Rocket', NULL, 'Anne is shopping. Anne is shopping. Tony has free time. ', '2008-11-12 04:57:53', 'Pending'),
('62TgNdPJLV', 'LLgXqHYMO1', 'mjsq37@example.com', '35001497.07', '2026-05-20', '17032876.22', '237520.11', 'Rocket', '1o46gl4VK5', 'Anne bought new car. Tony has free time. Anne has free time. Anne has free time. ', '2008-10-22 16:17:56', 'Pending'),
('6NFI2L4Cd6', 'LLg3HcLoPL', 'vpidu26@example.com', '3914126.47', '2030-09-15', '28722916.28', '387742.61', 'UCash', NULL, 'Anne is shopping. Tony has free time. Anne is walking. Tony is walking. John has free time. ', '2008-12-31 08:45:15', 'Rejected'),
('6NFI2L4Cd6', 'LLga32UDNn', 'mjsq37@example.com', '40343344.20', '2054-08-14', '13924476.92', '409189.08', 'bKash', NULL, NULL, '2008-03-30 02:19:31', 'Approved'),
('6NFI2L4Cd6', 'LLgO3XOxr1', 'xtnb32@example.com', '34554432.02', '2061-07-14', '17519609.38', '378300.50', 'MCash', NULL, 'John bought new car. Anne bought new car. Tony bought new car. Tony bought new car. Tony has free time. ', '2008-12-17 21:07:09', 'Pending'),
('7HUhJ9Ap2P', 'LLgFp06Ix1', 'xtnb32@example.com', '22738184.30', '2062-03-10', '39682496.59', '389280.41', 'Rocket', NULL, NULL, '2008-12-01 10:21:51', 'Rejected'),
('7HUhJ9Ap2P', 'LLgfTxSq9j', 'vpidu26@example.com', '44500313.76', '2046-04-11', '41714009.99', '276798.95', 'SureCash', '7pGV828ahA', 'Anne has free time. John is walking. John is shopping. John bought new car. John is walking. ', '2008-06-04 08:59:04', 'Pending'),
('7HUhJ9Ap2P', 'LLgiby1m76', 'imefxh@example.com', '32336491.79', '2069-08-12', '29744844.64', '486559.59', 'bKash', NULL, 'John has free time. John bought new car. John has free time. Tony has free time. John has free time. ', '2008-08-26 12:46:17', 'Pending'),
('7PWHoL1lbj', 'LLg4x2q4XN', 'imefxh@example.com', '28604944.11', '2067-11-25', '15127100.01', '446321.12', 'bKash', NULL, 'Anne has free time. Tony is shopping. Tony bought new car. Anne has free time. ', '2008-12-03 11:05:39', 'Rejected'),
('7PWHoL1lbj', 'LLgFkrd5YL', 'mjsq37@example.com', '3221067.61', '2044-09-26', '34361168.81', '193211.29', 'MCash', NULL, 'Tony bought new car. Anne is shopping. Anne has free time. Anne is walking. Anne is shopping. ', '2008-09-12 06:59:39', 'Pending'),
('7PWHoL1lbj', 'LLgJ13Z7SF', 'xtnb32@example.com', '22628262.93', '2023-03-03', '819919.94', NULL, 'bKash', NULL, 'John is walking. Tony bought new car. ', '2008-07-09 18:54:07', 'Pending'),
('7PWHoL1lbj', 'LLgYJbToyu', 'yrwzoaks@example.com', '4722616.01', '2049-07-30', '14193289.52', '246540.74', 'SureCash', NULL, 'Anne is walking. Tony has free time. ', '2008-05-07 22:58:45', 'Rejected'),
('7sY7S29wXa', 'LLgCKcKseG', 'xtnb32@example.com', '8700221.29', '2042-12-13', '18805643.02', '252622.74', 'Nagad', NULL, 'Tony bought new car. John is walking. Anne bought new car. Anne has free time. Tony is shopping. ', '2008-10-02 04:03:09', 'Pending'),
('7sY7S29wXa', 'LLgeQiKSh6', 'imefxh@example.com', '48041813.00', '2040-02-10', '1434384.76', '164037.88', 'Nagad', NULL, 'John bought new car. Anne is walking. Tony bought new car. ', '2008-02-27 13:35:10', 'Pending'),
('7sY7S29wXa', 'LLgS1b4cCs', 'mjsq37@example.com', '27937240.68', '2047-02-26', '41826288.83', NULL, 'MCash', NULL, 'Tony has free time. John is walking. John bought new car. Tony has free time. Tony bought new car. ', '2008-05-17 21:16:11', 'Rejected'),
('BPGJq3j7QY', 'LLg1XL8CF4', 'imefxh@example.com', '8503433.49', '2056-06-01', '3906515.32', '187852.01', 'bKash', NULL, 'Anne bought new car. Anne bought new car. Tony has free time. Tony is walking. John has free time. ', '2008-12-02 03:21:05', 'Rejected'),
('BPGJq3j7QY', 'LLg4M4878N', 'yrwzoaks@example.com', '6914945.52', '2041-11-28', '4956480.65', '353752.16', 'Nagad', NULL, 'John is walking. Anne is walking. John bought new car. ', '2008-06-18 13:43:05', 'Approved'),
('BPGJq3j7QY', 'LLg8x2p238', 'yrwzoaks@example.com', '1061570.00', '2029-04-02', '46044115.39', '173449.84', 'Nagad', NULL, 'John has free time. Anne is walking. Anne bought new car. ', '2008-01-26 17:09:17', 'Approved'),
('BPGJq3j7QY', 'LLgBFqHjHD', 'mjsq37@example.com', '33032964.85', '2032-06-15', '34900731.54', '56843.29', 'MCash', NULL, 'Anne is walking. Tony is shopping. John bought new car. John has free time. Anne has free time. ', '2008-09-02 18:14:54', 'Pending'),
('BPGJq3j7QY', 'LLgN3OH9F4', 'xtnb32@example.com', '7067832.00', '2062-05-01', '32182057.86', '499369.68', 'SureCash', NULL, 'Anne is shopping. John is shopping. Tony has free time. ', '2008-08-09 20:38:10', 'Approved'),
('CpVCTU6BV3', 'LLgAD9PNf4', 'vpidu26@example.com', '47161289.29', '2047-08-09', '34169226.00', '84338.84', 'MCash', NULL, 'John is shopping. John bought new car. Tony is walking. ', '2008-02-12 06:20:10', 'Rejected'),
('CpVCTU6BV3', 'LLgeNh8Xl4', 'xtnb32@example.com', '34671090.66', '2037-01-24', '20083844.85', '75284.30', 'bKash', NULL, 'John bought new car. Anne is walking. John has free time. Tony bought new car. ', '2008-04-13 08:53:36', 'Rejected'),
('D2CVG7MK3X', 'LLgOOFz68V', 'yrwzoaks@example.com', '49957356.11', '2055-07-26', '44199734.03', '154858.10', 'MCash', '3m6NGBl20o', 'Anne is shopping. Anne is walking. Tony has free time. Anne has free time. Tony is walking. ', '2008-11-09 03:35:20', 'Rejected'),
('D2CVG7MK3X', 'LLgsR2Od1L', 'imefxh@example.com', '36309395.89', '2062-01-11', '39057013.06', '283150.48', 'MCash', NULL, 'Anne bought new car. John has free time. Tony has free time. John has free time. John bought new car. ', '2008-01-20 10:32:27', 'Rejected'),
('D2CVG7MK3X', 'LLgygy895d', 'xtnb32@example.com', '39804943.99', '2037-09-30', '47858785.46', '130632.86', 'Nagad', NULL, 'Anne bought new car. Anne is shopping. Tony bought new car. Anne bought new car. John has free time. ', '2008-04-17 13:13:13', 'Approved'),
('em7QjEFoSa', 'LLgMHpXwgB', 'vpidu26@example.com', '5186618.58', '2063-06-13', '9259729.99', '484868.56', 'SureCash', NULL, 'Anne bought new car. Anne is walking. John is walking. Tony bought new car. ', '2008-08-03 08:34:28', 'Pending'),
('em7QjEFoSa', 'LLgo6FP2OS', 'yrwzoaks@example.com', '36908139.30', '2056-09-17', '48490795.34', '240519.33', 'MCash', NULL, 'Tony is shopping. Anne has free time. Tony bought new car. ', '2008-11-16 21:13:00', 'Pending'),
('em7QjEFoSa', 'LLgvMBJOVY', 'xtnb32@example.com', '8499672.12', '2035-06-18', '29179682.15', '389943.33', 'bKash', '381hy2EdWc', 'John bought new car. Anne has free time. John bought new car. Tony is walking. Tony has free time. ', '2008-03-19 12:35:26', 'Rejected'),
('fXHqICmSoo', 'LLgLmLML7i', 'xtnb32@example.com', '20672451.14', '2042-03-07', '29698535.75', '197044.12', 'MCash', NULL, 'Anne bought new car. Anne is walking. ', '2008-01-16 08:33:05', 'Rejected'),
('fXHqICmSoo', 'LLgXGMB5w8', 'xtnb32@example.com', '37737494.51', '2043-11-02', '33938905.95', '189318.78', 'MCash', NULL, 'Anne has free time. Anne has free time. ', '2008-02-05 08:14:24', 'Approved'),
('fXHqICmSoo', 'LLgXnGB3M5', 'xtnb32@example.com', '9596948.29', '2051-08-02', '7353618.92', '70581.07', 'Rocket', NULL, 'John bought new car. Anne has free time. John is walking. John has free time. Tony has free time. ', '2008-05-02 08:49:40', 'Pending'),
('H6HiO6NE3f', 'LLgvV8t20X', 'yrwzoaks@example.com', '2438672.90', '2024-06-20', '1463882.55', '228224.99', 'Rocket', NULL, 'Anne is shopping. Anne bought new car. Tony has free time. John is shopping. Tony has free time. ', '2008-08-28 11:06:00', 'Pending'),
('H6HiO6NE3f', 'LLgW5pB7Q8', 'yrwzoaks@example.com', '3596052.14', '2065-07-25', '4458507.56', '400105.53', 'MCash', 'A1lFL9ODrD', 'John has free time. Tony is shopping. John has free time. Anne bought new car. John is shopping. ', '2008-06-11 20:27:04', 'Pending'),
('I360Ao2HAy', 'LLg2VtXrP6', 'mjsq37@example.com', '14050918.36', '2043-09-17', '38668931.24', '273301.72', 'MCash', '9BorMQdURQ', 'Tony is walking. Anne bought new car. Tony has free time. Anne has free time. Tony has free time. ', '2008-05-01 21:30:12', 'Approved'),
('I360Ao2HAy', 'LLg6Wq1e78', 'xtnb32@example.com', '48368119.14', '2069-07-23', '14409842.88', '98193.95', 'MCash', NULL, 'Tony bought new car. Tony bought new car. Tony has free time. Tony is walking. Tony has free time. ', '2008-02-21 10:37:48', 'Approved'),
('I360Ao2HAy', 'LLg8j0UJ7y', 'vpidu26@example.com', '35890531.24', '2047-08-02', '43216517.92', '157600.18', 'Nagad', NULL, 'Anne has free time. Tony is shopping. John is shopping. Tony has free time. ', '2008-06-14 16:37:21', 'Pending'),
('I360Ao2HAy', 'LLgG2Znx8V', 'imefxh@example.com', '24941881.49', '2057-05-03', '35154631.38', NULL, 'bKash', NULL, 'Anne has free time. Anne is shopping. John is walking. Tony has free time. Anne has free time. ', '2008-04-04 23:03:01', 'Rejected'),
('i55BtGJJRE', 'LLgP3Jur1D', 'yrwzoaks@example.com', '32170209.27', '2037-06-14', '18738232.42', '345749.41', 'Nagad', NULL, 'John is shopping. Anne is shopping. Anne bought new car. Tony has free time. Tony has free time. ', '2008-01-07 07:25:15', 'Rejected'),
('i55BtGJJRE', 'LLgPXRD2Xx', 'mjsq37@example.com', '43683982.68', '2061-10-17', '8311024.50', '137564.80', 'MCash', 'evU9ro6tBR', 'John bought new car. John is walking. Tony bought new car. Tony is walking. Anne has free time. ', '2008-10-11 06:43:17', 'Pending'),
('iRC3H66UPx', 'LLg2U4ECrL', 'xtnb32@example.com', '22384070.07', '2042-11-10', '11696719.20', '456454.61', 'Rocket', NULL, 'Tony bought new car. Tony is walking. John bought new car. John is shopping. Tony is shopping. ', '2008-09-22 01:47:38', 'Pending'),
('iRC3H66UPx', 'LLgePFT7hi', 'imefxh@example.com', '41992574.92', '2036-01-13', '40505915.23', '494488.22', 'UCash', 'UIJVW1reBb', 'Anne is walking. Anne has free time. John has free time. ', '2008-01-03 23:33:44', 'Approved'),
('iRC3H66UPx', 'LLgLu6hCMx', 'xtnb32@example.com', '16046597.93', '2052-08-04', '15322907.20', '280305.21', 'Upay', 'YVTyRv3taC', 'Tony bought new car. John is shopping. Anne bought new car. ', '2008-01-11 13:48:38', 'Pending'),
('iRC3H66UPx', 'LLgvXEV26o', 'yrwzoaks@example.com', '731694.03', '2024-09-30', '22260143.88', '445302.69', 'Nagad', NULL, 'John has free time. Anne bought new car. Anne is shopping. Tony is walking. John is shopping. ', '2008-08-28 19:11:35', 'Pending'),
('iXtOe9IFMF', 'LLgCOCqVUA', 'vpidu26@example.com', '27476978.76', '2029-04-05', '44080964.88', '228745.97', 'Rocket', 'srk9cPEL8t', 'John bought new car. Anne bought new car. ', '2008-04-14 21:15:50', 'Approved'),
('iXtOe9IFMF', 'LLgN7617A0', 'imefxh@example.com', '44814746.80', '2038-02-05', '41586005.07', '245694.17', 'MCash', NULL, 'Anne has free time. Tony bought new car. Anne has free time. Tony has free time. Tony has free time. ', '2008-01-26 10:41:00', 'Approved'),
('iXtOe9IFMF', 'LLgQDdMlhL', 'xtnb32@example.com', '16016472.08', '2041-12-26', '23810340.81', '104195.21', 'UCash', '2Kb1R5DRmQ', 'Tony bought new car. Anne has free time. Tony bought new car. Tony is walking. Tony has free time. ', '2008-09-09 13:18:02', 'Pending'),
('J701AmjsQI', 'LLgaUQW7sT', 'vpidu26@example.com', '47021839.73', '2055-01-25', '16949270.42', '169386.06', 'Rocket', NULL, 'John bought new car. Anne has free time. ', '2008-09-04 12:39:41', 'Approved'),
('J701AmjsQI', 'LLgN030SJ6', 'mjsq37@example.com', '13069485.81', '2036-06-06', '29325805.55', '74688.52', 'bKash', NULL, 'Anne has free time. Anne has free time. John bought new car. John has free time. John has free time. ', '2008-02-04 07:44:44', 'Pending'),
('J701AmjsQI', 'LLgots4MB8', 'imefxh@example.com', '33684372.65', '2065-02-01', '14123741.55', '340385.92', 'SureCash', 'eLft1nBq2R', NULL, '2008-06-27 16:56:56', 'Rejected'),
('J701AmjsQI', 'LLgyjWB7o0', 'yrwzoaks@example.com', '26811111.94', '2039-04-21', '17759879.68', '252622.46', 'MCash', NULL, 'Anne bought new car. Anne is walking. Tony is walking. John has free time. ', '2008-09-08 14:38:06', 'Approved'),
('jG25oTGYMK', 'LLg804I3Im', 'imefxh@example.com', '44980422.22', '2064-11-13', '28047036.05', '278044.27', 'Nagad', NULL, 'Anne is shopping. Tony has free time. Anne bought new car. John has free time. John has free time. ', '2008-06-21 21:16:37', 'Pending'),
('jG25oTGYMK', 'LLgJC3JL35', 'vpidu26@example.com', '31887426.75', '2049-06-11', '43865906.90', '316392.53', 'SureCash', 'JvKd9AQH6U', 'Tony has free time. Tony has free time. ', '2008-06-30 10:52:41', 'Rejected'),
('jG25oTGYMK', 'LLglEeiwPB', 'xtnb32@example.com', '36362083.90', '2024-11-08', '36601816.52', '211833.15', 'Rocket', NULL, 'Anne bought new car. Tony is walking. ', '2008-03-23 20:41:27', 'Pending'),
('jG25oTGYMK', 'LLgQs1eoxm', 'vpidu26@example.com', '36566315.59', '2057-01-25', '36539467.19', '216277.44', 'Nagad', NULL, 'Anne bought new car. Tony has free time. Tony bought new car. ', '2008-09-24 02:05:58', 'Pending'),
('jG25oTGYMK', 'LLgV1DbLC6', 'imefxh@example.com', '29283749.24', '2027-12-18', '7997888.69', '457334.52', 'bKash', NULL, 'Anne bought new car. John has free time. Tony bought new car. Tony is walking. John is walking. ', '2008-10-28 03:12:21', 'Rejected'),
('JOFH9TTM5C', 'LLgGp1Dhrk', 'vpidu26@example.com', '28701067.72', '2044-08-17', '30608009.77', '195914.04', 'Upay', '1jDcw1SlEa', 'Anne has free time. Tony bought new car. John is walking. Anne has free time. John bought new car. ', '2008-10-03 01:22:22', 'Rejected'),
('JTQ37vPTFE', 'LLgfWRgDKS', 'yrwzoaks@example.com', '3315287.06', '2049-03-02', '38153229.91', '102333.32', 'MCash', NULL, 'Anne bought new car. Anne is shopping. John has free time. John has free time. Tony is walking. ', '2008-12-23 05:42:53', 'Pending'),
('JTQ37vPTFE', 'LLgu16wQYw', 'yrwzoaks@example.com', '42145940.20', '2059-07-04', '4626150.03', '228839.77', 'MCash', '0F74cO74GA', 'Anne bought new car. Anne bought new car. John bought new car. ', '2008-04-19 03:55:26', 'Rejected'),
('JVvABQPbK8', 'LLg40SCKyJ', 'vpidu26@example.com', '49768192.23', '2040-04-21', '29851712.03', '53109.98', 'Rocket', NULL, 'Anne bought new car. Anne bought new car. ', '2008-08-18 11:45:44', 'Approved'),
('JVvABQPbK8', 'LLgPBykX44', 'vpidu26@example.com', '14249362.62', '2045-01-18', '47195989.43', '156112.41', 'Nagad', NULL, NULL, '2008-10-08 19:25:22', 'Rejected'),
('oa6e6bSM26', 'LLgft8Ke8W', 'yrwzoaks@example.com', '17406615.46', '2044-10-06', '21309490.54', '412146.33', 'SureCash', NULL, 'Anne is walking. Tony has free time. Tony is walking. John is shopping. John has free time. ', '2008-07-20 11:07:36', 'Pending'),
('oa6e6bSM26', 'LLgjOGAvNQ', 'mjsq37@example.com', '7679043.56', '2023-03-11', '44308486.57', '321691.10', 'Nagad', NULL, 'John has free time. Tony is walking. ', '2008-05-15 09:26:51', 'Pending'),
('oa6e6bSM26', 'LLgT4xLRJO', 'yrwzoaks@example.com', '8772054.73', '2048-12-18', '3128140.13', '134800.65', 'MCash', '5BQ2Kw1kOG', 'Anne is shopping. John has free time. Anne has free time. ', '2008-09-03 04:03:59', 'Pending'),
('QMLFW3hgMV', 'LLg1e5qx4h', 'imefxh@example.com', '30497320.81', '2061-01-16', '40368107.67', '255513.63', 'SureCash', NULL, 'Anne bought new car. Anne is shopping. Tony bought new car. Anne has free time. Anne has free time. ', '2008-09-25 12:08:47', 'Rejected'),
('QMLFW3hgMV', 'LLgK878QXt', 'yrwzoaks@example.com', '28465530.30', '2033-12-13', '44535992.61', '65826.56', 'Rocket', 'H0863IbCDy', 'Tony is shopping. Anne has free time. ', '2008-11-21 01:10:09', 'Pending'),
('QMLFW3hgMV', 'LLgMSx4Zx8', 'yrwzoaks@example.com', '16722553.50', '2031-01-21', '10165960.78', '218667.92', 'Nagad', NULL, 'John has free time. John is walking. Tony bought new car. Tony bought new car. Tony has free time. ', '2008-10-19 20:03:36', 'Approved'),
('QMLFW3hgMV', 'LLgOEBNRE0', 'imefxh@example.com', '45795061.83', '2061-10-15', '22600734.29', '107169.28', 'Rocket', 'gYK1yX4M9D', 'Anne bought new car. John is shopping. Tony has free time. John has free time. John is shopping. ', '2008-10-05 18:34:27', 'Pending'),
('QMLFW3hgMV', 'LLgOiVPxVg', 'imefxh@example.com', '25080493.34', '2050-03-05', '32546691.74', NULL, 'Nagad', NULL, 'John bought new car. John bought new car. John has free time. John has free time. John has free time. ', '2008-05-23 06:06:20', 'Pending'),
('QMLFW3hgMV', 'LLgtN0TtnT', 'vpidu26@example.com', '24792915.20', '2048-10-08', '14817478.78', '173631.77', 'SureCash', NULL, 'Anne has free time. Tony bought new car. ', '2008-11-05 20:46:52', 'Pending'),
('qPB53UUBgB', 'LLgDBNUSyf', 'vpidu26@example.com', '23485143.98', '2054-06-26', '41575257.44', '412987.21', 'SureCash', 'IBGZ8JATTu', 'John has free time. Anne bought new car. Tony has free time. Tony bought new car. Tony bought new car. ', '2008-12-28 15:11:42', 'Rejected'),
('qPB53UUBgB', 'LLgnbuFYr6', 'xtnb32@example.com', '33779847.52', '2036-09-27', '24498546.34', '125945.73', 'SureCash', 'DOdH4Ni94n', NULL, '2008-12-08 12:54:31', 'Pending'),
('qPB53UUBgB', 'LLgTEHXbj2', 'yrwzoaks@example.com', '22532696.51', '2041-11-17', '13531847.41', '316707.55', 'MCash', NULL, 'Anne bought new car. Anne bought new car. John bought new car. John has free time. Tony has free time. ', '2008-02-05 21:41:43', 'Pending'),
('QSGQdD11KP', 'LLg7smqE3n', 'xtnb32@example.com', '13037356.30', '2052-12-09', '1753646.36', '325697.18', 'bKash', NULL, 'Anne has free time. John bought new car. Tony is walking. Anne bought new car. John is walking. ', '2008-09-07 14:19:49', 'Rejected'),
('QSGQdD11KP', 'LLgb142cIq', 'vpidu26@example.com', '10199677.45', '2039-10-20', '6310467.69', '167978.08', 'UCash', NULL, 'John has free time. John bought new car. John is shopping. Anne has free time. Tony bought new car. ', '2008-04-09 09:01:06', 'Pending'),
('QSGQdD11KP', 'LLgqaWB6F6', 'vpidu26@example.com', '35564726.57', '2041-09-13', '36249083.00', '197001.26', 'SureCash', NULL, 'Anne bought new car. Anne is shopping. ', '2008-05-01 14:31:29', 'Pending'),
('QSGQdD11KP', 'LLgUy5HOLE', 'vpidu26@example.com', '36618860.63', '2040-05-30', '24685914.01', '324100.13', 'bKash', NULL, 'Anne has free time. Tony is shopping. ', '2008-04-16 00:19:06', 'Rejected'),
('R5YE9UVyOR', 'LLggGjYVPN', 'mjsq37@example.com', '48940383.32', '2046-08-28', '39405275.11', '320423.57', 'bKash', NULL, 'John bought new car. Anne bought new car. John bought new car. Anne has free time. Tony is walking. ', '2008-01-18 23:38:27', 'Pending'),
('RIyIKUb48G', 'LLgIG2oU51', 'yrwzoaks@example.com', '44422473.63', '2054-09-06', '49403231.78', '255946.49', 'bKash', NULL, 'John bought new car. Anne is walking. Tony bought new car. John bought new car. ', '2008-06-26 10:44:30', 'Rejected'),
('RIyIKUb48G', 'LLgQYmXXqI', 'mjsq37@example.com', '37588783.11', '2047-12-25', '793861.82', '180887.61', 'SureCash', NULL, 'Anne has free time. Tony is walking. John bought new car. Tony is walking. Anne has free time. ', '2008-10-12 03:41:02', 'Pending'),
('RIyIKUb48G', 'LLguXDSpbG', 'vpidu26@example.com', '5907846.08', '2060-08-17', '4891210.14', '300299.47', 'Rocket', NULL, 'John bought new car. Anne is walking. Tony bought new car. Anne bought new car. Anne is walking. ', '2008-03-03 11:02:14', 'Pending'),
('RNKR4dUu6s', 'LLg7oMRIRY', 'mjsq37@example.com', '32679511.47', '2054-09-17', '25800139.38', NULL, 'Nagad', NULL, 'Tony has free time. John is walking. Tony is walking. Tony bought new car. Anne bought new car. ', '2008-12-22 07:16:46', 'Approved'),
('RNKR4dUu6s', 'LLgmkJrZ7C', 'vpidu26@example.com', '21565903.00', '2054-01-03', '25500327.60', '415853.63', 'bKash', NULL, 'Anne is walking. Anne has free time. Tony is shopping. Tony bought new car. ', '2008-12-16 16:48:07', 'Approved'),
('RNKR4dUu6s', 'LLgQbI7MY5', 'mjsq37@example.com', '12964518.09', '2049-05-20', '343802.98', NULL, 'MCash', NULL, 'Anne bought new car. Anne is shopping. ', '2008-10-24 17:39:47', 'Rejected'),
('rWZOakSz52', 'LLg8VRiKSW', 'mjsq37@example.com', '15247758.55', '2039-04-06', '1712194.32', '104441.33', 'Nagad', 'En5PmDkIZH', NULL, '2008-06-25 14:01:27', 'Pending'),
('rWZOakSz52', 'LLge6xsc4I', 'imefxh@example.com', '1539392.95', '2035-08-27', '38010043.35', '304762.52', 'Nagad', NULL, 'John bought new car. Anne is walking. John bought new car. Tony is walking. ', '2008-05-14 12:00:31', 'Pending'),
('rWZOakSz52', 'LLgGJnF31U', 'mjsq37@example.com', '20997911.96', '2037-08-26', '9705235.08', '489310.21', 'UCash', NULL, 'Tony has free time. Anne is walking. ', '2008-06-08 15:45:15', 'Pending'),
('SfcFP342qq', 'LLgiULBd5Y', 'mjsq37@example.com', '40567947.40', '2025-10-06', '11001262.87', '64773.67', 'UCash', NULL, 'Anne is walking. Tony is shopping. John has free time. Anne bought new car. John has free time. ', '2008-10-26 10:25:04', 'Pending'),
('tnB32c4GyR', 'LLgG1MA6WZ', 'yrwzoaks@example.com', '47086917.14', '2065-07-07', '442336.07', '58603.11', 'Rocket', '3WDLwBMIq1', 'John bought new car. John is shopping. John is walking. Anne has free time. ', '2008-10-16 22:51:13', 'Approved'),
('tnB32c4GyR', 'LLgRM1YRWF', 'vpidu26@example.com', '24398508.11', '2022-03-01', '2056005.67', '326009.22', 'MCash', NULL, NULL, '2008-06-10 00:25:39', 'Pending'),
('Ts22V8v7SI', 'LLg5BwH7n4', 'mjsq37@example.com', '7963969.43', '2034-11-09', '49736863.52', '190903.22', 'SureCash', NULL, 'Anne has free time. Anne is walking. Tony has free time. ', '2008-05-29 22:23:37', 'Rejected'),
('Ts22V8v7SI', 'LLgA5vTjOw', 'imefxh@example.com', '48876745.70', '2060-08-20', '19674178.24', '113911.89', 'MCash', NULL, 'John bought new car. Anne is shopping. Tony bought new car. Tony has free time. Tony has free time. ', '2008-09-18 10:25:30', 'Approved'),
('Ts22V8v7SI', 'LLgftfTONG', 'imefxh@example.com', '37109463.50', '2053-07-31', '32379920.86', '201357.69', 'MCash', NULL, 'Tony bought new car. Tony has free time. John bought new car. Anne is shopping. John is walking. ', '2008-06-28 03:25:43', 'Pending'),
('Ts22V8v7SI', 'LLgK4B7P4E', 'vpidu26@example.com', '35444606.76', '2045-06-10', '29008061.58', '368763.19', 'SureCash', NULL, NULL, '2008-09-27 15:43:41', 'Rejected'),
('Ts22V8v7SI', 'LLgL2kHVXY', 'mjsq37@example.com', '1891433.28', '2040-01-08', '15923223.21', '296350.97', 'UCash', 'ZHEMROJUP8', 'Anne bought new car. Tony has free time. Tony bought new car. Tony has free time. John has free time. ', '2008-07-26 08:06:31', 'Pending'),
('Ts22V8v7SI', 'LLgqGH73D4', 'xtnb32@example.com', '25578800.54', '2060-10-07', '13728627.65', '90318.00', 'MCash', NULL, 'John is shopping. Tony has free time. Tony has free time. Tony bought new car. Tony is shopping. ', '2008-03-19 19:59:36', 'Pending'),
('Ts22V8v7SI', 'LLgX48D4t3', 'yrwzoaks@example.com', '2737346.51', '2044-05-17', '42903073.64', '160284.90', 'Nagad', 'i2DgpQS6HB', 'Anne bought new car. John has free time. Tony bought new car. John is shopping. John has free time. ', '2008-03-17 04:03:36', 'Pending'),
('ttV2EW3T76', 'LLg44Dd2V4', 'imefxh@example.com', '38419441.35', '2060-11-30', '23118768.87', '355557.18', 'Nagad', 'y25I59U83I', 'Anne is walking. Anne has free time. Tony has free time. John has free time. John bought new car. ', '2008-05-30 21:01:29', 'Pending'),
('ttV2EW3T76', 'LLg6VrSJ8X', 'imefxh@example.com', '83052.58', '2056-08-25', '6034471.36', '89918.66', 'MCash', NULL, 'Anne has free time. Anne is shopping. Anne bought new car. Tony is walking. John has free time. ', '2008-04-10 23:11:18', 'Pending'),
('ttV2EW3T76', 'LLg7HOD0VO', 'xtnb32@example.com', '27022632.00', '2060-05-12', '22001306.08', '229627.93', 'Upay', NULL, 'John is walking. Tony has free time. John has free time. Anne has free time. ', '2008-11-22 07:52:16', 'Approved'),
('ttV2EW3T76', 'LLgDS2Qa6H', 'xtnb32@example.com', '17774939.23', '2065-02-28', '28021547.45', '56097.33', 'Nagad', NULL, 'Anne bought new car. Anne bought new car. Tony is walking. Tony has free time. ', '2008-01-16 11:36:04', 'Rejected'),
('ttV2EW3T76', 'LLgSi5Y4tE', 'vpidu26@example.com', '16939785.50', '2038-10-24', '47655359.86', '156576.23', 'MCash', NULL, 'John is shopping. Tony is shopping. Tony has free time. John bought new car. Tony is shopping. ', '2008-03-19 20:40:26', 'Rejected'),
('ttV2EW3T76', 'LLgTSHKm3i', 'imefxh@example.com', '34943532.96', '2049-01-13', '5634729.74', '218838.90', 'Nagad', NULL, 'Anne has free time. Anne has free time. ', '2008-01-15 23:48:02', 'Pending'),
('V5IDUGPzbe', 'LLg2W9XG08', 'yrwzoaks@example.com', '24108463.93', '2068-10-27', '1760709.24', '349870.85', 'Rocket', NULL, 'Anne bought new car. Anne bought new car. ', '2008-11-13 09:37:17', 'Approved'),
('V5IDUGPzbe', 'LLgYyM3ISW', 'imefxh@example.com', '42464136.15', '2047-11-03', '38815691.59', '212002.45', 'Nagad', NULL, 'Anne bought new car. Tony has free time. Tony bought new car. Tony is shopping. Tony has free time. ', '2008-09-18 05:52:16', 'Rejected'),
('vIBFU4iA36', 'LLgAxcJeEJ', 'yrwzoaks@example.com', '17664486.24', '2062-05-16', '21350656.83', '223946.42', 'bKash', NULL, 'Anne is shopping. Anne bought new car. Anne is walking. ', '2008-08-29 06:36:51', 'Rejected'),
('vIBFU4iA36', 'LLghV3GnDe', 'xtnb32@example.com', '23153878.12', '2056-05-28', '26756191.01', '229091.82', 'bKash', NULL, 'Anne is walking. Tony bought new car. Tony bought new car. John has free time. Tony bought new car. ', '2008-06-19 11:03:48', 'Pending'),
('vIBFU4iA36', 'LLgRYsR7JH', 'mjsq37@example.com', '2686664.14', '2063-07-08', '46714993.69', '443106.96', 'Rocket', NULL, 'Tony bought new car. John has free time. Anne bought new car. John has free time. Tony bought new car. ', '2008-03-10 22:04:08', 'Rejected'),
('W388ROMD2G', 'LLg2n1SSMu', 'mjsq37@example.com', '22915339.92', '2059-12-05', '7936469.55', NULL, 'Rocket', NULL, 'Anne bought new car. Anne has free time. John bought new car. John bought new car. Tony has free time. ', '2008-06-13 06:26:22', 'Approved'),
('W388ROMD2G', 'LLgeLL2DR7', 'mjsq37@example.com', '23685307.81', '2052-01-31', '37982690.64', NULL, 'UCash', NULL, 'John has free time. Anne bought new car. Anne bought new car. Anne bought new car. Anne has free time. ', '2008-03-14 04:45:21', 'Pending'),
('W388ROMD2G', 'LLgk5XIXUD', 'imefxh@example.com', '19833703.09', '2037-07-09', '48566794.29', '61970.58', 'bKash', NULL, 'Anne is shopping. John is walking. John bought new car. John has free time. John bought new car. ', '2008-10-02 13:05:40', 'Approved'),
('W388ROMD2G', 'LLgWnvS3DS', 'imefxh@example.com', '2063689.39', '2036-08-10', '46630101.43', '312521.87', 'MCash', NULL, 'John is walking. Tony has free time. ', '2008-09-22 06:22:41', 'Rejected'),
('wVkJ6lPM2S', 'LLg97peE7S', 'vpidu26@example.com', '6179696.98', '2057-05-12', '49234544.75', '201719.06', 'bKash', NULL, 'Anne has free time. Tony is walking. Tony bought new car. Anne is walking. Tony has free time. ', '2008-06-05 14:01:34', 'Approved'),
('wVkJ6lPM2S', 'LLgEduC1UK', 'xtnb32@example.com', '37128784.55', '2066-12-13', '9562035.43', '183190.21', 'Upay', NULL, 'Anne is walking. Anne bought new car. Anne has free time. John bought new car. Tony has free time. ', '2008-09-24 02:20:41', 'Approved'),
('wVkJ6lPM2S', 'LLgQHjG85E', 'imefxh@example.com', '22437655.11', '2063-08-23', '38511628.33', '358733.50', 'SureCash', NULL, 'Anne is shopping. Anne is walking. ', '2008-02-14 07:16:58', 'Rejected'),
('XNCTBKGYN2', 'LLg6EXBJkK', 'mjsq37@example.com', '22197348.51', '2066-05-19', '12428877.24', '156429.02', 'Nagad', NULL, 'Tony bought new car. Anne has free time. John bought new car. John has free time. John has free time. ', '2008-12-01 02:18:48', 'Pending'),
('XNCTBKGYN2', 'LLgBKrVtPZ', 'imefxh@example.com', '33490845.37', '2045-12-04', '36138728.93', '483677.14', 'Rocket', NULL, 'John has free time. John is shopping. ', '2008-04-10 09:33:24', 'Rejected'),
('XNCTBKGYN2', 'LLgP7vLlD6', 'mjsq37@example.com', '20138312.64', '2022-03-17', '48500525.48', '296193.41', 'Nagad', 'gI8huBQK54', 'Anne bought new car. John bought new car. John bought new car. Anne has free time. Tony is shopping. ', '2008-01-12 14:17:45', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` char(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('Apartment','Studio') NOT NULL,
  `vendor_email` varchar(50) NOT NULL,
  `description` tinytext DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `enlisted_for` enum('Rent','Lease','Both') NOT NULL,
  `availability_status` enum('vacant','rented','leased') NOT NULL DEFAULT 'vacant',
  `post` enum('draft','public') NOT NULL DEFAULT 'draft'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `name`, `type`, `vendor_email`, `description`, `created_at`, `updated_at`, `enlisted_for`, `availability_status`, `post`) VALUES
('06fHm22UeX', 'Lillian Duran', 'Studio', 'iuub@example.com', 'John bought new car. Tony bought new car. ', '2008-11-20 01:06:50', '2022-07-13 22:50:46', 'Rent', 'vacant', 'draft'),
('0kt6Pbxim1', 'Robbie Baird', 'Apartment', 'pbkwri@example.com', NULL, '2008-12-11 14:39:23', '2008-10-06 03:52:56', 'Rent', 'leased', 'public'),
('0XDpVJLSOY', 'Teddy Hoover', 'Apartment', 'usyss.ywxa@example.com', 'Anne bought new car. Anne bought new car. Tony bought new car. John has free time. Tony has free time. ', '2008-09-24 11:45:23', '2008-10-18 21:22:14', 'Rent', 'leased', 'public'),
('2e66SeY7Zx', 'Carl Nunez', 'Apartment', 'oeyi2@example.com', 'Tony is shopping. Tony is walking. ', '2008-08-04 23:52:06', '2008-07-02 22:13:24', 'Lease', 'vacant', 'draft'),
('2Q6GB2tPHQ', 'Noah Nolan', 'Studio', 'oeyi2@example.com', 'Anne has free time. Anne is walking. John has free time. Anne bought new car. ', '2008-01-15 10:46:03', '2022-07-13 22:50:46', 'Rent', 'rented', 'public'),
('2RhCoFY7Nq', 'Caroline Nash', 'Apartment', 'iuub@example.com', NULL, '2008-11-02 01:47:43', '2008-06-23 06:13:35', 'Rent', 'vacant', 'public'),
('2UEJ9k7EQW', 'Lucas Rivers', 'Apartment', 'imefxh@example.com', 'John bought new car. Anne has free time. Tony has free time. Tony has free time. Tony has free time. ', '2008-04-13 09:10:46', '2008-09-08 16:26:34', 'Rent', 'vacant', 'public'),
('2X6X6M73uD', 'Emma Anthony', 'Apartment', 'iuub@example.com', 'Tony bought new car. Anne is shopping. Tony has free time. John has free time. John has free time. ', '2008-05-03 06:29:13', '2022-07-13 22:50:25', 'Rent', 'rented', 'draft'),
('386PruOGWL', 'Kathleen Novak', 'Apartment', 'iuub@example.com', 'John has free time. Anne bought new car. Anne is walking. John has free time. John has free time. ', '2008-04-25 16:29:31', '2008-09-23 00:42:19', 'Rent', 'vacant', 'draft'),
('40tHGLfPWD', 'Dianna Oliver', 'Apartment', 'ippb@example.com', 'Anne is shopping. Anne is walking. ', '2008-04-26 03:55:51', '2008-07-07 05:40:11', 'Lease', 'vacant', 'draft'),
('56LxRD83Um', 'Dwight Patton', 'Studio', 'oeyi2@example.com', 'Anne has free time. Anne is walking. John bought new car. Anne has free time. Tony has free time. ', '2008-03-13 22:26:28', '2022-07-13 22:50:46', 'Lease', 'vacant', 'draft'),
('5WUr4mLL2A', 'Elisabeth Cole', 'Apartment', 'usyss.ywxa@example.com', 'Anne bought new car. John is shopping. John is walking. John bought new car. John has free time. ', '2008-06-13 17:14:51', '2008-09-02 05:10:52', 'Rent', 'rented', 'draft'),
('62TgNdPJLV', 'Rex Galloway', 'Studio', 'pbkwri@example.com', NULL, '2008-11-18 09:06:10', '2022-07-13 22:50:46', 'Both', 'vacant', 'public'),
('6NFI2L4Cd6', 'Cameron Miranda', 'Apartment', 'oeyi2@example.com', 'John has free time. Anne is shopping. Anne is walking. Anne has free time. Tony has free time. ', '2008-11-02 20:30:34', '2008-02-15 14:51:19', 'Rent', 'leased', 'public'),
('7HUhJ9Ap2P', 'Melissa Atkinson', 'Studio', 'pbkwri@example.com', 'John is walking. Tony is walking. Anne bought new car. ', '2008-04-28 14:59:48', '2008-12-13 16:58:39', 'Lease', 'vacant', 'draft'),
('7PWHoL1lbj', 'Franklin Jones', 'Apartment', 'imefxh@example.com', 'John bought new car. Tony is shopping. Anne is shopping. Anne has free time. Tony bought new car. ', '2008-01-09 15:34:19', '2022-07-13 22:50:25', 'Rent', 'leased', 'public'),
('7sY7S29wXa', 'Roberta Harrison', 'Studio', 'usyss.ywxa@example.com', 'Anne bought new car. Anne has free time. ', '2008-03-20 23:50:36', '2008-01-06 07:34:51', 'Rent', 'vacant', 'public'),
('BPGJq3j7QY', 'Colby Wilkerson', 'Apartment', 'iuub@example.com', 'John bought new car. John is walking. Tony has free time. ', '2008-06-17 23:56:28', '2022-07-13 22:50:25', 'Rent', 'rented', 'draft'),
('CpVCTU6BV3', 'Luz Olson', 'Apartment', 'mjsq37@example.com', 'John is shopping. Anne is walking. John has free time. Tony has free time. Anne bought new car. ', '2008-07-01 01:47:02', '2008-03-18 09:59:04', 'Rent', 'vacant', 'public'),
('D2CVG7MK3X', 'Moses Downs', 'Apartment', 'mjsq37@example.com', 'Tony is walking. Anne bought new car. Anne has free time. Tony has free time. John has free time. ', '2008-11-19 05:59:20', '2022-07-13 22:50:25', 'Lease', 'leased', 'draft'),
('em7QjEFoSa', 'Sheldon Stuart', 'Apartment', 'mjsq37@example.com', 'Tony has free time. Anne bought new car. ', '2008-05-23 13:01:34', '2008-09-07 12:44:49', 'Rent', 'vacant', 'public'),
('fXHqICmSoo', 'Carla Compton', 'Apartment', 'ippb@example.com', 'Tony bought new car. John is shopping. Tony bought new car. John is shopping. Anne has free time. ', '2008-06-17 18:46:39', '2008-02-11 20:08:03', 'Rent', 'vacant', 'draft'),
('gWMI5GYIL1', 'Damien Massey', 'Studio', 'mjsq37@example.com', 'Tony has free time. Anne is shopping. Tony has free time. John has free time. Tony has free time. ', '2008-09-06 18:03:55', '2022-07-13 22:50:46', 'Rent', 'leased', 'public'),
('H6HiO6NE3f', 'Arnold French', 'Apartment', 'usyss.ywxa@example.com', 'Anne bought new car. Anne bought new car. John bought new car. Tony bought new car. ', '2008-08-31 01:12:04', '2008-03-27 15:42:47', 'Rent', 'vacant', 'draft'),
('I360Ao2HAy', 'Erick Valentine', 'Apartment', 'pbkwri@example.com', 'Anne bought new car. Anne is shopping. John bought new car. Tony has free time. John has free time. ', '2008-03-05 09:16:21', '2008-05-14 23:44:07', 'Rent', 'leased', 'public'),
('i55BtGJJRE', 'Ernest Lam', 'Studio', 'xtnb32@example.com', 'John bought new car. Anne has free time. Anne has free time. John bought new car. John is walking. ', '2008-10-02 04:37:47', '2022-07-13 22:50:46', 'Rent', 'vacant', 'public'),
('iRC3H66UPx', 'Gretchen Mason', 'Studio', 'usyss.ywxa@example.com', 'Anne has free time. Anne is shopping. ', '2008-08-11 16:12:34', '2008-03-17 01:45:56', 'Rent', 'leased', 'draft'),
('iXtOe9IFMF', 'Brandie Chase', 'Apartment', 'usyss.ywxa@example.com', 'Anne bought new car. John has free time. John has free time. John is walking. John bought new car. ', '2008-06-05 05:41:00', '2022-07-13 22:50:25', 'Both', 'vacant', 'public'),
('J701AmjsQI', 'Heath Stafford', 'Apartment', 'pbkwri@example.com', 'Tony bought new car. John bought new car. Anne has free time. ', '2008-10-29 04:18:17', '2008-03-14 05:11:35', 'Rent', 'rented', 'public'),
('jG25oTGYMK', 'Joni Roberts', 'Apartment', 'pbkwri@example.com', 'John has free time. Anne is walking. ', '2008-08-31 03:06:00', '2008-08-08 17:24:37', 'Rent', 'vacant', 'draft'),
('JOFH9TTM5C', 'Rose Kirk', 'Studio', 'vpidu26@example.com', 'Tony bought new car. John bought new car. Tony bought new car. John bought new car. John has free time. ', '2008-09-12 02:42:17', '2022-07-13 22:50:46', 'Lease', 'vacant', 'draft'),
('JTQ37vPTFE', 'Arlene Andersen', 'Studio', 'pbkwri@example.com', 'John has free time. Anne is shopping. John has free time. ', '2008-06-09 14:15:56', '2008-12-27 23:46:49', 'Rent', 'vacant', 'draft'),
('JVvABQPbK8', 'Randal Jackson', 'Studio', 'usyss.ywxa@example.com', 'John has free time. John is walking. ', '2008-04-11 09:54:28', '2008-07-17 04:51:50', 'Rent', 'vacant', 'public'),
('oa6e6bSM26', 'Andre Bush', 'Apartment', 'iuub@example.com', NULL, '2008-12-29 19:43:31', '2022-07-13 22:50:25', 'Rent', 'rented', 'public'),
('QMLFW3hgMV', 'Elena Huber', 'Apartment', 'yrwzoaks@example.com', 'John bought new car. Anne is shopping. Anne bought new car. Tony bought new car. Tony has free time. ', '2008-07-06 02:04:45', '2008-05-25 20:20:13', 'Both', 'rented', 'public'),
('qPB53UUBgB', 'Keri Williams', 'Studio', 'imefxh@example.com', 'Anne bought new car. Tony bought new car. ', '2008-10-04 21:29:42', '2022-07-13 22:50:46', 'Lease', 'leased', 'public'),
('QSGQdD11KP', 'Kristen Wilson', 'Apartment', 'oeyi2@example.com', 'Tony is shopping. Anne bought new car. Tony bought new car. ', '2008-03-31 10:53:51', '2008-05-06 05:49:08', 'Rent', 'leased', 'public'),
('R5YE9UVyOR', 'Geoffrey Aguirre', 'Studio', 'mjsq37@example.com', 'Tony bought new car. John is walking. Anne is shopping. Tony bought new car. Anne bought new car. ', '2008-03-22 00:03:41', '2022-07-13 22:50:46', 'Both', 'rented', 'draft'),
('RIyIKUb48G', 'Ismael Holt', 'Studio', 'imefxh@example.com', 'John bought new car. John bought new car. ', '2008-05-06 07:02:37', '2008-09-15 04:33:39', 'Rent', 'rented', 'public'),
('RNKR4dUu6s', 'Frances Keller', 'Studio', 'imefxh@example.com', NULL, '2008-06-27 21:58:25', '2008-10-12 21:34:39', 'Lease', 'rented', 'public'),
('rWZOakSz52', 'Janice Payne', 'Apartment', 'imefxh@example.com', 'Anne is shopping. Tony has free time. ', '2008-02-02 01:15:41', '2008-07-30 21:25:39', 'Both', 'vacant', 'draft'),
('SfcFP342qq', 'Bobbi Haynes', 'Apartment', 'oeyi2@example.com', 'Anne bought new car. Anne bought new car. John is walking. ', '2008-01-22 18:23:43', '2008-03-26 00:49:47', 'Lease', 'vacant', 'public'),
('tnB32c4GyR', 'Lawanda Noble', 'Apartment', 'imefxh@example.com', 'Anne has free time. John is shopping. John has free time. Tony has free time. John bought new car. ', '2008-06-27 16:32:14', '2022-07-13 22:50:25', 'Lease', 'leased', 'draft'),
('Ts22V8v7SI', 'Kendra Stevenson', 'Apartment', 'yrwzoaks@example.com', 'Anne bought new car. Anne is walking. Tony bought new car. Tony is walking. Tony has free time. ', '2008-06-12 22:29:17', '2008-05-03 10:41:51', 'Both', 'vacant', 'public'),
('ttV2EW3T76', 'Ivan Humphrey', 'Apartment', 'oeyi2@example.com', 'Anne bought new car. Anne is shopping. John bought new car. John is walking. Tony bought new car. ', '2008-08-29 02:09:33', '2008-01-26 02:40:56', 'Rent', 'leased', 'public'),
('V5IDUGPzbe', 'Abel Warren', 'Studio', 'ippb@example.com', 'John is walking. Tony is walking. ', '2008-09-24 02:53:10', '2008-09-24 05:14:49', 'Rent', 'vacant', 'public'),
('vIBFU4iA36', 'Ruth Simmons', 'Studio', 'ippb@example.com', 'Anne bought new car. Tony has free time. Tony bought new car. John has free time. Anne bought new car. ', '2008-07-21 08:21:56', '2008-02-21 17:33:34', 'Lease', 'leased', 'public'),
('W388ROMD2G', 'Cornelius Johnson', 'Studio', 'mjsq37@example.com', NULL, '2008-12-02 14:54:58', '2022-07-13 22:50:46', 'Both', 'vacant', 'public'),
('wVkJ6lPM2S', 'Jami Cuevas', 'Studio', 'iuub@example.com', 'John is shopping. Anne is shopping. Tony bought new car. John has free time. John has free time. ', '2008-01-29 00:11:26', '2008-02-14 20:23:15', 'Rent', 'vacant', 'draft'),
('XNCTBKGYN2', 'Morgan Simon', 'Apartment', 'xtnb32@example.com', 'Anne has free time. John bought new car. Tony bought new car. Tony bought new car. John bought new car. ', '2008-06-22 04:03:46', '2008-05-25 03:07:15', 'Rent', 'vacant', 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `rent_info`
--

CREATE TABLE `rent_info` (
  `id` char(10) NOT NULL,
  `rent` decimal(15,2) UNSIGNED NOT NULL,
  `terms` text DEFAULT NULL,
  `reservation_percentage` decimal(3,2) UNSIGNED NOT NULL DEFAULT 0.05,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rent_info`
--

INSERT INTO `rent_info` (`id`, `rent`, `terms`, `reservation_percentage`, `updated_at`) VALUES
('06fHm22UeX', '26210.38', 'Tony bought new car. Anne has free time. John bought new car. ', '0.12', '2008-04-09 05:04:49'),
('0kt6Pbxim1', '145485.83', 'Anne bought new car. Anne is shopping. ', '0.06', '2008-12-01 23:02:41'),
('0XDpVJLSOY', '65232.93', NULL, '0.07', '2008-03-24 23:19:12'),
('2e66SeY7Zx', '134587.23', 'John bought new car. John is walking. Anne has free time. Anne has free time. Anne is walking. ', '0.08', '2008-10-04 14:55:22'),
('2Q6GB2tPHQ', '73141.19', 'Tony is walking. Anne bought new car. Anne has free time. John has free time. John has free time. ', '0.17', '2008-09-18 22:35:06'),
('2RhCoFY7Nq', '39080.08', 'John has free time. Tony is shopping. ', '0.03', '2008-12-01 23:59:00'),
('2UEJ9k7EQW', '86237.67', 'John has free time. Anne is walking. Anne bought new car. Anne has free time. ', '0.07', '2008-06-14 19:13:46'),
('2X6X6M73uD', '107292.72', 'Anne bought new car. John has free time. Anne is walking. John bought new car. John has free time. ', '0.07', '2008-10-06 07:31:48'),
('386PruOGWL', '85655.59', NULL, '0.10', '2008-03-09 22:02:20'),
('40tHGLfPWD', '114157.83', NULL, '0.18', '2008-09-26 06:44:25'),
('56LxRD83Um', '56705.43', 'Tony bought new car. Anne bought new car. John is walking. John has free time. Anne bought new car. ', '0.12', '2008-05-06 16:25:20'),
('5WUr4mLL2A', '141191.50', 'John bought new car. Tony is walking. John has free time. John has free time. Anne has free time. ', '0.19', '2008-07-01 03:32:48'),
('62TgNdPJLV', '44507.99', 'John has free time. Anne is shopping. Tony bought new car. Anne has free time. Anne has free time. ', '0.15', '2008-02-03 03:50:01'),
('6NFI2L4Cd6', '144918.67', 'Tony bought new car. John bought new car. Tony has free time. ', '0.17', '2008-09-05 11:13:47'),
('7HUhJ9Ap2P', '144738.04', 'Anne is walking. Tony is walking. Tony bought new car. Tony bought new car. John has free time. ', '0.14', '2008-12-28 19:25:33'),
('7PWHoL1lbj', '31944.56', 'John has free time. Anne has free time. Tony bought new car. Anne has free time. John bought new car. ', '0.04', '2008-07-29 00:54:10'),
('7sY7S29wXa', '147805.19', 'Anne bought new car. Tony is walking. ', '0.12', '2008-07-10 13:13:33'),
('BPGJq3j7QY', '10856.41', 'Anne bought new car. Tony has free time. Tony bought new car. Tony has free time. Anne bought new car. ', '0.14', '2008-03-20 11:03:56'),
('CpVCTU6BV3', '83238.92', 'Anne has free time. Anne is walking. Tony bought new car. John is shopping. John is shopping. ', '0.19', '2008-07-13 23:39:24'),
('D2CVG7MK3X', '51167.98', 'John has free time. Tony is walking. ', '0.20', '2008-09-12 16:13:36'),
('em7QjEFoSa', '146336.76', 'Anne is shopping. John is shopping. John bought new car. John has free time. ', '0.05', '2008-04-12 09:12:18'),
('fXHqICmSoo', '29566.78', 'Anne bought new car. John has free time. Tony is shopping. Tony has free time. Anne bought new car. ', '0.09', '2008-06-02 14:57:40'),
('gWMI5GYIL1', '41440.34', 'Anne has free time. Tony is walking. John bought new car. Anne has free time. Anne has free time. ', '0.17', '2008-02-29 10:32:37'),
('H6HiO6NE3f', '67411.31', 'John bought new car. Anne is shopping. Tony bought new car. Tony bought new car. Tony has free time. ', '0.03', '2008-11-27 22:05:35'),
('I360Ao2HAy', '42641.81', 'Tony is shopping. Anne is shopping. Anne bought new car. Tony is shopping. Anne has free time. ', '0.11', '2008-09-26 04:31:04'),
('i55BtGJJRE', '99249.64', 'Tony bought new car. Anne is shopping. Anne bought new car. Anne has free time. John has free time. ', '0.18', '2008-10-30 04:27:17'),
('iRC3H66UPx', '32834.49', 'Tony bought new car. Tony has free time. John bought new car. Tony has free time. John has free time. ', '0.17', '2008-04-16 17:54:15'),
('iXtOe9IFMF', '102384.98', 'Anne is shopping. Anne bought new car. Tony is shopping. ', '0.12', '2008-02-25 02:25:20'),
('J701AmjsQI', '29883.18', 'Anne has free time. John is shopping. ', '0.12', '2008-05-11 16:30:30'),
('jG25oTGYMK', '112322.95', 'Anne bought new car. Anne bought new car. Tony bought new car. Anne has free time. Anne is walking. ', '0.15', '2008-09-24 03:40:23'),
('JOFH9TTM5C', '92084.89', 'John is shopping. Anne bought new car. Tony has free time. Tony has free time. ', '0.12', '2008-06-21 06:45:46'),
('JTQ37vPTFE', '92933.09', NULL, '0.17', '2008-10-12 17:36:39'),
('JVvABQPbK8', '80578.98', 'Anne is walking. John bought new car. ', '0.07', '2008-06-24 12:12:04'),
('oa6e6bSM26', '65604.41', 'John is walking. Anne bought new car. Tony is shopping. John has free time. Tony is walking. ', '0.05', '2008-01-09 19:57:43'),
('QMLFW3hgMV', '97270.93', 'Anne is walking. Anne is shopping. Tony bought new car. Tony bought new car. Anne bought new car. ', '0.08', '2008-03-09 19:23:26'),
('qPB53UUBgB', '111272.03', 'John has free time. Tony bought new car. Anne bought new car. ', '0.10', '2008-05-31 08:03:36'),
('QSGQdD11KP', '35858.99', 'Anne bought new car. Anne is shopping. ', '0.07', '2008-08-23 15:52:12'),
('R5YE9UVyOR', '44788.43', 'Anne has free time. Anne has free time. John bought new car. Tony is walking. John has free time. ', '0.20', '2008-07-06 18:15:29'),
('RIyIKUb48G', '34170.83', 'Anne is walking. John bought new car. Tony bought new car. John has free time. Tony is walking. ', '0.16', '2008-07-16 20:38:55'),
('RNKR4dUu6s', '81072.39', 'Tony bought new car. Anne is walking. Anne bought new car. Tony has free time. John is walking. ', '0.07', '2008-07-27 12:58:55'),
('rWZOakSz52', '141581.15', 'John bought new car. John is walking. John bought new car. John bought new car. Tony is walking. ', '0.03', '2008-04-13 20:36:03'),
('SfcFP342qq', '142607.29', 'Anne bought new car. John is shopping. Tony is shopping. Anne bought new car. John is walking. ', '0.17', '2008-01-29 10:33:28'),
('tnB32c4GyR', '10703.52', 'Anne is shopping. Anne is walking. Tony bought new car. John is walking. Tony bought new car. ', '0.11', '2008-01-01 23:41:44'),
('Ts22V8v7SI', '26235.39', 'Anne is shopping. Anne is walking. John bought new car. John bought new car. John has free time. ', '0.20', '2008-10-21 08:33:59'),
('ttV2EW3T76', '56580.39', 'John bought new car. Anne is walking. John bought new car. Anne has free time. John has free time. ', '0.16', '2008-10-23 11:23:43'),
('V5IDUGPzbe', '78803.17', 'Tony has free time. John is shopping. Anne bought new car. ', '0.17', '2008-07-15 18:29:30'),
('vIBFU4iA36', '31454.47', 'Tony has free time. Anne is walking. ', '0.10', '2008-09-19 02:25:18'),
('W388ROMD2G', '92294.22', NULL, '0.09', '2008-04-28 02:16:13'),
('wVkJ6lPM2S', '87765.57', 'Anne bought new car. Tony has free time. John has free time. John has free time. John has free time. ', '0.10', '2008-11-13 06:29:28'),
('XNCTBKGYN2', '62948.29', 'Anne has free time. John is shopping. Anne bought new car. Anne bought new car. Tony is walking. ', '0.10', '2008-12-04 03:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `rent_log`
--

CREATE TABLE `rent_log` (
  `id` char(10) NOT NULL,
  `log_id` char(10) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `rent_amount` decimal(15,2) UNSIGNED NOT NULL,
  `paid_amount` decimal(15,2) UNSIGNED NOT NULL,
  `medium` varchar(50) NOT NULL,
  `paid_for` date NOT NULL,
  `paid_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` enum('Pending','Approved','Rejected') NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rent_log`
--

INSERT INTO `rent_log` (`id`, `log_id`, `user_email`, `rent_amount`, `paid_amount`, `medium`, `paid_for`, `paid_at`, `status`) VALUES
('06fHm22UeX', 'RLg42CXaQK', 'mjsq37@example.com', '56844.06', '27354.15', 'Nagad', '2011-03-04', '2008-09-22 01:35:39', 'Approved'),
('06fHm22UeX', 'RLg4ewJn8D', 'xtnb32@example.com', '17328.41', '82347.11', 'Nagad', '2017-06-05', '2008-09-10 08:16:58', 'Approved'),
('06fHm22UeX', 'RLg4ZeF1KJ', 'xtnb32@example.com', '14043.31', '144559.04', 'Rocket', '2018-07-18', '2008-04-11 03:15:17', 'Pending'),
('06fHm22UeX', 'RLgBKOQw8O', 'mjsq37@example.com', '87600.80', '99272.92', 'MCash', '2010-11-28', '2008-03-13 21:02:56', 'Approved'),
('06fHm22UeX', 'RLgeDl3CKV', 'xtnb32@example.com', '50908.55', '82331.20', 'MCash', '2000-09-06', '2008-12-09 02:38:05', 'Pending'),
('06fHm22UeX', 'RLgf1u4TXE', 'yrwzoaks@example.com', '86075.78', '146412.29', 'SureCash', '2005-01-24', '2008-10-05 20:33:00', 'Pending'),
('06fHm22UeX', 'RLgf6CBiTR', 'mjsq37@example.com', '11699.51', '107701.43', 'MCash', '2009-02-17', '2008-07-29 02:30:13', 'Approved'),
('06fHm22UeX', 'RLgk10GFm0', 'xtnb32@example.com', '115365.07', '68222.23', 'Nagad', '2017-05-13', '2008-03-10 22:08:21', 'Pending'),
('06fHm22UeX', 'RLglB4HIHK', 'xtnb32@example.com', '147706.99', '108658.74', 'SureCash', '2019-03-19', '2008-10-27 14:32:53', 'Approved'),
('06fHm22UeX', 'RLgSFobM4k', 'imefxh@example.com', '141913.22', '23224.02', 'MCash', '2005-12-08', '2008-04-29 00:15:33', 'Pending'),
('0kt6Pbxim1', 'RLg2DG9Py2', 'xtnb32@example.com', '41826.85', '20974.29', 'SureCash', '2015-07-24', '2008-05-07 05:33:08', 'Approved'),
('0kt6Pbxim1', 'RLg2Du1YGy', 'vpidu26@example.com', '104170.76', '141695.94', 'SureCash', '2011-09-08', '2008-07-24 05:34:17', 'Pending'),
('0kt6Pbxim1', 'RLg4v8dd6E', 'yrwzoaks@example.com', '76599.99', '108665.34', 'bKash', '2017-07-03', '2008-07-01 19:25:43', 'Approved'),
('0kt6Pbxim1', 'RLg641wnl8', 'yrwzoaks@example.com', '104686.64', '25219.78', 'UCash', '2017-10-26', '2008-07-11 07:09:56', 'Pending'),
('0kt6Pbxim1', 'RLgEXukSzE', 'mjsq37@example.com', '22889.57', '112088.75', 'Rocket', '2005-05-30', '2008-02-02 18:00:43', 'Pending'),
('0kt6Pbxim1', 'RLggGNIMjB', 'xtnb32@example.com', '114700.51', '55268.43', 'Upay', '2013-10-07', '2008-03-21 06:01:19', 'Pending'),
('0kt6Pbxim1', 'RLgO31mo1y', 'imefxh@example.com', '105261.55', '97226.39', 'bKash', '2002-07-16', '2008-11-17 23:47:12', 'Pending'),
('0kt6Pbxim1', 'RLgo3yoC6w', 'imefxh@example.com', '77934.88', '86693.44', 'Rocket', '2004-09-18', '2008-01-13 06:18:27', 'Approved'),
('0XDpVJLSOY', 'RLg6tzNwUj', 'mjsq37@example.com', '133657.24', '24794.49', 'MCash', '2012-11-26', '2008-08-01 01:37:50', 'Pending'),
('0XDpVJLSOY', 'RLgfW3IwsN', 'vpidu26@example.com', '122482.35', '50797.84', 'MCash', '2016-04-07', '2008-05-02 18:46:37', 'Pending'),
('0XDpVJLSOY', 'RLgoQFDEOf', 'mjsq37@example.com', '91964.65', '30252.40', 'MCash', '2014-06-10', '2008-03-14 20:14:57', 'Rejected'),
('0XDpVJLSOY', 'RLgPVp3PTj', 'vpidu26@example.com', '122513.83', '43747.26', 'Nagad', '2018-02-07', '2008-12-22 06:08:55', 'Pending'),
('0XDpVJLSOY', 'RLgSnCWQUJ', 'imefxh@example.com', '49622.58', '88648.45', 'Rocket', '2010-01-23', '2008-11-12 22:46:17', 'Rejected'),
('0XDpVJLSOY', 'RLgYG4w1zK', 'yrwzoaks@example.com', '47145.84', '34123.37', 'Rocket', '2003-12-12', '2008-05-29 22:26:53', 'Rejected'),
('2e66SeY7Zx', 'RLg14Jcd3P', 'mjsq37@example.com', '64005.62', '35170.07', 'bKash', '2000-07-13', '2008-10-17 10:20:39', 'Pending'),
('2e66SeY7Zx', 'RLg4ls8d3m', 'imefxh@example.com', '45114.39', '107968.91', 'Rocket', '2019-04-30', '2008-09-15 18:40:17', 'Pending'),
('2e66SeY7Zx', 'RLgGkQQdxk', 'vpidu26@example.com', '10504.59', '50497.84', 'Nagad', '2005-06-05', '2008-08-30 13:25:16', 'Approved'),
('2e66SeY7Zx', 'RLgLXg7hAs', 'yrwzoaks@example.com', '63108.57', '80729.08', 'UCash', '2013-09-20', '2008-10-12 11:45:15', 'Pending'),
('2e66SeY7Zx', 'RLgnyV9a0J', 'xtnb32@example.com', '137793.83', '12435.44', 'bKash', '2007-07-09', '2008-10-28 00:48:04', 'Approved'),
('2e66SeY7Zx', 'RLgu23v8Q7', 'vpidu26@example.com', '105495.97', '103978.44', 'Nagad', '2003-05-25', '2008-07-06 21:41:41', 'Approved'),
('2e66SeY7Zx', 'RLgYxPM3Kc', 'mjsq37@example.com', '56935.48', '111064.83', 'bKash', '2002-06-18', '2008-06-10 05:39:19', 'Pending'),
('2Q6GB2tPHQ', 'RLg448Y6x8', 'yrwzoaks@example.com', '39014.11', '11865.99', 'Rocket', '2012-06-22', '2008-09-05 18:21:14', 'Pending'),
('2Q6GB2tPHQ', 'RLgId6mKMu', 'yrwzoaks@example.com', '46706.41', '38221.80', 'bKash', '2012-10-14', '2008-03-16 00:38:51', 'Approved'),
('2Q6GB2tPHQ', 'RLgONwQ5Rg', 'xtnb32@example.com', '51683.42', '16204.78', 'MCash', '2012-01-21', '2008-02-25 14:03:27', 'Rejected'),
('2Q6GB2tPHQ', 'RLgQnfZ3OP', 'imefxh@example.com', '103041.81', '49900.55', 'Nagad', '2016-06-29', '2008-06-26 19:33:18', 'Rejected'),
('2Q6GB2tPHQ', 'RLgRKW8TEl', 'yrwzoaks@example.com', '123659.23', '137364.13', 'Nagad', '2012-03-07', '2008-08-30 07:28:06', 'Rejected'),
('2Q6GB2tPHQ', 'RLgSo4UqO1', 'imefxh@example.com', '106959.29', '63050.30', 'SureCash', '2017-05-25', '2008-01-18 09:17:59', 'Pending'),
('2Q6GB2tPHQ', 'RLgVlBOodp', 'imefxh@example.com', '135376.48', '54981.88', 'Rocket', '2016-03-31', '2008-12-19 07:03:51', 'Pending'),
('2Q6GB2tPHQ', 'RLgY1NVZUX', 'imefxh@example.com', '28856.04', '19490.42', 'Nagad', '2019-04-10', '2008-09-07 20:51:48', 'Approved'),
('2RhCoFY7Nq', 'RLg2CW6YQl', 'xtnb32@example.com', '76056.95', '56915.64', 'Nagad', '2018-05-31', '2008-04-03 03:58:39', 'Approved'),
('2RhCoFY7Nq', 'RLgBS2CPY2', 'mjsq37@example.com', '19396.80', '138605.00', 'bKash', '2011-08-04', '2008-09-30 22:42:21', 'Approved'),
('2RhCoFY7Nq', 'RLgL32i0e6', 'vpidu26@example.com', '27555.64', '40031.70', 'Upay', '2016-08-19', '2008-08-15 01:59:41', 'Pending'),
('2RhCoFY7Nq', 'RLgMVqUJYk', 'vpidu26@example.com', '126977.00', '10168.32', 'Nagad', '2017-01-25', '2008-02-25 08:38:53', 'Pending'),
('2RhCoFY7Nq', 'RLgQRRCEX6', 'xtnb32@example.com', '115673.22', '118236.75', 'Nagad', '2000-05-21', '2008-05-26 16:15:47', 'Approved'),
('2RhCoFY7Nq', 'RLgttDS8gM', 'mjsq37@example.com', '70713.86', '50813.07', 'Nagad', '2012-04-26', '2008-04-20 02:50:35', 'Approved'),
('2RhCoFY7Nq', 'RLgUA1QGEY', 'mjsq37@example.com', '43204.54', '123900.41', 'Rocket', '2011-09-01', '2008-10-01 08:11:25', 'Pending'),
('2RhCoFY7Nq', 'RLgv4Ihc5h', 'xtnb32@example.com', '137438.68', '10473.30', 'Rocket', '2001-01-19', '2008-12-14 10:07:55', 'Rejected'),
('2RhCoFY7Nq', 'RLgYk30oVb', 'xtnb32@example.com', '97785.57', '111453.69', 'MCash', '2001-04-17', '2008-12-21 10:27:44', 'Approved'),
('2UEJ9k7EQW', 'RLg3TW6h4r', 'vpidu26@example.com', '28420.22', '128302.65', 'MCash', '2004-08-06', '2008-05-04 06:03:14', 'Pending'),
('2UEJ9k7EQW', 'RLg41BwsBM', 'imefxh@example.com', '37805.72', '140524.12', 'Nagad', '2017-06-11', '2008-04-19 23:25:48', 'Pending'),
('2UEJ9k7EQW', 'RLg5CDyDBZ', 'xtnb32@example.com', '17255.13', '44803.10', 'MCash', '2010-11-12', '2008-04-21 12:04:14', 'Pending'),
('2UEJ9k7EQW', 'RLg8g76Mc7', 'imefxh@example.com', '126918.91', '54303.56', 'UCash', '2000-02-20', '2008-01-02 21:11:47', 'Pending'),
('2UEJ9k7EQW', 'RLg93HgX5N', 'mjsq37@example.com', '36976.48', '25118.10', 'Nagad', '2002-01-18', '2008-08-26 10:48:32', 'Pending'),
('2UEJ9k7EQW', 'RLgdIqN2Sd', 'vpidu26@example.com', '40609.23', '106444.29', 'bKash', '2007-12-11', '2008-02-02 11:26:06', 'Pending'),
('2UEJ9k7EQW', 'RLgFcObQ7R', 'imefxh@example.com', '33856.68', '15891.47', 'Nagad', '2019-05-30', '2008-12-14 21:31:12', 'Approved'),
('2UEJ9k7EQW', 'RLgHkP21HO', 'yrwzoaks@example.com', '92569.65', '83459.75', 'bKash', '2015-01-04', '2008-08-14 22:24:45', 'Pending'),
('2UEJ9k7EQW', 'RLgLN38Uw8', 'mjsq37@example.com', '33872.63', '94779.88', 'Nagad', '2004-01-05', '2008-10-19 14:59:25', 'Rejected'),
('2UEJ9k7EQW', 'RLgMSe2PYm', 'yrwzoaks@example.com', '135663.53', '42835.20', 'bKash', '2013-12-01', '2008-01-14 17:11:55', 'Pending'),
('2UEJ9k7EQW', 'RLgn6qVHEj', 'yrwzoaks@example.com', '45576.13', '77229.99', 'SureCash', '2014-07-20', '2008-08-03 21:58:02', 'Pending'),
('2UEJ9k7EQW', 'RLgqDf68j0', 'vpidu26@example.com', '93059.00', '16522.94', 'Nagad', '2007-12-02', '2008-02-03 14:40:12', 'Pending'),
('2UEJ9k7EQW', 'RLgrqwBJRe', 'mjsq37@example.com', '11008.77', '113139.16', 'Upay', '2001-07-11', '2008-08-11 19:44:24', 'Rejected'),
('2UEJ9k7EQW', 'RLgSXbDZ9Y', 'mjsq37@example.com', '144569.57', '89865.38', 'bKash', '2001-05-20', '2008-08-07 02:30:28', 'Pending'),
('2UEJ9k7EQW', 'RLgtkzJLKH', 'vpidu26@example.com', '29515.63', '25839.35', 'bKash', '2007-10-23', '2008-01-30 14:14:51', 'Approved'),
('2UEJ9k7EQW', 'RLgV22oO8z', 'xtnb32@example.com', '120531.64', '36346.03', 'bKash', '2009-02-10', '2008-03-07 05:34:00', 'Rejected'),
('2UEJ9k7EQW', 'RLgXMKWPMY', 'mjsq37@example.com', '32842.43', '122175.05', 'Nagad', '2003-10-02', '2008-10-12 10:53:46', 'Pending'),
('2UEJ9k7EQW', 'RLgZxFBjKS', 'vpidu26@example.com', '73197.94', '141102.38', 'Nagad', '2004-08-28', '2008-11-03 22:41:07', 'Pending'),
('2X6X6M73uD', 'RLg854mFYh', 'mjsq37@example.com', '140385.86', '74713.72', 'MCash', '2013-03-01', '2008-05-07 23:24:47', 'Pending'),
('2X6X6M73uD', 'RLgGnOzD3R', 'xtnb32@example.com', '55122.32', '127894.20', 'bKash', '2019-05-27', '2008-10-25 14:57:28', 'Rejected'),
('2X6X6M73uD', 'RLgIdbCR4E', 'imefxh@example.com', '50109.66', '123067.30', 'Rocket', '2010-05-21', '2008-08-22 13:56:46', 'Pending'),
('2X6X6M73uD', 'RLgJqtV0XD', 'mjsq37@example.com', '30908.88', '44853.40', 'bKash', '2014-01-05', '2008-11-30 07:01:22', 'Pending'),
('2X6X6M73uD', 'RLgKrO34Ft', 'vpidu26@example.com', '23242.84', '22103.85', 'SureCash', '2017-03-24', '2008-08-28 08:36:51', 'Pending'),
('2X6X6M73uD', 'RLgn6ZJkgV', 'imefxh@example.com', '64955.97', '80662.40', 'SureCash', '2007-11-12', '2008-06-13 17:29:18', 'Pending'),
('2X6X6M73uD', 'RLgOtJw3Rh', 'imefxh@example.com', '118715.99', '59092.58', 'Nagad', '2010-03-04', '2008-02-17 11:47:54', 'Approved'),
('2X6X6M73uD', 'RLgQAX44X3', 'imefxh@example.com', '134147.34', '56615.25', 'SureCash', '2009-02-24', '2008-07-19 12:25:53', 'Rejected'),
('2X6X6M73uD', 'RLgQS7LTYX', 'vpidu26@example.com', '78778.20', '48902.31', 'bKash', '2016-10-14', '2008-02-16 23:12:18', 'Rejected'),
('2X6X6M73uD', 'RLgthJmH9O', 'mjsq37@example.com', '111165.58', '54020.16', 'bKash', '2012-04-25', '2008-10-14 20:20:52', 'Pending'),
('2X6X6M73uD', 'RLgx4vwQEm', 'yrwzoaks@example.com', '45170.42', '45860.23', 'Rocket', '2006-03-04', '2008-10-30 19:09:29', 'Approved'),
('386PruOGWL', 'RLg4lYydYI', 'vpidu26@example.com', '73415.03', '47867.39', 'SureCash', '2017-12-03', '2008-09-12 01:51:09', 'Approved'),
('386PruOGWL', 'RLgAHimp71', 'yrwzoaks@example.com', '75600.38', '30738.41', 'Nagad', '2004-09-30', '2008-09-17 18:52:32', 'Rejected'),
('386PruOGWL', 'RLgbMkTvSX', 'mjsq37@example.com', '147749.89', '146487.91', 'Nagad', '2014-04-26', '2008-06-06 12:06:32', 'Approved'),
('386PruOGWL', 'RLgfUQvhgY', 'mjsq37@example.com', '35412.78', '92978.04', 'Rocket', '2012-05-10', '2008-10-11 11:38:08', 'Pending'),
('386PruOGWL', 'RLgLILGw4X', 'vpidu26@example.com', '112050.23', '29558.06', 'Upay', '2018-06-15', '2008-09-25 20:51:28', 'Approved'),
('386PruOGWL', 'RLgLn9rGUG', 'yrwzoaks@example.com', '20053.43', '37727.58', 'Nagad', '2003-10-22', '2008-02-21 13:30:46', 'Pending'),
('386PruOGWL', 'RLgTKGoDIQ', 'xtnb32@example.com', '35286.71', '57272.20', 'bKash', '2000-04-07', '2008-11-15 08:47:10', 'Pending'),
('386PruOGWL', 'RLgXY5Ll35', 'xtnb32@example.com', '57177.77', '24699.43', 'Nagad', '2000-05-23', '2008-05-19 00:50:31', 'Rejected'),
('386PruOGWL', 'RLgzJV0E11', 'mjsq37@example.com', '144667.89', '109707.26', 'MCash', '2014-01-15', '2008-11-28 15:31:34', 'Pending'),
('40tHGLfPWD', 'RLg265KVDU', 'yrwzoaks@example.com', '42336.65', '74807.95', 'Rocket', '2019-07-26', '2008-11-22 15:18:29', 'Approved'),
('40tHGLfPWD', 'RLg5dOAiRb', 'imefxh@example.com', '31938.34', '99225.87', 'Nagad', '2003-07-30', '2008-03-12 17:43:04', 'Pending'),
('40tHGLfPWD', 'RLg6LhPBP3', 'mjsq37@example.com', '53485.39', '111532.19', 'SureCash', '2006-03-05', '2008-05-21 22:09:42', 'Pending'),
('40tHGLfPWD', 'RLgc61gYLc', 'imefxh@example.com', '71029.11', '134345.59', 'MCash', '2004-04-10', '2008-09-29 07:12:07', 'Rejected'),
('40tHGLfPWD', 'RLgi1DY3La', 'mjsq37@example.com', '108385.11', '77150.45', 'bKash', '2006-07-30', '2008-06-03 16:09:50', 'Pending'),
('40tHGLfPWD', 'RLgK3JcjCe', 'vpidu26@example.com', '99195.99', '33579.39', 'Nagad', '2013-08-17', '2008-12-12 05:31:20', 'Rejected'),
('40tHGLfPWD', 'RLgTOT8j64', 'mjsq37@example.com', '134685.35', '83366.54', 'MCash', '2008-10-29', '2008-08-03 07:29:33', 'Pending'),
('40tHGLfPWD', 'RLgx2KWbQO', 'imefxh@example.com', '141919.83', '149457.43', 'Rocket', '2001-10-16', '2008-01-23 15:10:57', 'Pending'),
('56LxRD83Um', 'RLg2urfIGT', 'xtnb32@example.com', '131862.98', '135987.85', 'Upay', '2009-07-31', '2008-12-13 08:15:48', 'Pending'),
('56LxRD83Um', 'RLg2y7SC1R', 'xtnb32@example.com', '29599.11', '78726.39', 'Nagad', '2010-02-25', '2008-06-29 18:59:50', 'Pending'),
('56LxRD83Um', 'RLgEngIYOX', 'xtnb32@example.com', '76274.96', '73476.52', 'MCash', '2012-07-18', '2008-03-06 21:50:58', 'Pending'),
('56LxRD83Um', 'RLgIYs4YOU', 'imefxh@example.com', '142614.34', '83329.94', 'Rocket', '2018-07-25', '2008-08-19 00:51:48', 'Approved'),
('56LxRD83Um', 'RLgJj88gXC', 'imefxh@example.com', '91503.07', '15934.27', 'UCash', '2017-10-15', '2008-01-25 19:46:00', 'Rejected'),
('56LxRD83Um', 'RLgJnDK0DI', 'vpidu26@example.com', '87987.88', '79781.76', 'Nagad', '2008-09-25', '2008-05-23 03:26:55', 'Rejected'),
('56LxRD83Um', 'RLgJVD1622', 'vpidu26@example.com', '51929.98', '11172.94', 'bKash', '2006-06-21', '2008-09-19 16:20:16', 'Pending'),
('56LxRD83Um', 'RLgJYML2l3', 'xtnb32@example.com', '97244.09', '109038.38', 'Nagad', '2013-01-01', '2008-09-16 20:02:30', 'Pending'),
('56LxRD83Um', 'RLgMr6EGHt', 'yrwzoaks@example.com', '47832.79', '123655.02', 'Rocket', '2016-11-09', '2008-12-29 18:35:09', 'Approved'),
('56LxRD83Um', 'RLgmupU4DW', 'vpidu26@example.com', '91632.51', '81590.40', 'Rocket', '2006-05-13', '2008-03-17 15:05:35', 'Pending'),
('56LxRD83Um', 'RLgN2Y25C9', 'imefxh@example.com', '108164.43', '49398.62', 'bKash', '2019-02-14', '2008-03-02 10:48:09', 'Pending'),
('5WUr4mLL2A', 'RLgDX55UX3', 'xtnb32@example.com', '109952.10', '15476.15', 'Rocket', '2001-12-11', '2008-10-02 00:57:54', 'Pending'),
('5WUr4mLL2A', 'RLgH1P3N23', 'mjsq37@example.com', '142358.27', '139441.35', 'Nagad', '2012-10-18', '2008-07-27 01:24:37', 'Rejected'),
('5WUr4mLL2A', 'RLghRQ4F6q', 'imefxh@example.com', '48920.44', '137057.72', 'SureCash', '2009-06-29', '2008-04-26 13:14:06', 'Approved'),
('5WUr4mLL2A', 'RLglcRJ7k3', 'xtnb32@example.com', '122553.80', '52563.59', 'Rocket', '2002-11-14', '2008-10-28 06:49:27', 'Rejected'),
('5WUr4mLL2A', 'RLgqG5kGBk', 'vpidu26@example.com', '53823.87', '94502.83', 'Rocket', '2017-06-21', '2008-11-29 09:41:14', 'Approved'),
('5WUr4mLL2A', 'RLgVIO4fCm', 'yrwzoaks@example.com', '38873.32', '65310.74', 'Nagad', '2006-05-02', '2008-01-30 14:50:25', 'Pending'),
('5WUr4mLL2A', 'RLgWSKyZV1', 'yrwzoaks@example.com', '31926.01', '149961.46', 'bKash', '2007-04-03', '2008-02-24 03:59:37', 'Rejected'),
('62TgNdPJLV', 'RLgfdMrj8s', 'imefxh@example.com', '82881.68', '12551.41', 'SureCash', '2003-06-18', '2008-06-06 05:52:11', 'Approved'),
('62TgNdPJLV', 'RLgJQWxCDF', 'xtnb32@example.com', '13434.83', '93160.03', 'MCash', '2015-02-09', '2008-04-22 21:20:53', 'Approved'),
('62TgNdPJLV', 'RLgPcc7K6V', 'mjsq37@example.com', '106961.47', '66053.48', 'Nagad', '2008-03-10', '2008-10-16 05:22:55', 'Rejected'),
('62TgNdPJLV', 'RLgTLs4Foz', 'imefxh@example.com', '44954.95', '144641.29', 'MCash', '2005-08-19', '2008-08-06 11:19:40', 'Approved'),
('62TgNdPJLV', 'RLgXqHYMO1', 'mjsq37@example.com', '107962.15', '19326.74', 'Upay', '2007-06-24', '2008-09-24 21:36:03', 'Rejected'),
('6NFI2L4Cd6', 'RLg3HcLoPL', 'vpidu26@example.com', '20830.38', '102108.84', 'Nagad', '2007-04-10', '2008-10-09 11:58:06', 'Approved'),
('6NFI2L4Cd6', 'RLg7YOXVOC', 'mjsq37@example.com', '132750.65', '109473.61', 'Nagad', '2004-06-16', '2008-07-23 22:07:37', 'Approved'),
('6NFI2L4Cd6', 'RLg8TRZBnF', 'mjsq37@example.com', '10482.56', '69455.34', 'Nagad', '2003-01-31', '2008-12-15 07:18:31', 'Pending'),
('6NFI2L4Cd6', 'RLga32UDNn', 'mjsq37@example.com', '122934.30', '107895.24', 'Rocket', '2002-04-19', '2008-11-24 03:40:54', 'Rejected'),
('6NFI2L4Cd6', 'RLgctORb85', 'imefxh@example.com', '106839.93', '64173.66', 'bKash', '2000-09-13', '2008-04-09 19:31:36', 'Pending'),
('6NFI2L4Cd6', 'RLgJoY6MC8', 'imefxh@example.com', '10060.18', '27513.43', 'MCash', '2019-09-15', '2008-09-14 17:10:59', 'Rejected'),
('6NFI2L4Cd6', 'RLgO3XOxr1', 'xtnb32@example.com', '106709.12', '136921.41', 'Nagad', '2013-09-14', '2008-04-02 20:50:25', 'Approved'),
('6NFI2L4Cd6', 'RLgwSS7B2J', 'mjsq37@example.com', '32776.02', '18455.01', 'MCash', '2005-02-21', '2008-08-12 12:47:13', 'Rejected'),
('6NFI2L4Cd6', 'RLgZbVCB5J', 'mjsq37@example.com', '43590.89', '124097.43', 'Nagad', '2005-06-26', '2008-08-22 11:55:24', 'Pending'),
('7HUhJ9Ap2P', 'RLg44OYTZI', 'mjsq37@example.com', '147939.54', '68150.50', 'MCash', '2010-08-18', '2008-06-17 13:39:22', 'Pending'),
('7HUhJ9Ap2P', 'RLgaMSUxYv', 'imefxh@example.com', '141167.17', '111940.73', 'Nagad', '2003-09-03', '2008-12-09 15:17:52', 'Approved'),
('7HUhJ9Ap2P', 'RLgF4FR36I', 'imefxh@example.com', '11241.80', '68824.18', 'SureCash', '2006-06-26', '2008-08-26 09:01:19', 'Pending'),
('7HUhJ9Ap2P', 'RLgFp06Ix1', 'xtnb32@example.com', '73590.51', '113166.81', 'Nagad', '2015-02-22', '2008-10-18 13:07:18', 'Approved'),
('7HUhJ9Ap2P', 'RLgfTxSq9j', 'vpidu26@example.com', '134585.46', '104744.25', 'bKash', '2011-09-22', '2008-01-17 14:17:39', 'Rejected'),
('7HUhJ9Ap2P', 'RLgHdfPRKK', 'vpidu26@example.com', '144202.51', '88788.31', 'bKash', '2014-03-09', '2008-03-24 19:01:29', 'Approved'),
('7HUhJ9Ap2P', 'RLgiby1m76', 'imefxh@example.com', '100492.67', '71106.11', 'Rocket', '2006-08-18', '2008-08-29 22:45:08', 'Approved'),
('7HUhJ9Ap2P', 'RLgPWlv1DP', 'mjsq37@example.com', '98247.11', '129847.98', 'Upay', '2007-10-14', '2008-09-30 21:42:41', 'Pending'),
('7HUhJ9Ap2P', 'RLgXrLz47p', 'xtnb32@example.com', '11220.09', '129920.80', 'MCash', '2017-07-26', '2008-12-24 03:11:52', 'Pending'),
('7HUhJ9Ap2P', 'RLgYqV7zSr', 'vpidu26@example.com', '148384.95', '51738.34', 'Rocket', '2013-04-20', '2008-02-28 01:17:57', 'Approved'),
('7PWHoL1lbj', 'RLg075U2UK', 'vpidu26@example.com', '51621.76', '143511.74', 'MCash', '2005-04-21', '2008-11-20 08:28:06', 'Pending'),
('7PWHoL1lbj', 'RLg3b326v4', 'xtnb32@example.com', '34365.46', '10884.66', 'Rocket', '2011-07-29', '2008-05-08 00:03:09', 'Approved'),
('7PWHoL1lbj', 'RLg4x2q4XN', 'imefxh@example.com', '90033.88', '58554.09', 'Nagad', '2019-10-17', '2008-06-21 20:36:32', 'Rejected'),
('7PWHoL1lbj', 'RLgAV3HtSt', 'mjsq37@example.com', '129895.61', '46729.45', 'MCash', '2004-10-12', '2008-05-06 19:24:29', 'Rejected'),
('7PWHoL1lbj', 'RLgbOcAcj7', 'yrwzoaks@example.com', '89242.01', '80467.70', 'UCash', '2016-02-04', '2008-09-09 00:26:31', 'Pending'),
('7PWHoL1lbj', 'RLgFkrd5YL', 'mjsq37@example.com', '18887.88', '91620.84', 'Rocket', '2004-12-24', '2008-11-11 00:33:28', 'Pending'),
('7PWHoL1lbj', 'RLgJ13Z7SF', 'xtnb32@example.com', '73282.42', '22345.35', 'MCash', '2010-07-14', '2008-04-10 14:17:27', 'Rejected'),
('7PWHoL1lbj', 'RLgLS1Vk6K', 'vpidu26@example.com', '148820.83', '64263.75', 'Rocket', '2007-12-17', '2008-02-01 13:42:19', 'Pending'),
('7PWHoL1lbj', 'RLgn25G3T4', 'xtnb32@example.com', '141554.50', '104532.41', 'Upay', '2012-02-20', '2008-11-23 01:07:24', 'Pending'),
('7PWHoL1lbj', 'RLgOKCy8C3', 'mjsq37@example.com', '98348.43', '24528.17', 'Rocket', '2002-09-28', '2008-09-11 02:42:55', 'Approved'),
('7PWHoL1lbj', 'RLgP14V2C3', 'imefxh@example.com', '40457.11', '137145.87', 'Nagad', '2001-01-05', '2008-01-21 10:26:13', 'Pending'),
('7PWHoL1lbj', 'RLgwfCCULd', 'vpidu26@example.com', '143922.82', '87023.93', 'bKash', '2007-09-24', '2008-01-24 23:49:28', 'Pending'),
('7PWHoL1lbj', 'RLgYJbToyu', 'yrwzoaks@example.com', '23096.42', '115216.78', 'UCash', '2015-12-23', '2008-09-08 01:51:52', 'Rejected'),
('7sY7S29wXa', 'RLg5OJbn67', 'imefxh@example.com', '53041.10', '134086.20', 'Rocket', '2011-02-14', '2008-06-07 02:15:48', 'Pending'),
('7sY7S29wXa', 'RLgbcPHFzB', 'imefxh@example.com', '91338.91', '119103.99', 'Rocket', '2010-10-02', '2008-11-23 21:44:03', 'Pending'),
('7sY7S29wXa', 'RLgc9I7a3u', 'yrwzoaks@example.com', '65255.55', '93555.59', 'Rocket', '2006-09-29', '2008-08-08 07:05:57', 'Pending'),
('7sY7S29wXa', 'RLgCKcKseG', 'xtnb32@example.com', '34244.86', '11181.12', 'MCash', '2002-05-29', '2008-04-11 15:55:51', 'Approved'),
('7sY7S29wXa', 'RLgeQiKSh6', 'imefxh@example.com', '144511.59', '12318.73', 'Rocket', '2011-12-07', '2008-12-26 23:23:25', 'Pending'),
('7sY7S29wXa', 'RLgh4WJs0X', 'mjsq37@example.com', '103421.08', '25779.07', 'bKash', '2013-06-11', '2008-08-07 00:21:17', 'Pending'),
('7sY7S29wXa', 'RLgJUciGyS', 'imefxh@example.com', '45944.84', '117766.01', 'Nagad', '2011-03-30', '2008-06-10 20:55:48', 'Pending'),
('7sY7S29wXa', 'RLgpQKX7vn', 'xtnb32@example.com', '10192.42', '122186.14', 'bKash', '2001-05-27', '2008-09-11 08:54:52', 'Pending'),
('7sY7S29wXa', 'RLgS1b4cCs', 'mjsq37@example.com', '88162.44', '97269.32', 'UCash', '2013-05-31', '2008-08-06 09:12:12', 'Approved'),
('7sY7S29wXa', 'RLgSa6UmON', 'vpidu26@example.com', '52778.89', '131287.05', 'UCash', '2018-01-23', '2008-12-11 23:22:47', 'Rejected'),
('7sY7S29wXa', 'RLgtRVJBji', 'vpidu26@example.com', '79296.80', '91243.77', 'Rocket', '2016-06-30', '2008-05-02 15:16:34', 'Pending'),
('7sY7S29wXa', 'RLgYFlhUGH', 'mjsq37@example.com', '52445.19', '144443.68', 'MCash', '2016-04-04', '2008-04-23 10:15:06', 'Pending'),
('BPGJq3j7QY', 'RLg1XL8CF4', 'imefxh@example.com', '33693.31', '116289.76', 'Nagad', '2010-04-19', '2008-02-12 05:05:24', 'Rejected'),
('BPGJq3j7QY', 'RLg43NHxMI', 'vpidu26@example.com', '84415.99', '69211.27', 'Rocket', '2019-12-21', '2008-11-04 15:16:37', 'Approved'),
('BPGJq3j7QY', 'RLg4M4878N', 'yrwzoaks@example.com', '29241.09', '141333.43', 'Nagad', '2007-04-23', '2008-05-22 13:02:44', 'Pending'),
('BPGJq3j7QY', 'RLg5fS6vl5', 'xtnb32@example.com', '105397.68', '27112.45', 'Nagad', '2000-11-22', '2008-05-30 12:47:26', 'Rejected'),
('BPGJq3j7QY', 'RLg7M0NpDc', 'yrwzoaks@example.com', '87194.01', '12697.51', 'Nagad', '2008-06-19', '2008-06-23 13:23:54', 'Approved'),
('BPGJq3j7QY', 'RLg8eXE9NU', 'yrwzoaks@example.com', '68216.84', '142325.60', 'bKash', '2006-12-09', '2008-11-10 22:25:20', 'Rejected'),
('BPGJq3j7QY', 'RLg8x2p238', 'yrwzoaks@example.com', '12835.23', '141232.90', 'MCash', '2004-08-15', '2008-03-10 17:09:06', 'Pending'),
('BPGJq3j7QY', 'RLgBFqHjHD', 'mjsq37@example.com', '102444.75', '13473.90', 'Rocket', '2015-04-08', '2008-06-28 07:28:27', 'Rejected'),
('BPGJq3j7QY', 'RLgj2B7Y18', 'mjsq37@example.com', '105592.50', '92424.70', 'MCash', '2014-02-15', '2008-11-26 08:11:10', 'Pending'),
('BPGJq3j7QY', 'RLgJxmShWG', 'mjsq37@example.com', '136821.76', '50928.32', 'MCash', '2015-10-14', '2008-01-12 12:58:26', 'Approved'),
('BPGJq3j7QY', 'RLgN3OH9F4', 'xtnb32@example.com', '29669.60', '18328.12', 'UCash', '2001-06-20', '2008-12-15 23:05:45', 'Rejected'),
('BPGJq3j7QY', 'RLgnM6oX43', 'imefxh@example.com', '92436.43', '135049.53', 'MCash', '2010-12-10', '2008-03-01 04:09:10', 'Pending'),
('BPGJq3j7QY', 'RLgQfJzTER', 'mjsq37@example.com', '129770.79', '11164.83', 'MCash', '2014-03-02', '2008-05-29 01:33:47', 'Approved'),
('BPGJq3j7QY', 'RLgRJYVRDR', 'vpidu26@example.com', '63840.69', '98891.26', 'SureCash', '2000-03-29', '2008-05-12 07:01:24', 'Approved'),
('BPGJq3j7QY', 'RLgROK54iv', 'imefxh@example.com', '57748.89', '147159.87', 'MCash', '2011-11-03', '2008-03-27 09:13:51', 'Approved'),
('BPGJq3j7QY', 'RLgVHNt13W', 'xtnb32@example.com', '136045.21', '68628.72', 'MCash', '2002-08-22', '2008-01-18 04:14:01', 'Rejected'),
('BPGJq3j7QY', 'RLgVtctJ8J', 'vpidu26@example.com', '34820.02', '15272.15', 'MCash', '2016-02-28', '2008-01-22 18:32:58', 'Rejected'),
('CpVCTU6BV3', 'RLg03A4gEl', 'mjsq37@example.com', '39881.73', '115606.60', 'MCash', '2015-10-09', '2008-06-29 04:51:48', 'Pending'),
('CpVCTU6BV3', 'RLg3gUMcXq', 'xtnb32@example.com', '75522.49', '137326.07', 'Upay', '2004-07-08', '2008-02-25 15:28:41', 'Approved'),
('CpVCTU6BV3', 'RLg3rEFHSg', 'vpidu26@example.com', '30427.56', '72604.50', 'Nagad', '2019-11-14', '2008-04-22 03:25:56', 'Pending'),
('CpVCTU6BV3', 'RLg44t6N38', 'xtnb32@example.com', '71262.91', '41374.24', 'Nagad', '2003-04-13', '2008-07-22 11:22:59', 'Rejected'),
('CpVCTU6BV3', 'RLgAD9PNf4', 'vpidu26@example.com', '142043.65', '135031.83', 'MCash', '2019-01-05', '2008-09-28 08:19:03', 'Approved'),
('CpVCTU6BV3', 'RLgaSU53VO', 'vpidu26@example.com', '45510.98', '148377.59', 'bKash', '2019-03-20', '2008-10-02 17:25:54', 'Approved'),
('CpVCTU6BV3', 'RLgCF8EE5W', 'imefxh@example.com', '77814.77', '29036.70', 'SureCash', '2013-07-04', '2008-04-29 13:09:37', 'Pending'),
('CpVCTU6BV3', 'RLgeNh8Xl4', 'xtnb32@example.com', '107036.09', '119631.78', 'SureCash', '2006-11-22', '2008-04-30 06:23:25', 'Rejected'),
('CpVCTU6BV3', 'RLgMJHmGBJ', 'mjsq37@example.com', '52167.48', '24707.42', 'bKash', '2016-12-07', '2008-08-02 19:14:35', 'Approved'),
('CpVCTU6BV3', 'RLgoI1IZs6', 'mjsq37@example.com', '19784.70', '75532.93', 'bKash', '2018-02-14', '2008-03-03 00:04:14', 'Pending'),
('CpVCTU6BV3', 'RLgOjDR3AL', 'xtnb32@example.com', '80708.65', '121854.28', 'bKash', '2004-09-03', '2008-02-28 15:46:10', 'Rejected'),
('CpVCTU6BV3', 'RLguD4HRG4', 'imefxh@example.com', '67940.01', '144234.70', 'Nagad', '2010-08-30', '2008-02-13 03:05:51', 'Pending'),
('D2CVG7MK3X', 'RLg3QPWTRd', 'xtnb32@example.com', '129500.38', '37702.90', 'MCash', '2006-12-22', '2008-05-01 01:30:05', 'Pending'),
('D2CVG7MK3X', 'RLgOOFz68V', 'yrwzoaks@example.com', '149880.48', '113099.25', 'SureCash', '2010-11-04', '2008-02-13 22:32:42', 'Approved'),
('D2CVG7MK3X', 'RLgsR2Od1L', 'imefxh@example.com', '111627.94', '48045.46', 'Nagad', '2012-04-12', '2008-09-21 17:36:44', 'Approved'),
('D2CVG7MK3X', 'RLgu76824m', 'yrwzoaks@example.com', '124771.68', '99996.24', 'bKash', '2009-02-23', '2008-06-28 16:19:04', 'Pending'),
('D2CVG7MK3X', 'RLgygy895d', 'xtnb32@example.com', '121425.27', '70236.38', 'MCash', '2007-03-26', '2008-11-04 23:21:33', 'Rejected'),
('em7QjEFoSa', 'RLg17pY6fS', 'imefxh@example.com', '59254.67', '26730.76', 'Nagad', '2014-04-30', '2008-05-15 08:13:49', 'Pending'),
('em7QjEFoSa', 'RLg21B5PN8', 'xtnb32@example.com', '119257.49', '114935.66', 'MCash', '2004-06-25', '2008-02-18 11:19:50', 'Pending'),
('em7QjEFoSa', 'RLg6BELBUY', 'vpidu26@example.com', '142339.35', '104205.03', 'Rocket', '2002-04-29', '2008-12-20 00:03:08', 'Pending'),
('em7QjEFoSa', 'RLgK7XE3U3', 'xtnb32@example.com', '130404.75', '43322.86', 'Nagad', '2006-10-09', '2008-10-20 01:27:01', 'Rejected'),
('em7QjEFoSa', 'RLgMHpXwgB', 'vpidu26@example.com', '24396.93', '80577.04', 'bKash', '2002-10-03', '2007-12-31 23:44:51', 'Rejected'),
('em7QjEFoSa', 'RLgo6FP2OS', 'yrwzoaks@example.com', '113306.10', '23692.68', 'MCash', '2011-05-19', '2008-02-23 05:18:07', 'Pending'),
('em7QjEFoSa', 'RLgvMBJOVY', 'xtnb32@example.com', '33682.76', '105317.76', 'Nagad', '2006-11-29', '2008-04-24 07:30:43', 'Rejected'),
('em7QjEFoSa', 'RLgWj7E752', 'yrwzoaks@example.com', '98542.66', '113484.50', 'Nagad', '2011-05-19', '2008-08-25 08:26:41', 'Pending'),
('em7QjEFoSa', 'RLgYtS5UMD', 'imefxh@example.com', '129784.43', '122143.60', 'MCash', '2013-06-19', '2008-04-21 06:54:22', 'Rejected'),
('fXHqICmSoo', 'RLg0f5Qbkf', 'mjsq37@example.com', '109263.38', '18739.00', 'Nagad', '2009-04-14', '2008-02-11 02:05:36', 'Rejected'),
('fXHqICmSoo', 'RLgAwTAEQ3', 'yrwzoaks@example.com', '26011.35', '44781.71', 'Upay', '2002-03-07', '2008-07-28 20:43:38', 'Pending'),
('fXHqICmSoo', 'RLgERS5UkJ', 'imefxh@example.com', '143985.84', '134260.72', 'Rocket', '2007-01-05', '2008-12-08 22:59:26', 'Pending'),
('fXHqICmSoo', 'RLgF3TbX14', 'mjsq37@example.com', '89677.78', '33944.77', 'Rocket', '2007-07-03', '2008-06-24 02:25:48', 'Approved'),
('fXHqICmSoo', 'RLgLmLML7i', 'xtnb32@example.com', '67800.66', '42215.94', 'Upay', '2015-12-18', '2008-02-09 18:09:56', 'Pending'),
('fXHqICmSoo', 'RLgS74JSSx', 'yrwzoaks@example.com', '138422.11', '31721.28', 'Nagad', '2019-07-05', '2008-11-16 04:11:34', 'Pending'),
('fXHqICmSoo', 'RLgtBYQD0H', 'yrwzoaks@example.com', '78737.62', '69596.65', 'Upay', '2001-10-25', '2008-01-19 19:44:50', 'Pending'),
('fXHqICmSoo', 'RLgXGMB5w8', 'xtnb32@example.com', '115630.62', '13425.04', 'MCash', '2016-04-01', '2008-02-18 17:02:25', 'Approved'),
('fXHqICmSoo', 'RLgXnGB3M5', 'xtnb32@example.com', '36758.21', '78185.20', 'MCash', '2017-12-14', '2008-10-03 19:31:44', 'Approved'),
('fXHqICmSoo', 'RLgYkVqWPn', 'mjsq37@example.com', '86041.02', '90390.99', 'Rocket', '2007-01-19', '2008-06-11 06:01:07', 'Pending'),
('gWMI5GYIL1', 'RLg11BkKfq', 'xtnb32@example.com', '124410.63', '56984.91', 'bKash', '2005-12-01', '2008-09-23 18:16:54', 'Rejected'),
('gWMI5GYIL1', 'RLgo3Aexjn', 'yrwzoaks@example.com', '144186.18', '86049.42', 'Rocket', '2009-08-10', '2008-07-02 06:29:58', 'Rejected'),
('gWMI5GYIL1', 'RLgoUT32GK', 'mjsq37@example.com', '115823.11', '18958.61', 'bKash', '2019-09-30', '2008-04-07 08:34:06', 'Pending'),
('gWMI5GYIL1', 'RLgs14B1BO', 'mjsq37@example.com', '73441.82', '58784.62', 'MCash', '2018-05-06', '2008-08-28 21:05:31', 'Pending'),
('H6HiO6NE3f', 'RLg2e5p04C', 'imefxh@example.com', '142995.04', '53476.37', 'bKash', '2013-02-17', '2008-07-26 07:06:33', 'Pending'),
('H6HiO6NE3f', 'RLgODmDVWW', 'mjsq37@example.com', '79039.01', '143978.04', 'MCash', '2015-12-04', '2008-10-13 19:52:23', 'Pending'),
('H6HiO6NE3f', 'RLgONSmYGH', 'xtnb32@example.com', '143653.83', '58707.94', 'Rocket', '2002-02-10', '2008-09-28 03:27:49', 'Pending'),
('H6HiO6NE3f', 'RLgPV3HU88', 'yrwzoaks@example.com', '104476.02', '41925.48', 'bKash', '2008-06-14', '2008-03-19 10:34:50', 'Pending'),
('H6HiO6NE3f', 'RLgREPVN0D', 'yrwzoaks@example.com', '66787.94', '121894.50', 'Upay', '2008-01-15', '2008-09-08 14:57:33', 'Pending'),
('H6HiO6NE3f', 'RLgv118VSW', 'yrwzoaks@example.com', '56879.35', '41713.40', 'Nagad', '2005-06-29', '2008-06-29 16:23:40', 'Pending'),
('H6HiO6NE3f', 'RLgvV8t20X', 'yrwzoaks@example.com', '16694.98', '131084.86', 'Rocket', '2008-11-25', '2008-09-30 14:57:23', 'Pending'),
('H6HiO6NE3f', 'RLgW5pB7Q8', 'yrwzoaks@example.com', '19938.88', '138619.96', 'Rocket', '2007-05-22', '2008-08-21 10:54:52', 'Pending'),
('I360Ao2HAy', 'RLg14TD5sj', 'mjsq37@example.com', '78143.97', '88355.17', 'Rocket', '2008-09-11', '2008-04-23 21:41:35', 'Pending'),
('I360Ao2HAy', 'RLg2VtXrP6', 'mjsq37@example.com', '49241.81', '13408.01', 'Nagad', '2011-06-02', '2008-01-05 00:03:11', 'Pending'),
('I360Ao2HAy', 'RLg57ILMWy', 'xtnb32@example.com', '57965.37', '93366.32', 'bKash', '2019-07-30', '2008-08-14 14:52:33', 'Pending'),
('I360Ao2HAy', 'RLg6Wq1e78', 'xtnb32@example.com', '145426.16', '112777.53', 'bKash', '2016-10-21', '2008-05-31 20:31:34', 'Rejected'),
('I360Ao2HAy', 'RLg8j0UJ7y', 'vpidu26@example.com', '110453.94', '104231.69', 'Rocket', '2012-04-02', '2008-07-28 09:51:45', 'Rejected'),
('I360Ao2HAy', 'RLg9PyOB6q', 'yrwzoaks@example.com', '108500.43', '74716.94', 'bKash', '2001-02-14', '2008-09-27 17:58:24', 'Rejected'),
('I360Ao2HAy', 'RLgG2Znx8V', 'imefxh@example.com', '79767.04', '56953.97', 'MCash', '2004-03-29', '2008-12-22 07:15:04', 'Pending'),
('I360Ao2HAy', 'RLgI7Y9N4S', 'xtnb32@example.com', '63226.86', '22793.96', 'MCash', '2018-08-09', '2008-01-19 06:55:57', 'Rejected'),
('I360Ao2HAy', 'RLgJcgcWFo', 'yrwzoaks@example.com', '145778.15', '22962.61', 'bKash', '2019-09-23', '2008-08-20 04:57:42', 'Pending'),
('I360Ao2HAy', 'RLgjoSZJ8r', 'vpidu26@example.com', '126483.05', '91992.64', 'Rocket', '2014-06-11', '2008-09-26 10:04:37', 'Rejected'),
('I360Ao2HAy', 'RLgN51n06g', 'imefxh@example.com', '56304.02', '89228.58', 'SureCash', '2004-03-25', '2008-12-20 17:36:09', 'Pending'),
('I360Ao2HAy', 'RLgQA9c7yF', 'yrwzoaks@example.com', '104979.38', '115195.67', 'MCash', '2002-04-29', '2008-04-30 18:35:34', 'Pending'),
('I360Ao2HAy', 'RLgUBPSrCO', 'mjsq37@example.com', '77601.68', '38906.20', 'Rocket', '2010-06-02', '2008-06-08 06:23:50', 'Pending'),
('I360Ao2HAy', 'RLgWCR54RS', 'xtnb32@example.com', '92227.06', '121777.35', 'Rocket', '2017-04-21', '2008-12-15 14:53:09', 'Rejected'),
('i55BtGJJRE', 'RLg27YMEBP', 'yrwzoaks@example.com', '44664.52', '49487.17', 'Rocket', '2011-01-27', '2008-05-12 23:34:26', 'Rejected'),
('i55BtGJJRE', 'RLgccwDP6b', 'imefxh@example.com', '109030.42', '36627.00', 'UCash', '2013-10-01', '2008-01-26 19:17:16', 'Approved'),
('i55BtGJJRE', 'RLgfb72W84', 'imefxh@example.com', '93986.57', '108219.81', 'Nagad', '2014-06-04', '2008-08-14 00:21:26', 'Approved'),
('i55BtGJJRE', 'RLgP3Jur1D', 'yrwzoaks@example.com', '100026.61', '115320.63', 'MCash', '2012-07-08', '2008-12-22 05:00:32', 'Approved'),
('i55BtGJJRE', 'RLgPXRD2Xx', 'mjsq37@example.com', '132297.45', '119677.93', 'bKash', '2017-08-12', '2008-05-09 15:19:15', 'Pending'),
('i55BtGJJRE', 'RLgTH1pA6t', 'yrwzoaks@example.com', '38073.22', '125087.02', 'Rocket', '2012-12-06', '2008-07-03 11:18:22', 'Approved'),
('i55BtGJJRE', 'RLgUVI7Gn0', 'xtnb32@example.com', '51796.56', '104007.78', 'SureCash', '2007-10-26', '2008-02-15 13:46:59', 'Rejected'),
('i55BtGJJRE', 'RLgUVLw6V7', 'mjsq37@example.com', '34737.78', '54022.10', 'Rocket', '2018-07-29', '2008-06-06 04:10:32', 'Pending'),
('i55BtGJJRE', 'RLgwkEB4E3', 'xtnb32@example.com', '16392.39', '82477.35', 'Rocket', '2007-05-24', '2008-01-31 22:15:16', 'Approved'),
('iRC3H66UPx', 'RLg2U4ECrL', 'xtnb32@example.com', '72597.99', '117635.88', 'bKash', '2002-11-18', '2008-04-15 15:44:45', 'Rejected'),
('iRC3H66UPx', 'RLg48D4L2H', 'vpidu26@example.com', '67062.29', '107197.30', 'Rocket', '2001-10-09', '2008-03-17 09:41:37', 'Rejected'),
('iRC3H66UPx', 'RLgePFT7hi', 'imefxh@example.com', '127556.77', '30751.09', 'bKash', '2011-07-08', '2008-12-07 15:04:29', 'Pending'),
('iRC3H66UPx', 'RLgF0o61AE', 'vpidu26@example.com', '39504.30', '135386.52', 'UCash', '2001-09-07', '2008-03-12 15:32:21', 'Pending'),
('iRC3H66UPx', 'RLgkdKJoGN', 'yrwzoaks@example.com', '134371.80', '56406.54', 'MCash', '2009-01-01', '2008-04-01 11:39:40', 'Pending'),
('iRC3H66UPx', 'RLgLu6hCMx', 'xtnb32@example.com', '54835.31', '123145.01', 'bKash', '2004-11-25', '2008-12-10 05:31:24', 'Rejected'),
('iRC3H66UPx', 'RLgvXEV26o', 'yrwzoaks@example.com', '11910.65', '85527.32', 'Rocket', '2009-02-11', '2008-04-03 15:30:13', 'Pending'),
('iRC3H66UPx', 'RLgWRn1zBs', 'xtnb32@example.com', '24246.49', '144190.08', 'bKash', '2003-05-16', '2008-10-29 17:53:05', 'Approved'),
('iRC3H66UPx', 'RLgyfKb5PU', 'yrwzoaks@example.com', '99996.82', '24259.83', 'Nagad', '2008-04-12', '2008-03-12 20:31:24', 'Pending'),
('iXtOe9IFMF', 'RLg2JR1VGF', 'yrwzoaks@example.com', '87170.67', '123872.84', 'bKash', '2007-03-11', '2008-02-07 04:51:51', 'Pending'),
('iXtOe9IFMF', 'RLgaEb88V1', 'yrwzoaks@example.com', '13597.17', '133310.02', 'Nagad', '2010-09-24', '2008-11-13 08:29:29', 'Pending'),
('iXtOe9IFMF', 'RLgCOCqVUA', 'vpidu26@example.com', '86872.41', '55653.83', 'Rocket', '2000-04-20', '2008-01-31 05:00:06', 'Approved'),
('iXtOe9IFMF', 'RLgdWyuQhz', 'mjsq37@example.com', '94507.53', '128370.09', 'bKash', '2016-08-07', '2008-10-21 19:48:00', 'Pending'),
('iXtOe9IFMF', 'RLgN7617A0', 'imefxh@example.com', '135466.76', '104592.15', 'Rocket', '2012-01-04', '2008-12-20 00:41:51', 'Pending'),
('iXtOe9IFMF', 'RLgPXZNZCG', 'mjsq37@example.com', '80246.75', '130817.32', 'UCash', '2016-11-11', '2008-10-29 16:01:05', 'Pending'),
('iXtOe9IFMF', 'RLgQDdMlhL', 'xtnb32@example.com', '54750.87', '96288.10', 'MCash', '2002-11-03', '2008-04-11 22:29:42', 'Pending'),
('J701AmjsQI', 'RLg1X0GYT7', 'imefxh@example.com', '114889.33', '54131.88', 'Rocket', '2006-09-28', '2008-02-25 17:09:46', 'Approved'),
('J701AmjsQI', 'RLg4R31FhR', 'yrwzoaks@example.com', '128245.80', '74829.19', 'SureCash', '2002-07-20', '2008-11-02 06:54:10', 'Approved'),
('J701AmjsQI', 'RLg9h1snbg', 'mjsq37@example.com', '46032.29', '19425.72', 'Nagad', '2009-08-06', '2008-05-12 15:35:45', 'Rejected'),
('J701AmjsQI', 'RLgaUQW7sT', 'vpidu26@example.com', '141652.80', '118079.90', 'SureCash', '2014-01-06', '2008-03-12 01:27:13', 'Rejected'),
('J701AmjsQI', 'RLgBBc1o15', 'imefxh@example.com', '15765.34', '106210.92', 'Rocket', '2006-04-27', '2008-02-12 16:17:54', 'Pending'),
('J701AmjsQI', 'RLgeQwXCDv', 'mjsq37@example.com', '113947.97', '59391.28', 'bKash', '2009-03-22', '2008-10-31 07:40:52', 'Pending'),
('J701AmjsQI', 'RLgftKN0P5', 'yrwzoaks@example.com', '53149.36', '56473.20', 'SureCash', '2003-05-11', '2008-05-25 12:26:55', 'Pending'),
('J701AmjsQI', 'RLgHsQS7QE', 'mjsq37@example.com', '38283.42', '133601.36', 'SureCash', '2009-12-03', '2008-05-23 21:18:40', 'Pending'),
('J701AmjsQI', 'RLgN030SJ6', 'mjsq37@example.com', '46491.05', '84460.43', 'bKash', '2010-02-18', '2008-11-26 12:00:15', 'Pending'),
('J701AmjsQI', 'RLgoe5CCsr', 'vpidu26@example.com', '47093.29', '65132.37', 'Rocket', '2014-05-10', '2008-09-20 07:42:15', 'Rejected'),
('J701AmjsQI', 'RLgots4MB8', 'imefxh@example.com', '104270.51', '81916.69', 'MCash', '2006-02-15', '2008-08-08 01:53:25', 'Pending'),
('J701AmjsQI', 'RLgp7D5OeF', 'mjsq37@example.com', '146678.98', '104975.99', 'Nagad', '2010-01-29', '2008-05-27 14:50:16', 'Pending'),
('J701AmjsQI', 'RLgyjWB7o0', 'yrwzoaks@example.com', '85006.12', '17198.77', 'bKash', '2000-08-27', '2008-09-11 17:26:42', 'Pending'),
('J701AmjsQI', 'RLgZ8Jv6Su', 'vpidu26@example.com', '11826.52', '30341.63', 'MCash', '2015-06-24', '2008-04-21 14:10:30', 'Rejected'),
('jG25oTGYMK', 'RLg804I3Im', 'imefxh@example.com', '135931.11', '73046.99', 'MCash', '2006-04-06', '2008-02-07 11:38:32', 'Pending'),
('jG25oTGYMK', 'RLg9FP5NsT', 'yrwzoaks@example.com', '83450.45', '80901.52', 'Upay', '2003-10-10', '2008-12-01 15:12:55', 'Pending'),
('jG25oTGYMK', 'RLgfSwCZQK', 'xtnb32@example.com', '117901.84', '58342.24', 'bKash', '2000-05-19', '2008-08-31 06:32:45', 'Pending'),
('jG25oTGYMK', 'RLghlTIxQE', 'imefxh@example.com', '84877.70', '68630.52', 'MCash', '2008-05-01', '2008-04-05 08:19:12', 'Rejected'),
('jG25oTGYMK', 'RLgJC3JL35', 'vpidu26@example.com', '99234.03', '127211.79', 'Upay', '2012-12-09', '2008-02-09 19:01:54', 'Approved'),
('jG25oTGYMK', 'RLglEeiwPB', 'xtnb32@example.com', '111775.61', '89002.21', 'SureCash', '2017-11-02', '2008-06-22 20:26:56', 'Pending'),
('jG25oTGYMK', 'RLgm9JMnOV', 'imefxh@example.com', '112831.37', '24482.35', 'Rocket', '2006-12-22', '2008-08-27 15:31:08', 'Approved'),
('jG25oTGYMK', 'RLgPOB4aDP', 'imefxh@example.com', '130071.42', '137323.12', 'SureCash', '2007-05-21', '2008-03-10 20:13:13', 'Rejected'),
('jG25oTGYMK', 'RLgQs1eoxm', 'vpidu26@example.com', '112348.03', '112285.32', 'Nagad', '2014-08-13', '2008-09-24 04:27:35', 'Pending'),
('jG25oTGYMK', 'RLgV1DbLC6', 'imefxh@example.com', '91936.43', '112219.71', 'MCash', '2008-07-01', '2008-10-10 06:12:20', 'Rejected'),
('jG25oTGYMK', 'RLgX3PN34Z', 'imefxh@example.com', '125089.36', '37740.12', 'Nagad', '2007-10-16', '2008-09-18 22:53:12', 'Rejected'),
('jG25oTGYMK', 'RLgYbTUT51', 'mjsq37@example.com', '143117.35', '29586.56', 'bKash', '2008-11-30', '2008-04-22 11:26:34', 'Pending'),
('JOFH9TTM5C', 'RLgf8EB5Nh', 'imefxh@example.com', '142129.09', '77556.62', 'bKash', '2014-08-11', '2008-02-22 20:29:27', 'Pending'),
('JOFH9TTM5C', 'RLgGp1Dhrk', 'vpidu26@example.com', '90303.29', '94757.28', 'Rocket', '2003-10-04', '2008-10-30 09:27:31', 'Rejected'),
('JOFH9TTM5C', 'RLghCkVvW9', 'imefxh@example.com', '35985.52', '41973.55', 'MCash', '2013-04-29', '2008-01-17 02:16:52', 'Pending'),
('JOFH9TTM5C', 'RLgoE5tVqO', 'xtnb32@example.com', '31182.61', '90324.50', 'MCash', '2005-10-25', '2008-06-25 03:38:43', 'Pending'),
('JOFH9TTM5C', 'RLgOn2Y41r', 'imefxh@example.com', '41161.81', '89990.07', 'SureCash', '2015-12-13', '2008-09-26 20:22:38', 'Pending'),
('JOFH9TTM5C', 'RLgU9DGOIb', 'imefxh@example.com', '57130.60', '22991.36', 'bKash', '2014-08-01', '2008-08-19 21:48:55', 'Rejected'),
('JOFH9TTM5C', 'RLgUiIhHOy', 'xtnb32@example.com', '99425.48', '143663.65', 'Nagad', '2007-11-30', '2008-08-20 05:50:18', 'Rejected'),
('JOFH9TTM5C', 'RLguNhZB7M', 'mjsq37@example.com', '91363.27', '86615.08', 'Rocket', '2016-10-20', '2008-04-21 04:37:16', 'Rejected'),
('JOFH9TTM5C', 'RLgY86ZCZU', 'vpidu26@example.com', '34177.12', '97428.47', 'bKash', '2000-02-09', '2008-07-22 14:09:19', 'Rejected'),
('JOFH9TTM5C', 'RLgyX6y396', 'yrwzoaks@example.com', '136145.08', '72471.19', 'UCash', '2010-03-27', '2008-04-22 18:01:22', 'Pending'),
('JTQ37vPTFE', 'RLg0FkVZnr', 'imefxh@example.com', '53429.40', '25227.52', 'Rocket', '2005-12-01', '2008-07-28 19:36:29', 'Approved'),
('JTQ37vPTFE', 'RLg4E4UN3M', 'imefxh@example.com', '93651.90', '145307.88', 'Rocket', '2006-02-26', '2008-08-04 02:55:20', 'Pending'),
('JTQ37vPTFE', 'RLg4N248Gp', 'imefxh@example.com', '60347.47', '44022.07', 'SureCash', '2007-03-11', '2008-02-29 21:46:46', 'Pending'),
('JTQ37vPTFE', 'RLg4SQ8t6U', 'yrwzoaks@example.com', '57278.73', '64970.70', 'UCash', '2003-07-19', '2008-11-21 18:52:27', 'Pending'),
('JTQ37vPTFE', 'RLgBWBOkF0', 'yrwzoaks@example.com', '53859.84', '73623.62', 'Nagad', '2002-05-13', '2008-10-19 12:33:44', 'Rejected'),
('JTQ37vPTFE', 'RLgfWRgDKS', 'yrwzoaks@example.com', '19151.96', '147188.52', 'Nagad', '2003-02-07', '2008-05-11 17:31:18', 'Pending'),
('JTQ37vPTFE', 'RLgIjY3S1I', 'mjsq37@example.com', '26432.37', '148827.12', 'SureCash', '2011-04-29', '2008-06-23 18:45:06', 'Approved'),
('JTQ37vPTFE', 'RLgiK6G9O1', 'vpidu26@example.com', '74501.47', '45779.63', 'Rocket', '2016-10-10', '2008-05-20 20:53:11', 'Rejected'),
('JTQ37vPTFE', 'RLgQ1U39ef', 'yrwzoaks@example.com', '78957.39', '73502.56', 'Nagad', '2002-08-14', '2008-04-28 06:14:03', 'Approved'),
('JTQ37vPTFE', 'RLgqCpLWCU', 'vpidu26@example.com', '48787.96', '91439.42', 'Rocket', '2015-04-25', '2008-10-08 08:54:49', 'Pending'),
('JTQ37vPTFE', 'RLgQVCpC8I', 'vpidu26@example.com', '136094.38', '27152.05', 'MCash', '2014-08-21', '2008-09-20 08:12:19', 'Rejected'),
('JTQ37vPTFE', 'RLgT7uUGEH', 'mjsq37@example.com', '102057.09', '74196.97', 'Nagad', '2010-10-12', '2008-12-09 06:29:57', 'Pending'),
('JTQ37vPTFE', 'RLgu16wQYw', 'yrwzoaks@example.com', '127986.62', '110352.81', 'Rocket', '2005-04-10', '2008-07-10 00:27:16', 'Approved'),
('JTQ37vPTFE', 'RLgXX8O8we', 'yrwzoaks@example.com', '31019.72', '90365.33', 'Rocket', '2004-04-09', '2008-06-12 15:42:51', 'Pending'),
('JTQ37vPTFE', 'RLgYDMP491', 'yrwzoaks@example.com', '145852.80', '68613.19', 'SureCash', '2005-02-27', '2008-07-07 20:49:55', 'Pending'),
('JVvABQPbK8', 'RLg0Y6F1Uc', 'yrwzoaks@example.com', '21548.30', '87043.12', 'SureCash', '2008-11-01', '2008-03-20 02:07:50', 'Rejected'),
('JVvABQPbK8', 'RLg40SCKyJ', 'vpidu26@example.com', '149350.29', '32831.98', 'Nagad', '2002-08-23', '2008-10-03 17:28:32', 'Pending'),
('JVvABQPbK8', 'RLg5Ej5LwN', 'xtnb32@example.com', '130328.59', '33817.28', 'Upay', '2003-11-22', '2008-05-06 04:38:43', 'Pending'),
('JVvABQPbK8', 'RLgj5poY5T', 'imefxh@example.com', '96533.07', '76562.63', 'Rocket', '2015-03-28', '2008-03-14 08:02:27', 'Pending'),
('JVvABQPbK8', 'RLgPBykX44', 'vpidu26@example.com', '49798.01', '126750.43', 'UCash', '2003-10-18', '2008-11-01 08:35:26', 'Approved'),
('JVvABQPbK8', 'RLgQMu8l1n', 'xtnb32@example.com', '79651.32', '15883.27', 'Rocket', '2004-08-02', '2008-05-24 23:47:52', 'Pending'),
('JVvABQPbK8', 'RLgUFVLG5S', 'imefxh@example.com', '19280.51', '64701.03', 'SureCash', '2015-01-29', '2008-03-10 14:45:36', 'Pending'),
('oa6e6bSM26', 'RLg1UVfDLi', 'imefxh@example.com', '67211.02', '62304.36', 'Upay', '2012-02-13', '2008-03-29 02:36:30', 'Approved'),
('oa6e6bSM26', 'RLg3YDB2qd', 'yrwzoaks@example.com', '37146.14', '54958.69', 'bKash', '2004-12-13', '2008-03-18 01:58:43', 'Pending'),
('oa6e6bSM26', 'RLgCU68k3X', 'yrwzoaks@example.com', '10222.07', '145722.14', 'Rocket', '2007-07-13', '2008-11-26 09:20:57', 'Pending'),
('oa6e6bSM26', 'RLgft8Ke8W', 'yrwzoaks@example.com', '58647.17', '114429.66', 'Nagad', '2007-12-12', '2008-06-08 06:29:44', 'Pending'),
('oa6e6bSM26', 'RLgjOGAvNQ', 'mjsq37@example.com', '31382.70', '116936.96', 'Rocket', '2013-07-30', '2008-05-08 13:13:09', 'Pending'),
('oa6e6bSM26', 'RLgK2jlAxI', 'xtnb32@example.com', '97207.67', '88026.96', 'MCash', '2003-07-06', '2008-08-06 01:28:30', 'Approved'),
('oa6e6bSM26', 'RLgNYwg3s1', 'mjsq37@example.com', '87168.71', '62108.89', 'SureCash', '2016-03-13', '2008-01-20 21:00:45', 'Approved'),
('oa6e6bSM26', 'RLgT4xLRJO', 'yrwzoaks@example.com', '34446.20', '44597.22', 'Nagad', '2009-01-01', '2008-07-03 22:54:32', 'Pending'),
('oa6e6bSM26', 'RLgVydGLAI', 'vpidu26@example.com', '49708.68', '53323.59', 'Nagad', '2000-02-26', '2008-05-06 07:57:37', 'Rejected'),
('oa6e6bSM26', 'RLgZMQ8UFN', 'yrwzoaks@example.com', '18835.01', '147271.57', 'MCash', '2006-01-29', '2008-04-14 21:59:09', 'Pending'),
('QMLFW3hgMV', 'RLg1e5qx4h', 'imefxh@example.com', '95337.84', '25059.39', 'Nagad', '2017-11-06', '2008-05-08 22:06:26', 'Rejected'),
('QMLFW3hgMV', 'RLg5FC5C5v', 'mjsq37@example.com', '102940.18', '82288.04', 'Nagad', '2001-12-29', '2008-03-01 22:14:12', 'Approved'),
('QMLFW3hgMV', 'RLgEsRMtW7', 'imefxh@example.com', '61083.75', '76447.94', 'Rocket', '2015-10-03', '2008-09-11 17:52:24', 'Approved'),
('QMLFW3hgMV', 'RLgK878QXt', 'yrwzoaks@example.com', '89643.13', '57178.41', 'Rocket', '2012-03-07', '2008-06-05 18:37:04', 'Pending'),
('QMLFW3hgMV', 'RLgKzsJ7MO', 'vpidu26@example.com', '35056.75', '127211.53', 'Nagad', '2004-02-01', '2008-10-26 02:01:28', 'Pending'),
('QMLFW3hgMV', 'RLgln8TKWT', 'xtnb32@example.com', '41301.51', '114615.48', 'Rocket', '2006-09-22', '2008-01-08 15:20:56', 'Pending'),
('QMLFW3hgMV', 'RLgMSx4Zx8', 'yrwzoaks@example.com', '56729.88', '88082.52', 'Rocket', '2011-07-13', '2008-05-19 19:03:23', 'Approved'),
('QMLFW3hgMV', 'RLgNgF2m7U', 'mjsq37@example.com', '42438.00', '30184.29', 'SureCash', '2019-11-19', '2008-01-02 17:30:53', 'Pending'),
('QMLFW3hgMV', 'RLgOEBNRE0', 'imefxh@example.com', '138214.39', '107373.45', 'Upay', '2017-11-28', '2008-05-12 07:41:37', 'Approved'),
('QMLFW3hgMV', 'RLgOiVPxVg', 'imefxh@example.com', '80155.54', '50927.44', 'Nagad', '2015-08-21', '2008-09-07 05:42:33', 'Pending'),
('QMLFW3hgMV', 'RLgp76v1jQ', 'xtnb32@example.com', '108813.75', '60963.42', 'bKash', '2010-05-25', '2008-10-17 01:50:00', 'Pending'),
('QMLFW3hgMV', 'RLgsWusMLI', 'mjsq37@example.com', '46856.68', '112502.55', 'Nagad', '2000-03-10', '2008-07-13 09:42:23', 'Approved'),
('QMLFW3hgMV', 'RLgtN0TtnT', 'vpidu26@example.com', '79349.51', '126050.19', 'MCash', '2005-05-12', '2008-11-29 21:17:21', 'Rejected'),
('QMLFW3hgMV', 'RLgxOqJR23', 'imefxh@example.com', '38747.48', '148024.61', 'Rocket', '2016-01-03', '2008-03-18 11:38:39', 'Pending'),
('qPB53UUBgB', 'RLg1RNPDA3', 'imefxh@example.com', '28399.06', '10258.63', 'SureCash', '2018-08-22', '2008-11-15 09:54:12', 'Pending'),
('qPB53UUBgB', 'RLg2ObOu1W', 'xtnb32@example.com', '138813.49', '55314.02', 'bKash', '2012-07-28', '2008-05-31 03:43:09', 'Pending'),
('qPB53UUBgB', 'RLg4HVf6lp', 'imefxh@example.com', '144677.99', '133472.03', 'Rocket', '2000-04-08', '2008-12-30 15:54:53', 'Approved'),
('qPB53UUBgB', 'RLgDBNUSyf', 'vpidu26@example.com', '75684.09', '117936.60', 'bKash', '2007-03-29', '2008-07-08 20:11:20', 'Rejected'),
('qPB53UUBgB', 'RLgF3FPyOo', 'mjsq37@example.com', '67168.93', '126193.45', 'Rocket', '2003-10-18', '2008-10-05 19:25:00', 'Pending'),
('qPB53UUBgB', 'RLgI9Sor8K', 'yrwzoaks@example.com', '134565.42', '14718.33', 'MCash', '2014-03-30', '2008-07-18 18:18:56', 'Approved'),
('qPB53UUBgB', 'RLgl7QQN76', 'vpidu26@example.com', '54652.10', '63338.40', 'Rocket', '2007-04-11', '2008-07-08 23:36:49', 'Rejected'),
('qPB53UUBgB', 'RLgnbuFYr6', 'xtnb32@example.com', '104538.11', '106193.40', 'bKash', '2013-07-20', '2008-12-28 22:58:12', 'Pending'),
('qPB53UUBgB', 'RLgpPk1JFn', 'imefxh@example.com', '110783.10', '147084.86', 'Rocket', '2000-11-29', '2008-07-19 08:05:28', 'Approved'),
('qPB53UUBgB', 'RLgTEHXbj2', 'yrwzoaks@example.com', '73014.56', '98658.23', 'MCash', '2014-08-04', '2008-01-27 01:14:34', 'Pending'),
('qPB53UUBgB', 'RLgvI1XzJj', 'imefxh@example.com', '61290.64', '34590.98', 'MCash', '2000-10-29', '2008-01-16 01:00:42', 'Pending'),
('qPB53UUBgB', 'RLgXQ8XLew', 'xtnb32@example.com', '96636.96', '119971.20', 'MCash', '2013-10-03', '2008-01-03 00:13:31', 'Rejected'),
('QSGQdD11KP', 'RLg6kUOScQ', 'imefxh@example.com', '122358.73', '149690.34', 'MCash', '2019-02-02', '2008-08-23 08:29:25', 'Pending'),
('QSGQdD11KP', 'RLg7smqE3n', 'xtnb32@example.com', '46401.00', '90045.99', 'Nagad', '2012-01-28', '2008-08-16 04:38:25', 'Rejected'),
('QSGQdD11KP', 'RLgb142cIq', 'vpidu26@example.com', '38447.54', '29363.64', 'Upay', '2009-05-22', '2008-06-02 12:37:17', 'Pending'),
('QSGQdD11KP', 'RLgFSMFvpH', 'mjsq37@example.com', '86312.31', '106849.99', 'MCash', '2006-11-02', '2008-09-22 01:45:29', 'Pending'),
('QSGQdD11KP', 'RLgNKo0EQa', 'xtnb32@example.com', '69106.20', '65522.87', 'Nagad', '2013-09-23', '2008-03-29 05:16:48', 'Rejected'),
('QSGQdD11KP', 'RLgqaWB6F6', 'vpidu26@example.com', '109540.78', '111139.20', 'SureCash', '2009-10-04', '2008-06-13 03:51:58', 'Pending'),
('QSGQdD11KP', 'RLgQmee5DA', 'xtnb32@example.com', '78899.53', '79857.80', 'Nagad', '2011-11-08', '2008-08-07 00:01:21', 'Rejected'),
('QSGQdD11KP', 'RLgsNySMmd', 'vpidu26@example.com', '64298.95', '30480.65', 'MCash', '2010-03-11', '2008-06-24 05:44:16', 'Rejected'),
('QSGQdD11KP', 'RLgUy5HOLE', 'vpidu26@example.com', '112495.31', '84623.89', 'bKash', '2009-07-14', '2008-12-06 04:44:59', 'Rejected'),
('R5YE9UVyOR', 'RLg11C8kGR', 'xtnb32@example.com', '13489.47', '33146.52', 'Rocket', '2006-11-29', '2008-10-17 15:55:03', 'Rejected'),
('R5YE9UVyOR', 'RLg9ghM45X', 'yrwzoaks@example.com', '116245.66', '128430.28', 'MCash', '2010-05-08', '2008-07-19 12:13:31', 'Pending'),
('R5YE9UVyOR', 'RLggGjYVPN', 'mjsq37@example.com', '147030.10', '31425.91', 'Upay', '2019-07-20', '2008-09-29 15:33:59', 'Pending'),
('R5YE9UVyOR', 'RLgOuhw4d8', 'imefxh@example.com', '86082.27', '127636.40', 'Nagad', '2016-07-07', '2008-01-05 18:23:09', 'Pending'),
('R5YE9UVyOR', 'RLgVSLNNGX', 'vpidu26@example.com', '34510.59', '11322.31', 'Nagad', '2002-08-28', '2008-12-22 00:24:20', 'Rejected'),
('RIyIKUb48G', 'RLg5n59R7V', 'yrwzoaks@example.com', '145911.96', '67703.47', 'Nagad', '2016-07-24', '2008-09-16 18:43:02', 'Pending');
INSERT INTO `rent_log` (`id`, `log_id`, `user_email`, `rent_amount`, `paid_amount`, `medium`, `paid_for`, `paid_at`, `status`) VALUES
('RIyIKUb48G', 'RLgEkgM8XZ', 'xtnb32@example.com', '87277.17', '66226.83', 'Nagad', '2012-07-28', '2008-11-28 05:50:02', 'Approved'),
('RIyIKUb48G', 'RLgIG2oU51', 'yrwzoaks@example.com', '134367.29', '122667.36', 'UCash', '2017-07-10', '2008-10-11 16:23:29', 'Pending'),
('RIyIKUb48G', 'RLgLP1L1DW', 'vpidu26@example.com', '117542.82', '81217.52', 'Rocket', '2010-05-12', '2008-03-28 02:24:00', 'Pending'),
('RIyIKUb48G', 'RLgoBEYWHV', 'xtnb32@example.com', '31850.72', '73575.41', 'Upay', '2013-02-21', '2008-12-13 03:12:40', 'Pending'),
('RIyIKUb48G', 'RLgQYmXXqI', 'mjsq37@example.com', '115213.81', '52606.38', 'MCash', '2006-01-20', '2008-12-03 05:07:54', 'Pending'),
('RIyIKUb48G', 'RLgRVNS1Sj', 'yrwzoaks@example.com', '103500.76', '127523.99', 'Nagad', '2016-07-11', '2008-03-16 17:11:51', 'Approved'),
('RIyIKUb48G', 'RLguXDSpbG', 'vpidu26@example.com', '26418.39', '24043.86', 'bKash', '2008-10-05', '2008-08-15 05:05:22', 'Rejected'),
('RNKR4dUu6s', 'RLg121NKFo', 'xtnb32@example.com', '18383.16', '123838.90', 'MCash', '2013-04-27', '2008-12-14 18:12:26', 'Pending'),
('RNKR4dUu6s', 'RLg7oMRIRY', 'mjsq37@example.com', '101454.09', '85386.15', 'Rocket', '2007-10-11', '2008-07-14 14:52:10', 'Approved'),
('RNKR4dUu6s', 'RLg848yCuP', 'mjsq37@example.com', '12886.27', '121579.67', 'Nagad', '2007-03-14', '2008-12-30 12:28:43', 'Rejected'),
('RNKR4dUu6s', 'RLgf44sz68', 'imefxh@example.com', '95028.20', '70937.92', 'Nagad', '2002-06-02', '2008-08-19 08:41:36', 'Rejected'),
('RNKR4dUu6s', 'RLgGQ2Q758', 'vpidu26@example.com', '130239.52', '50828.42', 'Rocket', '2010-12-11', '2008-10-11 09:49:12', 'Approved'),
('RNKR4dUu6s', 'RLgmkJrZ7C', 'vpidu26@example.com', '70304.83', '102827.68', 'Rocket', '2007-06-30', '2008-07-09 08:59:55', 'Approved'),
('RNKR4dUu6s', 'RLgMVv7H6K', 'vpidu26@example.com', '98129.03', '69058.89', 'Nagad', '2009-03-23', '2008-02-23 01:14:07', 'Approved'),
('RNKR4dUu6s', 'RLgNEU42ho', 'imefxh@example.com', '145329.48', '26853.21', 'Nagad', '2003-10-08', '2008-09-25 18:43:24', 'Approved'),
('RNKR4dUu6s', 'RLgQbI7MY5', 'mjsq37@example.com', '46196.85', '63385.70', 'Nagad', '2006-07-14', '2008-06-12 22:38:29', 'Rejected'),
('RNKR4dUu6s', 'RLgQII971N', 'xtnb32@example.com', '139461.99', '88930.24', 'bKash', '2014-04-23', '2008-01-11 20:55:05', 'Rejected'),
('RNKR4dUu6s', 'RLgxPaCCBQ', 'mjsq37@example.com', '109357.00', '38804.34', 'Upay', '2004-07-08', '2008-04-18 00:40:10', 'Rejected'),
('rWZOakSz52', 'RLg8VRiKSW', 'mjsq37@example.com', '52596.32', '114315.06', 'MCash', '2004-09-20', '2008-04-18 18:36:53', 'Pending'),
('rWZOakSz52', 'RLge6xsc4I', 'imefxh@example.com', '14174.47', '122691.18', 'Nagad', '2004-01-06', '2008-09-28 12:53:49', 'Pending'),
('rWZOakSz52', 'RLgGJnF31U', 'mjsq37@example.com', '68712.87', '135670.24', 'Nagad', '2004-04-21', '2008-10-08 19:47:59', 'Pending'),
('rWZOakSz52', 'RLgh5evWLP', 'imefxh@example.com', '15161.32', '117626.66', 'Rocket', '2000-07-22', '2008-06-26 20:32:21', 'Pending'),
('rWZOakSz52', 'RLgK6LIfOI', 'imefxh@example.com', '108747.07', '99871.42', 'bKash', '2002-02-21', '2008-02-07 16:56:55', 'Approved'),
('SfcFP342qq', 'RLg3S2263M', 'yrwzoaks@example.com', '57184.98', '16631.47', 'Nagad', '2017-03-05', '2008-06-27 22:55:33', 'Pending'),
('SfcFP342qq', 'RLg4BMjJdA', 'mjsq37@example.com', '45105.07', '132688.58', 'Rocket', '2006-10-08', '2008-03-17 18:04:20', 'Pending'),
('SfcFP342qq', 'RLg4DLSVJ7', 'imefxh@example.com', '77354.00', '144054.72', 'bKash', '2002-04-09', '2008-11-17 04:19:01', 'Pending'),
('SfcFP342qq', 'RLg5hy7rhl', 'imefxh@example.com', '45188.92', '59760.32', 'SureCash', '2003-05-17', '2008-06-15 23:44:33', 'Rejected'),
('SfcFP342qq', 'RLg6koUFJE', 'imefxh@example.com', '146820.23', '70492.34', 'Nagad', '2001-06-06', '2008-04-22 22:17:54', 'Pending'),
('SfcFP342qq', 'RLgbEPLIZ4', 'yrwzoaks@example.com', '119165.63', '36277.48', 'MCash', '2017-03-24', '2008-12-30 21:14:34', 'Rejected'),
('SfcFP342qq', 'RLgEvms7K4', 'imefxh@example.com', '137759.18', '138586.43', 'bKash', '2002-11-29', '2008-06-05 09:24:23', 'Pending'),
('SfcFP342qq', 'RLgiULBd5Y', 'mjsq37@example.com', '123563.82', '31172.49', 'Rocket', '2006-10-04', '2008-09-15 22:37:41', 'Pending'),
('SfcFP342qq', 'RLgIWWRK0P', 'mjsq37@example.com', '117629.48', '103694.45', 'Nagad', '2006-06-24', '2008-03-11 16:59:42', 'Pending'),
('SfcFP342qq', 'RLgmQbSRoM', 'yrwzoaks@example.com', '143508.23', '108320.37', 'Rocket', '2019-10-03', '2008-03-08 07:58:56', 'Pending'),
('SfcFP342qq', 'RLgzJXB874', 'mjsq37@example.com', '142937.66', '10607.54', 'MCash', '2006-03-11', '2008-03-02 18:58:22', 'Rejected'),
('tnB32c4GyR', 'RLg2kTS8Cy', 'imefxh@example.com', '62334.69', '15038.01', 'bKash', '2005-05-07', '2008-05-02 02:03:44', 'Approved'),
('tnB32c4GyR', 'RLg57T02c4', 'yrwzoaks@example.com', '105902.45', '128569.55', 'MCash', '2018-06-18', '2008-04-26 15:18:32', 'Pending'),
('tnB32c4GyR', 'RLg5IkVYWG', 'vpidu26@example.com', '53086.37', '137250.10', 'Upay', '2012-08-16', '2008-11-20 02:45:45', 'Pending'),
('tnB32c4GyR', 'RLg6eq4Ra4', 'vpidu26@example.com', '92134.83', '137412.02', 'MCash', '2013-03-07', '2008-12-03 17:42:41', 'Approved'),
('tnB32c4GyR', 'RLgdAl54a3', 'yrwzoaks@example.com', '89133.22', '82773.95', 'Nagad', '2000-03-17', '2008-12-12 05:47:53', 'Approved'),
('tnB32c4GyR', 'RLgFPFPZQ2', 'yrwzoaks@example.com', '40973.61', '32162.84', 'SureCash', '2018-10-04', '2008-11-05 10:37:15', 'Pending'),
('tnB32c4GyR', 'RLgG1MA6WZ', 'yrwzoaks@example.com', '141835.20', '32888.90', 'UCash', '2000-05-27', '2008-06-18 08:41:25', 'Pending'),
('tnB32c4GyR', 'RLgRM1YRWF', 'vpidu26@example.com', '78244.07', '119392.71', 'Nagad', '2011-04-28', '2008-10-13 23:19:48', 'Pending'),
('tnB32c4GyR', 'RLgxC2MYvE', 'imefxh@example.com', '47291.10', '43564.06', 'Rocket', '2004-08-05', '2008-10-13 11:05:38', 'Pending'),
('Ts22V8v7SI', 'RLg4GHCHNP', 'imefxh@example.com', '33836.62', '145684.13', 'bKash', '2019-06-06', '2008-06-18 15:40:21', 'Pending'),
('Ts22V8v7SI', 'RLg5BwH7n4', 'mjsq37@example.com', '32181.30', '36415.62', 'Upay', '2002-07-04', '2008-09-11 16:44:22', 'Pending'),
('Ts22V8v7SI', 'RLgA5vTjOw', 'imefxh@example.com', '146851.74', '125310.87', 'Nagad', '2017-11-23', '2008-11-06 19:38:11', 'Rejected'),
('Ts22V8v7SI', 'RLgftfTONG', 'imefxh@example.com', '113870.37', '79490.39', 'Upay', '2016-07-06', '2008-09-28 06:02:35', 'Approved'),
('Ts22V8v7SI', 'RLgK4B7P4E', 'vpidu26@example.com', '109204.10', '70837.13', 'Rocket', '2004-09-23', '2008-11-11 09:33:09', 'Pending'),
('Ts22V8v7SI', 'RLgL2kHVXY', 'mjsq37@example.com', '15161.17', '94601.46', 'Nagad', '2003-09-03', '2008-10-12 01:40:03', 'Rejected'),
('Ts22V8v7SI', 'RLgqGH73D4', 'xtnb32@example.com', '81552.19', '123874.11', 'MCash', '2007-12-25', '2008-02-07 14:15:03', 'Pending'),
('Ts22V8v7SI', 'RLgTLQ1SaJ', 'yrwzoaks@example.com', '58081.85', '133047.95', 'Rocket', '2012-05-12', '2008-06-07 02:08:49', 'Pending'),
('Ts22V8v7SI', 'RLgW280QLM', 'mjsq37@example.com', '138025.35', '49745.21', 'Rocket', '2019-09-21', '2008-12-27 15:40:05', 'Pending'),
('Ts22V8v7SI', 'RLgX48D4t3', 'yrwzoaks@example.com', '17532.10', '18012.61', 'MCash', '2014-06-21', '2008-08-05 11:20:28', 'Pending'),
('ttV2EW3T76', 'RLg0tyaOP1', 'imefxh@example.com', '85593.40', '116754.60', 'Nagad', '2001-02-04', '2008-04-12 05:49:56', 'Approved'),
('ttV2EW3T76', 'RLg44Dd2V4', 'imefxh@example.com', '117541.98', '105138.00', 'Nagad', '2004-03-03', '2008-01-04 06:34:50', 'Rejected'),
('ttV2EW3T76', 'RLg6VrSJ8X', 'imefxh@example.com', '10092.64', '117326.52', 'UCash', '2003-05-06', '2008-06-11 11:03:00', 'Approved'),
('ttV2EW3T76', 'RLg7f94Stk', 'vpidu26@example.com', '120324.60', '55813.36', 'Nagad', '2008-12-31', '2008-05-14 21:54:25', 'Rejected'),
('ttV2EW3T76', 'RLg7HOD0VO', 'xtnb32@example.com', '85598.97', '143870.81', 'bKash', '2014-02-13', '2008-04-02 05:23:17', 'Rejected'),
('ttV2EW3T76', 'RLg9UbPg8D', 'mjsq37@example.com', '17246.60', '53718.42', 'Nagad', '2007-01-28', '2008-03-23 09:38:16', 'Rejected'),
('ttV2EW3T76', 'RLgBG2zNhg', 'vpidu26@example.com', '75187.56', '23068.27', 'Nagad', '2011-11-10', '2008-02-02 03:27:42', 'Approved'),
('ttV2EW3T76', 'RLgD1LPM30', 'imefxh@example.com', '30947.05', '86433.26', 'Nagad', '2002-11-29', '2008-05-31 13:10:35', 'Pending'),
('ttV2EW3T76', 'RLgDS2Qa6H', 'xtnb32@example.com', '59679.51', '83612.19', 'Nagad', '2015-02-09', '2008-04-29 13:10:13', 'Pending'),
('ttV2EW3T76', 'RLgF4XfDuL', 'yrwzoaks@example.com', '142336.54', '117005.44', 'Rocket', '2017-08-31', '2008-07-08 09:47:24', 'Pending'),
('ttV2EW3T76', 'RLgOL51TDC', 'mjsq37@example.com', '122062.68', '58794.82', 'bKash', '2007-08-18', '2008-10-06 22:18:39', 'Pending'),
('ttV2EW3T76', 'RLgSi5Y4tE', 'vpidu26@example.com', '57338.74', '105746.82', 'Nagad', '2009-09-08', '2008-12-01 11:49:22', 'Pending'),
('ttV2EW3T76', 'RLgTSHKm3i', 'imefxh@example.com', '107799.69', '16010.70', 'SureCash', '2001-09-11', '2008-04-28 08:27:49', 'Approved'),
('ttV2EW3T76', 'RLgUL4T43u', 'vpidu26@example.com', '21703.92', '91013.85', 'Nagad', '2009-03-09', '2008-11-20 08:28:53', 'Approved'),
('ttV2EW3T76', 'RLgvgIB73J', 'xtnb32@example.com', '31851.29', '71329.53', 'UCash', '2014-03-03', '2008-10-05 06:08:50', 'Approved'),
('V5IDUGPzbe', 'RLg2W9XG08', 'yrwzoaks@example.com', '77431.13', '118567.51', 'SureCash', '2001-08-29', '2008-01-11 10:59:59', 'Rejected'),
('V5IDUGPzbe', 'RLg7GGF0Ml', 'yrwzoaks@example.com', '74446.16', '58514.24', 'bKash', '2003-04-14', '2008-02-25 02:55:11', 'Pending'),
('V5IDUGPzbe', 'RLgBuKE3mG', 'mjsq37@example.com', '79015.27', '120592.01', 'Rocket', '2010-06-22', '2008-03-09 16:06:40', 'Rejected'),
('V5IDUGPzbe', 'RLgCaSN5DD', 'vpidu26@example.com', '29787.75', '51480.35', 'bKash', '2013-01-25', '2008-11-18 19:10:28', 'Rejected'),
('V5IDUGPzbe', 'RLgEmUBXgX', 'mjsq37@example.com', '72200.09', '99634.08', 'MCash', '2008-04-11', '2008-07-10 08:19:03', 'Rejected'),
('V5IDUGPzbe', 'RLgGoWmB0C', 'imefxh@example.com', '62007.62', '95000.51', 'Rocket', '2004-09-25', '2008-10-05 05:55:15', 'Pending'),
('V5IDUGPzbe', 'RLgITMF7Lt', 'imefxh@example.com', '80392.16', '50705.76', 'Rocket', '2004-02-19', '2008-09-19 07:36:56', 'Rejected'),
('V5IDUGPzbe', 'RLgNtdh8QY', 'mjsq37@example.com', '113722.01', '78090.38', 'MCash', '2011-08-24', '2008-10-10 17:15:43', 'Rejected'),
('V5IDUGPzbe', 'RLgvTWNf5N', 'vpidu26@example.com', '119406.55', '43747.18', 'UCash', '2012-08-23', '2008-05-09 08:02:21', 'Approved'),
('V5IDUGPzbe', 'RLgYyM3ISW', 'imefxh@example.com', '128878.46', '73690.23', 'UCash', '2007-03-30', '2008-06-13 12:48:07', 'Pending'),
('vIBFU4iA36', 'RLg2J8371d', 'mjsq37@example.com', '128192.90', '16868.48', 'Rocket', '2012-01-23', '2008-10-19 01:31:32', 'Pending'),
('vIBFU4iA36', 'RLg71wiBRc', 'imefxh@example.com', '148971.15', '116219.96', 'bKash', '2006-07-14', '2008-05-21 08:43:29', 'Pending'),
('vIBFU4iA36', 'RLg7FBHD8O', 'yrwzoaks@example.com', '105891.87', '85693.72', 'SureCash', '2003-05-26', '2008-02-25 01:16:46', 'Pending'),
('vIBFU4iA36', 'RLgAxcJeEJ', 'yrwzoaks@example.com', '59369.93', '44646.27', 'MCash', '2000-06-11', '2008-12-06 17:39:21', 'Pending'),
('vIBFU4iA36', 'RLgdBQ42W5', 'xtnb32@example.com', '113960.52', '64729.35', 'Rocket', '2016-11-16', '2008-02-29 01:49:04', 'Rejected'),
('vIBFU4iA36', 'RLgFBC9Nf1', 'imefxh@example.com', '91346.32', '113127.35', 'MCash', '2006-10-05', '2008-11-24 13:06:22', 'Approved'),
('vIBFU4iA36', 'RLghV3GnDe', 'xtnb32@example.com', '74755.61', '106502.76', 'MCash', '2019-05-06', '2008-05-04 22:06:03', 'Pending'),
('vIBFU4iA36', 'RLgIB2q8o0', 'xtnb32@example.com', '53778.58', '87177.07', 'Rocket', '2018-01-04', '2008-10-01 03:12:45', 'Rejected'),
('vIBFU4iA36', 'RLgNbc1QuC', 'yrwzoaks@example.com', '46923.17', '27091.98', 'Nagad', '2001-11-17', '2008-01-12 19:56:03', 'Pending'),
('vIBFU4iA36', 'RLgRYsR7JH', 'mjsq37@example.com', '17390.05', '96892.32', 'SureCash', '2010-10-05', '2008-09-13 11:46:48', 'Approved'),
('vIBFU4iA36', 'RLgwHm4PkE', 'yrwzoaks@example.com', '84853.68', '121647.51', 'Rocket', '2003-08-01', '2008-02-28 22:11:11', 'Pending'),
('vIBFU4iA36', 'RLgyIHHlnB', 'imefxh@example.com', '87316.93', '82335.27', 'Rocket', '2007-03-23', '2008-06-10 08:46:57', 'Pending'),
('W388ROMD2G', 'RLg2n1SSMu', 'mjsq37@example.com', '74087.04', '132434.69', 'MCash', '2002-08-13', '2008-06-17 06:59:37', 'Pending'),
('W388ROMD2G', 'RLgdHXF07x', 'yrwzoaks@example.com', '86992.96', '61995.60', 'Rocket', '2011-08-04', '2008-08-20 20:47:55', 'Pending'),
('W388ROMD2G', 'RLgeLL2DR7', 'mjsq37@example.com', '76245.11', '86305.73', 'bKash', '2001-01-20', '2008-11-03 02:19:08', 'Approved'),
('W388ROMD2G', 'RLgHRCkIyy', 'imefxh@example.com', '114752.29', '40968.21', 'Rocket', '2016-02-18', '2008-06-22 17:52:34', 'Pending'),
('W388ROMD2G', 'RLgIth4p8L', 'mjsq37@example.com', '76074.63', '49177.85', 'MCash', '2001-07-06', '2008-11-15 10:19:07', 'Pending'),
('W388ROMD2G', 'RLgk5XIXUD', 'imefxh@example.com', '65449.82', '62560.81', 'Rocket', '2017-11-11', '2008-08-10 08:51:27', 'Pending'),
('W388ROMD2G', 'RLgm3GeeQe', 'yrwzoaks@example.com', '110392.68', '41793.82', 'bKash', '2012-01-07', '2008-03-01 12:02:06', 'Pending'),
('W388ROMD2G', 'RLgP4Lqm7D', 'mjsq37@example.com', '58504.04', '53811.60', 'MCash', '2019-05-27', '2008-03-19 23:58:01', 'Approved'),
('W388ROMD2G', 'RLgr2OZxvV', 'mjsq37@example.com', '85147.52', '73670.48', 'Rocket', '2001-08-24', '2008-11-19 13:28:38', 'Pending'),
('W388ROMD2G', 'RLgWnvS3DS', 'imefxh@example.com', '15643.97', '49736.36', 'bKash', '2017-08-30', '2008-08-05 01:40:46', 'Rejected'),
('wVkJ6lPM2S', 'RLg97peE7S', 'vpidu26@example.com', '27180.33', '34408.87', 'UCash', '2000-11-23', '2008-05-22 18:51:17', 'Pending'),
('wVkJ6lPM2S', 'RLgBO8B4Dw', 'vpidu26@example.com', '102603.32', '52883.21', 'Upay', '2019-03-27', '2008-10-07 20:10:28', 'Rejected'),
('wVkJ6lPM2S', 'RLgDqH86u5', 'vpidu26@example.com', '36340.56', '149940.75', 'bKash', '2001-03-15', '2008-05-31 01:32:24', 'Pending'),
('wVkJ6lPM2S', 'RLgEduC1UK', 'xtnb32@example.com', '113924.52', '72871.05', 'Nagad', '2002-11-06', '2008-01-15 04:26:02', 'Pending'),
('wVkJ6lPM2S', 'RLgKvyIc1M', 'xtnb32@example.com', '61319.75', '79675.64', 'Nagad', '2002-10-20', '2008-07-13 03:24:26', 'Pending'),
('wVkJ6lPM2S', 'RLgMk0EZUf', 'mjsq37@example.com', '114322.78', '35413.68', 'Rocket', '2016-12-03', '2008-02-04 18:57:45', 'Approved'),
('wVkJ6lPM2S', 'RLgNWSJVIY', 'imefxh@example.com', '132169.27', '82583.25', 'Rocket', '2010-12-12', '2008-08-23 10:16:28', 'Pending'),
('wVkJ6lPM2S', 'RLgQHjG85E', 'imefxh@example.com', '72748.18', '110291.66', 'Nagad', '2012-04-07', '2008-09-27 18:05:45', 'Pending'),
('wVkJ6lPM2S', 'RLgqPJpXYO', 'xtnb32@example.com', '82603.61', '116614.17', 'bKash', '2003-06-29', '2008-08-01 23:46:16', 'Approved'),
('wVkJ6lPM2S', 'RLgTZsC84C', 'yrwzoaks@example.com', '22760.53', '74810.87', 'Rocket', '2007-12-17', '2008-06-04 17:55:12', 'Rejected'),
('wVkJ6lPM2S', 'RLgUNXIE42', 'imefxh@example.com', '51000.44', '36671.97', 'bKash', '2013-07-01', '2008-11-02 04:45:44', 'Approved'),
('wVkJ6lPM2S', 'RLgvcPivnC', 'vpidu26@example.com', '102844.96', '137562.41', 'UCash', '2000-06-20', '2008-05-11 18:34:47', 'Approved'),
('wVkJ6lPM2S', 'RLgvON14LP', 'xtnb32@example.com', '76793.63', '37857.03', 'MCash', '2005-03-29', '2008-03-21 15:05:13', 'Pending'),
('wVkJ6lPM2S', 'RLgWx53qkM', 'xtnb32@example.com', '70046.29', '144693.11', 'Rocket', '2002-07-24', '2008-07-08 00:59:30', 'Rejected'),
('wVkJ6lPM2S', 'RLgxsDXsNC', 'imefxh@example.com', '68064.43', '86633.54', 'MCash', '2014-01-24', '2008-05-18 07:26:28', 'Approved'),
('XNCTBKGYN2', 'RLg1KCQF0B', 'yrwzoaks@example.com', '134488.80', '62829.68', 'Rocket', '2009-11-13', '2008-04-07 17:53:07', 'Approved'),
('XNCTBKGYN2', 'RLg6CdY0MK', 'imefxh@example.com', '117858.95', '117296.61', 'Nagad', '2014-06-02', '2008-02-08 21:32:24', 'Approved'),
('XNCTBKGYN2', 'RLg6EXBJkK', 'mjsq37@example.com', '72074.65', '49258.73', 'bKash', '2018-08-28', '2008-12-05 16:07:23', 'Pending'),
('XNCTBKGYN2', 'RLg7gZYKQ4', 'vpidu26@example.com', '149120.64', '105743.88', 'MCash', '2003-05-27', '2008-10-11 00:56:21', 'Pending'),
('XNCTBKGYN2', 'RLgBKrVtPZ', 'imefxh@example.com', '103728.10', '63246.01', 'Upay', '2014-06-09', '2008-02-10 01:40:55', 'Approved'),
('XNCTBKGYN2', 'RLgHUO9LZo', 'yrwzoaks@example.com', '93094.74', '13303.07', 'MCash', '2012-04-13', '2008-06-12 18:15:14', 'Approved'),
('XNCTBKGYN2', 'RLgj9yR7LM', 'xtnb32@example.com', '52186.24', '48961.25', 'bKash', '2007-05-04', '2008-01-27 05:00:43', 'Rejected'),
('XNCTBKGYN2', 'RLgjEr6Coj', 'mjsq37@example.com', '126689.97', '15832.05', 'bKash', '2000-01-26', '2008-07-14 11:47:53', 'Pending'),
('XNCTBKGYN2', 'RLgP7vLlD6', 'mjsq37@example.com', '66303.58', '132548.32', 'SureCash', '2019-07-11', '2008-12-28 04:34:30', 'Approved'),
('XNCTBKGYN2', 'RLgrMC7EEk', 'mjsq37@example.com', '52262.66', '59675.61', 'Nagad', '2018-08-28', '2008-06-02 21:39:16', 'Pending'),
('XNCTBKGYN2', 'RLgy2Cxd26', 'xtnb32@example.com', '74193.49', '34230.03', 'Rocket', '2006-05-27', '2008-01-04 09:42:53', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `studio`
--

CREATE TABLE `studio` (
  `id` char(10) NOT NULL,
  `area` smallint(5) UNSIGNED NOT NULL,
  `length` smallint(5) UNSIGNED NOT NULL,
  `breadth` smallint(5) UNSIGNED NOT NULL,
  `separate_bedroom` tinyint(1) NOT NULL DEFAULT 0,
  `balcony` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studio`
--

INSERT INTO `studio` (`id`, `area`, `length`, `breadth`, `separate_bedroom`, `balcony`) VALUES
('06fHm22UeX', 4413, 166, 177, 0, 1),
('2Q6GB2tPHQ', 15163, 497, 249, 0, 1),
('56LxRD83Um', 11398, 126, 180, 0, 0),
('62TgNdPJLV', 8604, 242, 219, 1, 1),
('7HUhJ9Ap2P', 31563, 270, 205, 0, 1),
('7sY7S29wXa', 32265, 205, 181, 0, 0),
('gWMI5GYIL1', 7902, 101, 251, 0, 1),
('i55BtGJJRE', 21143, 271, 266, 0, 1),
('iRC3H66UPx', 5930, 130, 257, 1, 0),
('JOFH9TTM5C', 19502, 305, 185, 0, 1),
('JTQ37vPTFE', 19696, 261, 258, 0, 1),
('JVvABQPbK8', 16867, 128, 107, 0, 0),
('qPB53UUBgB', 23897, 416, 152, 0, 1),
('R5YE9UVyOR', 8669, 205, 294, 1, 0),
('RIyIKUb48G', 6237, 68, 233, 0, 1),
('RNKR4dUu6s', 16980, 335, 100, 0, 1),
('V5IDUGPzbe', 16460, 288, 259, 0, 0),
('vIBFU4iA36', 5614, 328, 155, 0, 1),
('W388ROMD2G', 19550, 410, 137, 0, 0),
('wVkJ6lPM2S', 18513, 228, 151, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile_no` char(11) NOT NULL,
  `document_id` char(17) NOT NULL,
  `joined_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `password`, `name`, `mobile_no`, `document_id`, `joined_on`) VALUES
('imefxh@example.com', '5HSFQHJH11O403271', 'Colleen Proctor', '01446566675', '67544186750933838', '2008-08-11 16:12:34'),
('mjsq37@example.com', 'WNS46E6X11L363837', 'Alice Velazquez', '01899478443', '5346094114', '2008-06-27 16:32:14'),
('vpidu26@example.com', 'WKA6S1EO14X138550', 'Latoya Spencer', '01668535487', '87234872546534164', '2008-09-24 02:53:10'),
('xtnb32@example.com', '3DX2849512D295923', 'Lakeisha Montes', '01565544656', '8555823168', '2008-02-02 01:15:41'),
('yrwzoaks@example.com', '4QALA8BS11P922064', 'Casey Leonard', '01466685397', '3457443781', '2008-03-05 09:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile_no` char(11) NOT NULL,
  `document_id` char(17) NOT NULL,
  `joined_on` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`email`, `password`, `name`, `mobile_no`, `document_id`, `joined_on`) VALUES
('imefxh@example.com', '5HSFQHJH11O403271', 'Colleen Proctor', '01446566675', '67544186750933838', '2008-08-11 16:12:34'),
('ippb@example.com', 'WJSG0VN618U843315', 'Howard Randall', '01775453539', '8272431678', '2008-06-17 18:46:39'),
('iuub@example.com', '2BSOXSQA18T358224', 'Vernon Rodgers', '01448845587', '55547963688438632', '2008-06-12 22:29:17'),
('mjsq37@example.com', 'WNS46E6X11L363837', 'Alice Velazquez', '01899478443', '5346094114', '2008-06-27 16:32:14'),
('oeyi2@example.com', 'WBX5YN6S11P352363', 'Bernard Wilkins', '01574453559', '6632767040', '2008-12-11 14:39:23'),
('pbkwri@example.com', 'WPX6OOFZ18V728725', 'Hector Dickson', '01583648675', '8625681632', '2008-10-29 04:18:17'),
('usyss.ywxa@example.com', '3BXH7N4814C516870', 'Mike Finley', '01854556476', '56122533020817271', '2008-06-05 05:41:00'),
('vpidu26@example.com', 'WKA6S1EO14X138550', 'Latoya Spencer', '01668535487', '87234872546534164', '2008-09-24 02:53:10'),
('xtnb32@example.com', '3DX2849512D295923', 'Lakeisha Montes', '01565544656', '8555823168', '2008-02-02 01:15:41'),
('yrwzoaks@example.com', '4QALA8BS11P922064', 'Casey Leonard', '01466685397', '3457443781', '2008-03-05 09:16:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `amenity`
--
ALTER TABLE `amenity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`),
  ADD KEY `application_fk0` (`property_id`),
  ADD KEY `application_fk1` (`user_email`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`,`log_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`,`ordinal_number`);

--
-- Indexes for table `lease_info`
--
ALTER TABLE `lease_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lease_log`
--
ALTER TABLE `lease_log`
  ADD PRIMARY KEY (`id`,`log_id`),
  ADD KEY `lease_log_fk1` (`user_email`);

--
-- Indexes for table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_fk0` (`vendor_email`);

--
-- Indexes for table `rent_info`
--
ALTER TABLE `rent_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rent_log`
--
ALTER TABLE `rent_log`
  ADD PRIMARY KEY (`id`,`log_id`),
  ADD KEY `rent_log_fk1` (`user_email`);

--
-- Indexes for table `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `mobile_no` (`mobile_no`),
  ADD UNIQUE KEY `document_id` (`document_id`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `mobile_no` (`mobile_no`),
  ADD UNIQUE KEY `document_id` (`document_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_fk0` FOREIGN KEY (`id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `amenity`
--
ALTER TABLE `amenity`
  ADD CONSTRAINT `amenity_fk0` FOREIGN KEY (`id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `apartment`
--
ALTER TABLE `apartment`
  ADD CONSTRAINT `apartment_fk0` FOREIGN KEY (`id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `application_fk0` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `application_fk1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `featured`
--
ALTER TABLE `featured`
  ADD CONSTRAINT `featured_fk0` FOREIGN KEY (`id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `gallery`
--
ALTER TABLE `gallery`
  ADD CONSTRAINT `gallery_fk0` FOREIGN KEY (`id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lease_info`
--
ALTER TABLE `lease_info`
  ADD CONSTRAINT `lease_fk0` FOREIGN KEY (`id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lease_log`
--
ALTER TABLE `lease_log`
  ADD CONSTRAINT `lease_log_fk0` FOREIGN KEY (`id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lease_log_fk1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `property_fk0` FOREIGN KEY (`vendor_email`) REFERENCES `vendor` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rent_info`
--
ALTER TABLE `rent_info`
  ADD CONSTRAINT `rent_fk0` FOREIGN KEY (`id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rent_log`
--
ALTER TABLE `rent_log`
  ADD CONSTRAINT `rent_log_fk0` FOREIGN KEY (`id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rent_log_fk1` FOREIGN KEY (`user_email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `studio`
--
ALTER TABLE `studio`
  ADD CONSTRAINT `studio_fk0` FOREIGN KEY (`id`) REFERENCES `property` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
