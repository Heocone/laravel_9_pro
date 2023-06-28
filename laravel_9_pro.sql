-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 28, 2023 at 08:17 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_9_pro`
--

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint UNSIGNED NOT NULL,
  `product_attribute_id` bigint UNSIGNED DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `product_attribute_id`, `value`, `product_id`, `created_at`, `updated_at`, `quantity`) VALUES
(43, 2, 'green', 64, '2023-06-17 06:31:13', '2023-06-17 06:31:13', 10),
(44, 2, 'yellow', 64, '2023-06-17 06:31:13', '2023-06-17 06:31:13', 10),
(45, 2, 'white', 64, '2023-06-17 06:31:13', '2023-06-17 06:31:13', 10),
(46, 2, 'purple', 64, '2023-06-17 06:31:13', '2023-06-17 06:31:13', 10),
(47, 2, 'black', 64, '2023-06-17 06:31:13', '2023-06-17 06:31:13', 10),
(48, 2, 'organe', 64, '2023-06-17 06:31:13', '2023-06-17 06:31:13', 10),
(49, 3, 'S', 64, '2023-06-17 06:31:13', '2023-06-17 06:31:13', 10),
(50, 3, 'M', 64, '2023-06-17 06:31:13', '2023-06-17 06:31:13', 10),
(51, 3, 'L', 64, '2023-06-17 06:31:13', '2023-06-17 06:31:13', 10),
(52, 3, 'XL', 64, '2023-06-17 06:31:13', '2023-06-17 06:31:13', 10),
(53, 2, 'Pink', 59, '2023-06-19 10:34:06', '2023-06-19 10:34:06', 10),
(54, 2, 'White', 59, '2023-06-19 10:34:06', '2023-06-19 10:34:06', 10),
(55, 2, 'green', 59, '2023-06-19 10:34:06', '2023-06-19 10:34:06', 10),
(56, 3, 'S', 59, '2023-06-19 10:34:06', '2023-06-19 10:34:06', 10),
(57, 3, 'M', 59, '2023-06-19 10:34:06', '2023-06-19 10:34:06', 10),
(58, 3, 'L', 59, '2023-06-19 10:34:06', '2023-06-19 10:34:06', 10),
(59, 3, 'XL', 59, '2023-06-19 10:34:06', '2023-06-19 10:34:06', 10),
(60, 2, 'green', 58, '2023-06-19 10:34:24', '2023-06-19 10:34:24', 10);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_popular` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`, `image`, `is_popular`) VALUES
(1, 'Quần áo nam', 'quan-ao-nam', '2023-05-23 03:01:14', '2023-06-16 16:22:46', '1686297222.jpg', 1),
(2, 'Túi sách nữ', 'tui-sach-nu', '2023-05-23 03:01:14', '2023-06-09 08:04:17', 'category-thumb-2.jpg', 1),
(3, 'Dép nữ', 'dep-nu', '2023-05-23 03:01:14', '2023-06-09 08:04:26', 'category-thumb-3.jpg', 1),
(4, 'Mũ vải lanh', 'mu-vai-lanh', '2023-05-23 03:01:14', '2023-06-09 08:06:19', 'category-thumb-4.jpg', 1),
(5, 'Giầy nam', 'giay-nam', '2023-05-23 03:01:14', '2023-06-09 08:06:27', 'category-thumb-5.jpg', 1),
(6, 'Gối ngủ', 'goi-ngu', '2023-05-23 03:01:14', '2023-06-09 08:06:35', 'category-thumb-6.jpg', 1),
(9, 'Quần nữ', 'quan-nu', '2023-06-08 15:40:26', '2023-06-09 08:06:48', 'category-thumb-7.jpg', 1),
(10, 'Mũ vải nữ', 'mu-vai-nu', '2023-06-09 07:50:10', '2023-06-09 08:07:06', '1686297010.jpg', 1),
(11, 'Quần áo nữ', 'quan-ao-nu', '2023-06-16 10:42:14', '2023-06-16 16:24:40', '1686932680.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'HEO CON', 'kienhoang50099@gmail.com', '0362204640', 'Mong muon hop tac', 'Lew lew', '2023-06-15 18:02:02', '2023-06-15 18:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expiry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `cart_value`, `created_at`, `updated_at`, `expiry_date`) VALUES
(3, 'sale200', 'fixed', '200.00', '0.00', '2023-06-12 13:25:01', '2023-06-12 13:25:01', '2023-06-13 03:49:39'),
(4, 'sale10', 'percent', '10.00', '500.00', '2023-06-12 13:59:37', '2023-06-12 13:59:37', '2023-06-15 03:49:39'),
(5, 'salenew1', 'fixed', '200.00', '1000.00', '2023-06-12 14:16:45', '2023-06-13 04:02:12', '2023-06-12 04:02:00'),
(6, 'sale2023', 'percent', '10.00', '5050.00', '2023-06-13 03:50:54', '2023-06-13 03:55:30', '2023-06-15 03:50:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `top_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `offer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_sliders`
--

