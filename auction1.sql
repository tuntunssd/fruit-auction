-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2023 at 05:23 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auction1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bidder`
--

CREATE TABLE `bidder` (
  `ID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `vehicleID` int(10) NOT NULL,
  `biddingTime` datetime NOT NULL,
  `price` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `confirmbid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bidder`
--

INSERT INTO `bidder` (`ID`, `userID`, `vehicleID`, `biddingTime`, `price`, `email`, `confirmbid`) VALUES
(17, 2, 84, '2020-04-11 00:16:40', 80010, 'sinha@gmail.com', 0),
(18, 2, 83, '2020-04-11 00:17:55', 10010, 'sinha@gmail.com', 0),
(19, 3, 82, '2020-04-11 00:19:36', 6010, 'santosh@gmail.com', 0),
(20, 3, 81, '2020-04-11 00:20:49', 6000, 'santosh@gmail.com', 0),
(21, 2, 82, '2020-04-11 00:25:09', 6020, 'santosh@gmail.com', 0),
(22, 3, 83, '2020-04-11 00:25:50', 10050, 'sinha@gmail.com', 0),
(24, 20, 82, '2020-06-06 00:51:39', 6050, 'santosh@gmail.com', 0),
(26, 20, 83, '2020-06-06 23:17:52', 10080, 'sinha@gmail.com', 0),
(29, 23, 88, '2023-08-26 20:09:59', 30, 'hasan.alvee16@gmail.com', 0),
(30, 26, 88, '2023-08-26 20:50:22', 50, 'hasan.alvee16@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `ID` int(10) NOT NULL,
  `name` varchar(500) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`ID`, `name`, `type`) VALUES
