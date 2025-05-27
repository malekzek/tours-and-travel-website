-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2025 at 09:10 PM
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
-- Database: `wooxtravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(4) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `adminname`, `email`, `mypassword`, `created_at`) VALUES
(3, 'malekzek', 'malekzek4@gmail.com', '$2y$10$nfSHjVtRBIOduenQkPQ/ae4ifoGo2ZInTxFd31czbDOqTXXPp4722', '2025-05-19 22:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone_number` int(30) NOT NULL,
  `num_of_geusts` int(10) NOT NULL,
  `checkin_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `destination` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `city_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `payment` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `name`, `phone_number`, `num_of_geusts`, `checkin_date`, `destination`, `status`, `city_id`, `user_id`, `payment`, `created_at`) VALUES
(19, 'malek zaknoun', 71635527, 1, '2025-05-28 21:00:00.000000', 'sao paulo', 'Pending', 1, 3, '550', '2025-05-20 01:06:14'),
(20, 'malek', 71635527, 1, '2025-05-29 21:00:00.000000', 'cairo', 'Pending', 2, 3, '350', '2025-05-27 14:33:07');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `trip_days` int(4) NOT NULL,
  `price` varchar(4) NOT NULL,
  `country_id` int(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `image`, `trip_days`, `price`, `country_id`, `created_at`) VALUES
(1, 'sao paulo', 'cities-01.jpg', 6, '550', 1, '2025-05-20 00:41:47'),
(2, 'cairo', 'deals-03.jpg', 4, '350', 2, '2025-05-20 00:43:59'),
(3, 'rio de janeiro', 'about-content-bg.jpg', 7, '650', 1, '2025-05-20 00:47:35'),
(4, 'brasilia', 'best-02.jpg', 8, '500', 1, '2025-05-20 00:49:04'),
(5, 'alexandria', 'banner-04.jpg', 4, '400', 2, '2025-05-20 00:49:39'),
(6, 'athens', 'cities-01.jpg', 5, '750', 3, '2025-05-20 00:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(3) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `continent` varchar(200) NOT NULL,
  `population` varchar(30) NOT NULL,
  `territory` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `image`, `continent`, `population`, `territory`, `description`, `created_at`) VALUES
(1, 'brazil', 'country-03.jpg', 'south america', '211.1', '851000', 'Brazil is a diverse land of music, beaches, historic colonial architecture, ancient people, and natural resources', '2025-05-20 00:25:58'),
(2, 'egypt', 'offers-03.jpg', 'africa', '114.5', '10001', 'You might visit Egypt for the history, the adventure, the beaches or even just the pyramids - when it comes to things to do, you are spoiled for choice. From climbing the pyramids and stargazing in the desert to diving in the Red Sea, Egypt has travel experiences to spare.', '2025-05-20 00:28:49'),
(3, 'greece', 'best-04.jpg', 'europe', '10.4', '131', 'Greece is a beautiful country standing out for its mountainous landscapes, incredible weather, numerous beguiling islands, long sandy beaches, uncountable attractions of all kinds, and many more!', '2025-05-20 00:51:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `mypassword`, `created_at`) VALUES
(3, 'malekzek4@gmail.com', 'malekzek', '$2y$10$aggG5FHNDHmLQLiQT.l1G.R1iNxwNtbGk3/XMlaQjhTp/KES.7ISa', '2025-05-20 00:16:53'),
(4, 'malekzek4@gmail.com', 'malek', '$2y$10$8r0x1VJDxzyFimPnh7ZMMOLvjYAfUxrOs8.kaxCmOltyIlV3jwHsm', '2025-05-27 14:28:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