INSERT INTO `home_sliders` (`id`, `top_title`, `title`, `sub_title`, `offer`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mùa Hè', 'Nóng Bức', 'Sao lại phải nóng', 'Mua ngay các sản phẩm với giá siêu mát.', 'http://laravel_9_pro.test/shop', '1686213873.png', 1, '2023-06-08 08:44:33', '2023-06-08 15:10:46'),
(3, 'Ưu đãi tốt nhất.', 'Ưu đãi siêu giá trị', 'Trên tất cả các sản phẩm', 'Tiết kiệm nhiều hơn với phiếu giảm giá & giảm giá tới 70%', 'http://laravel_9_pro.test/admin/shop', '1686236620.png', 1, '2023-06-08 15:03:40', '2023-06-08 15:03:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_23_085130_create_categories_table', 2),
(6, '2023_05_23_085147_create_products_table', 3),
(7, '2023_06_05_150803_create_update_product_table', 4),
(8, '2023_06_05_163904_create_update_product1_table', 5),
(9, '2023_06_07_181227_create_home_sliders_table', 6),
(10, '2023_06_08_223301_update_table_categories', 7),
(11, '2023_06_09_142424_update_table_categories2', 8),
(12, '2023_06_10_100545_create_coupons_table', 9),
(13, '2023_06_10_114146_create_product_attributes_table', 10),
(14, '2023_06_13_104003_add_expiry_date_to_coupons_table', 11),
(15, '2023_06_13_154929_create_orders_table', 12),
(16, '2023_06_13_154937_create_order_items_table', 12),
(17, '2023_06_13_154945_create_shippings_table', 12),
(18, '2023_06_13_154955_create_transactions_table', 12),
(19, '2023_06_14_005955_add_information_table', 13),
(20, '2023_06_15_161912_table_update_orders_1', 14),
(21, '2023_06_16_003510_create_contacts_table', 15),
(22, '2023_06_16_155609_create_shoppingcart_table', 16),
(23, '2023_06_16_170003_create_subcategories_table', 17),
(24, '2023_06_16_173115_update_subcategories_table', 18),
(25, '2023_06_16_235632_add_subcategory_id_to_products_table', 19),
(26, '2023_06_17_000442_add_subcategory_id_to_products_table2', 20),
(27, '2023_06_17_023351_update_users_table', 21),
(28, '2023_06_17_091344_create_profiles_table', 22),
(29, '2023_06_17_105721_create_attribute_values_table', 23),
(30, '2023_06_17_110834_update_attribute_table', 24),
(31, '2023_06_17_152536_add_options_items_table', 25);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firtsname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','delivered','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firtsname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `status`, `is_shipping_different`, `created_at`, `updated_at`, `information`, `delivered_date`, `canceled_date`) VALUES
(18, 1, '50.00', '0.00', '2.50', '52.50', 'HEO', 'CON', '123456789', 'user@gmail.com', 'Ha Noi', 'Ha Noi', 'HA Noi', 'Ha Noi', 'VN', '001122', 'ordered', 0, '2023-06-15 02:37:53', '2023-06-15 02:37:53', NULL, NULL, NULL),
(19, 1, '50.00', '0.00', '2.50', '52.50', 'HEO', 'CON', '123456789', 'User@gmail.com', 'Ha Noi', 'Ha Noi', '123', '123', 'VN', '123', 'delivered', 0, '2023-06-15 02:39:23', '2023-06-15 10:04:33', NULL, '2023-06-15', NULL),
(20, 2, '455.00', '0.00', '22.75', '477.75', 'NGUYEN', 'VAN A', '123456789', 'admin@localhost.com', 'Ha Noi', 'Ha Noi', 'Ha Noi', 'Ha Noi', 'VN', '123321', 'canceled', 0, '2023-06-15 09:17:17', '2023-06-15 17:10:49', NULL, NULL, '2023-06-16'),
(21, 2, '265.00', '0.00', '13.25', '278.25', 'HEO', 'CON be', '123456789', 'admin@localhost.com', 'Ha Noi', 'Ha Noi', 'asd', 'asd', 'VN', '123', 'delivered', 0, '2023-06-15 09:22:15', '2023-06-15 09:56:02', 'hahaha', '2023-06-15', NULL),
(22, 2, '755.00', '0.00', '37.75', '792.75', 'What your', 'Name', '0123456789', 'user@localhost.com', 'Ha Noi', 'haha', 'haah', 'Không biết', 'VN', 'ahah', 'ordered', 0, '2023-06-15 17:10:30', '2023-06-15 17:10:30', 'lewlew', NULL, NULL),
(23, 2, '265.00', '0.00', '13.25', '278.25', 'NGUYEN', 'VAN A', '123456789', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', 'asdf', 'asd', 'VN', '123', 'ordered', 0, '2023-06-16 08:21:17', '2023-06-16 08:21:17', 'hehe', NULL, NULL),
(130, 3, '515.00', '0.00', '25.75', '540.75', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', 'assa', 'asvgasg', 'VN', '123', 'ordered', 0, '2023-06-17 11:56:25', '2023-06-17 11:56:25', 'asgasgasg', NULL, NULL),
(131, 3, '515.00', '0.00', '25.75', '540.75', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', 'assa', 'asvgasg', 'VN', '123', 'ordered', 0, '2023-06-17 11:56:40', '2023-06-17 11:56:40', 'asgasgasg', NULL, NULL),
(132, 3, '515.00', '0.00', '25.75', '540.75', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', 'assa', 'asvgasg', 'VN', '123', 'ordered', 0, '2023-06-17 11:56:46', '2023-06-17 11:56:46', 'asgasgasg', NULL, NULL),
(133, 3, '515.00', '0.00', '25.75', '540.75', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', 'assa', 'asvgasg', 'VN', '123', 'ordered', 0, '2023-06-17 11:57:18', '2023-06-17 11:57:18', 'asgasgasg', NULL, NULL),
(134, 3, '515.00', '0.00', '25.75', '540.75', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', '77', '88', '99', '11', 'VN', '11', 'ordered', 0, '2023-06-17 12:15:57', '2023-06-17 12:15:57', '22', NULL, NULL),
(135, 3, '515.00', '0.00', '25.75', '540.75', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', '123', '123', 'VN', '123', 'ordered', 0, '2023-06-17 12:20:58', '2023-06-17 12:20:58', '123', NULL, NULL),
(136, 4, '713.00', '0.00', '35.65', '748.65', 'What your', 'Con ', '19001508', 'kienhoang50099@gmail.com', 'asd', 'asd', 'asd', 'asd', 'VN', '123', 'ordered', 0, '2023-06-17 12:30:42', '2023-06-17 12:30:42', 'asdsadasd', NULL, NULL),
(137, 3, '515.00', '0.00', '25.75', '540.75', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', 'sad', 'sad', 'VN', '12321', 'ordered', 0, '2023-06-17 12:30:49', '2023-06-17 12:30:49', 'asfasf', NULL, NULL),
(138, 3, '795.00', '0.00', '39.75', '834.75', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', '123', '123', 'VN', '123', 'ordered', 0, '2023-06-21 08:16:34', '2023-06-21 08:16:34', '123', NULL, NULL),
(139, 3, '1030.00', '0.00', '51.50', '1081.50', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', '123', '123', 'VN', '123', 'ordered', 0, '2023-06-21 08:17:54', '2023-06-21 08:17:54', '123', NULL, NULL),
(140, 5, '900000.00', '0.00', '45000.00', '945000.00', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', '123', '123', 'VN', '123', 'ordered', 0, '2023-06-23 09:08:00', '2023-06-23 09:08:00', '123', NULL, NULL),
(141, 5, '900000.00', '0.00', '45000.00', '945000.00', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', '123', '123', 'VN', '123', 'ordered', 0, '2023-06-23 09:15:29', '2023-06-23 09:15:29', '123', NULL, NULL),
(142, 5, '900000.00', '0.00', '45000.00', '945000.00', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', '123', '123', 'VN', '123', 'ordered', 0, '2023-06-23 09:16:09', '2023-06-23 09:16:09', '123', NULL, NULL),
(143, 5, '900000.00', '0.00', '45000.00', '945000.00', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', '23223', '23123', 'VN', '232323', 'ordered', 0, '2023-06-23 09:18:25', '2023-06-23 09:18:25', '12312', NULL, NULL),
(144, 5, '900000.00', '0.00', '45000.00', '945000.00', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', '123', '123', 'VN', '123', 'ordered', 0, '2023-06-23 09:19:43', '2023-06-23 09:19:43', '123', NULL, NULL),
(145, 5, '900000.00', '0.00', '45000.00', '945000.00', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', '123', '123', 'VN', '123', 'ordered', 0, '2023-06-23 09:20:20', '2023-06-23 09:20:20', '123', NULL, NULL),
(146, 5, '900000.00', '0.00', '45000.00', '945000.00', 'HEO', 'CON', '0362204640', 'kienhoang50099@gmail.com', 'Ha Noi', 'Ha Noi', '123', '123', 'VN', '123', 'ordered', 0, '2023-06-23 09:21:35', '2023-06-23 09:21:35', '123', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint UNSIGNED NOT NULL,
  `product_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`, `options`) VALUES
(21, 3, 21, '265.00', 1, '2023-06-15 09:22:15', '2023-06-15 09:22:15', NULL),
(23, 4, 22, '250.00', 1, '2023-06-15 17:10:30', '2023-06-15 17:10:30', NULL),
(25, 3, 23, '265.00', 1, '2023-06-16 08:21:17', '2023-06-16 08:21:17', NULL),
(202, 3, 130, '265.00', 1, '2023-06-17 11:56:25', '2023-06-17 11:56:25', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(203, 4, 130, '250.00', 1, '2023-06-17 11:56:25', '2023-06-17 11:56:25', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(204, 3, 131, '265.00', 1, '2023-06-17 11:56:41', '2023-06-17 11:56:41', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(205, 4, 131, '250.00', 1, '2023-06-17 11:56:41', '2023-06-17 11:56:41', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(206, 3, 132, '265.00', 1, '2023-06-17 11:56:46', '2023-06-17 11:56:46', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(207, 4, 132, '250.00', 1, '2023-06-17 11:56:46', '2023-06-17 11:56:46', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(208, 3, 133, '265.00', 1, '2023-06-17 11:57:18', '2023-06-17 11:57:18', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(209, 4, 133, '250.00', 1, '2023-06-17 11:57:18', '2023-06-17 11:57:18', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(210, 3, 134, '265.00', 1, '2023-06-17 12:15:57', '2023-06-17 12:15:57', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(211, 4, 134, '250.00', 1, '2023-06-17 12:15:57', '2023-06-17 12:15:57', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(212, 4, 135, '250.00', 1, '2023-06-17 12:20:58', '2023-06-17 12:20:58', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(213, 3, 135, '265.00', 1, '2023-06-17 12:20:58', '2023-06-17 12:20:58', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(214, 4, 136, '250.00', 1, '2023-06-17 12:30:42', '2023-06-17 12:30:42', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(215, 8, 136, '463.00', 1, '2023-06-17 12:30:42', '2023-06-17 12:30:42', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(216, 4, 137, '250.00', 1, '2023-06-17 12:30:49', '2023-06-17 12:30:49', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(217, 3, 137, '265.00', 1, '2023-06-17 12:30:49', '2023-06-17 12:30:49', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(218, 3, 138, '265.00', 3, '2023-06-21 08:16:34', '2023-06-21 08:16:34', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(219, 4, 139, '250.00', 2, '2023-06-21 08:17:54', '2023-06-21 08:17:54', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(220, 3, 139, '265.00', 2, '2023-06-21 08:17:54', '2023-06-21 08:17:54', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(221, 53, 140, '900000.00', 1, '2023-06-23 09:08:00', '2023-06-23 09:08:00', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(222, 53, 141, '900000.00', 1, '2023-06-23 09:15:29', '2023-06-23 09:15:29', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(223, 53, 142, '900000.00', 1, '2023-06-23 09:16:09', '2023-06-23 09:16:09', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(224, 53, 143, '900000.00', 1, '2023-06-23 09:18:25', '2023-06-23 09:18:25', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(225, 53, 144, '900000.00', 1, '2023-06-23 09:19:43', '2023-06-23 09:19:43', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(226, 53, 145, '900000.00', 1, '2023-06-23 09:20:20', '2023-06-23 09:20:20', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}'),
(227, 53, 146, '900000.00', 1, '2023-06-23 09:21:35', '2023-06-23 09:21:35', 'O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('heocon12300b@gmail.com', '$2y$10$o4EIUtKWMecZsfNF5FIbweDtRse3aAz63gWaDwnL.PDyNdP8BZlp.', '2023-06-23 08:12:06');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `regular_price` int NOT NULL,
  `sale_price` int DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` bigint UNSIGNED NOT NULL DEFAULT '20',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `active` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `countsale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subcategory_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`, `active`, `countsale`, `image2`, `subcategory_id`) VALUES
(3, 'eaque deleniti ut accusamus fugit suscipit', 'eaque-deleniti-ut-accusamus-fugit-suscipit', 'Atque ut cupiditate voluptates eligendi. Corrupti officiis ullam est doloremque ea quia.', 'Est ut illum vitae repudiandae nostrum maxime sed ut. Quae voluptatem quae veniam consectetur. Voluptatibus unde facere ad laborum consequatur. Ut voluptas aut et odio in exercitationem. Quia sit ut nesciunt et error nihil eos ut. Consequatur ratione odit consequatur praesentium atque. Voluptatum unde neque blanditiis est voluptates. Adipisci quasi repellat enim vel cumque aliquid eaque quos.', 265, NULL, 'PRD182', 'instock', 0, 27, 'product-3-1.jpg', NULL, 4, '2023-05-23 03:04:18', '2023-06-21 08:17:54', '1', '155', 'product-3-2.jpg', NULL),
(4, 'ratione officiis beatae deserunt qui nihil', 'ratione-officiis-beatae-deserunt-qui-nihil', 'Nihil vel itaque placeat a illum aut. Ipsam perferendis qui ullam cupiditate qui fugiat. Et veniam aperiam voluptas vero eligendi quia distinctio. Eius quibusdam modi eos.', 'Ipsam quis nihil labore dignissimos impedit. Consequuntur nobis ut possimus dolore odio velit at. Fugiat quisquam id est soluta sit et in. Ea fugit a adipisci vero cupiditate enim ut. Alias voluptas repudiandae tempore tempora ut. Veritatis blanditiis a sequi vero magni praesentium nisi. Suscipit mollitia eum ut quia. Impedit earum et repudiandae quod. Aut repudiandae et dolor. Repellat expedita ab consequatur veniam ut. Porro praesentium impedit aut error facere sint sunt.', 250, NULL, 'PRD191', 'instock', 0, 33, 'product-4-1.jpg', NULL, 2, '2023-05-23 03:04:18', '2023-06-21 08:17:54', '1', '2', 'product-4-2.jpg', NULL),
(6, 'totam rerum temporibus blanditiis animi omnis', 'totam-rerum-temporibus-blanditiis-animi-omnis', 'Debitis voluptatem ipsa mollitia enim eos qui. Nostrum dicta dolor amet sunt. Cumque deleniti sapiente dicta est eius alias.', 'Sit rem dicta eaque et sint. Repudiandae libero reiciendis sequi dolore alias libero. Saepe voluptatem eaque voluptatem facilis dolores est. Repellendus accusamus magnam magni optio omnis quo et. Repellendus aliquid natus sit perspiciatis voluptate placeat minus illum. Omnis rerum quia id sed. Aliquam quae blanditiis autem quae debitis ut. Praesentium eaque quidem voluptatibus ea asperiores. Ipsam nam quo aut nemo quisquam. Rem aperiam placeat debitis et.', 75, NULL, 'PRD100', 'instock', 0, 0, 'product-6-1.jpg', NULL, 4, '2023-05-23 03:04:18', '2023-05-23 03:04:18', '1', NULL, 'product-6-2.jpg', NULL),
(7, 'odio neque voluptas et molestiae magnam', 'odio-neque-voluptas-et-molestiae-magnam', 'Vel ut est qui magni tempore. Quis voluptatem voluptate enim totam dolores quibusdam labore. Est quam ut sint voluptate sint ut.', 'Dolore dolor nobis tenetur fugit labore. Atque ad velit est quia consectetur. Iusto est voluptate aliquid laudantium quam omnis. Nisi praesentium assumenda perspiciatis. Sint numquam dolore harum voluptatem. Reiciendis ut provident itaque culpa. Ab nulla atque veniam non. Est repudiandae quia qui tenetur ipsam modi nemo. Explicabo earum quis ea temporibus. Error quidem suscipit recusandae et praesentium excepturi perspiciatis. Ducimus corrupti et reprehenderit.', 431, NULL, 'PRD405', 'instock', 0, 15, 'product-7-1.jpg', NULL, 1, '2023-05-23 03:04:56', '2023-05-23 03:04:56', '1', NULL, 'product-7-2.jpg', NULL),
(8, 'quam a magni eligendi et hic', 'quam-a-magni-eligendi-et-hic', 'Sequi nemo sit et. Aut est nostrum distinctio ea eos. Expedita impedit deleniti perferendis omnis quasi officiis animi. Ratione voluptatum rem consequatur velit. Quis molestias amet quo quia.', 'In vero quae est aliquam quod aut. Aut id sint dolores aut est est non. Minima et voluptatem repellat rerum sed cum. At fuga distinctio voluptas dolorem qui ea. Ea laborum recusandae rerum ad. Accusantium dolores consequatur aut voluptatem optio. Sint porro omnis animi rem. Velit qui quia sed minima. Fuga sed consequatur et expedita in nostrum. Et ut aut ad suscipit aut occaecati.', 463, NULL, 'PRD477', 'instock', 0, 42, 'product-8-1.jpg', NULL, 2, '2023-05-23 03:04:56', '2023-05-23 03:04:56', '1', '200', 'product-8-2.jpg', NULL),
(9, 'incidunt voluptatem dolores accusamus iste eum', 'incidunt-voluptatem-dolores-accusamus-iste-eum', 'Adipisci id excepturi repellat labore est optio ea. Enim error et excepturi aut reiciendis vel ab aut.', 'Consequatur et repudiandae ipsam ut. Aut sint facilis ullam. Dignissimos expedita sunt omnis excepturi eum. Mollitia deserunt velit alias temporibus. Voluptate est saepe temporibus. Occaecati illo facilis animi. Eos dolorem et minus illum quia. Aut suscipit sint neque dolore pariatur est est. Quia hic ipsa velit eaque consequatur ipsam. Blanditiis enim excepturi blanditiis consequatur quas at eius. Sed eligendi possimus ea voluptas quo. Nulla rerum vero natus quis architecto dolorem.', 449, NULL, 'PRD442', 'instock', 0, 42, 'product-9-1.jpg', NULL, 3, '2023-05-23 03:04:56', '2023-05-23 03:04:56', '1', NULL, 'product-9-2.jpg', NULL),
(10, 'ut itaque ea quaerat est rerum', 'ut-itaque-ea-quaerat-est-rerum', 'Velit magnam quas sunt nisi sint quaerat. Quidem unde aliquam rerum animi rerum. Vel molestiae fuga doloribus est. Magni autem dicta quo est culpa veniam.', 'Et qui in iste ipsam qui. Magnam nobis magni necessitatibus quisquam qui explicabo. Voluptatem aspernatur qui et id ducimus explicabo. Aut reprehenderit eum aliquam nisi expedita. Sed qui excepturi nulla cumque accusamus praesentium minima. Enim sit molestias in molestiae libero aut inventore. Unde nisi aut qui iusto et inventore ipsam.', 142, NULL, 'PRD242', 'instock', 0, 41, 'product-10-1.jpg', NULL, 3, '2023-05-23 03:04:56', '2023-05-23 03:04:56', '1', NULL, 'product-10-2.jpg', NULL),
(11, 'delectus autem occaecati sed amet temporibus', 'delectus-autem-occaecati-sed-amet-temporibus', 'Voluptatem tempora beatae qui deleniti consequatur. Aut occaecati quis et quis ea. Animi impedit quis voluptas aspernatur itaque.', 'Ea explicabo pariatur necessitatibus. Rem porro earum dolorem provident iste sed. Aut vel ut eos enim eveniet qui omnis. Adipisci est consequatur dolorum quia eos ad. Quam assumenda non temporibus maxime omnis consequatur consequatur. Eum illo nulla molestias magni. Rerum sunt quos minima quidem. Illum temporibus molestiae eius architecto quas sed nulla.', 325, NULL, 'PRD460', 'instock', 0, 14, 'product-11-1.jpg', NULL, 2, '2023-05-23 03:04:56', '2023-05-23 03:04:56', '1', '500', 'product-11-2.jpg', NULL),
(12, 'est cum perferendis consequuntur accusamus vel', 'est-cum-perferendis-consequuntur-accusamus-vel', 'Vel facere maxime adipisci provident eaque non. Distinctio dolor iure vero officiis a qui laborum dolores. Sit beatae veniam corporis sit facere explicabo magnam velit. Sint qui aut eligendi.', 'Est quam quis et debitis velit. Ut et voluptas dicta in saepe ut sed. Sint fugiat nihil voluptas temporibus quis perferendis. Tenetur est mollitia amet eius cum asperiores. Perferendis eum harum et quibusdam. Soluta id illum atque. Tempora est eum et quod. Consequatur voluptas aliquam mollitia voluptatem soluta veniam. Cum veniam aut in. Rerum voluptatem harum sint harum necessitatibus dolores. Molestias sit fugiat ratione possimus architecto.', 295, NULL, 'PRD182', 'instock', 0, 33, 'product-12-1.jpg', NULL, 4, '2023-05-23 03:04:56', '2023-05-23 03:04:56', '1', NULL, 'product-12-2.jpg', NULL),
(13, 'cupiditate et omnis consequatur corporis dolor', 'cupiditate-et-omnis-consequatur-corporis-dolor', 'Ut est molestias voluptatem quasi aspernatur. Error quisquam saepe omnis debitis nihil. Esse molestiae pariatur molestiae sint aspernatur.', 'Expedita dolor facere ut odio assumenda vel excepturi. Ad maiores excepturi maiores excepturi. Ea explicabo corrupti corporis et. Rerum laboriosam minima velit numquam dolore corrupti. Est qui molestiae vitae ducimus. Deleniti dolores vitae unde officia tempore id repellendus minus.', 243, NULL, 'PRD111', 'instock', 0, 26, 'product-13-1.jpg', NULL, 3, '2023-05-23 03:04:56', '2023-05-23 03:04:56', '1', NULL, 'product-13-2.jpg', NULL),
(14, 'consequuntur dolore et soluta officiis facilis', 'consequuntur-dolore-et-soluta-officiis-facilis', 'Quidem voluptas nihil repellat iste. Alias aut dolorem sit autem praesentium natus error vero. Perferendis repellendus dolorum sed et nulla in ut. Aut nihil et totam vero quos.', 'Consequatur enim provident et aspernatur. Itaque possimus totam totam vel ut sunt. Iure natus sunt expedita sunt qui debitis corrupti. Et quidem dolor exercitationem qui rem ea. Voluptas delectus consequatur ratione reiciendis voluptas voluptas quasi libero. Eaque corrupti asperiores nihil sequi. Occaecati maiores neque possimus sint incidunt est. Cum placeat eos omnis ut. Iure suscipit maiores laborum accusamus dignissimos sed.', 357, NULL, 'PRD487', 'instock', 0, 50, 'product-14-1.jpg', NULL, 4, '2023-05-23 03:04:56', '2023-05-23 03:04:56', '1', '200', 'product-14-2.jpg', NULL),
(15, 'et aut odit reprehenderit vero voluptatum', 'et-aut-odit-reprehenderit-vero-voluptatum', 'Est sit debitis non dolore quibusdam eveniet nihil. Rerum corporis deserunt quaerat id autem perspiciatis ex.', 'Consequuntur sed a non perferendis consectetur. Et eius facilis accusantium nam. Et laboriosam porro est dignissimos optio perspiciatis similique. Nihil impedit eius et placeat eaque. Nostrum numquam deserunt ut nostrum et tempore ipsa. Non quod sed occaecati sequi. Aut praesentium voluptatem quis qui. Dolorum fugit numquam esse esse quibusdam consequatur. Tenetur velit sed esse aut quibusdam sint.', 299, NULL, 'PRD300', 'instock', 0, 26, 'product-15-1.jpg', NULL, 1, '2023-05-23 03:04:56', '2023-05-23 03:04:56', '1', NULL, 'product-15-2.jpg', NULL),
(16, 'cupiditate dicta adipisci vitae delectus dolorem', 'cupiditate-dicta-adipisci-vitae-delectus-dolorem', 'Dolor sit et quis facere amet omnis incidunt. Sint maxime rerum debitis libero. Molestiae animi reiciendis voluptas eveniet quo laborum. Repellendus expedita delectus ea et animi non unde.', 'Odit et qui ut quaerat. Explicabo possimus quia placeat qui numquam. Exercitationem vel cupiditate minus harum eos non est nihil. Qui commodi eum voluptatem sint id fuga. Distinctio et accusamus laboriosam ad. Quis non molestias et quia rerum. Iusto rerum ut voluptatem illum in ut id. Voluptas voluptatem assumenda qui voluptates placeat. Soluta nemo porro laudantium sapiente.', 214, NULL, 'PRD114', 'instock', 0, 14, 'product-16-1.jpg', NULL, 4, '2023-05-23 03:04:56', '2023-05-23 03:04:56', '1', NULL, 'product-16-2.jpg', NULL),
(17, 'necessitatibus molestias earum velit aut temporibus', 'necessitatibus-molestias-earum-velit-aut-temporibus', 'Dolores culpa fugiat recusandae minima veniam eligendi. Enim vel dolorem nisi. Explicabo omnis quos iure quidem asperiores.', 'Ut consequuntur nihil incidunt in aperiam. Facilis aut repudiandae ad voluptatem eveniet dignissimos modi. Ad illum non fuga dolorem itaque. Nulla esse sequi non. Eos tempore corrupti ipsa ut earum reprehenderit laborum. Voluptatum pariatur ex aliquam iure consequatur enim culpa. Ea repudiandae dolor qui officiis rem magnam. Sint rerum expedita architecto. Fugiat assumenda recusandae nisi sint illum nulla. Exercitationem dolorum quis autem saepe.', 253, NULL, 'PRD382', 'instock', 0, 45, 'product-1-1.jpg', NULL, 2, '2023-05-30 14:41:08', '2023-05-30 14:41:08', '1', '150', 'product-1-2.jpg', NULL),
(18, 'rerum qui beatae dolores deleniti velit', 'rerum-qui-beatae-dolores-deleniti-velit', 'Aspernatur adipisci vel tempora illum. Adipisci quia laborum veniam aliquam recusandae illo non. Neque officiis veritatis in error. A esse neque consequatur quisquam ut rerum quibusdam.', 'Ab enim mollitia ipsa nesciunt earum in. Distinctio voluptas in molestias iste voluptatum natus. Incidunt et dolorem aut aut voluptatem. Alias quia quia modi aut aspernatur quis. Sit ab veritatis numquam. Non perspiciatis accusamus repellat animi sit eos. Eos quas provident voluptatibus ipsam. Fugiat ea et aliquid iusto itaque enim provident et. Ea ullam non velit ipsum.', 410, NULL, 'PRD106', 'instock', 0, 37, 'product-2-1.jpg', NULL, 2, '2023-05-30 14:41:08', '2023-05-30 14:41:08', '1', NULL, 'product-2-2.jpg', NULL),
(19, 'ratione voluptatem quos reprehenderit reprehenderit ipsa', 'ratione-voluptatem-quos-reprehenderit-reprehenderit-ipsa', 'Mollitia veniam tempore ea voluptas cupiditate aut harum veniam. Omnis reprehenderit sed in ut rerum impedit. Est ut architecto et incidunt eius possimus. Fuga deleniti dicta nam quam.', 'Eos earum sit culpa et vitae voluptas aut. Occaecati voluptas accusamus nostrum aut. Error voluptas numquam est amet vel et et. Dicta dolorum sunt qui aspernatur quos. Veniam est doloribus ab neque saepe necessitatibus omnis. Ipsam consequatur et sit quia. Tempore qui et culpa eaque sequi hic. Qui sed numquam officiis similique maxime consequatur atque. Exercitationem incidunt debitis suscipit ut. Aut sed deleniti veritatis aut et hic corporis et. Labore aliquam et quasi tempore aliquid.', 187, NULL, 'PRD217', 'instock', 0, 38, 'product-3-1.jpg', NULL, 4, '2023-05-30 14:41:08', '2023-05-30 14:41:08', '1', NULL, 'product-3-2.jpg', NULL),
(20, 'beatae sed at est eum unde', 'beatae-sed-at-est-eum-unde', 'Neque optio dolorem sapiente et sequi. Nemo debitis est nesciunt in eveniet. Dolor ut repellat quae officiis sit. Aperiam id vel molestiae ut deserunt eos.', 'Voluptatem vitae est eligendi odit. Est cum sed et praesentium qui ex ratione. Aut aut aut perspiciatis veritatis et ex. Rerum eaque perferendis exercitationem omnis ut labore. Aut sit odit asperiores deleniti. Sint architecto est aut ad deleniti id. Minus nihil voluptatem nulla magni dolore. Illum minima aliquid esse quo a veniam voluptatem. Laboriosam autem at nisi tempore. Labore facere consequatur dolor est recusandae molestiae consequuntur.', 115, NULL, 'PRD232', 'instock', 0, 48, 'product-4-1.jpg', NULL, 4, '2023-05-30 14:41:08', '2023-05-30 14:41:08', '1', NULL, 'product-4-2.jpg', NULL),
(21, 'quis et nesciunt sint autem ipsum', 'quis-et-nesciunt-sint-autem-ipsum', 'Voluptas dolor officiis sed accusamus autem rem. Iusto quibusdam reiciendis aliquid atque. Qui doloremque ratione blanditiis.', 'Nemo nobis voluptatum dolorem nam. Id est eos sunt quod. Nulla voluptas laudantium minus. Consequatur amet sit quasi. Veniam sit occaecati fugiat voluptatem. Architecto nisi eveniet iure voluptatem optio accusantium. Ut exercitationem autem sit officia consequuntur. Eos asperiores corporis harum et.', 326, 0, 'PRD231', 'instock', 1, 21, 'product-5-1.jpg', NULL, 3, '2023-05-30 14:41:08', '2023-06-08 17:36:34', '1', NULL, 'product-5-2.jpg', NULL),
(22, 'ipsum molestiae aut et unde ut', 'ipsum-molestiae-aut-et-unde-ut', 'Accusantium quos ipsum rerum sint. Facere velit sit qui nisi aut autem. Quia qui quisquam dolore quasi sit fugiat quibusdam.', 'Eum consectetur ad consequuntur nostrum. Occaecati occaecati saepe asperiores itaque rerum. Magnam reprehenderit natus veniam minima tenetur. Praesentium et et consequatur enim maxime aperiam. Iste laborum aut reiciendis maxime. Et magni iusto ab sed. Est non tempora quas est.', 213, 0, 'PRD363', 'instock', 1, 32, 'product-6-1.jpg', NULL, 3, '2023-05-30 14:41:08', '2023-06-08 17:36:49', '1', NULL, 'product-6-2.jpg', NULL),
(23, 'blanditiis beatae provident sequi quibusdam ex', 'blanditiis-beatae-provident-sequi-quibusdam-ex', 'Unde quia nihil culpa ut. Necessitatibus omnis cum maiores natus delectus sunt et. Et odio est et.', 'Et necessitatibus dolor eveniet. Velit rerum quaerat suscipit quo aut molestiae nemo velit. Eveniet quas quod itaque. Pariatur odio et quasi ipsa et minus. Minus rerum sapiente nulla saepe quia. Aut voluptate eos non consequuntur esse minima autem. Veniam voluptatibus ratione ut aut culpa amet aut. Cumque totam aspernatur quam in dolor consequuntur ad quo.', 318, NULL, 'PRD100', 'instock', 0, 25, 'product-7-1.jpg', NULL, 3, '2023-05-30 14:41:08', '2023-05-30 14:41:08', '1', NULL, 'product-7-2.jpg', NULL),
(24, 'sunt explicabo qui dolores maiores incidunt', 'sunt-explicabo-qui-dolores-maiores-incidunt', 'Minima id et fugiat vel. Quasi eius voluptatum aliquid. Non laudantium vel veniam dignissimos voluptatem quia quo. Blanditiis eum optio quis incidunt deleniti ipsum.', 'Voluptates voluptate in neque eligendi iure qui et. Dolore et nulla recusandae repellendus earum saepe voluptatem. Eaque totam ut velit quia doloribus. Voluptatem velit quasi qui. Quod molestiae et animi et occaecati. Hic aut pariatur exercitationem qui dignissimos magni. Sit perferendis consectetur et culpa debitis. Temporibus ut aspernatur deleniti nulla vel. Quo est voluptate est non debitis. Consequuntur et sunt dolorem tempora.', 1000000, NULL, 'PRD139', 'instock', 0, 48, 'product-8-1.jpg', NULL, 4, '2023-05-30 14:41:08', '2023-05-30 14:41:08', '1', NULL, 'product-8-2.jpg', NULL),
(25, 'eaque ullam corrupti voluptatum aut sit', 'eaque-ullam-corrupti-voluptatum-aut-sit', 'Optio at adipisci qui. Laborum magni modi aut laudantium est exercitationem. Repellendus aperiam odit sit dolore. Nobis facere sint voluptates voluptatem tempora dolorum.', 'Officiis officiis iusto quo voluptatem earum sunt. Odio qui quidem sed veniam possimus eum et. Dolores ipsam omnis iste qui voluptas. Laudantium rerum minima eos ut facere incidunt. Sint sint autem molestiae adipisci dolore tempore. Id quisquam aliquid eius sunt velit. Officia id commodi sequi vel. Necessitatibus molestiae nam magni eius voluptates et. Alias quia eum ipsa ducimus porro et omnis. Et qui et minus quisquam suscipit. Consequatur reiciendis nam et quis quas enim.', 327, NULL, 'PRD132', 'instock', 0, 18, 'product-9-1.jpg', NULL, 2, '2023-05-30 14:41:08', '2023-05-30 14:41:08', '1', NULL, 'product-9-2.jpg', NULL),
(26, 'reiciendis consectetur et non ipsa exercitationem', 'reiciendis-consectetur-et-non-ipsa-exercitationem', 'Libero iusto velit qui dolorem. Tempora deleniti ullam ut ullam omnis. Odit neque est quo quaerat assumenda hic. Quo praesentium autem cupiditate eligendi maiores qui.', 'Temporibus repudiandae quam adipisci vel dicta veritatis rerum. Aliquam et quibusdam eos aspernatur officia consequuntur cum architecto. Cumque blanditiis et eveniet saepe dolorem. Dolor enim vero ducimus omnis. Ratione ut facilis omnis fugiat id dicta. Voluptatem voluptatum minus molestias esse culpa omnis. Magnam praesentium veniam et earum. Sit ut nihil cum qui rerum quas autem. Ducimus nulla molestias nulla illum tempore sit. Placeat nam molestiae in a.', 298, NULL, 'PRD447', 'instock', 0, 49, 'product-10-1.jpg', NULL, 2, '2023-05-30 14:41:08', '2023-05-30 14:41:08', '1', NULL, 'product-10-2.jpg', NULL),
(27, 'eius sit et optio labore id', 'eius-sit-et-optio-labore-id', 'Soluta voluptas at repudiandae aliquam quis doloremque aut. Totam dolorum molestiae aliquid. In et repellendus at quia sit. Ipsa quisquam aut beatae amet deleniti aut ea.', 'Aspernatur quisquam sit suscipit quasi beatae voluptatem reprehenderit. Et velit inventore dolorem enim atque maiores. Eum esse et ad nemo. Quibusdam sint dicta adipisci itaque voluptatibus velit accusantium. Quae tenetur non veritatis ut. Illo est et dignissimos voluptatem. Beatae totam et dignissimos tenetur odio placeat et. Magnam excepturi et mollitia at repellendus neque. Explicabo eos consequatur nihil et. Enim optio blanditiis eos adipisci commodi non.', 363, NULL, 'PRD483', 'instock', 0, 11, 'product-11-1.jpg', NULL, 5, '2023-05-30 14:41:08', '2023-05-30 14:41:08', '1', NULL, 'product-11-2.jpg', NULL),
(28, 'autem perspiciatis repellendus sit animi similique', 'autem-perspiciatis-repellendus-sit-animi-similique', 'Provident aliquam debitis distinctio a facilis. Et accusamus voluptatem eum. Vel eos maiores sit sed ipsam quia temporibus.', 'Aut voluptas exercitationem dolores in voluptatem. Aperiam omnis nemo eum doloremque maiores accusantium quo id. Perspiciatis molestias ea reprehenderit. Porro qui voluptas sunt eius numquam dolorem. Dolorem aut perferendis autem sapiente adipisci sed. Voluptate vel totam cum explicabo quasi harum. Debitis adipisci distinctio eos perspiciatis eius et. Et voluptatem recusandae sed fugit omnis. Et quia asperiores eos est officiis.', 494, NULL, 'PRD228', 'instock', 0, 39, 'product-12-1.jpg', NULL, 4, '2023-05-30 14:41:08', '2023-05-30 14:41:08', '1', NULL, 'product-12-2.jpg', NULL),
(29, 'non veniam ut quia quo dolores', 'non-veniam-ut-quia-quo-dolores', 'Similique vero eveniet quis iure eius quis ad aut. Quibusdam aspernatur alias dignissimos et praesentium et. Et recusandae culpa corrupti cupiditate et earum.', 'Magnam velit veritatis laudantium voluptatem. Voluptates blanditiis assumenda blanditiis et soluta sed fugiat. Quis eos exercitationem ullam qui consectetur sed veniam provident. Non molestiae excepturi dolorem est ipsam. Perferendis qui quae nesciunt minima. Aspernatur suscipit quod voluptate voluptatem et non non. Reprehenderit est dolor consequuntur est aut distinctio consequatur. Est nemo vel assumenda aliquid. Eos distinctio quisquam nihil et quo aut est quo.', 375, NULL, 'PRD286', 'instock', 0, 21, 'product-13-1.jpg', NULL, 5, '2023-05-30 14:41:08', '2023-05-30 14:41:08', '1', NULL, 'product-13-2.jpg', NULL),
(30, 'et deleniti quo tenetur ullam vitae', 'et-deleniti-quo-tenetur-ullam-vitae', 'Illo est ut modi similique. Tenetur at dicta voluptas dolore. Vitae error consequatur dolores veniam. Reprehenderit laborum quasi quo consequatur sunt a eos.', 'Nemo et quia fuga vel minus. Animi voluptates hic hic est amet nam. Itaque in hic enim aut mollitia. Praesentium aut a adipisci similique. Ut nam porro et eos pariatur odit consequatur. Nihil est ut qui nihil. Beatae perferendis quia deserunt enim dignissimos qui ut. Quia quia pariatur repellendus beatae.', 211, NULL, 'PRD170', 'instock', 0, 21, 'product-14-1.jpg', NULL, 5, '2023-05-30 14:41:08', '2023-05-30 14:41:08', '1', '110', 'product-14-2.jpg', NULL),
(31, 'mollitia iusto perspiciatis officiis quis accusantium', 'mollitia-iusto-perspiciatis-officiis-quis-accusantium', 'Eaque in velit error aut voluptates distinctio accusantium. Eius aut eum odit aspernatur. Debitis est sunt natus fuga.', 'Placeat voluptate id maiores magnam aut eum saepe qui. Quisquam nihil et eos veritatis sint. Ut tenetur voluptatibus aliquam provident ipsam ipsa ratione. Consectetur autem enim cumque architecto assumenda vel dolor et. Repellendus nihil dolore voluptates enim itaque. Optio voluptatum at rem. Quod eos quam hic omnis blanditiis id et ea. Consequatur incidunt labore dolore earum. Quos aliquid ea eum et earum mollitia. Consequatur temporibus quaerat temporibus necessitatibus dolore qui laborum.', 431, NULL, 'PRD368', 'instock', 1, 48, 'product-15-1.jpg', NULL, 2, '2023-05-30 14:41:08', '2023-05-30 14:41:08', '1', NULL, 'product-15-2.jpg', NULL),
(32, 'vel dicta aut dolore facere beatae', 'vel-dicta-aut-dolore-facere-beatae', 'Natus aut quibusdam rerum repellat quis tempora ut aut. Architecto nihil sapiente qui ut rem. Eos laboriosam in quia enim ad.', 'Magni voluptatem saepe inventore eius eos quia quaerat. Deserunt necessitatibus in qui cum culpa. Culpa dolorem voluptatem molestiae sint eos molestiae. Et consectetur deserunt illo maiores inventore ut. Doloremque iusto fuga qui occaecati dolorum. Aut modi tempora totam tempora est necessitatibus dignissimos. Magnam deleniti aut non dolorem sit nulla. Accusantium id sed nobis et. Aut dolor cum dolores enim nam et. Ipsum dolorum consequatur dolorem ratione.', 177, NULL, 'PRD240', 'instock', 1, 41, 'product-16-1.jpg', NULL, 4, '2023-05-30 14:41:08', '2023-05-30 14:41:08', '1', '100', 'product-16-2.jpg', NULL),
(33, 'corporis sint error voluptatibus tenetur accusamus', 'corporis-sint-error-voluptatibus-tenetur-accusamus', 'Iusto et ea temporibus tempora architecto. Quasi ea qui quam sit necessitatibus fugit aut ratione. Quia ut ut voluptatem.', 'Reprehenderit reprehenderit dolor maiores molestiae quae ut alias. Sit est consequatur deleniti. Iste in tempore ea placeat modi. Corrupti repudiandae sed ad quia quia corrupti. Nulla facere perspiciatis soluta sed sit rerum. Aut cum consequuntur aut explicabo assumenda animi. Omnis sunt eius aspernatur nesciunt sequi illo harum. Rerum quisquam et nemo qui maiores.', 343, NULL, 'PRD143', 'instock', 1, 21, 'product-16-3.jpg', NULL, 4, '2023-05-30 14:41:20', '2023-05-30 14:41:20', '1', NULL, 'product-16-4.jpg', NULL),
(34, 'minima qui est minus nobis repudiandae', 'minima-qui-est-minus-nobis-repudiandae', 'Esse animi et sunt recusandae blanditiis. In cumque voluptates tempore sit ut. Dolor adipisci enim voluptatum animi vel voluptate quis. Ea non necessitatibus quis officiis fuga molestiae perferendis.', 'In ea accusantium sint facere nostrum et. Quis sit et minima explicabo. Voluptatem rerum est ipsum voluptas sed veniam eum. Doloremque aliquam ipsam dolores harum sint. Dolores quis harum dolore iste. Qui dolor quisquam sit fugit occaecati. Deserunt et ullam rerum earum doloribus accusantium. Laudantium nihil corporis et. Quae aut omnis ipsam mollitia vel. Nemo commodi dolor natus pariatur. Sed unde quaerat ad natus.', 478, NULL, 'PRD120', 'instock', 1, 36, 'product-16-5.jpg', NULL, 2, '2023-05-30 14:41:20', '2023-05-30 14:41:20', '1', '200', 'product-16-6.jpg', NULL),
(35, 'eius sapiente rerum quia ratione aut', 'eius-sapiente-rerum-quia-ratione-aut', 'Ut ipsam odit possimus distinctio perferendis officiis aut. Sed aliquam voluptatem error repellendus distinctio velit.', 'Nesciunt non quia eius repellat ratione minima. Sit voluptas tenetur officia et dicta nulla. Consequuntur iusto est praesentium non aut praesentium quia. Unde fuga placeat voluptatum earum. Voluptas accusamus unde a. Aut perferendis voluptate facilis voluptatibus. Consequuntur saepe laudantium ipsam dicta enim velit quaerat. Officia fugit omnis vero quos perferendis qui.', 299, 200, 'PRD313', 'instock', 1, 47, 'product-16-1.jpg', NULL, 4, '2023-05-30 14:41:20', '2023-05-30 14:41:20', '1', NULL, 'product-16-7.jpg', NULL),
(36, 'nulla temporibus sed adipisci pariatur amet', 'nulla-temporibus-sed-adipisci-pariatur-amet', '<p><strong>Inventore est sit autem est. </strong></p>\n<p><span style=\"color: rgb(255, 5, 230);\">Aut sequi et dolorem et sint. </span></p>\n<p><span style=\"color: rgb(241, 196, 15);\">Maxime incidunt deserunt quos. </span></p>\n<p><span style=\"color: rgb(53, 152, 219);\">Id dolorum iusto delectus sequi cum fugit ex.</span></p>', '<p>Blanditiis molestiae rerum et nisi saepe quia aliquam. Accusantium dolorum hic dolor eius non consectetur.</p>\n<p>Eligendi officia suscipit qui placeat eaque tempore.</p>\n<p>&nbsp;Sint veritatis quae autem fugiat saepe est est voluptate.</p>\n<p>Provident consectetur veniam quia quis.</p>\n<p>Fugit doloremque et inventore quisquam ea.</p>\n<p>Sapiente ea sunt rerum odio quia earum.</p>\n<p>&nbsp;Quisquam aut officia quod velit.</p>\n<p>Sint ut quia esse. Vel quam labore eos dolorem.</p>\n<p>Pariatur optio quia voluptatem rerum ut sit.</p>', 218, 0, 'PRD470', 'instock', 1, 11, 'product-9-1.jpg', NULL, 1, '2023-05-30 14:41:20', '2023-06-09 10:43:32', '1', '400', 'product-9-2.jpg', NULL),
(53, 'ao nam moi', 'ao-nam-moi', '<p>mieu ta ngan</p>', '<p>mieu ta ngan</p>', 1000000, 900000, 'SKU11', 'instock', 0, 20, '1686581140.jpg', ',16868998400_jpg,16868998401_jpg,16868998402_jpg,16868998403_jpg', 1, '2023-06-12 14:45:40', '2023-06-16 07:17:20', '1', NULL, '1686581140.jpg', NULL),
(58, 'Ao nu dep', 'ao-nu-dep', '<p>abc</p>', '<p>xyz</p>', 100000, 0, '1122', 'instock', 0, 30, '1686942479.jpg', NULL, 11, '2023-06-16 19:07:59', '2023-06-16 19:16:50', '1', NULL, '1686942479.jpg', 4),
(59, 'Quần dài nữ siêu vip', 'quan-dai-nu-sieu-vip', '<p>hehe</p>', '<p>haha</p>', 100000, 0, '1122', 'instock', 0, 30, '1686943223.jpg', NULL, 11, '2023-06-16 19:20:23', '2023-06-16 19:20:23', '1', NULL, '1686943223.jpg', 5),
(64, 'Bánh Bao Kim Sa', 'banh-bao-kim-sa', '<p>123</p>', '<p>123</p>', 123, 0, '123', 'instock', 0, 123, '1686977585.jpg', NULL, 1, '2023-06-17 04:53:05', '2023-06-17 04:53:05', '1', NULL, '1686977585.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Color', '2023-06-13 07:29:17', '2023-06-13 07:34:39'),
(3, 'Size', '2023-06-13 07:31:13', '2023-06-13 07:31:13');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `image`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, '19001002', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-17 02:44:30', '2023-06-17 03:31:54'),
(2, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-22 15:37:17', '2023-06-22 15:37:17'),
(3, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-23 09:06:31', '2023-06-23 09:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `firtsname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoppingcart`
--

CREATE TABLE `shoppingcart` (
  `identifier` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shoppingcart`
--

INSERT INTO `shoppingcart` (`identifier`, `instance`, `content`, `created_at`, `updated_at`) VALUES
('admin@localhost.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:1:{s:32:\"a775bac9cff7dec2b984e023b95206aa\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"a775bac9cff7dec2b984e023b95206aa\";s:2:\"id\";i:3;s:3:\"qty\";i:1;s:4:\"name\";s:42:\"eaque deleniti ut accusamus fugit suscipit\";s:5:\"price\";d:265;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-06-19 10:40:29', NULL),
('admin@localhost.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-06-19 10:40:27', NULL),
('heocon12300b@gmail.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-06-23 09:21:46', NULL),
('heocon12300b@gmail.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-06-23 09:21:46', NULL),
('user@localhost.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:4:{s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"027c91341fd5cf4d2579b49c4b6a90da\";s:2:\"id\";i:1;s:3:\"qty\";i:1;s:4:\"name\";s:37:\"Áo sơ mi hoa văn đầy màu sắc\";s:5:\"price\";d:50;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"370d08585360f5c568b18d1f2e4ca1df\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"370d08585360f5c568b18d1f2e4ca1df\";s:2:\"id\";i:2;s:3:\"qty\";i:1;s:4:\"name\";s:32:\"quia error nihil maiores et sunt\";s:5:\"price\";d:455;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"468399581342505c47f4615b81bedaa9\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"468399581342505c47f4615b81bedaa9\";s:2:\"id\";i:5;s:3:\"qty\";i:1;s:4:\"name\";s:37:\"natus veniam vitae magni possimus eum\";s:5:\"price\";d:293;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"8a48aa7c8e5202841ddaf767bb4d10da\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"8a48aa7c8e5202841ddaf767bb4d10da\";s:2:\"id\";i:6;s:3:\"qty\";i:1;s:4:\"name\";s:45:\"totam rerum temporibus blanditiis animi omnis\";s:5:\"price\";d:75;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-06-17 11:33:39', NULL),
('user@localhost.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-06-17 11:30:20', NULL),
('User1@localhost.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:7:{s:32:\"6de83ad2f06a80ee5b06ead51cb74fb5\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"6de83ad2f06a80ee5b06ead51cb74fb5\";s:2:\"id\";i:53;s:3:\"qty\";i:1;s:4:\"name\";s:10:\"ao nam moi\";s:5:\"price\";d:900000;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"bd33e4e24a9444d831df8285f4c15e30\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"bd33e4e24a9444d831df8285f4c15e30\";s:2:\"id\";i:35;s:3:\"qty\";i:1;s:4:\"name\";s:36:\"eius sapiente rerum quia ratione aut\";s:5:\"price\";d:200;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"f518025742bd7ab14530a1b3e92a262e\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"f518025742bd7ab14530a1b3e92a262e\";s:2:\"id\";i:64;s:3:\"qty\";i:1;s:4:\"name\";s:16:\"Bánh Bao Kim Sa\";s:5:\"price\";d:123;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:2:{s:5:\"Color\";s:6:\"yellow\";s:4:\"Size\";s:1:\"S\";}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"8eb747b95b9862e9d83031beb9938720\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"8eb747b95b9862e9d83031beb9938720\";s:2:\"id\";i:21;s:3:\"qty\";i:2;s:4:\"name\";s:33:\"quis et nesciunt sint autem ipsum\";s:5:\"price\";d:326;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"1d3bf986c109d443f161bb3962491282\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"1d3bf986c109d443f161bb3962491282\";s:2:\"id\";i:34;s:3:\"qty\";i:1;s:4:\"name\";s:38:\"minima qui est minus nobis repudiandae\";s:5:\"price\";d:478;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"2c5093ed85b1dcec05b7205bea0e5ec6\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"2c5093ed85b1dcec05b7205bea0e5ec6\";s:2:\"id\";i:31;s:3:\"qty\";i:2;s:4:\"name\";s:53:\"mollitia iusto perspiciatis officiis quis accusantium\";s:5:\"price\";d:431;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"1d05d1221ec305a061c2fde8297ad8c2\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"1d05d1221ec305a061c2fde8297ad8c2\";s:2:\"id\";i:32;s:3:\"qty\";i:1;s:4:\"name\";s:34:\"vel dicta aut dolore facere beatae\";s:5:\"price\";d:177;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:19:\"\\App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-06-22 17:27:24', NULL),
('User1@localhost.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:2:{s:32:\"c1db1025126b9d1b9a0ca862b0a51f07\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"c1db1025126b9d1b9a0ca862b0a51f07\";s:2:\"id\";i:33;s:3:\"qty\";i:1;s:4:\"name\";s:50:\"corporis sint error voluptatibus tenetur accusamus\";s:5:\"price\";d:343;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}s:32:\"1d3bf986c109d443f161bb3962491282\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"1d3bf986c109d443f161bb3962491282\";s:2:\"id\";i:34;s:3:\"qty\";i:1;s:4:\"name\";s:38:\"minima qui est minus nobis repudiandae\";s:5:\"price\";d:478;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";s:18:\"App\\Models\\Product\";s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:5;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0isSaved\";b:0;}}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-06-22 17:27:24', NULL),
('user2@localhost.com', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-06-17 12:32:55', NULL),
('user2@localhost.com', 'wishlist', 'O:29:\"Illuminate\\Support\\Collection\":2:{s:8:\"\0*\0items\";a:0:{}s:28:\"\0*\0escapeWhenCastingToString\";b:0;}', '2023-06-17 12:32:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `popular` int DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `slug`, `category_id`, `created_at`, `updated_at`, `popular`, `image`) VALUES
(2, 'Ao coc nam', 'ao-coc-nam', 1, '2023-06-16 14:52:33', '2023-06-16 14:52:33', 0, '1686927153.jpg'),
(3, 'Ao coc nam co soc', 'ao-coc-nam-co-soc', 1, '2023-06-16 16:16:56', '2023-06-16 16:16:56', 1, '1686932216.jpg'),
(4, 'Áo dài nữ đẹp', 'ao-dai-nu-dep', 11, '2023-06-16 19:09:12', '2023-06-16 19:09:12', 0, '1686942552.jpg'),
(5, 'Quần nữ đẹp', 'quan-nu-dep', 11, '2023-06-16 19:09:37', '2023-06-16 19:09:37', 0, '1686942577.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `mode` enum('cod','vnpay','paypal') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','thanhcong','declined','refunded') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `order_id`, `mode`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 19, 'cod', 'pending', '2023-06-15 02:39:23', '2023-06-15 02:39:23'),
(4, 2, 20, 'cod', 'pending', '2023-06-15 09:17:17', '2023-06-15 09:17:17'),
(5, 2, 21, 'cod', 'pending', '2023-06-15 09:22:15', '2023-06-15 09:22:15'),
(6, 2, 22, 'cod', 'pending', '2023-06-15 17:10:30', '2023-06-15 17:10:30'),
(7, 2, 23, 'cod', 'pending', '2023-06-16 08:21:17', '2023-06-16 08:21:17'),
(69, 3, 135, 'vnpay', 'thanhcong', '2023-06-17 12:20:58', '2023-06-17 12:20:58'),
(70, 4, 136, 'vnpay', 'thanhcong', '2023-06-17 12:30:42', '2023-06-17 12:30:42'),
(71, 3, 137, 'vnpay', 'thanhcong', '2023-06-17 12:30:49', '2023-06-17 12:30:49'),
(72, 3, 138, 'cod', 'pending', '2023-06-21 08:16:34', '2023-06-21 08:16:34'),
(73, 3, 139, 'cod', 'pending', '2023-06-21 08:17:54', '2023-06-21 08:17:54'),
(74, 5, 140, 'vnpay', 'thanhcong', '2023-06-23 09:08:00', '2023-06-23 09:08:00'),
(75, 5, 141, 'vnpay', 'thanhcong', '2023-06-23 09:15:29', '2023-06-23 09:15:29'),
(76, 5, 142, 'vnpay', 'thanhcong', '2023-06-23 09:16:09', '2023-06-23 09:16:09'),
(77, 5, 143, 'vnpay', 'thanhcong', '2023-06-23 09:18:25', '2023-06-23 09:18:25'),
(78, 5, 144, 'vnpay', 'thanhcong', '2023-06-23 09:19:43', '2023-06-23 09:19:43'),
(79, 5, 145, 'vnpay', 'thanhcong', '2023-06-23 09:20:20', '2023-06-23 09:20:20'),
(80, 5, 146, 'vnpay', 'thanhcong', '2023-06-23 09:21:35', '2023-06-23 09:21:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for Admin and USR for Normal User',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firtsname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `utype`, `remember_token`, `created_at`, `updated_at`, `firtsname`, `lastname`, `mobile`, `line1`, `line2`, `city`, `province`, `country`, `zipcode`) VALUES
(1, 'Heo con', 'admin@localhost.com', NULL, '$2y$10$YSkr7uE7lrB39S.C/49ILOnD/5V/AoQcRCU/wFYxHRwC61TcJoiuu', 'ADM', NULL, '2023-05-22 09:36:29', '2023-05-22 09:36:29', 'Heo mat', 'thon', '', 'Ha Noi', NULL, '', '', '', ''),
(2, 'User', 'user@localhost.com', NULL, '$2y$10$yFuk08zUKtKwuPhKXdJ3L.mj4kVYHQPWKbWzkgZGsJTD4wLNvr03K', 'USR', NULL, '2023-05-22 11:21:51', '2023-06-01 10:54:03', '', '', '', 'Ha Noi', NULL, '', '', '', ''),
(3, 'User1', 'User1@localhost.com', NULL, '$2y$10$KgZTZET85brYJM2FBajF2OLZXF2pbv98PJZkmIOWuLq4vXRmyyhlq', 'USR', NULL, '2023-05-23 00:51:27', '2023-05-23 00:51:27', '', '', '', '', NULL, '', '', '', ''),
(4, 'Bánh Bao Kim Sa', 'user2@localhost.com', NULL, '$2y$10$.IYkBgVxkz0j3qDE7m3N4e3Yw0vM.7q56YipMlU9xbfHws3Z03SA6', 'USR', NULL, '2023-05-23 00:57:17', '2023-05-23 00:57:17', '', '', '', '', NULL, '', '', '', ''),
(5, 'Bánh Bao Kim Sa', 'heocon12300b@gmail.com', NULL, '$2y$10$8MiRODqxfd/eLz.Y2PjLT.YLwukFlJ4vlMMbnmjgIT2j0I5ULb2Lm', 'USR', 'HVuzN8UQe4a0h9jox1AiaRowFCXW8UNnfdXTV9XM81SEYTsacUxWrqDMDhWY', '2023-05-23 01:13:25', '2023-06-23 08:04:52', '', '', '', '', NULL, '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_product_attribute_id_foreign` (`product_attribute_id`),
  ADD KEY `attribute_values_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `shoppingcart`
--
ALTER TABLE `shoppingcart`
  ADD PRIMARY KEY (`identifier`,`instance`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

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
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