(2, 'Leafy Green- lettuce, spinach, silverbeet etc', 'Vegetable'),
(3, 'Berries- strawberries, raspberries, blueberries, kiwifruit and passionfruit etc', 'Fruit'),
(4, 'Cruciferous- cabbage, cauliflower, Brussels sprouts, broccoli etc', 'Vegetable'),
(5, 'Marrow- pumpkin, cucumber, zucchini etc', 'Vegetable'),
(6, 'Stone fruit- nectarines, apricots, peaches and plums', 'Fruit'),
(7, 'Tropical and exotic- bananas and mangoes', 'Fruit'),
(10, 'Root- potato, sweet potato, yam etc', 'Vegetable'),
(11, 'Edible plant stem- celery, asparagus etc', 'Vegetable'),
(12, 'Citrus- oranges, grapefruits, mandarins and limes etc', 'Fruit'),
(13, 'Allium- onion, garlic, shallot etc', 'Vegetable'),
(14, 'Melons- watermelons, rockmelons and honeydew melons', 'Fruit'),
(15, 'Tomatoes and avocados etc', 'Fruit');

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` varchar(50) NOT NULL,
  `from_user_id` varchar(50) NOT NULL,
  `chat_message` mediumtext NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(18, 'santosh@gmail.com', 'akash98@gmail.com', 'Hello Dude hows you', '2020-06-08 12:09:55', 1),
(19, 'sinha@gmail.com', 'akash98@gmail.com', 'Hii sinha\n', '2020-06-08 12:10:13', 0),
(20, 'sinha@gmail.com', 'akash98@gmail.com', 'What you doing', '2020-06-08 12:10:27', 0),
(21, 'akash98@gmail.com', 'sinha@gmail.com', 'Yaa iam fine', '2020-06-08 12:11:34', 0),
(22, 'sinha@gmail.com', 'akash98@gmail.com', 'everything is fine??', '2020-06-08 12:12:18', 0),
(23, 'akash98@gmail.com', 'sinha@gmail.com', 'Yaa boss', '2020-06-08 12:12:38', 0),
(24, 'santosh@gmail.com', 'akash98@gmail.com', 'hmmmm', '2020-06-08 14:00:24', 1),
(25, 'akash98@gmail.com', 'sinha@gmail.com', 'What you doing boss', '2020-06-08 14:32:47', 0),
(26, 'akash98@gmail.com', 'sinha@gmail.com', 'is it working now??', '2020-06-08 14:51:40', 0),
(27, 'sinha@gmail.com', 'akash98@gmail.com', 'Nope', '2020-06-08 14:52:05', 0),
(28, 'sinha@gmail.com', 'akash98@gmail.com', 'Yes working', '2020-06-08 14:52:22', 0),
(29, 'akash98@gmail.com', 'sinha@gmail.com', 'There', '2020-06-08 14:52:31', 0),
(30, 'sinha@gmail.com', 'akash98@gmail.com', 'Not here', '2020-06-08 14:52:59', 0),
(31, 'sinha@gmail.com', 'akash98@gmail.com', 'Dude', '2020-06-08 15:02:24', 0),
(32, 'akash98@gmail.com', 'sinha@gmail.com', 'Say', '2020-06-08 15:02:46', 0),
(33, 'sinha@gmail.com', 'akash98@gmail.com', 'Hey sinha', '2020-06-08 15:03:21', 0),
(34, 'akash98@gmail.com', 'sinha@gmail.com', 'hey akash', '2020-06-08 15:03:52', 0),
(35, 'sinha@gmail.com', 'akash98@gmail.com', 'is it fast there', '2020-06-08 15:04:50', 0),
(36, 'akash98@gmail.com', 'sinha@gmail.com', 'Yes fast', '2020-06-08 15:05:01', 0),
(37, 'akash98@gmail.com', 'sinha@gmail.com', 'hmmm', '2020-06-08 15:07:02', 0),
(38, 'akash98@gmail.com', 'sinha@gmail.com', 'hmmm', '2020-06-08 15:07:20', 0),
(39, 'akash98@gmail.com', 'sinha@gmail.com', 'Say', '2020-06-08 15:09:57', 0),
(40, 'sinha@gmail.com', 'akash98@gmail.com', 'There', '2020-06-08 15:10:03', 0),
(41, 'akash98@gmail.com', 'sinha@gmail.com', 'care', '2020-06-08 15:10:19', 0),
(42, 'akash98@gmail.com', 'sinha@gmail.com', 'Hello', '2020-06-08 15:12:17', 0),
(43, 'sinha@gmail.com', 'akash98@gmail.com', 'i forgot to reload', '2020-06-08 15:12:37', 0),
(44, 'akash98@gmail.com', 'sinha@gmail.com', 'I can understand', '2020-06-08 15:12:54', 0),
(45, 'santosh@gmail.com', 'kevinoberoy98@gmail.com', 'Hi santosh', '2020-06-08 15:27:18', 0),
(46, 'kevinoberoy98@gmail.com', 'santosh@gmail.com', 'Hi kevin', '2020-06-08 15:27:29', 0),
(47, 'santosh@gmail.com', 'kevinoberoy98@gmail.com', 'what you doing', '2020-06-08 15:27:43', 0),
(48, 'kevinoberoy98@gmail.com', 'santosh@gmail.com', 'Nothing...Chilling...WAU', '2020-06-08 15:28:08', 0),
(49, 'sinha@gmail.com', 'akash98@gmail.com', 'Hello Sinha', '2020-06-08 18:33:18', 0),
(50, 'akash98@gmail.com', 'sinha@gmail.com', 'Yes sir', '2020-06-08 18:33:25', 0),
(51, 'sinha@gmail.com', 'akash98@gmail.com', 'Watch You Doing', '2020-06-08 18:33:39', 0),
(52, 'akash98@gmail.com', 'sinha@gmail.com', 'Nothing sir', '2020-06-08 18:33:52', 0),
(53, 'sinha@gmail.com', 'akash98@gmail.com', 'Tell me more', '2020-06-08 18:34:22', 0),
(54, 'akash98@gmail.com', 'sinha@gmail.com', 'You say sir', '2020-06-08 18:34:35', 0),
(55, 'akash98@gmail.com', 'sinha@gmail.com', 'Hello Sir', '2020-06-09 14:44:36', 0),
(56, 'sinha@gmail.com', 'akash98@gmail.com', 'Yes sinha', '2020-06-09 14:44:53', 0),
(57, 'akash98@gmail.com', 'sinha@gmail.com', 'Good i received', '2020-06-09 14:45:19', 0),
(58, 'akash98@gmail.com', 'sinha@gmail.com', 'Anything else', '2020-06-09 14:46:01', 0),
(59, 'sinha@gmail.com', 'akash98@gmail.com', 'Thats fucking awesome', '2020-06-09 14:47:23', 0),
(60, 'sinha@gmail.com', 'akash98@gmail.com', 'WOW', '2020-06-09 14:47:36', 0),
(61, 'akash98@gmail.com', 'sinha@gmail.com', 'hehe', '2020-06-09 14:47:50', 0),
(62, 'sinha@gmail.com', 'akash98@gmail.com', 'Hola', '2020-06-09 14:55:04', 0),
(63, 'akash98@gmail.com', 'sinha@gmail.com', 'Yo dude ...we are done now', '2020-06-09 14:58:23', 0),
(64, 'sinha@gmail.com', 'akash98@gmail.com', 'Yeah', '2020-06-09 14:59:38', 0),
(65, 'sinha@gmail.com', 'akash98@gmail.com', 'Lets go', '2020-06-09 15:08:51', 0),
(66, 'akash98@gmail.com', 'sinha@gmail.com', 'yeah', '2020-06-09 15:09:00', 0),
(67, 'akash98@gmail.com', 'sinha@gmail.com', 'Not here', '2020-06-09 15:10:43', 0),
(68, 'akash98@gmail.com', 'sinha@gmail.com', '', '2020-06-09 15:10:44', 0),
(69, 'akash98@gmail.com', 'sinha@gmail.com', '', '2020-06-09 15:10:44', 0),
(70, 'sinha@gmail.com', 'akash98@gmail.com', 'Yeah', '2020-06-09 15:14:12', 0),
(71, 'sinha@gmail.com', 'akash98@gmail.com', 'Hahaha', '2020-06-09 15:14:34', 0),
(72, 'sinha@gmail.com', 'akash98@gmail.com', '', '2020-06-09 15:14:37', 0),
(73, 'sinha@gmail.com', 'akash98@gmail.com', 'Final text', '2020-06-09 15:24:36', 0),
(74, 'sinha@gmail.com', 'akash98@gmail.com', 'i hope working', '2020-06-09 15:24:46', 0),
(75, 'akash98@gmail.com', 'sinha@gmail.com', 'Yeah It is ...Bye', '2020-06-09 15:28:06', 0),
(76, 'sinha@gmail.com', 'akash98@gmail.com', 'Hii sinha', '2020-06-10 15:37:03', 0),
(77, 'akash98@gmail.com', 'sinha@gmail.com', 'Yes sir', '2020-06-10 15:37:16', 0),
(78, 'santosh@gmail.com', 'kevinoberoy98@gmail.com', 'Hmmmm', '2020-06-10 17:58:46', 0),
(79, 'santosh@gmail.com', 'kevinoberoy98@gmail.com', 'Whats up santosh', '2020-06-10 18:01:10', 0),
(80, 'kevinoberoy98@gmail.com', 'santosh@gmail.com', 'Yo kevin', '2020-06-10 18:01:22', 0),
(81, 'sinha@gmail.com', 'akash98@gmail.com', 'Yo', '2020-06-12 13:46:13', 0),
(82, 'sinha@gmail.com', 'akash98@gmail.com', 'Hii', '2020-06-15 05:49:49', 0),
(83, 'akash98@gmail.com', 'sinha@gmail.com', 'Yo', '2020-06-15 05:49:59', 0),
(84, 'sinha@gmail.com', 'akash98@gmail.com', 'How you doing', '2020-06-15 05:50:14', 0),
(85, 'akash98@gmail.com', 'sinha@gmail.com', 'Good ..you?', '2020-06-15 05:50:29', 0),
(86, 'sinha@gmail.com', 'akash98@gmail.com', 'Good', '2020-06-15 05:50:42', 0),
(87, 'akash98@gmail.com', 'sinha@gmail.com', 'Is it fast now', '2020-06-15 05:50:54', 0),
(88, 'sinha@gmail.com', 'akash98@gmail.com', 'NO', '2020-06-15 05:51:07', 0),
(89, 'akash98@gmail.com', 'sinha@gmail.com', 'Here its fast', '2020-06-15 05:51:19', 0),
(90, 'sinha@gmail.com', 'akash98@gmail.com', 'Not here', '2020-06-15 05:51:30', 0),
(91, 'akash98@gmail.com', 'sinha@gmail.com', 'But i think its okay', '2020-06-15 05:51:44', 0),
(92, 'sinha@gmail.com', 'akash98@gmail.com', 'Bye', '2020-06-15 05:51:52', 0),
(93, 'santosh@gmail.com', 'kevinoberoy@gmail.com', 'Hii', '2020-06-15 14:53:08', 0),
(94, 'kevinoberoy@gmail.com', 'santosh@gmail.com', 'Yo', '2020-06-15 14:53:20', 0),
(95, 'santosh@gmail.com', 'kevinoberoy@gmail.com', 'whats up', '2020-06-15 14:53:36', 0),
(96, 'hasan.alvee16@gmail.com', 'hasan.alvee15@gmail.com', 'heloo', '2023-08-26 15:20:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `confirmbid`
--

CREATE TABLE `confirmbid` (
  `ID` int(10) NOT NULL,
  `vehicleID` int(10) NOT NULL,
  `date` date NOT NULL,
  `userID` int(5) NOT NULL,
  `type` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `role` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `ID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `paymentFrom` varchar(50) NOT NULL,
  `account` varchar(50) NOT NULL,
  `amount` int(15) NOT NULL,
  `role` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`ID`, `userID`, `paymentFrom`, `account`, `amount`, `role`) VALUES
