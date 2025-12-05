-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2025 at 11:51 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie_watchlist2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `name`, `description`, `created_at`, `user_id`) VALUES
(11, 'Action', 'Action movies', '2025-12-01 11:30:00', 1),
(12, 'Comedy', 'Comedy movies', '2025-12-01 11:30:00', 1),
(13, 'Drama', 'Drama movies', '2025-12-01 11:30:00', 1),
(14, 'Horror', 'Horror movies', '2025-12-01 11:30:00', 1),
(15, 'Romance', 'Romantic movies', '2025-12-01 11:30:00', 1),
(16, 'Adventure', 'Adventure movies', '2025-12-01 11:35:46', 1);

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `FolderID` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `FolderName` varchar(100) NOT NULL,
  `Description` text DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`FolderID`, `user_id`, `FolderName`, `Description`, `CreatedAt`) VALUES
(11, 1, 'Romance', NULL, '2025-11-14 00:28:32'),
(15, 6, 'lover Boy', '', '2025-11-27 15:02:36'),
(16, 14, 'Favrouites', NULL, '2025-11-28 12:11:03'),
(17, 14, 'Adventure', NULL, '2025-12-01 09:21:15'),
(18, 14, 'Romance', NULL, '2025-12-01 09:21:15'),
(19, 14, 'Action', NULL, '2025-12-01 09:21:15'),
(20, 14, 'Drama', NULL, '2025-12-01 09:21:15'),
(21, 14, 'Horror', NULL, '2025-12-01 09:45:22'),
(22, 14, 'best movies', NULL, '2025-12-03 10:04:26'),
(23, 14, 'a', NULL, '2025-12-04 14:21:05'),
(24, 14, 'Ac', NULL, '2025-12-04 14:22:26'),
(25, 14, 'ActionAdventureComedyDramaHorrorRomanceSciFiThrillerFantasyMysteryCrimeAnimationFamilyMusicalWarHist', NULL, '2025-12-04 14:26:03'),
(26, 14, 'ActionAdventureComedyDramaHorrorRomanceSciFiThrillerFantasyMysteryCrimeAnimationFamilyMusicalWarHist', NULL, '2025-12-04 14:29:47'),
(27, 14, 'ActionAdventureComedyDramaHorrorRomanceSciFiThrillerFantasyMysteryCrimeAnimationFamilyMusicalWarHist', NULL, '2025-12-04 14:32:44'),
(28, 14, '12345', NULL, '2025-12-04 14:33:23'),
(29, 14, '&quot;Movie&#039;; DROP TABLE--&quot;', NULL, '2025-12-04 14:43:02');

-- --------------------------------------------------------

--
-- Table structure for table `folder_movies`
--

