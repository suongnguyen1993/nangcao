-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2016 at 04:31 PM
-- Server version: 5.6.17-log
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `itoiec_nc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `password` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `fullname` varchar(255) CHARACTER SET utf8 DEFAULT '0',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT '0',
  `created` datetime DEFAULT '0000-00-00 00:00:00',
  `updated` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `fullname`, `email`, `created`, `updated`) VALUES
(2, 'suongnguyen93', 'fcea920f7412b5da7be0cf42b8c93759', 'Sương Nguyễn', 'amy.suong93@gmail.com', '2016-03-23 00:36:39', '2016-03-23 00:38:34'),
(3, 'sullyyang', 'fcea920f7412b5da7be0cf42b8c93759', 'Cẩm Trần', 'camtran2903@gmail.com', '2016-03-23 00:49:03', '2016-03-28 23:11:49'),
(4, 'admin123', 'e10adc3949ba59abbe56e057f20f883e', 'suong nguyen', 'amy.suong93@gmail.com', '2016-04-01 00:02:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `choice`
--

CREATE TABLE IF NOT EXISTS `choice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `correct_answer` tinyint(4) NOT NULL DEFAULT '0',
  `question_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `question_id` (`question_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=559 ;

--
-- Dumping data for table `choice`
--

INSERT INTO `choice` (`id`, `content`, `correct_answer`, `question_id`, `created`, `updated`) VALUES
(1, 'The woman is turning off the computer.', 0, 1, '2016-04-21 14:40:36', '2016-04-24 10:34:20'),
(2, 'The woman is looking through some papers.', 0, 1, '2016-04-21 14:40:36', '2016-04-24 10:34:20'),
(3, 'The woman is staring at a screen.', 1, 1, '2016-04-21 14:40:36', '2016-04-24 10:34:20'),
(4, 'The woman is cleaning her desk.', 0, 1, '2016-04-21 14:40:36', '2016-04-24 10:34:20'),
(5, 'The boxes have been loaded onto a truck.', 0, 2, '2016-04-21 14:43:09', '0000-00-00 00:00:00'),
(6, 'Some workers are unpacking the boxes.', 0, 2, '2016-04-21 14:43:09', '0000-00-00 00:00:00'),
(7, 'The boxes are stacked on the shelves.', 0, 2, '2016-04-21 14:43:09', '0000-00-00 00:00:00'),
(8, 'Labels are attached on each box.', 1, 2, '2016-04-21 14:43:10', '0000-00-00 00:00:00'),
(9, 'A worker is operating heavy machinery.', 0, 3, '2016-04-21 14:45:03', '0000-00-00 00:00:00'),
(10, 'The building is being demolished.', 0, 3, '2016-04-21 14:45:03', '0000-00-00 00:00:00'),
(11, 'The men are working at a construction site.', 1, 3, '2016-04-21 14:45:03', '0000-00-00 00:00:00'),
(12, 'The construction work has been completed.', 0, 3, '2016-04-21 14:45:03', '0000-00-00 00:00:00'),
(13, 'Yes, she will be.', 0, 4, '2016-04-21 14:58:35', '0000-00-00 00:00:00'),
(14, 'To Japan.', 1, 4, '2016-04-21 14:58:35', '0000-00-00 00:00:00'),
(15, 'Next month.', 0, 4, '2016-04-21 14:58:35', '0000-00-00 00:00:00'),
(16, 'No, he’s not coming.', 0, 5, '2016-04-21 14:59:46', '2016-04-21 15:00:13'),
(17, 'I can be there in 10 minutes.', 1, 5, '2016-04-21 14:59:46', '2016-04-21 15:00:13'),
(18, 'Whichever is faster.', 0, 5, '2016-04-21 14:59:47', '2016-04-21 15:00:13'),
(19, 'Yes, if we work quickly.', 1, 6, '2016-04-21 15:01:19', '0000-00-00 00:00:00'),
(20, 'About three times a week.', 0, 6, '2016-04-21 15:01:19', '0000-00-00 00:00:00'),
(21, 'Open it when you get off work.', 0, 6, '2016-04-21 15:01:19', '0000-00-00 00:00:00'),
(22, 'In a gift shop', 0, 7, '2016-04-21 19:28:20', '0000-00-00 00:00:00'),
(23, 'In a restaurant', 0, 7, '2016-04-21 19:28:21', '0000-00-00 00:00:00'),
(24, 'In a hotel', 1, 7, '2016-04-21 19:28:21', '0000-00-00 00:00:00'),
(25, 'On a tour bus', 0, 7, '2016-04-21 19:28:21', '0000-00-00 00:00:00'),
(26, 'A ticket for the bus', 0, 8, '2016-04-21 19:29:20', '0000-00-00 00:00:00'),
(27, 'An umbrella', 1, 8, '2016-04-21 19:29:20', '0000-00-00 00:00:00'),
(28, 'A watch', 0, 8, '2016-04-21 19:29:20', '0000-00-00 00:00:00'),
(29, 'A birthday present', 0, 8, '2016-04-21 19:29:20', '0000-00-00 00:00:00'),
(30, '8:00 a.m', 1, 9, '2016-04-21 19:30:07', '0000-00-00 00:00:00'),
(31, '9:00 a.m', 0, 9, '2016-04-21 19:30:07', '0000-00-00 00:00:00'),
(32, '2:00 p.m', 0, 9, '2016-04-21 19:30:07', '0000-00-00 00:00:00'),
(33, '3:00 p.m', 0, 9, '2016-04-21 19:30:07', '0000-00-00 00:00:00'),
(34, 'A phone number', 0, 10, '2016-04-21 19:35:22', '0000-00-00 00:00:00'),
(35, 'A file', 1, 10, '2016-04-21 19:35:22', '0000-00-00 00:00:00'),
(36, 'A security card', 0, 10, '2016-04-21 19:35:22', '0000-00-00 00:00:00'),
(37, 'A key', 0, 10, '2016-04-21 19:35:22', '0000-00-00 00:00:00'),
(38, 'At  a car repair shop', 0, 11, '2016-04-21 19:36:02', '0000-00-00 00:00:00'),
(39, 'In a seminar', 0, 11, '2016-04-21 19:36:02', '0000-00-00 00:00:00'),
(40, 'in an employee orientation', 0, 11, '2016-04-21 19:36:02', '0000-00-00 00:00:00'),
(41, 'on vacation', 1, 11, '2016-04-21 19:36:02', '0000-00-00 00:00:00'),
(42, 'Check his office', 1, 12, '2016-04-21 19:36:59', '0000-00-00 00:00:00'),
(43, 'Contact Johnny', 0, 12, '2016-04-21 19:36:59', '0000-00-00 00:00:00'),
(44, 'Attend the next meeting', 0, 12, '2016-04-21 19:36:59', '0000-00-00 00:00:00'),
(45, 'Visit another department', 0, 12, '2016-04-21 19:36:59', '0000-00-00 00:00:00'),
(46, 'To postpone a meeting', 0, 13, '2016-04-21 20:20:36', '0000-00-00 00:00:00'),
(47, 'To order some supplies', 0, 13, '2016-04-21 20:20:36', '0000-00-00 00:00:00'),
(48, 'To request a job interview', 0, 13, '2016-04-21 20:20:36', '0000-00-00 00:00:00'),
(49, 'To confirm an appointment', 1, 13, '2016-04-21 20:20:36', '0000-00-00 00:00:00'),
(50, 'Doctor', 0, 14, '2016-04-21 20:21:10', '0000-00-00 00:00:00'),
(51, 'Doctor', 0, 14, '2016-04-21 20:21:10', '0000-00-00 00:00:00'),
(52, 'Engineer', 0, 14, '2016-04-21 20:21:10', '0000-00-00 00:00:00'),
(53, 'Receptionist', 1, 14, '2016-04-21 20:21:10', '0000-00-00 00:00:00'),
(54, 'Call back later', 0, 15, '2016-04-21 20:21:45', '0000-00-00 00:00:00'),
(55, 'Make a payment', 0, 15, '2016-04-21 20:21:46', '0000-00-00 00:00:00'),
(56, 'Come to the office early', 1, 15, '2016-04-21 20:21:46', '0000-00-00 00:00:00'),
(57, 'Bring an insurance card', 0, 15, '2016-04-21 20:21:46', '0000-00-00 00:00:00'),
(58, 'Fresh fruit', 0, 16, '2016-04-21 20:26:29', '0000-00-00 00:00:00'),
(59, 'Vitamin tablets', 0, 16, '2016-04-21 20:26:29', '0000-00-00 00:00:00'),
(60, 'New beverage', 1, 16, '2016-04-21 20:26:29', '0000-00-00 00:00:00'),
(61, 'Frozen food', 0, 16, '2016-04-21 20:26:29', '0000-00-00 00:00:00'),
(62, 'it is easy to carry', 1, 17, '2016-04-21 20:27:10', '0000-00-00 00:00:00'),
(63, 'It is sold at local drugstores.', 0, 17, '2016-04-21 20:27:10', '0000-00-00 00:00:00'),
(64, 'it is packaged in a fresh- seal bottle.', 0, 17, '2016-04-21 20:27:10', '0000-00-00 00:00:00'),
(65, 'it can be prepared quickly', 0, 17, '2016-04-21 20:27:10', '0000-00-00 00:00:00'),
(66, 'Its sweet flavors', 0, 18, '2016-04-21 20:27:52', '0000-00-00 00:00:00'),
(67, 'Its reduced price', 0, 18, '2016-04-21 20:27:52', '0000-00-00 00:00:00'),
(68, 'Its unique apprearance', 0, 18, '2016-04-21 20:27:52', '0000-00-00 00:00:00'),
(69, 'Its nutritional value', 1, 18, '2016-04-21 20:27:52', '0000-00-00 00:00:00'),
(70, 'was', 0, 19, '2016-04-21 21:16:26', '0000-00-00 00:00:00'),
(71, 'are', 0, 19, '2016-04-21 21:16:26', '0000-00-00 00:00:00'),
(72, 'has been', 0, 19, '2016-04-21 21:16:26', '0000-00-00 00:00:00'),
(73, 'will be', 1, 19, '2016-04-21 21:16:26', '0000-00-00 00:00:00'),
(74, 'by', 0, 20, '2016-04-21 21:18:03', '0000-00-00 00:00:00'),
(75, 'about', 0, 20, '2016-04-21 21:18:03', '0000-00-00 00:00:00'),
(76, 'for', 1, 20, '2016-04-21 21:18:03', '0000-00-00 00:00:00'),
(77, 'in', 0, 20, '2016-04-21 21:18:03', '0000-00-00 00:00:00'),
(78, 'approximately', 1, 21, '2016-04-21 21:19:04', '2016-04-21 21:19:48'),
(79, 'briefly', 0, 21, '2016-04-21 21:19:04', '2016-04-21 21:19:48'),
(80, 'rapidly', 0, 21, '2016-04-21 21:19:04', '2016-04-21 21:19:48'),
(81, 'unpredictably', 0, 21, '2016-04-21 21:19:04', '2016-04-21 21:19:48'),
(82, 'until', 0, 22, '2016-04-21 22:40:25', '0000-00-00 00:00:00'),
(83, 'between', 0, 22, '2016-04-21 22:40:25', '0000-00-00 00:00:00'),
(84, 'within', 1, 22, '2016-04-21 22:40:25', '0000-00-00 00:00:00'),
(85, 'since', 0, 22, '2016-04-21 22:40:25', '0000-00-00 00:00:00'),
(86, 'author', 0, 23, '2016-04-21 22:41:57', '0000-00-00 00:00:00'),
(87, 'advantage', 0, 23, '2016-04-21 22:41:57', '0000-00-00 00:00:00'),
(88, 'option', 1, 23, '2016-04-21 22:41:57', '0000-00-00 00:00:00'),
(89, 'moment', 0, 23, '2016-04-21 22:41:57', '0000-00-00 00:00:00'),
(90, 'Notify', 1, 24, '2016-04-21 22:42:42', '2016-04-21 23:06:00'),
(91, 'Notice', 0, 24, '2016-04-21 22:42:42', '2016-04-21 23:06:00'),
(92, 'Notification', 0, 24, '2016-04-21 22:42:42', '2016-04-21 23:06:00'),
(93, 'Note', 0, 24, '2016-04-21 22:42:42', '2016-04-21 23:06:00'),
(94, 'interview', 0, 25, '2016-04-21 22:49:46', '2016-04-21 23:05:09'),
(95, 'recruiting', 0, 25, '2016-04-21 22:49:46', '2016-04-21 23:05:09'),
(96, 'training', 1, 25, '2016-04-21 22:49:46', '2016-04-21 23:05:10'),
(97, 'application', 0, 25, '2016-04-21 22:49:46', '2016-04-21 23:05:10'),
(98, 'suggestions', 1, 26, '2016-04-21 23:07:05', '0000-00-00 00:00:00'),
(99, 'suggesting', 0, 26, '2016-04-21 23:07:05', '0000-00-00 00:00:00'),
(100, 'to suggest', 0, 26, '2016-04-21 23:07:05', '0000-00-00 00:00:00'),
(101, 'suggested', 0, 26, '2016-04-21 23:07:05', '0000-00-00 00:00:00'),
(102, 'from', 0, 27, '2016-04-21 23:07:49', '0000-00-00 00:00:00'),
(103, 'to', 1, 27, '2016-04-21 23:07:49', '0000-00-00 00:00:00'),
(104, 'at', 0, 27, '2016-04-21 23:07:49', '0000-00-00 00:00:00'),
(105, 'on', 0, 27, '2016-04-21 23:07:49', '0000-00-00 00:00:00'),
(106, 'Community center director', 0, 28, '2016-04-21 23:28:13', '0000-00-00 00:00:00'),
(107, 'Supervisor', 0, 28, '2016-04-21 23:28:13', '0000-00-00 00:00:00'),
(108, 'Receptionist', 1, 28, '2016-04-21 23:28:13', '0000-00-00 00:00:00'),
(109, 'Medical manager', 0, 28, '2016-04-21 23:28:14', '0000-00-00 00:00:00'),
(110, 'Access to an automobile', 0, 29, '2016-04-21 23:29:16', '0000-00-00 00:00:00'),
(111, 'Experience in the field', 1, 29, '2016-04-21 23:29:16', '0000-00-00 00:00:00'),
(112, 'Organizational skills', 0, 29, '2016-04-21 23:29:17', '0000-00-00 00:00:00'),
(113, 'A college degree', 0, 29, '2016-04-21 23:29:17', '0000-00-00 00:00:00'),
(114, 'A store is relocating.', 0, 30, '2016-04-21 23:31:37', '0000-00-00 00:00:00'),
(115, 'A store is going out of business.', 1, 30, '2016-04-21 23:31:38', '0000-00-00 00:00:00'),
(116, 'A manufacturing line has been stopped.', 0, 30, '2016-04-21 23:31:38', '0000-00-00 00:00:00'),
(117, 'A new shipment of merchandise has arrived', 0, 30, '2016-04-21 23:31:38', '0000-00-00 00:00:00'),
(118, 'Handmade tables', 0, 31, '2016-04-21 23:36:25', '0000-00-00 00:00:00'),
(119, 'Reclining chairs', 0, 31, '2016-04-21 23:36:25', '0000-00-00 00:00:00'),
(120, 'Desks', 0, 31, '2016-04-21 23:36:25', '0000-00-00 00:00:00'),
(121, 'Sofa sets', 1, 31, '2016-04-21 23:36:25', '0000-00-00 00:00:00'),
(122, 'A voucher for their next purchases', 1, 32, '2016-04-21 23:37:59', '0000-00-00 00:00:00'),
(123, 'Free delivery', 0, 32, '2016-04-21 23:37:59', '0000-00-00 00:00:00'),
(124, 'A desk lamp', 0, 32, '2016-04-21 23:38:00', '0000-00-00 00:00:00'),
(125, 'An additional 15% discount', 0, 32, '2016-04-21 23:38:00', '0000-00-00 00:00:00'),
(126, 'about', 0, 34, '2016-04-21 21:20:53', '0000-00-00 00:00:00'),
(127, 'for', 1, 34, '2016-04-21 21:20:53', '0000-00-00 00:00:00'),
(128, 'up', 0, 34, '2016-04-21 21:20:53', '0000-00-00 00:00:00'),
(129, 'from', 0, 34, '2016-04-21 21:20:53', '0000-00-00 00:00:00'),
(491, 'cancellation', 0, 35, '2016-04-21 21:22:18', '2016-04-21 21:22:48'),
(492, 'deletion', 0, 35, '2016-04-21 21:22:18', '2016-04-21 21:22:48'),
(493, 'vacancy', 0, 35, '2016-04-21 21:22:18', '2016-04-21 21:22:48'),
(494, 'lack', 1, 35, '2016-04-21 21:22:18', '2016-04-21 21:22:48'),
(495, 'satisfy', 0, 36, '2016-04-21 21:23:43', '0000-00-00 00:00:00'),
(496, 'satisfaction', 1, 36, '2016-04-21 21:23:44', '0000-00-00 00:00:00'),
(497, 'satisfactory', 0, 36, '2016-04-21 21:23:44', '0000-00-00 00:00:00'),
(498, 'satisfactorily', 0, 36, '2016-04-21 21:23:44', '0000-00-00 00:00:00'),
(499, 'openly', 0, 37, '2016-04-21 21:24:32', '0000-00-00 00:00:00'),
(500, 'nearly', 0, 37, '2016-04-21 21:24:32', '0000-00-00 00:00:00'),
(501, 'urgently', 0, 37, '2016-04-21 21:24:32', '0000-00-00 00:00:00'),
(502, 'shortly', 1, 37, '2016-04-21 21:24:32', '0000-00-00 00:00:00'),
(503, 'well', 1, 38, '2016-04-21 21:26:15', '0000-00-00 00:00:00'),
(504, 'quite', 0, 38, '2016-04-21 21:26:15', '0000-00-00 00:00:00'),
(505, 'many', 0, 38, '2016-04-21 21:26:15', '0000-00-00 00:00:00'),
(506, 'some', 0, 38, '2016-04-21 21:26:15', '0000-00-00 00:00:00'),
(507, 'they', 0, 39, '2016-04-21 21:26:51', '0000-00-00 00:00:00'),
(508, 'them', 0, 39, '2016-04-21 21:26:52', '0000-00-00 00:00:00'),
(509, 'their', 0, 39, '2016-04-21 21:26:52', '0000-00-00 00:00:00'),
(510, 'themselves', 1, 39, '2016-04-21 21:26:52', '0000-00-00 00:00:00'),
(511, 'restart', 0, 40, '2016-04-21 21:27:42', '0000-00-00 00:00:00'),
(512, 'regain', 0, 40, '2016-04-21 21:27:43', '0000-00-00 00:00:00'),
(513, 'restore', 1, 40, '2016-04-21 21:27:43', '0000-00-00 00:00:00'),
(514, 'replace', 0, 40, '2016-04-21 21:27:43', '0000-00-00 00:00:00'),
(515, 'effect', 0, 41, '2016-04-21 21:28:47', '0000-00-00 00:00:00'),
(516, 'effective', 0, 41, '2016-04-21 21:28:47', '0000-00-00 00:00:00'),
(517, 'effectively', 1, 41, '2016-04-21 21:28:47', '0000-00-00 00:00:00'),
(518, 'effectiveness', 0, 41, '2016-04-21 21:28:47', '0000-00-00 00:00:00'),
(519, 'then', 0, 42, '2016-04-21 21:29:34', '0000-00-00 00:00:00'),
(520, 'what', 0, 42, '2016-04-21 21:29:34', '0000-00-00 00:00:00'),
(521, 'when', 0, 42, '2016-04-21 21:29:34', '0000-00-00 00:00:00'),
(522, 'that', 1, 42, '2016-04-21 21:29:34', '0000-00-00 00:00:00'),
(523, 'jointly', 0, 43, '2016-04-21 21:37:24', '0000-00-00 00:00:00'),
(524, 'diversely', 0, 43, '2016-04-21 21:37:24', '0000-00-00 00:00:00'),
(525, 'separately', 1, 43, '2016-04-21 21:37:24', '0000-00-00 00:00:00'),
(526, 'partially', 0, 43, '2016-04-21 21:37:24', '0000-00-00 00:00:00'),
(531, 'she', 0, 45, '2016-04-21 21:41:11', '0000-00-00 00:00:00'),
(532, 'her', 1, 45, '2016-04-21 21:41:11', '0000-00-00 00:00:00'),
(533, 'herself', 0, 45, '2016-04-21 21:41:11', '0000-00-00 00:00:00'),
(534, 'hers', 0, 45, '2016-04-21 21:41:11', '0000-00-00 00:00:00'),
(535, 'postponed', 0, 46, '2016-04-21 21:42:14', '0000-00-00 00:00:00'),
(536, 'expected', 1, 46, '2016-04-21 21:42:14', '0000-00-00 00:00:00'),
(537, 'scheduled', 0, 46, '2016-04-21 21:42:14', '0000-00-00 00:00:00'),
(538, 'continued', 0, 46, '2016-04-21 21:42:14', '0000-00-00 00:00:00'),
(539, 'known', 0, 47, '2016-04-21 21:43:18', '0000-00-00 00:00:00'),
(540, 'knowingly', 1, 47, '2016-04-21 21:43:18', '0000-00-00 00:00:00'),
(541, 'knowledge', 0, 47, '2016-04-21 21:43:18', '0000-00-00 00:00:00'),
(542, 'knowledgeable', 0, 47, '2016-04-21 21:43:18', '0000-00-00 00:00:00'),
(543, 'of', 0, 48, '2016-04-21 21:44:21', '2016-04-21 21:44:27'),
(544, 'within', 0, 48, '2016-04-21 21:44:21', '2016-04-21 21:44:28'),
(545, 'bet ween', 0, 48, '2016-04-21 21:44:21', '2016-04-21 21:44:28'),
(546, 'out', 1, 48, '2016-04-21 21:44:22', '2016-04-21 21:44:28'),
(547, 'developers', 1, 49, '2016-04-21 21:45:42', '2016-04-21 21:49:34'),
(548, 'development', 0, 49, '2016-04-21 21:45:42', '2016-04-21 21:49:34'),
(549, 'developed', 0, 49, '2016-04-21 21:45:42', '2016-04-21 21:49:34'),
(550, 'develops', 0, 49, '2016-04-21 21:45:42', '2016-04-21 21:49:34'),
(551, 'pleasant', 1, 50, '2016-04-21 21:47:02', '2016-04-21 21:49:28'),
(552, 'tender', 0, 50, '2016-04-21 21:47:02', '2016-04-21 21:49:29'),
(553, 'confident', 0, 50, '2016-04-21 21:47:02', '2016-04-21 21:49:29'),
(554, 'fragile', 0, 50, '2016-04-21 21:47:02', '2016-04-21 21:49:29'),
(555, 'distract', 0, 51, '2016-04-21 21:49:23', '0000-00-00 00:00:00'),
(556, 'distraction', 0, 51, '2016-04-21 21:49:23', '0000-00-00 00:00:00'),
(557, 'distractedly', 0, 51, '2016-04-21 21:49:23', '0000-00-00 00:00:00'),
(558, 'distracting', 1, 51, '2016-04-21 21:49:23', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE IF NOT EXISTS `exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `audio` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `false_statements`
--

CREATE TABLE IF NOT EXISTS `false_statements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `long_question_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `long_question_id` (`long_question_id`,`question_id`),
  KEY `question_id` (`question_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=132 ;

--
-- Dumping data for table `false_statements`
--

INSERT INTO `false_statements` (`id`, `long_question_id`, `question_id`, `user_id`) VALUES
(1, NULL, 42, 30),
(2, NULL, 19, 30),
(3, NULL, 48, 30),
(4, NULL, 45, 30),
(5, NULL, 46, 30),
(6, NULL, 21, 30),
(7, NULL, 39, 30),
(8, NULL, 47, 30),
(9, NULL, 40, 30),
(10, NULL, 34, 30),
(11, NULL, 41, 30),
(12, NULL, 20, 30),
(13, NULL, 38, 30),
(14, NULL, 35, 30),
(15, NULL, 49, 30),
(16, NULL, 43, 30),
(17, NULL, 37, 30),
(18, NULL, 51, 30),
(19, NULL, 36, 30),
(20, NULL, 50, 30),
(21, NULL, 40, 30),
(22, NULL, 48, 30),
(23, NULL, 46, 30),
(24, NULL, 45, 30),
(25, NULL, 47, 30),
(26, NULL, 20, 30),
(27, NULL, 38, 30),
(28, NULL, 19, 30),
(29, NULL, 39, 30),
(30, NULL, 35, 30),
(31, NULL, 21, 30),
(32, NULL, 37, 30),
(33, NULL, 50, 30),
(34, NULL, 34, 30),
(35, NULL, 51, 30),
(36, NULL, 41, 30),
(37, NULL, 49, 30),
(38, NULL, 36, 30),
(39, NULL, 42, 30),
(40, NULL, 43, 30),
(41, NULL, 47, 30),
(42, NULL, 20, 30),
(43, NULL, 40, 30),
(44, NULL, 35, 30),
(45, NULL, 50, 30),
(46, NULL, 49, 30),
(47, NULL, 42, 30),
(48, NULL, 19, 30),
(49, NULL, 43, 30),
(50, NULL, 41, 30),
(51, NULL, 51, 30),
(52, NULL, 36, 30),
(53, NULL, 34, 30),
(54, NULL, 38, 30),
(55, NULL, 48, 30),
(56, NULL, 45, 30),
(57, NULL, 21, 30),
(58, NULL, 37, 30),
(59, NULL, 39, 30),
(60, NULL, 46, 30),
(61, NULL, 19, 30),
(62, NULL, 40, 30),
(63, NULL, 49, 30),
(64, NULL, 43, 30),
(65, NULL, 39, 30),
(66, NULL, 36, 30),
(67, NULL, 50, 30),
(68, NULL, 47, 30),
(69, NULL, 38, 30),
(70, NULL, 20, 30),
(71, NULL, 42, 30),
(72, NULL, 46, 30),
(73, NULL, 21, 30),
(74, NULL, 35, 30),
(75, NULL, 48, 30),
(76, NULL, 37, 30),
(77, NULL, 45, 30),
(78, NULL, 34, 30),
(79, NULL, 41, 30),
(80, NULL, 51, 30),
(81, NULL, 43, 30),
(82, NULL, 43, 30),
(83, NULL, 19, 30),
(84, NULL, 50, 30),
(85, NULL, 38, 30),
(86, NULL, 40, 30),
(87, NULL, 46, 30),
(88, NULL, 41, 30),
(89, NULL, 49, 30),
(90, NULL, 21, 30),
(91, NULL, 48, 30),
(92, NULL, 35, 30),
(93, NULL, 34, 30),
(94, NULL, 39, 30),
(95, NULL, 42, 30),
(96, NULL, 45, 30),
(97, NULL, 37, 30),
(98, NULL, 47, 30),
(99, NULL, 36, 30),
(100, NULL, 20, 30),
(101, NULL, 51, 30),
(102, NULL, 51, 30),
(103, NULL, 40, 30),
(104, NULL, 48, 30),
(105, NULL, 21, 30),
(106, NULL, 20, 30),
(107, NULL, 35, 30),
(108, NULL, 41, 30),
(109, NULL, 46, 30),
(110, NULL, 37, 30),
(111, NULL, 43, 30),
(112, NULL, 48, 30),
(113, NULL, 42, 30),
(114, NULL, 51, 30),
(115, NULL, 49, 30),
(116, NULL, 45, 30),
(117, NULL, 40, 30),
(118, NULL, 38, 30),
(119, NULL, 19, 30),
(120, NULL, 34, 30),
(121, NULL, 47, 30),
(122, NULL, 39, 30),
(123, NULL, 50, 30),
(124, NULL, 36, 30),
(125, NULL, 19, 30),
(126, NULL, 21, 30),
(127, NULL, 20, 30),
(128, NULL, 20, 30),
(129, NULL, 21, 30),
(130, NULL, 19, 30),
(131, NULL, 21, 32);

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE IF NOT EXISTS `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `group`
--

INSERT INTO `group` (`id`, `name`, `created`, `updated`) VALUES
(1, 'Listening Photographs', '2016-03-14 00:00:00', '2016-04-21 13:46:05'),
(2, 'Listening Question – Response', '2016-03-14 23:06:10', '2016-04-21 13:45:59'),
(3, 'Listening Short Conversations', '2016-03-14 23:06:32', '0000-00-00 00:00:00'),
(4, 'Listening Short Talks', '2016-03-14 23:07:13', '0000-00-00 00:00:00'),
(5, 'Reading Incomplete Sentences', '2016-03-14 23:07:34', '2016-03-14 23:09:03'),
(6, 'Reading Incomplete Text', '2016-03-14 23:07:53', '2016-03-14 23:09:16'),
(7, 'Reading Comprehension', '2016-03-14 23:08:12', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `long_question`
--

CREATE TABLE IF NOT EXISTS `long_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `long_content` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `long_audio` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `number_question` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `long_question`
--

INSERT INTO `long_question` (`id`, `long_content`, `group_id`, `exam_id`, `long_audio`, `level`, `number_question`) VALUES
(1, '<p>M: Pardon me, it looks like it&rsquo;s going to&nbsp;rain&nbsp; today&nbsp; and&nbsp; I&nbsp; didn&rsquo;t&nbsp; Ering&nbsp; an&nbsp;umbrella with me. Is there anywhere&nbsp;in this&nbsp;hotel where I might be able to&nbsp;buy one?</p>\r\n\r\n<p>W: Yes, there&rsquo;s a gift shop located in the&nbsp;lobby which opens at 8:00.</p>\r\n\r\n<p>M: Perfect! I can get some breakfast and&nbsp;stop by the gift shop before my tour bus&nbsp;leaves. Thanks for your help.</p>\r\n\r\n<p>W: No problem, enjoy the rest of yourstay, sir!</p>\r\n', 3, NULL, 'cau41-43_test3.mp3', 500, NULL),
(2, '<p>W: Hey, Jackie, I&rsquo;ve Eeen looking for&nbsp;the file on the company merger,&nbsp;have you seen it?</p>\r\n\r\n<p>M: No, Tasha. Not today. Did you check&nbsp;with Johnny? He most likely knows where&nbsp;it is.</p>\r\n\r\n<p>W: Johnny&rsquo;s on vacation this week, and&nbsp;I can&rsquo;t get in contact with him. Are&nbsp;you sure you don&rsquo;t know where it might&nbsp;be? I was told you were one of the last&nbsp;people to see it.</p>\r\n\r\n<p>M: I&rsquo;ll go check and see if it&rsquo;s in my&nbsp;office, it might still be there from the&nbsp;last meeting on Wednesday.</p>\r\n', 3, NULL, 'cau44-46_test3.mp3', 250, NULL),
(3, '<p>Good afternoon. This message is for Ms.&nbsp;Lucy Spartan. Ms. Spartan, this is Ron&nbsp;Cannon from the reception desk at Dr.&nbsp;Asaad&rsquo;s office I&rsquo;m calling to remind&nbsp;you of your monthly checkup on the 17th&nbsp;of DecemEer at 3 o&rsquo;clock. The&nbsp;appointment should take approximately an&nbsp;hour, so please remember to clear your&nbsp;schedule for that time period. I&rsquo;d&nbsp;also like&nbsp;to remind you, since this is your first&nbsp;appointment, please make sure to come&nbsp;in 15 minutes early in order to complete&nbsp;some paperwork If you have any&nbsp;conflicts with the appointment date, please&nbsp;make sure to call us 24 hours in&nbsp;advance.&nbsp;Thank you and have a great day.</p>\r\n', 4, NULL, 'cau71-73_test3.mp3', 400, NULL),
(4, '<p>Are you sick and tired of all the high-calorie, non- healthy beverages? Areyou searching for a healthy alternative&nbsp;to better your lifestyle? Well, look no&nbsp;further than Vitamin Splash, a new&nbsp;health conscious beverage&nbsp;brought&nbsp;to&nbsp;&nbsp;you&nbsp;by&nbsp;the&nbsp;Glacier&nbsp;Company&nbsp;This wholesome drink is packed with&nbsp;vitamins, protein and 20% real fruit&nbsp;juice. It is also packaged in&nbsp;a&nbsp;sports bottle, which makes it easy to&nbsp;carry, while exercising or wherever&nbsp;you may be. Vitamin Splash can be&nbsp;enjoyed with a meal, or even served&nbsp;as&nbsp;a&nbsp; nutritious&nbsp; snack&nbsp;Vitamin&nbsp;Splash&nbsp;is&nbsp;the&nbsp;smart&nbsp; and&nbsp; delicious&nbsp;choice for&nbsp;anyone.&nbsp;Look for it now at&nbsp;your local supermarket.</p>\r\n', 4, NULL, 'cau74-76_test3.mp3', 100, NULL),
(5, '<p>From: yolanda@samsmusic.com</p>\r\n\r\n<p>To: bobby_hughes@hotmail.com Subject: Re: Special Request</p>\r\n\r\n<p>Dear Mr. Hughes,</p>\r\n\r\n<p>As a follow-up to your e-mail of March 14, I am very sorry to tell you that the CD you are interested in purchasing is not currently available through Sam&#39;s Music. However, we are&nbsp;able to order this CD directly from the distributor, and are able to have it in stock ___ the&nbsp;next few days.&nbsp;If this ___ works for you, kindly respond to this message and provide a contact number&nbsp;where you can be reached.Sam&#39;s Music will ___ you when the product is available for pick-up.&nbsp;</p>\r\n\r\n<p>Thank you for your continued patronage of Sam&#39;s Music! Sincerely,</p>\r\n\r\n<p>Yolanda Burns</p>\r\n\r\n<p>Sam&#39;s Music Customer Relations</p>\r\n\r\n<p>&nbsp;</p>\r\n', 6, NULL, NULL, 400, NULL),
(6, '<p>To: All Media Line Human Resources Staff From: Janet Forsythe, District Manager&nbsp;<br />\r\nSubject: Media Line Incorporated Orientation Program&nbsp;</p>\r\n\r\n<p>It is my pleasure to invite you to participate in our orientation program, offered exclusively to new employees. This program has been established to improve the ___ process. Recently hired employees will be matched with a senior staff member with whom they will meet regularly during their first few months in order for senior staff members to offer instruction, mentorship and ___. By volunteering for the orientation, you will be providing necessary guidance ___ your new colleagues.&nbsp;</p>\r\n\r\n<p>All employees willing to participate in the orientation program as a senior staff member must contact me at jforsythe@medialine.com.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 6, NULL, NULL, 250, NULL),
(7, '<p><strong>Job</strong></p>\r\n\r\n<p>Trenton Family Medical Practice is currently seeking a receptionist for a par;-linle position at our Egtington Street location. Managers are seeking someone who is<br />\r\nenergetic, punctual, and has lived in the Trenton community for several years. A<br />\r\nuniversity degree is not required for this position, but applicants should have some experience working in a health care facility. We offer a competitive salary and<br />\r\nbenefits package. Please send a r&eacute;sum&eacute;, a cover letter and a list of two references<br />\r\nto Marcia Weave, Supervisor at m_weaveldtrentonfamilymedicine.com.</p>\r\n', 7, NULL, NULL, 500, NULL),
(8, '<p>YorkshireFurniture Established 1936</p>\r\n\r\n<p>342 Sherboume Street</p>\r\n\r\n<p>Oakville, Ontario 978-978-6788</p>\r\n\r\n<p>The region&#39;s most recognizable name in home furnishings is going out of business. Everything in the store is priced to sell. This includes desks, bedroom furniture, reclining chairs, and handcrafted tables. We also have a limited stock of sofa sets at unbelievably low prices. In addition, customers can take advantage of extra sale<br />\r\nprices on all used furniture in stock. Please bear in mind that we only sell handmade furniture.</p>\r\n\r\n<p>If you spend more than $250, we&#39;ll also throw in a desk lamp, absolutely free. (Sorry, this offer does not apply to previous purchases.)</p>\r\n\r\n<p>Remember for the next two weeks only our store hours have been extended from 8:3o a.m. until 8:3o p.m. Don&#39;t miss out on this once-in-a-lifetime offer!</p>\r\n\r\n<p>Please see our advertisement in this weekend&#39;s newspaper for directions to the store.&nbsp;</p>\r\n', 7, NULL, NULL, 700, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ma_tran_tra_loi`
--

CREATE TABLE IF NOT EXISTS `ma_tran_tra_loi` (
  `id_question` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `trloi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `audio` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `id_long_question` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `the_total_do` int(11) NOT NULL,
  `the_total_do_correct` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `content`, `image`, `audio`, `level`, `exam_id`, `group_id`, `id_long_question`, `created`, `updated`, `the_total_do`, `the_total_do_correct`) VALUES
(1, 'Listening Photograhs', 'cau1_test3.JPG', 'cau1_test3.mp3', 100, NULL, 1, NULL, '2016-04-21 14:40:36', NULL, 0, 0),
(2, 'Listening Photographs', 'cau2_test3.JPG', 'cau2_test3.mp3', 250, NULL, 1, NULL, '2016-04-21 14:43:09', NULL, 0, 0),
(3, 'Listening Photographs', 'cau3_test3.JPG', 'cau3_test3.mp3', 400, NULL, 1, NULL, '2016-04-21 14:45:03', NULL, 0, 0),
(4, 'Where is Samantha moving?', '', 'cau11_test3.mp3', 400, NULL, 2, NULL, '2016-04-21 14:58:35', NULL, 0, 0),
(5, 'How fast can you get here?', '', 'cau12_test3.mp3', 100, NULL, 2, NULL, '2016-04-21 14:59:46', NULL, 0, 0),
(6, 'Will you be able to finish on time?', '', 'cau13_test3.mp3', 250, NULL, 2, NULL, '2016-04-21 15:01:19', NULL, 0, 0),
(7, 'Where is this conversation most likely taking place?', '', '', 100, NULL, 3, '1', '2016-04-21 19:28:20', NULL, 0, 0),
(8, 'What does the man want to buy?', '', '', 250, NULL, 3, '1', '2016-04-21 19:29:20', NULL, 0, 0),
(9, 'When does the shop open?', '', '', 100, NULL, 3, '1', '2016-04-21 19:30:07', NULL, 0, 0),
(10, 'What is the woman looking for?', '', '', 500, NULL, 3, '2', '2016-04-21 19:35:22', NULL, 0, 0),
(11, 'Where is Johnny today?', '', '', 400, NULL, 3, '2', '2016-04-21 19:36:02', NULL, 0, 0),
(12, 'What does Jackie say he will do?', '', '', 250, NULL, 3, '2', '2016-04-21 19:36:59', NULL, 0, 0),
(13, 'What is the purpose of the message?', '', '', 250, NULL, 4, '3', '2016-04-21 20:20:36', NULL, 0, 0),
(14, 'Who is most likely leaving the message?', '', '', 700, NULL, 4, '3', '2016-04-21 20:21:10', NULL, 0, 0),
(15, 'What does the caller tell Ms. Spartan to do?', '', '', 100, NULL, 4, '3', '2016-04-21 20:21:45', NULL, 0, 0),
(16, 'What is this advertisement about?', '', '', 400, NULL, 4, '4', '2016-04-21 20:26:29', NULL, 0, 0),
(17, 'What is convenient about the product?', '', '', 100, NULL, 4, '4', '2016-04-21 20:27:10', NULL, 0, 0),
(18, 'According to the advertisement, what is special about the product?', '', '', 250, NULL, 4, '4', '2016-04-21 20:27:52', NULL, 0, 0),
(19, 'This weekend the Main Street Bar & Lounge ___ closing at 1 a.m', '', '', 100, NULL, 5, NULL, '2016-04-21 21:16:26', NULL, 1, 0),
(20, 'The hotel reservation ___ Mr. Jenkin’s business trip to London has just been confirmed by his travel agent.', '', '', 100, NULL, 5, NULL, '2016-04-21 21:18:03', NULL, 1, 0),
(21, 'We estimate students will need ___ two hours to complete the online\r\napplication and submit it to \r\nus', '', '', 100, NULL, 5, NULL, '2016-04-21 21:19:04', NULL, 1, 0),
(22, '.', '', '', 250, NULL, 6, '5', '2016-04-21 22:40:25', NULL, 0, 0),
(23, '.', '', '', 250, NULL, 6, '5', '2016-04-21 22:41:57', NULL, 0, 0),
(24, '.', '', '', 500, NULL, 6, '5', '2016-04-21 22:42:41', NULL, 0, 0),
(25, '.', '', '', 100, NULL, 6, '6', '2016-04-21 22:49:46', NULL, 0, 0),
(26, '.', '', '', 400, NULL, 6, '6', '2016-04-21 23:07:05', NULL, 0, 0),
(27, '.', '', '', 700, NULL, 6, '6', '2016-04-21 23:07:48', NULL, 0, 0),
(28, 'What position is being advertised?', '', '', 700, NULL, 7, '7', '2016-04-21 23:28:13', NULL, 0, 0),
(29, 'What is mentioned as a requirement for the job?', '', '', 500, NULL, 7, '7', '2016-04-21 23:29:16', NULL, 0, 0),
(30, 'Why have prices been reduced?', '', '', 250, NULL, 7, '8', '2016-04-21 23:31:37', NULL, 0, 0),
(31, 'What product is in limited supply?', '', '', 400, NULL, 7, '8', '2016-04-21 23:36:25', NULL, 0, 0),
(32, 'What will customers who spend more than $250 receive?', '', '', 700, NULL, 7, '8', '2016-04-21 23:37:59', NULL, 0, 0),
(34, 'Mr. Anderson has been a  senior account manager ___ over three years at one of the leading consulting firms.', '', '', 250, NULL, 5, NULL, '2016-04-21 21:20:53', NULL, 1, 1),
(35, 'Around 90 percent of  individual stock investors were found to be not \r\nqualified for direct stock investment due to ___ of knowledge and skills in investment.', '', '', 400, NULL, 5, NULL, '2016-04-21 21:22:18', NULL, 1, 0),
(36, 'In its ongoing commitment to maintain the highest level of customer ___, Peterson Incorporated values your comments on its service.', '', '', 400, NULL, 5, NULL, '2016-04-21 21:23:43', NULL, 1, 0),
(37, 'The sales figures are not very favorable this quarter,but are expected to rise ___.', '', '', 500, NULL, 5, NULL, '2016-04-21 21:24:31', NULL, 1, 0),
(38, 'In spite of inclement weather, the staff Christmas party was ___ attended by both management and employees.', '', '', 700, NULL, 5, NULL, '2016-04-21 21:26:15', NULL, 1, 1),
(39, 'A responsible financial planner give clients enough advice to help them make a right decision for ___.', '', '', 250, NULL, 5, NULL, '2016-04-21 21:26:51', NULL, 1, 0),
(40, 'The city has received federal funding to ___ the historical City Hall building to its former beauty.', '', '', 500, NULL, 5, NULL, '2016-04-21 21:27:42', NULL, 1, 0),
(41, 'Human resources managers should have excellence speaking and conflict resolution skills to communicate ___ with a variety of employees.', '', '', 250, NULL, 5, NULL, '2016-04-21 21:28:47', NULL, 1, 1),
(42, 'Attached please find the file containing last week’s sales presentation ___ you requested', '', '', 100, NULL, 5, NULL, '2016-04-21 21:29:34', NULL, 1, 0),
(43, 'Barnes & Noble can send invoices — for product orders at the customer’s request.', '', '', 500, NULL, 5, NULL, '2016-04-21 21:37:24', NULL, 1, 0),
(45, 'Ms. Swanson will manage all operations on the upcoming construction contract, and all supervisors will report directly back to ___.', '', '', 400, NULL, 5, NULL, '2016-04-21 21:41:11', NULL, 1, 0),
(46, 'Because of the lack of ticket sales, this evening’s theater performance has been ___ until next week.', '', '', 400, NULL, 5, NULL, '2016-04-21 21:42:14', NULL, 1, 0),
(47, 'Canadian customs and immigration staff report that most of the breaches of security involve travelers who did not — import illegal products into the country.', '', '', 700, NULL, 5, NULL, '2016-04-21 21:43:18', NULL, 1, 0),
(48, 'When the sales clerk finishes running all of the items through the scanner, the computer quickly prints ___ the receipt.', '', '', 100, NULL, 5, NULL, '2016-04-21 21:44:21', NULL, 1, 0),
(49, 'Product ___ at Wellington Industries work both independently and cooperatively with team members.', '', '', 400, NULL, 5, NULL, '2016-04-21 21:45:42', NULL, 1, 0),
(50, 'At Omega Engineering, we strongly believe that a ___ work environment is essential to productive and motivated employees .', '', '', 700, NULL, 5, NULL, '2016-04-21 21:47:02', NULL, 1, 1),
(51, 'Ms. Pemberton removed a number of financial charts from her presentation after deciding they would be too ___.', '', '', 250, NULL, 5, NULL, '2016-04-21 21:49:23', NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT '0',
  `total_listen` int(11) DEFAULT '0',
  `total_read` int(11) DEFAULT '0',
  `listen_correct` int(11) DEFAULT '0',
  `read_correct` int(11) DEFAULT '0',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `fb_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `username`, `password`, `email`, `level`, `total_listen`, `total_read`, `listen_correct`, `read_correct`, `created`, `updated`, `fb_id`) VALUES
(29, 'Suong Nguyen', '884272688385370', '0', NULL, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 884272688385370),
(30, 'Suong Nguyen', 'suongnguyen93', 'e10adc3949ba59abbe56e057f20f883e', 'amy.suong93@gmail.com', 0, 0, 0, 0, 0, '2016-05-20 12:03:10', '0000-00-00 00:00:00', NULL),
(31, 'Suong Amy', '165713603829064', '0', NULL, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 165713603829064),
(32, 'suong', 'alibaba', 'e10adc3949ba59abbe56e057f20f883e', 'aa@avb.com', 0, 0, 0, 0, 0, '2016-06-15 22:13:38', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vocabularies`
--

CREATE TABLE IF NOT EXISTS `vocabularies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `vocabulary` varchar(255) NOT NULL,
  `voca_mean` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `choice`
--
ALTER TABLE `choice`
  ADD CONSTRAINT `choice_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `false_statements`
--
ALTER TABLE `false_statements`
  ADD CONSTRAINT `false_statements_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `long_question`
--
ALTER TABLE `long_question`
  ADD CONSTRAINT `long_question_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`) ON DELETE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
