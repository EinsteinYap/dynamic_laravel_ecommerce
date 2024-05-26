-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2024 at 05:58 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommercepro`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `Product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `price`, `quantity`, `image`, `Product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(90, 'customer', 'user@gmail.com', '14874512', 'kuala lumpur, Malaysia', 'Laptop', '199', '1', '1651256082.jpg', '6', '23', '2022-10-08 05:52:57', '2022-10-08 05:52:57'),
(91, 'customer', 'user@gmail.com', '14874512', 'kuala lumpur, Malaysia', 'toy', '200', '1', '1651256040.jpg', '5', '23', '2022-10-08 05:53:00', '2022-10-08 05:53:00'),
(93, 'user', 'user@gmail.com', '0101902', 'kuala lumpur, Malaysia', 'Leave', '200', '2', '1708526761.jpg', '8', '20', '2024-02-21 06:46:34', '2024-05-10 07:00:32');

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catagory_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `catagory_name`, `created_at`, `updated_at`) VALUES
(5, 'Women', '2022-04-29 12:08:47', '2022-04-29 12:08:47'),
(6, 'Men', '2022-04-29 12:08:54', '2022-04-29 12:08:54'),
(7, 'Mobile', '2022-04-29 12:09:04', '2022-04-29 12:09:04'),
(8, 'Toy', '2022-04-29 12:09:15', '2022-04-29 12:09:15'),
(9, 'Laptop', '2022-04-29 12:09:22', '2022-04-29 12:09:22'),
(10, 'electric', '2022-07-11 18:54:42', '2022-07-11 18:54:42'),
(12, 'Health', '2024-05-26 05:04:58', '2024-05-26 05:04:58');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'user', 'This website is really Awesome', '20', '2022-06-17 23:13:30', '2022-06-17 23:13:30'),
(2, 'user', 'Thanks for this amazing website', '20', '2022-06-17 23:13:49', '2022-06-17 23:13:49'),
(3, 'user', 'nice website', '20', '2024-02-14 19:33:20', '2024-02-14 19:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` longtext DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '\r\nCreate your account\r\nOr by using the registration form\r\n\r\nFirst name\r\nLast name\r\nUsername\r\nEmail\r\nPassword\r\nBy signing up to Codester you confirm that you agree with the member terms and conditions\r\n\r\nDo you already have an account?\r\nCreate your account\r\nOr by using the registration form\r\n\r\nFirst name\r\nLast name\r\nUsername\r\nEmail\r\nPassword\r\nBy signing up to Codester you confirm that you agree with the member terms and conditions\r\n\r\nDo you already have an account?', 'Message test', '2022-06-17 23:24:15', '2022-06-17 23:24:15'),
(2, 'user', 'user@gmail.com', 'This is a test', 'message test 2', '2022-06-17 23:24:50', '2022-06-17 23:24:50');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_03_08_102931_create_sessions_table', 1),
(7, '2022_03_19_154016_create_catagories_table', 1),
(8, '2022_03_31_033548_create_products_table', 1),
(9, '2022_04_30_093651_create_carts_table', 1),
(10, '2022_05_21_161747_create_orders_table', 1),
(11, '2022_06_04_162847_create_notifications_table', 1),
(12, '2022_06_17_050024_create_contacts_table', 1),
(13, '2022_06_18_051158_create_comments_table', 1),
(14, '2022_06_18_051209_create_replies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(51, 'user', 'user@gmail.com', '0101902', 'Kuala Lumpur, Malaysia', '20', 'toy', '4', '800', '1651256040.jpg', '5', 'cash on delivery', 'processing', '2022-07-03 05:58:17', '2022-07-03 05:58:17'),
(52, 'user', 'user@gmail.com', '111111111111', 'Kuala Lumpur, Malaysia', '30', 'toy', '1', '200', '1651256040.jpg', '5', 'Paid', 'delivered', '2022-07-11 13:44:06', '2022-07-11 14:16:52'),
(53, 'user', 'user@gmail.com', '20194885767', 'Kuala Lumpur, Malaysia', '31', 'Laptop', '1', '199', '1651256082.jpg', '6', 'cash on delivery', 'processing', '2022-07-11 18:52:30', '2022-07-11 18:52:30'),
(54, 'user', 'user@gmail.com', '0101902', 'Kuala Lumpur, Malaysia', '20', 'Samsung Mobile', '1', '380', '1651256206.jpg', '7', 'cash on delivery', 'You canceled the order', '2022-07-12 12:18:06', '2022-10-08 05:35:47'),
(55, 'user', 'user@gmail.com', '0101902', 'Kuala Lumpur, Malaysia', '20', 'Samsung Mobile', '1', '380', '1651256206.jpg', '7', 'Paid', 'You canceled the order', '2022-07-12 12:19:32', '2022-10-08 05:36:08'),
(56, 'user', 'user@gmail.com', '14874512', 'Kuala Lumpur, Malaysia', '23', 'Shirt', '1', '17', '1651255860.jpg', '2', 'cash on delivery', 'processing', '2022-10-08 05:36:52', '2022-10-08 05:36:52'),
(57, 'user', 'user@gmail.com', '14874512', 'Kuala Lumpur, Malaysia', '23', 'Laptop', '1', '199', '1651256082.jpg', '6', 'cash on delivery', 'processing', '2022-10-08 05:36:52', '2022-10-08 05:36:52'),
(58, 'user', 'user@gmail.com', '14874512', 'Kuala Lumpur, Malaysia', '23', 'Samsung Mobile', '1', '380', '1651256206.jpg', '7', 'cash on delivery', 'processing', '2022-10-08 05:41:16', '2022-10-08 05:41:16'),
(59, 'user', 'user@gmail.com', '0101902', 'Kuala Lumpur, Malaysia', '20', 'Botique For Women', '1', '122', '1651256020.png', '4', 'Paid', 'processing', '2024-02-13 00:20:57', '2024-02-13 00:20:57'),
(60, 'user', 'user@gmail.com', '0101902', 'Kuala Lumpur, Malaysia', '20', 'Laptop', '1', '199', '1651256082.jpg', '6', 'Paid', 'processing', '2024-02-13 00:20:57', '2024-02-13 00:20:57'),
(61, 'user', 'user@gmail.com', '0101902', 'Kuala Lumpur, Malaysia', '20', 'Laptop', '1', '199', '1651256082.jpg', '6', 'Paid', 'processing', '2024-02-16 06:44:11', '2024-02-16 06:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('yaminshakil10@gmail.com', '$2y$10$Xo2MKu1a7B311jQ3VFlm2O1KPDr/2tIEWnKXn30j2C79aao8twaGa', '2022-06-04 03:52:43'),
('yaminshakil7@gmail.com', '$2y$10$pBKiiOXmVAlLf9G0PWYNveKKRS5mhKwyn53QzL0cbxyZFNoInhZly', '2022-06-16 00:57:31');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `catagory` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `catagory`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(2, 'Shirt', 'This is a unique shirt', '1651255860.jpg', 'Men', '10', '20', '17', '2022-04-29 12:11:00', '2022-04-29 12:11:00'),
(3, 'Neclace', 'Dr\'s gift Uncharted 4 Nathan Drake Ring Necklace Engraved Pendant with Adjustable Leather Chain Handmade', '1651255961.jpg', 'Women', '12', '200', '166', '2022-04-29 12:12:41', '2022-04-29 12:12:41'),
(4, 'Botique For Women', 'boutique fashions, trendy clothing and fab looks that are fun and affordable. Enjoy free shipping on orders over $99', '1651256020.png', 'Women', '12', '200', '122', '2022-04-29 12:13:40', '2022-04-29 12:13:40'),
(5, 'toy', 'Best Toy ever', '1651256040.jpg', 'Toy', '16', '200', NULL, '2022-04-29 12:14:00', '2022-04-29 12:14:00'),
(6, 'Laptop', 'super laptop', '1651256082.jpg', 'Laptop', '13', '199', NULL, '2022-04-29 12:14:42', '2022-04-29 12:14:42'),
(7, 'Samsung Mobile', 'Latest mobile that you can buy online', '1651256206.jpg', 'Mobile', '10', '380', NULL, '2022-04-29 12:16:46', '2022-04-29 12:16:46'),
(8, 'Leave', 'Good for health', '1708526761.jpg', 'Health', '5', '100', NULL, '2024-02-21 06:46:01', '2024-05-26 05:05:09');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment_id` varchar(255) DEFAULT NULL,
  `reply` longtext DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `name`, `comment_id`, `reply`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'customer', '1', 'I agree with you', '23', '2022-06-17 23:14:30', '2022-06-17 23:14:30'),
(2, 'admin', '2', 'Thank you very much . we really appreciate it.', '21', '2022-06-18 00:36:47', '2022-06-18 00:36:47');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('3afUmtgy6ioiLKHiwrcFbAUz3hUfLJUzsw0ziHJ4', 20, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiOEVtaGdNdmJrQldzYjNBOFF6RGJJMmU4NVBQZnUyNVI0bmpTQ3FJbiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHA6Ly9sb2NhbGhvc3QvZHluYW1pY19sYXJhdmVsL3B1YmxpYyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjIwO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkeC5MdWc0Y3A3MFl5dkg4NGgvM3ZPT2psTDRIaDV0WFRKVnJReWIxT3FPbktFOTBNRE1Sd3kiO30=', 1716739056),
('wCGdzqzUEOprMWPVv9jjBTI45ndfBZksNDtu6TN1', 21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiYUJQZDU2UzZCNXBmeEpDM2FXelJadVh6MU04TTZDclZmMVpDWUs4VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jdXN0b21lciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjIxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkeC5MdWc0Y3A3MFl5dkg4NGgvM3ZPT2psTDRIaDV0WFRKVnJReWIxT3FPbktFOTBNRE1Sd3kiO30=', 1716736396);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(20, 'user', 'user@gmail.com', '0', '0172739455', 'Kuala Lumpur ,Malayisa', '2022-06-04 06:23:34', '$2y$10$x.Lug4cp70YyvH84h/3vOOjlL4Hh5tXTJVrQyb1OqOnKE90MDMRwy', NULL, NULL, NULL, NULL, NULL, '2022-04-29 12:06:59', '2022-06-16 23:15:28'),
(21, 'admin', 'admin@gmail.com', '1', '0172739455', 'Kuala Lumpur ,Malayisa', '2022-06-03 06:23:56', '$2y$10$x.Lug4cp70YyvH84h/3vOOjlL4Hh5tXTJVrQyb1OqOnKE90MDMRwy', NULL, NULL, 'Dvq6fGMjNW8xqAysf6OWzgmGwAa9LVxKNVD3XYaOvNRujYEe8PhySRoa6bhU', NULL, NULL, '2022-04-29 12:07:31', '2022-04-29 12:07:31'),
(23, 'customer', 'customer@gmail.com', '0', '0172739455', 'Kuala Lumpur ,Malayisa', '2022-06-15 18:00:02', '$2y$10$x.Lug4cp70YyvH84h/3vOOjlL4Hh5tXTJVrQyb1OqOnKE90MDMRwy', NULL, NULL, NULL, NULL, NULL, '2022-05-05 03:21:06', '2022-05-05 03:21:06'),
(32, 'ey', 'einsteinyap2014@gmail.com', '0', '0172739455', 'Kuala Lumpur ,Malayisa', NULL, '$2y$10$x.Lug4cp70YyvH84h/3vOOjlL4Hh5tXTJVrQyb1OqOnKE90MDMRwy', NULL, NULL, NULL, NULL, NULL, '2024-02-14 07:46:05', '2024-02-14 07:46:05'),
(33, 'ey', 'einsteinyap2013@gmail.com', '0', '0172739455', 'Kuala Lumpur ,Malayisa', NULL, '$2y$10$x.Lug4cp70YyvH84h/3vOOjlL4Hh5tXTJVrQyb1OqOnKE90MDMRwy', NULL, NULL, NULL, NULL, NULL, '2024-02-14 07:52:01', '2024-02-14 07:52:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
