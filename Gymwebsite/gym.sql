-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 09, 2025 at 09:34 AM
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
-- Database: `gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `cprofile_pic` varchar(255) DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `created_at`, `cprofile_pic`) VALUES
(1, 'admin', '$2y$10$Q1QsqgOGF9GbiP14lFmR0usTHHw3uovYRjc74b.QgGTfExo.lb/Oe', '2025-07-08 17:42:01', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'sddddf', 'user@gmail.com', 'mkmkm', 'mkmk', '2025-07-08 16:51:58'),
(2, 'Thenushi Thimanya ', 'anu@gmail.com', 'jj', 'cbgf', '2025-07-09 05:09:51'),
(3, 'dcdf', 'anu@gmail.com', 'ddeffdf', 'def', '2025-07-09 05:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `plan` varchar(10) DEFAULT NULL,
  `membership_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `email`, `phone`, `plan`, `membership_id`) VALUES
(1, 'sddddf', 'thimanya@gmail.com', '0717217446', '', '5769'),
(2, 'sddddf', 'user@gmail.com', '0717217446', '', '9113'),
(3, 'sddddf', 'user@gmail.com', '0717217446', '', '9725'),
(4, 'kmkm', 'user@gmail.com', '0717217446', '', '1180'),
(5, 'kmkm', 'user@gmail.com', '0717217446', '', '4192'),
(6, 'qqq', 'thimanya@gmail.com', '0717217446', 'BL', 'BL8927'),
(7, 'qqq', 'thimanya@gmail.com', '0717217446', 'SP', 'SP1608'),
(8, 'qqqmm', 'thimanya@gmail.com', '0717217446', 'BL', 'BL7178'),
(9, 'Thenushi ', 'anu@gmail.com', '0717217446', 'BL', 'BL6601'),
(10, 'Thimanya', 'thenushiwattegama79@gmail.com', '0717217446', 'PP', 'PP3373');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `profile_photo`) VALUES
(1, 'hh', 'user@gmail.com', '$2y$10$DlG47iGnXPnMxDzTfRxbD.qfIT7UKylBJwSTNovYsreldYojEeydq', NULL),
(2, 'hh', 'user@gmail.com', '$2y$10$uGj7UCcDfb4RW/iq0AbZ3OmbK84YRo2SB9hsRgCar6u8l0MPwnOga', NULL),
(3, 'hh', 'user@gmail.com', '$2y$10$VQyErrClpGOQYQoyIdrM3uej4KrDBws0V83kvZyTgNfy1wUW8s3X.', NULL),
(4, 'jj', 'user@gmail.com', '$2y$10$CmBfc7p5rTOkORnsCEBpr.VStUhqraYQuuuPa1Uyu1JEDFFly0hna', NULL),
(5, 'hhh', 'user@gmail.com', '$2y$10$Qou99mKkbhMICvtFC84Bz.hDorZ/mpNR2bnpK9nGq9MIstx1HD4ZW', NULL),
(6, 'the', 'thimanya@gmail.com', '$2y$10$Kb/EjIrFAyV9XxZ.IKgu0eT4k247bqr/Myc.H3hZ8RjQd8dYIaamq', NULL),
(7, 'hh', 'thimanyat@gmail.com', '$2y$10$hLEcsjlzaBy7K1Awl//VuecIO.qkBjQcWyfmJEbaJye1ymUXYnQEi', NULL),
(8, 'yy', 'thimanyat@gmail.com', '$2y$10$Hxesf62KNqWoKTwH/aAdquR08rKK.hker5Zn4LQpsS2Lw8wSTRTEu', NULL),
(9, 'qqq', 'user@gmail.com', '$2y$10$xLV3geBegu9t1NrRRCcUu.E8rOXJRPThqtE9VmEBzxNX1zCfb4eW.', NULL),
(10, 'hhh', 'user@gmail.com', '$2y$10$qsPRr/uMHYtD0ULhXsSduuw5QmaoacKtBRYMQv4iXgn4u4tKTCQfC', NULL),
(11, 'iii', 'iii@gmail.com', '$2y$10$F9NiaPNFXGL9M/fNmJUYsecdWzGS2droXb7/XTJrWXmStTJIg22uy', NULL),
(12, 'Thenushi', 'anu@gmail.com', '$2y$10$i371xci6Znu.4jAaB8RNv.MDYwlHFqiTque4z9WyHlGauYaphC12W', 'uploads/1752041615_WhatsApp Image 2025-06-05 at 11.14.00_af35b77f.jpg'),
(13, 'thima', 'thenushiwattegama79@gmail.com', '$2y$10$ZCmlHhN/QeRXvxi9D.HsDOpJnGVMuhgWkY/y4XXO42.tNRuK.IzCy', 'uploads/1752041847_img2 (2).jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `membership_id` (`membership_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
