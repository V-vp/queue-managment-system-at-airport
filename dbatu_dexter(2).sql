-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2017 at 06:33 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbatu_dexter`
--

-- --------------------------------------------------------

--
-- Table structure for table `boarding_pass`
--

CREATE TABLE `boarding_pass` (
  `id` int(255) NOT NULL,
  `ticket_no` varchar(255) NOT NULL,
  `airline` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `departure` time(6) NOT NULL,
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `arrival` time(6) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boarding_pass`
--

INSERT INTO `boarding_pass` (`id`, `ticket_no`, `airline`, `full_name`, `departure`, `source`, `destination`, `arrival`, `date`) VALUES
(1, '1002748', 'JET AIRWAYS', 'RAM PRASAD', '10:15:00.000000', 'MUMBAI', 'DELHI', '11:20:00.000000', '2017-04-01'),
(2, '1003564', 'JET AIRWAYS', 'BARNEY STINSON', '12:00:00.000000', 'MUMBAI', 'DUBAI', '15:00:00.000000', '2017-04-02'),
(3, '1002573', 'JET AIRWAYS', 'PIYUSH KHANNA', '11:00:00.000000', 'BANGLORE', 'DELHI', '12:00:00.000000', '2017-04-02'),
(4, '1005284', 'JET AIRWAYS', 'SAURAV RAGHAV', '08:00:00.000000', 'DELHI', 'MUMBAI', '09:00:00.000000', '2017-04-02'),
(5, '1003487', 'JET AIRWAYS', 'PURNA KAMAT', '20:30:00.000000', 'MUMBAI', 'VARANASI', '23:30:00.000000', '2017-04-04'),
(6, '1001485', 'JET AIRWAYS', 'RUCHA CHAUDHARI', '07:45:00.000000', 'BANGLORE', 'GOA', '08:35:00.000000', '2017-04-02'),
(7, '2005431', 'SPICE JET', 'RAY PALMER', '12:42:00.000000', 'VARANASI', 'CHENNAI', '16:00:00.000000', '2017-04-02'),
(8, '2007541', 'SPICE JET', 'ASHVIN NAIR', '20:30:00.000000', 'MUMBAI', 'DUBAI', '01:00:00.000000', '2017-04-02'),
(9, '2007461', 'SPICE JET', 'SAMIKSHA SHINGE', '03:00:00.000000', 'CHENNAI', 'DUBAI', '14:00:00.000000', '2017-04-03'),
(10, '2007839', 'SPICE JET', 'TEJASVI SANKHE', '05:00:00.000000', 'DUBAI', 'LONDON', '12:00:00.000000', '2017-04-04'),
(11, '2004567', 'SPICE JET', 'SUMIT RAGHAV', '01:00:00.000000', 'MUMBAI', 'BANGLORE', '01:30:00.000000', '2017-04-01'),
(12, '2001049', 'SPICE JET', 'RAMESH YADAV', '08:30:00.000000', 'MUMBAI', 'KANPUR', '13:05:00.000000', '2017-04-02'),
(13, '3008651', 'GOAIR', 'MAHESH LOKHANDE', '07:00:00.000000', 'PUNE', 'NAGPUR', '09:00:00.000000', '2017-04-02'),
(14, '3001562', 'GOAIR', 'SANDEEP SHUKLA', '06:00:00.000000', 'SRINAGAR', 'LUCKNOW', '10:40:00.000000', '2017-04-02'),
(15, '3008715', 'GOAIR', 'OLIVER PARKER', '06:00:00.000000', 'GOA', 'AHMEDABAD', '07:17:00.000000', '2017-04-02'),
(16, '3001456', 'GOAIR', 'SHIVANI MISHRA', '09:00:00.000000', 'HYDERABAD', 'JAIPUR', '12:05:00.000000', '2017-04-02'),
(17, '3009162', 'GOAIR', 'SAMEER PATIL', '09:20:00.000000', 'PUNE', 'CHENNAI', '12:11:00.000000', '2017-04-02'),
(18, '3001657', 'GOAIR', 'IVY CHATTERJEE', '16:09:00.000000', 'NAGPUR', 'SILGIRI', '17:07:00.000000', '2017-04-02'),
(19, '4001335', 'EMIRATES', '', '14:19:00.000000', 'MUMBAI', 'ROME', '00:00:00.000000', '2017-04-02');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

CREATE TABLE `queue` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_no` varchar(255) NOT NULL,
  `airline` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `departure` time(6) NOT NULL,
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `arrival` time(6) NOT NULL,
  `date` date NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queue`
--

