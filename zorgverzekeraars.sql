-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2019 at 01:57 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zorg`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `insurers`
--

CREATE TABLE `insurers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `uzovi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurers`
--

INSERT INTO `insurers` (`id`, `name`, `website`, `logo`, `parent_id`, `description`, `uzovi`, `created_at`, `updated_at`) VALUES
(1, 'De Friesland Zorgverzekeraar', '', '', 1, '', 3358, '2019-11-19 12:46:41', '2019-11-19 12:46:41'),
(2, 'FBTO', '', '', 1, '', 3351, '2019-11-19 12:47:15', '2019-11-19 12:47:15'),
(3, 'One Underwriting', '', '', 1, '', 8971, '2019-11-19 12:47:25', '2019-11-19 12:47:25'),
(4, 'Interpolis', '', '', 1, '', 3313, '2019-11-19 12:47:38', '2019-11-19 12:47:38'),
(5, 'Pro Life', '', '', 1, '', 3311, '2019-11-19 12:47:51', '2019-11-19 12:47:51'),
(6, 'ZieZo', '', '', 1, '', 3311, '2019-11-19 12:47:59', '2019-11-19 12:47:59'),
(7, 'Zilveren Kruis', '', '', 1, '', 3311, '2019-11-19 12:48:07', '2019-11-19 12:48:07'),
(8, 'De Amersfoortse', '', '', 2, '', 9018, '2019-11-19 12:48:50', '2019-11-19 12:48:50'),
(9, 'Ditzo', '', '', 2, '', 3336, '2019-11-19 12:49:00', '2019-11-19 12:49:00'),
(10, 'CZ', '', '', 3, '', 9664, '2019-11-19 12:49:19', '2019-11-19 12:49:19'),
(11, 'CZdirect', '', '', 3, '', 9664, '2019-11-19 12:49:23', '2019-11-19 12:49:23'),
(12, 'Just', '', '', 3, '', 9664, '2019-11-19 12:49:28', '2019-11-19 12:49:28'),
(13, 'Nationale-Nederlanden', '', '', 3, '', 9664, '2019-11-19 12:49:36', '2019-11-19 12:49:36'),
(14, 'OHRA', '', '', 3, '', 9664, '2019-11-19 12:49:42', '2019-11-19 12:49:42'),
(15, 'DSW', '', '', 4, '', 7029, '2019-11-19 12:50:01', '2019-11-19 12:50:01'),
(16, 'inTwente', '', '', 4, '', 3344, '2019-11-19 12:50:11', '2019-11-19 12:50:11'),
(17, 'Stad Holland', '', '', 4, '', 7037, '2019-11-19 12:50:20', '2019-11-19 12:50:20'),
(18, 'Salland', '', '', 5, '', 7032, '2019-11-19 12:50:41', '2019-11-19 12:50:41'),
(19, 'Zorgdirect', '', '', 5, '', 7032, '2019-11-19 12:50:49', '2019-11-19 12:50:49'),
(20, 'Aevitae (Eucare)', '', '', 6, '', 3360, '2019-11-19 12:51:07', '2019-11-19 12:51:07'),
(21, 'Promovendum', '', '', 7, '', 3353, '2019-11-19 12:51:23', '2019-11-19 12:51:23'),
(22, 'National Academic', '', '', 7, '', 3353, '2019-11-19 12:51:28', '2019-11-19 12:51:28'),
(23, 'Besured', '', '', 7, '', 3353, '2019-11-19 12:51:34', '2019-11-19 12:51:34'),
(24, 'Anderzorg', '', '', 8, '', 3333, '2019-11-19 12:51:50', '2019-11-19 12:51:50'),
(25, 'Hema', '', '', 8, '', 3332, '2019-11-19 12:52:00', '2019-11-19 12:52:00'),
(26, 'Menzis', '', '', 8, '', 3332, '2019-11-19 12:52:05', '2019-11-19 12:52:05'),
(27, 'PMA', '', '', 8, '', 3332, '2019-11-19 12:52:09', '2019-11-19 12:52:09'),
(28, 'ONVZ', '', '', 9, '', 3343, '2019-11-19 12:52:33', '2019-11-19 12:52:33'),
(29, 'PNOzorg', '', '', 9, '', 3343, '2019-11-19 12:52:39', '2019-11-19 12:52:39'),
(30, 'VvAA', '', '', 9, '', 3343, '2019-11-19 12:52:43', '2019-11-19 12:52:43'),
(31, 'Bewuzt', '', '', 10, '', 7095, '2019-11-19 12:53:06', '2019-11-19 12:53:06'),
(32, 'IZA', '', '', 10, '', 3334, '2019-11-19 12:53:14', '2019-11-19 12:53:14'),
(33, 'IZZ Zorgverzekeraar', '', '', 10, '', 9015, '2019-11-19 12:53:23', '2019-11-19 12:53:23'),
(34, 'Univé', '', '', 10, '', 101, '2019-11-19 12:53:34', '2019-11-19 12:53:34'),
(35, 'ZEKUR', '', '', 10, '', 101, '2019-11-19 12:53:39', '2019-11-19 12:53:39'),
(36, 'VGZ', '', '', 10, '', 7095, '2019-11-19 12:53:46', '2019-11-19 12:53:46'),
(37, 'UMC', '', '', 10, '', 736, '2019-11-19 12:53:59', '2019-11-19 12:53:59'),
(38, 'United Consumers VGZ', '', '', 10, '', 7095, '2019-11-19 12:54:09', '2019-11-19 12:54:09'),
(39, 'AZVZ', '', '', 11, '', 7085, '2019-11-19 12:54:46', '2019-11-19 12:54:46'),
(40, 'Zorg en Zekerheid', '', '', 11, '', 7085, '2019-11-19 12:54:51', '2019-11-19 12:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `insurer_parents`
--

CREATE TABLE `insurer_parents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `insurer_parents`
--

INSERT INTO `insurer_parents` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Achmea', '2019-11-19 12:41:58', '2019-11-19 12:41:58'),
(2, 'ASR', '2019-11-19 12:42:13', '2019-11-19 12:42:13'),
(3, 'CZ', '2019-11-19 12:42:19', '2019-11-19 12:42:19'),
(4, 'DSW', '2019-11-19 12:42:25', '2019-11-19 12:42:25'),
(5, 'ENO', '2019-11-19 12:42:34', '2019-11-19 12:42:34'),
(6, 'EUCARE', '2019-11-19 12:42:39', '2019-11-19 12:42:39'),
(7, 'IptiQ', '2019-11-19 12:42:45', '2019-11-19 12:42:45'),
(8, 'Menzis', '2019-11-19 12:42:51', '2019-11-19 12:42:51'),
(9, 'ONVZ', '2019-11-19 12:42:56', '2019-11-19 12:42:56'),
(10, 'VGZ', '2019-11-19 12:43:01', '2019-11-19 12:43:01'),
(11, 'Zorg en Zekerheid', '2019-11-19 12:43:09', '2019-11-19 12:43:09');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(9, '2014_10_12_000000_create_users_table', 1),
(10, '2014_10_12_100000_create_password_resets_table', 1),
(11, '2019_08_19_000000_create_failed_jobs_table', 1),
(12, '2019_11_17_091650_create_insurer_parents_table', 1),
(13, '2019_11_17_091656_create_insurers_table', 1),
(14, '2019_11_17_093300_create_reviewers_table', 1),
(15, '2019_11_17_093338_create_review_items_table', 1),
(16, '2019_11_17_093346_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviewers`
--

CREATE TABLE `reviewers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `review_item_id` int(10) UNSIGNED NOT NULL,
  `reviewer_id` int(10) UNSIGNED NOT NULL,
  `insurer_id` int(10) UNSIGNED NOT NULL,
  `score` int(11) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `review_items`
--

CREATE TABLE `review_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurers`
--
ALTER TABLE `insurers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurer_parents`
--
ALTER TABLE `insurer_parents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `reviewers`
--
ALTER TABLE `reviewers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_items`
--
ALTER TABLE `review_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `insurers`
--
ALTER TABLE `insurers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `insurer_parents`
--
ALTER TABLE `insurer_parents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reviewers`
--
ALTER TABLE `reviewers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_items`
--
ALTER TABLE `review_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
