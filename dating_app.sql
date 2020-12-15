-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 15, 2020 at 02:05 PM
-- Server version: 5.7.32-0ubuntu0.16.04.1
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dating_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `abuse_reports`
--

CREATE TABLE `abuse_reports` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `for_users__id` int(10) UNSIGNED NOT NULL,
  `by_users__id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(255) NOT NULL,
  `moderator_remarks` varchar(255) DEFAULT NULL,
  `moderated_by_users__id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `abuse_reports`
--

INSERT INTO `abuse_reports` (`_id`, `_uid`, `created_at`, `updated_at`, `status`, `for_users__id`, `by_users__id`, `reason`, `moderator_remarks`, `moderated_by_users__id`) VALUES
(1, '326536e1-e446-442d-8cb8-737301e36f55', '2020-12-15 07:41:17', '2020-12-15 07:41:17', 2, 3, 1, 'DFR', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `__data` text,
  `entity_type` tinyint(3) UNSIGNED DEFAULT NULL,
  `project_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Short description',
  `action_type` tinyint(3) UNSIGNED DEFAULT NULL COMMENT 'Create, Update, Delete',
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `user_role_id` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`_id`, `created_at`, `user_id`, `__data`, `entity_type`, `project_id`, `action_type`, `entity_id`, `user_role_id`) VALUES
(1, '2020-12-14 09:52:28', 1, 'chapter 247 Admin store profile picture.', NULL, NULL, NULL, NULL, NULL),
(2, '2020-12-14 09:52:40', 1, 'chapter 247 Admin update cover picture.', NULL, NULL, NULL, NULL, NULL),
(3, '2020-12-14 09:52:51', 1, 'chapter 247 Admin upload new photos.', NULL, NULL, NULL, NULL, NULL),
(4, '2020-12-14 09:54:34', 2, 'Shivam Jain update profile picture.', NULL, NULL, NULL, NULL, NULL),
(5, '2020-12-14 09:54:39', 2, 'Shivam Jain update cover picture.', NULL, NULL, NULL, NULL, NULL),
(6, '2020-12-14 09:57:31', 1, 'Shivam Jain user verified.', NULL, NULL, NULL, NULL, NULL),
(7, '2020-12-14 10:05:26', 1, 'Site configuration settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(8, '2020-12-14 10:05:45', 2, 'Shivam Jain update cover picture.', NULL, NULL, NULL, NULL, NULL),
(9, '2020-12-14 10:12:00', 1, '50 fake users created.', NULL, NULL, NULL, NULL, NULL),
(10, '2020-12-14 10:12:00', 1, '50 fake users authority created.', NULL, NULL, NULL, NULL, NULL),
(11, '2020-12-14 10:12:00', 1, '50 fake users profiles created.', NULL, NULL, NULL, NULL, NULL),
(12, '2020-12-14 10:12:20', 1, 'Clarabelle Erdman profile visited.', NULL, NULL, NULL, NULL, NULL),
(13, '2020-12-14 10:12:24', 1, 'Clarabelle Erdman profile liked.', NULL, NULL, NULL, NULL, NULL),
(14, '2020-12-14 10:12:32', 1, 'Tremayne Baumbach profile visited.', NULL, NULL, NULL, NULL, NULL),
(15, '2020-12-14 10:12:34', 1, 'Tremayne Baumbach profile liked.', NULL, NULL, NULL, NULL, NULL),
(16, '2020-12-14 10:13:52', 1, 'User settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(17, '2020-12-14 10:15:58', 1, 'Site configuration settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(18, '2020-12-14 10:17:46', 1, '5 fake users created.', NULL, NULL, NULL, NULL, NULL),
(19, '2020-12-14 10:17:46', 1, '5 fake users authority created.', NULL, NULL, NULL, NULL, NULL),
(20, '2020-12-14 10:17:46', 1, '5 fake users profiles created.', NULL, NULL, NULL, NULL, NULL),
(21, '2020-12-14 10:22:49', 52, 'Clarabelle Erdman profile visited.', NULL, NULL, NULL, NULL, NULL),
(22, '2020-12-14 10:23:16', 52, 'User settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(23, '2020-12-14 10:25:36', 52, 'Shivam Jain profile visited.', NULL, NULL, NULL, NULL, NULL),
(24, '2020-12-14 10:25:39', 52, 'Shivam Jain profile liked.', NULL, NULL, NULL, NULL, NULL),
(25, '2020-12-14 10:25:55', 52, 'Booster activated by user Rico Champlin', NULL, NULL, NULL, NULL, NULL),
(26, '2020-12-14 10:26:08', 52, 'Clarabelle Erdman profile liked.', NULL, NULL, NULL, NULL, NULL),
(27, '2020-12-14 10:28:52', 1, 'Leonor Lowe profile visited.', NULL, NULL, NULL, NULL, NULL),
(28, '2020-12-14 10:28:54', 1, 'Leonor Lowe profile liked.', NULL, NULL, NULL, NULL, NULL),
(29, '2020-12-14 10:28:58', 1, 'Rico Champlin profile visited.', NULL, NULL, NULL, NULL, NULL),
(30, '2020-12-14 10:29:00', 1, 'Rico Champlin profile liked.', NULL, NULL, NULL, NULL, NULL),
(31, '2020-12-14 10:31:02', 1, 'Site configuration settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(32, '2020-12-14 10:31:46', 52, 'chapter 247 Admin profile visited.', NULL, NULL, NULL, NULL, NULL),
(33, '2020-12-14 11:04:10', 1, 'Site configuration settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(34, '2020-12-14 11:04:59', 1, 'Site configuration settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(35, '2020-12-14 11:05:40', 1, 'Jedidiah Koelpin profile visited.', NULL, NULL, NULL, NULL, NULL),
(36, '2020-12-14 11:09:37', 1, 'dfcxv gift created. ', NULL, NULL, NULL, NULL, NULL),
(37, '2020-12-14 11:09:57', 1, 'second faq page created. ', NULL, NULL, NULL, NULL, NULL),
(38, '2020-12-14 11:10:30', 1, 'qwr4t package created. ', NULL, NULL, NULL, NULL, NULL),
(39, '2020-12-14 11:12:11', 1, 'Vicky Adams profile liked.', NULL, NULL, NULL, NULL, NULL),
(40, '2020-12-14 11:12:12', 1, 'Quentin Denesik profile liked.', NULL, NULL, NULL, NULL, NULL),
(41, '2020-12-14 11:12:13', 1, 'Jedidiah Koelpin profile liked.', NULL, NULL, NULL, NULL, NULL),
(42, '2020-12-14 11:12:16', 1, 'Isaias Brekke profile liked.', NULL, NULL, NULL, NULL, NULL),
(43, '2020-12-14 11:12:17', 1, 'Shivam Jain profile liked.', NULL, NULL, NULL, NULL, NULL),
(44, '2020-12-14 11:12:18', 1, 'Joan Ernser profile liked.', NULL, NULL, NULL, NULL, NULL),
(45, '2020-12-14 11:12:19', 1, 'Bailee Tromp profile liked.', NULL, NULL, NULL, NULL, NULL),
(46, '2020-12-14 11:12:20', 1, 'Xander Nikolaus profile liked.', NULL, NULL, NULL, NULL, NULL),
(47, '2020-12-14 11:12:21', 1, 'Mireille Christiansen profile liked.', NULL, NULL, NULL, NULL, NULL),
(48, '2020-12-14 11:15:04', 1, 'Katelyn Gislason profile visited.', NULL, NULL, NULL, NULL, NULL),
(49, '2020-12-14 11:54:55', 1, 'Dominique Boyer profile liked.', NULL, NULL, NULL, NULL, NULL),
(50, '2020-12-14 11:54:56', 1, 'Randal Ratke profile liked.', NULL, NULL, NULL, NULL, NULL),
(51, '2020-12-14 11:54:58', 1, 'Nikita Emard profile Disliked.', NULL, NULL, NULL, NULL, NULL),
(52, '2020-12-14 11:55:15', 1, 'Rico Champlin profile liked.', NULL, NULL, NULL, NULL, NULL),
(53, '2020-12-14 11:58:17', 1, 'terms and condition page updated. ', NULL, NULL, NULL, NULL, NULL),
(54, '2020-12-14 12:59:02', 1, 'fvcz sticker created. ', NULL, NULL, NULL, NULL, NULL),
(55, '2020-12-14 13:17:39', 1, 'chapter 247 Admin update profile picture.', NULL, NULL, NULL, NULL, NULL),
(56, '2020-12-14 13:17:52', 1, 'User settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(57, '2020-12-14 13:18:30', 1, 'Shivam Jain profile visited.', NULL, NULL, NULL, NULL, NULL),
(58, '2020-12-14 13:19:37', 1, 'chapter 247 Admin update own user profile.', NULL, NULL, NULL, NULL, NULL),
(59, '2020-12-14 13:19:41', 1, 'chapter 247 Admin update own user profile.', NULL, NULL, NULL, NULL, NULL),
(60, '2020-12-14 13:19:44', 1, 'chapter 247 Admin update own user profile.', NULL, NULL, NULL, NULL, NULL),
(61, '2020-12-14 13:19:47', 1, 'chapter 247 Admin update own user profile.', NULL, NULL, NULL, NULL, NULL),
(62, '2020-12-14 13:19:52', 1, 'chapter 247 Admin update own user profile.', NULL, NULL, NULL, NULL, NULL),
(63, '2020-12-14 13:19:58', 1, 'chapter 247 Admin update own user profile.', NULL, NULL, NULL, NULL, NULL),
(64, '2020-12-14 13:20:13', 1, 'chapter 247 Admin update own user profile.', NULL, NULL, NULL, NULL, NULL),
(65, '2020-12-14 13:20:30', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(66, '2020-12-14 13:20:32', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(67, '2020-12-14 13:20:34', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(68, '2020-12-14 13:20:36', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(69, '2020-12-14 13:20:44', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(70, '2020-12-14 13:20:46', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(71, '2020-12-14 13:20:50', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(72, '2020-12-14 13:20:54', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(73, '2020-12-14 13:20:59', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(74, '2020-12-14 13:21:06', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(75, '2020-12-14 13:21:08', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(76, '2020-12-14 13:21:14', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(77, '2020-12-14 13:21:17', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(78, '2020-12-14 13:21:21', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(79, '2020-12-14 13:21:22', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(80, '2020-12-14 13:21:27', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(81, '2020-12-14 13:21:32', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(82, '2020-12-14 13:21:40', 1, 'chapter 247 Admin update own user settings.', NULL, NULL, NULL, NULL, NULL),
(83, '2020-12-15 04:31:18', 1, 'Edwina Howell profile visited.', NULL, NULL, NULL, NULL, NULL),
(84, '2020-12-15 04:32:07', 1, 'User settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(85, '2020-12-15 04:32:11', 1, 'User settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(86, '2020-12-15 04:32:15', 1, 'User settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(87, '2020-12-15 04:32:18', 1, 'User settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(88, '2020-12-15 04:33:20', 1, 'Booster activated by user chapter 247 Admin', NULL, NULL, NULL, NULL, NULL),
(89, '2020-12-15 04:47:48', 1, 'chapter 247 Admin upload new photos.', NULL, NULL, NULL, NULL, NULL),
(90, '2020-12-15 04:48:05', 1, 'chapter 247 Admin upload new photos.', NULL, NULL, NULL, NULL, NULL),
(91, '2020-12-15 05:58:11', 1, 'Site configuration settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(92, '2020-12-15 06:00:11', 59, 'Shivam Jain update profile picture.', NULL, NULL, NULL, NULL, NULL),
(93, '2020-12-15 06:00:14', 59, 'Shivam Jain update cover picture.', NULL, NULL, NULL, NULL, NULL),
(94, '2020-12-15 06:08:39', 1, 'Shivam Jain user info updated.', NULL, NULL, NULL, NULL, NULL),
(95, '2020-12-15 06:08:47', 1, 'Shivam Jain profile visited.', NULL, NULL, NULL, NULL, NULL),
(96, '2020-12-15 06:14:58', 1, 'User settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(97, '2020-12-15 06:40:41', 3, 'chapter 247 Admin profile visited.', NULL, NULL, NULL, NULL, NULL),
(98, '2020-12-15 06:53:41', 2, 'Shivam Jain update profile picture.', NULL, NULL, NULL, NULL, NULL),
(99, '2020-12-15 06:56:13', 1, 'Bertrand Connelly profile Disliked.', NULL, NULL, NULL, NULL, NULL),
(100, '2020-12-15 06:59:42', 1, 'fvde package created. ', NULL, NULL, NULL, NULL, NULL),
(101, '2020-12-15 07:03:24', 1, 'Site configuration settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(102, '2020-12-15 07:06:30', 3, 'Jedidiah Koelpin profile liked.', NULL, NULL, NULL, NULL, NULL),
(103, '2020-12-15 07:06:31', 3, 'Rico Champlin profile Disliked.', NULL, NULL, NULL, NULL, NULL),
(104, '2020-12-15 07:06:47', 3, 'Isidro VonRueden profile liked.', NULL, NULL, NULL, NULL, NULL),
(105, '2020-12-15 07:06:49', 3, 'Nestor Adams profile Disliked.', NULL, NULL, NULL, NULL, NULL),
(106, '2020-12-15 07:08:03', 3, 'chapter 247 Admin profile liked.', NULL, NULL, NULL, NULL, NULL),
(107, '2020-12-15 07:09:23', 1, 'terms and condition page updated. ', NULL, NULL, NULL, NULL, NULL),
(108, '2020-12-15 07:13:05', 1, 'User settings stored / updated.', NULL, NULL, NULL, NULL, NULL),
(109, '2020-12-15 07:40:10', 1, 'Chapter 247 Admin update own user info.', NULL, NULL, NULL, NULL, NULL),
(110, '2020-12-15 07:40:29', 1, 'Nikita Emard profile visited.', NULL, NULL, NULL, NULL, NULL),
(111, '2020-12-15 07:41:09', 1, 'Christop Thiel profile visited.', NULL, NULL, NULL, NULL, NULL),
(112, '2020-12-15 07:41:40', 1, 'Abuse Report Moderated by Chapter 247 Admin', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL COMMENT 'Sent,delivered,seen/read',
  `message` varchar(500) CHARACTER SET utf8mb4 NOT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL COMMENT 'Text,image,emoji,video,audio, audio call init, video call init, giphy, accept message. Declined message',
  `from_users__id` int(10) UNSIGNED NOT NULL,
  `to_users__id` int(10) UNSIGNED NOT NULL,
  `items__id` int(10) UNSIGNED DEFAULT NULL,
  `users__id` int(10) UNSIGNED NOT NULL,
  `integrity_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`_id`, `_uid`, `created_at`, `updated_at`, `status`, `message`, `type`, `from_users__id`, `to_users__id`, `items__id`, `users__id`, `integrity_id`) VALUES
(1, '8641aaa0-5222-4e87-804a-d143d40828c3', '2020-12-14 10:22:55', '2020-12-14 10:22:55', 1, 'Message Request', 9, 52, 11, NULL, 52, 'fca19668-8a06-4943-9e88-2d681430e124'),
(2, '718180c2-0a9e-4988-a09b-cd860290a291', '2020-12-14 10:22:55', '2020-12-14 10:22:55', 1, 'Message Request', 9, 52, 11, NULL, 11, 'fca19668-8a06-4943-9e88-2d681430e124'),
(3, 'e6de10cd-14c8-41f8-9fb0-f2b64019a404', '2020-12-14 10:22:55', '2020-12-14 10:22:55', 1, 'yh c', 1, 52, 11, NULL, 52, 'f4da6bf3-3618-4b9d-96df-b2e9b8dac9b4'),
(4, 'da8abffd-dfba-44f1-91a0-6eaabdfd2499', '2020-12-14 10:22:55', '2020-12-14 10:22:55', 1, 'yh c', 1, 52, 11, NULL, 11, 'f4da6bf3-3618-4b9d-96df-b2e9b8dac9b4'),
(5, '46dec12c-47ae-434c-b071-e7d4942b3833', '2020-12-14 10:25:47', '2020-12-14 10:25:47', 1, 'Message Request', 9, 52, 2, NULL, 52, '256625bb-7784-4929-b8ab-e4bca8191863'),
(6, 'de6e64f7-d2ad-40c2-bd07-9410e80237c9', '2020-12-14 10:25:47', '2020-12-14 10:25:47', 1, 'Message Request', 9, 52, 2, NULL, 2, '256625bb-7784-4929-b8ab-e4bca8191863'),
(7, 'c43a90af-7014-4c3b-9a52-47bed412c9a3', '2020-12-14 10:25:47', '2020-12-14 10:25:47', 1, 'fch', 1, 52, 2, NULL, 52, '5ae3ff15-99b6-4590-9db6-f0820981122a'),
(8, '760fcebe-33a7-416e-92eb-3fa28b1fc247', '2020-12-14 10:25:47', '2020-12-14 10:25:47', 1, 'fch', 1, 52, 2, NULL, 2, '5ae3ff15-99b6-4590-9db6-f0820981122a'),
(9, 'e2539117-824d-481d-93ab-325e25f33136', '2020-12-14 11:05:49', '2020-12-14 11:05:49', 1, 'Message Request', 9, 1, 57, NULL, 1, '14265b59-3eca-40da-bf9a-c5682dcba5b2'),
(10, 'aaa2530f-3e02-435b-b326-b19f8aabc4d5', '2020-12-14 11:05:49', '2020-12-14 11:05:49', 1, 'Message Request', 9, 1, 57, NULL, 57, '14265b59-3eca-40da-bf9a-c5682dcba5b2'),
(11, '2d7161a4-bccb-4352-a660-b73e39f6d2e2', '2020-12-14 11:05:49', '2020-12-14 11:05:49', 1, 'vdfc', 1, 1, 57, NULL, 1, '5dc78e3b-876f-4f5d-a5cf-3702f4529cd0'),
(12, 'f0564de0-673f-4bfe-a233-1695b93ee101', '2020-12-14 11:05:49', '2020-12-14 11:05:49', 1, 'vdfc', 1, 1, 57, NULL, 57, '5dc78e3b-876f-4f5d-a5cf-3702f4529cd0'),
(13, '7a9eed49-8498-4ce3-86f1-e83b42b8485a', '2020-12-14 11:15:09', '2020-12-14 11:15:09', 1, 'Message Request', 9, 1, 36, NULL, 1, '12e2baee-cedf-48e8-b12a-52f26aa103ab'),
(14, '619795ff-1ec5-4287-89c1-2f5f6c6ae070', '2020-12-14 11:15:09', '2020-12-14 11:15:09', 1, 'Message Request', 9, 1, 36, NULL, 36, '12e2baee-cedf-48e8-b12a-52f26aa103ab'),
(15, '15451892-d799-46ed-bd32-ec9b57219601', '2020-12-14 11:15:09', '2020-12-14 11:15:09', 1, 'ewdsa', 1, 1, 36, NULL, 1, '7b0e3e1e-eae5-4a4a-8ca9-e14b4f68772a'),
(17, 'f6618c5c-6e60-402f-a356-7455252c5ab4', '2020-12-14 11:15:14', '2020-12-14 11:15:14', 1, 'edEAAS', 1, 1, 36, NULL, 1, '70767ee0-c83f-4234-a82f-9ecbf840eec1'),
(19, 'f7f92cc6-1a1c-4ed1-908e-f6edc245bb99', '2020-12-14 11:56:11', '2020-12-14 11:56:11', 1, 'Message Request', 9, 1, 52, NULL, 1, 'ea604c08-bd29-49a5-b01b-8378482bc93a'),
(20, '5591d0e9-eda7-47d7-b71a-4c37c4e81456', '2020-12-14 11:56:11', '2020-12-14 11:56:11', 1, 'Message Request', 9, 1, 52, NULL, 52, 'ea604c08-bd29-49a5-b01b-8378482bc93a'),
(21, '4584ebdb-64ef-4cc0-bd00-97a978c5cd2d', '2020-12-14 11:56:11', '2020-12-14 11:56:11', 1, 'dfg', 1, 1, 52, NULL, 1, 'fa7d669e-af9b-4063-87f4-acf6ad393262'),
(22, '44b42dc9-df99-4c5d-a098-dd6c10dd96d4', '2020-12-14 11:56:11', '2020-12-14 11:56:11', 1, 'dfg', 1, 1, 52, NULL, 52, 'fa7d669e-af9b-4063-87f4-acf6ad393262'),
(23, 'ab48c3c0-53e4-4068-9d13-66b7d09a4aab', '2020-12-14 13:08:36', '2020-12-14 13:08:36', 1, 'dfhbdfg', 1, 1, 36, NULL, 1, 'e72c4084-a25a-4475-994a-c25ad335fcc1'),
(25, 'f7c058c4-fcef-4be7-afb0-1c85a44cf1a3', '2020-12-14 13:08:39', '2020-12-14 13:08:39', 1, 'xfhb bg', 1, 1, 36, NULL, 1, '1bfaafc6-19b5-47b9-b14e-dca31873a2b5'),
(27, '01dfe7f1-4887-4388-838e-981106ffa67d', '2020-12-14 13:18:39', '2020-12-14 13:18:39', 1, 'Message Request', 9, 1, 2, NULL, 1, '58ab7a85-792d-4d49-b72c-764411be547c'),
(28, '857fd42b-6570-4b98-97a3-8304f0caf106', '2020-12-14 13:18:39', '2020-12-14 13:18:39', 1, 'Message Request', 9, 1, 2, NULL, 2, '58ab7a85-792d-4d49-b72c-764411be547c'),
(29, '4eda4540-63cd-4ee0-8ade-4b3be9d839f8', '2020-12-14 13:18:39', '2020-12-14 13:18:39', 1, 'cool pic mann !', 1, 1, 2, NULL, 1, '34260621-664e-4b03-a53b-706c685e0ed7'),
(30, '25516fcc-4e43-4b58-8418-a790ff1c5f75', '2020-12-14 13:18:39', '2020-12-14 13:18:39', 1, 'cool pic mann !', 1, 1, 2, NULL, 2, '34260621-664e-4b03-a53b-706c685e0ed7'),
(31, '28a1dcf0-fe18-4cc9-afeb-2659ff4d8204', '2020-12-15 04:31:25', '2020-12-15 04:31:25', 1, 'Message Request', 9, 1, 4, NULL, 1, '7d20ba73-1584-4531-9c04-3c47da170a57'),
(32, '63d32a8f-4f7b-4f91-9ebd-64b8986b65fc', '2020-12-15 04:31:25', '2020-12-15 04:31:25', 1, 'Message Request', 9, 1, 4, NULL, 4, '7d20ba73-1584-4531-9c04-3c47da170a57'),
(33, '12a26223-2820-4cb9-9d81-d67adef4acd0', '2020-12-15 04:31:25', '2020-12-15 04:31:25', 1, 'efg', 1, 1, 4, NULL, 1, 'd6210f1e-e9ef-4d20-a6b3-a83655d18767');

-- --------------------------------------------------------

--
-- Table structure for table `configurations`
--

CREATE TABLE `configurations` (
  `_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `name` varchar(45) NOT NULL,
  `value` text,
  `data_type` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configurations`
--

INSERT INTO `configurations` (`_id`, `created_at`, `updated_at`, `name`, `value`, `data_type`) VALUES
(1, '2020-12-14 10:05:26', '2020-12-14 10:05:26', 'allow_google_map', '1', 2),
(2, '2020-12-14 10:05:26', '2020-12-14 10:05:26', 'google_map_key', 'AIzaSyCbKQ_s3PKlRsBUxNSId-7w9ZGMdUs7NO0', 1),
(3, '2020-12-14 10:31:02', '2020-12-14 10:31:02', 'enable_paypal', '1', 2),
(4, '2020-12-14 10:31:02', '2020-12-14 10:31:02', 'use_test_paypal_checkout', '1', 2),
(5, '2020-12-14 10:31:02', '2020-12-14 10:31:02', 'paypal_checkout_testing_client_id', 'AcZQgrjV0wrsJXUFpyN7oNFjVOIFNJ663874xsZbcGQWHWhPR9ZONWIN9EhIafYXFn1Nkh-jUGVlCKbz', 1),
(6, '2020-12-14 10:31:02', '2020-12-14 10:31:02', 'paypal_checkout_testing_secret_key', 'EK9A9mZ3EbZkA_TCRmdvLvs_40mIg5-U-svV3kGLEy65Lr88nRmEhIs93N91zDTwJJgJW0NNoRzaRsae', 1),
(7, '2020-12-14 11:04:10', '2020-12-14 11:04:10', 'enable_stripe', '1', 2),
(8, '2020-12-14 11:04:10', '2020-12-14 11:04:10', 'use_test_stripe', '1', 2),
(9, '2020-12-14 11:04:10', '2020-12-14 11:04:10', 'stripe_testing_secret_key', 'sk_test_51HooUMEENLBkKA9ULKoCIWtGpkgwW5Fb5tF5eMZkb1GDZszhJ5UEc2N28jyEht6JDPxTPD9Mg3XavotEiNvyuD1200m5OLE3Pc', 1),
(10, '2020-12-14 11:04:10', '2020-12-14 11:04:10', 'stripe_testing_publishable_key', 'pk_test_51HooUMEENLBkKA9UwHZlMjww5n3qRXQL7yQfx6sqM1pOEfRYyGmwj2y6B2uLgiPzXZoGgRfBNolcW2ELRaSW5L4v00mXXCrcB3', 1),
(11, '2020-12-14 11:04:59', '2020-12-14 11:04:59', 'plan_duration', '{"one_day":{"enable":true,"price":"1"},"one_week":{"enable":true,"price":"5"},"one_month":{"enable":true,"price":"20"},"half_year":{"enable":true,"price":"60"},"year":{"enable":true,"price":"80"},"life_time":{"enable":true,"price":"100"}}', 4),
(12, '2020-12-15 07:03:24', '2020-12-15 07:03:24', 'header_advertisement', '{"title":"728 X 90 (Appear in Header)","height":"728","width":"90","status":"true","content":"fgh"}', 4),
(13, '2020-12-15 07:03:24', '2020-12-15 07:03:24', 'footer_advertisement', '{"title":"728 X 90 (Appear in Footer)","height":"728","width":"90","status":"true","content":"fbg"}', 4),
(14, '2020-12-15 07:03:24', '2020-12-15 07:03:24', 'user_sidebar_advertisement', '{"title":"200 X 200 (Appear in User Sidebar)","height":"200","width":"200","status":"true","content":"fdg"}', 4);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `_id` smallint(5) UNSIGNED NOT NULL,
  `iso_code` char(2) DEFAULT NULL,
  `name_capitalized` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `iso3_code` char(3) DEFAULT NULL,
  `iso_num_code` smallint(6) DEFAULT NULL,
  `phone_code` smallint(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`_id`, `iso_code`, `name_capitalized`, `name`, `iso3_code`, `iso_num_code`, `phone_code`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 243),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 7),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263),