INSERT INTO `queue` (`id`, `ticket_no`, `airline`, `full_name`, `departure`, `source`, `destination`, `arrival`, `date`, `timestamp`) VALUES
(1, '2001049', 'SPICE JET', 'RAMESH YADAV', '08:30:00.000000', 'MUMBAI', 'KANPUR', '13:05:00.000000', '2017-04-02', '2017-04-02 04:15:23'),
(2, '3001562', 'GOAIR', 'SANDEEP SHUKLA', '06:00:00.000000', 'SRINAGAR', 'LUCKNOW', '10:40:00.000000', '2017-04-02', '2017-04-02 04:15:23'),
(3, '3001562', 'GOAIR', 'SANDEEP SHUKLA', '06:00:00.000000', 'SRINAGAR', 'LUCKNOW', '10:40:00.000000', '2017-04-02', '2017-04-02 04:13:45'),
(4, '3001562', 'GOAIR', 'SANDEEP SHUKLA', '06:00:00.000000', 'SRINAGAR', 'LUCKNOW', '10:40:00.000000', '2017-04-02', '2017-04-02 04:00:17'),
(5, '2007461', 'SPICE JET', 'SAMIKSHA SHINGE', '03:00:00.000000', 'CHENNAI', 'DUBAI', '14:00:00.000000', '2017-04-03', '2017-04-02 02:43:52'),
(6, '2007461', 'SPICE JET', 'SAMIKSHA SHINGE', '03:00:00.000000', 'CHENNAI', 'DUBAI', '14:00:00.000000', '2017-04-03', '2017-04-02 02:43:50'),
(7, '3008651', 'GOAIR', 'MAHESH LOKHANDE', '07:00:00.000000', 'PUNE', 'NAGPUR', '09:00:00.000000', '2017-04-02', '2017-04-02 02:43:26'),
(8, '2004567', 'SPICE JET', 'SUMIT RAGHAV', '01:00:00.000000', 'MUMBAI', 'BANGLORE', '01:30:00.000000', '2017-04-01', '2017-04-02 04:14:10');

-- --------------------------------------------------------

--
-- Table structure for table `queue_airasia_srilankan`
--

