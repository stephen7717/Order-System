-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 12:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(27, '2014_10_12_000000_create_users_table', 1),
(28, '2014_10_12_100000_create_password_resets_table', 1),
(29, '2019_08_19_000000_create_failed_jobs_table', 1),
(30, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(31, '2023_06_14_171548_orders_table', 1),
(32, '2023_06_14_172142_ordereditems_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 'Hildegard Torp', 'Pending', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(2, 'Leone Roob', 'Pending', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(3, 'Prof. Alden Shanahan DVM', 'Paid', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(4, 'Prof. Briana Davis', 'Delivered', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(5, 'Miss Vita Conn MD', 'Delivered', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(6, 'Stacey Hackett', 'Pending', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(7, 'Joanie Altenwerth', 'Pending', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(8, 'Mrs. Rhoda Boyer', 'Paid', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(9, 'Nikolas Gutmann', 'Delivered', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(10, 'Miss Selina VonRueden Sr.', 'Pending', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(11, 'Mr. Matt Leffler', 'Delivered', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(12, 'Prof. Elaina Durgan V', 'Pending', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(13, 'Cassie Brekke', 'Pending', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(14, 'Jamey Wehner', 'Pending', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(15, 'Kamille Larkin', 'Pending', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(16, 'Lindsey Von', 'Delivered', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(17, 'Mrs. Lois Ernser V', 'Pending', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(18, 'Prof. Wilhelmine Schneider', 'Paid', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(19, 'Miss Jennyfer Wehner II', 'Paid', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(20, 'Afton Pfannerstill', 'Delivered', '2023-06-14 09:41:36', '2023-06-14 09:41:36');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ismael Walter II', 'becker.monty@example.org', '2023-06-14 09:41:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zADVPI52zG', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(2, 'Mr. Gunnar Crist', 'carter.jamie@example.org', '2023-06-14 09:41:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'WTpazbJfHb', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(3, 'Prof. Fabian Gulgowski', 'rohan.marco@example.net', '2023-06-14 09:41:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4jmTMbjP3T', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(4, 'Braeden Glover', 'rwill@example.org', '2023-06-14 09:41:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'A9k6HjQlvi', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(5, 'Jaqueline Block PhD', 'ustrosin@example.net', '2023-06-14 09:41:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CO075nUQUE', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(6, 'Prof. Lisandro Douglas', 'hiram.koepp@example.org', '2023-06-14 09:41:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3qvWo4VMte', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(7, 'Ottis Wilkinson', 'ikrajcik@example.com', '2023-06-14 09:41:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KC9oQ8uY4s', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(8, 'Katelynn Kuphal', 'hartmann.nolan@example.org', '2023-06-14 09:41:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'd0VVQ0Bsv6', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(9, 'Marlin Kunde', 'von.timmothy@example.com', '2023-06-14 09:41:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mnm2ka1jhb', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(10, 'Hope Daugherty Sr.', 'alexandrine63@example.org', '2023-06-14 09:41:36', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cdIUCLEio3', '2023-06-14 09:41:36', '2023-06-14 09:41:36'),
(11, 'stephen', 'stephendelima1@gmail.com', NULL, '$2y$10$2h68Zyee7xdjJmusscdSWeXmUZ060lEtA8xOl2DdhfM1YhV7WN1XW', NULL, '2023-06-14 13:15:46', '2023-06-14 13:15:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
