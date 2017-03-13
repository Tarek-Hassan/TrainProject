-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 13, 2016 at 03:34 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `train project`
--
CREATE DATABASE `train project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `train project`;

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `price_ticket` float NOT NULL,
  `train_no` int(20) NOT NULL,
  `train_id` int(20) NOT NULL,
  `station_id` int(20) NOT NULL,
  KEY `train_id` (`train_id`),
  KEY `station_id` (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance`
--


-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `id` int(20) NOT NULL auto_increment,
  `departure_station` varchar(20) NOT NULL,
  `arrival_station` varchar(20) NOT NULL,
  `depature_time` time NOT NULL,
  `arrival_time` time NOT NULL,
  `class` varchar(20) character set ascii NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=127 ;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `departure_station`, `arrival_station`, `depature_time`, `arrival_time`, `class`) VALUES
(9, 'alexandria', 'damanhour', '02:20:00', '03:30:00', 'special'),
(10, 'alexandria', 'damanhour', '03:15:00', '04:15:00', 'special'),
(11, 'alexandria', 'damanhour', '05:25:00', '06:37:00', 'special'),
(12, 'alexandria', 'damanhour', '06:00:00', '06:58:00', 'AC'),
(13, 'alexandria', 'damanhour', '08:15:00', '09:12:00', 'AC'),
(14, 'alexandria', 'damanhour', '15:30:00', '16:30:00', 'AC'),
(15, 'alexandria', 'damanhour', '07:35:00', '08:42:00', 'express'),
(16, 'alexandria', 'tanta', '02:20:00', '04:29:00', 'special'),
(17, 'alexandria', 'tanta', '03:15:00', '05:07:00', 'special'),
(18, 'alexandria', 'tanta', '14:30:00', '16:52:00', 'special'),
(19, 'alexandria', 'tanta', '06:00:00', '07:53:00', 'AC'),
(20, 'alexandria', 'tanta', '12:00:00', '13:27:00', 'AC'),
(21, 'alexandria', 'tanta', '13:00:00', '14:55:00', 'AC'),
(22, 'alexandria', 'tanta', '20:15:00', '22:25:00', 'special'),
(24, 'alexandria', 'zagazig', '04:30:00', '08:10:00', 'AC/special'),
(25, 'alexandria', 'zagazig', '16:10:00', '19:40:00', 'AC/special'),
(26, 'alexandria', 'Ismailiya', '04:30:00', '09:50:00', 'AC/special'),
(27, 'alexandria', 'Ismailiya', '16:10:00', '21:05:00', 'AC/special'),
(28, 'alexandria', 'port said', '04:30:00', '11:10:00', 'AC/special'),
(29, 'alexandria', 'port said', '16:10:00', '22:25:00', 'AC/special'),
(30, 'damanhour', 'alexandria', '00:20:00', '01:20:00', 'AC'),
(31, 'damanhour', 'alexandria', '05:19:00', '06:30:00', 'special'),
(32, 'damanhour', 'alexandria', '08:12:00', '09:15:00', 'AC'),
(33, 'damanhour', 'alexandria', '13:49:00', '14:45:00', 'AC'),
(34, 'damanhour', 'alexandria', '16:19:00', '17:20:00', 'AC'),
(35, 'damanhour', 'alexandria', '20:12:00', '21:15:00', 'special'),
(36, 'damanhour', 'alexandria', '22:14:00', '23:15:00', 'AC'),
(37, 'damanhour', 'tanta', '03:30:00', '04:29:00', 'special'),
(38, 'damanhour', 'tanta', '04:15:00', '05:07:00', 'special'),
(39, 'damanhour', 'tanta', '05:00:00', '08:00:00', 'express'),
(40, 'damanhour', 'tanta', '14:10:00', '17:15:00', 'express'),
(50, 'damanhour', 'tanta', '09:12:00', '10:02:00', 'AC'),
(51, 'damanhour', 'tanta', '10:57:00', '11:42:00', 'AC'),
(52, 'damanhour', 'tanta', '16:30:00', '17:19:00', 'AC'),
(53, 'damanhour', 'zagazig', '05:40:00', '08:10:00', 'AC/special'),
(54, 'damanhour', 'zagazig', '17:20:00', '19:40:00', 'AC/special'),
(55, 'damanhour', 'Ismailiya', '05:40:00', '09:50:00', 'AC/special'),
(56, 'damanhour', 'Ismailiya', '17:20:00', '21:05:00', 'AC/special'),
(57, 'damanhour', 'port said', '05:40:00', '11:10:00', 'AC/special'),
(58, 'damanhour', 'port said', '17:20:00', '22:25:00', 'AC/special'),
(59, 'tanta', 'alexandria', '04:21:00', '06:30:00', 'special'),
(60, 'tanta', 'alexandria', '05:05:00', '06:50:00', 'special'),
(61, 'tanta', 'alexandria', '07:17:00', '09:15:00', 'AC'),
(62, 'tanta', 'alexandria', '12:00:00', '13:40:00', 'AC'),
(63, 'tanta', 'alexandria', '13:45:00', '15:40:00', 'developed'),
(64, 'tanta', 'alexandria', '22:13:00', '00:20:00', 'special'),
(65, 'tanta', 'damanhour', '04:21:00', '05:19:00', 'special'),
(66, 'tanta', 'damanhour', '05:05:00', '05:50:00', 'special'),
(67, 'tanta', 'damanhour', '07:17:00', '08:12:00', 'AC'),
(68, 'tanta', 'damanhour', '11:05:00', '11:50:00', 'AC'),
(69, 'tanta', 'damanhour', '08:10:00', '10:50:00', 'express'),
(70, 'tanta', 'damanhour', '15:40:00', '18:45:00', 'express'),
(71, 'tanta', 'zagazig', '05:40:00', '07:25:00', 'express'),
(72, 'tanta', 'zagazig', '07:40:00', '09:25:00', 'express'),
(73, 'tanta', 'zagazig', '16:50:00', '18:25:00', 'express'),
(74, 'tanta', 'zagazig', '21:15:00', '23:00:00', 'express'),
(75, 'tanta', 'Ismailiya', '06:35:00', '09:50:00', 'AC/special'),
(76, 'tanta', 'Ismailiya', '18:14:00', '21:05:00', 'AC/special'),
(77, 'tanta', 'port said', '06:35:00', '11:10:00', 'AC/express'),
(78, 'tanta', 'port said', '18:14:00', '22:25:00', 'AC/express'),
(79, 'zagazig', 'alexandria', '10:00:00', '13:25:00', 'AC/special'),
(80, 'zagazig', 'alexandria', '21:02:00', '00:45:00', 'AC/special'),
(81, 'zagazig', 'damanhour', '10:00:00', '12:22:00', 'AC/special'),
(82, 'zagazig', 'damanhour', '21:02:00', '23:35:00', 'AC/special'),
(83, 'zagazig', 'tanta', '11:05:00', '19:58:00', 'special'),
(84, 'zagazig', 'tanta', '12:15:00', '20:58:00', 'AC/special'),
(85, 'zagazig', 'Ismailiya', '07:32:00', '08:55:00', 'AC/special'),
(86, 'zagazig', 'Ismailiya', '08:10:00', '09:50:00', 'AC/special'),
(87, 'zagazig', 'Ismailiya', '10:01:00', '11:21:00', 'special'),
(88, 'zagazig', 'Ismailiya', '13:02:00', '14:30:00', 'special'),
(89, 'zagazig', 'Ismailiya', '14:17:00', '15:45:00', 'AC/specail'),
(90, 'zagazig', 'Ismailiya', '16:12:00', '17:36:00', 'AC/special'),
(91, 'zagazig', 'Ismailiya', '19:40:00', '21:05:00', 'AC/special'),
(92, 'zagazig', 'Ismailiya', '21:20:00', '22:40:00', 'AC/special'),
(93, 'zagazig', 'Ismailiya', '22:03:00', '23:30:00', 'special'),
(94, 'zagazig', 'Ismailiya', '23:30:00', '01:00:00', 'AC/special'),
(95, 'zagazig', 'port said ', '07:32:00', '10:30:00', 'AC/special'),
(96, 'zagazig', 'port said ', '08:10:00', '11:10:00', 'AC/special'),
(97, 'zagazig', 'port said ', '10:01:00', '12:30:00', 'special'),
(98, 'zagazig', 'port said ', '13:02:00', '15:45:00', 'special'),
(99, 'zagazig', 'port said ', '19:40:00', '22:25:00', 'AC/special'),
(100, 'Ismailiya', 'alexandria', '08:40:00', '13:25:00', 'AC/special'),
(101, 'Ismailiya', 'alexandria', '19:30:00', '00:45:00', 'AC/special'),
(102, 'Ismailiya', 'damanhour', '08:40:00', '12:22:00', 'AC/special'),
(103, 'Ismailiya', 'damanhour', '19:30:00', '23:35:00', 'AC/special'),
(104, 'Ismailiya', 'tanta', '08:40:00', '11:27:00', 'AC/special'),
(105, 'Ismailiya', 'tanta', '19:30:00', '22:40:00', 'AC/special'),
(106, 'Ismailiya', 'zagazig', '05:00:00', '06:20:00', 'AC/special'),
(107, 'Ismailiya', 'zagazig', '06:10:00', '07:30:00', 'special'),
(108, 'Ismailiya', 'zagazig', '06:45:00', '08:15:00', 'AC/special'),
(109, 'Ismailiya', 'zagazig', '08:40:00', '10:00:00', 'AC/special'),
(110, 'Ismailiya', 'zagazig', '09:35:00', '11:05:00', 'special'),
(111, 'Ismailiya', 'zagazig', '11:00:00', '12:15:00', 'AC/special'),
(112, 'Ismailiya', 'zagazig', '12:45:00', '14:05:00', 'AC/special'),
(113, 'Ismailiya', 'zagazig', '16:25:00', '17:46:00', 'AC/special'),
(114, 'Ismailiya', 'zagazig', '17:15:00', '19:00:00', 'express'),
(115, 'Ismailiya', 'zagazig', '18:43:00', '20:05:00', 'AC/special'),
(116, 'Ismailiya', 'zagazig', '20:45:00', '22:10:00', 'special'),
(117, 'Ismailiya', 'port said ', '05:35:00', '07:20:00', 'express'),
(118, 'Ismailiya', 'port said ', '07:30:00', '09:10:00', 'express'),
(119, 'Ismailiya', 'port said ', '08:55:00', '10:30:00', 'AC/special'),
(120, 'Ismailiya', 'port said ', '09:50:00', '11:10:00', 'AC/special'),
(121, 'Ismailiya', 'port said ', '11:21:00', '12:30:00', 'special'),
(122, 'Ismailiya', 'port said ', '14:30:00', '15:45:00', 'special'),
(123, 'Ismailiya', 'port said ', '16:00:00', '17:30:00', 'express'),
(124, 'Ismailiya', 'port said', '17:36:00', '19:05:00', 'AC/special'),
(125, 'Ismailiya', 'port said ', '21:05:00', '22:25:00', 'AC/special'),
(126, 'Ismailiya', 'port said ', '22:40:00', '23:55:00', 'AC/special');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `id` int(20) NOT NULL auto_increment,
  `train_no` int(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `train`
--


--
-- Constraints for dumped tables
--

--
-- Constraints for table `finance`
--
ALTER TABLE `finance`
  ADD CONSTRAINT `finance_ibfk_1` FOREIGN KEY (`train_id`) REFERENCES `train` (`id`),
  ADD CONSTRAINT `finance_ibfk_2` FOREIGN KEY (`station_id`) REFERENCES `station` (`id`);
