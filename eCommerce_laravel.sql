-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2024 at 12:22 PM
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
-- Database: `ecco_lar`
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
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Electronics', NULL, NULL),
(2, 'Home Appliances', NULL, NULL),
(3, 'Books', NULL, NULL),
(4, 'Clothing', NULL, NULL),
(5, 'Toys', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `active_deactive` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `country_id`, `state_id`, `active_deactive`, `created_at`, `updated_at`) VALUES
(1, 'Ahmedabad', 1, 1, '1', '2024-10-18 06:09:07', '2024-10-24 07:40:21'),
(2, 'North Pole', 2, 2, '1', '2024-10-18 06:09:39', '2024-10-24 08:46:17'),
(3, 'patan', 1, 1, '1', '2024-10-18 08:47:32', '2024-10-24 08:46:05'),
(15, 'Ahmedabad', 1, 1, '1', '2024-10-24 07:39:58', '2024-10-24 07:39:58');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'sahiluser', 'hello', '2', '2024-10-18 09:08:44', '2024-10-18 09:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `subject` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `subject`, `created_at`, `updated_at`) VALUES
(1, 'sahil', 'sahiladmin@gmail.com', 'fdgdf', 'sdf', '2024-10-17 10:12:58', '2024-10-17 10:12:58'),
(2, 'sahil', 'sahiluser@gmail.com', 'asds', 'asd', '2024-10-18 09:08:34', '2024-10-18 09:08:34');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `country_code` varchar(255) DEFAULT NULL,
  `active_deactive` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country`, `country_code`, `active_deactive`, `created_at`, `updated_at`) VALUES
(1, 'india', '91', '1', '2024-10-18 06:05:22', '2024-10-24 07:28:28'),
(2, 'USA', '1', '1', '2024-10-18 06:06:41', '2024-10-21 08:58:23');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `discount` decimal(8,2) NOT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `usage_option` enum('once','repeating') NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `discount`, `valid_from`, `valid_to`, `usage_option`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'SAVE-LU70CGA', 100.00, '2024-10-18', '2024-10-30', 'once', 1, '2024-10-18 09:05:06', '2024-10-18 09:05:06'),
(2, 'SAVE-OOEIXM4', 1000.00, '2024-10-18', '2024-10-31', 'repeating', 1, '2024-10-18 09:05:18', '2024-10-18 09:05:18');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_user`
--

