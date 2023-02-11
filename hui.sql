-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 05, 2022 at 06:28 AM
-- Server version: 5.7.34-log
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql_catstresser_`
--

-- --------------------------------------------------------

--
-- Table structure for table `2authsettings`
--

CREATE TABLE `2authsettings` (
  `secret` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `actions`
--

CREATE TABLE `actions` (
  `id` int(64) NOT NULL,
  `admin` varchar(64) NOT NULL,
  `client` varchar(64) NOT NULL,
  `action` varchar(6444) NOT NULL,
  `date` int(21) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actions`
--

INSERT INTO `actions` (`id`, `admin`, `client`, `action`, `date`) VALUES
(14, 'ElKap', 'SakuMai', 'User updated to plan: Admin', 1644000069),
(15, 'ElKap', 'ElKap', 'Users expire updated from 0 to 01-01-1970', 1644000087),
(16, 'ElKap', 'ElKap', 'User rank updated from 404505500 to 1', 1644000142),
(17, 'ElKap', 'ElKap', 'User rank updated from 404505500 to 0', 1644000169),
(18, 'ElKap', 'ElKap', 'User rank updated from 404505500 to 1', 1644000216),
(19, 'ElKap', 'ElKap', 'User updated to plan: Admin', 1644000298),
(20, 'ElKap', 'ElKap', 'User updated to plan: Admin', 1644000300),
(21, 'ElKap', 'ElKap', 'User rank updated from 14881337 to 1', 1644000357),
(22, 'ElKap', 'ElKap', 'User rank updated from 404505500 to 1', 1644000517),
(23, 'ElKap', 'ElKap', 'User rank updated from 404505500 to 1', 1644000601),
(24, 'Serial', 'Serial', 'Users expire updated from 0 to 01-01-1970', 1644001544),
(25, 'Serial', 'Serial', 'User rank updated from 333 to 1', 1644001597),
(26, 'Serial', 'Serial', 'User rank updated from 333 to 1', 1644001636),
(27, 'Serial', 'Serial', 'User rank updated from 333 to 1', 1644001721),
(28, 'Serial', 'Serial', 'User updated to plan: Admin', 1644001770),
(29, 'Serial', 'SakuMai', 'User updated to plan: Admin', 1644001800),
(30, 'Serial', 'Serial', 'User rank updated from 1 to 333', 1644001852),
(31, 'Serial', 'Serial', 'User updated to plan: Admin', 1644001886),
(32, 'Serial', 'Serial', 'User updated to plan: Admin', 1644001888),
(33, 'Serial', 'Serial', 'User updated to plan: Admin', 1644001891),
(34, 'Serial', 'Serial', 'User updated to plan: Admin', 1644001903),
(35, 'Serial', 'Serial', 'User updated to plan: Admin', 1644001906),
(36, 'Serial', 'Serial', 'User updated to plan: Admin', 1644001983),
(37, 'Serial', 'Serial', 'User updated to plan: Admin', 1644001986),
(38, 'Serial', 'Serial', 'User updated to plan: Admin', 1644001993),
(39, 'Serial', 'Serial', 'User updated to plan: STAFF', 1644002000),
(40, 'Serial', 'Serial', 'Users expire updated from 2022693200 to 05-02-2034', 1644002016),
(41, 'Serial', 'SakuMai', 'User updated to plan: STAFF', 1644002023),
(42, 'Serial', 'Serial', 'User updated to plan: ALLAHI', 1644002083),
(43, 'Serial', 'Serial', 'User updated to plan: ALLAHI', 1644002089),
(44, 'Serial', 'SakuMai', 'User updated to plan: ALLAHI', 1644002098),
(45, 'Serial', 'xlpq', 'User updated to plan: CAT', 1644007877),
(46, 'Serial', 'xlpq', 'User updated to plan: Non', 1644008388),
(47, 'Serial', 'xlpq', 'User updated to plan: PRO', 1644008639),
(48, 'Serial', 'SakuMai', 'User rank updated from 333 to 1', 1644009982);

-- --------------------------------------------------------

--
-- Table structure for table `affiliateWithdraws`
--