(240, 'RS', 'SERBIA', 'Serbia', 'SRB', 688, 381),
(241, 'AP', 'ASIA PACIFIC REGION', 'Asia / Pacific Region', '0', 0, 0),
(242, 'ME', 'MONTENEGRO', 'Montenegro', 'MNE', 499, 382),
(243, 'AX', 'ALAND ISLANDS', 'Aland Islands', 'ALA', 248, 358),
(244, 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', 'BES', 535, 599),
(245, 'CW', 'CURACAO', 'Curacao', 'CUW', 531, 599),
(246, 'GG', 'GUERNSEY', 'Guernsey', 'GGY', 831, 44),
(247, 'IM', 'ISLE OF MAN', 'Isle of Man', 'IMN', 833, 44),
(248, 'JE', 'JERSEY', 'Jersey', 'JEY', 832, 44),
(249, 'XK', 'KOSOVO', 'Kosovo', '---', 0, 381),
(250, 'BL', 'SAINT BARTHELEMY', 'Saint Barthelemy', 'BLM', 652, 590),
(251, 'MF', 'SAINT MARTIN', 'Saint Martin', 'MAF', 663, 590),
(252, 'SX', 'SINT MAARTEN', 'Sint Maarten', 'SXM', 534, 1),
(253, 'SS', 'SOUTH SUDAN', 'South Sudan', 'SSD', 728, 211);

-- --------------------------------------------------------

--
-- Table structure for table `credit_packages`
--

CREATE TABLE `credit_packages` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `credits` int(10) UNSIGNED NOT NULL,
  `price` decimal(13,4) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `users__id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `credit_packages`
--

INSERT INTO `credit_packages` (`_id`, `_uid`, `created_at`, `updated_at`, `status`, `title`, `credits`, `price`, `image`, `users__id`) VALUES
(1, '8a96e60f-78cb-4081-a88c-b1f27c2f8317', '2020-12-14 11:10:30', '2020-12-14 11:10:30', 1, 'qwr4t', 12, '12.0000', 'modi-physiocare-plantar-fasciitis-heel-pain.jpg', 1),
(2, 'da1e9256-94b4-4613-82ab-cf1ebd297bb2', '2020-12-15 06:59:42', '2020-12-15 06:59:42', 2, 'fvde', 55, '50.0000', '1-ixw0qnqgsiarjmutolfxka.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `credit_wallet_transactions`
--

CREATE TABLE `credit_wallet_transactions` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `users__id` int(10) UNSIGNED NOT NULL,
  `credits` int(11) NOT NULL COMMENT '- (minus) for debit & + for credit',
  `financial_transactions__id` int(10) UNSIGNED DEFAULT NULL,
  `description` varchar(150) DEFAULT NULL,
  `credit_type` tinyint(3) UNSIGNED DEFAULT NULL COMMENT 'Purchased, bonuses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `credit_wallet_transactions`
--

INSERT INTO `credit_wallet_transactions` (`_id`, `_uid`, `created_at`, `updated_at`, `status`, `users__id`, `credits`, `financial_transactions__id`, `description`, `credit_type`) VALUES
(1, '72270c0c-b31b-4c1c-9e48-06b926e84a9b', '2020-12-14 10:25:55', '2020-12-14 10:25:55', 1, 52, 0, NULL, NULL, NULL),
(2, '1fb92d0b-602c-4f4a-97d9-4f35536c50eb', '2020-12-14 11:11:18', '2020-12-14 11:11:18', 1, 1, 12, 1, NULL, 2),
(3, '87b3341b-5948-40ae-999f-80582330bc2a', '2020-12-14 11:11:33', '2020-12-14 11:11:33', 1, 1, -5, NULL, NULL, NULL),
(4, 'fb21dfe5-4c8e-4526-a764-e4946106aab4', '2020-12-15 04:33:20', '2020-12-15 04:33:20', 1, 1, 0, NULL, NULL, NULL),
(5, '173e42a3-8897-43fb-aa28-d4f40399d05a', '2020-12-15 07:00:41', '2020-12-15 07:00:41', 1, 3, 12, 2, NULL, 2),
(6, '531dcfa5-0457-4a3e-bf57-b27ea32e13c9', '2020-12-15 07:00:53', '2020-12-15 07:00:53', 1, 3, -1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_change_requests`
--

CREATE TABLE `email_change_requests` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `new_email` varchar(255) NOT NULL,
  `activation_key` varchar(255) NOT NULL,
  `users__id` int(10) UNSIGNED NOT NULL,
  `user_authorities__id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `financial_transactions`
--

CREATE TABLE `financial_transactions` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `amount` decimal(13,4) DEFAULT NULL,
  `__data` text,
  `users__id` int(10) UNSIGNED DEFAULT NULL,
  `method` varchar(15) NOT NULL,
  `currency_code` varchar(5) DEFAULT NULL,
  `is_test` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `financial_transactions`
--

INSERT INTO `financial_transactions` (`_id`, `_uid`, `created_at`, `updated_at`, `status`, `amount`, `__data`, `users__id`, `method`, `currency_code`, `is_test`) VALUES
(1, 'b4b9d659-8c16-48ce-bd33-b13fafbff68a', '2020-12-14 11:11:18', '2020-12-14 11:11:18', 2, '12.0000', '{"rawPaymentData":"{\\"id\\":\\"9EL962776S848811S\\",\\"intent\\":\\"CAPTURE\\",\\"status\\":\\"COMPLETED\\",\\"purchase_units\\":[{\\"reference_id\\":\\"default\\",\\"amount\\":{\\"currency_code\\":\\"USD\\",\\"value\\":\\"12.00\\"},\\"payee\\":{\\"email_address\\":\\"sb-jojm03739749@business.example.com\\",\\"merchant_id\\":\\"SXU5EW3XKJVV4\\"},\\"shipping\\":{\\"name\\":{\\"full_name\\":\\"MANSI GOYAL\\"},\\"address\\":{\\"address_line_1\\":\\"123 Main ST\\",\\"admin_area_2\\":\\"Seattle\\",\\"admin_area_1\\":\\"WA\\",\\"postal_code\\":\\"10022\\",\\"country_code\\":\\"US\\"}},\\"payments\\":{\\"captures\\":[{\\"id\\":\\"7HM965995V784332U\\",\\"status\\":\\"COMPLETED\\",\\"amount\\":{\\"currency_code\\":\\"USD\\",\\"value\\":\\"12.00\\"},\\"final_capture\\":true,\\"seller_protection\\":{\\"status\\":\\"ELIGIBLE\\",\\"dispute_categories\\":[\\"ITEM_NOT_RECEIVED\\",\\"UNAUTHORIZED_TRANSACTION\\"]},\\"seller_receivable_breakdown\\":{\\"gross_amount\\":{\\"currency_code\\":\\"USD\\",\\"value\\":\\"12.00\\"},\\"paypal_fee\\":{\\"currency_code\\":\\"USD\\",\\"value\\":\\"0.91\\"},\\"net_amount\\":{\\"currency_code\\":\\"USD\\",\\"value\\":\\"11.09\\"}},\\"links\\":[{\\"href\\":\\"https:\\\\\\/\\\\\\/api.sandbox.paypal.com\\\\\\/v2\\\\\\/payments\\\\\\/captures\\\\\\/7HM965995V784332U\\",\\"rel\\":\\"self\\",\\"method\\":\\"GET\\"},{\\"href\\":\\"https:\\\\\\/\\\\\\/api.sandbox.paypal.com\\\\\\/v2\\\\\\/payments\\\\\\/captures\\\\\\/7HM965995V784332U\\\\\\/refund\\",\\"rel\\":\\"refund\\",\\"method\\":\\"POST\\"},{\\"href\\":\\"https:\\\\\\/\\\\\\/api.sandbox.paypal.com\\\\\\/v2\\\\\\/checkout\\\\\\/orders\\\\\\/9EL962776S848811S\\",\\"rel\\":\\"up\\",\\"method\\":\\"GET\\"}],\\"create_time\\":\\"2020-12-14T11:11:14Z\\",\\"update_time\\":\\"2020-12-14T11:11:14Z\\"}]}}],\\"payer\\":{\\"name\\":{\\"given_name\\":\\"amit\\",\\"surname\\":\\"sharma\\"},\\"email_address\\":\\"amit.chapter247@gmail.com\\",\\"payer_id\\":\\"5JJ3MVBYHCFTN\\",\\"address\\":{\\"country_code\\":\\"US\\"}},\\"create_time\\":\\"2020-12-14T11:10:48Z\\",\\"update_time\\":\\"2020-12-14T11:11:14Z\\",\\"links\\":[{\\"href\\":\\"https:\\\\\\/\\\\\\/api.sandbox.paypal.com\\\\\\/v2\\\\\\/checkout\\\\\\/orders\\\\\\/9EL962776S848811S\\",\\"rel\\":\\"self\\",\\"method\\":\\"GET\\"}]}","packageName":"qwr4t"}', 1, 'PayPal', 'USD', 1),
(2, 'fdc40f15-6d52-4128-9d83-a65456f9f8e8', '2020-12-15 07:00:41', '2020-12-15 07:00:41', 2, '12.0000', '{"rawPaymentData":"{\\"id\\":\\"3YC79460RR235931B\\",\\"intent\\":\\"CAPTURE\\",\\"status\\":\\"COMPLETED\\",\\"purchase_units\\":[{\\"reference_id\\":\\"default\\",\\"amount\\":{\\"currency_code\\":\\"USD\\",\\"value\\":\\"12.00\\"},\\"payee\\":{\\"email_address\\":\\"sb-jojm03739749@business.example.com\\",\\"merchant_id\\":\\"SXU5EW3XKJVV4\\"},\\"shipping\\":{\\"name\\":{\\"full_name\\":\\"MANSI GOYAL\\"},\\"address\\":{\\"address_line_1\\":\\"123 Main ST\\",\\"admin_area_2\\":\\"Seattle\\",\\"admin_area_1\\":\\"WA\\",\\"postal_code\\":\\"10022\\",\\"country_code\\":\\"US\\"}},\\"payments\\":{\\"captures\\":[{\\"id\\":\\"3NA36009HE242944W\\",\\"status\\":\\"COMPLETED\\",\\"amount\\":{\\"currency_code\\":\\"USD\\",\\"value\\":\\"12.00\\"},\\"final_capture\\":true,\\"seller_protection\\":{\\"status\\":\\"ELIGIBLE\\",\\"dispute_categories\\":[\\"ITEM_NOT_RECEIVED\\",\\"UNAUTHORIZED_TRANSACTION\\"]},\\"seller_receivable_breakdown\\":{\\"gross_amount\\":{\\"currency_code\\":\\"USD\\",\\"value\\":\\"12.00\\"},\\"paypal_fee\\":{\\"currency_code\\":\\"USD\\",\\"value\\":\\"0.91\\"},\\"net_amount\\":{\\"currency_code\\":\\"USD\\",\\"value\\":\\"11.09\\"}},\\"links\\":[{\\"href\\":\\"https:\\\\\\/\\\\\\/api.sandbox.paypal.com\\\\\\/v2\\\\\\/payments\\\\\\/captures\\\\\\/3NA36009HE242944W\\",\\"rel\\":\\"self\\",\\"method\\":\\"GET\\"},{\\"href\\":\\"https:\\\\\\/\\\\\\/api.sandbox.paypal.com\\\\\\/v2\\\\\\/payments\\\\\\/captures\\\\\\/3NA36009HE242944W\\\\\\/refund\\",\\"rel\\":\\"refund\\",\\"method\\":\\"POST\\"},{\\"href\\":\\"https:\\\\\\/\\\\\\/api.sandbox.paypal.com\\\\\\/v2\\\\\\/checkout\\\\\\/orders\\\\\\/3YC79460RR235931B\\",\\"rel\\":\\"up\\",\\"method\\":\\"GET\\"}],\\"create_time\\":\\"2020-12-15T07:00:36Z\\",\\"update_time\\":\\"2020-12-15T07:00:36Z\\"}]}}],\\"payer\\":{\\"name\\":{\\"given_name\\":\\"amit\\",\\"surname\\":\\"sharma\\"},\\"email_address\\":\\"amit.chapter247@gmail.com\\",\\"payer_id\\":\\"5JJ3MVBYHCFTN\\",\\"address\\":{\\"country_code\\":\\"US\\"}},\\"create_time\\":\\"2020-12-15T07:00:14Z\\",\\"update_time\\":\\"2020-12-15T07:00:36Z\\",\\"links\\":[{\\"href\\":\\"https:\\\\\\/\\\\\\/api.sandbox.paypal.com\\\\\\/v2\\\\\\/checkout\\\\\\/orders\\\\\\/3YC79460RR235931B\\",\\"rel\\":\\"self\\",\\"method\\":\\"GET\\"}]}","packageName":"qwr4t"}', 3, 'PayPal', 'USD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL COMMENT 'Gift or Sticker',
  `title` varchar(150) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `normal_price` decimal(13,4) DEFAULT NULL,
  `premium_price` varchar(45) DEFAULT NULL,
  `user_authorities__id` int(10) UNSIGNED DEFAULT NULL,
  `premium_only` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`_id`, `_uid`, `created_at`, `updated_at`, `status`, `type`, `title`, `file_name`, `normal_price`, `premium_price`, `user_authorities__id`, `premium_only`) VALUES
(1, 'da24f956-3e87-4604-92d8-79e2044dbf46', '2020-12-14 11:09:37', '2020-12-14 11:09:37', 1, 1, 'dfcxv', '177-converted.png', '50.0000', '20', 1, NULL),
(2, '71cdce88-6468-4302-b7a2-ea4b87b68418', '2020-12-14 12:59:02', '2020-12-14 12:59:02', 1, 2, 'fvcz', '177-converted.png', '0.0000', '122', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `like_dislikes`
--

CREATE TABLE `like_dislikes` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `to_users__id` int(10) UNSIGNED NOT NULL,
  `by_users__id` int(10) UNSIGNED NOT NULL,
  `like` tinyint(3) UNSIGNED NOT NULL COMMENT '0 for dislike, 1 for like',
  `why` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `like_dislikes`
--

INSERT INTO `like_dislikes` (`_id`, `_uid`, `created_at`, `updated_at`, `status`, `to_users__id`, `by_users__id`, `like`, `why`) VALUES
(1, 'ac6135fa-eacb-495c-a2ca-9fac96b12d0c', '2020-12-14 10:12:24', '2020-12-14 10:12:24', 1, 11, 1, 1, NULL),
(2, '25cdc456-c09d-48e5-bd2b-3f5da06dca20', '2020-12-14 10:12:34', '2020-12-14 10:12:34', 1, 44, 1, 1, NULL),
(3, '8bd467e5-4bdb-4209-8504-598abfce93d8', '2020-12-14 10:25:39', '2020-12-14 10:25:39', 1, 2, 52, 1, NULL),
(4, 'd970d3d5-7f35-484f-bf66-7d85ad7d9a5d', '2020-12-14 10:26:08', '2020-12-14 10:26:08', 1, 11, 52, 1, NULL),
(5, 'b74a4c51-7a2b-416a-bb5f-4e8b132ec2ed', '2020-12-14 10:28:54', '2020-12-14 10:28:54', 1, 31, 1, 1, NULL),
(7, 'e50ab3ac-ff16-4090-b046-a61d875cb8dc', '2020-12-14 11:12:11', '2020-12-14 11:12:11', 1, 38, 1, 1, NULL),
(8, '660bb7cd-6c8b-425d-9eb4-00d91d173d83', '2020-12-14 11:12:12', '2020-12-14 11:12:12', 1, 16, 1, 1, NULL),
(9, '845d9781-1cac-49a8-a7eb-fe4da569d2dd', '2020-12-14 11:12:13', '2020-12-14 11:12:13', 1, 57, 1, 1, NULL),
(10, 'e85fbd94-ce29-423d-a786-5259598759c4', '2020-12-14 11:12:16', '2020-12-14 11:12:16', 1, 15, 1, 1, NULL),
(11, '93df3c09-f280-4cdf-a129-293aaf703e70', '2020-12-14 11:12:17', '2020-12-14 11:12:17', 1, 2, 1, 1, NULL),
(12, '1e15b3ba-da43-4352-a805-cedf3f8927fd', '2020-12-14 11:12:18', '2020-12-14 11:12:18', 1, 17, 1, 1, NULL),
(13, 'a71fd26d-3f68-49d2-b381-044aafc9a926', '2020-12-14 11:12:19', '2020-12-14 11:12:19', 1, 12, 1, 1, NULL),
(14, 'd0103d62-9c76-4c25-8e81-40311051d638', '2020-12-14 11:12:20', '2020-12-14 11:12:20', 1, 19, 1, 1, NULL),
(15, '1c12c99a-98d0-4c41-a8b8-b9446902a0bc', '2020-12-14 11:12:21', '2020-12-14 11:12:21', 1, 24, 1, 1, NULL),
(16, '7c20dc00-85a9-46d7-b2f9-26e905b870d4', '2020-12-14 11:54:55', '2020-12-14 11:54:55', 1, 39, 1, 1, NULL),
(17, 'e1138b9c-45d7-4e21-a56a-89c21576f24f', '2020-12-14 11:54:56', '2020-12-14 11:54:56', 1, 5, 1, 1, NULL),
(18, '840b7e02-5b0a-4ae3-b954-334fd69a5599', '2020-12-14 11:54:58', '2020-12-14 11:54:58', 1, 33, 1, 0, NULL),
(19, 'ba387922-bc1d-42f8-b38e-b376d4604db3', '2020-12-14 11:55:15', '2020-12-14 11:55:15', 1, 52, 1, 1, NULL),
(20, 'e7b0731a-fe69-4c57-a561-658b56e975c8', '2020-12-15 06:56:13', '2020-12-15 06:56:13', 1, 10, 1, 0, NULL),
(21, '4855b620-ad87-4d48-86db-449f8cb5d70f', '2020-12-15 07:06:30', '2020-12-15 07:06:30', 1, 57, 3, 1, NULL),
(22, '0ee3c1f4-96e0-44f1-a02b-b40cbf5add86', '2020-12-15 07:06:31', '2020-12-15 07:06:31', 1, 52, 3, 0, NULL),
(23, '0b845551-fbf9-48da-9fd1-ea65a305e05f', '2020-12-15 07:06:47', '2020-12-15 07:06:47', 1, 20, 3, 1, NULL),
(24, '32c4834e-948b-4b1f-bec5-5acfb9df3901', '2020-12-15 07:06:49', '2020-12-15 07:06:49', 1, 40, 3, 0, NULL),
(25, '8469331c-6235-48c0-88ec-fb70e9e4242e', '2020-12-15 07:08:03', '2020-12-15 07:08:03', 1, 1, 3, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `attempts` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `login_logs`
--

CREATE TABLE `login_logs` (
  `_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` tinyint(4) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `message` varchar(500) NOT NULL,
  `action` varchar(255) NOT NULL,
  `is_read` tinyint(3) UNSIGNED DEFAULT '0',
  `users__id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`_id`, `_uid`, `created_at`, `updated_at`, `status`, `message`, `action`, `is_read`, `users__id`) VALUES