(17, 23, 'DBBL', '61494654651', 50, 1),
(18, 23, 'DBBL', '654165461651', 2147483647, 0),
(19, 26, 'DBBL', '4461664164', 2147483647, 1);

-- --------------------------------------------------------

--
-- Table structure for table `farmer`
--

CREATE TABLE `farmer` (
  `ID` int(10) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pincode` int(10) NOT NULL,
  `admin` int(5) NOT NULL DEFAULT 0,
  `active` int(5) NOT NULL DEFAULT 0,
  `image` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `farmer_activation_code` varchar(50) NOT NULL,
  `farmer_email_status` enum('not verified','verified') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `farmer`
--

INSERT INTO `farmer` (`ID`, `name`, `email`, `password`, `phone`, `address`, `state`, `pincode`, `admin`, `active`, `image`, `farmer_activation_code`, `farmer_email_status`) VALUES
(10, 'Alvee', 'hasan.alvee16@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01632114252', 'Narayanganj', 'Narayanganj', 1400, 0, 0, '', 'b1024fe24acb89cb275ee54b163322be', 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `login_details_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_type` enum('no','yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`login_details_id`, `user_id`, `last_activity`, `is_type`) VALUES
(149, 'sinha@gmail.com', '2020-06-18 07:38:46', 'no'),
(150, 'sinha@gmail.com', '2020-06-18 08:11:21', 'no'),
(151, 'sinha@gmail.com', '2020-06-18 12:44:00', 'no'),
(152, 'sinha@gmail.com', '2020-06-18 14:44:05', 'no'),
(153, 'akash98@gmail.com', '2020-06-18 14:54:20', 'no'),
(154, 'sinha@gmail.com', '2020-06-18 15:01:32', 'no'),
(155, 'sinha@gmail.com', '2020-06-18 16:41:36', 'no'),
(156, 'santosh@gmail.com', '2020-06-18 17:17:25', 'no'),
(157, 'sinha@gmail.com', '2020-06-18 17:30:55', 'no'),
(158, 'santosh@gmail.com', '2020-06-18 17:42:35', 'no'),
(159, 'akash98@gmail.com', '2020-06-18 17:52:33', 'no'),
(160, 'santosh@gmail.com', '2020-06-18 17:55:21', 'no'),
(161, 'sinha@gmail.com', '2020-06-18 17:57:05', 'no'),
(162, 'santosh@gmail.com', '2020-06-18 17:59:48', 'no'),
(163, 'akash98@gmail.com', '2020-06-18 18:00:54', 'no'),
(164, 'akash@gmail.com', '2020-06-18 18:01:37', 'no'),
(165, 'hasan.alvee15@gmail.com', '2023-08-26 14:21:37', 'no'),
(166, 'hasan.alvee16@gmail.com', '2023-08-26 14:23:58', 'no'),
(167, 'hasan.alvee15@gmail.com', '2023-08-26 14:27:04', 'no'),
(168, 'hasan.alvee15@gmail.com', '2023-08-26 14:30:52', 'no'),
(169, 'hasan.alvee17@gmail.com', '2023-08-26 14:32:31', 'no'),
(170, 'hasan.alvee15@gmail.com', '2023-08-26 14:40:10', 'no'),
(171, 'hasan.alvee16@gmail.com', '2023-08-26 14:40:45', 'no'),
(172, 'hasan.alvee16@gmail.com', '2023-08-26 14:57:12', 'no'),
(173, 'hasan.alvee15@gmail.com', '2023-08-26 15:10:32', 'no'),
(174, 'hasan.alvee15@gmail.com', '2023-08-26 15:16:18', 'no'),
(175, 'hasan.alvee16@gmail.com', '2023-08-26 15:17:43', 'no'),
(176, 'hasan.alvee17@gmail.com', '2023-08-26 15:19:19', 'no'),
(177, 'hasan.alvee15@gmail.com', '2023-08-26 15:21:53', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `ID` int(10) NOT NULL,
  `vehicleID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `role` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`ID`, `vehicleID`, `userID`, `role`) VALUES