CREATE TABLE `folder_movies` (
  `FolderID` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `added_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `folder_movies`
--

INSERT INTO `folder_movies` (`FolderID`, `movie_id`, `added_at`) VALUES
(17, 27, '2025-12-01 09:31:29'),
(17, 28, '2025-12-01 09:32:03'),
(17, 29, '2025-12-01 09:32:41'),
(17, 31, '2025-12-01 09:34:05'),
(17, 34, '2025-12-01 09:39:55'),
(17, 42, '2025-12-04 13:22:44'),
(17, 45, '2025-12-04 13:33:01'),
(17, 46, '2025-12-04 13:36:35'),
(17, 48, '2025-12-04 13:43:56'),
(17, 49, '2025-12-04 13:44:34'),
(17, 51, '2025-12-04 13:47:43'),
(17, 55, '2025-12-04 14:02:11'),
(18, 27, '2025-12-01 09:31:29'),
(18, 28, '2025-12-01 09:32:03'),
(18, 29, '2025-12-01 09:32:41'),
(18, 31, '2025-12-01 09:34:05'),
(18, 34, '2025-12-01 09:39:55'),
(18, 42, '2025-12-04 13:22:44'),
(18, 45, '2025-12-04 13:33:01'),
(18, 46, '2025-12-04 13:36:35'),
(18, 48, '2025-12-04 13:43:56'),
(18, 49, '2025-12-04 13:44:34'),
(18, 51, '2025-12-04 13:47:43'),
(18, 55, '2025-12-04 14:02:11'),
(19, 26, '2025-12-01 09:21:15'),
(19, 30, '2025-12-01 09:33:24'),
(19, 32, '2025-12-01 09:36:43'),
(19, 33, '2025-12-01 09:38:37'),
(19, 35, '2025-12-01 09:41:40'),
(19, 36, '2025-12-01 09:43:41'),
(19, 44, '2025-12-04 13:30:54'),
(19, 47, '2025-12-04 13:38:30'),
(19, 50, '2025-12-04 13:45:46'),
(19, 53, '2025-12-04 13:59:14'),
(19, 54, '2025-12-04 14:00:58'),
(19, 64, '2025-12-04 21:30:46'),
(20, 26, '2025-12-01 09:21:15'),
(20, 30, '2025-12-01 09:33:24'),
(20, 32, '2025-12-01 09:36:43'),
(20, 33, '2025-12-01 09:38:37'),
(20, 35, '2025-12-01 09:41:40'),
(20, 36, '2025-12-01 09:43:41'),
(20, 44, '2025-12-04 13:30:54'),
(20, 47, '2025-12-04 13:38:30'),
(20, 50, '2025-12-04 13:45:46'),
(20, 53, '2025-12-04 13:59:14'),
(20, 54, '2025-12-04 14:00:58'),
(20, 64, '2025-12-04 21:30:46'),
(21, 37, '2025-12-01 09:45:22'),
(23, 57, '2025-12-04 14:21:05'),
(24, 58, '2025-12-04 14:22:26'),
(28, 62, '2025-12-04 14:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `release_year` int(11) DEFAULT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `genre` varchar(100) DEFAULT NULL,
  `poster_url` varchar(255) DEFAULT NULL,
  `watched_status` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`movie_id`, `user_id`, `title`, `release_year`, `poster`, `genre`, `poster_url`, `watched_status`, `created_at`) VALUES
(26, 14, 'Jaari', 2023, 'uploads/poster_693223a613cb9.jpg', 'Action, Drama', NULL, 0, '2025-11-28 13:08:07'),
(27, 14, 'Jerry on Top', 2025, 'uploads/poster_693223b163087.jpg', 'Adventure, Romance', NULL, 0, '2025-12-01 10:31:29'),
(28, 14, 'Mantra', 2023, 'uploads/poster_693223bd5b1aa.jpg', 'Adventure, Romance', NULL, 0, '2025-12-01 10:32:03'),
(29, 14, 'Barfi!', 2019, 'uploads/poster_693223c7d89e1.jpg', 'Comedy', NULL, 0, '2025-12-01 10:32:41'),
(30, 14, 'Avenger', 2012, 'uploads/poster_6932241fe8a51.webp', 'Action, Drama', NULL, 0, '2025-12-01 10:33:24'),
(31, 14, 'Kabbadi Kabbadi', 2019, 'uploads/poster_69322415bf287.jpg', 'Adventure, Romance', NULL, 0, '2025-12-01 10:34:05'),
(32, 14, 'Hostel 3', 2025, 'uploads/poster_693223d56e8e3.jpg', 'Action, Drama', NULL, 1, '2025-12-01 10:36:43'),
(33, 14, 'The Lion King', 1994, 'uploads/poster_693223e06ea76.webp', 'Action, Drama', NULL, 1, '2025-12-01 10:38:37'),
(34, 14, 'Aladdin', 1992, 'uploads/poster_6932240408433.jpeg', 'Adventure, Romance', NULL, 0, '2025-12-01 10:39:55'),
(35, 14, 'Moana', 2024, 'uploads/poster_693223f5ca103.jpg', 'Action, Drama', NULL, 0, '2025-12-01 10:41:40'),
(36, 14, 'The Good Dinosaur', 2016, 'uploads/poster_693223ecf3eec.jpg', 'Action, Drama', NULL, 0, '2025-12-01 10:43:41'),
(37, 14, 'Wolf Man', 2025, 'uploads/poster_6932237c95f1b.jpg', 'Horror', NULL, 0, '2025-12-01 10:45:22'),
(42, 14, 'A', 2025, 'uploads/poster_69318b2492f91.png', 'Adventure, Romance', NULL, 0, '2025-12-04 14:22:44'),
(44, 14, 'AB', 2024, 'uploads/poster_69318d0eaf731.jpg', 'Action, Drama', NULL, 0, '2025-12-04 14:30:54'),
(45, 14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut.', 2019, 'uploads/poster_69318d8d99b01.jpg', 'Adventure, Romance', NULL, 0, '2025-12-04 14:33:01'),
(46, 14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', 2024, 'uploads/poster_69318e6385ddd.jpg', 'Adventure, Romance', NULL, 0, '2025-12-04 14:36:35'),
(47, 14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', 2000, 'uploads/poster_69318ed639522.jpg', 'Action, Drama', NULL, 0, '2025-12-04 14:38:30'),
(48, 14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', 2000, 'uploads/poster_6931901cb02e1.jpg', 'Adventure, Romance', NULL, 0, '2025-12-04 14:43:56'),
(49, 14, 'jaari 2', 2024, 'uploads/poster_693190425a2c2.jpg', 'Adventure, Romance', NULL, 0, '2025-12-04 14:44:34'),
(50, 14, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut a', 2000, 'uploads/poster_6931908a0596e.jpg', 'Action, Drama', NULL, 0, '2025-12-04 14:45:46'),
(51, 14, '12345', 2002, 'uploads/poster_693190ff96e29.jpg', 'Adventure, Romance', NULL, 0, '2025-12-04 14:47:43'),
(53, 14, 'premgeet', 1900, 'uploads/poster_693193b29dc1b.jpg', 'Action, Drama', NULL, 0, '2025-12-04 14:59:14'),
(54, 14, 'priyetam', 1901, 'uploads/poster_6931941abe095.jpg', 'Action, Drama', NULL, 0, '2025-12-04 15:00:58'),
(55, 14, 'Snow white', 2024, 'uploads/poster_69319463958a4.jpg', 'Adventure, Romance', NULL, 0, '2025-12-04 15:02:11'),
(57, 14, 'ghgg', 1990, 'uploads/poster_693198d15b2a3.jpg', 'a', NULL, 0, '2025-12-04 15:21:05'),
(58, 14, 'pk', 2000, 'uploads/poster_6931992256e5c.jpg', 'Ac', NULL, 0, '2025-12-04 15:22:26'),
(62, 14, 'manjulika', 2000, 'uploads/poster_69319bb385f34.jpg', '12345', NULL, 0, '2025-12-04 15:33:23'),
(64, 14, 'puspa', 2004, 'uploads/poster_6931fd86a8f0a.jpg', 'Action, Drama', NULL, 0, '2025-12-04 22:30:46'),
(142, 14, '', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:56:27'),
(143, 14, 'A', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:56:27'),
(144, 14, 'AB', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:56:27'),
(145, 14, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:56:27'),
(146, 14, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:56:27'),
(147, 14, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:56:27'),
(148, 14, 'Avatar', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:56:27'),
(149, 14, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:56:27'),
(150, 14, '12345', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:56:27'),
(151, 14, 'Movie\'; DROP TABLE--', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:56:27'),
(152, 14, 'A', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:58:43'),
(153, 14, 'AB', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:58:43'),
(154, 14, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:58:43'),
(155, 14, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:58:43'),
(156, 14, 'Avatar', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:58:43'),
(157, 14, '12345', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:58:43'),
(158, 14, 'Movie\'; DROP TABLE--', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 10:58:43'),
(159, 14, 'TestMovie', 1900, NULL, 'TestGenre', NULL, 0, '2025-12-05 11:04:39'),
(160, 14, 'TestMovie', 1901, NULL, 'TestGenre', NULL, 0, '2025-12-05 11:04:39'),
(161, 14, 'TestMovie', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 11:04:39'),
(162, 14, 'TestMovie', 2025, NULL, 'TestGenre', NULL, 0, '2025-12-05 11:04:39'),
(163, 14, 'TestMovie', 2000, NULL, 'TestGenre', NULL, 0, '2025-12-05 11:04:39'),
(164, 14, 'A', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 11:05:40'),
(165, 14, 'AB', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 11:05:40'),
(166, 14, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 11:05:40'),
(167, 14, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 11:05:40'),
(168, 14, 'Avatar', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 11:05:40'),
(169, 14, '12345', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 11:05:40'),
(170, 14, 'Movie\'; DROP TABLE--', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 11:05:40'),
(171, 14, 'TestMovie', 2024, NULL, 'A', NULL, 0, '2025-12-05 11:06:45'),
(172, 14, 'TestMovie', 2024, NULL, 'Ac', NULL, 0, '2025-12-05 11:06:45'),
(173, 14, 'TestMovie', 2024, NULL, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', NULL, 0, '2025-12-05 11:06:45'),
(174, 14, 'TestMovie', 2024, NULL, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA', NULL, 0, '2025-12-05 11:06:45'),
(175, 14, 'TestMovie', 2024, NULL, 'Action, Drama', NULL, 0, '2025-12-05 11:06:45'),
(176, 14, 'TestMovie', 2024, NULL, 'Genre\'; DROP TABLE--', NULL, 0, '2025-12-05 11:06:45'),
(177, 14, 'TestMovie', 2024, NULL, 'TestGenre', NULL, 0, '2025-12-05 11:08:07'),
(178, 14, 'TestMovie', 2024, NULL, 'TestGenre', NULL, 1, '2025-12-05 11:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `movie_category`
--

CREATE TABLE `movie_category` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_comments`
--

CREATE TABLE `movie_comments` (
  `comment_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `rating` decimal(2,1) DEFAULT NULL CHECK (`rating` >= 0.5 and `rating` <= 5.0),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `movie_comments`
--

INSERT INTO `movie_comments` (`comment_id`, `movie_id`, `user_id`, `comment_text`, `rating`, `created_at`, `updated_at`) VALUES
(10, 36, 14, 'best movie', NULL, '2025-12-03 09:57:06', '2025-12-03 09:57:06'),
(11, 35, 14, 'Want to watch this movie again', NULL, '2025-12-03 09:57:40', '2025-12-03 09:57:40'),
(12, 34, 14, 'Best adventure movie', NULL, '2025-12-03 09:58:22', '2025-12-03 09:58:22'),
(13, 37, 14, 'I will definately watch this again', NULL, '2025-12-03 09:58:51', '2025-12-03 09:58:51');

-- --------------------------------------------------------

--
-- Table structure for table `security_questions`
--

CREATE TABLE `security_questions` (
  `question_id` int(11) NOT NULL,
  `question_text` varchar(255) NOT NULL,
  `expected_data_type` enum('boolean','string','integer') DEFAULT 'string',
  `is_active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `security_questions`
--

INSERT INTO `security_questions` (`question_id`, `question_text`, `expected_data_type`, `is_active`) VALUES
(1, 'What is your childhood pets name?', 'string', 1),
(2, 'Is your favorite movie genre comedy?', 'boolean', 1),
(3, 'Do you watch more than 5 movies per month?', 'boolean', 1),
(4, 'How many movies do you watch per month?', 'integer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(120) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `security_question_1_id` int(11) DEFAULT NULL,
  `security_answer_1_hash` varchar(255) DEFAULT NULL,
  `security_question_2_id` int(11) DEFAULT NULL,
  `security_answer_2_hash` varchar(255) DEFAULT NULL,
  `security_question_3_id` int(11) DEFAULT NULL,
  `security_answer_3_hash` varchar(255) DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `is_active` tinyint(1) DEFAULT 1,
  `last_login` timestamp NULL DEFAULT NULL,
  `security_question_4_id` int(11) DEFAULT NULL,
  `security_answer_4_hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`, `created_at`, `security_question_1_id`, `security_answer_1_hash`, `security_question_2_id`, `security_answer_2_hash`, `security_question_3_id`, `security_answer_3_hash`, `role`, `is_active`, `last_login`, `security_question_4_id`, `security_answer_4_hash`) VALUES
(7, 'Biplove Karki', 'biplovekarki56@gmail.com', '$2y$10$enieQr40FofHOMVRh06sUOFt45eZ6Yhy/xojYJYP9DXY985PJ.zla', '2025-11-18 13:51:33', 3, '$2y$10$uzWan33eDunF.VDm/oi2RuyBpK8BojyKR882stfrMVLBRHmif4YdC', 2, '$2y$10$iA.0RGmlQP1aoXBaaAZIsO/n7/NVNWJ6Snr2SAiYkrLp4qCkaf9.y', 4, '$2y$10$9pLYkxBbwbxLeogonJH.Ze3XQZdSzbFkWt4esGubxRLit38mMyeL2', 'user', 1, NULL, NULL, NULL),
(8, 'Tobishe Oyshe', 'oyshe123@gmail.com', '$2y$10$.oeMWSbPCSfrkc.I.tPZ6OLTskGeXY2Oxm8uQjHnFqkFFSjbEprcC', '2025-11-18 13:53:33', 1, '$2y$10$1giPKH3PmSqswszJAgW8eeVrPcVXX1Rsu49HWGIurnCTcrCFGA/cW', 4, '$2y$10$YZ5APy37povUV9l3yVn8Nu915rKtqbel0JlutqLEsyFC.CqmgnNOC', 3, '$2y$10$eJoYt/RqEMRJ.6SjErubRu4r.7e8QSZGtniz9zQPVUV8D1oIakBBe', 'user', 1, NULL, NULL, NULL),
(14, 'Puspa Bhujel', 'bhujelpuspa02@gmail.com', '$2y$10$0erM/v3SBaGiSCLJHcRwPOvhaZnoxblXq0CT8qvNC2ruUm7wOSTii', '2025-11-28 12:59:14', NULL, '$2y$10$E8vKR/HvLESMzQHb0XX8COvNstxdKvEN.caXPPNHu44yn4dGv622S', NULL, '$2y$10$qatVwncehj2Ga6pKYBo20e3pjmWAP1koO0W41nsDFSXKkKMbjmVKy', NULL, '$2y$10$whQcp2z45d.8G06SYtJUAeRjhk7/o0ZSzA3xVSVHq6JDxfYH4/2sG', 'user', 1, '2025-12-05 00:00:37', NULL, NULL),
(15, 'kalpana Bhujel', 'kalpu123@gmail.com', '$2y$10$QovlwjI8NItLdFSzZvY21OnogIyojQquU3lpRd1MrX9K8FXAxQds6', '2025-12-01 11:59:15', NULL, '$2y$10$6cevZziOTI9WccCcv9mmh.zdt2ZnCfy/Hx2BmbsNaUV.HF9wrry9m', NULL, '$2y$10$s1mW39/QTXruGA5eXLbOWujsv34pncMjh9c8xZUbRzpfChhOggyUq', NULL, '$2y$10$CDCQVJgMKL7GZRWd58QtQOzJ/nRyVsy8RgEF3FFweHHAh02c9oMea', 'user', 1, '2025-12-01 10:59:52', NULL, NULL),
(16, 'rosina tamang', 'tamang123@gmail.com', '$2y$10$UaVrkziTG73jhd7iLOfW6eVIMetZgHMYQh1/qFN6PGwRr8tIY.BKi', '2025-12-03 11:01:51', NULL, '$2y$10$cbtfLuu0W8.JuFLEo7CyrOcZXJhS/U/RzaXssEQ2wETAQrI0XmNay', NULL, '$2y$10$NIdqr8lQN/l2pO5q693g9OMyGAoRCX5WIoEXca.iVarmu0aWn2lCi', NULL, '$2y$10$hh0FRRn9qFGqrakryNvH/.6a5Cp.pysaVRwkhwrAlSVUuAYL44Qse', 'user', 1, NULL, NULL, NULL),
(17, 'asmita', 'asmita123@gmail.com', '$2y$10$ttzR9uVmp9kxIXnwTQYxwemRHQxM8M6XLMdsWDzPdnvU.Dk6r0md6', '2025-12-03 15:24:50', NULL, '$2y$10$hooODL42o.OMmiGt3F1T4O0.LF1MnTx0nN0Z9dUWHzH2XN02pK0Dm', NULL, '$2y$10$q4ptx7460yW/qJkVh46RzOdRjBeCZHSjrhsuhDZ7whqV3fb1XOSaO', NULL, '$2y$10$Eo6D2NkjBsOa6y50vwdvEuTLN/6ED6IL.VVbmZv5vBw4aCzLPf5YK', 'user', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `watchlists`
--

CREATE TABLE `watchlists` (
  `watchlist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `planned_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `watchlists`
--

INSERT INTO `watchlists` (`watchlist_id`, `user_id`, `name`, `planned_date`, `created_at`) VALUES
(6, 14, 'Fav', '2026-02-02', '2025-12-03 09:22:59'),
(7, 14, 'Best ever', '2025-12-06', '2025-12-03 11:05:45'),
(8, 14, 'Comedy', '2025-12-15', '2025-12-03 11:06:18'),
(9, 14, 'Family movies', '2025-12-22', '2025-12-03 11:06:42'),
(10, 14, 'Weekends fun', '2025-12-07', '2025-12-03 11:07:20');

-- --------------------------------------------------------

--
-- Table structure for table `watchlist_item`
--

CREATE TABLE `watchlist_item` (
  `id` int(11) NOT NULL,
  `watchlist_id` int(11) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `added_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`FolderID`);

--
-- Indexes for table `folder_movies`
--
ALTER TABLE `folder_movies`
  ADD PRIMARY KEY (`FolderID`,`movie_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `movie_category`
--
ALTER TABLE `movie_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_movie_cat` (`movie_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `movie_comments`
--
ALTER TABLE `movie_comments`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `security_questions`
--
ALTER TABLE `security_questions`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `security_question_4_id` (`security_question_4_id`);

--
-- Indexes for table `watchlists`
--
ALTER TABLE `watchlists`
  ADD PRIMARY KEY (`watchlist_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `watchlist_item`
--
ALTER TABLE `watchlist_item`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_wl_movie` (`watchlist_id`,`movie_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `FolderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `movie_category`
--
ALTER TABLE `movie_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `movie_comments`
--
ALTER TABLE `movie_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `security_questions`
--
ALTER TABLE `security_questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `watchlists`
--
ALTER TABLE `watchlists`
  MODIFY `watchlist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `watchlist_item`
--
ALTER TABLE `watchlist_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `folder_movies`
--
ALTER TABLE `folder_movies`
  ADD CONSTRAINT `folder_movies_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `folder_movies_ibfk_3` FOREIGN KEY (`FolderID`) REFERENCES `folders` (`FolderID`) ON DELETE CASCADE;

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_category`
--
ALTER TABLE `movie_category`
  ADD CONSTRAINT `movie_category_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_category_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE;

--
-- Constraints for table `movie_comments`
--
ALTER TABLE `movie_comments`
  ADD CONSTRAINT `movie_comments_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `movie_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`security_question_4_id`) REFERENCES `security_questions` (`question_id`);

--
-- Constraints for table `watchlists`
--
ALTER TABLE `watchlists`
  ADD CONSTRAINT `watchlists_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `watchlist_item`
--
ALTER TABLE `watchlist_item`
  ADD CONSTRAINT `watchlist_item_ibfk_1` FOREIGN KEY (`watchlist_id`) REFERENCES `watchlists` (`watchlist_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `watchlist_item_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