CREATE TABLE `coupon_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(19, '2014_10_12_000000_create_users_table', 1),
(20, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(21, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(24, '2024_09_13_043712_create_sessions_table', 1),
(25, '2024_09_16_045845_create_catagories_table', 1),
(26, '2024_09_16_070931_create_products_table', 1),
(27, '2024_09_17_122210_create_carts_table', 1),
(28, '2024_09_18_113527_create_orders_table', 1),
(29, '2024_09_24_124324_create_comments_table', 1),
(30, '2024_09_24_124433_create_replies_table', 1),
(31, '2024_10_07_102105_create_contact_table', 1),
(32, '2024_10_08_105607_create_coupons_table', 1),
(33, '2024_10_08_110037_create_coupon_user_table', 1),
(34, '2024_10_17_150339_create_countries_table', 1),
(35, '2024_10_17_150357_create_states_table', 1),
(36, '2024_10_17_150403_create_cities_table', 1),
(37, '2024_10_21_114650_create_new_webs_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `new_webs`
--

CREATE TABLE `new_webs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `country_id` varchar(255) DEFAULT NULL,
  `state_id` varchar(255) DEFAULT NULL,
  `city_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `new_webs`
--

INSERT INTO `new_webs` (`id`, `name`, `email`, `phonenumber`, `password`, `country_id`, `state_id`, `city_id`, `address`, `image`, `created_at`, `updated_at`) VALUES
(12, 'sahil', 'sahiladmin1@gmail.com', '11111111111111111', '$2y$12$SQXX/yy.J4ZaE18rQ/y3q.pvxxUd0Q6cOpNx3pGrlGCoULuv8bhoe', '1', '1', '3', 'asd', '1729759855.jpg', '2024-10-24 08:50:55', '2024-10-24 08:50:55');

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
  `dis_price` varchar(255) NOT NULL DEFAULT '0',
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

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `dis_price`, `image`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(1, 'sahiluser', 'sahiluser@gmail.com', '1231231233', 'asd', '2', 'Smartphone, Laptop', '2, 1', '3499.95', '0', 'image1.jpg, image2.jpg', '1, 2', 'cash on delivery', 'Delivered', '2024-10-18 09:06:19', '2024-10-18 09:07:44'),
(2, 'sahiluser', 'sahiluser@gmail.com', '1231231233', 'asd', '2', 'Laptop', '1', '1099.99', '0', 'image2.jpg', '2', 'cash on delivery', 'Processing', '2024-10-18 09:06:53', '2024-10-18 09:06:53'),
(3, 'sahiluser', 'sahiluser@gmail.com', '1231231233', 'asd', '2', 'Refrigerator, Laptop', '2, 2', '7399.92', '0', 'image3.jpg, image2.jpg', '3, 2', 'cash on delivery', 'Processing', '2024-10-18 09:07:11', '2024-10-18 09:07:11'),
(4, 'sahil', 'nikodo2249@jameagle.com', '1231231231', '123', '4', 'Smartphone', '2', '2399.96', '0', 'image1.jpg', '1', 'cash on delivery', 'Delivered', '2024-10-22 05:59:01', '2024-10-22 06:03:46'),
(5, 'sahil', 'nikodo2249@jameagle.com', '1231231231', '123', '4', 'Laptop', '1', '1099.99', '0', 'image2.jpg', '2', 'cash on delivery', 'Delivered', '2024-10-22 05:59:13', '2024-10-22 06:06:16'),
(6, 'sahil', 'nikodo2249@jameagle.com', '1231231231', '123', '4', 'Programming 101, Washing Machine', '1, 1', '419.98', '0', 'image5.jpg, image4.jpg', '5, 4', 'cash on delivery', 'Cancelled', '2024-10-22 05:59:30', '2024-10-22 06:08:02'),
(7, 'sahil', 'nikodo2249@jameagle.com', '1231231231', '123', '4', 'Refrigerator', '1', '749.99', '0', 'image3.jpg', '3', 'cash on delivery', 'Delivered', '2024-10-22 05:59:39', '2024-10-22 06:00:51'),
(8, 'sahil', 'nikodo2249@jameagle.com', '1231231231', '123', '4', 'Smartphone, Refrigerator', '1, 1', '1349.98', '0', 'image1.jpg, image3.jpg', '1, 3', 'cash on delivery', 'Delivered', '2024-10-22 06:08:53', '2024-10-22 06:11:30'),
(9, 'sahil', 'nikodo2249@jameagle.com', '1231231231', '123', '4', 'Laptop', '1', '1099.99', '0', 'image2.jpg', '2', 'cash on delivery', 'Delivered', '2024-10-22 06:09:04', '2024-10-22 06:17:01'),
(10, 'sahil', 'nikodo2249@jameagle.com', '1231231231', '123', '4', 'Washing Machine', '1', '399.99', '0', 'image4.jpg', '4', 'cash on delivery', 'Delivered', '2024-10-22 06:09:12', '2024-10-22 06:17:58'),
(11, 'sahil', 'nikodo2249@jameagle.com', '1231231231', '123', '4', 'Cooking for Beginners', '1', '14.99', '0', 'image6.jpg', '6', 'cash on delivery', 'Processing', '2024-10-22 06:09:32', '2024-10-22 06:09:32'),
(12, 'sahil', 'nikodo2249@jameagle.com', '1231231231', '123', '4', 'Women\'s Dress', '1', '49.99', '0', 'image8.jpg', '8', 'cash on delivery', 'Processing', '2024-10-22 06:09:47', '2024-10-22 06:09:47'),
(13, 'sahil', 'nikodo2249@jameagle.com', '1231231231', '123', '4', 'Action Figure', '1', '19.99', '0', 'image10.jpg', '10', 'cash on delivery', 'Processing', '2024-10-22 06:09:59', '2024-10-22 06:09:59'),
(14, 'sahil', 'nikodo2249@jameagle.com', '1231231231', '123', '4', 'Laptop', '1', '1099.99', '0', 'image2.jpg', '2', 'cash on delivery', 'Processing', '2024-10-23 04:40:41', '2024-10-23 04:40:41');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
(1, 'Smartphone', 'Latest model smartphone with great features', 'image1.jpg', 'Electronics', '-1', '699.99', '599.99', NULL, '2024-10-22 06:08:53'),
(2, 'Laptop', 'High-performance laptop for gaming and work', 'image2.jpg', 'Electronics', '16', '1299.99', '1099.99', NULL, '2024-10-23 04:40:41'),
(3, 'Refrigerator', 'Energy-efficient refrigerator with smart features', 'image3.jpg', 'Home Appliances', '12', '899.99', '749.99', NULL, '2024-10-22 06:08:53'),
(4, 'Washing Machine', 'Automatic washing machine with multiple settings', 'image4.jpg', 'Home Appliances', '11', '499.99', '399.99', NULL, '2024-10-22 06:09:12'),
(5, 'Programming 101', 'A beginner\'s guide to programming', 'image5.jpg', 'Books', '98', '29.99', '19.99', NULL, '2024-10-22 05:59:30'),
(6, 'Cooking for Beginners', 'Easy recipes for new cooks', 'image6.jpg', 'Books', '78', '19.99', '14.99', NULL, '2024-10-22 06:09:32'),
(7, 'Men\'s Jacket', 'Stylish jacket for all occasions', 'image7.jpg', 'Clothing', '40', '89.99', '69.99', NULL, NULL),
(8, 'Women\'s Dress', 'Elegant dress for special events', 'image8.jpg', 'Clothing', '23', '59.99', '49.99', NULL, '2024-10-22 06:09:47'),
(9, 'Building Blocks', 'Fun building blocks for creative play', 'image9.jpg', 'Toys', '60', '19.99', '14.99', NULL, NULL),
(10, 'Action Figure', 'Collectible action figure from popular series', 'image10.jpg', 'Toys', '33', '24.99', '19.99', NULL, '2024-10-22 06:09:59');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment_id` varchar(255) DEFAULT NULL,
  `reply` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('4R5JBCvWzLOSDI1ugmrkcAaOPFxRqOnsiuIsxE5B', 3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidExFS2RpaVVROEd6T0EyVGxKWDV6cmNKWDAxb3lrZ2tOdmhhMlpzdiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozNjoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2NyZWF0ZV9uZXdfd2ViIjt9fQ==', 1729773254),
('5Ij8VPbpeibMjLiMO2RhhG0Narbu8RqAxDM6VbbY', 3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidXVsb1I2QnlRSG9rbmk3RzB1U0xMN2dkOTdnWVI5VTNCZEdyMEZlbSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MztzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czoyMToiaHR0cDovLzEyNy4wLjAuMTo4MDAwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729831247),
('P3BvnfwhVWMWevD0VgPPGxZdArwVls1zYOyEA6V6', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnVQWkphT0tIY3lLMUxQV0gwOGtwOXYzR2hMM21jVkZGY2FjSUlkTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1730090940),
('yl19TxdJXWYci24mk1O0Kbk8FOF6HPs5drJoktYO', 3, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiaHVYYllrdG5JaXNaMVh0eHY2eVNac3FTYmtRRndPdWpJb3BOZ2YzUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jcmVhdGVfbmV3X3dlYiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1729762359);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` int(11) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `active_deactive` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `state`, `active_deactive`, `created_at`, `updated_at`) VALUES
(1, 1, 'Gujarat', '1', '2024-10-18 06:08:00', '2024-10-22 04:07:43'),
(2, 2, 'Alaska', '1', '2024-10-18 06:08:32', '2024-10-21 09:02:08'),
(3, 1, 'Rajkot', '1', '2024-10-23 06:14:06', '2024-10-23 06:14:06');

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
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 'sahil', 'sahiladmin@gmail.com', '1', '13213332132', 'dfhqw', NULL, '$2y$12$m/5n4qO4e5WqXO0uBWW.hODehqOp1fwXdT/K0QRN40h1BI.kx9T6O', NULL, NULL, NULL, 'xdodhCXWaCG5OfjFrsaEOXpbcScSEASFoDSnDifkHuApT7X10mgmASdco03l', NULL, NULL, '2024-10-17 10:08:06', '2024-10-24 06:48:05'),
(3, 'sahiladmin', 'sahilamasterdmin@gmail.com', '2', '1231231233', 'sfdd', NULL, '$2y$12$NqgNQPpnGVIVx9WFMmka2OMYwb84khLonmvsWpIKPqdIlBx0q/i6q', NULL, NULL, NULL, 'N7MApvBGRqgaALcAsLGoB0GcmTshLA6LZ7beJmSBwriAiorvbO0Zq983cw76', NULL, 'profile_images/35f339a9-2459-4079-909d-0d12f6d42e61.webp', '2024-10-17 10:13:48', '2024-10-17 10:13:48'),
(4, 'sahil', 'nikodo2249@jameagle.com', '0', '1231231231', '123', NULL, '$2y$12$Mva0Mf/SBAsc0fQLzEggw.UxOz0snprda8aVp/e2GQEJBtNbNWnyu', NULL, NULL, NULL, 'ocpH1EA7T9Nh9OzjqJZ3DJ4ZHuAKVOKKcTa6cWugfb0lZcXeEzs1PVsoEN8s', NULL, NULL, '2024-10-22 05:58:41', '2024-10-24 06:47:59'),
(5, 'sohel', 'soheluser@gmail.com', '0', '1231232311', 'abc', NULL, '$2y$12$6u6F7VuvxUt8ZWIlMM4DiOSZPlZIrR5OrdTC/ySmft11VvG9c1aAG', NULL, NULL, NULL, NULL, NULL, 'profile_images/2e7eabc3-235d-424f-8b5c-ef3b03a51319.jpg', '2024-10-23 12:53:07', '2024-10-23 12:53:07'),
(6, 'dimple', 'dimpleadmin@gmail.com', '1', '1231231231', 'asd', NULL, '$2y$12$W7/6X24KHUnX5rNo8lcblOgXNu6glmO6S4BYZ0Nom4DL.VPWHCaB2', NULL, NULL, NULL, NULL, NULL, NULL, '2024-10-23 12:54:03', '2024-10-23 12:55:57'),
(7, 'Viraj', 'virajamasterdmin@gmail.com', '2', '1231231231', 'asdf', NULL, '$2y$12$O47.I0xGXxskoALqLxcuQOaXNfl00cIdzNtSriHBD5gpuP2rYs6OG', NULL, NULL, NULL, 'mYtlUFe8zRDgdFiALF8NJp5XrAx7BKhTeZHikI3BwwNCti9cdRA6j46Pv9vN', NULL, NULL, '2024-10-23 12:55:23', '2024-10-23 12:55:48');

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
-- Indexes for table `cities`
--
ALTER TABLE `cities`
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
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `coupon_user`
--
ALTER TABLE `coupon_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `coupon_user_user_id_foreign` (`user_id`),
  ADD KEY `coupon_user_coupon_id_foreign` (`coupon_id`);

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
-- Indexes for table `new_webs`
--
ALTER TABLE `new_webs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `states`
--
ALTER TABLE `states`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupon_user`
--
ALTER TABLE `coupon_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `new_webs`
--
ALTER TABLE `new_webs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coupon_user`
--
ALTER TABLE `coupon_user`
  ADD CONSTRAINT `coupon_user_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `coupon_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