CREATE TABLE `queue_airasia_srilankan` (
  `id` int(255) NOT NULL,
  `ticket_no` varchar(255) NOT NULL,
  `airline` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `departure` time(6) NOT NULL,
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `arrival` time(6) NOT NULL,
  `date` date NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `queue_goair_emirates`
--

CREATE TABLE `queue_goair_emirates` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_no` varchar(255) NOT NULL,
  `airline` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `departure` time(6) NOT NULL,
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `arrival` time(6) NOT NULL,
  `date` date NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queue_goair_emirates`
--

INSERT INTO `queue_goair_emirates` (`id`, `ticket_no`, `airline`, `full_name`, `departure`, `source`, `destination`, `arrival`, `date`, `timestamp`) VALUES
(1, '3001456', 'GOAIR', 'SHIVANI MISHRA', '09:00:00.000000', 'HYDERABAD', 'JAIPUR', '12:05:00.000000', '2017-04-02', '2017-04-01 14:35:44'),
(2, '3001562', 'GOAIR', 'SANDEEP SHUKLA', '06:00:00.000000', 'SRINAGAR', 'LUCKNOW', '10:40:00.000000', '2017-04-02', '2017-04-01 17:18:29'),
(3, '4001335', 'EMIRATES', '', '14:19:00.000000', 'MUMBAI', 'ROME', '00:00:00.000000', '2017-04-02', '2017-04-01 17:26:02'),
(4, '4001335', 'EMIRATES', '', '14:19:00.000000', 'MUMBAI', 'ROME', '00:00:00.000000', '2017-04-02', '2017-04-01 17:29:52'),
(5, '3009162', 'GOAIR', 'SAMEER PATIL', '09:20:00.000000', 'PUNE', 'CHENNAI', '12:11:00.000000', '2017-04-02', '2017-04-01 17:29:57'),
(6, '3001456', 'GOAIR', 'SHIVANI MISHRA', '09:00:00.000000', 'HYDERABAD', 'JAIPUR', '12:05:00.000000', '2017-04-02', '2017-04-01 20:58:44'),
(7, '3001657', 'GOAIR', 'IVY CHATTERJEE', '16:09:00.000000', 'NAGPUR', 'SILGIRI', '17:07:00.000000', '2017-04-02', '2017-04-01 20:58:52'),
(8, '3001657', 'GOAIR', 'IVY CHATTERJEE', '16:09:00.000000', 'NAGPUR', 'SILGIRI', '17:07:00.000000', '2017-04-02', '2017-04-01 21:38:36'),
(9, '4001335', 'EMIRATES', '', '14:19:00.000000', 'MUMBAI', 'ROME', '00:00:00.000000', '2017-04-02', '2017-04-01 21:38:46'),
(10, '3008715', 'GOAIR', 'OLIVER PARKER', '06:00:00.000000', 'GOA', 'AHMEDABAD', '07:17:00.000000', '2017-04-02', '2017-04-01 21:39:39'),
(11, '4001335', 'EMIRATES', '', '14:19:00.000000', 'MUMBAI', 'ROME', '00:00:00.000000', '2017-04-02', '2017-04-01 21:47:15'),
(12, '3008651', 'GOAIR', 'MAHESH LOKHANDE', '07:00:00.000000', 'PUNE', 'NAGPUR', '09:00:00.000000', '2017-04-02', '2017-04-01 21:47:27'),
(13, '3001456', 'GOAIR', 'SHIVANI MISHRA', '09:00:00.000000', 'HYDERABAD', 'JAIPUR', '12:05:00.000000', '2017-04-02', '2017-04-01 22:15:58'),
(14, '3008651', 'GOAIR', 'MAHESH LOKHANDE', '07:00:00.000000', 'PUNE', 'NAGPUR', '09:00:00.000000', '2017-04-02', '2017-04-01 22:20:40'),
(15, '3001456', 'GOAIR', 'SHIVANI MISHRA', '09:00:00.000000', 'HYDERABAD', 'JAIPUR', '12:05:00.000000', '2017-04-02', '2017-04-01 22:20:49'),
(16, '4001335', 'EMIRATES', '', '14:19:00.000000', 'MUMBAI', 'ROME', '00:00:00.000000', '2017-04-02', '2017-04-01 22:22:09'),
(17, '3008715', 'GOAIR', 'OLIVER PARKER', '06:00:00.000000', 'GOA', 'AHMEDABAD', '07:17:00.000000', '2017-04-02', '2017-04-02 02:32:53'),
(18, '3001562', 'GOAIR', 'SANDEEP SHUKLA', '06:00:00.000000', 'SRINAGAR', 'LUCKNOW', '10:40:00.000000', '2017-04-02', '2017-04-02 02:33:00'),
(19, '3001456', 'GOAIR', 'SHIVANI MISHRA', '09:00:00.000000', 'HYDERABAD', 'JAIPUR', '12:05:00.000000', '2017-04-02', '2017-04-02 02:33:05'),
(20, '3008651', 'GOAIR', 'MAHESH LOKHANDE', '07:00:00.000000', 'PUNE', 'NAGPUR', '09:00:00.000000', '2017-04-02', '2017-04-02 02:33:11'),
(21, '3001657', 'GOAIR', 'IVY CHATTERJEE', '16:09:00.000000', 'NAGPUR', 'SILGIRI', '17:07:00.000000', '2017-04-02', '2017-04-02 03:21:58'),
(22, '3001657', 'GOAIR', 'IVY CHATTERJEE', '16:09:00.000000', 'NAGPUR', 'SILGIRI', '17:07:00.000000', '2017-04-02', '2017-04-02 03:32:40'),
(23, '3001657', 'GOAIR', 'IVY CHATTERJEE', '16:09:00.000000', 'NAGPUR', 'SILGIRI', '17:07:00.000000', '2017-04-02', '2017-04-02 03:41:49'),
(24, '3001562', 'GOAIR', 'SANDEEP SHUKLA', '06:00:00.000000', 'SRINAGAR', 'LUCKNOW', '10:40:00.000000', '2017-04-02', '2017-04-02 04:00:07'),
(25, '3001657', 'GOAIR', 'IVY CHATTERJEE', '16:09:00.000000', 'NAGPUR', 'SILGIRI', '17:07:00.000000', '2017-04-02', '2017-04-02 04:01:17'),
(26, '3001657', 'GOAIR', 'IVY CHATTERJEE', '16:09:00.000000', 'NAGPUR', 'SILGIRI', '17:07:00.000000', '2017-04-02', '2017-04-02 04:13:07'),
(27, '3001657', 'GOAIR', 'IVY CHATTERJEE', '16:09:00.000000', 'NAGPUR', 'SILGIRI', '17:07:00.000000', '2017-04-02', '2017-04-02 04:14:04'),
(28, '3001657', 'GOAIR', 'IVY CHATTERJEE', '16:09:00.000000', 'NAGPUR', 'SILGIRI', '17:07:00.000000', '2017-04-02', '2017-04-02 04:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `queue_hkdragon_airindia`
--

CREATE TABLE `queue_hkdragon_airindia` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_no` varchar(255) NOT NULL,
  `airline` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `departure` time(6) NOT NULL,
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `arrival` time(6) NOT NULL,
  `date` date NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queue_hkdragon_airindia`
--

INSERT INTO `queue_hkdragon_airindia` (`id`, `ticket_no`, `airline`, `full_name`, `departure`, `source`, `destination`, `arrival`, `date`, `timestamp`) VALUES
(1, '', '', '', '00:00:00.000000', '0', '0', '00:00:00.000000', '0000-00-00', '2017-04-01 01:53:17'),
(2, '', '', '', '00:00:00.000000', '', '', '00:00:00.000000', '0000-00-00', '2017-04-01 13:13:16'),
(3, '2005431', 'SPICE JET', 'RAY PALMER', '12:42:00.000000', 'VARANASI', 'CHENNAI', '16:00:00.000000', '2017-04-02', '2017-04-01 13:41:19'),
(4, '2004567', 'SPICE JET', 'SUMIT RAGHAV', '00:00:00.000000', 'MUMBAI', 'BANGLORE', '01:30:00.000000', '2017-04-01', '2017-04-01 13:56:22'),
(5, '2007461', 'SPICE JET', 'SAMIKSHA SHINGE', '03:00:00.000000', 'CHENNAI', 'DUBAI', '14:00:00.000000', '2017-04-03', '2017-04-01 17:18:17'),
(6, '2007541', 'SPICE JET', 'ASHVIN NAIR', '20:30:00.000000', 'MUMBAI', 'DUBAI', '01:00:00.000000', '2017-04-02', '2017-04-01 17:25:47'),
(7, '', '', '', '00:00:00.000000', '', '', '00:00:00.000000', '0000-00-00', '2017-04-01 17:25:54'),
(8, '2004567', 'SPICE JET', 'SUMIT RAGHAV', '01:00:00.000000', 'MUMBAI', 'BANGLORE', '01:30:00.000000', '2017-04-01', '2017-04-01 18:12:38'),
(9, '2004567', 'SPICE JET', 'SUMIT RAGHAV', '01:00:00.000000', 'MUMBAI', 'BANGLORE', '01:30:00.000000', '2017-04-01', '2017-04-01 20:57:24'),
(10, '2007839', 'SPICE JET', 'TEJASVI SANKHE', '05:00:00.000000', 'DUBAI', 'LONDON', '12:00:00.000000', '2017-04-04', '2017-04-01 20:57:32'),
(11, '2007461', 'SPICE JET', 'SAMIKSHA SHINGE', '03:00:00.000000', 'CHENNAI', 'DUBAI', '14:00:00.000000', '2017-04-03', '2017-04-01 20:58:29'),
(12, '2001049', 'SPICE JET', 'RAMESH YADAV', '08:30:00.000000', 'MUMBAI', 'KANPUR', '13:05:00.000000', '2017-04-02', '2017-04-01 20:58:39'),
(13, '2005431', 'SPICE JET', 'RAY PALMER', '12:42:00.000000', 'VARANASI', 'CHENNAI', '16:00:00.000000', '2017-04-02', '2017-04-01 20:59:06'),
(14, '2007461', 'SPICE JET', 'SAMIKSHA SHINGE', '03:00:00.000000', 'CHENNAI', 'DUBAI', '14:00:00.000000', '2017-04-03', '2017-04-01 21:39:35'),
(15, '2004567', 'SPICE JET', 'SUMIT RAGHAV', '01:00:00.000000', 'MUMBAI', 'BANGLORE', '01:30:00.000000', '2017-04-01', '2017-04-01 21:39:51'),
(16, '2007461', 'SPICE JET', 'SAMIKSHA SHINGE', '03:00:00.000000', 'CHENNAI', 'DUBAI', '14:00:00.000000', '2017-04-03', '2017-04-01 21:47:19'),
(17, '2007839', 'SPICE JET', 'TEJASVI SANKHE', '05:00:00.000000', 'DUBAI', 'LONDON', '12:00:00.000000', '2017-04-04', '2017-04-01 21:47:23'),
(18, '', '', '', '00:00:00.000000', '', '', '00:00:00.000000', '0000-00-00', '2017-04-01 21:47:30'),
(19, '2007839', 'SPICE JET', 'TEJASVI SANKHE', '05:00:00.000000', 'DUBAI', 'LONDON', '12:00:00.000000', '2017-04-04', '2017-04-01 22:22:03'),
(20, '', '', '', '00:00:00.000000', '', '', '00:00:00.000000', '0000-00-00', '2017-04-02 03:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `queue_jet_spice`
--

CREATE TABLE `queue_jet_spice` (
  `id` int(10) UNSIGNED NOT NULL,
  `ticket_no` varchar(255) NOT NULL,
  `airline` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `departure` time(6) NOT NULL,
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `arrival` time(6) NOT NULL,
  `date` date NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `queue_jet_spice`
--

INSERT INTO `queue_jet_spice` (`id`, `ticket_no`, `airline`, `full_name`, `departure`, `source`, `destination`, `arrival`, `date`, `timestamp`) VALUES
(1, '1003564', 'JET AIRWAYS', 'BARNEY STINSON', '12:00:00.000000', 'MUMBAI', 'DUBAI', '15:00:00.000000', '2017-04-02', '2017-04-01 11:48:09'),
(2, '1002748', 'JET AIRWAYS', 'RAM PRASAD', '10:15:00.000000', 'MUMBAI', 'DELHI', '11:20:00.000000', '2017-04-01', '2017-04-01 13:30:01'),
(3, '1003564', 'JET AIRWAYS', 'BARNEY STINSON', '12:00:00.000000', 'MUMBAI', 'DUBAI', '15:00:00.000000', '2017-04-02', '2017-04-01 13:41:14'),
(4, '1003487', 'JET AIRWAYS', 'PURNA KAMAT', '20:30:00.000000', 'MUMBAI', 'VARANASI', '23:30:00.000000', '2017-04-04', '2017-04-01 13:41:24'),
(5, '1002573', 'JET AIRWAYS', 'PIYUSH KHANNA', '11:00:00.000000', 'BANGLORE', 'DELHI', '12:00:00.000000', '2017-04-02', '2017-04-01 14:27:44'),
(6, '1002748', 'JET AIRWAYS', 'RAM PRASAD', '10:15:00.000000', 'MUMBAI', 'DELHI', '11:20:00.000000', '2017-04-01', '2017-04-01 14:28:25'),
(7, '1001485', 'JET AIRWAYS', 'RUCHA CHAUDHARI', '07:45:00.000000', 'BANGLORE', 'GOA', '08:35:00.000000', '2017-04-02', '2017-04-01 20:58:59'),
(8, '1002573', 'JET AIRWAYS', 'PIYUSH KHANNA', '11:00:00.000000', 'BANGLORE', 'DELHI', '12:00:00.000000', '2017-04-02', '2017-04-01 21:39:32'),
(9, '1001485', 'JET AIRWAYS', 'RUCHA CHAUDHARI', '07:45:00.000000', 'BANGLORE', 'GOA', '08:35:00.000000', '2017-04-02', '2017-04-01 21:39:43'),
(10, '1003487', 'JET AIRWAYS', 'PURNA KAMAT', '20:30:00.000000', 'MUMBAI', 'VARANASI', '23:30:00.000000', '2017-04-04', '2017-04-01 21:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `queue_vasco_qatarairways`
--

CREATE TABLE `queue_vasco_qatarairways` (
  `id` int(255) NOT NULL,
  `ticket_no` varchar(255) NOT NULL,
  `airline` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `departure` time(6) NOT NULL,
  `source` varchar(11) NOT NULL,
  `destination` varchar(11) NOT NULL,
  `arrival` time(6) NOT NULL,
  `date` date NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `boarding_pass`
--
ALTER TABLE `boarding_pass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queue`
--
ALTER TABLE `queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queue_airasia_srilankan`
--
ALTER TABLE `queue_airasia_srilankan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queue_goair_emirates`
--
ALTER TABLE `queue_goair_emirates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queue_hkdragon_airindia`
--
ALTER TABLE `queue_hkdragon_airindia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queue_jet_spice`
--
ALTER TABLE `queue_jet_spice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `queue_vasco_qatarairways`
--
ALTER TABLE `queue_vasco_qatarairways`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `boarding_pass`
--
ALTER TABLE `boarding_pass`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `queue`
--
ALTER TABLE `queue`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `queue_airasia_srilankan`
--
ALTER TABLE `queue_airasia_srilankan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `queue_goair_emirates`
--
ALTER TABLE `queue_goair_emirates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `queue_hkdragon_airindia`
--
ALTER TABLE `queue_hkdragon_airindia`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `queue_jet_spice`
--
ALTER TABLE `queue_jet_spice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `queue_vasco_qatarairways`
--
ALTER TABLE `queue_vasco_qatarairways`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
