-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2024 at 01:21 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larablog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_social_media`
--

CREATE TABLE `blog_social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bsm_facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bsm_instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bsm_twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bsm_linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_social_media`
--

INSERT INTO `blog_social_media` (`id`, `bsm_facebook`, `bsm_instagram`, `bsm_twitter`, `bsm_linkedin`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/larablog-official', 'https://www.instagram.com/larablog.official', 'https://www.twitter.com/larablog-official', 'https://www.linkedin.com/larablog-official', NULL, '2023-05-21 05:40:36');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 10000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `ordering`, `created_at`, `updated_at`) VALUES
(2, 'App dev.', 3, '2023-05-24 15:27:24', '2023-08-25 07:04:03'),
(5, 'Web dev.', 4, '2023-07-24 06:21:49', '2023-08-13 11:30:52'),
(7, 'A.I(Artificial Int.)', 1, '2023-08-01 04:30:02', '2023-08-25 07:04:03'),
(8, 'Agriculture', 2, '2023-08-13 11:29:43', '2023-08-25 07:04:03'),
(9, 'Mobile App Development', 10000, '2023-11-05 11:29:07', '2023-11-05 11:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_08_121425_create_types_table', 1),
(6, '2023_05_14_120854_create_settings_table', 2),
(7, '2023_05_21_093349_create_blog_social_media_table', 3),
(8, '2023_05_24_194912_create_categories_table', 4),
(9, '2023_05_24_194920_create_sub_categories_table', 4),
(10, '2023_05_26_064616_create_posts_table', 5),
(11, '2023_07_25_094237_update_posts_table', 6),
(12, '2024_05_25_104338_add_google_id_to_users', 7);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `post_title`, `post_slug`, `post_content`, `post_tags`, `featured_image`, `created_at`, `updated_at`) VALUES
(12, 1, 10, 'How to upload files in CodeIgniter 4', 'how_to_upload_files_in_codeigniter_4', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'codeigniter', '1690704025_codeigign.png', '2023-07-25 02:49:29', '2023-07-30 03:00:25'),
(13, 1, 10, 'How to bulid a blog in CodeIgniter 4', 'how_to_bulid_a_blog_in_codeigniter_4', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, '1690794198_code.png', '2023-07-25 02:49:29', '2023-07-31 04:03:18'),
(14, 1, 6, 'Upload files to server in flutter', 'upload_files_to_server_in_flutter', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, '1690271546_flutter.jpeg', '2023-07-25 02:52:26', '2023-07-30 03:28:24'),
(15, 1, 11, 'CakePHP for beginners', 'cakephp_for_beginners', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'CakePHP', '1690271663_cakephp.png', '2023-07-25 02:54:23', '2023-07-31 12:01:27'),
(16, 1, 12, 'How to upgrade laptop RAM in three ways', 'how_to_upgrade_laptop_ram_in_three_ways', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'computer,Ram', '1690273081_istockphoto-1289411982-612x612.jpg', '2023-07-25 03:18:01', '2023-07-31 07:03:00'),
(17, 1, 13, 'How to learn Kotlin in One Hour', 'how_to_learn_kotlin_in_one_hour', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', NULL, '1690704739_k2.jpeg', '2023-07-25 04:18:40', '2023-07-30 03:12:20'),
(18, 1, 9, 'How to remove file extension in laravel', 'how_to_remove_file_extension_in_laravel', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'laravel,javascipt,VueJs', '1690703823_laravel.png', '2023-07-25 04:53:42', '2023-07-30 02:57:03'),
(19, 2, 9, 'How to upload files on server in laravel', 'how_to_upload_files_on_server_in_laravel', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>', 'laravel,cPanel,Domain', '1690377281_istockphoto-1138004657-612x612.jpg', '2023-07-26 08:14:42', '2023-07-30 02:22:20'),
(20, 1, 12, 'Earn Money on Github', 'earn_money_on_github', '<p>Eget lorem dolor sed viverra ipsum nunc aliquet bibendum enim. Habitasse platea dictumst quisque sagittis purus sit amet volutpat. Adipiscing elit duis tristique sollicitudin nibh sit. Malesuada bibendum arcu vitae elementum curabitur. In eu mi bibendum neque egestas congue quisque egestas diam. Quis blandit turpis cursus in hac habitasse. Ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus. Dui ut ornare lectus sit amet est placerat in. Diam sit amet nisl suscipit adipiscing bibendum. Duis at tellus at urna condimentum mattis.</p>', 'github,computer', '1690706528_git.png', '2023-07-30 03:42:08', '2023-07-31 07:02:30'),
(21, 1, 10, 'Login and Register in CodeIgniter 4', 'login_and_register_in_codeigniter_4', '<p>A lacus vestibulum sed arcu non odio. Non sodales neque sodales ut etiam. Vitae elementum curabitur vitae nunc. Nulla aliquet enim tortor at auctor. Fringilla est ullamcorper eget nulla facilisi etiam dignissim diam. Viverra tellus in hac habitasse platea dictumst vestibulum. Mi tempus imperdiet nulla malesuada pellentesque elit. Risus sed vulputate odio ut enim blandit volutpat. Ultrices vitae auctor eu augue. Lacus sed turpis tincidunt id aliquet. Donec adipiscing tristique risus nec. Lectus quam id leo in vitae turpis. Quam quisque id diam vel quam elementum pulvinar etiam non. Mattis nunc sed blandit libero volutpat sed cras ornare arcu. Porta non pulvinar neque laoreet suspendisse interdum consectetur. Arcu cursus vitae congue mauris rhoncus aenean</p>', 'login,register,codeigniter', '1690706695_regidter.png', '2023-07-30 03:44:55', '2023-07-30 03:44:55'),
(22, 1, 12, 'Learning Programming Languages Strategies', 'learning_programming_languages_strategies', '<p>&nbsp;</p>\r\n\r\n<p>Pulvinar mattis nunc sed blandit libero. Viverra tellus in hac habitasse platea dictumst vestibulum rhoncus. Maecenas accumsan lacus vel facilisis volutpat est velit. Sapien nec sagittis aliquam malesuada bibendum arcu vitae. Ridiculus mus mauris vitae ultricies leo integer malesuada. Augue mauris augue neque gravida. Sed cras ornare arcu dui vivamus arcu. Aliquam nulla facilisi cras fermentum odio. Sagittis nisl rhoncus mattis rhoncus urna neque viverra justo. Dui faucibus in ornare quam viverra orci sagittis eu volutpat. Quisque egestas diam in arcu cursus euismod. Pharetra et ultrices neque ornare aenean. Lobortis scelerisque fermentum dui faucibus. Erat pellentesque adipiscing commodo elit at. At in tellus integer feugiat scelerisque. Nulla at volutpat diam ut. Tellus elementum sagittis vitae et leo duis. Maecenas pharetra convallis posuere morbi leo urna molestie at elementum. Sed tempus urna et pharetra pharetra massa massa ultricies. Sit amet facilisis magna etiam.</p>', 'programming,languages,computer', '1690707399_pro.jpg', '2023-07-30 03:47:32', '2023-07-31 07:01:50'),
(24, 1, 9, 'How to secure Laravel Application', 'how_to_secure_laravel_application', '<p>Urna duis convallis convallis tellus id interdum velit laoreet id. Pretium lectus quam id leo in. In fermentum posuere urna nec tincidunt praesent. Nisi vitae suscipit tellus mauris a diam maecenas. In arcu cursus euismod quis viverra nibh cras pulvinar. Nunc aliquet bibendum enim facilisis. Mi eget mauris pharetra et ultrices neque ornare aenean euismod. Aenean et tortor at risus viverra adipiscing at in. Dolor purus non enim praesent. Ipsum dolor sit amet consectetur adipiscing elit ut aliquam purus. In egestas erat imperdiet sed euismod nisi porta. Risus sed vulputate odio ut enim blandit. Nisi porta lorem mollis aliquam ut porttitor leo. Dignissim convallis aenean et tortor at risus viverra. Ultricies leo integer malesuada nunc vel risus commodo viverra. Enim sit amet venenatis urna cursus eget. Faucibus turpis in eu mi. Est pellentesque elit ullamcorper dignissim cras tincidunt. Purus in mollis nunc sed id semper. Velit dignissim sodales ut eu.</p>\r\n\r\n<p>Urna duis convallis convallis tellus id interdum velit laoreet id. Pretium lectus quam id leo in. In fermentum posuere urna nec tincidunt praesent. Nisi vitae suscipit tellus mauris a diam maecenas. In arcu cursus euismod quis viverra nibh cras pulvinar. Nunc aliquet bibendum enim facilisis. Mi eget mauris pharetra et ultrices neque ornare aenean euismod. Aenean et tortor at risus viverra adipiscing at in. Dolor purus non enim praesent. Ipsum dolor sit amet consectetur adipiscing elit ut aliquam purus. In egestas erat imperdiet sed euismod nisi porta. Risus sed vulputate odio ut enim blandit. Nisi porta lorem mollis aliquam ut porttitor leo. Dignissim convallis aenean et tortor at risus viverra. Ultricies leo integer malesuada nunc vel risus commodo viverra. Enim sit amet venenatis urna cursus eget. Faucibus turpis in eu mi. Est pellentesque elit ullamcorper dignissim cras tincidunt. Purus in mollis nunc sed id semper. Velit dignissim sodales ut eu.</p>\r\n\r\n<p>Urna duis convallis convallis tellus id interdum velit laoreet id. Pretium lectus quam id leo in. In fermentum posuere urna nec tincidunt praesent. Nisi vitae suscipit tellus mauris a diam maecenas. In arcu cursus euismod quis viverra nibh cras pulvinar. Nunc aliquet bibendum enim facilisis. Mi eget mauris pharetra et ultrices neque ornare aenean euismod. Aenean et tortor at risus viverra adipiscing at in. Dolor purus non enim praesent. Ipsum dolor sit amet consectetur adipiscing elit ut aliquam purus. In egestas erat imperdiet sed euismod nisi porta. Risus sed vulputate odio ut enim blandit. Nisi porta lorem mollis aliquam ut porttitor leo. Dignissim convallis aenean et tortor at risus viverra. Ultricies leo integer malesuada nunc vel risus commodo viverra. Enim sit amet venenatis urna cursus eget. Faucibus turpis in eu mi. Est pellentesque elit ullamcorper dignissim cras tincidunt. Purus in mollis nunc sed id semper. Velit dignissim sodales ut eu.</p>', 'laravel,secure', '1690802654_lara4.jpg', '2023-07-31 06:24:15', '2023-07-31 06:24:15'),
(25, 1, 9, 'How to debug Laravel app', 'how_to_debug_laravel_app', '<p>Dignissim enim sit amet venenatis urna cursus. Volutpat odio facilisis mauris sit. Risus nec feugiat in fermentum posuere urna nec. Auctor augue mauris augue neque. Massa vitae tortor condimentum lacinia. Euismod in pellentesque massa placerat. Ultricies lacus sed turpis tincidunt id aliquet. Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Sed vulputate mi sit amet mauris commodo. Orci a scelerisque purus semper eget duis at tellus at. Aliquet sagittis id consectetur purus ut faucibus pulvinar elementum integer. Ullamcorper a lacus vestibulum sed arcu non odio. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant. Pharetra magna ac placerat vestibulum lectus mauris ultrices. Lacus laoreet non curabitur gravida. Consequat ac felis donec et odio pellentesque diam. Elementum integer enim neque volutpat ac tincidunt vitae semper quis.</p>\r\n\r\n<p>Dignissim enim sit amet venenatis urna cursus. Volutpat odio facilisis mauris sit. Risus nec feugiat in fermentum posuere urna nec. Auctor augue mauris augue neque. Massa vitae tortor condimentum lacinia. Euismod in pellentesque massa placerat. Ultricies lacus sed turpis tincidunt id aliquet. Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Sed vulputate mi sit amet mauris commodo. Orci a scelerisque purus semper eget duis at tellus at. Aliquet sagittis id consectetur purus ut faucibus pulvinar elementum integer. Ullamcorper a lacus vestibulum sed arcu non odio. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant. Pharetra magna ac placerat vestibulum lectus mauris ultrices. Lacus laoreet non curabitur gravida. Consequat ac felis donec et odio pellentesque diam. Elementum integer enim neque volutpat ac tincidunt vitae semper quis.</p>\r\n\r\n<p>Dignissim enim sit amet venenatis urna cursus. Volutpat odio facilisis mauris sit. Risus nec feugiat in fermentum posuere urna nec. Auctor augue mauris augue neque. Massa vitae tortor condimentum lacinia. Euismod in pellentesque massa placerat. Ultricies lacus sed turpis tincidunt id aliquet. Faucibus scelerisque eleifend donec pretium vulputate sapien nec. Sed vulputate mi sit amet mauris commodo. Orci a scelerisque purus semper eget duis at tellus at. Aliquet sagittis id consectetur purus ut faucibus pulvinar elementum integer. Ullamcorper a lacus vestibulum sed arcu non odio. Vel elit scelerisque mauris pellentesque pulvinar pellentesque habitant. Pharetra magna ac placerat vestibulum lectus mauris ultrices. Lacus laoreet non curabitur gravida. Consequat ac felis donec et odio pellentesque diam. Elementum integer enim neque volutpat ac tincidunt vitae semper quis.</p>', 'laravel,debug', '1690802732_lara1.jpeg', '2023-07-31 06:25:32', '2023-07-31 06:25:32'),
(26, 1, 9, 'How to Integrate Payment Gateway in Laravel', 'how_to_integrate_payment_gateway_in_laravel', '<p>Nisi scelerisque eu ultrices vitae auctor. Leo integer malesuada nunc vel risus commodo viverra maecenas accumsan. Egestas fringilla phasellus faucibus scelerisque eleifend donec. Ornare arcu odio ut sem nulla pharetra. Sed vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Erat pellentesque adipiscing commodo elit. Quisque id diam vel quam elementum pulvinar etiam. Lobortis scelerisque fermentum dui faucibus. Leo integer malesuada nunc vel risus commodo viverra maecenas. Faucibus interdum posuere lorem ipsum dolor sit amet. Sed sed risus pretium quam vulputate dignissim.</p>\r\n\r\n<p>Nisi scelerisque eu ultrices vitae auctor. Leo integer malesuada nunc vel risus commodo viverra maecenas accumsan. Egestas fringilla phasellus faucibus scelerisque eleifend donec. Ornare arcu odio ut sem nulla pharetra. Sed vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Erat pellentesque adipiscing commodo elit. Quisque id diam vel quam elementum pulvinar etiam. Lobortis scelerisque fermentum dui faucibus. Leo integer malesuada nunc vel risus commodo viverra maecenas. Faucibus interdum posuere lorem ipsum dolor sit amet. Sed sed risus pretium quam vulputate dignissim.</p>\r\n\r\n<p>Nisi scelerisque eu ultrices vitae auctor. Leo integer malesuada nunc vel risus commodo viverra maecenas accumsan. Egestas fringilla phasellus faucibus scelerisque eleifend donec. Ornare arcu odio ut sem nulla pharetra. Sed vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Erat pellentesque adipiscing commodo elit. Quisque id diam vel quam elementum pulvinar etiam. Lobortis scelerisque fermentum dui faucibus. Leo integer malesuada nunc vel risus commodo viverra maecenas. Faucibus interdum posuere lorem ipsum dolor sit amet. Sed sed risus pretium quam vulputate dignissim.</p>\r\n\r\n<p>Nisi scelerisque eu ultrices vitae auctor. Leo integer malesuada nunc vel risus commodo viverra maecenas accumsan. Egestas fringilla phasellus faucibus scelerisque eleifend donec. Ornare arcu odio ut sem nulla pharetra. Sed vulputate odio ut enim blandit volutpat maecenas volutpat blandit. Erat pellentesque adipiscing commodo elit. Quisque id diam vel quam elementum pulvinar etiam. Lobortis scelerisque fermentum dui faucibus. Leo integer malesuada nunc vel risus commodo viverra maecenas. Faucibus interdum posuere lorem ipsum dolor sit amet. Sed sed risus pretium quam vulputate dignissim.</p>', 'laravel,payment,gateway', '1690802806_lara2.jpeg', '2023-07-31 06:26:46', '2023-08-01 04:17:35'),
(27, 1, 9, 'How to use Laravel in Ethical Hacking', 'how_to_use_laravel_in_ethical_hacking', '<p>Etiam tempor orci eu lobortis elementum nibh. Id nibh tortor id aliquet lectus proin nibh nisl. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Viverra accumsan in nisl nisi scelerisque eu. Blandit libero volutpat sed cras ornare arcu. A diam maecenas sed enim ut. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Duis convallis convallis tellus id interdum velit laoreet. Tincidunt augue interdum velit euismod in pellentesque. Lacus vestibulum sed arcu non. Velit egestas dui id ornare arcu odio ut sem nulla. Eget gravida cum sociis natoque. Consequat nisl vel pretium lectus quam id leo in. Amet nisl suscipit adipiscing bibendum est ultricies integer quis. Gravida in fermentum et sollicitudin ac orci phasellus egestas tellus. Molestie a iaculis at erat.</p>\r\n\r\n<p>Etiam tempor orci eu lobortis elementum nibh. Id nibh tortor id aliquet lectus proin nibh nisl. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Viverra accumsan in nisl nisi scelerisque eu. Blandit libero volutpat sed cras ornare arcu. A diam maecenas sed enim ut. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Duis convallis convallis tellus id interdum velit laoreet. Tincidunt augue interdum velit euismod in pellentesque. Lacus vestibulum sed arcu non. Velit egestas dui id ornare arcu odio ut sem nulla. Eget gravida cum sociis natoque. Consequat nisl vel pretium lectus quam id leo in. Amet nisl suscipit adipiscing bibendum est ultricies integer quis. Gravida in fermentum et sollicitudin ac orci phasellus egestas tellus. Molestie a iaculis at erat.</p>\r\n\r\n<p>Etiam tempor orci eu lobortis elementum nibh. Id nibh tortor id aliquet lectus proin nibh nisl. Sed turpis tincidunt id aliquet risus feugiat in ante metus. Viverra accumsan in nisl nisi scelerisque eu. Blandit libero volutpat sed cras ornare arcu. A diam maecenas sed enim ut. Pretium fusce id velit ut tortor pretium viverra suspendisse potenti. Duis convallis convallis tellus id interdum velit laoreet. Tincidunt augue interdum velit euismod in pellentesque. Lacus vestibulum sed arcu non. Velit egestas dui id ornare arcu odio ut sem nulla. Eget gravida cum sociis natoque. Consequat nisl vel pretium lectus quam id leo in. Amet nisl suscipit adipiscing bibendum est ultricies integer quis. Gravida in fermentum et sollicitudin ac orci phasellus egestas tellus. Molestie a iaculis at erat.</p>', 'laravel,hacking,ethical', '1690802882_lara5.jpg', '2023-07-31 06:28:02', '2023-07-31 06:28:02'),
(28, 1, 14, 'How does AI (Artificial Intelligence) work?', 'how_does_ai_artificial_intelligence_work', '<p>As the hype around AI has accelerated, vendors have been scrambling to promote how their products and services use it. Often, what they refer to as AI is simply a component of the technology, such as&nbsp;<a href=\"https://www.techtarget.com/searchenterpriseai/definition/machine-learning-ML\">machine learning</a>. AI requires a foundation of specialized hardware and software for writing and training machine learning algorithms. No single programming language is synonymous with AI, but Python, R, Java, C++ and Julia have features popular with AI developers.</p>\r\n\r\n<p>In general, AI systems work by ingesting large amounts of labeled training data, analyzing the data for correlations and patterns, and using these patterns to make predictions about future states. In this way, a chatbot that is fed examples of text can learn to generate lifelike exchanges with people, or an image recognition tool can learn to identify and describe objects in images by reviewing millions of examples. New, rapidly improving&nbsp;<a href=\"https://www.techtarget.com/searchenterpriseai/definition/generative-AI\">generative AI</a>&nbsp;techniques can create realistic text, images, music and other media.</p>\r\n\r\n<p>AI programming focuses on cognitive skills that include the following:</p>\r\n\r\n<ul>\r\n	<li><strong>Learning.</strong>&nbsp;This aspect of AI programming focuses on acquiring data and creating rules for how to turn it into actionable information. The rules, which are called&nbsp;<em><a href=\"https://www.techtarget.com/whatis/definition/algorithm\">algorithms</a></em>, provide computing devices with step-by-step instructions for how to complete a specific task.</li>\r\n	<li><strong>Reasoning.</strong>&nbsp;This aspect of AI programming focuses on choosing the right algorithm to reach a desired outcome.</li>\r\n	<li><strong>Self-correction.</strong>&nbsp;This aspect of AI programming is designed to continually fine-tune algorithms and ensure they provide the most accurate results possible.</li>\r\n	<li><strong>Creativity.&nbsp;</strong>This aspect of AI<strong>&nbsp;</strong>uses neural networks, rules-based systems, statistical methods and other AI techniques to generate new images, new text, new music and new ideas.</li>\r\n</ul>\r\n\r\n<h4>Differences between AI, machine learning and deep learning</h4>\r\n\r\n<p><a href=\"https://www.techtarget.com/searchenterpriseai/tip/AI-vs-machine-learning-vs-deep-learning-Key-differences\"><em>AI</em>,&nbsp;<em>machine learning</em>&nbsp;and&nbsp;<em>deep learning</em>&nbsp;are common terms</a>&nbsp;in enterprise IT and sometimes used interchangeably, especially by companies in their marketing materials. But there are distinctions. The term&nbsp;<em>AI,</em>&nbsp;coined in the 1950s, refers to the simulation of human intelligence by machines. It covers an ever-changing set of capabilities as new technologies are developed. Technologies that come under the umbrella of AI include machine learning and deep learning.</p>\r\n\r\n<p>Machine learning enables software applications to become more accurate at predicting outcomes without being explicitly programmed to do so. Machine learning algorithms use historical data as input to predict new output values. This approach became vastly more effective with the rise of large data sets to train on. Deep learning, a subset of machine learning, is based on our understanding of how the brain is structured. Deep learning&#39;s use of artificial neural networks structure is the underpinning of recent advances in AI, including self-driving cars and ChatGPT.</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"http://127.0.0.1/storage/my1files/ai%202.png\" style=\"height:374px; width:550px\" /></p>', 'AI,Machine,Learning', '1690882636_AI.jpg', '2023-08-01 04:37:17', '2023-08-01 04:40:32');
INSERT INTO `posts` (`id`, `author_id`, `category_id`, `post_title`, `post_slug`, `post_content`, `post_tags`, `featured_image`, `created_at`, `updated_at`) VALUES
(29, 20, 14, 'How artificial intelligence is transforming the world', 'how_artificial_intelligence_is_transforming_the_world', '<p>Most people are not very familiar with the concept of artificial intelligence (AI). As an illustration, when 1,500 senior business leaders in the United States in 2017 were asked about AI, only 17 percent said they were familiar with it.<sup>1</sup>&nbsp;A number of them were not sure what it was or how it would affect their particular companies. They understood there was considerable potential for altering business processes, but were not clear how AI could be deployed within their own organizations.</p>\r\n\r\n<p>Despite its widespread lack of familiarity, AI is a technology that is transforming every walk of life. It is a wide-ranging tool that enables people to rethink how we integrate information, analyze data, and use the resulting insights to improve decisionmaking. Our hope through this comprehensive overview is to explain AI to an audience of policymakers, opinion leaders, and interested observers, and demonstrate how AI already is altering the world and raising important questions for society, the economy, and governance.</p>\r\n\r\n<p>In this paper, we discuss novel applications in finance, national security, health care, criminal justice, transportation, and smart cities, and address issues such as data access problems, algorithmic bias, AI ethics and transparency, and legal liability for AI decisions. We contrast the regulatory approaches of the U.S. and European Union, and close by making a number of recommendations for getting the most out of AI while still protecting important human values.<sup>2</sup></p>\r\n\r\n<p>In order to maximize AI benefits, we recommend nine steps for going forward:</p>\r\n\r\n<ul>\r\n	<li>Encourage greater data access for researchers without compromising users&rsquo; personal privacy,</li>\r\n	<li>invest more government funding in unclassified AI research,</li>\r\n	<li>promote new models of digital education and AI workforce development so employees have the skills needed in the 21<sup>st</sup>-century economy,</li>\r\n	<li>create a federal AI advisory committee to make policy recommendations,</li>\r\n	<li>engage with state and local officials so they enact effective policies,</li>\r\n	<li>regulate broad AI principles rather than specific algorithms,</li>\r\n	<li>take bias complaints seriously so AI does not replicate historic injustice, unfairness, or discrimination in data or algorithms,</li>\r\n	<li>maintain mechanisms for human oversight and control, and</li>\r\n	<li>penalize malicious AI behavior and promote cybersecurity.</li>\r\n</ul>\r\n\r\n<h2>Qualities of artificial intelligence</h2>\r\n\r\n<p>Although there is no uniformly agreed upon definition, AI generally is thought to refer to &ldquo;machines that respond to stimulation consistent with traditional responses from humans, given the human capacity for contemplation, judgment and intention.&rdquo;<sup>3</sup>&nbsp;According to researchers Shubhendu and Vijay, these software systems &ldquo;make decisions which normally require [a] human level of expertise&rdquo; and help people anticipate problems or deal with issues as they come up.<sup>4</sup>&nbsp;As such, they operate in an intentional, intelligent, and adaptive manner.</p>\r\n\r\n<h3><em>Intentionality</em></h3>\r\n\r\n<p>Artificial intelligence algorithms are designed to make decisions, often using real-time data. They are unlike passive machines that are capable only of mechanical or predetermined responses. Using sensors, digital data, or remote inputs, they combine information from a variety of different sources, analyze the material instantly, and act on the insights derived from those data. With massive improvements in storage systems, processing speeds, and analytic techniques, they are capable of tremendous sophistication in analysis and decisionmaking.</p>\r\n\r\n<blockquote>\r\n<p>Artificial intelligence is already altering the world and raising important questions for society, the economy, and governance.</p>\r\n</blockquote>\r\n\r\n<h3><em>Intelligence</em></h3>\r\n\r\n<p>AI generally is undertaken in conjunction with machine learning and data analytics.<sup>5</sup>&nbsp;Machine learning takes data and looks for underlying trends. If it spots something that is relevant for a practical problem, software designers can take that knowledge and use it to analyze specific issues. All that is required are data that are sufficiently robust that algorithms can discern useful patterns. Data can come in the form of digital information, satellite imagery, visual information, text, or unstructured data.</p>\r\n\r\n<h3><em>Adaptability</em></h3>\r\n\r\n<p>AI systems have the ability to learn and adapt as they make decisions. In the transportation area, for example, semi-autonomous vehicles have tools that let drivers and vehicles know about upcoming congestion, potholes, highway construction, or other possible traffic impediments. Vehicles can take advantage of the experience of other vehicles on the road, without human involvement, and the entire corpus of their achieved &ldquo;experience&rdquo; is immediately and fully transferable to other similarly configured vehicles. Their advanced algorithms, sensors, and cameras incorporate experience in current operations, and use dashboards and visual displays to present information in real time so human drivers are able to make sense of ongoing traffic and vehicular conditions. And in the case of fully autonomous vehicles, advanced systems can completely control the car or truck, and make all the navigational decisions.</p>\r\n\r\n<h2>Applications in diverse sectors</h2>\r\n\r\n<p>AI is not a futuristic vision, but rather something that is here today and being integrated with and deployed into a variety of sectors. This includes fields such as finance, national security, health care, criminal justice, transportation, and smart cities. There are numerous examples where AI already is making an impact on the world and augmenting human capabilities in significant ways.<sup>6</sup></p>\r\n\r\n<p>One of the reasons for the growing role of AI is the tremendous opportunities for economic development that it presents. A project undertaken by PriceWaterhouseCoopers estimated that &ldquo;artificial intelligence technologies could increase global GDP by $15.7 trillion, a full 14%, by 2030.&rdquo;<sup>7</sup>&nbsp;That includes advances of $7 trillion in China, $3.7 trillion in North America, $1.8 trillion in Northern Europe, $1.2 trillion for Africa and Oceania, $0.9 trillion in the rest of Asia outside of China, $0.7 trillion in Southern Europe, and $0.5 trillion in Latin America. China is making rapid strides because it has set a national goal of investing $150 billion in AI and becoming the global leader in this area by 2030.</p>\r\n\r\n<p>Meanwhile, a McKinsey Global Institute study of China found that &ldquo;AI-led automation can give the Chinese economy a productivity injection that would add 0.8 to 1.4 percentage points to GDP growth annually, depending on the speed of adoption.&rdquo;<sup>8</sup>&nbsp;Although its authors found that China currently lags the United States and the United Kingdom in AI deployment, the sheer size of its AI market gives that country tremendous opportunities for pilot testing and future development.</p>\r\n\r\n<h3><em>Finance</em></h3>\r\n\r\n<p>Investments in financial AI in the United States tripled between 2013 and 2014 to a total of $12.2 billion.<sup>9</sup>&nbsp;According to observers in that sector, &ldquo;Decisions about loans are now being made by software that can take into account a variety of finely parsed data about a borrower, rather than just a credit score and a background check.&rdquo;<sup>10</sup>&nbsp;In addition, there are so-called robo-advisers that &ldquo;create personalized investment portfolios, obviating the need for stockbrokers and financial advisers.&rdquo;<sup>11</sup>&nbsp;These advances are designed to take the emotion out of investing and undertake decisions based on analytical considerations, and make these choices in a matter of minutes.</p>\r\n\r\n<p>A prominent example of this is taking place in stock exchanges, where high-frequency trading by machines has replaced much of human decisionmaking. People submit buy and sell orders, and computers match them in the blink of an eye without human intervention. Machines can spot trading inefficiencies or market differentials on a very small scale and execute trades that make money according to investor instructions.<sup>12</sup>&nbsp;Powered in some places by advanced computing, these tools have much greater capacities for storing information because of their emphasis not on a zero or a one, but on &ldquo;quantum bits&rdquo; that can store multiple values in each location.<sup>13</sup>&nbsp;That dramatically increases storage capacity and decreases processing times.</p>\r\n\r\n<p>Fraud detection represents another way AI is helpful in financial systems. It sometimes is difficult to discern fraudulent activities in large organizations, but AI can identify abnormalities, outliers, or deviant cases requiring additional investigation. That helps managers find problems early in the cycle, before they reach dangerous levels.<sup>14</sup></p>\r\n\r\n<h3><em>National security</em></h3>\r\n\r\n<p>AI plays a substantial role in national defense. Through its Project Maven, the American military is deploying AI &ldquo;to sift through the massive troves of data and video captured by surveillance and then alert human analysts of patterns or when there is abnormal or suspicious activity.&rdquo;<sup>15</sup>&nbsp;According to Deputy Secretary of Defense Patrick Shanahan, the goal of emerging technologies in this area is &ldquo;to meet our warfighters&rsquo; needs and to increase [the] speed and agility [of] technology development and procurement.&rdquo;<sup>16</sup></p>\r\n\r\n<blockquote>\r\n<p>Artificial intelligence will accelerate the traditional process of warfare so rapidly that a new term has been coined: hyperwar.</p>\r\n</blockquote>\r\n\r\n<p>The big data analytics associated with AI will profoundly affect intelligence analysis, as massive amounts of data are sifted in near real time&mdash;if not eventually in real time&mdash;thereby providing commanders and their staffs a level of intelligence analysis and productivity heretofore unseen. Command and control will similarly be affected as human commanders delegate certain routine, and in special circumstances, key decisions to AI platforms, reducing dramatically the time associated with the decision and subsequent action. In the end, warfare is a time competitive process, where the side able to decide the fastest and move most quickly to execution will generally prevail. Indeed, artificially intelligent intelligence systems, tied to AI-assisted command and control systems, can move decision support and decisionmaking to a speed vastly superior to the speeds of the traditional means of waging war. So fast will be this process, especially if coupled to automatic decisions to launch artificially intelligent autonomous weapons systems capable of lethal outcomes, that a new term has been coined specifically to embrace the speed at which war will be waged: hyperwar.</p>\r\n\r\n<p>While the ethical and legal debate is raging over whether America will ever wage war with artificially intelligent autonomous lethal systems, the Chinese and Russians are not nearly so mired in this debate, and we should anticipate our need to defend against these systems operating at hyperwar speeds. The challenge in the West of where to position &ldquo;humans in the loop&rdquo; in a hyperwar scenario will ultimately dictate the West&rsquo;s capacity to be competitive in this new form of conflict.<sup>17</sup></p>\r\n\r\n<p>Just as AI will profoundly affect the speed of warfare, the proliferation of zero day or zero second cyber threats as well as polymorphic malware will challenge even the most sophisticated signature-based cyber protection. This forces significant improvement to existing cyber defenses. Increasingly, vulnerable systems are migrating, and will need to shift to a layered approach to cybersecurity with cloud-based, cognitive AI platforms. This approach moves the community toward a &ldquo;thinking&rdquo; defensive capability that can defend networks through constant training on known threats. This capability includes DNA-level analysis of heretofore unknown code, with the possibility of recognizing and stopping inbound malicious code by recognizing a string component of the file. This is how certain key U.S.-based systems stopped the debilitating &ldquo;WannaCry&rdquo; and &ldquo;Petya&rdquo; viruses.</p>\r\n\r\n<p>Preparing for hyperwar and defending critical cyber networks must become a high priority because China, Russia, North Korea, and other countries are putting substantial resources into AI. In 2017, China&rsquo;s State Council issued a plan for the country to &ldquo;build a domestic industry worth almost $150 billion&rdquo; by 2030.<sup>18</sup>&nbsp;As an example of the possibilities, the Chinese search firm Baidu has pioneered a facial recognition application that finds missing people. In addition, cities such as Shenzhen are providing up to $1 million to support AI labs. That country hopes AI will provide security, combat terrorism, and improve speech recognition programs.<sup>19</sup>&nbsp;The dual-use nature of many AI algorithms will mean AI research focused on one sector of society can be rapidly modified for use in the security sector as well.<sup>20</sup></p>\r\n\r\n<h3><em>Health care</em></h3>\r\n\r\n<p>AI tools are helping designers improve computational sophistication in health care. For example, Merantix is a German company that applies deep learning to medical issues. It has an application in medical imaging that &ldquo;detects lymph nodes in the human body in Computer Tomography (CT) images.&rdquo;<sup>21</sup>&nbsp;According to its developers, the key is labeling the nodes and identifying small lesions or growths that could be problematic. Humans can do this, but radiologists charge $100 per hour and may be able to carefully read only four images an hour. If there were 10,000 images, the cost of this process would be $250,000, which is prohibitively expensive if done by humans.</p>\r\n\r\n<p>What deep learning can do in this situation is train computers on data sets to learn what a normal-looking versus an irregular-appearing lymph node is. After doing that through imaging exercises and honing the accuracy of the labeling, radiological imaging specialists can apply this knowledge to actual patients and determine the extent to which someone is at risk of cancerous lymph nodes. Since only a few are likely to test positive, it is a matter of identifying the unhealthy versus healthy node.</p>\r\n\r\n<p>AI has been applied to congestive heart failure as well, an illness that afflicts 10 percent of senior citizens and costs $35 billion each year in the United States. AI tools are helpful because they &ldquo;predict in advance potential challenges ahead and allocate resources to patient education, sensing, and proactive interventions that keep patients out of the hospital.&rdquo;<sup>22</sup></p>\r\n\r\n<h3><em>Criminal justice</em></h3>\r\n\r\n<p>AI is being deployed in the criminal justice area. The city of Chicago has developed an AI-driven &ldquo;Strategic Subject List&rdquo; that analyzes people who have been arrested for their risk of becoming future perpetrators. It ranks 400,000 people on a scale of 0 to 500, using items such as age, criminal activity, victimization, drug arrest records, and gang affiliation. In looking at the data, analysts found that youth is a strong predictor of violence, being a shooting victim is associated with becoming a future perpetrator, gang affiliation has little predictive value, and drug arrests are not significantly associated with future criminal activity.<sup>23</sup></p>\r\n\r\n<p>Judicial experts claim AI programs reduce human bias in law enforcement and leads to a fairer sentencing system. R Street Institute Associate Caleb Watney writes:</p>\r\n\r\n<p>Empirically grounded questions of predictive risk analysis play to the strengths of machine learning, automated reasoning and other forms of AI. One machine-learning policy simulation concluded that such programs could be used to cut crime up to 24.8 percent with no change in jailing rates, or reduce jail populations by up to 42 percent with no increase in crime rates.<sup>24</sup></p>\r\n\r\n<p>However, critics worry that AI algorithms represent &ldquo;a secret system to punish citizens for crimes they haven&rsquo;t yet committed. The risk scores have been used numerous times to guide large-scale roundups.&rdquo;<sup>25</sup>&nbsp;The fear is that such tools target people of color unfairly and have not helped Chicago reduce the murder wave that has plagued it in recent years.</p>\r\n\r\n<p>Despite these concerns, other countries are moving ahead with rapid deployment in this area. In China, for example, companies already have &ldquo;considerable resources and access to voices, faces and other biometric data in vast quantities, which would help them develop their technologies.&rdquo;<sup>26</sup>&nbsp;New technologies make it possible to match images and voices with other types of information, and to use AI on these combined data sets to improve law enforcement and national security. Through its &ldquo;Sharp Eyes&rdquo; program, Chinese law enforcement is matching video images, social media activity, online purchases, travel records, and personal identity into a &ldquo;police cloud.&rdquo; This integrated database enables authorities to keep track of criminals, potential law-breakers, and terrorists.<sup>27</sup>&nbsp;Put differently, China has become the world&rsquo;s leading AI-powered surveillance state.</p>\r\n\r\n<h3><em>Transportation</em></h3>\r\n\r\n<p>Transportation represents an area where AI and machine learning are producing major innovations. Research by Cameron Kerry and Jack Karsten of the Brookings Institution has found that over $80 billion was invested in autonomous vehicle technology between August 2014 and June 2017. Those investments include applications both for autonomous driving and the core technologies vital to that sector.<sup>28</sup></p>\r\n\r\n<p>Autonomous vehicles&mdash;cars, trucks, buses, and drone delivery systems&mdash;use advanced technological capabilities. Those features include automated vehicle guidance and braking, lane-changing systems, the use of cameras and sensors for collision avoidance, the use of AI to analyze information in real time, and the use of high-performance computing and deep learning systems to adapt to new circumstances through detailed maps.<sup>29</sup></p>\r\n\r\n<p>Light detection and ranging systems (LIDARs) and AI are key to navigation and collision avoidance. LIDAR systems combine light and radar instruments. They are mounted on the top of vehicles that use imaging in a 360-degree environment from a radar and light beams to measure the speed and distance of surrounding objects. Along with sensors placed on the front, sides, and back of the vehicle, these instruments provide information that keeps fast-moving cars and trucks in their own lane, helps them avoid other vehicles, applies brakes and steering when needed, and does so instantly so as to avoid accidents.</p>\r\n\r\n<blockquote>\r\n<p>Advanced software enables cars to learn from the experiences of other vehicles on the road and adjust their guidance systems as weather, driving, or road conditions change. This means that software is the key&mdash;not the physical car or truck itself.</p>\r\n</blockquote>\r\n\r\n<p>Since these cameras and sensors compile a huge amount of information and need to process it instantly to avoid the car in the next lane, autonomous vehicles require high-performance computing, advanced algorithms, and deep learning systems to adapt to new scenarios. This means that software is the key, not the physical car or truck itself.<sup>30</sup>&nbsp;Advanced software enables cars to learn from the experiences of other vehicles on the road and adjust their guidance systems as weather, driving, or road conditions change.<sup>31</sup></p>\r\n\r\n<p>Ride-sharing companies are very interested in autonomous vehicles. They see advantages in terms of customer service and labor productivity. All of the major ride-sharing companies are exploring driverless cars. The surge of car-sharing and taxi services&mdash;such as Uber and Lyft in the United States, Daimler&rsquo;s Mytaxi and Hailo service in Great Britain, and Didi Chuxing in China&mdash;demonstrate the opportunities of this transportation option. Uber recently signed an agreement to purchase 24,000 autonomous cars from Volvo for its ride-sharing service.<sup>32</sup></p>\r\n\r\n<p>However, the ride-sharing firm suffered a setback in March 2018 when one of its autonomous vehicles in Arizona hit and killed a pedestrian. Uber and several auto manufacturers immediately suspended testing and launched investigations into what went wrong and how the fatality could have occurred.<sup>33</sup>&nbsp;Both industry and consumers want reassurance that the technology is safe and able to deliver on its stated promises. Unless there are persuasive answers, this accident could slow AI advancements in the transportation sector.</p>\r\n\r\n<h3><em>Smart cities</em></h3>\r\n\r\n<p>Metropolitan governments are using AI to improve urban service delivery. For example, according to Kevin Desouza, Rashmi Krishnamurthy, and Gregory Dawson:</p>\r\n\r\n<p>The Cincinnati Fire Department is using data analytics to optimize medical emergency responses. The new analytics system recommends to the dispatcher an appropriate response to a medical emergency call&mdash;whether a patient can be treated on-site or needs to be taken to the hospital&mdash;by taking into account several factors, such as the type of call, location, weather, and similar calls.<sup>34</sup></p>\r\n\r\n<p>Since it fields 80,000 requests each year, Cincinnati officials are deploying this technology to prioritize responses and determine the best ways to handle emergencies. They see AI as a way to deal with large volumes of data and figure out efficient ways of responding to public requests. Rather than address service issues in an ad hoc manner, authorities are trying to be proactive in how they provide urban services.</p>\r\n\r\n<p>Cincinnati is not alone. A number of metropolitan areas are adopting smart city applications that use AI to improve service delivery, environmental planning, resource management, energy utilization, and crime prevention, among other things. For its smart cities index, the magazine Fast Company ranked American locales and found Seattle, Boston, San Francisco, Washington, D.C., and New York City as the top adopters. Seattle, for example, has embraced sustainability and is using AI to manage energy usage and resource management. Boston has launched a &ldquo;City Hall To Go&rdquo; that makes sure underserved communities receive needed public services. It also has deployed &ldquo;cameras and inductive loops to manage traffic and acoustic sensors to identify gun shots.&rdquo; San Francisco has certified 203 buildings as meeting LEED sustainability standards.<sup>35</sup></p>\r\n\r\n<p>Through these and other means, metropolitan areas are leading the country in the deployment of AI solutions. Indeed, according to a National League of Cities report, 66 percent of American cities are investing in smart city technology. Among the top applications noted in the report are &ldquo;smart meters for utilities, intelligent traffic signals, e-governance applications, Wi-Fi kiosks, and radio frequency identification sensors in pavement.&rdquo;<sup>36</sup></p>', 'AI,World,Revolution,transform,Smart,Decision', '1690883967_ai3.jpg', '2023-08-01 04:59:27', '2023-08-01 04:59:27'),
(31, 1, 9, 'This is simple post for laravel', 'this_is_simple_post_for_laravel', '<p>This is post content of laravel</p>', 'laravel,jquery', '1695055174_lara4.jpg', '2023-09-18 11:39:34', '2023-09-18 11:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_favicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `blog_name`, `blog_email`, `blog_description`, `blog_logo`, `blog_favicon`, `created_at`, `updated_at`) VALUES
(1, 'Larablog ', 'info@larablogdev.com', 'This is a blogging site', '1699203040_40661_larablog_logo.png', '1684661458_0_larablog_favicon.ico', NULL, '2023-11-05 11:50:40');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_category` int(11) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT 10000,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `subcategory_name`, `slug`, `parent_category`, `ordering`, `created_at`, `updated_at`) VALUES
(6, 'Flutter', 'flutter', 2, 2, '2023-05-29 13:05:12', '2023-07-25 12:45:15'),
(9, 'Laravel', 'laravel', 5, 6, '2023-07-24 06:22:02', '2023-07-25 04:17:26'),
(10, 'CodeIgniter', 'codeigniter', 5, 5, '2023-07-25 02:47:06', '2023-07-25 04:17:26'),
(11, 'CakePHP', 'cakephp', 5, 4, '2023-07-25 02:53:37', '2023-07-25 04:17:26'),
(12, 'Computer', 'computer', 0, 1, '2023-07-25 03:16:33', '2023-07-25 04:14:24'),
(13, 'Kotlin', 'kotlin', 2, 3, '2023-07-25 04:17:20', '2023-07-25 12:45:15'),
(14, 'Machine Learning', 'machine-learning', 7, 10000, '2023-08-01 04:31:06', '2023-08-01 04:31:06'),
(15, 'Sugar Cane', 'sugar-cane', 8, 10000, '2023-08-13 11:30:43', '2023-08-13 11:30:43'),
(16, 'Flutter App Development', 'flutter-app-development', 9, 10000, '2023-11-05 11:29:40', '2023-11-05 11:29:40');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin/Super Author', NULL, NULL),
(2, 'Author', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biography` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 2,
  `blocked` int(11) NOT NULL DEFAULT 0,
  `direct_publish` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `username`, `picture`, `biography`, `type`, `blocked`, `direct_publish`, `remember_token`, `google_id`, `created_at`, `updated_at`) VALUES
(1, 'Larablogger', 'larablogdev@gmail.com', NULL, '$2a$10$ww8ee9H7x11DZntQu5ZPYu3mByvmXNTgQVxwaqxBlp7e7uayfciS.', 'Larablog250', 'AIMG1168404888363663.jpg', 'hi, i am a blogger\n', 1, 0, 1, NULL, NULL, NULL, '2023-05-28 01:17:13'),
(2, 'John Doe', 'john@email.com', NULL, '$2y$10$3FnMQ6j.tNYmw0BgLdJ4MufYB7MM.04MtN2UR53A0p2lYRScC0aC2', 'John250', 'AIMG2168478241164761.jpg', 'Hi, I am author\n', 2, 1, 0, NULL, NULL, '2023-05-22 13:56:19', '2023-08-01 05:03:40'),
(3, 'Katherine', 'kathie@email.com', NULL, '$2y$10$8.YZBOgD9XaXWACYLjA0M.dHPs7tCG9tnhTuGRtAW8cyH03WHOBM6', 'Kathie250', 'AIMG3168478269419839.jpg', 'Hi, I am an author', 2, 0, 0, NULL, NULL, '2023-05-22 14:07:59', '2023-05-24 13:03:46'),
(5, 'Brendon Macculum', 'brendon@email.com', NULL, '$2y$10$Grguyx3DmAdq2xp9U8VsqeCsuRvxBoreVunD5ZNfNfoXeMxwE9g0m', 'Brendon250', 'AIMG5168478479232234.jpg', NULL, 2, 0, 0, NULL, NULL, '2023-05-22 14:15:29', '2023-05-22 14:46:32'),
(6, 'Steve Smith', 'steve@email.com', NULL, '$2y$10$mrqpvnjJDd0SbF3BpP.ebOM5EMNq9qDBYDSWM5RHCoXa.uULa9acm', 'Steve250', 'AIMG6168478474546762.jpg', NULL, 2, 0, 0, NULL, NULL, '2023-05-22 14:16:21', '2023-05-22 14:45:45'),
(7, 'Eoin Morgan', 'morgan@email.com', NULL, '$2y$10$42jiKQ7..eHcqv9gpTT/COswOQWOEZPKU13/Z8gMLripaYhzzWfIW', 'Morgan350', 'AIMG7168478469256810.jpg', NULL, 2, 0, 0, NULL, NULL, '2023-05-22 14:17:18', '2023-05-22 14:44:52'),
(8, 'Ricky Ponting', 'ricky14@email.com', NULL, '$2y$10$.dK0kfS/YB6CpElgjQkuVu3jqy8KZ7GIXn4dDcAp2.K0tnBrv8rdC', 'Ricky340', 'AIMG8168478462692803.jpg', NULL, 2, 0, 0, NULL, NULL, '2023-05-22 14:18:00', '2023-05-23 03:48:36'),
(9, 'Ian Bell', 'bell33@email.com', NULL, '$2y$10$B6TG5QJg39VfdriUh40OoOwHb/QZbncVIK12Sh/aiUtdNOQ7VE/G2', 'Bell390', 'AIMG9168478456952884.jpg', NULL, 2, 0, 0, NULL, NULL, '2023-05-22 14:18:50', '2023-05-23 03:48:57'),
(10, 'Viv Richards', 'richard@email.com', NULL, '$2y$10$QI2.Nsrl0SbNlSg.I5dzqe0TEc6ihL1oi68r3/4NzMj9dsLwGhNli', 'Richard300', 'AIMG10168478452299902.jpg', NULL, 2, 0, 0, NULL, NULL, '2023-05-22 14:19:41', '2023-05-22 14:42:02'),
(12, 'Virat Kohli', 'kohli18@email.com', NULL, '$2y$10$ZOlD5rJLDOh1fHlI.uyMtuYSg./UuSe7fn/gk8h74qVWnQ0YZBljy', 'Kohli183', 'AIMG12168478432942139.jpg', NULL, 2, 0, 0, NULL, NULL, '2023-05-22 14:21:18', '2023-05-23 04:29:07'),
(13, 'Andrew Straus', 'andrew@email.com', NULL, '$2y$10$hOwQcW6wxDjLkfFX4L7/k.Denp6e2tIgqvqbxpssJIsaX/niUaL0i', 'Andrew400', 'AIMG13168478427993154.jpg', NULL, 2, 0, 0, NULL, NULL, '2023-05-22 14:22:13', '2023-05-22 14:37:59'),
(14, 'Brian Lara', 'lara@email.com', NULL, '$2y$10$3euw9cItnQcAehMCCpjcU.4m7uStHFbLRBQgvG/IFiJXWuoONNZjK', 'Lara400', 'AIMG14168478422055253.jpg', NULL, 2, 0, 0, NULL, NULL, '2023-05-22 14:22:58', '2023-05-22 14:37:01'),
(15, 'Mark Boutcher', 'mark@email.com', NULL, '$2y$10$EwI4thC7FMkiZZ3knSm0RuKcLlHi2MvjnVk2Hx9wHpPyrF2Uzt93C', 'Mark399', 'AIMG15168478416547943.jpg', NULL, 2, 0, 0, NULL, NULL, '2023-05-22 14:23:56', '2023-05-22 14:36:05'),
(16, 'Adam Zampa', 'adam@email.com', NULL, '$2y$10$MN80ObXRys.MJHqZx4fufuPniazpZjaWGVeVUGGj4RfnmsKBG21.u', 'Adam40', 'AIMG16168478407113539.jpg', NULL, 2, 0, 0, NULL, NULL, '2023-05-22 14:25:05', '2023-05-22 14:34:31'),
(17, 'Trent Boult', 'trent@email.com', NULL, '$2y$10$ApHQLND7D1faRG4Gnh6qYONWcqC6LxiJHg8z0DhyeEmUy4xNa0oum', 'Trent350', 'AIMG17168478400241755.jpg', NULL, 2, 0, 0, NULL, NULL, '2023-05-22 14:25:44', '2023-05-22 14:33:22'),
(20, 'Sharjeel Ahmad', 'king.sh0345@gmail.com', NULL, '$2y$10$ubhsDp9CX14y6GWOUdSr6OEeyqkbijb3EZB/t8KHZdTZ9g8tjkLrK', 'Sharjeel303', 'AIMG20169088354963791.jpg', 'I\'m a laravel developer and blogger.', 2, 0, 0, NULL, NULL, '2023-08-01 04:47:39', '2023-08-01 05:02:51'),
(21, 'Danial Ahmad', 'danial@gmail.com', NULL, '$2y$10$r7wrBbHtTTdgdugGAdVQ/O92RXkd1E3L2vkod3/gO1xqBLbiKqnUS', 'Danial22', NULL, NULL, 2, 0, 1, NULL, NULL, '2023-11-05 11:30:47', '2023-11-05 11:30:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_social_media`
--
ALTER TABLE `blog_social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_social_media`
--
ALTER TABLE `blog_social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