(74, 88, 23, 0),
(75, 88, 26, 0);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `ID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `vehicleID` int(10) NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(150) NOT NULL,
  `admin` int(5) DEFAULT 0,
  `active` int(5) NOT NULL DEFAULT 0,
  `image` varchar(300) NOT NULL,
  `user_activation_code` varchar(50) NOT NULL,
  `user_email_status` enum('not verified','verified') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `name`, `email`, `password`, `phone`, `address`, `admin`, `active`, `image`, `user_activation_code`, `user_email_status`) VALUES
(25, 'Sabit', 'hasan.alvee17@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01632114251', 'Narayanganj', 1, 0, '', 'd03b55ee7a6101ed995c0cbfdab7a9db', 'verified'),
(26, 'Sabit Hasan Alvee', 'hasan.alvee15@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '01632114251', 'Narayanganj', 0, 0, '', 'c3d0d51ad0b0236885327b88786ddba8', 'verified');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `ID` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `catagory` int(50) NOT NULL,
  `startDate` varchar(15) NOT NULL,
  `EndDate` date NOT NULL,
  `image` varchar(300) NOT NULL,
  `price` int(10) NOT NULL,
  `status` int(5) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`ID`, `name`, `type`, `catagory`, `startDate`, `EndDate`, `image`, `price`, `status`, `email`) VALUES
(88, 'Mango', 'Fruit', 7, '2023-08-26', '2023-08-27', '10360_F_271669174_2dHs4FO3SV83lQ4MjswEBa4LQTGjMO4E.jpg', 20, 1, 'hasan.alvee16@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `vehicledetails`
--

CREATE TABLE `vehicledetails` (
  `ID` int(10) NOT NULL,
  `vehicleID` int(10) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(50) NOT NULL,
  `Region` text NOT NULL,
  `harvest_date` date NOT NULL,
  `Season` text NOT NULL,
  `State` text NOT NULL,
  `soil_type` varchar(50) NOT NULL,
  `temperature` varchar(20) NOT NULL,
  `updateStatus` int(10) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicleimage`