CREATE TABLE `affiliateWithdraws` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `withdrawAmount` varchar(255) NOT NULL,
  `paymentMethod` varchar(255) NOT NULL,
  `paymentAddress` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE `api` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `api` varchar(1024) NOT NULL,
  `slots` int(3) NOT NULL,
  `methods` varchar(100) NOT NULL,
  `vip` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `api`
--

INSERT INTO `api` (`id`, `name`, `api`, `slots`, `methods`, `vip`) VALUES
(62, 'L4', 'http://217.114.43.106/stresserapp3821838123721hjasjfjsafusajfasjhf.php?host=[host]&port=[port]&time=[time]&method=[method]', 10, 'TCPKILL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `username` varchar(15) NOT NULL,
  `reason` varchar(1024) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `blacklist`
--

CREATE TABLE `blacklist` (
  `ID` int(11) NOT NULL,
  `data` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(3) NOT NULL,
  `question` varchar(1024) NOT NULL,
  `answer` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fe`
--

CREATE TABLE `fe` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `type` varchar(1) NOT NULL,
  `ip` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `giftcards`
--

CREATE TABLE `giftcards` (
  `ID` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `planID` int(11) NOT NULL,
  `claimedby` int(11) NOT NULL,
  `dateClaimed` int(11) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `giftcards`
--

INSERT INTO `giftcards` (`ID`, `code`, `planID`, `claimedby`, `dateClaimed`, `date`) VALUES
(58, 'ctizhrj383', 51, 148, 1644002182, 1644002104),
(59, 'aamnp9vcp2', 43, 0, 0, 1644002107),
(60, 'tkc6xd36h2', 51, 0, 0, 1644002114),
(61, 'dc3mn20xoh', 55, 147, 1644002136, 1644002121),
(62, 'bf1l0ob0is', 55, 144, 1644002136, 1644002127);

-- --------------------------------------------------------

--
-- Table structure for table `iplogs`
--

CREATE TABLE `iplogs` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `logged` varchar(15) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `loginlogs`
--

CREATE TABLE `loginlogs` (
  `username` varchar(15) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `date` int(11) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginlogs`
--

INSERT INTO `loginlogs` (`username`, `ip`, `date`, `country`) VALUES
('flotsam', '146.70.52.76', 1644001242, 'United Kingdom'),
('Serial', '146.70.52.76', 1644001365, 'United Kingdom'),
('SakuMai', '178.155.4.127', 1644001779, 'Russia'),
('2222', '178.155.4.127', 1644002172, 'Russia'),
('SakuMai', '178.155.4.127', 1644002460, 'Russia'),
(' - failed', '95.37.58.25', 1644007602, 'XX'),
(' - failed login', '95.37.58.25', 1644007602, 'XX'),
('foxodever', '95.37.58.25', 1644007620, 'Russia'),
('xlpq', '185.220.70.84', 1644007698, 'Germany'),
('Nekksi', '85.249.19.66', 1644008992, 'Russia'),
('xlpq', '185.102.219.48', 1644013304, 'Germany');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user` varchar(15) NOT NULL,
  `ip` varchar(1024) NOT NULL,
  `time` int(4) NOT NULL,
  `method` varchar(10) NOT NULL,
  `postdata` varchar(10) NOT NULL,
  `mode` varchar(20) NOT NULL,
  `ratelimit` varchar(10) NOT NULL,
  `cookie` varchar(10) NOT NULL,
  `date` int(11) NOT NULL,
  `chart` varchar(255) NOT NULL,
  `stopped` int(1) NOT NULL DEFAULT '0',
  `handler` varchar(1000) NOT NULL,
  `origin` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user`, `ip`, `time`, `method`, `postdata`, `mode`, `ratelimit`, `cookie`, `date`, `chart`, `stopped`, `handler`, `origin`) VALUES
(9072, 'Serial', 'https://top-cfg.ru/', 60, 'TLSv2', 'undefined', 'undefined', 'GET', 'undefined', 1644003823, '05-02', 1, 'L72', 'undefined'),
(9073, 'Serial', 'https://top-cfg.ru/', 1500, 'TLSv2', 'undefined', 'undefined', 'GET', 'undefined', 1644003859, '05-02', 1, 'L72', 'undefined'),
(9074, 'Serial', 'https://top-cfg.ru/', 480, 'TLSv2', 'undefined', 'undefined', 'GET', 'undefined', 1644003869, '05-02', 1, 'L72', 'undefined'),
(9075, 'Serial', '43.77.22.66', 60, 'NTP', '', '', '', '', 1644003932, '05-02', 1, 'L4', ''),
(9076, 'Serial', 'https://top-cfg.ru/', 60, 'TLSv2', 'undefined', 'undefined', 'GET', 'undefined', 1644004804, '05-02', 1, 'L72', 'undefined'),
(9077, 'Serial', 'https://top-cfg.ru/', 60, 'TLSv2', 'undefined', 'undefined', 'GET', 'undefined', 1644005088, '05-02', 1, 'L72', 'undefined'),
(9078, 'Serial', 'https://top-cfg.ru/', 60, 'TLSv2', 'undefined', 'undefined', 'GET', 'undefined', 1644005361, '05-02', 0, 'L72', 'undefined'),
(9079, 'Serial', 'https://top-cfg.ru/', 60, 'TLSv2', 'undefined', 'undefined', 'GET', 'undefined', 1644005439, '05-02', 1, 'L72', 'undefined'),
(9080, 'Serial', '44.77.22.13', 60, 'NTP', '', '', '', '', 1644005463, '05-02', 1, 'L4', ''),
(9081, 'Serial', '44.77.22.13', 60, 'NTP', '', '', '', '', 1644005472, '05-02', 1, 'L4', ''),
(9082, 'Serial', 'https://top-cfg.ru/', 60, 'TLSv2', 'undefined', 'undefined', 'GET', 'undefined', 1644005921, '05-02', 1, 'L72', 'undefined'),
(9083, 'Serial', 'https://top-cfg.ru/', 60, 'TLSv2', 'undefined', 'undefined', 'GET', 'undefined', 1644005935, '05-02', 1, 'L72', 'undefined'),
(9084, 'Serial', '4.2.2.2', 480, 'TCPKILL', '', '', '', '', 1644006172, '05-02', 1, 'L4', ''),
(9085, 'Serial', '4.2.2.2', 480, 'TCPKILL', '', '', '', '', 1644006175, '05-02', 1, 'L4', ''),
(9086, 'Serial', '4.2.2.2', 480, 'TCPKILL', '', '', '', '', 1644006178, '05-02', 1, 'L4', ''),
(9087, 'Serial', '4.2.2.2', 480, 'TCPKILL', '', '', '', '', 1644006181, '05-02', 1, 'L4', ''),
(9088, 'Serial', '4.2.2.2', 60, 'TCPKILL', '', '', '', '', 1644007263, '05-02', 1, 'L4', ''),
(9089, 'Serial', '4.2.2.2', 60, 'TCPKILL', '', '', '', '', 1644007296, '05-02', 1, 'L4', ''),
(9090, 'Serial', '4.2.2.2', 840, 'TCPKILL', '', '', '', '', 1644007312, '05-02', 1, 'L4', ''),
(9091, 'Serial', '143.22.61.53', 840, 'TCPKILL', '', '', '', '', 1644007344, '05-02', 1, 'L4', ''),
(9092, 'Serial', '143.22.61.53', 840, 'TCPKILL', '', '', '', '', 1644007397, '05-02', 1, 'L4', ''),
(9093, 'xlpq', '108.61.96.28', 120, 'TCPKILL', '', '', '', '', 1644008202, '05-02', 1, 'L4', ''),
(9094, 'Serial', '4.2.2.2', 180, 'TCPKILL', '', '', '', '', 1644008497, '05-02', 1, 'L4', ''),
(9095, 'Serial', '108.61.96.28', 180, 'TCPKILL', '', '', '', '', 1644008517, '05-02', 1, 'L4', ''),
(9096, 'xlpq', '89.187.181.130', 960, 'TCPKILL', '', '', '', '', 1644008771, '05-02', 1, 'L4', ''),
(9097, 'xlpq', '38.27.122.110', 960, 'TCPKILL', '', '', '', '', 1644008828, '05-02', 1, 'L4', ''),
(9098, 'xlpq', '23.227.134.122', 240, 'TCPKILL', '', '', '', '', 1644009029, '05-02', 1, 'L4', ''),
(9099, 'xlpq', '23.227.134.122', 240, 'TCPKILL', '', '', '', '', 1644009033, '05-02', 1, 'L4', ''),
(9100, 'xlpq', '51.15.25.108', 960, 'TCPKILL', '', '', '', '', 1644009147, '05-02', 1, 'L4', ''),
(9101, 'xlpq', '51.15.25.108', 960, 'TCPKILL', '', '', '', '', 1644009178, '05-02', 1, 'L4', ''),
(9102, 'xlpq', '51.15.25.108', 300, 'TCPKILL', '', '', '', '', 1644009876, '05-02', 1, 'L4', ''),
(9103, 'xlpq', '51.15.25.108', 300, 'TCPKILL', '', '', '', '', 1644009881, '05-02', 1, 'L4', ''),
(9104, 'xlpq', '172.67.162.81', 300, 'TCPKILL', '', '', '', '', 1644010166, '05-02', 1, 'L4', ''),
(9105, 'Serial', '51.15.25.108', 480, 'TCPKILL', '', '', '', '', 1644010178, '05-02', 1, 'L4', ''),
(9106, 'xlpq', '95.90.230.35', 60, 'TCPKILL', '', '', '', '', 1644010301, '05-02', 1, 'L4', ''),
(9107, 'Serial', '51.15.25.108', 1500, 'TCPKILL', '', '', '', '', 1644010679, '05-02', 1, 'L4', ''),
(9108, 'Serial', '51.15.25.108', 60, 'TCPKILL', '', '', '', '', 1644010801, '05-02', 1, 'L4', ''),
(9109, 'SakuMai', '51.15.25.108', 86400, 'TCPKILL', '', '', '', '', 1644010849, '05-02', 1, 'L4', ''),
(9110, 'SakuMai', '51.15.25.108', 9840, 'TCPKILL', '', '', '', '', 1644010904, '05-02', 0, 'L4', ''),
(9111, 'SakuMai', '51.15.25.108', 1500, 'TCPKILL', '', '', '', '', 1644010925, '05-02', 0, 'L4', ''),
(9112, 'SakuMai', '51.15.25.108', 1500, 'TCPKILL', '', '', '', '', 1644010946, '05-02', 0, 'L4', ''),
(9113, 'xlpq', '8.26.94.147', 60, 'TCPKILL', '', '', '', '', 1644011389, '05-02', 1, 'L4', ''),
(9114, 'xlpq', '38.91.59.18', 60, 'TCPKILL', '', '', '', '', 1644011594, '05-02', 0, 'L4', ''),
(9115, 'Serial', '143.22.53.11', 60, 'TCPKILL', '', '', '', '', 1644012641, '05-02', 1, 'L4', ''),
(9116, 'xlpq', '80.150.6.143', 960, 'TCPKILL', '', '', '', '', 1644012684, '05-02', 1, 'L4', ''),
(9117, 'xlpq', '80.150.6.143', 960, 'TCPKILL', '', '', '', '', 1644013332, '05-02', 1, 'L4', ''),
(9118, 'xlpq', '185.117.0.99', 960, 'TCPKILL', '', '', '', '', 1644013566, '05-02', 0, 'L4', ''),
(9119, 'xlpq', '185.117.0.99', 960, 'TCPKILL', '', '', '', '', 1644013576, '05-02', 0, 'L4', '');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messageid` int(11) NOT NULL,
  `ticketid` int(11) NOT NULL,
  `content` text NOT NULL,
  `sender` varchar(30) NOT NULL,
  `date` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageid`, `ticketid`, `content`, `sender`, `date`) VALUES