(1, '90501539-7764-45e0-a248-57681c0252be', '2020-12-14 10:12:20', '2020-12-14 10:12:20', 1, 'Profile visited by chapter 247 Admin', 'http://127.0.0.1:8000/@admin', NULL, 11),
(2, '419fcf2f-f22d-4eeb-8dd1-7727aedb1d48', '2020-12-14 10:12:32', '2020-12-14 10:12:32', 1, 'Profile visited by chapter 247 Admin', 'http://127.0.0.1:8000/@admin', NULL, 44),
(3, 'cb90a658-df1b-46f1-b9c7-f54f7b4f6a96', '2020-12-14 10:22:49', '2020-12-14 10:22:49', 1, 'Profile visited by Rico Champlin', 'http://127.0.0.1:8000/@reba.marvin', NULL, 11),
(4, '858aee95-d322-4c34-89e3-908caeb71092', '2020-12-14 10:22:55', '2020-12-14 10:22:55', 1, 'Message request received from  Rico Champlin', 'http://127.0.0.1:8000/@reba.marvin', NULL, 11),
(5, 'dedac930-870d-4aa2-a815-ab04342c8c59', '2020-12-14 10:25:36', '2020-12-14 10:25:36', 1, 'Profile visited by Rico Champlin', 'http://127.0.0.1:8000/@reba.marvin', NULL, 2),
(6, 'c42b1ce1-413d-4161-b732-150b0290fdfd', '2020-12-14 10:25:47', '2020-12-14 10:25:47', 1, 'Message request received from  Rico Champlin', 'http://127.0.0.1:8000/@reba.marvin', NULL, 2),
(7, 'd08a4ca2-4b64-4416-b7e5-441542107ee4', '2020-12-14 10:28:52', '2020-12-14 10:28:52', 1, 'Profile visited by chapter 247 Admin', 'http://127.0.0.1:8000/@admin', NULL, 31),
(8, '00b5985d-16e3-4a14-b7e3-18b579e779a3', '2020-12-14 10:28:58', '2020-12-14 10:28:58', 1, 'Profile visited by chapter 247 Admin', 'http://127.0.0.1:8000/@admin', 1, 52),
(9, '2d5949c6-5a2c-4026-b38a-aee192d498f8', '2020-12-14 10:31:46', '2020-12-14 10:31:46', 1, 'Profile visited by Rico Champlin', 'http://127.0.0.1:8000/@reba.marvin', 1, 1),
(10, '94478537-ba5b-4e11-b639-c572f5cfeff6', '2020-12-14 11:05:40', '2020-12-14 11:05:40', 1, 'Profile visited by chapter 247 Admin', 'http://127.0.0.1:8000/@admin', NULL, 57),
(11, 'c6a16fb1-4aa6-41f6-83f8-678d2fd8656c', '2020-12-14 11:05:49', '2020-12-14 11:05:49', 1, 'Message request received from  chapter 247 Admin', 'http://127.0.0.1:8000/@admin', NULL, 57),
(12, '0b6dbbb6-8c9b-42da-a904-c263de229c1c', '2020-12-14 11:15:09', '2020-12-14 11:15:09', 1, 'Message request received from  chapter 247 Admin', 'http://127.0.0.1:8000/@admin', NULL, 36),
(13, '3eda2fe8-cf8f-4542-b6db-3aa56135070f', '2020-12-14 11:56:11', '2020-12-14 11:56:11', 1, 'Message request received from  chapter 247 Admin', 'http://127.0.0.1:8000/@admin', NULL, 52),
(14, '63e5b8c8-efa1-45cb-90ed-62cae66c5d71', '2020-12-14 13:18:39', '2020-12-14 13:18:39', 1, 'Message request received from  chapter 247 Admin', 'http://127.0.0.1:8000/@admin', NULL, 2),
(15, '23b1a3e8-3688-4740-b04a-23fdfacfc678', '2020-12-15 04:31:25', '2020-12-15 04:31:25', 1, 'Message request received from  chapter 247 Admin', 'http://127.0.0.1:8000/@admin', NULL, 4),
(16, '042f82ec-8ec9-4a3b-a59f-9191a86ec996', '2020-12-15 05:07:25', '2020-12-15 05:07:25', 1, 'Shivam Jain is Logged In. ', 'http://127.0.0.1:8000/@shivam12', NULL, 52),
(17, '859d430e-a112-44de-a505-0425a5b47c85', '2020-12-15 05:07:25', '2020-12-15 05:07:25', 1, 'Shivam Jain is Logged In. ', 'http://127.0.0.1:8000/@shivam12', 1, 1),
(18, 'bf9784ad-86ff-4511-9775-47dafa81f05a', '2020-12-15 06:40:41', '2020-12-15 06:40:41', 1, 'Profile visited by Christop Thiel', 'http://127.0.0.1:8000/@ynader', 1, 1),
(19, 'cdc140aa-2097-48d2-85de-23e7e497d075', '2020-12-15 06:53:28', '2020-12-15 06:53:28', 1, 'Shivam Jain is Logged In. ', 'http://127.0.0.1:8000/@shivam12', NULL, 52),
(20, '84a5a543-75d4-4454-922b-b695f393c179', '2020-12-15 06:53:28', '2020-12-15 06:53:28', 1, 'Shivam Jain is Logged In. ', 'http://127.0.0.1:8000/@shivam12', 1, 1),
(21, '29ac8682-06f4-477d-b277-142f0c108822', '2020-12-15 07:08:03', '2020-12-15 07:08:03', 1, 'Profile liked by Christop Thiel', 'http://127.0.0.1:8000/@ynader', 1, 1),
(22, '7a95d7ce-e73b-4580-aa14-69f12cbe2dd4', '2020-12-15 07:29:13', '2020-12-15 07:29:13', 1, 'chapter 247 Admin is Logged In. ', 'http://127.0.0.1:8000/@admin', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `show_in_menu` tinyint(3) UNSIGNED DEFAULT NULL,
  `content` text,
  `type` tinyint(3) UNSIGNED DEFAULT NULL,
  `users__id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`_id`, `_uid`, `created_at`, `updated_at`, `status`, `title`, `show_in_menu`, `content`, `type`, `users__id`) VALUES
(1, 'c879d0c4-e8a3-405c-b986-abaa415fb9bb', '2020-12-14 11:09:57', '2020-12-15 07:09:23', 1, 'terms and condition', NULL, 'this is dummy terms and conditioncb v vb', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profile_boosts`
--

CREATE TABLE `profile_boosts` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `for_users__id` int(10) UNSIGNED NOT NULL,
  `expiry_at` datetime NOT NULL,
  `credit_wallet_transactions__id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_boosts`
--

INSERT INTO `profile_boosts` (`_id`, `_uid`, `created_at`, `updated_at`, `status`, `for_users__id`, `expiry_at`, `credit_wallet_transactions__id`) VALUES
(1, '46f7f513-9a6b-480c-b500-8c58d54bab17', '2020-12-14 10:25:55', '2020-12-14 10:25:55', 1, 52, '2020-12-14 10:30:55', 1),
(2, '3caf87c0-91a9-4801-8038-df65c1e63ba4', '2020-12-15 04:33:20', '2020-12-15 04:33:20', 1, 1, '2020-12-15 04:38:20', 4);

-- --------------------------------------------------------

--
-- Table structure for table `profile_visitors`
--

CREATE TABLE `profile_visitors` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `to_users__id` int(10) UNSIGNED NOT NULL,
  `by_users__id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_visitors`
--

INSERT INTO `profile_visitors` (`_id`, `_uid`, `created_at`, `updated_at`, `status`, `to_users__id`, `by_users__id`) VALUES
(1, 'e3d3862c-bbd6-40f3-8a96-db20fbca650a', '2020-12-14 10:12:20', '2020-12-14 10:12:20', 1, 11, 1),
(2, '88c2e7c4-0127-41c8-9bdf-f9fd39e1e15c', '2020-12-14 10:12:32', '2020-12-14 10:12:32', 1, 44, 1),
(3, '7237b7fa-c636-4006-88f2-6bac8629f872', '2020-12-14 10:22:49', '2020-12-14 10:22:49', 1, 11, 52),
(4, '1f37a661-9b83-4d56-b104-e5607f1c9cc6', '2020-12-14 10:25:36', '2020-12-14 10:25:36', 1, 2, 52),
(5, 'a93f46ea-cddd-4320-b8a9-b047cd36cdf8', '2020-12-14 10:28:52', '2020-12-14 10:28:52', 1, 31, 1),
(6, '5f611624-ee54-461a-a6cd-3f8eca75682d', '2020-12-14 10:28:58', '2020-12-14 10:28:58', 1, 52, 1),
(7, '90b3e7d7-8e09-4c33-96fb-533ff9494ef1', '2020-12-14 10:31:46', '2020-12-14 10:31:46', 1, 1, 52),
(8, '64b76833-ee5f-47ef-833b-b62210932ad2', '2020-12-14 11:05:40', '2020-12-14 11:05:40', 1, 57, 1),
(9, 'ddb440ba-27ee-416e-94ba-00cacf2ad254', '2020-12-14 11:15:04', '2020-12-14 11:15:04', 1, 36, 1),
(10, 'c721e959-c1cf-407c-a2f0-4e8c2f5c800b', '2020-12-14 13:18:30', '2020-12-14 13:18:30', 1, 2, 1),
(11, '9507b952-7871-4417-be3d-5d1f7e84793c', '2020-12-15 04:31:18', '2020-12-15 04:31:18', 1, 4, 1),
(12, '2b170537-c3eb-45ce-b1d1-4c101e8afde3', '2020-12-15 06:08:47', '2020-12-15 06:08:47', 1, 58, 1),
(13, '7316f1b9-8fc9-4701-a37e-b043da00e787', '2020-12-15 06:40:41', '2020-12-15 06:40:41', 1, 1, 3),
(14, '51881758-197d-4ce5-9965-b2cfc6a6afc5', '2020-12-15 07:40:29', '2020-12-15 07:40:29', 1, 33, 1),
(15, '259f435a-4e78-4f19-abac-497239624842', '2020-12-15 07:41:09', '2020-12-15 07:41:09', 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `mobile_number` varchar(15) DEFAULT NULL,
  `timezone` varchar(45) DEFAULT NULL,
  `registered_via` varchar(15) DEFAULT NULL,
  `block_reason` varchar(255) DEFAULT NULL,
  `is_fake` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`_id`, `_uid`, `created_at`, `updated_at`, `username`, `email`, `password`, `status`, `remember_token`, `first_name`, `last_name`, `designation`, `mobile_number`, `timezone`, `registered_via`, `block_reason`, `is_fake`) VALUES
(1, '50ee1967-7341-4c3a-b071-f2ea0722b179', '2020-12-14 09:30:21', '2020-12-15 07:40:10', 'admin', 'firstadmin@domain.com', '$2y$10$0MFZ3GWf7JSlfFjpPQ0gke7Sq9lZ/s3yhKwCjY7z00mRAjwDnE4um', 1, '08UQPNraRqztGHtsHrcxFCtZQ7Je1Q9WvOhgD4PAsbkVOyAbxLbmxLeoTep3', 'Chapter 247', 'Admin', 'Admin', '9999999999', NULL, NULL, NULL, NULL),
(2, 'b41a842c-e351-4b0d-ac6a-6323c05b2785', '2020-12-14 09:54:15', '2020-12-14 09:54:15', 'shivam12', 'shivam.j@chapter247.com', '$2y$10$0MFZ3GWf7JSlfFjpPQ0gke7Sq9lZ/s3yhKwCjY7z00mRAjwDnE4um', 1, 'WGLYUSxYZTUPgCanr5BWw3lUrt0SPQmbVnLFJX0YsvnunWYMrnjXwy0qjeHS', 'Shivam', 'Jain', NULL, '89898989', NULL, NULL, NULL, NULL),
(3, '86535192-cfa6-463a-bd9a-9c4869e8f08f', '2020-12-14 10:12:57', '2020-12-15 07:41:40', 'ynader', 'hnicolas@example.net', '$2y$10$0MFZ3GWf7JSlfFjpPQ0gke7Sq9lZ/s3yhKwCjY7z00mRAjwDnE4um', 3, NULL, 'Christop', 'Thiel', NULL, '+3645017657442', 'Asia/Amman', NULL, 'Abuse report by admin', 1),
(4, '90fbf5a3-3c83-4955-86fa-dc86553f0168', '2020-12-14 10:13:57', '2020-12-14 10:13:57', 'kaitlin.reichel', 'schaefer.lulu@example.net', '$2y$10$0MFZ3GWf7JSlfFjpPQ0gke7Sq9lZ/s3yhKwCjY7z00mRAjwDnE4um', 1, NULL, 'Edwina', 'Howell', NULL, '+2052866656861', 'Asia/Dhaka', NULL, NULL, 1),
(5, '98273514-8d91-4394-8f1c-ca56b08f5ef9', '2020-12-14 10:14:57', '2020-12-14 10:14:57', 'kip.schmitt', 'addison66@example.net', '$2y$10$28RWOFAiV1A0PZzrMAKqouJSnvRfVFWw/F9tgacqcYtTsl7mot60C', 1, NULL, 'Randal', 'Ratke', NULL, '+5300556236229', 'Asia/Vladivostok', NULL, NULL, 1),
(6, '6a2ef421-7c24-4dc7-8c08-b08223e3e132', '2020-12-14 10:15:57', '2020-12-14 10:15:57', 'smith.delfina', 'maegan.erdman@example.com', '$2y$10$TVc2qq9pa6.rpqsZhmeXKOU2SdXcgiGnAV5Op4VlhcYCg0pqAYnfu', 1, NULL, 'Leonor', 'Renner', NULL, '+6676259251800', 'Pacific/Guadalcanal', NULL, NULL, 1),
(7, 'e72acd76-b99d-4d46-907f-0881b41cb87c', '2020-12-14 10:16:57', '2020-12-14 10:16:57', 'padberg.carissa', 'leora90@example.com', '$2y$10$A3dD6MknBPBJoLH7cl7gjOsdp4Hl7PFgIivGvkQrzyBeKge6ojY2e', 1, NULL, 'Marion', 'Schoen', NULL, '+8811755784609', 'Asia/Muscat', NULL, NULL, 1),
(8, '34813aa8-11f6-46bb-a6de-382118870cdd', '2020-12-14 10:17:57', '2020-12-14 10:17:57', 'collier.frances', 'mante.berniece@example.net', '$2y$10$mFsxQ3hrMTL1GhaRx/bgCOGPB5HpOu8zO9aa2OHFxWrznT2e8/qEW', 1, NULL, 'Brooklyn', 'Blanda', NULL, '+2036508825186', 'Europe/Samara', NULL, NULL, 1),
(9, '86cf25c4-6e2a-45a5-b94c-e23d99696d5f', '2020-12-14 10:18:57', '2020-12-14 10:18:57', 'verla.barrows', 'reichel.candida@example.net', '$2y$10$ems9uIKdEUYrN2OGU2v07eRcBkW6rFR/Iu9pn9AZpzP3oDwQEmMAS', 1, NULL, 'Bert', 'Pagac', NULL, '+2370765834999', 'America/Montserrat', NULL, NULL, 1),
(10, 'a5515430-67fb-4fe4-a05d-408ae0af21b4', '2020-12-14 10:19:58', '2020-12-14 10:19:58', 'max19', 'emanuel.beer@example.com', '$2y$10$C1vai7sN4Z8O70g0DNqkT.N7fS7ulGDFYqIzDxY5hVpy7gbXFDQ02', 1, NULL, 'Bertrand', 'Connelly', NULL, '+7622243163707', 'Asia/Chita', NULL, NULL, 1),
(11, 'd1c8de12-7a9d-4a04-8b45-7f24da3c2b17', '2020-12-14 10:20:58', '2020-12-14 10:20:58', 'alexanne05', 'rfahey@example.net', '$2y$10$1LAW116T2ABQ2Nz6ZGlG6OEN1L9mTmKNDyAPxfKJ2ZlozbKOtgBNC', 1, NULL, 'Clarabelle', 'Erdman', NULL, '+2451994548779', 'Indian/Chagos', NULL, NULL, 1),
(12, '3d4c983d-3b40-424a-b0a8-53791ccc97fa', '2020-12-14 10:21:58', '2020-12-14 10:21:58', 'hessel.pete', 'hagenes.arthur@example.net', '$2y$10$taG1rXjI4Y7qxj1UdDbS4Ovno/2shrNNur8RSSneJJnffrRz.hKHa', 1, NULL, 'Bailee', 'Tromp', NULL, '+1700556990165', 'America/Argentina/Catamarca', NULL, NULL, 1),
(13, '11ee369f-8977-4abd-8f64-5d6a7071e740', '2020-12-14 10:22:58', '2020-12-14 10:22:58', 'hackett.ola', 'roberts.candida@example.net', '$2y$10$WYoh/4HNgaiwVFSogBxg4uM6pgFQBPGt.gQEiIpD1sj5e53SiB1TO', 1, NULL, 'Jeremy', 'Hoppe', NULL, '+6543214782301', 'Africa/Conakry', NULL, NULL, 1),
(14, '053d4fa6-be3a-46d3-9218-d93ed7d32ebe', '2020-12-14 10:23:58', '2020-12-14 10:23:58', 'ksmitham', 'loyce66@example.net', '$2y$10$ijFR5pXfTKyLgC2LTORM.u6us4dw2G589GZR1Nt/M9jOj/GmvGxce', 1, NULL, 'Susanna', 'Borer', NULL, '+5399565273629', 'Indian/Mahe', NULL, NULL, 1),
(15, 'b01aae25-27d7-4f30-892b-f93d70ce5381', '2020-12-14 10:24:58', '2020-12-14 10:24:58', 'carmen26', 'farrell.marina@example.net', '$2y$10$.1.FnKh7QKPE/hHZJo0cpejR4rIJzsYuGh/jOd8Vrqm5bDvwb9CuG', 1, NULL, 'Isaias', 'Brekke', NULL, '+2349501622541', 'America/Argentina/Rio_Gallegos', NULL, NULL, 1),
(16, '185c6858-a892-4029-8dad-acafedde5f2f', '2020-12-14 10:25:58', '2020-12-14 10:25:58', 'goodwin.hassan', 'gaylord.jones@example.com', '$2y$10$NL/V8OqCyrwwX3dUjKZ8cOf6RDbdz4QGa49h5Mq4IIy9NkZgOdVOG', 1, NULL, 'Quentin', 'Denesik', NULL, '+5530195757767', 'America/Matamoros', NULL, NULL, 1),
(17, '60ab44f6-24bc-4e41-955e-91b2f2995503', '2020-12-14 10:26:58', '2020-12-14 10:26:58', 'bwilliamson', 'micaela.wiza@example.net', '$2y$10$VY0XAEBwFwUXwghLrDEMDecTeN0cO2/zgywbsRTiHvd73GqopxmYO', 1, NULL, 'Joan', 'Ernser', NULL, '+7592201481695', 'Africa/Bangui', NULL, NULL, 1),
(18, '5574c150-0199-407b-ba7d-8685fd8db025', '2020-12-14 10:27:58', '2020-12-14 10:27:58', 'tate94', 'terry31@example.com', '$2y$10$vJ4v7SIE.7kITXZ6QHVj6.l6C7K3iuFeIhRGn8ZnoNkGwAwZd3Q0.', 1, NULL, 'Zoe', 'Fay', NULL, '+8473100711771', 'Africa/Tripoli', NULL, NULL, 1),
(19, '0a2a086e-235c-486a-9480-6dad78997268', '2020-12-14 10:28:58', '2020-12-14 10:28:58', 'fredy67', 'hschoen@example.net', '$2y$10$RiXGAVKsXvTMepYO7zcKouGEd1kRaLKzbAI7lNGrt6z40CPtpKz76', 1, NULL, 'Xander', 'Nikolaus', NULL, '+3254939942079', 'Asia/Tokyo', NULL, NULL, 1),
(20, 'b132fa34-9104-42b6-9332-6ab21fdf65b0', '2020-12-14 10:29:58', '2020-12-14 10:29:58', 'tomasa80', 'hallie68@example.com', '$2y$10$Unm1Vhg05gVXFIQOmAdfLeNKoVlwVpahcQvdE2Bae9wQO0CC5T1au', 1, NULL, 'Isidro', 'VonRueden', NULL, '+2878927508737', 'Africa/Bujumbura', NULL, NULL, 1),
(21, 'a9ee5718-9dd2-4d57-a13b-75528b86d4db', '2020-12-14 10:30:58', '2020-12-14 10:30:58', 'xward', 'keeling.landen@example.net', '$2y$10$EUIelNZOQPA7I8eO.UpyLOMkO1P8TbarvGpV6jpzvScqZxnHHMl4O', 1, NULL, 'Marilyne', 'Homenick', NULL, '+3243418080040', 'Antarctica/Palmer', NULL, NULL, 1),
(22, '3fc2ed4f-c067-47c9-9a63-0df2127426ff', '2020-12-14 10:31:58', '2020-12-14 10:31:58', 'arielle45', 'ariel54@example.net', '$2y$10$dxZvMX73w3SUTkxfjK1z7eTJ7doaRPwOy6JsA90Hc9cZSqFnRW/eq', 1, NULL, 'Garth', 'Kub', NULL, '+3933108388161', 'America/Tortola', NULL, NULL, 1),
(23, '7aef4d76-bd8e-447d-bc2d-7aa88502ae35', '2020-12-14 10:32:58', '2020-12-14 10:32:58', 'walter.cary', 'durgan.laurie@example.net', '$2y$10$7h8h7qADIOWgLBX6WQSHZeIbP2dDpui2WEksAZaYALHWd.trPoRly', 1, NULL, 'Marquis', 'Cruickshank', NULL, '+1607598241871', 'Europe/Oslo', NULL, NULL, 1),
(24, 'cfbb3d38-8551-48d8-872f-77995f849839', '2020-12-14 10:33:58', '2020-12-14 10:33:58', 'uharber', 'jakayla.jacobi@example.org', '$2y$10$8UhHmPgy1hNOtXIhczVKnOOunn1aRDsFdTs9il28GSNeoQjT8It0G', 1, NULL, 'Mireille', 'Christiansen', NULL, '+5519109795523', 'Africa/Maseru', NULL, NULL, 1),
(25, '82e1a143-2205-4960-82b5-e7466e525b5e', '2020-12-14 10:34:58', '2020-12-14 10:34:58', 'kirstin41', 'brody37@example.com', '$2y$10$Fb52YKGnrxVEIjvHYTowwOLEJpvdotRW2LyQ.xeVgDLxMuw5W09Oy', 1, NULL, 'Dasia', 'Skiles', NULL, '+9561503020303', 'America/Boise', NULL, NULL, 1),
(26, '30cbb0b5-741e-4e1e-9989-f0c893e97fc4', '2020-12-14 10:35:58', '2020-12-14 10:35:58', 'aiyana27', 'hand.toni@example.com', '$2y$10$OFtPuvuNv4yGgPlvel3w8OJrBp0pZ3.qJ9h42i4VQ/MGZ0GpygKRK', 1, NULL, 'Ella', 'Sanford', NULL, '+2149946275485', 'America/Tijuana', NULL, NULL, 1),
(27, '8b90e048-1d34-4a97-8490-8b3c8c207111', '2020-12-14 10:36:58', '2020-12-14 10:36:58', 'moen.lysanne', 'ciara10@example.net', '$2y$10$BjRVF2AG.lxgnh9uYxCWFOsnuXzgiLV2/Yu2TY2cV.q4Z/NJX4prS', 1, NULL, 'Sigurd', 'Heidenreich', NULL, '+2519600275089', 'Pacific/Nauru', NULL, NULL, 1),
(28, 'bf0fe784-37cb-4b0e-b9fc-d6aef0d110a1', '2020-12-14 10:37:58', '2020-12-14 10:37:58', 'schinner.myah', 'lisa37@example.com', '$2y$10$1m1hS529HYF1OC93bWm2eun4x27oSQjzlmYW5vGVQ3GRw7QPesNlu', 1, NULL, 'Jordy', 'Sawayn', NULL, '+1413302283003', 'America/Inuvik', NULL, NULL, 1),
(29, '85980fda-3378-468b-b2e1-594cf074c2b9', '2020-12-14 10:38:58', '2020-12-14 10:38:58', 'hane.abbigail', 'witting.shanel@example.net', '$2y$10$vmk7HzD7FicYaq2U2br8YODsXjB9MwyfiuN8tXF0QOvKLIy2Nxwwu', 1, NULL, 'Etha', 'Grimes', NULL, '+1785299293803', 'Africa/Niamey', NULL, NULL, 1),
(30, 'ba96637f-4ed1-46a7-a557-24606508114f', '2020-12-14 10:39:58', '2020-12-14 10:39:58', 'ibrahim.schultz', 'albina90@example.net', '$2y$10$4O6YOtgM6oLKOmNi7TExrOFwt3wFkJAxEPKIm6.bk16xkBqnDDQ/q', 1, NULL, 'Garland', 'Brown', NULL, '+1478184285963', 'Europe/Madrid', NULL, NULL, 1),
(31, '8be3ddb8-9fb8-4096-8972-677a0ecb138a', '2020-12-14 10:40:59', '2020-12-14 10:40:59', 'annetta37', 'lyric96@example.net', '$2y$10$i1Q5cuCuDctcAUOOJ4J6AOp7QNl4QkEsrlVkX.mFZlqgGBzP6Futm', 1, NULL, 'Leonor', 'Lowe', NULL, '+6897253962753', 'Indian/Antananarivo', NULL, NULL, 1),
(32, 'e8ec8bd2-a0c4-4bf5-bb45-61de2c2845be', '2020-12-14 10:41:59', '2020-12-14 10:41:59', 'thudson', 'golson@example.net', '$2y$10$TR621zH6LHxdzLHG4SfDqunS0VYZe8Xg9q5XXz.w0FDnbE3faYc/2', 1, NULL, 'Cicero', 'King', NULL, '+5540385871616', 'Europe/Warsaw', NULL, NULL, 1),
(33, '9d13936e-c272-427a-a391-f776db28f4ce', '2020-12-14 10:42:59', '2020-12-14 10:42:59', 'tfeil', 'keely.douglas@example.net', '$2y$10$NeVAiVaWqo3CXTSNAQfkKupZWO57QMVfZZb.1drP1TOwz8aJO6H/.', 1, NULL, 'Nikita', 'Emard', NULL, '+2120544773005', 'Asia/Qostanay', NULL, NULL, 1),
(34, 'b7dc6a39-7e16-4017-9095-aeedbf93f751', '2020-12-14 10:43:59', '2020-12-14 10:43:59', 'jamar70', 'angelina.kuhic@example.com', '$2y$10$dfJun/EQgkeq16RpJji3Ou/SO1NlD/Ysfpb/ShiqDPTrbfeUMG4X2', 1, NULL, 'Missouri', 'Hand', NULL, '+4656447504208', 'Indian/Christmas', NULL, NULL, 1),
(35, '71135637-a61c-4760-95a1-e9442dc9ec56', '2020-12-14 10:44:59', '2020-12-14 10:44:59', 'jsipes', 'fstark@example.net', '$2y$10$tAbucuZZ.HDKZWkoHWB8dO5pXZSj0WRtA7rZzWkuvvAUztp5.24ia', 1, NULL, 'Wilton', 'Schoen', NULL, '+8478149239806', 'America/Argentina/San_Juan', NULL, NULL, 1),
(36, '528bbba8-6dc2-41f7-80d4-09f73ab78026', '2020-12-14 10:45:59', '2020-12-14 10:45:59', 'fermin.nienow', 'guadalupe.nikolaus@example.net', '$2y$10$aAijaM9LLyj1EDxtH1qdxeiGjosoaQqsG7uMeOgokJj8LhBcD.ATC', 1, NULL, 'Katelyn', 'Gislason', NULL, '+7173071098633', 'Africa/Douala', NULL, NULL, 1),
(37, '47250962-df5a-4f69-ac70-7ff87fc83a04', '2020-12-14 10:46:59', '2020-12-14 10:46:59', 'devon.boehm', 'daija.beier@example.org', '$2y$10$T8fnLuFcMVCRcaiwKQjNse2I7xjNRA5pq06cWoGGKB6ydrP/LLW22', 1, NULL, 'Alek', 'Runte', NULL, '+6549360900707', 'Pacific/Pohnpei', NULL, NULL, 1),
(38, '1b00425f-1a4c-4841-8e63-269a059db682', '2020-12-14 10:47:59', '2020-12-14 10:47:59', 'shanon.koepp', 'cormier.missouri@example.org', '$2y$10$S15b5rHtJv64PM/2399fh.4.p6aprR5VrGlxgfXMKyhGZrYF2S1EK', 1, NULL, 'Vicky', 'Adams', NULL, '+2491289602684', 'Asia/Kathmandu', NULL, NULL, 1),
(39, '2ba549dc-fc24-415a-ae3a-6182f7e23dcb', '2020-12-14 10:48:59', '2020-12-14 10:48:59', 'erutherford', 'christiana58@example.com', '$2y$10$IGVZdYebfLgW621fLAcYIO12xgRCDZ0bz12shFQi1X7Pza1Kye9GO', 1, NULL, 'Dominique', 'Boyer', NULL, '+8722156023252', 'Asia/Hong_Kong', NULL, NULL, 1),
(40, '8964e18a-2280-466a-b840-1aa8a3dccc95', '2020-12-14 10:49:59', '2020-12-14 10:49:59', 'retha46', 'pmcdermott@example.net', '$2y$10$kju3KTlaYknxzvA6HgduhO21dvye0GTtbe.Bl86ECiAm1eA7kCgim', 1, NULL, 'Nestor', 'Adams', NULL, '+9419943769097', 'America/Cayenne', NULL, NULL, 1),
(41, '7973fa21-b8ad-45bb-a997-77ec1a5e38d1', '2020-12-14 10:50:59', '2020-12-14 10:50:59', 'bradly73', 'wellington.reinger@example.org', '$2y$10$AoO.funmbr1EJRhYxd9FcOCH8.rbtjOt/WtIYkdBFGduhc62iGqv.', 1, NULL, 'D\'angelo', 'Emmerich', NULL, '+3163308387902', 'Pacific/Rarotonga', NULL, NULL, 1),
(42, '503366df-74a1-44f1-8ba7-3430de281ec9', '2020-12-14 10:51:59', '2020-12-14 10:51:59', 'isaiah.blanda', 'june.klein@example.net', '$2y$10$WBRWNCPdmpNpmoqO1uOYE.R.UR0bCTwMtNl1T/XrA6YbGQ4ea1xFy', 1, NULL, 'Elda', 'Emard', NULL, '+7975246004936', 'Africa/Mbabane', NULL, NULL, 1),
(43, '2217c416-a243-4075-9a29-473ec3684afc', '2020-12-14 10:52:59', '2020-12-14 10:52:59', 'annabell.hilpert', 'amos.grant@example.com', '$2y$10$Jhyhb0Je6Qwo/1S/anMTH.Lhtbb.0oHmyEobmAwzUpubMIKCM9wPy', 1, NULL, 'Zachary', 'Cole', NULL, '+7971315877818', 'America/Resolute', NULL, NULL, 1),
(44, '9f1af1c6-4593-4db7-969d-50563334228e', '2020-12-14 10:53:59', '2020-12-14 10:53:59', 'ledner.bryce', 'nelda.sauer@example.org', '$2y$10$f7fFCxk6F6iXk6/2HTYf3OpIpD0pZWEjXu23JqbZC80ttRapQBFuK', 1, NULL, 'Tremayne', 'Baumbach', NULL, '+9295911247345', 'Asia/Shanghai', NULL, NULL, 1),
(45, 'a6bb4fc7-2f4e-4d50-9253-8b2384e23556', '2020-12-14 10:54:59', '2020-12-14 10:54:59', 'rdoyle', 'tsawayn@example.org', '$2y$10$7d3iDl7xpECvuFatw3UXOeXc.Ou5rLB.Z965nGro4O6b7J2BqOAr.', 1, NULL, 'Maud', 'Zboncak', NULL, '+5337266017915', 'America/Maceio', NULL, NULL, 1),
(46, '553085ed-c27a-461b-8416-b5dda1d685ca', '2020-12-14 10:55:59', '2020-12-14 10:55:59', 'isabell12', 'jacobi.ayana@example.net', '$2y$10$G0wkvgYo7S7EaGOsjQxbqu.Gd2ja53OwYvCVdEe4/dBIgIxUJvbLi', 1, NULL, 'Dante', 'Barrows', NULL, '+6060350540650', 'America/Guadeloupe', NULL, NULL, 1),
(47, '6a467969-0461-4895-940e-2ced04be6ba7', '2020-12-14 10:56:59', '2020-12-14 10:56:59', 'wuckert.kenyatta', 'kflatley@example.org', '$2y$10$JTXnX7RKd7N8OJQJsbaI3u8BIQSs1Gm5oB.b/b9ChdPit2nByQ6rm', 1, NULL, 'Chelsey', 'Dare', NULL, '+1478903186875', 'Europe/Andorra', NULL, NULL, 1),
(48, '5e38b56d-96d8-4e6a-b182-ad0e0652a05a', '2020-12-14 10:57:59', '2020-12-14 10:57:59', 'branson.orn', 'voconnell@example.org', '$2y$10$/PjNDxT1HQyITWFPKS2WHugtliUAz3FPFCSxQ3DXhoYHPzK0YSVOm', 1, NULL, 'Nicolette', 'Eichmann', NULL, '+6368073224912', 'Europe/Vatican', NULL, NULL, 1),
(49, 'e7c46612-38ae-4c71-8b9d-6811ad7971fe', '2020-12-14 10:58:59', '2020-12-14 10:58:59', 'xmcclure', 'julius.wehner@example.com', '$2y$10$xlq9q7e5H/.My2IvxlIDdOfOIP5s.Lim/MpYungcPp7rVzdsJ/qKy', 1, NULL, 'Xzavier', 'Vandervort', NULL, '+8863787115212', 'Pacific/Pago_Pago', NULL, NULL, 1),
(50, '658ef666-e2c6-43c1-9847-b859c494431a', '2020-12-14 10:59:59', '2020-12-14 10:59:59', 'danny33', 'dasia.kiehn@example.org', '$2y$10$iNA7nZSR2wQPSp2WQVGJ1eBFVUWUqBr5JSC9i9qQhx8aoxLbgR1ge', 1, NULL, 'Rory', 'Gislason', NULL, '+6314990843772', 'America/Tegucigalpa', NULL, NULL, 1),
(51, '93da518b-a6d8-4210-b018-e19e8cdadbd6', '2020-12-14 11:00:59', '2020-12-14 11:00:59', 'morissette.jennings', 'schaefer.margie@example.net', '$2y$10$iH1JcxdXMJCAWztVpGyDPuRG9Br.zCHSmvUmnnX/2ecXExE87B2o.', 1, NULL, 'Kendra', 'Carroll', NULL, '+4406174479796', 'Antarctica/Vostok', NULL, NULL, 1),
(52, '190c43ea-45da-48ea-8134-76b90de67433', '2020-12-14 11:02:00', '2020-12-14 11:02:00', 'reba.marvin', 'hans71@example.com', '$2y$10$xW5bIKsU3tWrUBYjtLP6bOxaAidQUeE8LKZfzIksVn8uqTgZuYBDq', 1, 'eIPvL8XkUAECSf8l55mBSWGkkAOv0dsd278coVbWXvM9hIkxtxUWgU9rPJ41', 'Rico', 'Champlin', NULL, '+3556323298399', 'Pacific/Tongatapu', NULL, NULL, 1),
(53, '268e155e-5fb7-42e9-9b13-b32fa59eaaab', '2020-12-14 10:18:46', '2020-12-14 10:18:46', 'natalia19', 'gunnar93@example.org', '$2y$10$TRem8SNmhAQ2jwLYLG4nKe8paUh9YNNE3uhGXi3xk2kOdB410DhUy', 1, NULL, 'Kennedi', 'Hyatt', NULL, '+8237891496349', 'Europe/Guernsey', NULL, NULL, 1),
(54, 'ae4800eb-1fc6-4a60-9a9b-5627a86dfb21', '2020-12-14 10:19:46', '2020-12-14 10:19:46', 'ray99', 'arnoldo41@example.org', '$2y$10$q7alpgxGe0Yq/M8WHT/PwONaY2VNAfRDsbjNJ0rFuMzB00woSC2i.', 1, NULL, 'Larue', 'Kerluke', NULL, '+6052376462393', 'America/Rio_Branco', NULL, NULL, 1),
(55, '77311739-4fb7-42c3-a992-ce02ef925b09', '2020-12-14 10:20:46', '2020-12-14 10:20:46', 'caufderhar', 'bmayer@example.net', '$2y$10$XUETdYaaHjYFoXQ1dWjjyOcpMNokU.8G.9VyujdVFTPSUmK8GLftq', 1, NULL, 'Casimer', 'Smitham', NULL, '+5877965361650', 'Africa/Tripoli', NULL, NULL, 1),
(56, 'f4952453-5d51-4019-ab39-a2a76c6bdb7a', '2020-12-14 10:21:46', '2020-12-14 10:21:46', 'jweimann', 'hudson.jessy@example.org', '$2y$10$kdqKLGPF9nSw7REJ2XU/IeriL.wFiwN7yK1qi.ih0f9Os8nrWhhjy', 1, NULL, 'Jocelyn', 'Buckridge', NULL, '+3798579393360', 'Africa/Kampala', NULL, NULL, 1),
(57, '8201e8e3-58bd-4f5e-886c-a362a9208a4f', '2020-12-14 10:22:46', '2020-12-14 10:22:46', 'qorn', 'kshlerin.abner@example.com', '$2y$10$ZukDelcfLlBTdq6meJHkQuhc7aQhvcQ2ww28HhrojkTvnYqS96RYm', 1, NULL, 'Jedidiah', 'Koelpin', NULL, '+4192292219291', 'Asia/Karachi', NULL, NULL, 1),
(58, '4fcdc31f-b14f-4a0e-8a54-2eebb8432163', '2020-12-15 05:34:50', '2020-12-15 05:34:50', 'shivam122', 'admin@admin.com', '$2y$10$c6dKMK3V5D7LjY3saQtM1eoZZHX344rsj.RwaL9g1vGC.7t/HU9me', 1, '53cf278f-2316-4aa5-9c04-f2c333fa2581', 'Shivam', 'Jain', NULL, '79898989', NULL, NULL, NULL, NULL),
(59, 'c0cd8d13-d5da-497c-9464-028de8121e66', '2020-12-15 05:35:46', '2020-12-15 06:08:39', 'shivam125', 'shivamj@chapter247.com', '$2y$10$/.LGqFXNPWLSH3Q2sPMGPu0lf6xDWYpQ9ezrcBanoOXlvjTONaFSu', 2, 'rC9mbosIVYLr3uc4rO0wbvOLJV4MAjRTFr0Y09CtLeDxrBdwkVxHYV4nnTZo', 'Shivam', 'Jain', NULL, '11898989', NULL, NULL, NULL, NULL),
(60, 'cfe523f9-5688-4d19-bd87-fb17b6a89b59', '2020-12-15 06:52:31', '2020-12-15 06:52:31', 'shivam123452', 'demo@demo.com', '$2y$10$6F19x1Wx1nGDIps/YevOBelpXv7OTibYuBGUFUOzSVgYi9RIJ.95m', 1, '97b56f70-33d4-4b02-b3ac-ac4fc8b6f472', 'Shivam', 'Jain', NULL, '89898981', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_authorities`
--

CREATE TABLE `user_authorities` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `users__id` int(10) UNSIGNED NOT NULL,
  `user_roles__id` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_authorities`
--

INSERT INTO `user_authorities` (`_id`, `_uid`, `status`, `created_at`, `updated_at`, `users__id`, `user_roles__id`) VALUES
(1, '307303c0-6dae-4066-a613-b26a8146df59', 1, '2020-12-14 09:30:21', '2020-12-15 07:58:34', 1, 1),
(2, '32bb0b5f-bdfb-44d7-8a0c-4076a106caea', 1, '2020-12-14 09:54:15', '2020-12-15 06:56:25', 2, 2),
(3, '02861291-c0dc-4abe-a08f-46508254a783', 1, '2020-12-14 10:13:00', '2020-12-14 10:13:00', 14, 2),
(4, '64276aa9-dc0e-43d7-ae66-d1f879fe4718', 1, '2020-12-14 10:14:00', '2020-12-14 10:14:00', 19, 2),
(5, 'ac258f72-451a-4eca-aeac-394941ea0df3', 1, '2020-12-14 10:15:00', '2020-12-14 10:15:00', 13, 2),
(6, '1ccd241a-49b7-4a7b-9c7a-5bc7d2e24f1b', 1, '2020-12-14 10:16:00', '2020-12-14 10:16:00', 16, 2),
(7, '8fe288a5-55f6-4b2b-816d-9bbf2fd2038b', 1, '2020-12-14 10:17:00', '2020-12-14 10:33:43', 52, 2),
(8, '0fca8b4c-9eb8-4f36-95a2-87db477b8084', 1, '2020-12-14 10:18:00', '2020-12-14 10:18:00', 38, 2),
(9, '6ca87619-47a8-4df6-8361-3a8a256eeb50', 1, '2020-12-14 10:19:00', '2020-12-14 10:19:00', 43, 2),
(10, 'a8f70b98-d7c0-4cb6-821d-a07b59a7727b', 1, '2020-12-14 10:20:00', '2020-12-14 10:20:00', 39, 2),
(11, '39e1d92d-62aa-4829-a28b-0557fde3e26f', 1, '2020-12-14 10:21:00', '2020-12-14 10:21:00', 26, 2),
(12, '63ac80cc-f61c-4e14-bf63-49fd467b0141', 1, '2020-12-14 10:22:00', '2020-12-14 10:22:00', 8, 2),
(13, '91e7692b-10a1-4be0-99af-6d8f220717b1', 1, '2020-12-14 10:23:00', '2020-12-14 10:23:00', 12, 2),
(14, 'dcc4cedc-f13f-4a5b-b304-4a4a259662cf', 1, '2020-12-14 10:24:00', '2020-12-14 10:24:00', 22, 2),
(15, 'b2013271-550e-4f5d-bf8d-56c6742041ff', 1, '2020-12-14 10:25:00', '2020-12-14 10:25:00', 37, 2),
(16, 'a6269aa4-9f10-4e0f-a8d4-76afea62f5db', 1, '2020-12-14 10:26:00', '2020-12-14 10:26:00', 42, 2),
(17, 'e9831516-4afe-4ca0-b4bf-01314eaa9e32', 1, '2020-12-14 10:27:00', '2020-12-14 10:27:00', 36, 2),
(18, '2693c1d9-9052-439b-85f7-95b4121fa244', 1, '2020-12-14 10:28:00', '2020-12-14 10:28:00', 46, 2),
(19, '9e95dae4-3eba-48da-89e4-275a4b428b61', 1, '2020-12-14 10:29:00', '2020-12-14 10:29:00', 18, 2),
(20, 'c7898bfb-931d-47d1-bf08-a957f67a04e4', 1, '2020-12-14 10:30:00', '2020-12-14 10:30:00', 48, 2),
(21, '0865e7bb-5f1c-4dc6-9ea1-d6bfb2f894cb', 1, '2020-12-14 10:31:00', '2020-12-14 10:31:00', 17, 2),
(22, '4f954573-eeb3-438d-95ff-6f230d591e42', 1, '2020-12-14 10:32:00', '2020-12-14 10:32:00', 50, 2),
(23, '087cf4e3-a08d-4bdd-bbec-eb788ee62825', 1, '2020-12-14 10:33:00', '2020-12-14 10:33:00', 6, 2),
(24, 'a37f185b-30a8-497f-8377-72471d47eba0', 1, '2020-12-14 10:34:00', '2020-12-14 10:34:00', 47, 2),
(25, 'f13123d6-45d1-4abe-a529-6af7ca49e2e6', 1, '2020-12-14 10:35:00', '2020-12-14 10:35:00', 35, 2),
(26, '0cbff5e9-5e4c-4057-bef3-3c9211a01c11', 1, '2020-12-14 10:36:00', '2020-12-14 10:36:00', 41, 2),
(27, '33283514-e23a-4344-9778-8646a3c90aec', 1, '2020-12-14 10:37:00', '2020-12-14 10:37:00', 23, 2),
(28, 'e060d017-bd06-448c-80fc-cf118a165b1e', 1, '2020-12-14 10:38:00', '2020-12-14 10:38:00', 25, 2),
(29, 'd63e1c33-4398-49b5-9cc5-4cbc697062e5', 1, '2020-12-14 10:39:00', '2020-12-14 10:39:00', 29, 2),
(30, 'f50fa839-de59-45ab-9923-845d19659202', 1, '2020-12-14 10:40:00', '2020-12-15 07:17:18', 3, 2),
(31, '383fc8de-2b8b-49b4-b072-c0556218888f', 1, '2020-12-14 10:41:00', '2020-12-14 10:41:00', 9, 2),
(32, '57a96b6a-634a-439b-85ae-e2575a81d822', 1, '2020-12-14 10:42:00', '2020-12-14 10:42:00', 40, 2),
(33, '13864afa-bafd-4fa5-aa7e-caca1a475c64', 1, '2020-12-14 10:43:00', '2020-12-14 10:43:00', 27, 2),
(34, '701e9fa1-2f2a-41b9-8d0b-02be1aa72a1a', 1, '2020-12-14 10:44:00', '2020-12-14 10:44:00', 31, 2),
(35, '0cbab371-4e91-47de-8458-1f2ff2f5fa0b', 1, '2020-12-14 10:45:00', '2020-12-15 07:03:30', 4, 2),
(36, '44bdc1df-041f-41a3-9006-f0f7c365ce76', 1, '2020-12-14 10:46:00', '2020-12-14 10:46:00', 51, 2),
(37, '68afddb7-7047-4050-b712-49c64772e908', 1, '2020-12-14 10:47:00', '2020-12-14 10:47:00', 5, 2),
(38, 'f1df5c11-3115-4bf2-a349-460ca0819f19', 1, '2020-12-14 10:48:00', '2020-12-14 10:48:00', 33, 2),
(39, '2903c2a7-ec1a-44f5-ba9b-57c7e71c1f8a', 1, '2020-12-14 10:49:00', '2020-12-14 10:49:00', 44, 2),
(40, '7dc55419-123a-4d0a-9c2e-bc7bbd39a3bb', 1, '2020-12-14 10:50:00', '2020-12-14 10:50:00', 10, 2),
(41, '40533c50-7cb6-42c7-ad27-f3fbffa2ac21', 1, '2020-12-14 10:51:00', '2020-12-14 10:51:00', 45, 2),
(42, '1b13d045-a8b2-4a78-adb8-b11ecb2e7afe', 1, '2020-12-14 10:52:00', '2020-12-14 10:52:00', 21, 2),
(43, '9a3ff650-2932-42c7-9b6e-23ec0ef98165', 1, '2020-12-14 10:53:00', '2020-12-14 10:53:00', 15, 2),
(44, '58a5f103-d5b4-4b2d-9d10-0c0a51b44a44', 1, '2020-12-14 10:54:00', '2020-12-14 10:54:00', 20, 2),
(45, '7fa70ef0-c9dd-44ba-8f36-b0223c6f9baf', 1, '2020-12-14 10:55:00', '2020-12-14 10:55:00', 34, 2),
(46, 'bdf30cc1-7c34-4295-ae15-b97cbba26eef', 1, '2020-12-14 10:56:00', '2020-12-14 10:56:00', 30, 2),
(47, 'fdcf2fa4-be2d-46c2-9819-5e068f9624cb', 1, '2020-12-14 10:57:00', '2020-12-14 10:57:00', 28, 2),
(48, 'b80ea747-a5ea-4916-bc93-ddc3b541f608', 1, '2020-12-14 10:58:00', '2020-12-14 10:58:00', 24, 2),
(49, '44733471-98d0-48e5-b49f-1467be0efcf4', 1, '2020-12-14 10:59:00', '2020-12-14 10:59:00', 11, 2),
(50, 'b4a75012-a5ba-4755-a72e-d4245144e119', 1, '2020-12-14 11:00:00', '2020-12-14 11:00:00', 7, 2),
(51, '0e80b140-dac3-4d56-8972-edf68be51aed', 1, '2020-12-14 11:01:00', '2020-12-14 11:01:00', 49, 2),
(52, '10de59fc-3576-4803-b87d-40a13134c69b', 1, '2020-12-14 11:02:00', '2020-12-14 11:02:00', 32, 2),
(53, 'e1abc991-b582-4256-b439-6dbb4c2a1ace', 1, '2020-12-14 10:18:46', '2020-12-14 10:18:46', 53, 2),
(54, 'd7229b02-c1b1-47b5-a2d2-1a4263cf6e37', 1, '2020-12-14 10:19:46', '2020-12-14 10:19:46', 55, 2),
(55, '6cd73243-ae06-4a65-bdae-0c8d72bf500e', 1, '2020-12-14 10:20:46', '2020-12-14 10:20:46', 57, 2),
(56, 'abb5dcba-e429-4bab-93ff-4d733a392193', 1, '2020-12-14 10:21:46', '2020-12-14 10:21:46', 54, 2),
(57, '4fdd94d3-76b2-40bb-a787-9386612059d8', 1, '2020-12-14 10:22:46', '2020-12-14 10:22:46', 56, 2),
(58, '8aaa4680-2813-4a6c-8e6d-b4b9ab9693a0', 1, '2020-12-15 05:34:50', '2020-12-15 05:34:50', 58, 2),
(59, '088a6c8d-4589-44cb-9a7a-461a0fd098cc', 1, '2020-12-15 05:35:46', '2020-12-15 05:59:58', 59, 2),
(60, '6dd6a3f6-517d-4543-ad15-36e864c62a52', 1, '2020-12-15 06:52:31', '2020-12-15 06:52:31', 60, 2);

-- --------------------------------------------------------

--
-- Table structure for table `user_block_users`
--

CREATE TABLE `user_block_users` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `to_users__id` int(10) UNSIGNED NOT NULL,
  `by_users__id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_encounters`
--

CREATE TABLE `user_encounters` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `by_users__id` int(10) UNSIGNED NOT NULL,
  `to_users__id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_encounters`
--

INSERT INTO `user_encounters` (`_id`, `_uid`, `created_at`, `updated_at`, `status`, `by_users__id`, `to_users__id`) VALUES
(1, 'e41258b6-bea1-4d0c-a70a-fe3e6841c306', '2020-12-14 11:12:10', '2020-12-14 11:12:10', 1, 1, 53),
(2, '6761c765-b205-48cc-a0ac-048a3ee591ac', '2020-12-14 11:12:12', '2020-12-14 11:12:12', 1, 1, 43),
(3, '8c463a92-29cf-4069-8b6e-e012dd9a4088', '2020-12-14 11:12:13', '2020-12-14 11:12:13', 1, 1, 40),
(4, '9b9509bd-a6f1-47e0-b1c3-e4627d4c5962', '2020-12-14 11:12:34', '2020-12-14 11:12:34', 1, 1, 48),
(5, '131888dd-92ba-4f45-a551-5c706a360bae', '2020-12-14 11:12:35', '2020-12-14 11:12:35', 1, 1, 27),
(6, 'c06c7a95-ed2b-45c7-af59-a0770d98f3aa', '2020-12-14 11:12:36', '2020-12-14 11:12:36', 1, 1, 50),
(7, 'd2dd7551-4c9a-4cb4-8800-bc54f4b916e6', '2020-12-14 11:12:37', '2020-12-14 11:12:37', 1, 1, 22),
(8, '90250dab-8d32-478f-89ce-8dfe1d99a5d0', '2020-12-14 11:12:38', '2020-12-14 11:12:38', 1, 1, 41),
(9, 'cd5e9907-4d10-47a4-bb7d-53ef3a264045', '2020-12-14 11:54:53', '2020-12-14 11:54:53', 1, 1, 25),
(10, '5fb5145c-faeb-47a6-8f02-48709aacd2a4', '2020-12-14 11:54:54', '2020-12-14 11:54:54', 1, 1, 4),
(11, 'e6593d76-8b16-4a56-8b5b-ef349084c647', '2020-12-15 07:06:29', '2020-12-15 07:06:29', 1, 3, 49),
(12, '81c31a09-7cec-4e36-a99a-465140fd9542', '2020-12-15 07:06:44', '2020-12-15 07:06:44', 1, 3, 60),
(13, 'ade689f6-b3da-472f-a3fc-f99969b1bc3c', '2020-12-15 07:06:45', '2020-12-15 07:06:45', 1, 3, 17),
(14, '6b38245c-0ddf-4cf8-ae8b-cee8980d0377', '2020-12-15 07:06:46', '2020-12-15 07:06:46', 1, 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `user_gifts`
--

CREATE TABLE `user_gifts` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `from_users__id` int(10) UNSIGNED NOT NULL,
  `to_users__id` int(10) UNSIGNED NOT NULL,
  `items__id` int(10) UNSIGNED NOT NULL,
  `price` decimal(13,4) DEFAULT NULL,
  `credit_wallet_transactions__id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_items`
--

CREATE TABLE `user_items` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `users__id` int(10) UNSIGNED NOT NULL,
  `items__id` int(10) UNSIGNED NOT NULL,
  `price` decimal(13,4) DEFAULT NULL,
  `credit_wallet_transactions__id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_photos`
--

CREATE TABLE `user_photos` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `users__id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_photos`
--

INSERT INTO `user_photos` (`_id`, `_uid`, `created_at`, `updated_at`, `status`, `users__id`, `file`) VALUES
(1, 'd6591829-2901-42cf-ac11-c186c3d03fdb', '2020-12-14 09:52:51', '2020-12-14 09:52:51', 1, 1, '177-converted.png'),
(2, '6bb96e34-431b-4e01-9f54-077428b7b085', '2020-12-15 04:47:48', '2020-12-15 04:47:48', 1, 1, 'pic.png'),
(3, '70d826cc-4976-429b-bad9-91d0fc9144b2', '2020-12-15 04:48:05', '2020-12-15 04:48:05', 1, 1, 'ds.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE `user_profiles` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `__data` text,
  `users__id` int(10) UNSIGNED NOT NULL,
  `countries__id` smallint(5) UNSIGNED DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `about_me` varchar(500) DEFAULT NULL,
  `location_latitude` decimal(11,8) DEFAULT NULL,
  `location_longitude` decimal(11,8) DEFAULT NULL,
  `preferred_language` varchar(15) DEFAULT NULL,
  `relationship_status` tinyint(3) UNSIGNED DEFAULT NULL,
  `work_status` tinyint(3) UNSIGNED DEFAULT NULL,
  `education` tinyint(4) DEFAULT NULL,
  `cover_picture` varchar(255) DEFAULT NULL,
  `is_verified` tinyint(3) UNSIGNED DEFAULT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`_id`, `_uid`, `created_at`, `updated_at`, `__data`, `users__id`, `countries__id`, `profile_picture`, `gender`, `dob`, `city`, `about_me`, `location_latitude`, `location_longitude`, `preferred_language`, `relationship_status`, `work_status`, `education`, `cover_picture`, `is_verified`, `status`) VALUES
(1, '117e044d-964d-41a1-92a9-9ea5b4f18d24', '2020-12-14 09:52:28', '2020-12-14 13:20:13', NULL, 1, NULL, 'ds.png', 2, '1994-12-12', NULL, 'something about my self', NULL, NULL, '1', 1, 3, 2, '177-converted.png', NULL, 0),
(2, '691fd137-4926-427a-bc6f-fbd134900bfa', '2020-12-14 09:54:15', '2020-12-15 06:53:41', NULL, 2, NULL, 'ds.png', 1, '1994-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'modi-physiocare-plantar-fasciitis-heel-pain.jpg', 1, 1),
(3, '9bfda1f1-2c24-443a-9887-c808016ab34b', '2020-12-14 10:13:00', '2020-12-14 10:13:00', NULL, 14, 92, 'https://i.picsum.photos/id/50/360/360.jpg', 3, '1974-12-14', 'Port Myra', 'Beatae alias culpa et temporibus ut incidunt numquam id. Quo earum ad velit excepturi quos sed et fugiat. Optio accusamus et et fuga enim optio. Reiciendis sequi ut est omnis occaecati eligendi.', '5.70597900', '-137.53186600', '8', 4, 6, 6, 'https://i.picsum.photos/id/3/820/360.jpg', 1, 0),
(4, '429a4df4-c596-4a4f-bdbb-7c0f0abbb733', '2020-12-14 10:14:00', '2020-12-14 10:14:00', NULL, 19, 133, 'https://i.picsum.photos/id/55/360/360.jpg', 1, '1955-12-14', 'Monserratland', 'Omnis aut quod ipsa numquam similique illo. Eius sequi excepturi aliquam est. Quaerat voluptate consequuntur animi laboriosam quia fugit. Voluptas aut ipsum non eius amet quia. Corrupti laborum delectus ullam. Dolores maxime consequuntur velit quo. Ut laboriosam quo sit error. Et blanditiis sequi itaque magnam eos. Ut laboriosam aliquam amet doloremque qui eaque sunt.', '-77.74493600', '168.10373000', '2', 3, 1, 5, 'https://i.picsum.photos/id/77/820/360.jpg', 1, 0),
(5, '8e1ac98b-c925-4084-a382-a3447a7a9797', '2020-12-14 10:15:00', '2020-12-14 10:15:00', NULL, 13, 187, 'https://i.picsum.photos/id/74/360/360.jpg', 3, '1975-12-14', 'East Elwyntown', 'Ut et repudiandae quia tempore molestiae quia earum doloremque. Error quisquam nihil ipsam quia est delectus omnis. Mollitia aut quis et. Cupiditate et officiis consequatur non ab. Nisi voluptas optio est enim ut. Delectus nobis et ut earum assumenda. Esse sed saepe consectetur accusantium cum.', '83.89532700', '117.83404700', '19', 1, 6, 6, 'https://i.picsum.photos/id/23/820/360.jpg', 1, 0),
(6, '7335288d-c7ec-48cd-ac5e-1ab4c1ad660c', '2020-12-14 10:16:00', '2020-12-14 10:16:00', NULL, 16, 225, 'https://i.picsum.photos/id/34/360/360.jpg', 2, '1954-12-14', 'New Vita', 'Voluptatem cumque ipsam id libero et illum reiciendis. Eum tempore dolor inventore accusantium in cumque. Quia voluptatem ut est dicta sit voluptatem.', '40.03879100', '-63.53201500', '19', 4, 2, 5, 'https://i.picsum.photos/id/31/820/360.jpg', 0, 0),
(7, 'a219ace4-6bf2-46b2-b964-58004f86f2dc', '2020-12-14 10:17:00', '2020-12-14 10:17:00', NULL, 52, 38, 'https://i.picsum.photos/id/53/360/360.jpg', 1, '1959-12-14', 'Port Bettie', 'Eos eos qui culpa beatae odio debitis quis sit. Mollitia deserunt minus recusandae voluptatem ipsum. Amet odio et dolorem iure cumque et harum. Laborum vero facilis ratione commodi nulla dicta.', '33.61333100', '-89.78081900', '14', 3, 5, 3, 'https://i.picsum.photos/id/62/820/360.jpg', 0, 0),
(8, '2b811218-9306-49ee-b0fe-b517a57ebeb8', '2020-12-14 10:18:00', '2020-12-14 10:18:00', NULL, 38, 126, 'https://i.picsum.photos/id/94/360/360.jpg', 3, '1979-12-14', 'Hattieburgh', 'Maiores odio quia est repellendus. Aperiam quia beatae amet commodi reprehenderit. Animi corporis deserunt numquam temporibus et minus ullam exercitationem. Eveniet eos omnis dolorem eaque voluptates. Rerum cumque ullam animi nobis aut sit vel quia. Est libero molestias quidem sapiente consequatur porro. Inventore nihil fuga excepturi excepturi molestias et mollitia.', '61.68641800', '-23.37379200', '21', 3, 1, 4, 'https://i.picsum.photos/id/64/820/360.jpg', 1, 0),
(9, 'c460c0bf-7649-42e1-9e08-7db0a78f918d', '2020-12-14 10:19:00', '2020-12-14 10:19:00', NULL, 43, 6, 'https://i.picsum.photos/id/8/360/360.jpg', 2, '1979-12-14', 'Kleinside', 'Molestiae magni soluta ea quod quis et quis ex. Aut omnis mollitia facilis ducimus nesciunt.', '-36.48625000', '17.56896700', '17', 3, 5, 3, 'https://i.picsum.photos/id/66/820/360.jpg', 1, 0),
(10, 'b7aa7ab0-6d4c-44bc-8dd0-d0b9398f36f3', '2020-12-14 10:20:00', '2020-12-14 10:20:00', NULL, 39, 45, 'https://i.picsum.photos/id/35/360/360.jpg', 1, '1954-12-14', 'Lake Watsonville', 'Qui facilis nemo sapiente aliquid itaque nihil. Ex beatae ut ut vel veritatis omnis. Accusantium explicabo eum quas. Totam itaque facere non eum et voluptate. Odit voluptatem molestiae aliquam odit dolorem natus nihil. Non alias nemo adipisci at consectetur neque. Minima voluptas optio expedita sint quia. Harum eaque et corporis qui. Sit sed id ut quos porro. Tenetur cum sunt explicabo fugit dolore. Velit ea pariatur error.', '30.54571900', '-126.97236400', '17', 1, 4, 6, 'https://i.picsum.photos/id/53/820/360.jpg', 1, 0),
(11, 'bfe1b72a-3a1e-429c-a1cb-b6abb5f9d882', '2020-12-14 10:21:00', '2020-12-14 10:21:00', NULL, 26, 116, 'https://i.picsum.photos/id/82/360/360.jpg', 1, '1952-12-14', 'Rolandoport', 'Amet doloribus eum sit ea omnis. Est doloremque et eaque et culpa repellendus ullam.', '36.15428600', '18.79888500', '7', 3, 1, 5, 'https://i.picsum.photos/id/89/820/360.jpg', 1, 0),
(12, '6ed1b4c3-e759-425b-86de-bd071594682c', '2020-12-14 10:22:00', '2020-12-14 10:22:00', NULL, 8, 34, 'https://i.picsum.photos/id/74/360/360.jpg', 3, '1994-12-14', 'Jackville', 'Vel molestiae eligendi fugit. Dolores modi in consequatur autem voluptatibus similique. Quaerat voluptatem adipisci provident voluptatem. Est qui non et quasi. Quos alias quidem et aut dignissimos sunt. Rerum vitae occaecati at voluptas itaque rem. Est porro facere officia saepe.', '43.94250300', '112.08862000', '7', 1, 4, 6, 'https://i.picsum.photos/id/21/820/360.jpg', 0, 0),
(13, 'accae5b7-1366-42c7-90f6-e1e47409706a', '2020-12-14 10:23:00', '2020-12-14 10:23:00', NULL, 12, 112, 'https://i.picsum.photos/id/94/360/360.jpg', 3, '2001-12-14', 'East Laverne', 'Sit excepturi nesciunt aliquid qui. Quaerat ipsum fugiat facilis possimus ut rem aut. Numquam non exercitationem eveniet qui repellendus sit aperiam. Et occaecati distinctio ipsa voluptatum omnis quod porro molestias.', '-87.48427300', '-130.93759300', '5', 1, 6, 5, 'https://i.picsum.photos/id/35/820/360.jpg', 1, 0),
(14, 'bbf3673d-0f77-4824-be22-1f0124ee00de', '2020-12-14 10:24:00', '2020-12-14 10:24:00', NULL, 22, 122, 'https://i.picsum.photos/id/3/360/360.jpg', 3, '1968-12-14', 'West Elroy', 'Quae dolorem debitis eum fugiat perferendis recusandae qui. Sint iusto et voluptas ullam ea. Nam sunt aliquid placeat voluptas consectetur. Molestiae velit accusantium eum ipsum debitis qui natus. Nobis blanditiis eos voluptas veniam tenetur id doloribus. Asperiores sit dolor et veniam. Suscipit est consequuntur fuga sit omnis recusandae.', '17.72788400', '90.79111800', '7', 3, 1, 5, 'https://i.picsum.photos/id/55/820/360.jpg', 0, 0),
(15, '13b3cb3b-310b-46db-85f5-6b504853881a', '2020-12-14 10:25:00', '2020-12-14 10:25:00', NULL, 37, 56, 'https://i.picsum.photos/id/11/360/360.jpg', 2, '1955-12-14', 'Brookefort', 'Sed architecto dolorem aperiam reiciendis voluptatem provident laborum repudiandae. Hic dicta aliquid et voluptatem dolores. Ea aut fuga et quos blanditiis blanditiis.', '39.55612600', '8.90574500', '13', 1, 3, 2, 'https://i.picsum.photos/id/64/820/360.jpg', 0, 0),
(16, '8ed00a36-88ad-4376-9dc1-ada96ee2767b', '2020-12-14 10:26:00', '2020-12-14 10:26:00', NULL, 42, 101, 'https://i.picsum.photos/id/50/360/360.jpg', 3, '1996-12-14', 'West Gilberto', 'Tenetur consectetur et magnam placeat. Officia voluptatem cupiditate hic cumque quod quaerat quia.', '-33.69729800', '120.02130600', '10', 1, 5, 4, 'https://i.picsum.photos/id/20/820/360.jpg', 1, 0),
(17, '13a3e0f3-10c2-4dc1-998a-bcccf983c35f', '2020-12-14 10:27:00', '2020-12-14 10:27:00', NULL, 36, 192, 'https://i.picsum.photos/id/85/360/360.jpg', 2, '1997-12-14', 'New Willardshire', 'Nemo soluta itaque voluptas placeat.', '20.81704700', '-14.40345600', '7', 1, 2, 6, 'https://i.picsum.photos/id/24/820/360.jpg', 0, 0),
(18, '922e6681-5204-44fe-ab05-c59ba19eb88d', '2020-12-14 10:28:00', '2020-12-14 10:28:00', NULL, 46, 80, 'https://i.picsum.photos/id/21/360/360.jpg', 3, '1993-12-14', 'Wehnerhaven', 'Eum et nobis tenetur ut similique.', '27.42003700', '-158.03567800', '4', 1, 1, 4, 'https://i.picsum.photos/id/82/820/360.jpg', 0, 0),
(19, 'cbdc1a25-c70e-4557-be8d-2f13c36c9bdb', '2020-12-14 10:29:00', '2020-12-14 10:29:00', NULL, 18, 91, 'https://i.picsum.photos/id/83/360/360.jpg', 3, '1980-12-14', 'Kilbacktown', 'Quas nemo officia natus fugiat. Qui voluptatibus voluptatem et maiores voluptatum modi. Et sunt et hic aperiam neque ipsa rerum dolorem. Ullam facere optio sit id explicabo ratione. Laborum fugit quo explicabo totam dolorem incidunt est. Impedit qui est ipsum dolor omnis necessitatibus.', '72.54623900', '-46.77922700', '3', 3, 1, 2, 'https://i.picsum.photos/id/76/820/360.jpg', 1, 0),
(20, 'e51a8668-a7f2-47a8-ac71-ede10d254774', '2020-12-14 10:30:00', '2020-12-14 10:30:00', NULL, 48, 40, 'https://i.picsum.photos/id/77/360/360.jpg', 2, '1982-12-14', 'Zeldatown', 'Dolor non atque odit corporis. Tempora sed nihil aspernatur illo tempora. Et aut tempore et exercitationem ut veniam. Quibusdam fugiat perspiciatis fuga atque sit.', '-85.72621100', '152.61698200', '10', 4, 2, 5, 'https://i.picsum.photos/id/71/820/360.jpg', 1, 0),
(21, '6e9f932e-a9fa-4ca0-beb0-d42171655716', '2020-12-14 10:31:00', '2020-12-14 10:31:00', NULL, 17, 45, 'https://i.picsum.photos/id/22/360/360.jpg', 3, '1994-12-14', 'Port Halliestad', 'Ullam qui consequatur quo in. Ut deserunt quod et dolorum. Culpa aut aut voluptatum quod et dicta. Dolor temporibus alias rem.', '-14.62801900', '43.46601700', '19', 3, 6, 3, 'https://i.picsum.photos/id/3/820/360.jpg', 0, 0),
(22, 'be319633-c6b1-4646-8940-3ac4d7da518e', '2020-12-14 10:32:00', '2020-12-14 10:32:00', NULL, 50, 151, 'https://i.picsum.photos/id/72/360/360.jpg', 1, '1977-12-14', 'Brookville', 'Id modi qui earum quia aut. Sunt eum velit doloremque aut. Non sunt est ratione consequatur eum laborum. Ipsam rerum dignissimos accusamus itaque quas fugit at.', '18.08187800', '168.33709100', '7', 4, 4, 2, 'https://i.picsum.photos/id/89/820/360.jpg', 0, 0),
(23, 'd344e010-a94f-4e1d-b235-4270e7ae7593', '2020-12-14 10:33:00', '2020-12-14 10:33:00', NULL, 6, 116, 'https://i.picsum.photos/id/27/360/360.jpg', 3, '1987-12-14', 'Pacochaburgh', 'Est et sunt modi pariatur quo.', '73.85833300', '-15.82379500', '5', 1, 3, 2, 'https://i.picsum.photos/id/92/820/360.jpg', 0, 0),
(24, '0680b92b-a7a1-4d6a-82f2-687f7209fa31', '2020-12-14 10:34:00', '2020-12-14 10:34:00', NULL, 47, 144, 'https://i.picsum.photos/id/60/360/360.jpg', 3, '1973-12-14', 'Willchester', 'Animi voluptatum rem facere at voluptates aut. Provident dolores sit voluptas illo recusandae ad. Asperiores et facilis eum voluptatibus quod est ut. Sequi sed aliquid sint a ipsam non. Qui quisquam nesciunt voluptas. Officiis quis iure odio esse et. Quia perspiciatis magni consequuntur aut. Odio labore quia dolorem in voluptatem vel dolorum. Perferendis est doloremque quisquam provident. Velit ut exercitationem alias odio.', '32.69788900', '-82.20558900', '1', 1, 2, 2, 'https://i.picsum.photos/id/23/820/360.jpg', 1, 0),
(25, '72719429-e26d-49df-9ad8-306c2cd0ff34', '2020-12-14 10:35:00', '2020-12-14 10:35:00', NULL, 35, 167, 'https://i.picsum.photos/id/65/360/360.jpg', 1, '1983-12-14', 'Lake Ezequielfurt', 'Veniam beatae dicta provident non dolorem unde reprehenderit velit. Quibusdam nihil consectetur qui fuga repellendus commodi deleniti. Rerum reiciendis est architecto distinctio cum. Laboriosam eos nam laborum aperiam aliquid qui nobis. Ut fugit eum aut nostrum ut eum sit.', '87.97795900', '-33.04163300', '7', 4, 1, 1, 'https://i.picsum.photos/id/41/820/360.jpg', 1, 0),
(26, '853e6b37-bfba-40ac-9a42-aa30d0a7897c', '2020-12-14 10:36:00', '2020-12-14 10:36:00', NULL, 41, 109, 'https://i.picsum.photos/id/10/360/360.jpg', 2, '1957-12-14', 'West Mya', 'Consequatur hic sit dolor nobis voluptatem corrupti saepe rerum. Veritatis porro mollitia id dignissimos corporis fugit quasi. Est hic aut aut quo qui aperiam facere dolores. Blanditiis fugit quae officia recusandae reiciendis ipsam. Et sunt quasi voluptas tempora earum quam. Animi et minus ipsam aspernatur et quo. Dignissimos ipsa eum molestias non quia illo qui.', '42.75246800', '174.84946500', '13', 4, 6, 2, 'https://i.picsum.photos/id/92/820/360.jpg', 0, 0),
(27, 'c415b9f5-280e-45a8-b38f-ed911c5d1f80', '2020-12-14 10:37:00', '2020-12-14 10:37:00', NULL, 23, 32, 'https://i.picsum.photos/id/45/360/360.jpg', 3, '1958-12-14', 'North Neldaside', 'Sunt optio quasi modi dolorem. Quod quia nostrum repellat iste est. Excepturi dolor ab numquam nisi impedit. Aut ratione architecto eum sint voluptatem tempore. Aut sed asperiores voluptate reiciendis. Rerum aliquam dignissimos sed eum aperiam et quo. Ea aliquid ea qui ullam optio earum. Molestiae placeat illo voluptatum eum possimus blanditiis.', '46.96423900', '-113.01456600', '16', 1, 4, 1, 'https://i.picsum.photos/id/67/820/360.jpg', 1, 0),
(28, '26472af2-3ce5-43da-8b06-b8f8c3e97956', '2020-12-14 10:38:00', '2020-12-14 10:38:00', NULL, 25, 12, 'https://i.picsum.photos/id/80/360/360.jpg', 1, '1953-12-14', 'Sonnyburgh', 'Saepe est nobis et. Qui consectetur velit nobis qui dolorem temporibus omnis. Esse ipsum tempora qui earum maiores nihil ea quam. Sequi soluta reprehenderit et dolores aut est vero. Sed reprehenderit vel enim sapiente. Blanditiis quam et qui. Exercitationem quo nesciunt maxime qui similique inventore. Animi molestiae est quis quo culpa quibusdam. Quia omnis reprehenderit non illum.', '61.65040200', '-11.50261000', '8', 2, 6, 3, 'https://i.picsum.photos/id/70/820/360.jpg', 0, 0),
(29, 'e1c2d40a-e69c-437e-b3b9-236b05be3021', '2020-12-14 10:39:00', '2020-12-14 10:39:00', NULL, 29, 79, 'https://i.picsum.photos/id/46/360/360.jpg', 3, '1979-12-14', 'Maddisonside', 'Itaque in est maxime sed voluptates dolorem neque. Assumenda corrupti facere et cumque. Et et molestias unde mollitia placeat ad blanditiis aut.', '-26.24718700', '16.07663900', '18', 4, 3, 2, 'https://i.picsum.photos/id/73/820/360.jpg', 1, 0),
(30, '31211371-906c-42da-9166-d9f3b286e2bc', '2020-12-14 10:40:00', '2020-12-14 10:40:00', NULL, 3, 150, 'https://i.picsum.photos/id/22/360/360.jpg', 1, '1986-12-14', 'Lake Jayceton', 'Illo sit sunt est nihil laborum temporibus harum.', '-9.81288600', '67.46730000', '15', 3, 4, 2, 'https://i.picsum.photos/id/0/820/360.jpg', 0, 0),
(31, '27dfb908-2e59-4773-b439-5bbca76a55dd', '2020-12-14 10:41:00', '2020-12-14 10:41:00', NULL, 9, 208, 'https://i.picsum.photos/id/35/360/360.jpg', 1, '1984-12-14', 'New Fatima', 'Iure aperiam omnis qui rerum vel pariatur. Error non hic culpa molestias sunt. Dolores repudiandae modi distinctio vero ex non fuga.', '-44.47990800', '-61.49149200', '2', 4, 1, 3, 'https://i.picsum.photos/id/62/820/360.jpg', 0, 0),
(32, 'd0580f8b-071b-4fb1-aa45-a7d3d35932d3', '2020-12-14 10:42:00', '2020-12-14 10:42:00', NULL, 40, 19, 'https://i.picsum.photos/id/98/360/360.jpg', 3, '1969-12-14', 'Gracestad', 'Corporis accusantium neque ab ipsa. Et adipisci corrupti dolorem porro. Sunt aut qui occaecati cumque quo non quia. Asperiores rerum itaque qui quibusdam et non ut. Animi minima expedita sapiente. Est est animi repellendus quis dolores. Placeat quo aut eum quas. Deserunt modi officiis illum qui aspernatur. Sint dolor aut qui. Autem in rem unde delectus accusamus perspiciatis.', '5.30432900', '-55.16613500', '18', 4, 3, 6, 'https://i.picsum.photos/id/13/820/360.jpg', 0, 0),
(33, '4e32189f-dda3-4e56-8df8-8ece88a9fd1b', '2020-12-14 10:43:00', '2020-12-14 10:43:00', NULL, 27, 172, 'https://i.picsum.photos/id/3/360/360.jpg', 3, '1961-12-14', 'Goodwinfurt', 'Odit voluptatem adipisci quo quaerat aliquid sit culpa. Dignissimos et impedit dolores velit. Ea non aut temporibus.', '22.38135200', '45.79507000', '10', 3, 5, 1, 'https://i.picsum.photos/id/71/820/360.jpg', 1, 0),
(34, 'd77844c7-5998-4f36-88dd-132419e93641', '2020-12-14 10:44:00', '2020-12-14 10:44:00', NULL, 31, 151, 'https://i.picsum.photos/id/56/360/360.jpg', 2, '2002-12-14', 'West Elisabethchester', 'In id sit nihil omnis magni aliquam. Et rerum est laudantium eos ipsum et natus delectus. Non assumenda atque nam nihil vel ut. Et ut vero aut quibusdam nisi quia qui.', '-54.58405200', '-139.95582400', '4', 1, 4, 1, 'https://i.picsum.photos/id/52/820/360.jpg', 0, 0),
(35, '89e98c86-364d-44e5-8c4d-0eb23002265e', '2020-12-14 10:45:00', '2020-12-14 10:45:00', NULL, 4, 37, 'https://i.picsum.photos/id/99/360/360.jpg', 3, '1998-12-14', 'North Gideonburgh', 'Recusandae dolore esse saepe earum. Ipsam consequatur soluta sequi corrupti.', '-75.48638100', '-129.71882000', '16', 4, 1, 5, 'https://i.picsum.photos/id/47/820/360.jpg', 1, 0),
(36, '055b80d6-d340-4980-9747-a037abcf37e2', '2020-12-14 10:46:00', '2020-12-14 10:46:00', NULL, 51, 201, 'https://i.picsum.photos/id/49/360/360.jpg', 2, '1985-12-14', 'New Dorianshire', 'Illo ratione ullam ad quas repudiandae ipsa. Animi aut occaecati aut esse quia facilis sunt. Quaerat sapiente dolor incidunt placeat eos quia mollitia. Consequuntur magni et consequatur asperiores. Vel est pariatur quis vel in. Autem libero placeat ad laudantium aut.', '47.72478600', '137.84756800', '14', 1, 3, 1, 'https://i.picsum.photos/id/12/820/360.jpg', 0, 0),
(37, 'e01f1a43-cf72-4d24-9236-5fea3e2b74fd', '2020-12-14 10:47:00', '2020-12-14 10:47:00', NULL, 5, 159, 'https://i.picsum.photos/id/10/360/360.jpg', 3, '1980-12-14', 'North Keira', 'Molestiae excepturi dolor consequatur et quis placeat. Quaerat ut repellendus doloremque exercitationem expedita velit maiores. Quia sequi voluptas nesciunt rem occaecati quidem. Labore odit id possimus earum. Est inventore dolores quia ut voluptatum.', '-69.60256400', '-12.87574600', '11', 2, 6, 1, 'https://i.picsum.photos/id/8/820/360.jpg', 1, 0),
(38, '90129acc-d3a7-4f91-a698-fc05ffd2e9b6', '2020-12-14 10:48:00', '2020-12-14 10:48:00', NULL, 33, 116, 'https://i.picsum.photos/id/93/360/360.jpg', 3, '1974-12-14', 'Johnsontown', 'Nostrum et voluptas rerum incidunt. Nostrum et voluptates error voluptatem quia consequuntur expedita error. Eos et nihil molestias impedit enim. Molestiae sint esse maxime non nobis. Fuga in enim et. Accusantium ut nam qui nulla. Itaque consequatur fugit voluptatem autem. Est eos laboriosam cumque est fugit. Commodi nemo distinctio sed nisi. Adipisci suscipit optio blanditiis velit quae. Doloribus in laudantium quia optio quo.', '-49.48502500', '-86.92328700', '10', 2, 4, 5, 'https://i.picsum.photos/id/6/820/360.jpg', 0, 0),
(39, 'caa8bb7a-b67c-4f3a-920e-2b38c774487d', '2020-12-14 10:49:00', '2020-12-14 10:49:00', NULL, 44, 107, 'https://i.picsum.photos/id/67/360/360.jpg', 2, '1990-12-14', 'North Ibrahimburgh', 'Non impedit libero aperiam magni autem error. Sed voluptatibus voluptatem incidunt et perspiciatis explicabo praesentium. At quos quia quis consequatur iusto ut. Quod molestiae quia mollitia nemo quis beatae est. Ipsam quia fuga sed distinctio voluptatum assumenda. Assumenda porro sunt non non. Odio eaque beatae consequatur illo dolores. Ut voluptas id ipsa aut in recusandae eveniet. Velit accusamus quia iusto dolorem rerum.', '-15.01231100', '-118.44965600', '3', 4, 1, 3, 'https://i.picsum.photos/id/58/820/360.jpg', 1, 0),
(40, 'b716afc1-dff8-46c7-a541-ef5a022b0d2a', '2020-12-14 10:50:00', '2020-12-14 10:50:00', NULL, 10, 128, 'https://i.picsum.photos/id/24/360/360.jpg', 2, '1962-12-14', 'Isaiasberg', 'Dolorum aut non ut tempora iure est. Excepturi dolores consequatur consectetur dolores. In aut quaerat eum quaerat.', '19.16202800', '-33.68939600', '3', 4, 5, 1, 'https://i.picsum.photos/id/15/820/360.jpg', 0, 0),
(41, '3f018228-b00d-41c9-8f8a-def170e602c9', '2020-12-14 10:51:00', '2020-12-14 10:51:00', NULL, 45, 38, 'https://i.picsum.photos/id/61/360/360.jpg', 3, '1990-12-14', 'Ramirohaven', 'Rerum veritatis ullam a porro facilis iste. Aliquid rerum nisi nam sit molestiae. Magnam quae et est nobis alias rerum aut. Quasi eum laudantium sint magnam explicabo aut illum veritatis. Delectus sed ut quo. Saepe sunt voluptates vel voluptatibus et cupiditate. Aut consequatur dolorem eligendi. Aut aut aut sit omnis sapiente est. Possimus sit deserunt voluptas necessitatibus. Sint officia qui non sed ut. Aspernatur perspiciatis rerum sapiente ipsum iusto dolores.', '60.83998900', '112.87856000', '20', 1, 3, 6, 'https://i.picsum.photos/id/73/820/360.jpg', 1, 0),
(42, '4578f832-b481-4e2f-bcc8-72fe5dd3d9f7', '2020-12-14 10:52:00', '2020-12-14 10:52:00', NULL, 21, 236, 'https://i.picsum.photos/id/48/360/360.jpg', 2, '1966-12-14', 'Lake Norval', 'Sed qui qui voluptatum.', '-81.68675600', '47.59355300', '15', 1, 2, 1, 'https://i.picsum.photos/id/52/820/360.jpg', 1, 0),
(43, '3beb99e0-c9c7-4c74-8a86-b1c369dca224', '2020-12-14 10:53:00', '2020-12-14 10:53:00', NULL, 15, 86, 'https://i.picsum.photos/id/79/360/360.jpg', 1, '1977-12-14', 'North Arlo', 'Cumque hic adipisci ducimus aut ut officia. Itaque laudantium numquam vel dicta omnis debitis nesciunt. Quia nesciunt nemo et eius. Accusamus sit temporibus quisquam libero recusandae. Sapiente commodi tempora voluptatum voluptates blanditiis. Occaecati quasi voluptatum recusandae ut nihil. Iure ipsa ex quam dolores sequi dolores eius.', '34.54298100', '-16.99905700', '15', 3, 4, 4, 'https://i.picsum.photos/id/8/820/360.jpg', 1, 0),
(44, '69ce5e17-bd2a-4daa-87fd-92126a555f7c', '2020-12-14 10:54:00', '2020-12-14 10:54:00', NULL, 20, 199, 'https://i.picsum.photos/id/7/360/360.jpg', 2, '1981-12-14', 'West Guschester', 'Laborum eveniet nulla eos ut ex. Consequatur voluptas veniam quo ut veniam consequuntur. Molestias aut dolores labore facere temporibus ut sed. Voluptas voluptatem itaque iure exercitationem. Omnis iusto laudantium qui possimus et exercitationem. Consequuntur voluptatem tempora delectus necessitatibus dolorum. Culpa delectus quo et veritatis ipsa exercitationem blanditiis. Et suscipit minus provident aut harum ut veniam. Aut quis et iste doloremque.', '-48.08608000', '-107.78522800', '8', 4, 1, 5, 'https://i.picsum.photos/id/55/820/360.jpg', 1, 0),
(45, 'bddf46b6-2c41-4e5b-9999-3d6f3fbc6485', '2020-12-14 10:55:00', '2020-12-14 10:55:00', NULL, 34, 136, 'https://i.picsum.photos/id/58/360/360.jpg', 1, '1951-12-14', 'New Alva', 'Rerum blanditiis voluptas earum sint ullam voluptatem. Veritatis accusantium consequatur ducimus laboriosam. Illo et et et eum impedit adipisci quae.', '-17.79368800', '42.16264800', '21', 2, 5, 4, 'https://i.picsum.photos/id/4/820/360.jpg', 0, 0),
(46, 'ca3d094f-680c-4f9e-8337-24a688cff37f', '2020-12-14 10:56:00', '2020-12-14 10:56:00', NULL, 30, 190, 'https://i.picsum.photos/id/19/360/360.jpg', 3, '1975-12-14', 'Lake Felipe', 'Sed molestiae et maiores earum consectetur beatae voluptates. Amet minus excepturi quia quo eos perferendis. Aut et adipisci officia autem at cupiditate. Placeat autem nulla nam omnis. Sed et ipsa est nam aliquid tenetur aut. Nam et vero quibusdam harum. Vel culpa nihil iure culpa aut totam. Quo ex eius qui fugiat vel. Repellendus beatae labore perferendis qui. Eum praesentium natus voluptates. Et architecto quo fugit excepturi sit nobis suscipit.', '-18.98475100', '-98.79667400', '21', 4, 3, 3, 'https://i.picsum.photos/id/0/820/360.jpg', 1, 0),
(47, '98174bbb-2779-4d0d-a938-06258d113fb1', '2020-12-14 10:57:00', '2020-12-14 10:57:00', NULL, 28, 157, 'https://i.picsum.photos/id/22/360/360.jpg', 2, '1975-12-14', 'Delphineborough', 'Corrupti molestias eos autem sunt quia nihil. Voluptas explicabo aut nam ipsam. Inventore voluptas voluptas rerum molestiae aut beatae. Sint quis ea autem voluptas modi doloribus mollitia. Enim illo deleniti quaerat tempora corrupti porro. Necessitatibus voluptatibus consequatur ea officia fugit aut. Officia dolorem placeat quo exercitationem aut. Illo hic molestias libero sunt et aperiam voluptatum.', '87.57637300', '-0.01734700', '22', 1, 6, 2, 'https://i.picsum.photos/id/92/820/360.jpg', 0, 0),
(48, '4bf0b9cb-25ae-49eb-a381-559b2ebaf732', '2020-12-14 10:58:00', '2020-12-14 10:58:00', NULL, 24, 106, 'https://i.picsum.photos/id/18/360/360.jpg', 3, '1984-12-14', 'Port Herminia', 'Et mollitia at in excepturi. Quo molestiae et nobis dolor. Minus soluta maiores ut minus mollitia nulla. Magni fuga rerum et magnam. Dolores quo quia laborum consequuntur. Quas doloribus veniam culpa vel sunt labore. Eligendi ut veniam non et aperiam porro. Ea iste optio necessitatibus. Eum recusandae beatae asperiores aut recusandae in.', '61.35370400', '35.13808300', '6', 4, 3, 1, 'https://i.picsum.photos/id/96/820/360.jpg', 0, 0),
(49, '8056f408-b65f-4567-81b7-53617df6452b', '2020-12-14 10:59:00', '2020-12-14 10:59:00', NULL, 11, 111, 'https://i.picsum.photos/id/80/360/360.jpg', 1, '1991-12-14', 'Wiegandmouth', 'Sit dolorem consequatur eos. Ipsum aut exercitationem laudantium. Iusto incidunt amet adipisci quia. Et architecto est optio id non sapiente. Illo dignissimos reiciendis nemo eaque maxime optio cumque. Dignissimos consequuntur non unde. Fugit sed officiis exercitationem minus. Tempore nostrum ipsa dolorem maxime. Optio autem aut nam ipsum aspernatur dolor.', '5.83321500', '4.59964100', '9', 2, 6, 6, 'https://i.picsum.photos/id/41/820/360.jpg', 1, 0),
(50, '91b9602c-8882-4472-b68f-ef0fffc5be0a', '2020-12-14 11:00:00', '2020-12-14 11:00:00', NULL, 7, 198, 'https://i.picsum.photos/id/99/360/360.jpg', 2, '1967-12-14', 'West Dannyside', 'Non voluptatum similique quae quia quia provident aut. Dolore at praesentium laboriosam consectetur quas dolore excepturi. Quas facere temporibus quibusdam temporibus quisquam ipsa omnis libero. Aut quia quaerat doloribus eum.', '-64.20955900', '-147.38418300', '2', 3, 1, 3, 'https://i.picsum.photos/id/6/820/360.jpg', 0, 0),
(51, '7bb38ee0-8e63-457d-b6bb-41b2444edb4c', '2020-12-14 11:01:00', '2020-12-14 11:01:00', NULL, 49, 154, 'https://i.picsum.photos/id/94/360/360.jpg', 3, '1968-12-14', 'New Fletabury', 'Doloribus odit aspernatur ut numquam. Ut libero neque consequatur vel magni quam magnam. Dignissimos vero atque quo aspernatur sit et.', '-65.53207500', '-45.09431900', '12', 2, 6, 4, 'https://i.picsum.photos/id/74/820/360.jpg', 0, 0),
(52, '0c682698-d41d-4081-bbd6-56c553923d6e', '2020-12-14 11:02:00', '2020-12-14 11:02:00', NULL, 32, 88, 'https://i.picsum.photos/id/88/360/360.jpg', 3, '1954-12-14', 'Kubtown', 'Omnis assumenda temporibus voluptates. Facilis saepe et voluptatem sunt blanditiis et cumque quam. A ut ex quod eos placeat explicabo autem. Sint at et id eveniet et.', '32.59370600', '-123.38279700', '6', 3, 4, 6, 'https://i.picsum.photos/id/2/820/360.jpg', 1, 0),
(53, '9ded6748-e467-4e23-96b1-19d4667eff6c', '2020-12-14 10:18:46', '2020-12-14 10:18:46', NULL, 53, 99, 'https://i.picsum.photos/id/10/360/360.jpg', 2, '1994-12-14', 'North Rashad', 'Inventore quae dolor nemo occaecati saepe omnis vel exercitationem. Aut laudantium enim velit dolorem consequatur.', '-23.44946500', '56.96084700', '12', 2, 5, 5, 'https://i.picsum.photos/id/0/820/360.jpg', 0, 0),
(54, 'd522552e-6367-414f-b8be-66756305bad7', '2020-12-14 10:19:46', '2020-12-14 10:19:46', NULL, 55, 99, 'https://i.picsum.photos/id/45/360/360.jpg', 3, '1996-12-14', 'Cruickshankmouth', 'Perferendis aperiam autem a enim. Quos ad amet possimus neque.', '39.30807800', '131.92301600', '12', 1, 5, 6, 'https://i.picsum.photos/id/67/820/360.jpg', 1, 0),
(55, '9876de2f-f36e-4cc2-b8b0-8b4c6e4928d8', '2020-12-14 10:20:46', '2020-12-14 10:20:46', NULL, 57, 99, 'https://i.picsum.photos/id/36/360/360.jpg', 2, '1991-12-14', 'Treutelbury', 'Qui iusto dolorem quis veritatis. Doloremque eaque corrupti est ab esse cumque consequatur. Doloribus aut commodi aut ratione qui praesentium. Dolore et minus ea doloribus animi accusantium ut ducimus.', '-14.58205000', '45.82326900', '6', 4, 2, 4, 'https://i.picsum.photos/id/99/820/360.jpg', 1, 0),
(56, 'a211379f-6133-4360-9cb3-00189517b738', '2020-12-14 10:21:46', '2020-12-14 10:21:46', NULL, 54, 99, 'https://i.picsum.photos/id/93/360/360.jpg', 2, '1997-12-14', 'Kochfort', 'Laboriosam ipsam nihil eaque excepturi. Delectus qui quisquam odit quia tempora totam. Et perspiciatis qui numquam non sunt. Mollitia a enim illum in nisi tenetur qui. Sunt ullam repellendus inventore. Illo aut non perferendis corporis. Tempora tempora qui officiis quos accusantium qui ut sunt. Aut facere suscipit voluptate suscipit placeat beatae. Minima accusantium nihil libero et quae. Voluptas nulla blanditiis ducimus consequatur rem.', '41.45187100', '10.10356100', '1', 2, 5, 2, 'https://i.picsum.photos/id/19/820/360.jpg', 0, 0),
(57, 'b1261fad-2fdd-4d71-8ae1-4a50c2136c9f', '2020-12-14 10:22:46', '2020-12-14 10:22:46', NULL, 56, 99, 'https://i.picsum.photos/id/47/360/360.jpg', 2, '1998-12-14', 'Robertaborough', 'Ratione corrupti quis dolores hic molestias laborum. Ad velit quia repudiandae earum ut. Velit labore nulla a placeat quod magni. Eum est numquam distinctio ipsam.', '52.84967900', '35.70177400', '9', 1, 4, 5, 'https://i.picsum.photos/id/26/820/360.jpg', 1, 0),
(58, 'cec729b5-a3f9-4347-b69a-51e0a75c93bb', '2020-12-15 05:34:50', '2020-12-15 05:34:50', NULL, 58, NULL, NULL, 1, '1994-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(59, '12113e51-fa0a-452f-a767-e29417a31011', '2020-12-15 05:35:46', '2020-12-15 06:00:14', NULL, 59, NULL, 'pic.png', 1, '1994-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ds.png', NULL, 1),
(60, 'd3405b0a-4725-446b-8a01-d6eb055cd7e4', '2020-12-15 06:52:31', '2020-12-15 06:52:31', NULL, 60, NULL, NULL, 1, '1994-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `_id` tinyint(3) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`_id`, `_uid`, `status`, `created_at`, `updated_at`, `title`) VALUES
(1, '15f21c9f-88bb-4fec-bad4-03eb9d9065f8', 1, '2020-12-14 09:30:21', '2020-12-14 09:30:21', 'Admin'),
(2, '287133c4-2afc-4f65-ab3c-28b0df8a099a', 1, '2020-12-14 09:30:21', '2020-12-14 09:30:21', 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `_id` int(10) UNSIGNED NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `key_name` varchar(45) NOT NULL,
  `value` text,
  `data_type` tinyint(4) DEFAULT NULL,
  `users__id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_settings`
--

INSERT INTO `user_settings` (`_id`, `created_at`, `updated_at`, `key_name`, `value`, `data_type`, `users__id`) VALUES
(2, '2020-12-14 10:23:16', '2020-12-14 10:23:16', 'max_age', '70', 3, 52),
(4, '2020-12-15 07:13:05', '2020-12-15 07:13:05', 'distance', '200', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_specifications`
--

CREATE TABLE `user_specifications` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `type` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `specification_key` varchar(15) NOT NULL,
  `specification_value` varchar(150) DEFAULT NULL,
  `users__id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_specifications`
--

INSERT INTO `user_specifications` (`_id`, `_uid`, `created_at`, `updated_at`, `type`, `status`, `specification_key`, `specification_value`, `users__id`) VALUES
(1, '17ac93d4-3e88-47aa-96e5-9aaa2d350580', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'mixed', 14),
(2, 'effa73a9-51c4-4ef3-a2ca-29dfd4196aaa', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'curvy', 14),
(3, '187e5675-08bd-498e-9b61-67f235cf0f74', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '157', 14),
(4, '87db7bc4-86e7-40e3-9e7c-dd6beebe14b9', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'pink', 14),
(5, '8ad8421d-d3ea-4870-b8f3-8c9d7ef1a3a8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'introverted', 14),
(6, 'a9755832-b482-4ea5-904e-d9bade5f3d83', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'only_good_friends', 14),
(7, 'd588f534-2784-4c26-8f31-84a92178b77a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'expecting', 14),
(8, '93628093-0e5c-4ec8-b1a3-d959ae1b1091', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 14),
(9, 'c5e3fe23-d4fd-4542-99a1-c9561ca85d51', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'catholic', 14),
(10, '33b67a63-6221-4408-bf33-e8e3e84e324b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'partner', 14),
(11, 'ea0ea7fa-37f6-499a-b18c-2948d264fc3f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 14),
(12, '175d94e9-0050-484b-9200-d23d3eb29d46', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'not_very_much', 14),
(13, 'ed7b80c2-029c-4083-8904-aa62fbb378fc', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 14),
(14, '71b11190-5e0a-46b5-99ac-84998d55636f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 14),
(15, '834cca90-68fb-4019-b350-e42b2dfac5c1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'latin_american', 19),
(16, '35141558-d0de-49fd-aa54-0cf549e09ac4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'sporty', 19),
(17, '41877639-376e-46a9-8701-28f371e32863', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '206', 19),
(18, '632f9e4c-5851-4052-9b0a-666d7ea350c5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'brown', 19),
(19, 'd94ce363-02f2-40f7-b141-9d85fbf0c432', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'social', 19),
(20, '1052f920-f983-42fd-aed0-bd5fd5f0c034', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'no_friends', 19),
(21, '7d758cc4-083d-4a9c-9cbf-9d12ccb7ba7d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'no_never', 19),
(22, '99800e61-42eb-43c5-a785-48620f3143d1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 19),
(23, '53d9364d-d920-4171-a720-1c666ecec586', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'atheist', 19),
(24, '315fcd19-9f3a-4603-89c3-090d35df7371', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'parents', 19),
(25, 'ebb0890f-12fd-4fb9-bdc2-70b7ced3403d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 19),
(26, 'd8995356-7600-4c38-a7e5-f8ec4e436903', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'no', 19),
(27, '17a0ee1e-e6e2-44fb-859b-884bf0d83bb6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 19),
(28, 'd7ae775a-745b-4620-9af2-f3b98c18b5e9', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 19),
(29, 'e098dfe5-9d9f-4a86-8742-e888ab4a2e03', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'latin_american', 13),
(30, 'd2fdc6c2-9fad-4287-a84b-c98d9e2303d0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'slim', 13),
(31, '847cc698-7afc-40de-bdd0-81e894482e74', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '170', 13),
(32, '5389ca54-0998-4484-9bbe-1884e7fe8139', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'gray_or_partially_gray', 13),
(33, 'eb8f823e-cd86-4c3f-8eed-5c7fd5f6e0e0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'quiet', 13),
(34, 'b77c4ea1-dcc7-4454-b5a9-c6c6b0b51615', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'no_friends', 13),
(35, '622a300c-0ca7-4931-8ebb-8427ff894635', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'someday_maybe', 13),
(36, '383b01e1-ff98-4d1f-abb3-517b35a3c4fa', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 13),
(37, 'edef717d-1f6e-42f6-a215-e681cfd6661c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'jewish', 13),
(38, 'dbd7c496-6419-4843-b701-0666adb4e8fd', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'friends', 13),
(39, 'cc8d2089-0c85-4697-b904-07d1ff26a84f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 13),
(40, '854c719e-a06b-4b06-8aed-c8c9ddd622b4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'not_very_much', 13),
(41, '60a626b0-64ab-4f24-8dbd-bd781d7c6df8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 13),
(42, '8f0dfcbd-f851-4923-92e9-3be763721138', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 13),
(43, 'a2290b8d-01ab-4045-86f5-9ba3060daa84', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'mixed', 16),
(44, '48fdfc61-5ab4-4b94-ac05-c3a1aa880644', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'other', 16),
(45, '29d472be-6cc9-4dad-8685-b54a38c5617d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '151', 16),
(46, 'afc8389e-9e85-4398-8fe8-9af2d57ac444', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'brown', 16),
(47, '463f759a-e98a-412c-9808-2325771526fc', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'generous', 16),
(48, '3ebe38ba-7595-47ac-94ed-c5bf1e8c980d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'no_friends', 16),
(49, '885e5cf2-df70-4225-9df3-621bdf5a7e3a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_have_kids_and_don\'t_want_more', 16),
(50, 'ad810e83-6992-4cd8-b3d8-9192a88a2f9b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 16),
(51, '8d76a52b-e59e-44b7-9745-9e9e7f087118', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'catholic', 16),
(52, '19d04ff5-fde8-4e72-877b-a1556022d53a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'friends', 16),
(53, 'ad67c0aa-5710-4672-994f-9598c95f566d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 16),
(54, 'd7b83fc8-d32a-4bb4-a435-dde0948ff548', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_sometimes', 16),
(55, '153318e8-8633-49ae-a51c-0bc529c31b1f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'i_some_sometimes', 16),
(56, '12e61cb0-0fbc-444f-9f3c-e1edd5d7e3e5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 16),
(57, 'bc9be1a7-7868-4681-8f34-617ca048c2bb', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'white', 52),
(58, '4e17cea4-b02f-4465-ab6c-5c4bfb2eeb5c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'average', 52),
(59, 'b687f416-e141-40e0-bf75-2814ff22bf45', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '146', 52),
(60, 'b7bb827f-ff12-41e3-bb81-0a9d99fe15ba', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'pink', 52),
(61, 'f321ae4f-70d4-4688-8b95-898b16bef820', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'lively', 52),
(62, '37332d62-8b0f-4318-870c-f38d836e0c52', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'some_friends', 52),
(63, '78c63616-262a-4738-a7aa-bcedba0da42f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_have_kids_and_don\'t_want_more', 52),
(64, '6fb386d1-a4c2-4ff4-8b30-457aa0fa9030', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 52),
(65, 'c51a1625-d410-4844-a610-53e82dcee67e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'muslim', 52),
(66, '8ae80b73-f584-4050-90ca-e52cfb13b68e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'friends', 52),
(67, '497bf648-1ec3-48c3-adaa-fdbb021bc902', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 52),
(68, '8f25dfab-a902-498e-b329-7dab2c0f7926', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_all_the_time', 52),
(69, '50585b22-793b-4746-a8e2-25d5381b1dfb', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'i_some_sometimes', 52),
(70, '3c205bd0-b236-4ff1-85aa-0f7f7249794b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 52),
(71, '0105c56c-3615-4288-97e2-1d4b2be20408', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'north_african', 38),
(72, 'b1ba0a92-e629-4180-9a22-066e6e8032bf', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'supermodel', 38),
(73, 'e912c7e4-1119-4308-a217-10813e2d405f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '220', 38),
(74, '4a8e84c4-7ceb-4b3f-a7d6-7f430f5831da', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'gray_or_partially_gray', 38),
(75, '510d7eae-11de-4ed5-bb27-7f9cc4060227', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'loner', 38),
(76, '16ccfeca-09ff-46a6-b29e-8f831a932df0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'only_good_friends', 38),
(77, '5f002b7a-b2dc-4833-ba14-eb3970c20ca6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'someday_maybe', 38),
(78, 'e98d07b3-c1c1-4cbc-8bd6-41a7c895be58', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 38),
(79, '31c7ec81-3119-4def-b279-a6229a20b082', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'sikh', 38),
(80, 'f2555756-4b0f-4755-ab1d-3d03a45f84a6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'partner', 38),
(81, 'c1056d57-3dec-4eae-9725-202e27e2a8ce', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 38),
(82, '4bd0639d-7e11-4721-8fd7-a03c0d1da36a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_sometimes', 38),
(83, '02df1b8c-672d-4dc0-8aba-c89d86ec2d8c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 38),
(84, '05003ee5-2c34-4d6c-bb29-a55b3314bccc', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 38),
(85, 'cdb5d0e5-aa55-4c64-90a4-176f6d501909', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'mixed', 43),
(86, '2ce290d3-4ba5-4b8d-8dab-5ba6ad74fd22', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'supermodel', 43),
(87, '217fe1bf-d0c0-431a-9c45-78c06077d88f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '189', 43),
(88, 'db109a5a-d390-4d6e-bc9a-4c8a552bafbe', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'blue', 43),
(89, '4c8d824b-5f02-4ad2-bff9-9c8a2c1cfac9', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'careless', 43),
(90, 'd850029f-264d-4108-b174-2c1ecd405e3f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'only_good_friends', 43),
(91, '42257840-610e-4df0-adce-ffdfd30e1ee6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_have_kids_and_don\'t_want_more', 43),
(92, '3afb3649-4eca-4b01-b70f-3f69c28115c4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 43),
(93, '8c8f0237-6a5e-47f7-b3a6-cec0e21d4193', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'agnostic', 43),
(94, '8bda3943-c192-4680-a386-bf6f1babc514', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'children', 43),
(95, 'a07beb04-eeda-48e8-b38f-1b08b9c3743c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 43),
(96, '3de0e3ff-acc5-42a7-a900-081d63858bae', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_all_the_time', 43),
(97, 'c6826586-d9f6-4292-82c9-36c15dfab6a2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'never', 43),
(98, '755bb2ed-6298-4ec5-ba64-caf1a79fdc5b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 43),
(99, '3740c6b3-8c00-462a-83aa-3a77cc8be4c9', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'mixed', 39),
(100, '39493654-e52b-4ee5-8575-2e107e4ae0e1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'curvy', 39),
(101, '23620bcd-f821-4811-a2f4-83ceae00d8ab', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '203', 39),
(102, 'f436d2c3-5060-4e82-a7af-18903c0634ec', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'gray_or_partially_gray', 39),
(103, '6225cf14-933f-41e5-bdd9-823c8b771c25', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'friendly', 39),
(104, '4e84ec97-0509-415c-a4e7-6978f8e07f7c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'only_good_friends', 39),
(105, '044e0717-4ebf-4d9c-812d-4b3a7e83a37d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'expecting', 39),
(106, 'b3456b90-257e-4ff3-8597-90cae1ff9894', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 39),
(107, '5215074a-28a8-43a2-b7eb-90e597154fa4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'atheist', 39),
(108, 'c21a4982-c666-4ffa-bbb1-9d7a8cc6d6be', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'parents', 39),
(109, '52c12595-4f11-4e39-97a3-1706a7377713', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 39),
(110, '68875c20-39a7-4601-bf18-1dff56f4070f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_all_the_time', 39),
(111, '7145e517-e7c6-4728-b597-d6ed07a12268', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'i_some_sometimes', 39),
(112, '37d6990d-5be2-44fc-bab4-da360b377165', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 39),
(113, 'ebbee81d-94ad-4ea6-894c-3798b715653e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'middle_eastern', 26),
(114, 'ec5e44fe-c080-40d0-b0a9-09fb72e0934c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'other', 26),
(115, '8232a689-71fc-4cf0-8f0c-9cf33a4ec9bf', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '217', 26),
(116, 'c036735b-2cd5-45be-a1cc-f9043c59f301', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'blue', 26),
(117, 'a21cf295-e62a-40ce-9812-236b2f2c7a13', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'helpful', 26),
(118, '8d4de954-18aa-4423-99d5-774ab37b6508', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'only_good_friends', 26),
(119, '9115852d-d3c4-43bc-aa7d-193574a90cb7', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'expecting', 26),
(120, 'a11cfd19-63f6-42fd-af5c-13c26733af82', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 26),
(121, 'd350feac-10c0-4ba7-844a-743632acbc6b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'other', 26),
(122, '50739b9f-294d-4c8b-b9b5-9c06a402564e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'partner', 26),
(123, 'ffd57b78-b168-40f8-911f-264220743feb', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 26),
(124, '45040324-1715-4f68-8d20-988a2dde0824', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_sometimes', 26),
(125, '99028629-f1b0-45c6-8a4d-ef530f437368', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 26),
(126, '42c70074-a4d0-426e-af54-1cb3a7650163', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 26),
(127, 'f09fb1b2-da9d-4756-81b5-4f7df89b370e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'black', 8),
(128, '963e8e9e-6c7c-458d-92d8-c4e58a103065', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'average', 8),
(129, '679642f7-ae62-4509-a7e1-4fa4d9a235ff', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '218', 8),
(130, 'a70df8c0-1ada-488a-b43d-1886d1ba2570', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'partly_or_completely_bald', 8),
(131, 'bc2206e3-4351-44ec-8b9b-bafff39c431f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'demanding', 8),
(132, '6fce16ed-66ce-4d41-815a-30ee5e6f8ba0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'many_friends', 8),
(133, '14231738-3b17-46f9-a19d-b01846cff227', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_have_kids_and_don\'t_want_more', 8),
(134, '0a1dad50-ad1e-4a66-95df-7d92a889bd85', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 8),
(135, '7f2bf7a4-e36e-435c-b255-c9fb60379267', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'buddhist', 8),
(136, 'ff1e1fef-d212-4aac-8b59-8d6929373e5c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'friends', 8),
(137, 'e31fc4e9-d37a-4162-8003-0024bcf1f818', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 8),
(138, '6e13e4b1-aa45-4a50-9db2-923ba35d5502', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'no', 8),
(139, '3f7b3080-cfd0-4398-9348-ba2dfa18004d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 8),
(140, '2939a2b3-3592-41ba-b907-a28b93e9b0d9', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 8),
(141, 'b92af0d0-6838-4fa0-b075-c9e9ecc3980f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'black', 12),
(142, '91950e9c-b5a9-49d4-a6af-a086e3eb6de2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'supermodel', 12),
(143, '418ea2a0-e076-4fb0-8cc5-35b24757f03b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '145', 12),
(144, 'bdc52317-c9ca-4be0-afb1-3c819e1fa9dd', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'orange', 12),
(145, 'a76f6c86-f78d-49e3-b16f-a061b896614d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'patient', 12),
(146, '9b1ddeef-3568-49bd-b99a-1cf056e03672', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'some_friends', 12),
(147, 'ad3b4f03-f47e-4660-be47-c638812cbc93', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_have_kids_and_don\'t_want_more', 12),
(148, '3b42c68f-3acb-482f-a6bd-14137f17e9b5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 12),
(149, '252a9a39-1702-4cdf-b3b0-49661f6bdbc8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'sikh', 12),
(150, 'c623a174-01e6-46d6-b6d4-d6ab76a3cce6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'partner', 12),
(151, 'ffc0554c-75e5-4403-9a0b-9da7eb85d39f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 12),
(152, '09c99878-1e7a-44c8-82e8-756e1cb1ead5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'no', 12),
(153, '6ac5696c-5cb1-41ac-9371-ab2ba3932607', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 12),
(154, 'a6c9682c-6e60-4a4b-9da3-7efcda55b45d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 12),
(155, '2f8af03a-e12e-4108-99b0-e41f66e16646', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'north_african', 22),
(156, 'd8bcdc70-3573-42f2-955d-33c2b0d214eb', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'slim', 22),
(157, '1ba77d21-72f7-47fb-8178-ff8b69b196f2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '212', 22),
(158, '716aa247-85ed-4e24-8a47-4a4621bfda53', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'other', 22),
(159, '17a64bb4-1ad5-47ea-9525-b441d4aa7222', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'extroverted', 22),
(160, '3ec726bb-fd73-45d7-9b5a-a3556d9bd866', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'only_good_friends', 22),
(161, '1a0a96ac-1dc0-40f0-917c-d7641bdc8224', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_already_have_kids', 22),
(162, '8b2ddc00-b0a1-4ea1-a5bf-9c03c07bd33f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 22),
(163, '1a3f469b-7620-45f5-b962-c69a653605aa', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'sikh', 22),
(164, '872433f7-c384-4e4b-b7fe-d61032e4af41', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'friends', 22),
(165, '50ffb317-194e-49e2-952a-322685a22b45', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 22),
(166, 'ab75fe5c-5493-4a96-a48e-7a630cd8083b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_all_the_time', 22),
(167, '4b03c789-7820-4647-bef9-a299a1fc1229', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'never', 22),
(168, '4e5172af-465e-4575-842f-1e6577690a15', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 22),
(169, '174c58eb-94e9-4f3c-8016-d6fe355cbe30', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'asian', 37),
(170, '7b9594f6-90b1-4178-9a0c-95f71da95767', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'other', 37),
(171, '5fb7d932-cf20-4044-ae1c-7b87b861854e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '179', 37),
(172, '24fd7c6c-34d6-42d0-ad58-63ff1f92adb1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'blond/strawberry', 37),
(173, '0fc3cc3c-9399-405d-b7e4-9ff94564250e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'honest', 37),
(174, '58346783-1bdf-4fcc-9ce5-a165a0a4b7fb', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'only_good_friends', 37),
(175, '14886fbd-d80b-4479-a28e-2e91357835d8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'expecting', 37),
(176, 'abcfaa17-6874-4001-9285-2a751ab02f0e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 37),
(177, 'e0190c6f-019a-46ea-8a40-1cd23a9c8b69', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'catholic', 37),
(178, 'ebfddc61-5d32-40ce-9fa5-1fe9048e8bde', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'alone', 37),
(179, '73973e01-8ca0-4ed5-a05c-16154e18f456', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 37),
(180, '87960a04-8540-4287-a3f0-f641b1178e00', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'not_very_much', 37),
(181, 'e14bb8fe-8767-4cdf-b021-f6e98d22bffe', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'i_some_sometimes', 37),
(182, '6200b0cc-a18b-4ab8-b0f6-47e1e224652d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 37),
(183, '8ce25230-877b-4c93-9385-c872a5dddd8e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'white', 42),
(184, '480a884a-ac7b-4cac-afcb-0a564d932a39', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'supermodel', 42),
(185, '843026cf-4153-4bd8-9d9e-481861e4f729', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '200', 42),
(186, '365fa845-cb1b-400d-bae2-e3c35a6a8955', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'other', 42),
(187, '54ec51b9-2879-441a-8896-f778a40e7353', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'proud', 42),
(188, 'a887084b-7a52-401e-a1e9-3e46a730bb85', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'many_friends', 42),
(189, 'a84b0b46-0148-49d3-9200-8b899a7873f4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_have_kids_and_don\'t_want_more', 42),
(190, 'e57e255f-0e72-480b-b337-0e9a2e3fa2b9', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 42),
(191, 'e001b3f4-7ea2-488f-8c5f-e9fcdc319e77', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'catholic', 42),
(192, '60c8cc8c-82a8-4d90-b717-4608aa349c09', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'friends', 42),
(193, '74b1bd78-d8ce-44bd-9041-033278ca6443', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 42),
(194, '34a0f34f-38ce-4b90-b7b6-2e5333b0a026', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_sometimes', 42),
(195, '46bb8e32-ade7-47a2-a328-e8b605a3e9a3', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'never', 42),
(196, '7216cdb0-01a2-4c42-adbf-abcea38fa4bc', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 42),
(197, '071ecfd2-b993-407d-b39a-1ee2b5262ca3', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'asian', 36),
(198, 'ec094c32-b11b-4892-a294-e71f42da57e0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'average', 36),
(199, '4ed29042-b2fb-4151-a138-2cbbbc75e668', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '191', 36),
(200, '0c459471-b311-4cbb-bd16-79ff564dc318', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'orange', 36),
(201, 'b627fc64-6531-4e53-9f10-f6fd83590f22', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'quiet', 36),
(202, 'fa4020ed-edf8-4f6c-8797-8172ecfedcaa', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'some_friends', 36),
(203, '8833608e-2c0b-4baf-a94d-1df12a223d64', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_have_kids_and_don\'t_want_more', 36),
(204, '39df00f1-3b36-400b-abca-d5097f9f17ad', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 36),
(205, 'f8427ea6-5c20-4d84-b676-71d9dfe03681', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'muslim', 36),
(206, '9c40463c-37de-43ba-a17b-2c3275ce91a2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'partner', 36),
(207, 'addb008a-a4ef-44ce-a579-16bf139dd82e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 36),
(208, '4b641003-ff9d-4e6d-9247-94eaba70ef06', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_all_the_time', 36),
(209, 'c210f96c-3885-4be2-bbef-fbee949efe57', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'i_some_sometimes', 36),
(210, '4f065061-9f54-45d8-b99b-6bd221f70dc0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 36),
(211, '11770306-5a3f-47c6-9dd6-f16e9619b7de', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'asian', 46),
(212, '7454dd74-45d6-42a5-81c4-25d530e44e70', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'average', 46),
(213, '4d6515dc-872c-46e9-92ce-b482b822c3cd', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '212', 46),
(214, '5a02b4d8-ad7d-41de-9f4e-654770bb2cab', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'blue', 46),
(215, '72128ccf-3852-4a6d-a4b5-ad8e732903be', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'polite', 46),
(216, '0d7b2acc-ce31-426a-aa92-e3019816cb25', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'no_friends', 46),
(217, 'dca76b60-10c7-4d4a-a8e6-2abc71e82e34', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_already_have_kids', 46),
(218, '7ffd20d3-5f5c-4073-ae72-705a0594ee83', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 46),
(219, 'd111f647-7cc6-4254-8932-c59bccd7f094', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'other', 46),
(220, '09d3219e-b4eb-464c-b420-ec6aac814bfa', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'friends', 46),
(221, 'f20dcd1e-5b03-429a-8640-96e8c2284740', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 46),
(222, 'b6d3f6b2-40cd-4150-9564-ff2a98613c11', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'not_very_much', 46),
(223, '084027b8-d5c4-40b9-babf-20901c3fc912', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 46),
(224, 'd17c3693-24bd-4d2f-8155-c11eddbb6ab9', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 46),
(225, '5e8f08fa-e84a-4285-99a3-27c0785469c1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'north_african', 18),
(226, '174c5603-cb48-4bfb-b77a-5f13d5f03ba5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'other', 18),
(227, '103c2df4-bd65-453f-b7cc-ffc0b1b8eca5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '192', 18),
(228, '34b3b512-98dd-4804-9e96-f168999837d5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'blond/strawberry', 18),
(229, 'faedfbe7-dc58-4122-a8d7-05c993a06edd', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'patient', 18),
(230, '7e236b38-8e3f-4746-b7f7-3c25c42b8f5f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'some_friends', 18),
(231, '9491c830-13d0-4362-93ff-af7dc9537e97', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_have_kids_and_don\'t_want_more', 18),
(232, '7f52281d-02c5-4586-9c1c-533e01e8b23e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 18),
(233, '166a5f9c-6ba5-42a7-9337-b9bef164f22f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'buddhist', 18),
(234, '82a7b618-9145-43f8-8c1b-45725da9cb6b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'parents', 18),
(235, '26306645-e7c7-40c2-a7f9-2877080e4ca7', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 18),
(236, '4e78aec5-99b0-4054-98c5-452b9a6051b2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_sometimes', 18),
(237, '572a4596-eb7a-448c-bd53-1fb72c0df4b8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'i_some_sometimes', 18),
(238, '6650a542-a299-4635-a7a7-5c918ac9ba6a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 18),
(239, '6d98373c-43ff-4872-b07a-6fd6af8adc32', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'latin_american', 48),
(240, '127a67a5-5034-44b8-8f55-9e1529bd79d4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'supermodel', 48),
(241, '4c882a36-77a5-405c-af18-7ed6c61d15d4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '161', 48),
(242, '8cf012fe-ef7d-4435-9d5d-56b45f5dfbc1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'white', 48),
(243, 'a72e8c32-7b35-472b-ab8b-a9dc9f31c1f7', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'polite', 48),
(244, '48f0bb0f-70e8-4597-bad8-f4bec7a5c02c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'no_friends', 48),
(245, '717dba63-8b93-4b19-ade8-45cf503e839d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_already_have_kids', 48),
(246, 'f390caaa-59bd-477b-88be-71fc2e49c1cb', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 48),
(247, '4cd9455b-6d82-4b45-8ac8-79b85bccc49b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'catholic', 48),
(248, '0651a8df-f444-46bd-b0d2-111dd2bec594', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'friends', 48),
(249, '4b2df52e-902b-4dd5-92f5-dd522eee7e9e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 48),
(250, 'd7864ed9-1a54-456a-8144-f36fafcb415f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'not_very_much', 48),
(251, '82a0879e-9838-4dbf-a984-03b502892ac6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 48),
(252, '2b3f68e8-a756-4735-acc8-a614782f2d57', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 48),
(253, 'a73cd11a-3761-4cf0-9389-036f3e8e5bce', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'black', 17),
(254, 'aa9ce5e4-b59a-46f8-8ea6-95041cbc6170', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'sporty', 17),
(255, '12996b81-7947-442e-bd27-70c34fa950b9', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '141', 17),
(256, '35299a60-ff62-4573-8be3-7acb2b4b56d3', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'other', 17),
(257, '3f038be7-d4e0-4ae7-854f-63338153b775', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'polite', 17),
(258, '6550d524-f069-4894-942c-e6f0595eae4c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'no_friends', 17),
(259, 'a217e6c6-1058-4f44-9a86-4cd9174e800e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'someday_maybe', 17),
(260, 'e93728c4-2e95-4f14-b30d-09d511b6fca1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 17),
(261, 'cf616e50-ffbc-4d1c-b12f-b13ace846c2e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'other', 17),
(262, '8d290e7b-5f8d-438b-a2db-ad995396aef6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'parents', 17),
(263, '10db8808-ca7d-4636-ba90-92c18413f093', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 17),
(264, 'd68d90be-e1d1-47a6-9269-f788257d2c75', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'no', 17),
(265, 'ba6c3723-567c-4a53-908b-90372db5ffdc', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 17),
(266, '620fe4ee-a147-4ca0-a749-0a578b4265a8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 17),
(267, 'd6dcbadd-3c99-47fa-8027-f04c747bd9f1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'middle_eastern', 50),
(268, 'ff669546-35fe-46b3-8ce3-1848f78e56f0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'other', 50),
(269, 'a9e8ef6e-fc53-4f68-bdb7-328ce17cd445', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '155', 50),
(270, 'e17628ef-8f67-40f7-9a1f-666ab2a5e414', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'sandy', 50),
(271, '9118cf7b-ec80-4b2e-beaf-5a9f057a186e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'sensitive', 50),
(272, 'e244d585-1006-46e4-b521-62ed3b0a85f1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'some_friends', 50),
(273, '99524f79-3e30-4686-badf-5bd7cb3e9df8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'expecting', 50),
(274, 'f903603f-db66-464f-8d2b-dcc54036fd2e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 50),
(275, '715c0dc1-637a-4cc6-9169-439428188ede', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'agnostic', 50),
(276, 'f59354c4-a576-4050-b6c1-e7a7706555ef', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'partner', 50),
(277, '37bf06b1-09a7-4150-b20e-48fcd80cd30b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 50),
(278, '016029ef-2373-46a3-9a9d-69f09563f46e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'not_very_much', 50),
(279, '14a69123-47c1-4f7f-baae-ca6c90af4bb0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 50),
(280, 'e402f7fd-a218-4f72-a61c-f65b71bfdf4d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 50),
(281, '1de150e8-5669-428f-996e-e375420089da', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'asian', 6),
(282, '8b80ee54-7974-416f-a280-012ec1b33a14', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'curvy', 6),
(283, '8167d99f-287e-4afa-96cc-09573c061b41', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '144', 6),
(284, '3babb059-d624-40c0-96b1-3228476068fc', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'black', 6),
(285, '94aab1bf-7e99-4f27-aa89-6d0cb010bc2b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'loner', 6),
(286, '356fe576-7fa1-4267-bf1a-80426da5981d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'only_good_friends', 6),
(287, '30fcf953-dc6d-448d-920d-d5a9e6078a4d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'no_never', 6),
(288, '68e896f4-aab7-4a83-ba11-70432c78aa3c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 6),
(289, 'a61ec15c-8f81-473c-8492-5e231e290b06', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'catholic', 6),
(290, 'c45fd909-51b6-422a-9f7c-98a79e95fa2b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'other', 6),
(291, 'f4730bb5-ac65-4c22-b921-cbf10b9d222a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 6),
(292, '90f501a8-7f4b-434d-9978-85e59371b0c0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_sometimes', 6),
(293, 'e41fb01f-e50a-401a-a316-e47a810592ab', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 6),
(294, '833d180f-9848-470c-b309-34503943d01c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 6),
(295, '3f7bfc4c-41ce-4a2e-8098-8a7ee12de2d2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'black', 47),
(296, '679ac1f6-2711-44fc-a0a4-09cd042007c4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'round', 47),
(297, '960f6e52-0c47-4d45-a97d-55604d9658af', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '164', 47),
(298, 'dba8e4c1-6115-4147-a6b7-3de95f2ce1d1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'blue', 47),
(299, '6b3a885f-1e60-4777-a28c-1d3251fdc02d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'demanding', 47),
(300, 'a978a067-8a32-404f-9948-c9436c03e175', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'only_good_friends', 47),
(301, '78729b39-8852-441b-9945-68ca193162f5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'no_never', 47),
(302, '180c7a8b-daaa-4511-9c6a-a4b06c9b7b11', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 47),
(303, 'fd1d2150-c294-4933-9418-2fdc587414a0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'christian', 47),
(304, '986e8d61-6f52-4490-a942-81b8af3f7634', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'friends', 47),
(305, '54feae8d-e14c-4ec9-be34-e80b58df524b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 47),
(306, '55f703bd-e4a8-4bf4-974e-0069bf46f3a2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_sometimes', 47),
(307, 'd640ba50-7249-4804-a098-1ac65af3af56', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'never', 47),
(308, 'c03a4044-fef5-43ef-9447-d50e3693de5a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 47),
(309, '7346b68f-cf74-4549-a0d3-574db339a24a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'middle_eastern', 35),
(310, 'ba0b1f89-3ec7-408e-8530-5fc690eefefa', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'sporty', 35),
(311, '7d5b1071-fc85-41de-a594-306c71de1f45', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '150', 35),
(312, '42caed5f-d074-43d6-a138-831938fd6ac8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'gray_or_partially_gray', 35),
(313, 'fc8862c9-1fca-4e26-9790-067f965960dd', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'considerate', 35),
(314, 'fc9ec07c-b1b6-448e-9c04-25497529e8a4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'only_good_friends', 35),
(315, '8eec8e31-aa55-4348-93c5-a7b5b3ec01da', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'no_never', 35),
(316, '5c0a70b7-c8af-468c-9366-13ad43220eef', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 35),
(317, 'caa29286-3670-421e-b1fa-86347cf93100', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'buddhist', 35),
(318, '7131489a-e9a5-43d6-bd45-3f7a72020b8a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'partner', 35),
(319, '4e32379e-2eb7-4e09-9f53-0a719059a1f6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 35),
(320, 'ee772ce0-8367-4f52-b661-83aac692a9f3', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'not_very_much', 35),
(321, '29e8fd74-c433-4a45-af79-78215e335688', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'i_some_sometimes', 35),
(322, '8334fa72-56ff-43b6-9478-aad0d9483323', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 35),
(323, '2a4b79d2-edcb-4836-9040-a077f333279b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'white', 41),
(324, '4f0e4ef3-23e2-4783-92a5-f2ca43408d9c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'sporty', 41),
(325, '33f458a1-f82f-4536-934b-e2211ba30e21', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '206', 41),
(326, '447e0d4b-47b2-416a-b785-ed9e798a9319', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'blue', 41),
(327, '29ec7c56-cda6-4453-9d51-33a480a29767', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'considerate', 41),
(328, 'a94ff151-ce94-441c-8a70-f02f6eaefd62', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'only_good_friends', 41),
(329, '6b97f2ca-defa-456e-b644-27bc73947b7f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_already_have_kids', 41),
(330, '003ba4eb-1f08-4b97-8eb8-cc6127e87d98', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 41),
(331, '4dd0685d-5689-4572-99e2-7f6431cab275', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'jewish', 41),
(332, '479a3197-312c-4941-a9b5-e41625825457', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'friends', 41),
(333, '3bad794f-d1e3-473b-ae80-51ae1a943985', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 41),
(334, 'bc9daf5f-d121-49eb-94e3-8249dc8c01e5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_sometimes', 41),
(335, 'aafcd5e3-2ed8-48be-a749-5aee5ae50e48', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'never', 41),
(336, '20d42a43-a149-474c-8283-c751e1a8b6ed', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 41),
(337, '50efc254-a917-4d3c-8b45-e0335fc608df', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'asian', 23),
(338, '9b66e54d-ddef-4e8b-9849-9da61cfae546', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'slim', 23),
(339, '1e5bcf0f-a402-470f-979a-3cc452158bc2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '164', 23),
(340, '875bbbfb-ee58-4649-9495-c6cec0261c7c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'pink', 23),
(341, 'd01e86ff-c874-4cc9-bc87-ad1495916eef', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'loner', 23),
(342, 'ce648a35-b0c8-460a-bab2-9e8e69c4c934', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'many_friends', 23),
(343, '3af10bf0-21e0-4c15-8e22-cd38c8453b70', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'no_never', 23),
(344, '555aee86-1f3d-421b-8bc7-a6c500444e6c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 23),
(345, 'f1720d66-5604-4f42-a8c1-d977c71d72de', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'jewish', 23),
(346, 'f431e0da-d444-4b69-8fc4-5477efc8455b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'children', 23),
(347, 'def1cfa2-1a3d-4deb-9f0f-2f8b16cd28bc', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 23),
(348, '75c289e0-297b-4ed3-b9f7-ceb486b18c24', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_sometimes', 23),
(349, 'c693c2ed-d059-4279-8213-81426f6beb18', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 23),
(350, '3e970da8-06e1-4d17-868c-e2ae85171d74', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 23),
(351, '3d1bcf77-2e6e-431f-9774-bb3977a6c853', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'latin_american', 25),
(352, '39eaaba5-69e5-4829-9e7a-83546fadd235', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'slim', 25),
(353, '8e106003-d70d-4dd7-9a5f-6a6cc2e21a7f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '205', 25),
(354, '7201d455-53b2-4bb1-a507-ac8f16057255', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'gray_or_partially_gray', 25),
(355, '454bea4d-4de1-4abb-8ce4-884b8fbf58cf', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'stubborn', 25),
(356, '53530309-b545-4e89-b8bb-dfb11de2044d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'many_friends', 25),
(357, '5c0f9e70-7eed-41ca-bc14-84e645d46a12', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'someday_maybe', 25),
(358, '036af3a0-b298-4690-a9ee-8506e038d1c9', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 25),
(359, '55e41954-97e6-4647-b0e9-89d4f66af6dd', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'agnostic', 25),
(360, 'a782e2f5-cbd3-4bc1-88c0-8c33ef2bf100', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'children', 25),
(361, '5a8a7310-6786-4a57-9981-13e1439f3168', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 25),
(362, '026a4e2d-238c-4747-8f77-b8f79ae70c48', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'no', 25),
(363, '099f8b28-bf7f-4384-a669-cae4a277cf79', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'i_some_sometimes', 25),
(364, 'f78844ba-87b4-4d00-9dae-0484b6cb1690', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 25),
(365, 'e5db1e0c-e64f-4f23-9497-6f94dfca14f9', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'mixed', 29),
(366, '2ae2c0db-2f1d-4fcf-b227-7324755bddfe', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'supermodel', 29),
(367, 'fb60f16f-6d83-4aef-9ace-6e5aeb51b13b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '146', 29),
(368, '11ae46fc-5fba-455c-b680-3b3df7400eef', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'brown', 29),
(369, '7115096e-2fcc-4100-80fa-27a5baef8790', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'stubborn', 29),
(370, '3bfd9fa4-9483-48eb-85ff-76196bde9f34', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'many_friends', 29),
(371, '1d455559-7776-4cdc-93d6-79a28543ec1e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_already_have_kids', 29),
(372, '84869e1c-2e30-4a1a-b819-fac1aaaa0d5f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 29),
(373, '99c42f4c-d04c-4257-9531-69b815d41e2d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'sikh', 29),
(374, 'c679d29a-1727-4bfa-8b87-c844b7232c30', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'parents', 29),
(375, 'e4c048e2-9b1f-45f1-93ba-a94daf334b0f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 29),
(376, '52530098-38a4-45f3-b9cd-865bc9e84f0e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'not_very_much', 29),
(377, 'ce3da46f-8db0-4bbc-b18d-233ba101490e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'i_some_sometimes', 29),
(378, '249f0c9a-5dd9-449c-9bc6-5a44e28eceef', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 29),
(379, '92b07eee-b7b9-4a02-9297-068b56e2a096', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'north_african', 3),
(380, '1225a953-3d07-4bcc-8623-b8a4760115e2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'supermodel', 3),
(381, '9fb37751-71e5-4940-9544-176f1804a166', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '154', 3),
(382, '4cd90c62-75de-41bc-8db6-9197d3601968', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'orange', 3),
(383, '316459fc-f12b-4db4-a431-98ff9ec11ea0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'patient', 3),
(384, 'ed4bc5df-389a-448b-a297-68c778234e9d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'many_friends', 3),
(385, '28294ca2-eb64-4ccb-9a0f-801f2cb1ced7', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_already_have_kids', 3),
(386, '5502c286-b9bd-4a88-a743-3b033beb9a17', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 3),
(387, '6f6d3d70-8a0d-47be-a7f7-f506da8454fe', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'hindu', 3),
(388, '0e66aaf0-638e-4b89-a180-3bded28a423f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'parents', 3),
(389, '9486bd21-b2b0-418e-9d61-508e3a0d43c0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 3),
(390, '31373cc5-caef-48a2-b195-04faa1280c8b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_sometimes', 3),
(391, 'e4cfb1f2-d4fd-4157-bdbb-b045f7ad1863', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 3),
(392, '3377c6f7-e101-4ff9-9373-9ebd41af7a21', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 3),
(393, '30df6589-1df5-4083-a628-390c461fc8b9', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'north_african', 9),
(394, 'fda1c9b6-f371-44f9-9ffc-a6139ce86310', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'slim', 9),
(395, '922c19da-1d8e-4fef-aa67-f5d8d38e88c7', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '207', 9),
(396, '592b3e44-5049-4c35-8b83-4b1265d09744', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'sandy', 9),
(397, 'ef5a5abf-d96f-4570-b3cb-61348c21aab5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'social', 9),
(398, 'afd8c933-05d8-4a94-a371-0aa10613e1fa', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'some_friends', 9),
(399, '5aa24252-8bbb-4d7a-8cdd-dd82ab3f6f08', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_already_have_kids', 9);
INSERT INTO `user_specifications` (`_id`, `_uid`, `created_at`, `updated_at`, `type`, `status`, `specification_key`, `specification_value`, `users__id`) VALUES
(400, '33ea121d-753e-4554-8bb4-03cdcfc178b8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 9),
(401, 'ded5691c-d5f4-4157-a3a4-7ea491e6c69f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'catholic', 9),
(402, '78f7f5de-f6ca-49a5-bfc0-f05b7c279491', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'alone', 9),
(403, '6ceb7bce-e9fd-4cb4-a5f2-ab3d69340f1c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 9),
(404, '8c4c34ee-3c51-4c2b-a371-7db56f96ee44', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'not_very_much', 9),
(405, '90e93b05-696d-4f9f-a942-c40fc3365cc1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 9),
(406, '99258091-ce8d-47c3-a189-fe40296375fc', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 9),
(407, '86666596-721c-4376-8c4f-eb2488fd702d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'mixed', 40),
(408, '44e7685a-b7ab-441a-bea2-24ff396df4ef', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'sporty', 40),
(409, 'd2270af2-360c-4837-8c2a-0e10a8f544fe', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '146', 40),
(410, '4198b28b-480d-4e25-a521-eb4f2cd8508f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'orange', 40),
(411, '3c27352a-0b9d-4f65-b794-0236c1e67f2e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'calm', 40),
(412, 'c81a3d79-91d9-420e-a4d7-e8850c52f71e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'no_friends', 40),
(413, '06b96174-a24c-46f9-8f69-29baa31b22ee', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_already_have_kids', 40),
(414, 'c0df49cb-5e74-44b7-9b57-2b7960351847', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 40),
(415, '2d183e56-eab2-4258-ab8b-12cc607e5735', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'buddhist', 40),
(416, '3678afca-845e-41b1-b70d-2e56f106b13d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'other', 40),
(417, '4e128123-2b3c-44cc-ba2c-cb90443467d4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 40),
(418, 'f7fa676a-ba76-4904-86f2-19482a772538', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_sometimes', 40),
(419, '29d0753d-ee9e-459c-8133-ababa76067cf', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 40),
(420, 'e0a8b2d7-3e41-4be0-b242-40f4d75e2427', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 40),
(421, 'e33f9f97-db17-4d34-a44d-20c09215c0b8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'north_african', 27),
(422, 'd35b08b5-1170-4913-8900-25ff9ba7d22e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'curvy', 27),
(423, '0f620ffc-6321-4e98-95a8-dafa48482494', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '184', 27),
(424, 'ab37bc0f-4fac-494a-ae9f-b708da881a84', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'white', 27),
(425, '0c8eaddf-eb6d-400e-a929-e9e373e134a3', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'stubborn', 27),
(426, 'a5e87815-b202-4b4f-a674-42371f9e49f2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'no_friends', 27),
(427, '30b28cf4-27f9-4c0a-bfa2-640a200add09', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'expecting', 27),
(428, '731aa858-ec9a-4f65-801a-f0415fa550b1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 27),
(429, 'd88d5549-6bd6-4894-9e11-7b43ad04ba42', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'agnostic', 27),
(430, '0ed5d442-7bbb-4073-ad11-122c34a620e2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'partner', 27),
(431, 'e269e1cd-17b7-4b4c-a34e-7c9dd6240526', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 27),
(432, 'efddfb88-08cf-4f1a-9e71-f477d7577e43', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_all_the_time', 27),
(433, '9d811abc-9eaf-4a76-b9b3-1d8471715a31', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 27),
(434, 'cdd93843-4abd-421c-b420-f7575819f22f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 27),
(435, '0b64daf3-0f82-4028-a919-0f8acb2163c2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'middle_eastern', 31),
(436, '72371670-c3ad-4ba9-a3f1-2481cbad8028', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'supermodel', 31),
(437, 'efb88e36-5196-45de-a8c7-1cef957060cb', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '195', 31),
(438, 'b26b55ea-b897-4ad4-8319-a486546cc450', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'black', 31),
(439, '974af9fd-ee66-453a-818a-ff7da0545332', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'adventurous', 31),
(440, '57259474-9044-4875-9361-04c5ff1f23f1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'many_friends', 31),
(441, '90793e76-8f12-4a5a-9d37-c26b3052490f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'expecting', 31),
(442, '7201dba1-73a5-459e-adf2-55a90c147c4f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 31),
(443, '924f5b02-867e-4bb2-b534-76db26acd625', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'catholic', 31),
(444, 'fa159a15-04ab-44d7-a515-a57106e2ada2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'alone', 31),
(445, '0086da81-3a94-4a8c-adb9-20cbd1ed2b15', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 31),
(446, '4cd0e26b-eed4-477d-b4fb-e23897886401', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'no', 31),
(447, 'ac78bd6d-9e5b-4594-b00f-c605ff5a36f1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'never', 31),
(448, 'f3180ce5-7c0b-4036-897b-cdaacafe1a94', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 31),
(449, '7206a422-65b0-403c-a13d-90170b87a114', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'north_african', 4),
(450, '120cbd49-d6cf-4a94-9d45-815a0080bdfb', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'sporty', 4),
(451, 'd0e9e532-77ff-4bc0-bb1f-3a8dabffcd7d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '206', 4),
(452, '4c00a7e8-1ffd-4efc-b1f7-0b9690a282ae', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'green', 4),
(453, 'e220fe12-14d2-4abc-8ee7-cd266b5905d3', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'thoughtful', 4),
(454, '3a21ffc9-243a-4908-979c-d0876308f862', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'only_good_friends', 4),
(455, 'a3b8af7a-302b-4b64-bf76-2a96c8b4ecb6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'expecting', 4),
(456, 'b7834871-70dc-4893-bcf8-8868bec850a6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 4),
(457, '019cf28a-cae1-45d2-bb10-c3b367cd8c1f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'sikh', 4),
(458, '0e53ffe9-edba-4c4a-bf46-6157bca8324e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'alone', 4),
(459, 'dd75f26d-9d7f-4be9-a6b1-1602e2f47471', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 4),
(460, '407a3e1e-41f2-4ca1-beda-29d9717703ae', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_all_the_time', 4),
(461, '2faf2c79-5b18-4d19-b137-700fb7ffd7b1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 4),
(462, '36a3d390-2f79-44a0-8fca-24448bdcd204', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 4),
(463, '66b83dff-3554-4ac7-ad64-d1cbfbc96db6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'asian', 51),
(464, '60ba3244-4696-4314-a050-99801ed447e8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'average', 51),
(465, '7613ec53-c608-4a8b-b6c4-f962b16beca5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '158', 51),
(466, 'ab0f2974-d8a7-47ba-aa9d-e4b22eaab428', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'green', 51),
(467, 'db67f3a6-7f61-4106-9113-a8290b785466', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'possessive', 51),
(468, '61506998-951e-48c7-a85e-caf58766f237', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'some_friends', 51),
(469, '87222ef9-4795-47e2-8cf2-b365782b4c9f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'someday_maybe', 51),
(470, 'ce3c0e75-aaef-4b8d-ba08-23b36609d657', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 51),
(471, '340b127d-ca3c-409e-9df8-ebac5c905632', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'sikh', 51),
(472, '485b0c97-a1c2-427f-b392-9f6a3977a59a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'parents', 51),
(473, 'a43cc1f3-be91-47c0-9b8a-2cc7d80ea5ac', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 51),
(474, '23106562-4327-40c0-aebd-dbaf75264b44', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_all_the_time', 51),
(475, 'a423100a-c6e7-4af0-8717-b19e4ba3aa3b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 51),
(476, '7e2406a5-8e49-480b-8cc2-37a6a3d71b63', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 51),
(477, '0f5a4590-b8d0-48ff-bac1-540fb899f48f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'middle_eastern', 5),
(478, '99e77e83-ac49-4a51-bc55-1e4310b2c04a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'slim', 5),
(479, 'c6707981-e06d-44cb-94e7-92aa12e67872', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '171', 5),
(480, 'dc2516ca-ef0d-48f9-bbd8-b5418e7df1d8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'orange', 5),
(481, '375c48f8-bee4-45b4-86ab-69dba4594217', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'honest', 5),
(482, 'fde7f351-83ff-418d-87b5-f26dc3b24024', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'no_friends', 5),
(483, '488d7685-de75-4ae9-bff3-8fee3184aaf3', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_have_kids_and_don\'t_want_more', 5),
(484, '18fa2aa5-164d-4006-9c25-3e3fd58d786d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 5),
(485, '7c5c00d3-fb17-4a07-9dff-3193de5a74c8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'agnostic', 5),
(486, '5023613e-0f14-45c8-9aa9-6e23eb776c1d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'children', 5),
(487, 'a25e5a5c-4715-45a0-a5be-87abc96c8d62', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 5),
(488, '06fb300e-a4d1-4224-840e-20c5f06ba2b6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_all_the_time', 5),
(489, '9b67310e-c15b-493d-8fe9-0784764c0ccc', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'i_some_sometimes', 5),
(490, 'adbcb1ce-eb82-4444-90d4-601be0da4408', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 5),
(491, 'a73ea06e-afa6-4368-bb48-81fa88f4a250', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'asian', 33),
(492, '1caf4762-6271-4441-b505-b4b2a8386441', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'average', 33),
(493, 'da662487-2753-4495-adf7-f331e339ac47', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '197', 33),
(494, 'b3f07a94-588c-48d4-942f-11cf61336f20', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'partly_or_completely_bald', 33),
(495, '6b7c8e1f-106c-45b1-966d-82d34ee43c81', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'optimistic', 33),
(496, '49c5b132-4547-4fdf-8603-49501a31a18f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'only_good_friends', 33),
(497, '1116fb7f-e801-4e52-977f-960fab204877', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'no_never', 33),
(498, 'b65be3c8-c339-4508-a8c8-5754414d67e5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 33),
(499, '491fdd97-f39c-47a0-beaf-308e266a735e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'sikh', 33),
(500, '4a2be517-1614-4afd-b036-8f931c989a7c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'parents', 33),
(501, '22037f60-80e8-4008-86a1-89e2b31d41f8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 33),
(502, 'f06e1ef9-650c-4ae9-ac87-809b96a5fc4f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_sometimes', 33),
(503, '304319d3-9ea3-46f1-9def-e06f2cf92b0e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'never', 33),
(504, '00314a94-7841-4042-b34b-4a7cbd0ebb4d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 33),
(505, 'db04a92e-5e6b-458f-91b3-3bb1ba08560e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'latin_american', 44),
(506, '60054339-8286-4b10-9286-e03a5b19ef16', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'other', 44),
(507, '481a6995-6ec6-4f87-8663-28f6e5a00a20', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '194', 44),
(508, 'd2702ba3-0304-4918-b704-aae12bceda33', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'white', 44),
(509, '5f0bced9-b512-4ca8-bd64-dbb21d3ecf6f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'proud', 44),
(510, 'f8176e30-e428-43fb-a319-9857f1ebc2b8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'only_good_friends', 44),
(511, '2acc9129-7f8a-40d8-ac05-eabdc33b8379', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'someday_maybe', 44),
(512, 'a9ec9efc-1014-49fd-a6b7-d8eaf9c5045a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 44),
(513, 'ef6d9a30-beac-4f46-8cf6-10974ccf2a32', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'muslim', 44),
(514, '28a6ca5f-c325-42f5-8bac-d32321caf257', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'other', 44),
(515, '3a3b1949-ac7a-4e65-9302-2a3d798aa3e3', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 44),
(516, 'af292667-4ad7-4dc1-8125-06ee3d49f758', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_all_the_time', 44),
(517, 'b5a9c4c7-9bcf-403a-997e-2e18ce24bd93', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 44),
(518, '2e5da5f1-6a62-4004-bd88-832f1977caad', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 44),
(519, '633012d2-feec-40ed-b9fe-d070ad6b889e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'north_african', 10),
(520, '0e87e389-d152-4ae3-b7bc-7caf3e2aaab0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'other', 10),
(521, '52257bac-48de-4f2b-8f83-386d2c1e20a5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '148', 10),
(522, '171bb3f7-989d-40e4-852a-6ce325320a6d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'blond/strawberry', 10),
(523, '49dd7507-e9c7-4d07-ac86-4d84fbf38ad8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'accommodating', 10),
(524, 'd21d09d5-c480-4453-8602-6ef2feedf91a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'no_friends', 10),
(525, 'c3d6c014-6f5f-4a25-b3c9-42b76649e160', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'someday_maybe', 10),
(526, 'c82e19a7-bcd2-4d2b-af49-5338ef21f46a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 10),
(527, '6b8c3674-27bc-4fa6-88db-11bb09780ec3', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'atheist', 10),
(528, '44f33a16-1eea-4f3e-b92c-3c0a4b30ed49', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'other', 10),
(529, '72500f33-9c1a-4839-b4ee-82dc8940d9fc', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 10),
(530, '5a7681f7-8608-4d9f-b5d9-7c40db26b7a2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_all_the_time', 10),
(531, '19308a3f-83f2-43fc-b687-a749a1d393da', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'i_some_sometimes', 10),
(532, '27ad8237-0742-4a68-8fd8-19536f437838', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 10),
(533, 'b2bdcfca-b158-416b-917f-464c608f4b3b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'other', 45),
(534, '341681c9-2fac-4a69-bf11-a73a4b3f0689', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'sporty', 45),
(535, '9a635003-5fef-4d1f-a66f-027595148d77', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '197', 45),
(536, '736b51b1-4b04-42e9-959f-a6cf25420088', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'sandy', 45),
(537, 'f688e575-0091-4e8a-a771-b117c3c3f99b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'cheerful', 45),
(538, '95af67a6-02ed-40ee-8615-ed237eb74b6e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'many_friends', 45),
(539, '7e3e00b2-6644-4f32-8219-2b3f103b6cba', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_have_kids_and_don\'t_want_more', 45),
(540, '3e3f5672-245a-4905-b20b-415e7a4b8ea2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 45),
(541, 'dc0cfb0c-5d91-4969-9415-28fdbb674eec', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'buddhist', 45),
(542, '71709893-97df-4879-a4f9-4d4c03fa0d33', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'other', 45),
(543, '6fab7ea2-f833-4f90-806e-8db968b99a38', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 45),
(544, '33ede208-02c7-4f12-8d65-427ec2d693b2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_all_the_time', 45),
(545, '0e294ec0-8b49-4f6a-8bc8-8e627e8eeace', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'never', 45),
(546, '07ebcc3e-514f-4cbe-a1f0-8f9fbeca6111', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 45),
(547, '53d43f6c-7616-404c-9599-f3f96143b0a7', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'other', 21),
(548, 'b0253bdb-136a-429d-bebf-b481c7c3944e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'curvy', 21),
(549, '4d4b8a33-43db-4506-8eaa-23480d3757a8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '190', 21),
(550, '34dc50df-a8bb-46ed-a108-c3a9182b11ac', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'gray_or_partially_gray', 21),
(551, 'dfff0150-61c4-4fa3-80a4-05ad7e4f7502', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'calm', 21),
(552, 'e24bdf81-cc1c-4e13-ad80-4ba227d83a12', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'many_friends', 21),
(553, '9f7a9ac6-e46c-49d9-92c1-def2e17f8400', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'someday_maybe', 21),
(554, 'cf8e2dba-913c-45a9-b9c4-dfb781f6fee0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 21),
(555, 'e7eb7db6-51aa-406b-b162-36cf10f9ed8f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'agnostic', 21),
(556, 'e3721a57-ab98-47cf-9a80-c42407cc61e4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'partner', 21),
(557, '9a1efac2-ced4-446d-9505-b94d6d3f95d1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 21),
(558, 'ea6ef274-2f75-4130-ad8e-8542bf8dc3cb', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_all_the_time', 21),
(559, '2f0d45cd-efe5-4663-bdb4-fdfd0c74b13d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'never', 21),
(560, '3ef579c4-2c91-4a3e-8eb8-2ea1f6189c30', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 21),
(561, '200d601d-97be-4702-8698-eb188ead47df', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'latin_american', 15),
(562, '754b9040-c04f-4cce-8645-cd5e1e351118', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'sporty', 15),
(563, 'af72c32e-5c82-44c8-bad3-8e5e9541f847', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '196', 15),
(564, 'ed8fa663-86bb-4976-ab3e-93d093812f54', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'partly_or_completely_bald', 15),
(565, 'f7b71634-24b8-48cc-b4b8-fd754b1e0057', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'generous', 15),
(566, '8be0b055-3819-4d60-8b58-4e7631d61dbf', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'some_friends', 15),
(567, '769e90fd-cd4c-430a-96db-fd39396e9662', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'no_never', 15),
(568, '88bf41db-f5b1-44a2-9947-370d390cb9f4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 15),
(569, '15394665-bfbd-419d-96b9-1712dc66a47f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'jewish', 15),
(570, '8d3edf85-d5d3-4af0-b98d-eb87b98605a4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'parents', 15),
(571, '4d59db2f-e666-476a-ab61-bd803c1c94eb', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 15),
(572, 'd91f1f6b-7a6d-4795-beb1-9ec6a6de9fb1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'not_very_much', 15),
(573, 'bfb0b138-dcda-4c86-8778-7a87c1c81992', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 15),
(574, '57478356-7d25-46af-b425-0a57f86a09f6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 15),
(575, 'f152419e-b462-41e3-b5b6-b02104d542db', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'latin_american', 20),
(576, 'fb5e82cc-ccb8-4dca-9b99-a5f39b24b728', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'sporty', 20),
(577, '82858844-6a69-4318-a09f-590ea4a78b11', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '167', 20),
(578, '5dc293e3-8d51-416d-83e7-b2a4184970ec', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'brown', 20),
(579, 'df5415a3-9103-4498-bb55-711c6c2325b6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'patient', 20),
(580, '48e5e6a1-2d5d-4cda-aad9-526fd9c835b5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'no_friends', 20),
(581, '4941e209-0539-4d91-aab5-7265425eb88c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'no_never', 20),
(582, 'e11d92a2-eaaa-4c1a-b2e6-4eab204b40a5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 20),
(583, 'dad6665b-7b4d-418f-9180-9d5f75501449', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'buddhist', 20),
(584, '12692e45-d546-4e76-aed4-209d1154f8b7', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'friends', 20),
(585, '8c4a8304-a662-4d9f-8884-54a9637e667d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 20),
(586, 'c2bc17b2-7b3d-4803-aa7b-ef1228c51e83', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'not_very_much', 20),
(587, '3da74fd5-fcd4-4db0-a211-73cba66c32f5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 20),
(588, 'd73d3a7c-a208-417a-930f-9fe66d0405c1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 20),
(589, '41273c68-6b95-49e9-815d-b7bbbf58887b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'white', 34),
(590, '0c6170ec-8657-4a93-befa-d005db1d6cbe', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'slim', 34),
(591, 'e1a15924-d1ac-4e70-b609-829926343cc9', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '160', 34),
(592, 'ac4094fe-b174-45e1-9e7f-c300368ff05d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'green', 34),
(593, 'f8fb838f-8d82-4965-9dee-58e69ca72b00', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'reliable', 34),
(594, 'b1c2e5a7-27cd-436e-abbc-3f94d1a8d61e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'only_good_friends', 34),
(595, '993c19c4-1631-44ad-959d-214b4c4e2626', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'someday_maybe', 34),
(596, '740d73df-be42-4d08-bc74-30d76d8d8dd9', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 34),
(597, '6bf668fb-985d-4ae3-bd92-16f360a8d9ec', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'agnostic', 34),
(598, '821afaf4-55d7-4dde-93b1-a365b03cd7ce', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'other', 34),
(599, 'd728351c-a891-4638-857b-53a4c836a72e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 34),
(600, 'ab53ffb8-7468-413e-b7b1-f8c9bd14d109', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_sometimes', 34),
(601, '13b76d5e-af12-4ebb-8274-00329c4f1ab2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 34),
(602, '26c74cfd-280b-4bee-aaf6-60d94718afcf', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 34),
(603, '171ccb17-6a30-4f73-8e4c-41d58dcdbb33', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'asian', 30),
(604, '616c95f6-e329-471a-bb9c-1701f0211ba3', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'supermodel', 30),
(605, '2405b4d9-c274-4a3c-86ae-cbd517d52c22', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '200', 30),
(606, 'a0a04a39-b5d4-43b9-81b7-d3e4510b59cd', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'red/auburn', 30),
(607, 'c41177cb-690c-4aad-ac99-ba7d6ec12026', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'considerate', 30),
(608, '9ad81e8d-3c0c-4959-8250-b2ce860d6282', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'some_friends', 30),
(609, '3f8b252a-4ebd-4793-b515-011584d2a6ef', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'no_never', 30),
(610, '20a0c4e8-2a7b-4a59-ba66-6565afde6b8a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 30),
(611, '13ee429d-84dd-4470-a5d4-7c5e2a4e0b9c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'christian', 30),
(612, '30c910d5-2671-4023-a65b-fefbce7c45b4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'friends', 30),
(613, '24819d53-aa08-4b71-a1a6-76b94ab8b6e5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 30),
(614, '72e43d23-0a48-40f5-a841-f6fae0897ccd', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'not_very_much', 30),
(615, 'd21760b0-2715-4f4d-997f-092a6aeb4b47', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'i_some_sometimes', 30),
(616, '8328c690-f6a4-4b95-a6ba-415a3bee5618', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 30),
(617, '28e6ea93-1b53-426a-992a-083367db8b46', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'other', 28),
(618, 'e67a1cfa-513e-4ce7-a677-f5e1520fd0c9', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'sporty', 28),
(619, 'ebabca5f-c083-49ae-b6de-b7fa3e769ce0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '201', 28),
(620, '0f7163f7-30cb-4308-b046-f42dc49f831c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'gray_or_partially_gray', 28),
(621, 'a23a3c5c-2c6b-4643-9eb1-03094525816f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'sensitive', 28),
(622, '12a7b71e-925b-400a-b470-263392e986b7', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'many_friends', 28),
(623, 'b681f3b6-2797-4a4a-93cf-9c36c4c00597', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_have_kids_and_don\'t_want_more', 28),
(624, 'c68716b2-4cac-4cbc-b3fe-43f26bf3dbbd', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 28),
(625, 'f8499334-fd9b-44c1-ad4b-24094eef8605', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'agnostic', 28),
(626, 'e058babd-aaa3-48f0-8109-b45b8cad70db', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'alone', 28),
(627, '48177449-3874-4195-88d8-2ce046633daa', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 28),
(628, '7971d371-9d23-4b4c-a5e5-f48789b4f814', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'no', 28),
(629, '07678fb5-29e7-4be1-9f13-1b2c4bc4dbdd', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'never', 28),
(630, 'b367042a-798e-4570-8c05-f4900d4ae1b8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 28),
(631, 'afc5737a-b604-4fc0-b6d2-a06dd7e7ab46', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'north_african', 24),
(632, '0c0f45d5-0c58-498c-9441-dd6826f89aa7', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'average', 24),
(633, 'ab746f0e-fbca-46a3-97c5-bcaa801c6eac', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '144', 24),
(634, '8f14ead9-d649-43e1-89d8-23120c13331b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'black', 24),
(635, 'ce6816d5-6511-4e7c-8067-7066a85cd3e4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'reserved', 24),
(636, 'da37cc9c-9a46-4653-a7dd-272b25c1a81e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'many_friends', 24),
(637, '8c678621-e268-4962-bf90-a973bdf48e78', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_have_kids_and_don\'t_want_more', 24),
(638, 'a5b6a4ff-595e-40d4-9e6d-871166ddb3cc', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 24),
(639, 'c612c2b0-c257-4b4d-a82b-973d6a1dd035', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'sikh', 24),
(640, '81fe7e96-cee4-425c-9ae9-548006eef116', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'friends', 24),
(641, '6c3c7a43-12ad-4cef-bf65-fd5e6b37f34d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 24),
(642, 'd6d635d1-ef82-4498-8ea6-e06d2708efc8', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_all_the_time', 24),
(643, 'b73eaf2c-40e3-4ef3-931b-ccc04350bf5d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'i_some_sometimes', 24),
(644, '1b8166f2-2f3f-4b35-9bf6-81e0dc5e1228', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 24),
(645, 'b218af59-ce9f-47b8-9546-c95c13f7e19e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'black', 11),
(646, '03fdf94a-a241-4e55-94bc-f46075d2e3b1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'round', 11),
(647, 'ccd323ac-a609-4961-8b59-522f10ad6090', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '153', 11),
(648, 'ce582fd9-0acc-4c8c-b7fc-a94cc8c493db', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'gray_or_partially_gray', 11),
(649, '80d36d41-8e4e-4a6b-9015-5127ee625f2e', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'thoughtful', 11),
(650, '2cc86086-cc80-483b-b6d2-549f52c55fe7', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'no_friends', 11),
(651, 'facd2e7e-89db-425f-827c-28e2de7b3928', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'someday_maybe', 11),
(652, 'cffdcb2f-5eb6-487a-afc5-ab518598f3bd', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'have_pets', 11),
(653, 'c50f1427-f0f3-4546-9d69-dfd1c896ee43', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'sikh', 11),
(654, '46222f8d-c7f1-4436-a6a2-4c090f819ab3', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'children', 11),
(655, 'd2a580a2-03e0-4c26-abfe-658cddbdc7e6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 11),
(656, '69943e22-a8c8-48ef-be90-cfcdf1a91cc3', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_sometimes', 11),
(657, '0cc79561-7adf-4031-87bc-19f373b2fe9c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'never', 11),
(658, '2fb91009-8048-48e5-b6ed-8f662221dd05', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 11),
(659, 'b4fe4bcf-3c39-4aa8-a31a-c85c1f2a0e1d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'north_african', 7),
(660, 'cd887643-2900-4279-ba2d-d03c925c27a5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'sporty', 7),
(661, '64a29438-8fa0-4abf-b9c9-fa620d46d396', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '187', 7),
(662, '31e7211f-6c7b-4ee1-97fe-1c4b8de9bf4b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'partly_or_completely_bald', 7),
(663, '29cb6c20-5d1a-4edd-913b-ed676cbd1fe1', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'accommodating', 7),
(664, 'fbed0156-0dee-4f24-a556-e2fad0ca2f78', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'no_friends', 7),
(665, '2feb2e93-d446-47bf-893f-7c54d5a0cae4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'i_have_kids_and_don\'t_want_more', 7),
(666, '207201ae-79ae-4f71-aeee-3098ae823791', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 7),
(667, 'fad46c8a-4eb7-42bd-ab6a-6c1aca737015', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'muslim', 7),
(668, 'f3d0a734-84dc-42e1-92d9-0fd0be9989b2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'alone', 7),
(669, '68ce3236-6c80-442a-acf6-cc89474ffab4', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'my_own_car', 7),
(670, '21dc153b-a7ce-420d-976c-017b523a3ebd', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_sometimes', 7),
(671, '7ef1b321-6e29-46f5-b3f5-e00d8d6d4120', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'chain_smoker', 7),
(672, 'bcd31a1d-cab9-4e7b-be7b-d9f38401d27a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 7),
(673, '2706216b-0866-4e46-99da-6f2cb59f76e0', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'other', 49),
(674, '68be6486-f973-45e1-88fa-bd8be05bf47b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'curvy', 49),
(675, 'd385f389-6389-4c00-b1b7-c873af9b1377', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '187', 49),
(676, 'a4307fb9-7cd8-4437-bdb6-9cdb6397174c', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'white', 49),
(677, '01c0c4db-b8a1-4012-adfa-aca234983f6f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'loner', 49),
(678, 'd542bcd5-32e5-4c98-a334-a6ba14caa8da', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'many_friends', 49),
(679, '017e2b2e-77e0-4bd4-8d54-1d00d0ae13d2', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'someday_maybe', 49),
(680, '16f482d0-b4db-495f-908f-f63223dcd59b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 49),
(681, '82b31c63-ba62-4c75-b46c-c444ec776d6b', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'christian', 49),
(682, 'f3cb3133-d759-422b-9645-410238b24b17', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'alone', 49),
(683, 'ae64cd09-0776-48a1-a152-d35ec01ddc7d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 49),
(684, '00ae9f14-fbac-471c-b07c-fccd990fd1d6', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'no', 49),
(685, '73e0832d-5884-4f22-acd4-8cd6d6cb2821', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'never', 49),
(686, 'bfc8a107-d61f-4d97-bf7e-794c2bc5c476', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'i_drink_sometimes', 49),
(687, 'e8a9cc97-8eb3-40c1-8f46-2aee838fd656', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'ethnicity', 'middle_eastern', 32),
(688, '744a13b8-5ca1-4c8b-bc29-688b84584f28', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'body_type', 'average', 32),
(689, 'e64b9083-d963-4955-bc6d-5b638000d95d', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'height', '203', 32),
(690, '4aa81c51-1b70-4256-9d75-d8ce2040e1ce', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'hair_color', 'purple', 32),
(691, '66cc043f-d01a-47fe-bc64-9af5d06da999', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'nature', 'introverted', 32),
(692, '9a316ce1-d74f-4ad4-8549-cfa04eb0b1fb', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'friends', 'no_friends', 32),
(693, '737e9c71-fd3f-4185-820d-8d2eba7b44ec', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'children', 'expecting', 32),
(694, 'b01ed482-5256-4dfc-a661-2c50bf88bf60', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'pets', 'none', 32),
(695, '6b9e1beb-4bfa-4b82-92a4-f209acb3823f', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'religion', 'buddhist', 32),
(696, '81a6e694-9327-4c8c-a015-7bebb536d4b5', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'i_live_with', 'friends', 32),
(697, 'c0f4ec44-36a4-4dee-9eed-d70f9eed0bea', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'car', 'none', 32),
(698, 'c6553765-6006-40f1-8dac-5f3114dfe860', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'travel', 'yes_all_the_time', 32),
(699, 'b5b007e3-1d08-4b8b-9773-e3ee7c7ad038', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'smoke', 'never', 32),
(700, 'e3043065-1ef3-4682-9ee6-f79ac4de363a', '2020-12-14 10:12:00', '2020-12-14 10:12:00', 1, 1, 'drink', 'never', 32),
(701, '83d10adc-8418-4f02-91a4-9df625aad8fa', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'ethnicity', 'middle_eastern', 53),
(702, '29cb3ca5-48fc-46bb-8416-7011be0bf47d', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'body_type', 'average', 53),
(703, 'bf14306c-beb3-445d-b2fc-0fc98eb4e938', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'height', '186', 53),
(704, '23b53040-0321-4bbf-abfd-f8072171e06a', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'hair_color', 'red/auburn', 53),
(705, '394856f3-05dc-4ac9-a372-40b729f217d7', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'nature', 'careless', 53),
(706, '1e20359b-b287-4570-8474-cca3bba0ee2f', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'friends', 'some_friends', 53),
(707, '633bde1f-6e81-4c1b-8b61-ee9348e7d469', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'children', 'someday_maybe', 53),
(708, 'e867c2b1-6b75-4760-b91b-70b39b9c57c9', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'pets', 'have_pets', 53),
(709, 'e8e7570c-867b-4607-b8ff-edd9cdb30fd8', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'religion', 'hindu', 53),
(710, '033ce8df-f71e-4946-8228-7809814f4f35', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'i_live_with', 'parents', 53),
(711, '78567aa4-b8bd-4b03-9163-c2d908bd85c6', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'car', 'my_own_car', 53),
(712, 'aff81b86-c825-4512-8fe5-dabf5fc5a39b', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'travel', 'yes_sometimes', 53),
(713, 'fccfc315-64d4-45ea-9f0a-80da61c6e524', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'smoke', 'chain_smoker', 53),
(714, 'ac52a724-4f9c-4054-960c-4dd2e173412b', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'drink', 'never', 53),
(715, '81c7dd17-44b0-4747-9ad6-29608efe2944', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'ethnicity', 'middle_eastern', 55),
(716, 'e16e38ed-bcde-4a83-8b69-3751bed71292', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'body_type', 'round', 55),
(717, '3ffc26c1-a386-4b5e-8239-b7c9f7f4d646', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'height', '160', 55),
(718, '2ce4e6c3-c0d8-4fee-afab-48236baa52c2', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'hair_color', 'purple', 55),
(719, '2b497223-4a71-4bc6-8b34-39891bd72321', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'nature', 'stubborn', 55),
(720, '2f8d6741-6ddc-44e7-bbea-24f01436a7f2', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'friends', 'no_friends', 55),
(721, 'e810f510-7234-45a9-a4a2-b1e1cd5c2470', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'children', 'someday_maybe', 55),
(722, 'ee580f9b-cdc8-4b81-9638-54e5a0c19c23', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'pets', 'none', 55),
(723, '6ad2dbe3-ebe0-40fa-8807-db7b2e44cc44', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'religion', 'hindu', 55),
(724, '781af594-8565-40cf-9c63-112bc5f4a57e', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'i_live_with', 'partner', 55),
(725, '6419db7a-25fd-40b6-a464-32bc497cd6ad', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'car', 'none', 55),
(726, '1a95d5fb-336d-4e06-9614-ef7223a6b290', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'travel', 'yes_sometimes', 55),
(727, '8c9d9c12-a9b8-41e8-811a-9754af2e9924', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'smoke', 'never', 55),
(728, '3cb0b0d6-9c0c-4324-acf3-61267e335a88', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'drink', 'i_drink_sometimes', 55),
(729, '7e9dfd36-7671-4691-96a2-5536410d566c', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'ethnicity', 'other', 57),
(730, '8cd5d63e-6d50-46bb-ae2b-a2c83d3b5a55', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'body_type', 'other', 57),
(731, '4fa667a0-e3ee-4d11-864d-14d669caa650', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'height', '207', 57),
(732, 'c40ae9d8-e873-4daa-9be8-6325982c80f7', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'hair_color', 'brown', 57),
(733, '31dcfc04-bfaa-447a-8721-4c030ae29f84', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'nature', 'sensitive', 57),
(734, 'e7730023-51f4-4757-b8f4-9b5f3296bb4f', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'friends', 'some_friends', 57),
(735, 'b704fedf-802f-4ad0-baf8-bce4ed32a6f7', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'children', 'someday_maybe', 57),
(736, 'efa7ebe4-1d4d-4df8-80a8-7f37741652d7', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'pets', 'have_pets', 57),
(737, '197937ff-7100-4721-b0f5-b878ad704d2c', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'religion', 'jewish', 57),
(738, 'c72f7ea4-94e6-43e2-9c12-3126215ebcd3', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'i_live_with', 'partner', 57),
(739, '8ed39325-60a6-495e-8f62-bc3882f6ae59', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'car', 'my_own_car', 57),
(740, '073937ed-f2aa-40e0-b8ed-64420a29e724', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'travel', 'not_very_much', 57),
(741, 'db533447-15a1-49c3-b02a-bc83a4f5103d', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'smoke', 'chain_smoker', 57),
(742, '622ffe83-c76a-4538-af12-81eee672bbfc', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'drink', 'never', 57),
(743, '782f80af-65dd-4f98-9146-f0afe5145473', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'ethnicity', 'middle_eastern', 54),
(744, '907aea15-3d8b-41f6-82d5-79dd6e248c2e', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'body_type', 'slim', 54),
(745, '373409dd-e9b6-4cda-903f-69d00fdc0b41', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'height', '215', 54),
(746, '65e1e817-cacd-4a8f-b67f-2c6dc47eb19c', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'hair_color', 'blond/strawberry', 54),
(747, '67a07c84-350b-4d37-ab08-2fbd49713025', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'nature', 'polite', 54),
(748, '44106fe8-c34c-49e4-80c7-d1874360bbef', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'friends', 'no_friends', 54),
(749, '03171a21-540f-415b-9fd8-dcaedad14728', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'children', 'no_never', 54),
(750, '1a97d446-5279-41cb-977f-3b320796d513', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'pets', 'none', 54),
(751, '7cad6c3d-7ce4-4f3e-b9a9-f7b3729ddf13', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'religion', 'catholic', 54),
(752, '56536bd0-8bfd-47b3-95f1-fbc09f542c40', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'i_live_with', 'parents', 54),
(753, '429fcde7-9109-4040-90fe-f5fc382ded82', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'car', 'my_own_car', 54),
(754, '0d2dce17-1119-455a-8b1d-eb666b84e074', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'travel', 'yes_all_the_time', 54),
(755, '08a82f9b-0efe-49ba-ac6a-f18ff6695eee', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'smoke', 'never', 54),
(756, 'cb24f292-a843-4d92-9863-aa6bd86a442d', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'drink', 'i_drink_sometimes', 54),
(757, 'd3dfe5cf-6e0b-49c5-b6ea-7b03eb4cd4f1', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'ethnicity', 'middle_eastern', 56),
(758, '90181f9d-0638-4fd3-92ef-15c264a60e67', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'body_type', 'curvy', 56),
(759, 'c0c1d1bc-9cd6-4966-bc79-37f6538fb033', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'height', '147', 56),
(760, '04370544-7633-4085-929e-0d8d8a644608', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'hair_color', 'brown', 56),
(761, 'c62626e8-1d14-4632-8bc4-e2c69836f060', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'nature', 'reserved', 56),
(762, '4cf2d1ba-8e23-46a5-8f44-8ab5531c2511', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'friends', 'only_good_friends', 56),
(763, 'af30de1a-405c-4991-9610-e001e049214b', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'children', 'i_already_have_kids', 56),
(764, '3111aecc-e077-4c59-beaf-d16ba411acba', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'pets', 'none', 56),
(765, '51633aa0-9594-43c8-8ca6-0cdfd058247e', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'religion', 'buddhist', 56),
(766, 'b69c2887-4034-4562-bf64-4fdff845ee71', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'i_live_with', 'partner', 56),
(767, '865c8b32-f6bf-45d6-b4fb-e3477a4eb149', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'car', 'none', 56),
(768, 'ff17f9c9-fabe-4fca-9243-fa5faeac6987', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'travel', 'not_very_much', 56),
(769, 'de9c8a1c-eb3a-413d-81a6-21fec433546b', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'smoke', 'never', 56),
(770, 'a7063452-f38e-4336-97c1-a07de206863f', '2020-12-14 10:17:46', '2020-12-14 10:17:46', 1, 1, 'drink', 'i_drink_sometimes', 56),
(771, '973c525d-987d-4dfd-9d07-65406db566af', '2020-12-14 13:20:30', '2020-12-14 13:20:30', 1, 1, 'ethnicity', 'white', 1),
(772, 'c4f57fad-8928-4af4-9430-6de5332c5a87', '2020-12-14 13:20:32', '2020-12-14 13:20:32', 1, 1, 'body_type', 'slim', 1),
(773, '9f35cd88-13b3-4077-b9e1-3c3dca2aabd6', '2020-12-14 13:20:34', '2020-12-14 13:20:34', 1, 1, 'height', '150', 1),
(774, '79facb41-4e4d-4808-9b9a-f1c134a74cce', '2020-12-14 13:20:36', '2020-12-14 13:20:36', 1, 1, 'hair_color', 'partly_or_completely_bald', 1),
(775, '623b1dee-9dcf-4933-a16f-617e94ce8c00', '2020-12-14 13:20:44', '2020-12-14 13:20:44', 1, 1, 'pets', 'have_pets', 1),
(776, 'c04e8b68-a256-4f75-8353-fe83ef4ba1d5', '2020-12-14 13:20:50', '2020-12-14 13:20:50', 1, 1, 'children', 'someday_maybe', 1),
(777, '17785ed3-ac15-4d53-9222-ecf8ee2d728e', '2020-12-14 13:20:54', '2020-12-14 13:20:54', 1, 1, 'nature', 'cheerful', 1),
(778, '0fca0402-4c6c-4f29-9603-a28530aa9d10', '2020-12-14 13:20:59', '2020-12-14 13:20:59', 1, 1, 'friends', 'only_good_friends', 1),
(779, '93dd2db5-4fa9-47ab-97c3-38fc82382817', '2020-12-14 13:21:06', '2020-12-14 13:21:06', 1, 1, 'religion', 'hindu', 1),
(780, 'a8de1f9a-df58-40bb-b2a9-dae295ad1a20', '2020-12-14 13:21:17', '2020-12-14 13:21:17', 1, 1, 'car', 'my_own_car', 1),
(781, 'b4991d64-0e32-4c5a-96ca-be62b9b11180', '2020-12-14 13:21:21', '2020-12-14 13:21:21', 1, 1, 'smoke', 'i_some_sometimes', 1),
(782, '9f5045be-f924-49f1-8465-e73767961884', '2020-12-14 13:21:22', '2020-12-14 13:21:22', 1, 1, 'drink', 'i_drink_sometimes', 1),
(783, 'cc0198a1-239f-459f-886a-f8b0ce5f6646', '2020-12-14 13:21:27', '2020-12-14 13:21:27', 1, 1, 'travel', 'yes_sometimes', 1),
(784, '35b48d54-3032-4ea5-ba29-74aa653d37ce', '2020-12-14 13:21:32', '2020-12-14 13:21:32', 1, 1, 'i_live_with', 'friends', 1),
(785, '94856377-7c81-4115-a5d0-87e9d41d839d', '2020-12-14 13:21:40', '2020-12-14 13:21:40', 1, 1, 'music_genre', 'dsa', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_subscriptions`
--

CREATE TABLE `user_subscriptions` (
  `_id` int(10) UNSIGNED NOT NULL,
  `_uid` char(36) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL,
  `users__id` int(10) UNSIGNED NOT NULL,
  `expiry_at` datetime DEFAULT NULL,
  `credit_wallet_transactions__id` int(10) UNSIGNED DEFAULT NULL,
  `plan_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_subscriptions`
--

INSERT INTO `user_subscriptions` (`_id`, `_uid`, `created_at`, `updated_at`, `status`, `users__id`, `expiry_at`, `credit_wallet_transactions__id`, `plan_id`) VALUES
(1, 'e665da3d-0a06-4854-be19-0cca2de6904d', '2020-12-14 11:11:33', '2020-12-14 11:11:33', 1, 1, '2020-12-21 11:11:33', 3, 'one_week'),
(2, 'bc841a83-b3db-4dc0-83a6-8c78e4edfc8b', '2020-12-15 07:00:53', '2020-12-15 07:00:53', 1, 3, '2020-12-16 07:00:53', 6, 'one_day');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abuse_reports`
--
ALTER TABLE `abuse_reports`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_abuse_reports_users1_idx` (`for_users__id`),
  ADD KEY `fk_abuse_reports_users2_idx` (`by_users__id`),
  ADD KEY `fk_abuse_reports_users3_idx` (`moderated_by_users__id`);

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_chats_users1_idx` (`from_users__id`),
  ADD KEY `fk_chats_users2_idx` (`to_users__id`),
  ADD KEY `fk_chats_items1_idx` (`items__id`),
  ADD KEY `fk_chats_users3_idx` (`users__id`);

--
-- Indexes for table `configurations`
--
ALTER TABLE `configurations`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `credit_packages`
--
ALTER TABLE `credit_packages`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_credit_packages_users1_idx` (`users__id`);

--
-- Indexes for table `credit_wallet_transactions`
--
ALTER TABLE `credit_wallet_transactions`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_credit_wallet_transactions_users1_idx` (`users__id`),
  ADD KEY `fk_credit_wallet_transactions_financial_transactions1_idx` (`financial_transactions__id`);

--
-- Indexes for table `email_change_requests`
--
ALTER TABLE `email_change_requests`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD KEY `fk_email_change_requests_users1_idx` (`users__id`),
  ADD KEY `fk_email_change_requests_user_authorities1_idx` (`user_authorities__id`);

--
-- Indexes for table `financial_transactions`
--
ALTER TABLE `financial_transactions`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_financial_transactions_users1_idx` (`users__id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_gifts_user_authorities1_idx` (`user_authorities__id`);

--
-- Indexes for table `like_dislikes`
--
ALTER TABLE `like_dislikes`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_like_dislikes_users1_idx` (`to_users__id`),
  ADD KEY `fk_like_dislikes_users2_idx` (`by_users__id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_notifications_users1_idx` (`users__id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`),
  ADD KEY `fk_pages_users1_idx` (`users__id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`);

--
-- Indexes for table `profile_boosts`
--
ALTER TABLE `profile_boosts`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_profile_boosts_users1_idx` (`for_users__id`),
  ADD KEY `fk_profile_boosts_credit_wallet_transactions1_idx` (`credit_wallet_transactions__id`);

--
-- Indexes for table `profile_visitors`
--
ALTER TABLE `profile_visitors`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_profile_visitors_users1_idx` (`to_users__id`),
  ADD KEY `fk_profile_visitors_users2_idx` (`by_users__id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`);

--
-- Indexes for table `user_authorities`
--
ALTER TABLE `user_authorities`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_user_authorities_users1_idx` (`users__id`),
  ADD KEY `fk_user_authorities_user_roles1_idx` (`user_roles__id`);

--
-- Indexes for table `user_block_users`
--
ALTER TABLE `user_block_users`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_user_block_users1_idx` (`to_users__id`),
  ADD KEY `fk_user_block_users2_idx` (`by_users__id`);

--
-- Indexes for table `user_encounters`
--
ALTER TABLE `user_encounters`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_user_encounters_users1_idx` (`by_users__id`),
  ADD KEY `fk_user_encounters_users2_idx` (`to_users__id`);

--
-- Indexes for table `user_gifts`
--
ALTER TABLE `user_gifts`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_user_gifts_users1_idx` (`from_users__id`),
  ADD KEY `fk_user_gifts_users2_idx` (`to_users__id`),
  ADD KEY `fk_user_gifts_items1_idx` (`items__id`),
  ADD KEY `fk_user_gifts_credit_wallet_transactions1_idx` (`credit_wallet_transactions__id`);

--
-- Indexes for table `user_items`
--
ALTER TABLE `user_items`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_user_items_users1_idx` (`users__id`),
  ADD KEY `fk_user_items_items1_idx` (`items__id`),
  ADD KEY `fk_user_items_credit_wallet_transactions1_idx` (`credit_wallet_transactions__id`);

--
-- Indexes for table `user_photos`
--
ALTER TABLE `user_photos`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_user_photos_users1_idx` (`users__id`);

--
-- Indexes for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD KEY `fk_user_profiles_users1_idx` (`users__id`),
  ADD KEY `fk_user_profiles_countries1_idx` (`countries__id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `name` (`key_name`),
  ADD KEY `fk_user_settings_users1_idx` (`users__id`);

--
-- Indexes for table `user_specifications`
--
ALTER TABLE `user_specifications`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_user_favorites_users1_idx` (`users__id`);

--
-- Indexes for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD PRIMARY KEY (`_id`),
  ADD UNIQUE KEY `_uid_UNIQUE` (`_uid`),
  ADD UNIQUE KEY `_uid` (`_uid`),
  ADD KEY `fk_user_subscriptions_users1_idx` (`users__id`),
  ADD KEY `fk_user_subscriptions_credit_wallet_transactions1_idx` (`credit_wallet_transactions__id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abuse_reports`
--
ALTER TABLE `abuse_reports`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `configurations`
--
ALTER TABLE `configurations`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `credit_packages`
--
ALTER TABLE `credit_packages`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `credit_wallet_transactions`
--
ALTER TABLE `credit_wallet_transactions`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `email_change_requests`
--
ALTER TABLE `email_change_requests`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `financial_transactions`
--
ALTER TABLE `financial_transactions`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `like_dislikes`
--
ALTER TABLE `like_dislikes`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profile_boosts`
--
ALTER TABLE `profile_boosts`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `profile_visitors`
--
ALTER TABLE `profile_visitors`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `user_authorities`
--
ALTER TABLE `user_authorities`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `user_block_users`
--
ALTER TABLE `user_block_users`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_encounters`
--
ALTER TABLE `user_encounters`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `user_gifts`
--
ALTER TABLE `user_gifts`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_items`
--
ALTER TABLE `user_items`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_photos`
--
ALTER TABLE `user_photos`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `_id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_specifications`
--
ALTER TABLE `user_specifications`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=786;
--
-- AUTO_INCREMENT for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  MODIFY `_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `abuse_reports`
--
ALTER TABLE `abuse_reports`
  ADD CONSTRAINT `fk_abuse_reports_users1` FOREIGN KEY (`for_users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_abuse_reports_users2` FOREIGN KEY (`by_users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_abuse_reports_users3` FOREIGN KEY (`moderated_by_users__id`) REFERENCES `users` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `chats`
--
ALTER TABLE `chats`
  ADD CONSTRAINT `fk_chats_items1` FOREIGN KEY (`items__id`) REFERENCES `items` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_chats_users1` FOREIGN KEY (`from_users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_chats_users2` FOREIGN KEY (`to_users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_chats_users3` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `credit_packages`
--
ALTER TABLE `credit_packages`
  ADD CONSTRAINT `fk_credit_packages_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `credit_wallet_transactions`
--
ALTER TABLE `credit_wallet_transactions`
  ADD CONSTRAINT `fk_credit_wallet_transactions_financial_transactions1` FOREIGN KEY (`financial_transactions__id`) REFERENCES `financial_transactions` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_credit_wallet_transactions_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `email_change_requests`
--
ALTER TABLE `email_change_requests`
  ADD CONSTRAINT `fk_email_change_requests_user_authorities1` FOREIGN KEY (`user_authorities__id`) REFERENCES `user_authorities` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_email_change_requests_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `financial_transactions`
--
ALTER TABLE `financial_transactions`
  ADD CONSTRAINT `fk_financial_transactions_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `fk_gifts_user_authorities1` FOREIGN KEY (`user_authorities__id`) REFERENCES `user_authorities` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `like_dislikes`
--
ALTER TABLE `like_dislikes`
  ADD CONSTRAINT `fk_like_dislikes_users1` FOREIGN KEY (`to_users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_like_dislikes_users2` FOREIGN KEY (`by_users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `fk_notifications_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `fk_pages_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `profile_boosts`
--
ALTER TABLE `profile_boosts`
  ADD CONSTRAINT `fk_profile_boosts_credit_wallet_transactions1` FOREIGN KEY (`credit_wallet_transactions__id`) REFERENCES `credit_wallet_transactions` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_profile_boosts_users1` FOREIGN KEY (`for_users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `profile_visitors`
--
ALTER TABLE `profile_visitors`
  ADD CONSTRAINT `fk_profile_visitors_users1` FOREIGN KEY (`to_users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_profile_visitors_users2` FOREIGN KEY (`by_users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_authorities`
--
ALTER TABLE `user_authorities`
  ADD CONSTRAINT `fk_user_authorities_user_roles1` FOREIGN KEY (`user_roles__id`) REFERENCES `user_roles` (`_id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_authorities_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_block_users`
--
ALTER TABLE `user_block_users`
  ADD CONSTRAINT `fk_user_block_users1` FOREIGN KEY (`to_users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_block_users2` FOREIGN KEY (`by_users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_encounters`
--
ALTER TABLE `user_encounters`
  ADD CONSTRAINT `fk_user_encounters_users1` FOREIGN KEY (`by_users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_encounters_users2` FOREIGN KEY (`to_users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_gifts`
--
ALTER TABLE `user_gifts`
  ADD CONSTRAINT `fk_user_gifts_credit_wallet_transactions1` FOREIGN KEY (`credit_wallet_transactions__id`) REFERENCES `credit_wallet_transactions` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_gifts_items1` FOREIGN KEY (`items__id`) REFERENCES `items` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_gifts_users1` FOREIGN KEY (`from_users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_gifts_users2` FOREIGN KEY (`to_users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_items`
--
ALTER TABLE `user_items`
  ADD CONSTRAINT `fk_user_items_credit_wallet_transactions1` FOREIGN KEY (`credit_wallet_transactions__id`) REFERENCES `credit_wallet_transactions` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_items_items1` FOREIGN KEY (`items__id`) REFERENCES `items` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_items_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_photos`
--
ALTER TABLE `user_photos`
  ADD CONSTRAINT `fk_user_photos_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD CONSTRAINT `fk_user_profiles_countries1` FOREIGN KEY (`countries__id`) REFERENCES `countries` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_profiles_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD CONSTRAINT `fk_user_settings_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_specifications`
--
ALTER TABLE `user_specifications`
  ADD CONSTRAINT `fk_user_favorites_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user_subscriptions`
--
ALTER TABLE `user_subscriptions`
  ADD CONSTRAINT `fk_user_subscriptions_credit_wallet_transactions1` FOREIGN KEY (`credit_wallet_transactions__id`) REFERENCES `credit_wallet_transactions` (`_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_subscriptions_users1` FOREIGN KEY (`users__id`) REFERENCES `users` (`_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