--

CREATE TABLE `vehicleimage` (
  `ID` int(10) NOT NULL,
  `vehicleID` int(10) NOT NULL,
  `name` varchar(300) NOT NULL,
  `name2` varchar(300) NOT NULL,
  `name3` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watchlist`
--

CREATE TABLE `watchlist` (
  `ID` int(10) NOT NULL,
  `vehicleID` int(10) NOT NULL,
  `userID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `watchlist`
--

INSERT INTO `watchlist` (`ID`, `vehicleID`, `userID`) VALUES
(8, 88, 26);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bidder`
--
ALTER TABLE `bidder`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `vehicleID` (`vehicleID`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `confirmbid`
--
ALTER TABLE `confirmbid`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `vehicleID` (`vehicleID`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `farmer`
--
ALTER TABLE `farmer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`login_details_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `vehicleID` (`vehicleID`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `vehicleID` (`vehicleID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `catagory` (`catagory`);

--
-- Indexes for table `vehicledetails`
--
ALTER TABLE `vehicledetails`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `vehicleID` (`vehicleID`);

--
-- Indexes for table `vehicleimage`
--
ALTER TABLE `vehicleimage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `vehicleID` (`vehicleID`);

--
-- Indexes for table `watchlist`
--
ALTER TABLE `watchlist`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `vehicleID` (`vehicleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bidder`
--
ALTER TABLE `bidder`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `confirmbid`
--
ALTER TABLE `confirmbid`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `farmer`
--
ALTER TABLE `farmer`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `login_details`
--
ALTER TABLE `login_details`
  MODIFY `login_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `vehicledetails`
--
ALTER TABLE `vehicledetails`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `vehicleimage`
--
ALTER TABLE `vehicleimage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `watchlist`
--
ALTER TABLE `watchlist`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `confirmbid`
--
ALTER TABLE `confirmbid`
  ADD CONSTRAINT `confirmbid_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `confirmbid_ibfk_2` FOREIGN KEY (`vehicleID`) REFERENCES `vehicle` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