(1, 1, 'Hello!', 'Admin', 1642257986),
(2, 1, '21321', 'Client', 1642268193),
(3, 1, '342432', 'Admin', 1642268210),
(4, 1, '342432', 'Admin', 1642268212),
(5, 1, '342432', 'Admin', 1642268212),
(6, 1, '342432', 'Admin', 1642268212),
(7, 1, '342432', 'Admin', 1642268212),
(8, 1, '342432', 'Admin', 1642268213),
(9, 2, 'No', 'Admin', 1642345622),
(10, 3, 'sex', 'Admin', 1642345635),
(11, 7, '5345', 'Admin', 1642850631),
(12, 7, '534543555555555555', 'Admin', 1642850633),
(13, 7, '534543555555555555', 'Admin', 1642850634),
(14, 7, '534543555555555555', 'Admin', 1642850634),
(15, 7, '534543555555555555', 'Admin', 1642850635),
(16, 7, '534543555555555555', 'Admin', 1642850636);

-- --------------------------------------------------------

--
-- Table structure for table `methods`
--

CREATE TABLE `methods` (
  `id` int(2) NOT NULL,
  `name` varchar(30) NOT NULL,
  `fullname` varchar(20) NOT NULL,
  `type` varchar(6) NOT NULL,
  `command` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `methods`
--

INSERT INTO `methods` (`id`, `name`, `fullname`, `type`, `command`) VALUES
(80, 'TCPKILL', 'TCP-KILL', 'layer4', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `ID` int(11) NOT NULL,
  `title` varchar(1024) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `date` varchar(55) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`ID`, `title`, `content`, `date`) VALUES
(4, 'News #1', 'The hub was updated and divided into L4 and L7. L4 servers were added.\r\n</br> Also, the L7 hub is maineteance!\r\nHope you enjoy! Good day to you!', '');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `ID` int(11) NOT NULL,
  `paid` float NOT NULL,
  `plan` int(11) NOT NULL,
  `user` int(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `tid` varchar(30) NOT NULL,
  `date` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ping_sessions`
--

CREATE TABLE `ping_sessions` (
  `ID` int(11) NOT NULL,
  `ping_key` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ping_ip` varchar(25) NOT NULL,
  `ping_port` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ping_sessions`
--

INSERT INTO `ping_sessions` (`ID`, `ping_key`, `user_id`, `ping_ip`, `ping_port`) VALUES
(1516, 'cce2851d97c37ab44cc6d72541c18463', 147, 'https://vkutils.ru', '80'),
(1517, '95a2516ef39cd1981d5ddc311dde30e9', 147, 'https://vkutils.ru', '80'),
(1518, 'fca4f89dd2b13c8105a556667fbd7a21', 147, 'https://top-cfg.ru/', '80'),
(1519, 'f8d54781135e148d77299ad9ca3389fd', 147, 'https://swimuniverse.ru/', '80'),
(1520, 'd7db522b777fb6be57ad4b77575195a5', 147, 'https://top-cfg.ru/', '80'),
(1521, '02898490b41549c6679f035e25d673fb', 147, 'https://top-cfg.ru/', '80'),
(1522, 'b4724f074768acd8684e9eb021c87897', 147, 'https://top-cfg.ru/', '80'),
(1523, '302fe789afceb4bf58c6104abf5d2b1b', 147, 'https://top-cfg.ru/', '80'),
(1524, '8b806ce6c850196c06adcf4d8532b896', 147, '43.77.22.66', '80'),
(1525, 'b92d2e6f5c34b0c1e3aa279a1b849237', 147, 'https://top-cfg.ru/', '80'),
(1526, 'ce574fc6b61bb1be8fc5cf8c1aac1622', 147, 'https://top-cfg.ru/', '80'),
(1527, 'afdc8bcf8ebbb954711345ef1ba96131', 147, 'https://top-cfg.ru/', '80'),
(1528, '0eb044d18858d0939b584bc579052991', 147, 'https://top-cfg.ru/', '80'),
(1529, '86bf90da62c832ca6047c307370a25f1', 147, 'https://top-cfg.ru/', '80'),
(1530, 'bc858e9b95ef91689a9035a7efb6af2d', 147, 'https://top-cfg.ru/', '80'),
(1531, 'f90d4b868e9c12d5882ecfa7bc8d4158', 147, 'https://top-cfg.ru/', '80'),
(1532, '9011e85ffe3647ada1075fc13a5e14b1', 147, 'https://top-cfg.ru/', '80'),
(1533, '9dbbff014059a7d19e59b1c2896979ae', 147, 'https://top-cfg.ru/', '80'),
(1534, '687349c5f3a2463ab62a54eea5aa9b9b', 147, '44.77.22.13', '80'),
(1535, 'f3a7688a77cb6648570ac8f17dfaeb6d', 147, '44.77.22.13', '80'),
(1536, '0fbe3bbbe231c7f19701addf5cf4aa17', 147, 'https://top-cfg.ru/', '80'),
(1537, '755f5f033c03a048251a162059c55c28', 147, 'https://top-cfg.ru/', '80'),
(1538, '792ac75566b19964f0421ee1e15471bf', 147, 'https://top-cfg.ru/', '80'),
(1539, 'c593128ceb5cca307c922dfc6bf90344', 147, 'https://top-cfg.ru/', '80'),
(1540, 'eaa0a4901af36eb50511d32a95ccf139', 147, 'https://top-cfg.ru/', '80'),
(1541, '6d17178a1756fc70f9941a6be55706c8', 147, 'https://top-cfg.ru/', '80'),
(1542, '55ded7bc1f214c71c2d90a3c30403e04', 147, '4.2.2.2', '53'),
(1543, 'cf368e6861f6fccfb0aeac28c826abd8', 147, '4.2.2.2', '53'),
(1544, 'ffd4598bae2bc7cd21330181437df54e', 147, '4.2.2.2', '53'),
(1545, '11ad8aab66b3be5fee0d0b956dd6a1c9', 147, '4.2.2.2', '53'),
(1546, '1553c7b4c5699d56b0ae05185b6bcdc8', 147, '4.2.2.2', '53'),
(1547, 'b5c04bdf512153be801971be2a25ab6f', 147, '4.2.2.2', '53'),
(1548, '425874f32831b5ca821f158b0c94c284', 147, '4.2.2.2', '53'),
(1549, 'dd6081ed5a210c7cbb8f069eff58c4f0', 147, '143.22.61.53', '53'),
(1550, '2af42f5f018a65d4b4f1fc54f31f1162', 147, '143.22.61.53', '53'),
(1551, '3a3b2fc925f5183c45ee6a2cafc8fa42', 150, '108.61.96.28', '80'),
(1552, '2c9da74c36a95cb14896cd9405f1e1e8', 147, '4.2.2.2', '53'),
(1553, 'c6caeb630bd9b329ef6af8f0040e2cdd', 147, '108.61.96.28', '53'),
(1554, 'a795879ec692f3f5282e2d7bb6f12c6f', 150, '89.187.181.130', '80'),
(1555, '5d90b723edc7680d90c6fdfc06e19ba2', 150, '38.27.122.110', '80'),
(1556, '73f55f58b2267753b33b8dc90e97bd78', 150, '23.227.134.122', '80'),
(1557, 'f05192a17e0bbbf7ad4119cfa9b662f3', 150, '23.227.134.122', '80'),
(1558, 'd9e9ccddeea1e49591f5d349411eca04', 150, '51.15.25.108', '80'),
(1559, 'ac39288dd66c77005782f23d5aa3aa57', 150, '51.15.25.108', '443'),
(1560, 'e3f64c4b56b43e3638a4c322de2bce2e', 150, '51.15.25.108', '80'),
(1561, '49b1c5668ae67fa24922e44ef66ff968', 150, '51.15.25.108', '80'),
(1562, '48393307f2a464984b75e4b9368365a6', 150, '172.67.162.81', '80'),
(1563, 'c1762637b86897d1d52e3efb932359be', 147, '51.15.25.108', '80'),
(1564, 'a8de9b7f63f49903d41782cc141cf610', 150, '95.90.230.35', '80'),
(1565, '81b096677530faa404777fa7eefb112e', 147, '51.15.25.108', '80'),
(1566, 'f3b0cdba1bdb674057827f85b831610c', 147, '51.15.25.108', '80'),
(1567, '7546897dec42eec6e351a2a912f59447', 144, '51.15.25.108', '80'),
(1568, '89f847239283d0579ef886687ff090ec', 144, '51.15.25.108', '80'),
(1569, 'c406d702d76a40f852d35d06e8fc4327', 144, '51.15.25.108', '80'),
(1570, 'd8a19c6a85a406cd77618b3a65c93f12', 144, '51.15.25.108', '80'),
(1571, '995e9c352cbb6dfa59c969dac58402b2', 150, '8.26.94.147', '80'),
(1572, '6fadd5906c030982067da4428ca4aadc', 150, '38.91.59.18', '80'),
(1573, 'da2ba7649eea54936db2a56256fd2d2a', 147, '143.22.53.11', '80'),
(1574, 'f6de539cd4dbcb41d82e6f614b2c31f4', 150, '80.150.6.143', '80'),
(1575, '0ff2894f47b6c55d3efbc3f91cd5bf36', 150, '80.150.6.143', '443'),
(1576, '76b4be4999d4d198e2d04d311b618fd1', 150, '185.117.0.99', '9987'),
(1577, '1ec6ad45135312c1a5fc07104692408d', 150, '185.117.0.99', '9987');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `vip` int(11) NOT NULL,
  `mbt` int(11) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `length` int(11) NOT NULL,
  `price` float NOT NULL,
  `concurrents` int(11) NOT NULL,
  `private` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`ID`, `name`, `vip`, `mbt`, `unit`, `length`, `price`, `concurrents`, `private`) VALUES
(43, 'Admin', 86400, 86400, 'Years', 1000, 2000, 100, 1),
(46, 'Starter', 0, 400, 'Days', 15, 10, 1, 0),
(52, 'Special ', 0, 3500, 'Months', 1, 9999, 5, 1),
(47, 'PRO', 0, 1000, 'Months', 1, 20, 2, 0),
(48, 'CAT', 0, 1800, 'Months', 1, 40, 3, 0),
(49, 'ULTIMATE', 1, 3000, 'Months', 1, 65, 3, 0),
(50, 'PLATINUM', 1, 3200, 'Months', 1, 90, 4, 0),
(51, 'GOD', 1, 4500, 'Months', 1, 135, 6, 0),
(53, 'sex', 0, 15000, 'Days', 10, 1, 3, 1),
(54, 'STAFF', 1, 86400, 'Years', 1000, 300, 777, 1),
(55, 'ALLAHI', 1, 10800, 'Years', 3000, 999999, 100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `report` varchar(644) NOT NULL,
  `date` int(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE `servers` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `slots` int(3) NOT NULL,
  `methods` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sitename` varchar(1024) NOT NULL,
  `stripePubKey` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cooldown` int(11) NOT NULL,
  `cooldownTime` int(11) NOT NULL,
  `paypal` varchar(50) NOT NULL,
  `bitcoin` varchar(50) NOT NULL,
  `stripe` int(11) NOT NULL,
  `maintaince` varchar(100) NOT NULL,
  `rotation` int(1) NOT NULL DEFAULT '0',
  `system` varchar(7) NOT NULL,
  `maxattacks` int(5) NOT NULL,
  `testboots` int(1) NOT NULL,
  `cloudflare` int(1) NOT NULL,
  `skype` varchar(200) NOT NULL,
  `key` varchar(100) NOT NULL,
  `issuerId` varchar(50) NOT NULL,
  `coinpayments` varchar(50) NOT NULL,
  `ipnSecret` varchar(100) NOT NULL,
  `google_site` varchar(644) NOT NULL,
  `google_secret` varchar(644) NOT NULL,
  `btc_address` varchar(64) NOT NULL,
  `secretKey` varchar(50) NOT NULL,
  `cbp` int(1) NOT NULL,
  `paypal_email` varchar(64) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `logo` varchar(64) NOT NULL,
  `stripeSecretKey` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sitename`, `stripePubKey`, `url`, `description`, `cooldown`, `cooldownTime`, `paypal`, `bitcoin`, `stripe`, `maintaince`, `rotation`, `system`, `maxattacks`, `testboots`, `cloudflare`, `skype`, `key`, `issuerId`, `coinpayments`, `ipnSecret`, `google_site`, `google_secret`, `btc_address`, `secretKey`, `cbp`, `paypal_email`, `theme`, `logo`, `stripeSecretKey`) VALUES
('', '', '', '', 0, 1642852451, '', '', 0, '', 1, 'api', 36, 0, 1, '', '', '', '', '', '', '', '', '', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `smtpsettings`
--

CREATE TABLE `smtpsettings` (
  `host` varchar(255) NOT NULL,
  `auth` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `port` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `subject` varchar(1024) NOT NULL,
  `content` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `username` varchar(15) NOT NULL,
  `date` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `content`, `status`, `username`, `date`) VALUES
(1, 'Test', 'Hello!', 'Waiting for user response', 'Kaneki', 1642257963),
(2, 'Hey', 'Do you know, what i have big dick?', 'Closed', 'Swebs', 1642270672),
(3, 'sdad', 'asdad', 'Closed', 'ALH1MIK', 1642345602),
(4, 'dsa', 'das', 'Closed', 'qweqweqwe', 1642415916),
(5, '?????', '???????', 'Closed', 'qweqwe', 1642491956),
(6, '????????', '????', 'Closed', 'qweqwe', 1642491972),
(7, 'sdfsdfsdfs', 'fdsfsdfds', 'Waiting for user response', 'qweqwe', 1642491974),
(8, 'test', 'test', 'Waiting for admin response', 'fdsgfsdgfg', 1643074365),
(9, 'gfd', 'gfd', 'Waiting for admin response', 'qweqwe1', 1643194193);

-- --------------------------------------------------------

--
-- Table structure for table `tos`
--

CREATE TABLE `tos` (
  `archive` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `rank` int(11) NOT NULL DEFAULT '0',
  `membership` int(11) NOT NULL,
  `expire` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `referral` varchar(50) NOT NULL,
  `referralbalance` int(3) NOT NULL DEFAULT '0',
  `testattack` int(1) NOT NULL,
  `activity` int(64) NOT NULL DEFAULT '0',
  `2auth` int(11) NOT NULL,
  `referedBy` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `rank`, `membership`, `expire`, `status`, `referral`, `referralbalance`, `testattack`, `activity`, `2auth`, `referedBy`) VALUES
(144, 'SakuMai', '842c5f43bb61b0a05ca20449147378ad16480eaf', 1, 54, 2022681600, 0, '0', 0, 0, 0, 0, 0),
(147, 'Serial', 'a78b5abcf12237bf1316226d1ed37a07dc3409cc', 1, 54, 2022681600, 0, '0', 0, 0, 0, 0, 0),
(148, '2222', '54dc2a59284bcb8dcc91168366e62ed1e9e631e1', 0, 51, 1646421382, 0, '0', 0, 0, 0, 0, 0),
(149, 'foxodever', '040bd08a4290267535cd247b8ba2eca129d9fe9f', 0, 0, 0, 0, '0', 0, 0, 0, 0, 0),
(150, 'xlpq', 'a28f03fbb5452e2446116ffad62f55a48a236674', 0, 47, 1646427839, 0, '0', 0, 0, 0, 0, 0),
(151, 'Nekksi', '4436707e7813a7a13637a08035aa9e92ea2441cb', 0, 0, 0, 0, '0', 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `affiliateWithdraws`
--
ALTER TABLE `affiliateWithdraws`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fe`
--
ALTER TABLE `fe`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `giftcards`
--
ALTER TABLE `giftcards`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `iplogs`
--
ALTER TABLE `iplogs`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageid`);

--
-- Indexes for table `methods`
--
ALTER TABLE `methods`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ping_sessions`
--
ALTER TABLE `ping_sessions`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `servers`
--
ALTER TABLE `servers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD UNIQUE KEY `key` (`key`),
  ADD KEY `sitename` (`sitename`(767));

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actions`
--
ALTER TABLE `actions`
  MODIFY `id` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `affiliateWithdraws`
--
ALTER TABLE `affiliateWithdraws`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `api`
--
ALTER TABLE `api`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fe`
--
ALTER TABLE `fe`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giftcards`
--
ALTER TABLE `giftcards`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `iplogs`
--
ALTER TABLE `iplogs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9120;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `methods`
--
ALTER TABLE `methods`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ping_sessions`
--
ALTER TABLE `ping_sessions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1578;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `servers`
--
ALTER TABLE `servers`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
