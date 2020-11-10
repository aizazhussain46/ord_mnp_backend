-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 10, 2020 at 06:42 AM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mnp`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigns`
--

CREATE TABLE `assigns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `channels`
--

CREATE TABLE `channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `channel_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city_name`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'Abu Dhabi', '1', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(2, 'Al Ain', '1', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(3, 'Ar Ruways', '1', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(4, 'Muzayri`', '1', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(5, 'Ajman', '2', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(6, 'Dubai', '3', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(7, 'Al Fujayrah', '4', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(8, 'Dibba Al-Fujairah', '4', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(9, 'Dibba Al-Hisn', '4', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(10, 'Ras Al Khaimah', '5', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(11, 'Adh Dhayd', '6', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(12, 'Khawr Fakkan', '6', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(13, 'Sharjah', '6', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(14, 'Umm al Qaywayn', '7', '2019-12-27 05:58:10', '2019-12-27 05:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `customer_categories`
--

CREATE TABLE `customer_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_categories`
--

INSERT INTO `customer_categories` (`id`, `customer_category_name`, `created_at`, `updated_at`) VALUES
(1, 'Shops', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_products`
--

CREATE TABLE `discount_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discount_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feedback` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT 'MNP_INV_',
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `invoice_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `maintenanceusers`
--

CREATE TABLE `maintenanceusers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `schedule` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_11_22_190447_create_roles_table', 1),
(10, '2019_12_07_184330_create_statuses_table', 1),
(11, '2019_12_08_100946_create_categories_table', 1),
(12, '2019_12_13_175202_create_sub_channels_table', 1),
(13, '2019_12_13_175552_create_customer_categories_table', 1),
(14, '2019_12_13_175837_create_channels_table', 1),
(15, '2019_12_13_180623_create_states_table', 1),
(16, '2019_12_13_180644_create_cities_table', 1),
(17, '2019_12_18_143327_create_products_table', 1),
(18, '2019_12_24_105039_create_feedback_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('69d620c8e1fbf739658d42a12b408fa1b08205e0475bd2f2452c56617540a1c2c8bf898884b15d38', 1, 1, 'myApp', '[]', 0, '2019-12-27 05:58:10', '2019-12-27 05:58:10', '2020-12-27 10:58:10'),
('5449bcd40c0b52506635d2b1fb6ae4ead5e58314c51ac20a0fea9acce31feb7d62a14d35b34b9259', 1, 1, 'myApp', '[]', 0, '2019-12-27 17:11:11', '2019-12-27 17:11:11', '2020-12-27 11:11:11'),
('5203aad43848a21369464144244b74a0c0fc147c68d3b8109655540ac355e13df282422e38e2aae7', 1, 1, 'myApp', '[]', 0, '2019-12-27 17:17:13', '2019-12-27 17:17:13', '2020-12-27 11:17:13'),
('2bee72efb2c4b2e31b3972ef6b93d5ffec553a93b40031a21d4f1e4f72b8705145cc1027ba52f793', 2, 1, 'myApp', '[]', 0, '2019-12-27 17:18:13', '2019-12-27 17:18:13', '2020-12-27 11:18:13'),
('7f113802a6c2be9fae6672b8ed6e42f8d67ba34e0db91633b532554099905b09bbbc8d0738f3c7c0', 2, 1, 'myApp', '[]', 0, '2019-12-27 17:19:05', '2019-12-27 17:19:05', '2020-12-27 11:19:05'),
('2763ebf14c5adecefa1bca75ffaa2efb2fc17375537208ed43f5a9971a608406432003d36e1503a9', 2, 1, 'myApp', '[]', 0, '2019-12-27 17:22:10', '2019-12-27 17:22:10', '2020-12-27 11:22:10'),
('2ef7ee64e10f2c7b9c96f81d1d43b927b092a57f175044466bf04f96e4a02c8690302ca64f174704', 2, 1, 'myApp', '[]', 0, '2019-12-27 17:27:02', '2019-12-27 17:27:02', '2020-12-27 11:27:02'),
('a1ef998bfb717c53ac785ee9234b28fa7a1fd430d2558bab0a1df578e6b9dfb6cc1e73c7a1c474ba', 1, 1, 'myApp', '[]', 0, '2019-12-27 17:29:53', '2019-12-27 17:29:53', '2020-12-27 11:29:53'),
('f0fbcd6c8e8aaeea0eaf68ea1806d4591f21aa3279edb7fbfc2bd197beece29e04fde7c35f479b37', 2, 1, 'myApp', '[]', 0, '2019-12-27 17:30:36', '2019-12-27 17:30:36', '2020-12-27 11:30:36'),
('24f96a89d1e7a38084a637a332a7b3196390f7cf442f1d466cd54a271ff2e4743bb84cb398416cce', 2, 1, 'myApp', '[]', 0, '2019-12-27 17:31:54', '2019-12-27 17:31:54', '2020-12-27 11:31:54'),
('d3d018a3d56d42dbf7d56f1ce9afcfa9ea3a112040efdb9c51732e9352fa9d38996e7907ae5b7e7e', 1, 1, 'myApp', '[]', 0, '2019-12-27 17:33:56', '2019-12-27 17:33:56', '2020-12-27 11:33:56'),
('5d83568f4e53baba8e0d589c25fdc8a5aedec62ef1568e051de9b33ddcccbf99318cf020044657cb', 1, 1, 'myApp', '[]', 0, '2019-12-27 17:34:24', '2019-12-27 17:34:24', '2020-12-27 11:34:24'),
('be07d2c7187a76c0407971f3c7e08b077da42ce62020bf536fb24b4463e12c350b545cac685164a8', 2, 1, 'myApp', '[]', 0, '2019-12-27 17:35:05', '2019-12-27 17:35:05', '2020-12-27 11:35:05'),
('75da2df2e3116485ebcdf3c95a9ccde37d7946d5a9e885b3702a3e3da252d9b86984de385f2ddbbd', 2, 1, 'myApp', '[]', 0, '2019-12-27 17:36:04', '2019-12-27 17:36:04', '2020-12-27 11:36:04'),
('69b4b1f7c9234ecd572c79507cf6d1e91087423cdd1997dd564000cd4724fc82a9f11ed7eb31bdc0', 1, 1, 'myApp', '[]', 0, '2019-12-27 17:37:41', '2019-12-27 17:37:41', '2020-12-27 11:37:41'),
('5f782b9fee7c17198d538c0557337e9ffb1dc180b911f085fc1d797c7d052dd16f95e89e870f0910', 2, 1, 'myApp', '[]', 0, '2019-12-27 17:37:58', '2019-12-27 17:37:58', '2020-12-27 11:37:58'),
('b516905966be71925052bf8224f0299d83d8d89b30259ff9ed8a703e80047cb64c851295d4fda460', 1, 1, 'myApp', '[]', 0, '2019-12-27 17:38:46', '2019-12-27 17:38:46', '2020-12-27 11:38:46'),
('109cd9b2fea07a6f4309c58a63e3cfa2130dcf7a4809158388a08479f3f4b3bc3f98452ef992e511', 2, 1, 'myApp', '[]', 0, '2019-12-27 17:49:32', '2019-12-27 17:49:32', '2020-12-27 11:49:32'),
('cd91538313f77e73e5b2755beafd7a239e568752196b4c4763e3a9e9798831260796cd868be3b6d7', 2, 1, 'myApp', '[]', 0, '2019-12-27 17:51:10', '2019-12-27 17:51:10', '2020-12-27 11:51:10'),
('850d61ab21bb8c8baab189e9659bee54aba1a51231a8326c58f4d31e2b9d6f676ee07e00a6facfbe', 2, 1, 'myApp', '[]', 0, '2019-12-27 17:58:15', '2019-12-27 17:58:15', '2020-12-27 11:58:15'),
('63de9b9fd3534d5ac4b380a789eeb5fafdb309f891cb3feacc0631ab1098b7e7434a045c640af0c6', 1, 1, 'myApp', '[]', 0, '2019-12-27 18:02:07', '2019-12-27 18:02:07', '2020-12-27 12:02:07'),
('d443ea8ece623e1e36136f1f7a71a6ea016b454c301c301ea17513435a1002cf343d90ffb3e6458c', 1, 1, 'myApp', '[]', 0, '2019-12-27 18:10:24', '2019-12-27 18:10:24', '2020-12-27 12:10:24'),
('e42b8d549382c0acff7b578d979919d84ded309cc9f2159ecadef9ebb711c300573459f6af48e649', 1, 1, 'myApp', '[]', 0, '2019-12-27 18:11:18', '2019-12-27 18:11:18', '2020-12-27 12:11:18'),
('f0a30053f36afc9565338407c91a918fb867512dd52cb34e590dcbd0fcfdd10c383f14bd44a30715', 1, 1, 'myApp', '[]', 0, '2019-12-27 18:15:12', '2019-12-27 18:15:12', '2020-12-27 12:15:12'),
('1c6a95e70b86d9508862f88c91c42b1f0ac69d0cb61c36bec54579e2b0342722e01f09187667352b', 1, 1, 'myApp', '[]', 0, '2019-12-27 18:15:51', '2019-12-27 18:15:51', '2020-12-27 12:15:51'),
('6610e57a548edfd662203a37f9ef01debad15e1f9ddecca19732adea030e641d3b79d7ee42dbc900', 2, 1, 'myApp', '[]', 0, '2019-12-27 18:20:41', '2019-12-27 18:20:41', '2020-12-27 12:20:41'),
('ca28c08f1f5c8b3adc5e4618e42b8c167d8edba5983833134a66264df46e3bf961ad0d5d824c1738', 2, 1, 'myApp', '[]', 0, '2019-12-27 18:21:09', '2019-12-27 18:21:09', '2020-12-27 12:21:09'),
('671043fb3ddc029cb497534cec6b8e2f0bc06ef0e62e75a7acde277afbf2e153762a4eacd82516c8', 2, 1, 'myApp', '[]', 0, '2019-12-27 18:22:08', '2019-12-27 18:22:08', '2020-12-27 12:22:08'),
('277c62b00a1760c726d3db6b71271df91e025c87045ea5134fa9b39f589a381ab17840c67e8c34c1', 1, 1, 'myApp', '[]', 0, '2019-12-27 18:25:01', '2019-12-27 18:25:01', '2020-12-27 12:25:01'),
('69950c4eff58269f6cda6bd13a08757fd7ecd5d57265d45643077573fe52c5d48e53472172a3a8b7', 2, 1, 'myApp', '[]', 0, '2019-12-27 18:27:01', '2019-12-27 18:27:01', '2020-12-27 12:27:01'),
('47f602ec7cc6dc2ae2fe841ac58fec5d8a9c24272459ba44dd916e1cba277393197a76613195a754', 1, 1, 'myApp', '[]', 0, '2019-12-27 18:37:18', '2019-12-27 18:37:18', '2020-12-27 12:37:18'),
('7f2512016d2705808bc8b0b607aa5111bdf428d612332dd04627a653b2878bc00d48f8168a93d497', 1, 1, 'myApp', '[]', 0, '2019-12-27 18:39:35', '2019-12-27 18:39:35', '2020-12-27 12:39:35'),
('43afc3ebf263d8ee629e52f5b1386617de576f45a80bcd68ebed1ca45bf65757c728fffc43601dd7', 2, 1, 'myApp', '[]', 0, '2019-12-27 19:23:50', '2019-12-27 19:23:50', '2020-12-27 13:23:50'),
('ce122d5b15932626bd023a525fe8d3de30cb04bf1d3630b208958edb32f17ce4fe723e7773ad95e9', 2, 1, 'myApp', '[]', 0, '2019-12-27 19:25:15', '2019-12-27 19:25:15', '2020-12-27 13:25:15'),
('5fab6cd39fe2a7cfd1b1ee0307d6721c4bacae0e5f6436a69c76c69e46c283166acfa829a3d02bbc', 2, 1, 'myApp', '[]', 0, '2019-12-27 19:25:46', '2019-12-27 19:25:46', '2020-12-27 13:25:46'),
('d3e77628a8d5208ba9590c971f5c323b6e2fefd87fff7b5fbe1e4a60b77edb87ec635f9130067a6e', 2, 1, 'myApp', '[]', 0, '2019-12-27 19:26:06', '2019-12-27 19:26:06', '2020-12-27 13:26:06'),
('6cc83fc9164490489c920d67513fc11945a1fb71cba7b071de1a77e1783e04034764c0c2e0e43fe5', 1, 1, 'myApp', '[]', 0, '2019-12-27 19:29:00', '2019-12-27 19:29:00', '2020-12-27 13:29:00'),
('bb6a0feab439f95539f448d4e5dca1e52567d4082ed990ef1028928580a70bc0ad3497f3b980def4', 1, 1, 'myApp', '[]', 0, '2019-12-27 19:47:45', '2019-12-27 19:47:45', '2020-12-27 13:47:45'),
('6a34da0769a73f7a6c319a49317430285653ae0a967d741048572f418a7b804d8459edf2c8fc2abc', 1, 1, 'myApp', '[]', 0, '2019-12-27 19:47:59', '2019-12-27 19:47:59', '2020-12-27 13:47:59'),
('16aa2cd940971f63f5c5f17d86b26689d6572df8a94e54d6c360e2c84c732c969dc7946f2286313a', 1, 1, 'myApp', '[]', 0, '2019-12-27 20:00:02', '2019-12-27 20:00:02', '2020-12-27 14:00:02'),
('ef394fa3d9ae7ce744ab4b82499e5e461d786e78e89d3631c0e855f17dcb889780a7d4ece503662b', 1, 1, 'myApp', '[]', 0, '2019-12-27 20:00:19', '2019-12-27 20:00:19', '2020-12-27 14:00:19'),
('bab2050d8049ca73a9ff56398276236f4ee0fe2b7e9d6e2f556d49dad136f941e1a15e15af5a91ad', 1, 1, 'myApp', '[]', 0, '2019-12-27 20:04:40', '2019-12-27 20:04:40', '2020-12-27 14:04:40'),
('ca2cf7559c528266d6915710e07c21d74a41eecdf3748e53109c80bea77cfb4fd0555fdf8647c996', 1, 1, 'myApp', '[]', 0, '2019-12-27 20:15:28', '2019-12-27 20:15:28', '2020-12-27 14:15:28'),
('656408d03378346fa08ef060a5cc7c30faae9a6f5312b26f712bd5f40fe2f84078b16178686597c0', 1, 1, 'myApp', '[]', 0, '2019-12-27 20:32:37', '2019-12-27 20:32:37', '2020-12-27 14:32:37'),
('ce78284fb0957fb30b5997b4e309fb2239ef0c46c949ed0d39cca0d3fd4cf3565518bd6f9e6d9c80', 1, 1, 'myApp', '[]', 0, '2019-12-28 00:12:22', '2019-12-28 00:12:22', '2020-12-27 18:12:22'),
('d4ab4080160420c9ebd54ad39d1fc9306b1cca1308819b255a07e99de1b1aee6fe0213c8bbaf83de', 1, 1, 'myApp', '[]', 0, '2019-12-28 23:46:36', '2019-12-28 23:46:36', '2020-12-28 17:46:36'),
('6bb47e1a476fd1645f7c8d531a02452b29c79f600a0503d8e664efed0b98da88ce26b4f112829cfe', 1, 1, 'myApp', '[]', 0, '2019-12-28 23:50:54', '2019-12-28 23:50:54', '2020-12-28 17:50:54'),
('147aa2dc600241653d8698e38e3867b2f3f46676f6a22b7231c03cd3a2cb6ed32d7ffc8b6cb248ff', 1, 1, 'myApp', '[]', 0, '2019-12-29 00:33:32', '2019-12-29 00:33:32', '2020-12-28 18:33:32'),
('402ce5c5798cbc320b405fd9373046e913fe9f24174a7441470cbfd87b5419ff67b9143f8fa6fd65', 1, 1, 'myApp', '[]', 0, '2019-12-29 00:37:39', '2019-12-29 00:37:39', '2020-12-28 18:37:39'),
('703095c523a4e67f8ae06d7a5c75651ce16b64f0b4c64dcf232df0d9df1db1646f1be086944dba6d', 1, 1, 'myApp', '[]', 0, '2019-12-29 00:37:49', '2019-12-29 00:37:49', '2020-12-28 18:37:49'),
('003afa22efb1cd0f2777d6771f46e9711b012bf27f0f8117ba17f400e415ced8a6cf6efe79a704a2', 1, 1, 'myApp', '[]', 0, '2019-12-29 00:37:55', '2019-12-29 00:37:55', '2020-12-28 18:37:55'),
('689b845109f16779ccb368c05a4e1eb638a9dba6b13dd52d38243ce0ff8422b646e95e1f00be4001', 1, 1, 'myApp', '[]', 0, '2019-12-29 00:38:34', '2019-12-29 00:38:34', '2020-12-28 18:38:34'),
('4466e32737adcb04ae22ce09c5f07b1870270f12c3a0849840faa8090385442acd7026f36a778a69', 1, 1, 'myApp', '[]', 0, '2019-12-29 00:40:23', '2019-12-29 00:40:23', '2020-12-28 18:40:23'),
('0d5bd0a0329d5b62809062b2acd5374e7960c49cb60641c37724c0a05b91e7766f864dcb3b5d1f60', 1, 1, 'myApp', '[]', 0, '2019-12-29 00:42:29', '2019-12-29 00:42:29', '2020-12-28 18:42:29'),
('539704a0c2f58c50ec312bfe35ff08106edb1c796d964cce5f75ed5a173375cea2809fb4316abe37', 1, 1, 'myApp', '[]', 0, '2019-12-29 15:45:08', '2019-12-29 15:45:08', '2020-12-29 09:45:08'),
('a8b04409b473c8a2ae0483ee54a8066bec92a6ff563c1523c1233817b3707ebb94bc4b116ff9f587', 1, 1, 'myApp', '[]', 0, '2019-12-29 16:06:12', '2019-12-29 16:06:12', '2020-12-29 10:06:12'),
('c079c2cb5e328a5cda389b938195bbc19cb005b9d77596d766b9fa4934d3827b62bfd72e0374c8fc', 2, 1, 'myApp', '[]', 0, '2019-12-30 11:31:08', '2019-12-30 11:31:08', '2020-12-30 05:31:08'),
('9646390399a08c0a58e2501191773638a4a01c513a3c9d8cecb5c439d291fae9169cdfea224c5f22', 1, 1, 'myApp', '[]', 0, '2019-12-30 13:03:03', '2019-12-30 13:03:03', '2020-12-30 07:03:03'),
('98ef4c454c388d8a1f3fb6c472408e846237caf0b58fc78ee3217966ea02bdbdaa4318ef8f95e1a4', 2, 1, 'myApp', '[]', 0, '2019-12-30 13:40:22', '2019-12-30 13:40:22', '2020-12-30 07:40:22'),
('0e1ed8dbea1976f4d8f17668f4d4ee8d89c7f1578406b59e77c84a4335d7c3f98f8c76b2073f9fbe', 2, 1, 'myApp', '[]', 0, '2019-12-30 13:43:56', '2019-12-30 13:43:56', '2020-12-30 07:43:56'),
('481b6856c63dd4f5265b082ab22be3b86312c035883c38533e3988ed1cbfce38d4b7de9cbf83fb0e', 2, 1, 'myApp', '[]', 0, '2019-12-30 15:49:04', '2019-12-30 15:49:04', '2020-12-30 09:49:04'),
('694984cc53621e9295c8dd371ff1992a197adbfb7a8fb96bc118d52c1457b6581799a37cbbdee885', 2, 1, 'myApp', '[]', 0, '2019-12-30 15:49:10', '2019-12-30 15:49:10', '2020-12-30 09:49:10'),
('35c1488fe7f2a641aea49449c428c5c746a0a8e38d81f9545f825690684661592e505d3a37070c66', 2, 1, 'myApp', '[]', 0, '2019-12-30 15:54:02', '2019-12-30 15:54:02', '2020-12-30 09:54:02'),
('15cd862e7426cc85f03c69d412e70baae1918557158c922741cc21c415685d0250fd5f4bb716b6a1', 2, 1, 'myApp', '[]', 0, '2019-12-30 15:56:34', '2019-12-30 15:56:34', '2020-12-30 09:56:34'),
('887a8e97d287ebd13197f9c3512e184a26d72a36cb44a1514edde011c1077024238aa28cfc51a87e', 2, 1, 'myApp', '[]', 0, '2019-12-30 15:57:04', '2019-12-30 15:57:04', '2020-12-30 09:57:04'),
('dddfea75372dd7c895372ac0ab9bc0afc29c18a8b2344c125414fb5887c4d1718bbe2cda85d8dae6', 2, 1, 'myApp', '[]', 0, '2019-12-30 16:04:53', '2019-12-30 16:04:53', '2020-12-30 10:04:53'),
('b2f1ae30fe04cd34eb9480df2230be6299a54ec684357ff8393645eeced14783d112dc5bdf60c7ec', 1, 1, 'myApp', '[]', 0, '2019-12-30 16:13:26', '2019-12-30 16:13:26', '2020-12-30 10:13:26'),
('ed236b7c4d944edf50b3113a388e7bed2fcc99cf830073ae749855653e4f05b42c9905e287f44579', 2, 1, 'myApp', '[]', 0, '2019-12-30 16:21:50', '2019-12-30 16:21:50', '2020-12-30 10:21:50'),
('dee74c4364b83c3ab832911549f2db46457fd9aaf88a8a5e382f86ea365664ed1e52c5f05f0a2ed4', 1, 1, 'myApp', '[]', 0, '2019-12-30 16:33:01', '2019-12-30 16:33:01', '2020-12-30 10:33:01'),
('594367a0192f70ffd8e55c1ed3fa817251ea9a80ea92fc349b0c0e11a93d73bf7489f45e93c7e978', 1, 1, 'myApp', '[]', 0, '2019-12-30 16:36:51', '2019-12-30 16:36:51', '2020-12-30 10:36:51'),
('670c8c66ca85d3d9bbf7218ce8a55689f9a141bbb87043c3245512d1950d5b3a4b7d5849efcd5f03', 2, 1, 'myApp', '[]', 0, '2019-12-30 16:43:40', '2019-12-30 16:43:40', '2020-12-30 10:43:40'),
('971120bef5324b626e38cc907168d75c34d535e05407a39b9c31e0536d5364f10db8891e1da051b2', 1, 1, 'myApp', '[]', 0, '2019-12-30 16:50:22', '2019-12-30 16:50:22', '2020-12-30 10:50:22'),
('5239131e80929ed5c8fc9b508e41d966c3b6865621e5c66e1a313178bd1acd456538d43534849b6b', 2, 1, 'myApp', '[]', 0, '2019-12-30 16:50:33', '2019-12-30 16:50:33', '2020-12-30 10:50:33'),
('6b4d0312d7939556e3f68af4fbf4ace6dcea6888e40c6e5563b2c627a0349430acf77211c0210ff8', 2, 1, 'myApp', '[]', 0, '2019-12-30 16:55:12', '2019-12-30 16:55:12', '2020-12-30 10:55:12'),
('fb29d0a0bd84b996748fabcfc010b3b53d02dd121188c449998241248cd8b55065391fa13524200f', 2, 1, 'myApp', '[]', 0, '2019-12-30 17:10:43', '2019-12-30 17:10:43', '2020-12-30 11:10:43'),
('4a0e3396c8c411abd02e21a42503f34028b0427ec85f0e360203ecd43bda7675d4b973899f65fd85', 2, 1, 'myApp', '[]', 0, '2019-12-30 17:27:59', '2019-12-30 17:27:59', '2020-12-30 11:27:59'),
('a00d430dd6fa55e68ddac6c509eb98d0dfaaae13d58fea25a106f05ccb498f97830338253cc85e5a', 1, 1, 'myApp', '[]', 0, '2019-12-30 18:18:50', '2019-12-30 18:18:50', '2020-12-30 12:18:50'),
('f5d81c3e8dba4bddaede919be51a7ed7a4217280c0a77f0b47f2ed09974f7a903af0e64ff8b077fc', 2, 1, 'myApp', '[]', 0, '2019-12-30 18:33:32', '2019-12-30 18:33:32', '2020-12-30 12:33:32'),
('c70241fcbce0a60529b165b922f97f5ad3f591e8e7dabf3b5cc327d5e243a3ee50a83151ea7be79b', 2, 1, 'myApp', '[]', 0, '2019-12-30 18:48:27', '2019-12-30 18:48:27', '2020-12-30 12:48:27'),
('7420e32ffa8d1b83aa1c310454e5570aa7911a9cae834344fe1421bb757231319843afca15dff3d3', 1, 1, 'myApp', '[]', 0, '2019-12-31 00:11:52', '2019-12-31 00:11:52', '2020-12-30 18:11:52'),
('83c716fc4b1c4dcf53bd24d26406a289eb4fc98d6820eeaeeb650dd5fc9fa13d5c07887d998b0c2c', 2, 1, 'myApp', '[]', 0, '2019-12-31 11:10:10', '2019-12-31 11:10:10', '2020-12-31 05:10:10'),
('56e874d43a88b2eb4ed4c82517308541a0b6dd8c9d83744d0f4835278eee8d2beb4a076e44d0fc93', 2, 1, 'myApp', '[]', 0, '2019-12-31 11:27:07', '2019-12-31 11:27:07', '2020-12-31 05:27:07'),
('61d27d10a9d3865896a30a3d9076f7dee1eac2ac3f448f560b58e90a7aa6a85a442b92c15cf8911e', 1, 1, 'myApp', '[]', 0, '2019-12-31 12:42:05', '2019-12-31 12:42:05', '2020-12-31 06:42:05'),
('30e7be0fdb129f4d2e0b20215e4ccbf2b4f366afe0f1633a0e85a06d204ad2af4704130279b7be66', 1, 1, 'myApp', '[]', 0, '2019-12-31 12:42:35', '2019-12-31 12:42:35', '2020-12-31 06:42:35'),
('637b589e1afdf7aa41fdf5470c3979bb96fa8778c3f2fd313716fbf56335419aa46be829b2eed7c5', 3, 1, 'myApp', '[]', 0, '2019-12-31 12:46:55', '2019-12-31 12:46:55', '2020-12-31 06:46:55'),
('300ac1263870014b10351c11f9d3f159e22ace426699e0008fb5191b8ff9e0f524f48bf07be7314d', 1, 1, 'myApp', '[]', 0, '2019-12-31 12:48:14', '2019-12-31 12:48:14', '2020-12-31 06:48:14'),
('b0ef55683a3b9e44be4f17084ab01f1da1f3cc5dbc8020ab0872a7abdbd23cdd30d1b24108192b4c', 1, 1, 'myApp', '[]', 0, '2019-12-31 12:56:09', '2019-12-31 12:56:09', '2020-12-31 06:56:09'),
('be20d8155c8de2a464c3eab0bee59cc59e12a3d07934295d9d7734c59613bd6c53c781723414e89c', 2, 1, 'myApp', '[]', 0, '2019-12-31 13:02:31', '2019-12-31 13:02:31', '2020-12-31 07:02:31'),
('5e0dae89b182e7d103bac5b0d2c8d012510c25205dcb056c505f6ff72cbe73430ceec5ec7810c0b4', 1, 1, 'myApp', '[]', 0, '2019-12-31 13:05:25', '2019-12-31 13:05:25', '2020-12-31 07:05:25'),
('f8db3e57b3a425dca02b0ccf7e0bda2a901e42fb48a7f1cf11c916e65c5b32bbda3eb2fbceb0b025', 2, 1, 'myApp', '[]', 0, '2019-12-31 13:20:06', '2019-12-31 13:20:06', '2020-12-31 07:20:06'),
('df2ee8fbf2263c97b162b0a58df7a49f0bb14fb3af5f430fc00f225a655cb1d8e6454d17e95fc9e9', 1, 1, 'myApp', '[]', 0, '2019-12-31 13:24:24', '2019-12-31 13:24:24', '2020-12-31 07:24:24'),
('a9b5391bd64f45765ac012415899d3e2fa5d71c6763891638fe868c432129c69b1cc6a271d601df7', 2, 1, 'myApp', '[]', 0, '2019-12-31 19:18:52', '2019-12-31 19:18:52', '2020-12-31 13:18:52'),
('1a571833d1aa54bd4b88e89f4302f0867559a5b18bc576ef18b05fd3dc53e9ec86d79561f168aa65', 1, 1, 'myApp', '[]', 0, '2020-01-01 01:41:16', '2020-01-01 01:41:16', '2020-12-31 19:41:16'),
('837e7849b266923e0e0c5edbb4ba32cec98df9a6345f0a4ecfa85299f3ec3f1c1271c52cbb99fa20', 1, 1, 'myApp', '[]', 0, '2020-01-01 02:07:00', '2020-01-01 02:07:00', '2020-12-31 20:07:00'),
('203913a12833b538b2a82ba1f0a352e8e01d9e82753188147ded2ec5b5cc6aeca3a211f571c7f240', 1, 1, 'myApp', '[]', 0, '2020-01-01 02:26:52', '2020-01-01 02:26:52', '2020-12-31 20:26:52'),
('fda41398389e7eda04aae9a446ce3b2840d327141e2945e9cf0b2709cc2f3862a821cfd13e7e4c8e', 2, 1, 'myApp', '[]', 0, '2020-01-01 13:57:27', '2020-01-01 13:57:27', '2021-01-01 07:57:27'),
('015196a41c163dc4697730df319696aca8669f2de04bed867e0565815586d73726c2923a25113b8d', 2, 1, 'myApp', '[]', 0, '2020-01-01 15:04:05', '2020-01-01 15:04:05', '2021-01-01 09:04:05'),
('c571163496bba4c3f24f5efd183ce26c934072f1dc12db7fa170ba1c82a93e7f64f41a628ce7236a', 2, 1, 'myApp', '[]', 0, '2020-01-01 15:33:57', '2020-01-01 15:33:57', '2021-01-01 09:33:57'),
('b4493b803e7d16277c82ce8f88fad7738d23ec4acc9074c4adf95341ac9f3c46435edb9cf80dca65', 2, 1, 'myApp', '[]', 0, '2020-01-01 15:34:12', '2020-01-01 15:34:12', '2021-01-01 09:34:12'),
('dd9eb0a7738d3acd0606980e867a1d78605545344306299cdd27f211daa02dfc3f9876b2315adffc', 2, 1, 'myApp', '[]', 0, '2020-01-01 15:34:24', '2020-01-01 15:34:24', '2021-01-01 09:34:24'),
('04be51dfc844280b40e91c6701ffb276f5bee4a28095817ebe7c13134dfda08c5954b3e909b43bb6', 2, 1, 'myApp', '[]', 0, '2020-01-01 15:35:15', '2020-01-01 15:35:15', '2021-01-01 09:35:15'),
('483bff5b3ad97c7ee5e8b88efb2e053a6dddb19d6796ee69bcce6aa2f01f53736235b11b1c6628b0', 2, 1, 'myApp', '[]', 0, '2020-01-01 15:36:23', '2020-01-01 15:36:23', '2021-01-01 09:36:23'),
('c3e50e384ac3ec28415e726c25e346c25dd4fda4b5824438667d5a6bc5b80e3c8c549a38b5fec64a', 2, 1, 'myApp', '[]', 0, '2020-01-01 15:36:27', '2020-01-01 15:36:27', '2021-01-01 09:36:27'),
('472c5876004c251b0201888a050f3865ac119d8ebd6646c4eace34b2e1fed4044bd894af33f74210', 2, 1, 'myApp', '[]', 0, '2020-01-01 15:37:52', '2020-01-01 15:37:52', '2021-01-01 09:37:52'),
('749a8b2fee4b13ef290ecc029557572149b138e38ee03f347400bf8d3e4417ff0c8653d11ee43dbd', 2, 1, 'myApp', '[]', 0, '2020-01-01 15:38:16', '2020-01-01 15:38:16', '2021-01-01 09:38:16'),
('f5d3f21a893d488b862c49bea66f25b57542ba5f054be71d065841083168fbbcebf213a2caf99832', 1, 1, 'myApp', '[]', 0, '2020-01-01 15:39:50', '2020-01-01 15:39:50', '2021-01-01 09:39:50'),
('d84c84023253d113e42f22c9434f7166855c950c1ee6d28e926072dc227edadbfedf22d87616728d', 2, 1, 'myApp', '[]', 0, '2020-01-01 15:46:08', '2020-01-01 15:46:08', '2021-01-01 09:46:08'),
('8c47d1fe21d9989b1b0ee4aba1f0063b1bc2f3a3106cef605909e68564a84047b1a60928332244c1', 2, 1, 'myApp', '[]', 0, '2020-01-01 16:03:12', '2020-01-01 16:03:12', '2021-01-01 10:03:12'),
('06e68ea23874d77953a09a768baaab048e51e17313d8075f12482976b4e95614562481494cad3e8f', 2, 1, 'myApp', '[]', 0, '2020-01-01 16:17:36', '2020-01-01 16:17:36', '2021-01-01 10:17:36'),
('018bed86952ff35a1ebcc9859df1a13a932fe1346a027eef46c2a1e2c7a7aaaad2748a733ee13aa9', 2, 1, 'myApp', '[]', 0, '2020-01-01 16:19:06', '2020-01-01 16:19:06', '2021-01-01 10:19:06'),
('0baf3730ede1708cc3aa4ec71aef9e2f5e7adb7989c4e50a9ec4073f607261d1357f20601aa2903d', 2, 1, 'myApp', '[]', 0, '2020-01-01 16:25:31', '2020-01-01 16:25:31', '2021-01-01 10:25:31'),
('3998c7e957301deb2867d2d029a4bd77f7743d153fc0057a9ad6dcd7a1a1254aad8c6f2d9c5f7a5d', 2, 1, 'myApp', '[]', 0, '2020-01-01 16:31:49', '2020-01-01 16:31:49', '2021-01-01 10:31:49'),
('2181a09973d880764cdba8ed5bb3326938bf9b87a2954bf223a95d219a5e6690b2c69f2b1d500e1d', 2, 1, 'myApp', '[]', 0, '2020-01-01 16:37:42', '2020-01-01 16:37:42', '2021-01-01 10:37:42'),
('f1cdb24e8974d158f7e4e3c950780029c1c2a1cab499bfca5214c7ae431d17798fd06a90a4eea199', 2, 1, 'myApp', '[]', 0, '2020-01-01 16:45:08', '2020-01-01 16:45:08', '2021-01-01 10:45:08'),
('d8091c80eb52cea4fdf6839048efa6e9772c045a055a3ffe8ed0b1d5f23a11ac8784be01c2c1bb5b', 2, 1, 'myApp', '[]', 0, '2020-01-01 17:06:24', '2020-01-01 17:06:24', '2021-01-01 11:06:24'),
('239c20d7337d26a0cf1f09527f323fd8b1dfb0028d4344417cd4f8d609e7bceb21fa1759fde6e3aa', 2, 1, 'myApp', '[]', 0, '2020-01-01 17:07:37', '2020-01-01 17:07:37', '2021-01-01 11:07:37'),
('f2958a3871d1278a3c71f81b4ed01a54ff4842c837e80e3851d8d736a9a88a389bc5d4dc4ca9f7f4', 2, 1, 'myApp', '[]', 0, '2020-01-01 18:24:52', '2020-01-01 18:24:52', '2021-01-01 12:24:52'),
('5c0d611452a5ad3df0a1798b9d32d0466c891c8077476e02cfbc5104bdb8ae266f9c6756471ae7a8', 1, 1, 'myApp', '[]', 0, '2020-01-01 18:45:31', '2020-01-01 18:45:31', '2021-01-01 12:45:31'),
('d14bc8ab36570e37e1bd3641a1c302bb7426425fccfc6e9127542d7b139ba15a6cbcfcb959a777d8', 1, 1, 'myApp', '[]', 0, '2020-01-01 19:35:20', '2020-01-01 19:35:20', '2021-01-01 13:35:20'),
('700202ebf8666651e7e0674fe7740a92fcd79735d017b8b90b008160c7ea1bf94ce944627c63d58e', 7, 1, 'myApp', '[]', 0, '2020-01-01 19:38:57', '2020-01-01 19:38:57', '2021-01-01 13:38:57'),
('fcd84d47de08ed104fd52ec7b6f7386b027693b6b329c3e02f046d8e1f905b0433f74e3f906e228a', 4, 1, 'myApp', '[]', 0, '2020-01-02 11:16:57', '2020-01-02 11:16:57', '2021-01-02 05:16:57'),
('87ad6d0c2ad14df4effb9de07f62a360ce43aa7649ad735b2ba7c8663c0332f9e70ab75685342915', 4, 1, 'myApp', '[]', 0, '2020-01-02 11:19:40', '2020-01-02 11:19:40', '2021-01-02 05:19:40'),
('9134de062b91c9c52357d9546a43a00e06dca0b0b64be02471922ee3c582997d69f69ab8d6e1c5a6', 5, 1, 'myApp', '[]', 0, '2020-01-02 14:00:27', '2020-01-02 14:00:27', '2021-01-02 08:00:27'),
('ae1f593fa3075d8c86276dcab8fe58f4b9e7ef7322efbebdb707a3310a8bdb5220ba97092abf1c1d', 2, 1, 'myApp', '[]', 0, '2020-01-02 14:16:32', '2020-01-02 14:16:32', '2021-01-02 08:16:32'),
('0191a9207495a2567c5f59ac06b0a85ff164d6a31b03bce6d2f9f14f211f90ca7fb8136bbf23e247', 2, 1, 'myApp', '[]', 0, '2020-01-02 14:20:40', '2020-01-02 14:20:40', '2021-01-02 08:20:40'),
('91f65726424f5ffd76e1ee95f96011c8f79ac0dbc1c46980a460c8914a327e3585d64b8de8199694', 2, 1, 'myApp', '[]', 0, '2020-01-02 14:28:58', '2020-01-02 14:28:58', '2021-01-02 08:28:58'),
('0dc8908d141cf635e1f71fd17ce9520fedbaf6fd8037685a6869a6f1f00455efacd16a9538bcc76d', 4, 1, 'myApp', '[]', 0, '2020-01-02 14:40:03', '2020-01-02 14:40:03', '2021-01-02 08:40:03'),
('54d67f0dc39270e85afa8ef27867fff7fed9fcd5656d5dc4dd22d6f4f21fdc738c0598bddbfe5215', 2, 1, 'myApp', '[]', 0, '2020-01-02 15:08:35', '2020-01-02 15:08:35', '2021-01-02 09:08:35'),
('4f9463b6c5a60501c520b15dfaedd8e0eefa35e3ba5e5363c996ab2d2386ee21211a42d4992d5bc5', 4, 1, 'myApp', '[]', 0, '2020-01-02 15:10:04', '2020-01-02 15:10:04', '2021-01-02 09:10:04'),
('a703096d31b173b4f373677a02e2a5ddddf58c2972aafd00b188e0c58de80561fa779ec4efa994ec', 2, 1, 'myApp', '[]', 0, '2020-01-02 15:21:29', '2020-01-02 15:21:29', '2021-01-02 09:21:29'),
('743cae3b59284d868e866ca82ab29736b57b5ac6b05f526c3771fa620941f2f85a4c2209a15b1ac4', 4, 1, 'myApp', '[]', 0, '2020-01-02 15:31:17', '2020-01-02 15:31:17', '2021-01-02 09:31:17'),
('944c6ef66481066d9d1925a20e13d63528307e6b52a3d21b9049197221d367cbb4d2c5653cf6f8ba', 1, 1, 'myApp', '[]', 0, '2020-01-02 15:53:03', '2020-01-02 15:53:03', '2021-01-02 09:53:03'),
('f5fd5f2011466c4089da042fdf9d8c30f61d64f2b9e129ec0437a777d4370ff3a55751b8493b5856', 2, 1, 'myApp', '[]', 0, '2020-01-02 17:03:26', '2020-01-02 17:03:26', '2021-01-02 11:03:26'),
('c2b363c11dadddfa69fbdfa191a71809132e68dfb47aa1c89cdcc7a419a0788410d09d851ea73f00', 4, 1, 'myApp', '[]', 0, '2020-01-02 17:19:24', '2020-01-02 17:19:24', '2021-01-02 11:19:24'),
('c0763f344e08f43be6e76131a0f7bc5010ae6ee4bb714f38b934d57df5b9df0a0ba81c4b11569e9c', 1, 1, 'myApp', '[]', 0, '2020-01-02 17:51:30', '2020-01-02 17:51:30', '2021-01-02 11:51:30'),
('a36b990f375a6f1c7b89ede75fea9b22c86fa4a4b792a7e8d993d3a6b445d4e0faf6d7974ca6361e', 1, 1, 'myApp', '[]', 0, '2020-01-02 17:52:47', '2020-01-02 17:52:47', '2021-01-02 11:52:47'),
('41e73224c31ace30b82ac3c4138e55ef44959fde2e8f9217305e50c77e3264c9bbe20bf3faea0cf1', 5, 1, 'myApp', '[]', 0, '2020-01-02 18:01:07', '2020-01-02 18:01:07', '2021-01-02 12:01:07'),
('dc4acb2d9195ba2ce91b90c46fb574c400043214b73c96364aa0f0feaf7ce8a4c35e9eabb5c23de5', 5, 1, 'myApp', '[]', 0, '2020-01-02 18:01:44', '2020-01-02 18:01:44', '2021-01-02 12:01:44'),
('248ac0b3528a0b9691cd804c584528028a7a1394fa690f232214a1b3311a17ba343a93d92c09c665', 5, 1, 'myApp', '[]', 0, '2020-01-02 18:03:10', '2020-01-02 18:03:10', '2021-01-02 12:03:10'),
('8c390f274442fb814616d1b35ec539bcdad24a9c06c92c18e449371c8c2b50cd8af5b8c1c1be12d3', 2, 1, 'myApp', '[]', 0, '2020-01-02 18:15:07', '2020-01-02 18:15:07', '2021-01-02 12:15:07'),
('452fc054eb3c89ab99331ff5c054839e08e3500bbaa5f0132a74e6e465aa13c0e5523f735a1b1263', 5, 1, 'myApp', '[]', 0, '2020-01-02 18:20:44', '2020-01-02 18:20:44', '2021-01-02 12:20:44'),
('d0feaed90900f6921b9ee6b2512d537749ea96e523aa18a76fb1ec7edf379d180f4ac8abfcd3c084', 1, 1, 'myApp', '[]', 0, '2020-01-02 18:20:46', '2020-01-02 18:20:46', '2021-01-02 12:20:46'),
('271cff828c2b64dea85dad77c839abae70705451331ed542ab91f45076c47c5a2c57694c677ac935', 1, 1, 'myApp', '[]', 0, '2020-01-02 18:23:23', '2020-01-02 18:23:23', '2021-01-02 12:23:23'),
('2f3bd037cb81d66909d6b2821beceafd5f59d47c623b632724ff3e90e46c5ad3e51ea35b74bb05b4', 5, 1, 'myApp', '[]', 0, '2020-01-02 18:24:24', '2020-01-02 18:24:24', '2021-01-02 12:24:24'),
('b77126f4a28c89bff5a9d1dda37be203677b5504631ac8b18bcbeb02f4bcc205994f9848bfa6b645', 5, 1, 'myApp', '[]', 0, '2020-01-02 18:26:15', '2020-01-02 18:26:15', '2021-01-02 12:26:15'),
('65f59c94c84416114d7213d7ad38c0897d0a2d6e282506840587cc9b089f3261c0d202ce520f27df', 5, 1, 'myApp', '[]', 0, '2020-01-02 18:30:13', '2020-01-02 18:30:13', '2021-01-02 12:30:13'),
('be22dee4ebc89b687f37955849c1406d3a71e41995591e45c2a4e38892b8aa4dd6f0d4e1bebb7daa', 5, 1, 'myApp', '[]', 0, '2020-01-02 18:31:09', '2020-01-02 18:31:09', '2021-01-02 12:31:09'),
('d1f9be075bec549288183ea49fc8b8208965e8e51020d948e7c623e016c483ca46d8d0eacbc7d11f', 5, 1, 'myApp', '[]', 0, '2020-01-02 18:33:52', '2020-01-02 18:33:52', '2021-01-02 12:33:52'),
('25b998a1fb64e5dc7c250ab0054c6e33ba06c210d474a2595d4fe5470c068d1806ad02f406a00364', 2, 1, 'myApp', '[]', 0, '2020-01-02 19:18:24', '2020-01-02 19:18:24', '2021-01-02 13:18:24'),
('201da13ba5ab4bc455f6a464734c27c16d2f3e3afc12bb561cc5e8a7f582a87674db2471d21cdf0b', 1, 1, 'myApp', '[]', 0, '2020-01-03 00:19:46', '2020-01-03 00:19:46', '2021-01-02 18:19:46'),
('8cdae8db1897c9fa32876e8667bbc53c6f51d149e9adefbc9f1ed2e49baaa7fd12181a08e9aee9f2', 5, 1, 'myApp', '[]', 0, '2020-01-03 11:03:01', '2020-01-03 11:03:01', '2021-01-03 05:03:01'),
('8464b96d814e53dab6c781097514d361c9ff81996578ee85ba9b77dbaee13e3246cd3d1a7e4b05f2', 1, 1, 'myApp', '[]', 0, '2020-01-03 11:06:17', '2020-01-03 11:06:17', '2021-01-03 05:06:17'),
('1f54a5f5d498b972bab4e5022a349b43f35ff256912645b0358ea3b5e9dc9f8b5d28264f5710433f', 2, 1, 'myApp', '[]', 0, '2020-01-03 11:07:49', '2020-01-03 11:07:49', '2021-01-03 05:07:49'),
('900576b7ecc049fb8891bc41c6df44533f7db7709008f05b1108a240ca3c529398f2980fa97f4802', 1, 1, 'myApp', '[]', 0, '2020-01-03 11:12:06', '2020-01-03 11:12:06', '2021-01-03 05:12:06'),
('f52f2fbe52943957d207a445cb23ad38c0a92692f0ac43c2ba6dfcba6eab4ba516df74eb133a0ecc', 5, 1, 'myApp', '[]', 0, '2020-01-03 11:17:37', '2020-01-03 11:17:37', '2021-01-03 05:17:37'),
('eb60e777ae24a8e02e8d8bc7dea61ef61aeb538e14c5f480fd0d50cb61a2f72136ca00997371e3ea', 2, 1, 'myApp', '[]', 0, '2020-01-03 11:19:58', '2020-01-03 11:19:58', '2021-01-03 05:19:58'),
('0f80dc83e5ada3e3f0fe806940fe23ebdb970a6ebfc6382520e174bc7c458ec207989be5f77fcecc', 5, 1, 'myApp', '[]', 0, '2020-01-03 11:20:29', '2020-01-03 11:20:29', '2021-01-03 05:20:29'),
('98b23275d137369945061f4a9160386db10fae43677a8fcd9038bb879091308d225bdf0278dc7823', 2, 1, 'myApp', '[]', 0, '2020-01-03 11:22:13', '2020-01-03 11:22:13', '2021-01-03 05:22:13'),
('6ff2ad400320ec23616c10bc9279f99fcb6c5f2a66c555358d1c88aa698b857ccac8501264f78575', 5, 1, 'myApp', '[]', 0, '2020-01-03 11:23:29', '2020-01-03 11:23:29', '2021-01-03 05:23:29'),
('04c1d07d301057f58fd4447c79b13c960f65067aae3eabec6d9f09c44ef80e5340ff843bc5e2c80c', 5, 1, 'myApp', '[]', 0, '2020-01-03 11:27:34', '2020-01-03 11:27:34', '2021-01-03 05:27:34'),
('088a100adaa0b70552d7899dd3bd08782b7846c4977baf469845d243343eb9eac7fa4b4380f9e897', 5, 1, 'myApp', '[]', 0, '2020-01-03 11:28:28', '2020-01-03 11:28:28', '2021-01-03 05:28:28'),
('2dcf77433443fa2b14e6abba5fa885eff0d74314539e5e7e193f663d053e45b651851de3e9ae1328', 5, 1, 'myApp', '[]', 0, '2020-01-03 11:35:13', '2020-01-03 11:35:13', '2021-01-03 05:35:13'),
('ae410c221816a21766e4d28cb40ae89667e04d3d67989f8c730130f98856b2642383e8d35253d894', 2, 1, 'myApp', '[]', 0, '2020-01-03 11:38:01', '2020-01-03 11:38:01', '2021-01-03 05:38:01'),
('3dd7b50eb8d20358629bd9a37b6aa1f3ec596980870212c811b68520ec1404e9a798bcf9d8184f10', 4, 1, 'myApp', '[]', 0, '2020-01-03 11:39:52', '2020-01-03 11:39:52', '2021-01-03 05:39:52'),
('b9248cd80b636ea7f5cdea97fdbc91d660137806502182990b0e17b3487200036d099aefc8bcbc9d', 5, 1, 'myApp', '[]', 0, '2020-01-03 11:41:00', '2020-01-03 11:41:00', '2021-01-03 05:41:00'),
('04e6070a6bfb21452376f224f433b1477f3e4caa858c928efd1f4e88c02c28f030de528630deb281', 2, 1, 'myApp', '[]', 0, '2020-01-03 11:41:29', '2020-01-03 11:41:29', '2021-01-03 05:41:29'),
('2ff8b219cf823089d59bf2c85c3d654f6a0da15c954d009a4cb9fd92ad4960611fcf0b2dc9845eec', 5, 1, 'myApp', '[]', 0, '2020-01-03 11:42:19', '2020-01-03 11:42:19', '2021-01-03 05:42:19'),
('3557b6fa149c7463ce1afbde1082a8e72e51af82201ed388f335c9789d3cdc4cee59925ebe3818bc', 5, 1, 'myApp', '[]', 0, '2020-01-03 11:43:16', '2020-01-03 11:43:16', '2021-01-03 05:43:16'),
('8e23fd679e9135d90d33c7214eb1c9089774a0a7128d95cf6d4b9996c3cbc9e9e2acf63ac77b11a2', 4, 1, 'myApp', '[]', 0, '2020-01-03 12:01:46', '2020-01-03 12:01:46', '2021-01-03 06:01:46'),
('ca86228f55401f17bcdcc37e34de6e1a5bca2f575eff7fddf7ba222a290671e753a39310aa7c5f98', 5, 1, 'myApp', '[]', 0, '2020-01-03 12:03:54', '2020-01-03 12:03:54', '2021-01-03 06:03:54'),
('a721801ec13cd512b4788b3081e38a5baaf7bf3ed1e3ea6875e99f008d6446f83171978c037da7da', 1, 1, 'myApp', '[]', 0, '2020-01-03 12:10:57', '2020-01-03 12:10:57', '2021-01-03 06:10:57'),
('561e17695404c413271f0595487c7aab272be3ce873ffb63302718015fb51fc326232f5657b77d6c', 5, 1, 'myApp', '[]', 0, '2020-01-03 12:57:47', '2020-01-03 12:57:47', '2021-01-03 06:57:47'),
('cf6f2e08e594614298d5ee8f14e9f56a3950cbb621a99e031fe127e7d176f1978b917d69c9322bd7', 2, 1, 'myApp', '[]', 0, '2020-01-03 13:04:48', '2020-01-03 13:04:48', '2021-01-03 07:04:48'),
('12277e1f409e946a8a71912f8235d7ff058ce2d96710ce367999b4b78e2f45b4709880bbc9d8c5e7', 1, 1, 'myApp', '[]', 0, '2020-01-03 13:09:22', '2020-01-03 13:09:22', '2021-01-03 07:09:22'),
('0ffb135b7086dd66391c4349065942f0edb6a4387a16d1dc03ebf8530123794467c5e8585132de3b', 1, 1, 'myApp', '[]', 0, '2020-01-03 13:09:57', '2020-01-03 13:09:57', '2021-01-03 07:09:57'),
('649978d17689a1ca2cba3bcde0a31cf1d5519b9354a1efec13c65af079575f1c58f5125b8ced44c4', 1, 1, 'myApp', '[]', 0, '2020-01-03 13:13:13', '2020-01-03 13:13:13', '2021-01-03 07:13:13'),
('4d12db1ab45ccbe716ad9b01341fc83508f6df3b8043dd4ab6d0d843267ee6cbca13b674d9279543', 1, 1, 'myApp', '[]', 0, '2020-01-03 13:15:24', '2020-01-03 13:15:24', '2021-01-03 07:15:24'),
('35612662fdc8b0429e0283bb7aa0e3310c64f28cf5b67845337f3e558d5740aa966f64d2336a1cae', 4, 1, 'myApp', '[]', 0, '2020-01-03 13:22:30', '2020-01-03 13:22:30', '2021-01-03 07:22:30'),
('5cd8ec774bcede764c20e614aea09666315744e917ed0d644e4cd8a6f90d1b55e192d862d0934fef', 1, 1, 'myApp', '[]', 0, '2020-01-03 13:25:15', '2020-01-03 13:25:15', '2021-01-03 07:25:15'),
('cb8df40c353b793864cc09aaa84469343d8d2d0def39d27b657b31bac99c325d79d9b529829953bc', 1, 1, 'myApp', '[]', 0, '2020-01-03 13:39:35', '2020-01-03 13:39:35', '2021-01-03 07:39:35'),
('9b949080bf953c9bec6b539313265e206273f2334ecce43a4ff04fdd497c2bb87ed9922fcabf18f2', 5, 1, 'myApp', '[]', 0, '2020-01-03 13:47:43', '2020-01-03 13:47:43', '2021-01-03 07:47:43'),
('2e5496857180bfac889a72b3546e32d276ef16d778d234cee30765e27233ce90418ad72620d7d242', 5, 1, 'myApp', '[]', 0, '2020-01-03 13:52:59', '2020-01-03 13:52:59', '2021-01-03 07:52:59'),
('18d76e87f88a3c07a862b260af6896ec5e754bfde792962d5b8a688c8fc333693c90e8b9df898089', 5, 1, 'myApp', '[]', 0, '2020-01-03 13:56:42', '2020-01-03 13:56:42', '2021-01-03 07:56:42'),
('a759dcf08845208de5296d9875fc5657c869b9a6b8eaa80e1962f1d1a1111493687bbf171865dddd', 2, 1, 'myApp', '[]', 0, '2020-01-03 16:54:41', '2020-01-03 16:54:41', '2021-01-03 10:54:41'),
('af3797bd227eb532737dc604e0780326352b418dd0b1db4818f757b75e2c4bb0b562a81e679d9194', 2, 1, 'myApp', '[]', 0, '2020-01-03 17:24:19', '2020-01-03 17:24:19', '2021-01-03 11:24:19'),
('14134b4f0447f412574156106298d2c9be6a739b70558d9a7ba254fc73374334e80e6d2f8f96d5af', 2, 1, 'myApp', '[]', 0, '2020-01-03 17:25:31', '2020-01-03 17:25:31', '2021-01-03 11:25:31'),
('101abeef81a46465e4c2c4662cca74a73d8ada539a39e85d06cd5ebbdd75665e1f7eefd6ca678f26', 4, 1, 'myApp', '[]', 0, '2020-01-03 17:28:19', '2020-01-03 17:28:19', '2021-01-03 11:28:19'),
('f3ce340a135b4d77a749e16ff1acff6545ff63c6ab664352c2ef07d5e1d26ac2ed789e8f7eb4c5d9', 1, 1, 'myApp', '[]', 0, '2020-01-03 18:54:13', '2020-01-03 18:54:13', '2021-01-03 12:54:13'),
('d20a8ad2837bb89988372faab2b52d2ba362ae07b9844352f8895956de07e9e4c937dad824db9430', 7, 1, 'myApp', '[]', 0, '2020-01-03 19:32:00', '2020-01-03 19:32:00', '2021-01-03 13:32:00'),
('71d6abdda6553cf47409ffac7339c11d8d1448b5010df581adb253679a377e06ce2b619d4a623d9a', 1, 1, 'myApp', '[]', 0, '2020-01-03 23:06:44', '2020-01-03 23:06:44', '2021-01-03 17:06:44'),
('378747c9eb5322f87a7d9a5ef5e9af98ec57ae8a8f1f6430aa7d74643d5897edea7c6d04e8f89dfb', 1, 1, 'myApp', '[]', 0, '2020-01-03 23:30:17', '2020-01-03 23:30:17', '2021-01-03 17:30:17'),
('85fd1b73512804b673b734c0076c2261f9e2c75d7700441be6d2a986179f8d74c57df571ef7846c5', 1, 1, 'myApp', '[]', 0, '2020-01-03 23:53:55', '2020-01-03 23:53:55', '2021-01-03 17:53:55'),
('76d16ce3c7781a59976e308315f7f3d474967f9eb9985d1a24f894f015f637cb4fb8bbe081c2b66d', 1, 1, 'myApp', '[]', 0, '2020-01-04 00:01:03', '2020-01-04 00:01:03', '2021-01-03 18:01:03'),
('3bdc0205f58f1fe904b536d8667058a9730c43e88697a2cb2cb857b9bbeb2de35109acf5111564ef', 1, 1, 'myApp', '[]', 0, '2020-01-04 00:08:30', '2020-01-04 00:08:30', '2021-01-03 18:08:30'),
('31fed084b2454dcd3dcc0d2f041e55f4c76e14371fa12a0d3a8325063eb488f8272461a7d224d14a', 1, 1, 'myApp', '[]', 0, '2020-01-05 13:49:30', '2020-01-05 13:49:30', '2021-01-05 07:49:30'),
('3d2d89d0bd02b825fd16286fb4ca69dc8997947b15c45c74b48404a91f87746c82abb03e8eeed326', 2, 1, 'myApp', '[]', 0, '2020-01-06 11:29:11', '2020-01-06 11:29:11', '2021-01-06 05:29:11'),
('43ccf2a87ef4074f09bd42fe59aff58314afe90ef3613b4e7262104ecc2dd98f0de11da7b6230cfa', 2, 1, 'myApp', '[]', 0, '2020-01-06 11:59:48', '2020-01-06 11:59:48', '2021-01-06 05:59:48'),
('35ce4afd131348a41d531c4e2d4abbf824900ed40f5ece62cf69f9a07c1b63c65ab0d361d010b5f4', 2, 1, 'myApp', '[]', 0, '2020-01-06 12:34:28', '2020-01-06 12:34:28', '2021-01-06 06:34:28'),
('faf8e87695d943248d3d778c161c277d7fef2f2e0573c755c3b5e6af8768cf3ec1e7503faf34c36e', 2, 1, 'myApp', '[]', 0, '2020-01-06 14:29:54', '2020-01-06 14:29:54', '2021-01-06 08:29:54'),
('96c2b76f8235a88642010a517601e756c4a9525f1a43e973de78c564ddcf018834761a6bc680d245', 1, 1, 'myApp', '[]', 0, '2020-01-06 14:54:53', '2020-01-06 14:54:53', '2021-01-06 08:54:53'),
('8549f8cd8cd021fc7b3cb93b0d470cb640f0d3e6080eaf22d768575288543c0bb2a28037afb7779f', 2, 1, 'myApp', '[]', 0, '2020-01-06 15:12:01', '2020-01-06 15:12:01', '2021-01-06 09:12:01'),
('7c899cbf35ff04dc533b4fe684f0e3ffbcbacae10ee228c4d8edb9f1bc5f52b2ef152d3fd48c3ff1', 3, 1, 'myApp', '[]', 0, '2020-01-06 15:53:25', '2020-01-06 15:53:25', '2021-01-06 09:53:25'),
('4781f2d6959a10d53d50e45408148f9eade2d4d9bffd9eb2e017c886055e170a12880ed2d70b8a57', 1, 1, 'myApp', '[]', 0, '2020-01-06 16:05:20', '2020-01-06 16:05:20', '2021-01-06 10:05:20'),
('619eeaa546e7c2bf785d264a57058a71f04816202c8d7f3b9f24be8325e2139240676de761627dd8', 1, 1, 'myApp', '[]', 0, '2020-01-06 17:09:25', '2020-01-06 17:09:25', '2021-01-06 11:09:25'),
('10535a618a53d35ee805cfcc897325fc433a4049b2105582c65081a1df1532bec4ececd489458c2c', 2, 1, 'myApp', '[]', 0, '2020-01-06 18:02:35', '2020-01-06 18:02:35', '2021-01-06 12:02:35'),
('0bca7ea537a62e51ca920bf3b0e77e71bdba72e8127867361ec8f09e6f65c5e0d5be05a17c5d5b15', 2, 1, 'myApp', '[]', 0, '2020-01-06 18:54:14', '2020-01-06 18:54:14', '2021-01-06 12:54:14'),
('9af9c1bc9953e4670d76a04362779ab6ff361501d1ae72faec10e988bd96ee01b409822ce1e6aefb', 2, 1, 'myApp', '[]', 0, '2020-01-07 11:32:10', '2020-01-07 11:32:10', '2021-01-07 05:32:10'),
('305ef08c93bb7aff06c451bd969ee6a268b4c84a5284f6739384f7ecd95e59a87cd1b31984e7c320', 2, 1, 'myApp', '[]', 0, '2020-01-07 12:26:11', '2020-01-07 12:26:11', '2021-01-07 06:26:11'),
('0ce2f42bdce78400e844e9a99b5e7ceead056405354ac7b69467b5f5b279356def11bf93f7ebdaf9', 1, 1, 'myApp', '[]', 0, '2020-01-07 12:30:00', '2020-01-07 12:30:00', '2021-01-07 06:30:00'),
('c2bc57c8faf70e2f016c90f8c2e526d8ab5ca33deb9a927c857aa8591985ab5be7f8fbc3da193108', 4, 1, 'myApp', '[]', 0, '2020-01-07 12:31:19', '2020-01-07 12:31:19', '2021-01-07 06:31:19'),
('7feeb6734d37e27318cb59e3e7bdbe49d9b268a61efd87a4e2ae8539f39f61306024ffd710b2210a', 5, 1, 'myApp', '[]', 0, '2020-01-07 12:33:20', '2020-01-07 12:33:20', '2021-01-07 06:33:20'),
('84d162bb8475ef32d79cc34c83e2eba3934ce848cfd1c2dfc7a722f27ff3465b32916d77d6c8f788', 4, 1, 'myApp', '[]', 0, '2020-01-07 12:35:38', '2020-01-07 12:35:38', '2021-01-07 06:35:38'),
('78fda252bcfb0e2720c26d42580c86773c9f76c34c4303cc00c979253f3e46776c8ada3834146e9a', 5, 1, 'myApp', '[]', 0, '2020-01-07 12:36:40', '2020-01-07 12:36:40', '2021-01-07 06:36:40'),
('16a84c4811c31779478b126a1b09a6497129b349c5407d7878272142c8e01c1d007b74cb42e9cb63', 7, 1, 'myApp', '[]', 0, '2020-01-07 12:39:01', '2020-01-07 12:39:01', '2021-01-07 06:39:01'),
('181ae36035eee5135875d581f17ce8f4873a1c327823ae4a4f93073cf1eb775f1b7463318b11bc4e', 5, 1, 'myApp', '[]', 0, '2020-01-07 14:17:32', '2020-01-07 14:17:32', '2021-01-07 08:17:32'),
('edb62af4a02b64159cdca4769a92655099ca44181e6641de119a70fb56678497c4e1af0a13867641', 12, 1, 'myApp', '[]', 0, '2020-01-07 14:19:54', '2020-01-07 14:19:54', '2021-01-07 08:19:54'),
('6f4a34c679c5a398efeb9cce2eb98028d2bd07446d1b6d9e15a8e8ea2eb8d0720f2173d7a672d61b', 12, 1, 'myApp', '[]', 0, '2020-01-07 14:31:56', '2020-01-07 14:31:56', '2021-01-07 08:31:56'),
('81d40c9bce5bb98a08feccac9f59d169b10f89dc1d1cb0b8f1873fa9cbf6f9e10ebd1386817f8e5e', 2, 1, 'myApp', '[]', 0, '2020-01-07 15:07:42', '2020-01-07 15:07:42', '2021-01-07 09:07:42'),
('42ae9d1668db38225e0a963c3e7bc86c3c9db16478e222b15fd1891b0f7878f9361a0bc7e4b7cb1b', 1, 1, 'myApp', '[]', 0, '2020-01-07 15:17:29', '2020-01-07 15:17:29', '2021-01-07 09:17:29'),
('a207a44a68cb961260b9d6e008c770c9385cb1e31a1435e7a3849f4a2464cbff43cec8eff0ea2b17', 12, 1, 'myApp', '[]', 0, '2020-01-07 15:26:31', '2020-01-07 15:26:31', '2021-01-07 09:26:31'),
('6b52d0532a5123540bee5862c3c587f0b5736a2c78b0b4ed1e3da2fb8d05bf6fa51394145f54d8c4', 2, 1, 'myApp', '[]', 0, '2020-01-07 16:34:42', '2020-01-07 16:34:42', '2021-01-07 10:34:42'),
('e61e339c5e047d6ef72345a9a110b3271354bda39d57d8dc2e868322077058e9065e7c9c8f5f212f', 2, 1, 'myApp', '[]', 0, '2020-01-07 17:29:55', '2020-01-07 17:29:55', '2021-01-07 11:29:55'),
('7f5e3fb7fa0846218e58dccbc42604188f4fba74e46bbe44332b3e321a10f6b6a57599a1dd794ea4', 2, 1, 'myApp', '[]', 0, '2020-01-07 17:41:35', '2020-01-07 17:41:35', '2021-01-07 11:41:35'),
('fda1b0308baffd5e3f233d07a712cad2f4ec4bac1fdf206d45ef51a781c6d6139977fd422d01aa6f', 2, 1, 'myApp', '[]', 0, '2020-01-07 17:50:31', '2020-01-07 17:50:31', '2021-01-07 11:50:31'),
('aa02fb48eadb94f5fc7bc71107617ad56e850547e6dd39619d5a7a60acc4ca49f0e7b2fefebd5cfe', 2, 1, 'myApp', '[]', 0, '2020-01-07 18:46:06', '2020-01-07 18:46:06', '2021-01-07 12:46:06'),
('cb179fa16a999005a8ad94049b227e4ecf511f83adf01eefef561e1878c8c0015aa73d949c84bd5c', 6, 1, 'myApp', '[]', 0, '2020-01-07 18:58:59', '2020-01-07 18:58:59', '2021-01-07 12:58:59'),
('7887ea1321c7ecc99bc63002abfa3d4a47b9f792c471f86144bc96baeb76fa5532a8935c311ee186', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:10:04', '2020-01-07 19:10:04', '2021-01-07 13:10:04'),
('192fecc66e2e1345f81a79a96965383274f40d1cfec901df5e17e06c172074c7ea02b06f73e912f1', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:29:05', '2020-01-07 19:29:05', '2021-01-07 13:29:05'),
('0ab65a79c36c0a2aa4b5083a2c5af7c669961c544a16d82f9ebbedfdd88835f3bda9d2c0e5db3b6f', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:30:55', '2020-01-07 19:30:55', '2021-01-07 13:30:55'),
('f8d38909a9c051154e98d10bde46ac8921fc57efb9e539f4c1af516ba884c46fa325ca67bd5ff614', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:32:00', '2020-01-07 19:32:00', '2021-01-07 13:32:00'),
('1b9474efd11080003667f5f532caeb36b1cddc40a3c4f85e68c1c58b04173c19b66853698cfa98b0', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:33:18', '2020-01-07 19:33:18', '2021-01-07 13:33:18'),
('06bb88316758eb84a9b0c8d108c21a7ec4e51ab1b700d0332bd828349b044bde9c5f4bf4b5742476', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:33:22', '2020-01-07 19:33:22', '2021-01-07 13:33:22'),
('f86e7ac14d84b738547048e4c7283a1c3de5db43e02d098a7a6c99977f6677e52f7fefd19195ad24', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:34:05', '2020-01-07 19:34:05', '2021-01-07 13:34:05'),
('0208499e5e5d37ec69488fa66009e6fe09235f85112be371c30d0b95f455da316ec277796d116b59', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:34:09', '2020-01-07 19:34:09', '2021-01-07 13:34:09'),
('8301b95cab947e89054fac4d959932e0534bc803f8e6d38a0c89b92bdb8b445f403906e70f7f3483', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:34:21', '2020-01-07 19:34:21', '2021-01-07 13:34:21'),
('fe5cd472579053f7074bf72597451f6b522c192b41dcb961416fe9b95048b6699eea7bd87a6744f6', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:34:24', '2020-01-07 19:34:24', '2021-01-07 13:34:24'),
('7c1d04ba180c941414a14531f262b264522a99dc16a52a797855fdf584cf8fcbc4b86c87b7e9abf7', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:34:56', '2020-01-07 19:34:56', '2021-01-07 13:34:56'),
('40e693c65846a3cdfab2da9b4e18feeaee5afb749d0ea217387122b501f11d01da3e39072ca1265d', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:36:33', '2020-01-07 19:36:33', '2021-01-07 13:36:33'),
('e2832c8ce8d7c7d018094c27cbabfc8a039b01b78a7128e3e2ca6c1efa19fbdc38e7555fb7d3c4bd', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:36:36', '2020-01-07 19:36:36', '2021-01-07 13:36:36'),
('af8176f3f3bdb3a6f18a14790850b42bcc28965f40444777eeb6e521698536e607dd8c05fbcf0e5f', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:48:52', '2020-01-07 19:48:52', '2021-01-07 13:48:52'),
('04cb6c2cfe3206c3e231bb73070a458606a3a5e9ad4093906c083e90f7447e36843f3c79c9aab204', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:49:01', '2020-01-07 19:49:01', '2021-01-07 13:49:01'),
('3d71416c961bdcf837071220b09187388d7f00e1b1f63a59c22b28eb21a0520a609f708369c69135', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:50:06', '2020-01-07 19:50:06', '2021-01-07 13:50:06'),
('fcc29fcde45d8be35796baef217957b5d10d9ef29bf697899403010b54cc71d8063d55fff26387ea', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:51:33', '2020-01-07 19:51:33', '2021-01-07 13:51:33'),
('6138f01f929684002ce0705901f03b92fa835cf337c5136a64e08a1bf4ed5a69a65ba487d2ecbc62', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:53:35', '2020-01-07 19:53:35', '2021-01-07 13:53:35'),
('4cc38e6fae74a21ca51da6c08f62bcd31959112b90351b0de68b8394569f1604c7f9b1377d0de050', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:53:48', '2020-01-07 19:53:48', '2021-01-07 13:53:48'),
('132bb0bb37b8c4526fad97aef954813905599187d495374f4c223166d02be1246136d0511feb79de', 1, 1, 'myApp', '[]', 0, '2020-01-07 19:54:24', '2020-01-07 19:54:24', '2021-01-07 13:54:24'),
('3a270cbdf9f36dd95738c73b4c1d9a12e38a316bc1cd9a2c94dd670ead1cfefc75fdf74d9d9c8ae1', 1, 1, 'myApp', '[]', 0, '2020-01-07 20:03:50', '2020-01-07 20:03:50', '2021-01-07 14:03:50'),
('d98725322e7fa90bed37480fa338e9eb7177504f0690e2941012e8a22ba94045c78ea4bf28c4b602', 1, 1, 'myApp', '[]', 0, '2020-01-07 20:04:04', '2020-01-07 20:04:04', '2021-01-07 14:04:04'),
('cb8d5b1aba7265db1178caf0480c12156c14a0556bf15ca457944e96447d54a4328e2814fba3f6a9', 1, 1, 'myApp', '[]', 0, '2020-01-07 20:59:23', '2020-01-07 20:59:23', '2021-01-07 14:59:23'),
('c71c841543a61077a1be070cfe18b3a245a815cdf5966181b36323aa63475081c77351d14e81da0b', 1, 1, 'myApp', '[]', 0, '2020-01-07 21:02:36', '2020-01-07 21:02:36', '2021-01-07 15:02:36'),
('50fe8d28d3254ff8e77e9f8f38a7470e7a2240396e718bdd07033511d476ea371098f74d32c3cf95', 1, 1, 'myApp', '[]', 0, '2020-01-08 01:19:32', '2020-01-08 01:19:32', '2021-01-07 19:19:32'),
('a7c335c378e4b7bd7cd7c11a85fc0bf3c5936ec85c221b112c4ce5b9ee0194b90ad4d6e7e854766e', 2, 1, 'myApp', '[]', 0, '2020-01-08 11:54:32', '2020-01-08 11:54:32', '2021-01-08 05:54:32'),
('08a1f744e223b2233a0365145a1077dfe44e40a9650c1c6d2f8810df5f3e7cd5c4c5ffb517d5a09a', 2, 1, 'myApp', '[]', 0, '2020-01-08 12:30:12', '2020-01-08 12:30:12', '2021-01-08 06:30:12'),
('3eedd20d8dd19d162a2092dd5d80993ae9d031d69832ece72d3fb5a3cb38f8fc68b66975d8de6bc7', 2, 1, 'myApp', '[]', 0, '2020-01-08 12:30:24', '2020-01-08 12:30:24', '2021-01-08 06:30:24'),
('7370d7a1ee7e971f10b2144de261cbe6eed7fc2603aef572b1a1673b81d374cb9a8318168ad6aaa5', 2, 1, 'myApp', '[]', 0, '2020-01-08 12:32:22', '2020-01-08 12:32:22', '2021-01-08 06:32:22'),
('41f9aa3f83182558d7346c2ce1fad0631bd484385df066b99b0388e10e50b03e2e18019caf4a6d3e', 12, 1, 'myApp', '[]', 0, '2020-01-08 12:46:30', '2020-01-08 12:46:30', '2021-01-08 06:46:30'),
('41af43564e3d294ef3e70c040c9fc7247862af5bcbc744d3980628e68b43ea1f94054f07c46db02b', 2, 1, 'myApp', '[]', 0, '2020-01-08 12:49:17', '2020-01-08 12:49:17', '2021-01-08 06:49:17'),
('9b9275173bad2ea19b2855d387f20ac0b36bab18344f12981b42b71b4931d8c533a0b0e667458307', 2, 1, 'myApp', '[]', 0, '2020-01-08 13:05:48', '2020-01-08 13:05:48', '2021-01-08 07:05:48'),
('58cd455ac7549c8df6abe3505088e0f72a0c47db50e0ed3b3b10aec5bc249fdf6c2b91f25ef3baa9', 2, 1, 'myApp', '[]', 0, '2020-01-08 13:09:10', '2020-01-08 13:09:10', '2021-01-08 07:09:10'),
('cac76828f7fb8798c96c0cb70192bec28f9880f0e93df43a8ccfd62b215fe725a9e20354fd98df6c', 2, 1, 'myApp', '[]', 0, '2020-01-08 13:22:55', '2020-01-08 13:22:55', '2021-01-08 07:22:55'),
('3cbde592a472bab059ef3a1c61920d97ff45017a1fdfa59a47ca1f971cdf5817d3235518e2f3a48d', 2, 1, 'myApp', '[]', 0, '2020-01-08 13:43:59', '2020-01-08 13:43:59', '2021-01-08 07:43:59'),
('3b64907ea0b63575fc94862103141ed459786ff175e3912efe8b9ae5af4565c6bd7efb90aef1aeb6', 2, 1, 'myApp', '[]', 0, '2020-01-08 13:45:55', '2020-01-08 13:45:55', '2021-01-08 07:45:55'),
('35c9881c001a10a62ddc0ede1f6e6e9a567f5333a8567209f04b83bc5a4c23cb9fc187ae59fd3f51', 2, 1, 'myApp', '[]', 0, '2020-01-08 13:46:26', '2020-01-08 13:46:26', '2021-01-08 07:46:26'),
('ab8982c42e7ff0d064d52e790e281ebfa52d314b7003f83526798740f8c23a6cd959d0b578b00fa0', 2, 1, 'myApp', '[]', 0, '2020-01-08 13:49:07', '2020-01-08 13:49:07', '2021-01-08 07:49:07'),
('b9738bceee9b32e7e67476919654b7afcc1775af51ebf9dc79c170718a5463b953eabca953dd693d', 2, 1, 'myApp', '[]', 0, '2020-01-08 13:50:08', '2020-01-08 13:50:08', '2021-01-08 07:50:08'),
('acdd96775ab757ef7e5579dc34c4c60e6526b86a06689d2c97009cfdceba426b592203f949f974e7', 2, 1, 'myApp', '[]', 0, '2020-01-08 14:01:07', '2020-01-08 14:01:07', '2021-01-08 08:01:07'),
('cd05e7cc71c8c740aeab186c9ea9386602aeeb5f10309b30b1fdb70b8dd55cd13f5a0683bd17078c', 2, 1, 'myApp', '[]', 0, '2020-01-08 14:03:47', '2020-01-08 14:03:47', '2021-01-08 08:03:47'),
('29bb755a5c15e4948dc4e3d9caffcef40c114a4866f735f4d15e46ce6ca7d279c8db5b3441232bce', 2, 1, 'myApp', '[]', 0, '2020-01-08 14:04:49', '2020-01-08 14:04:49', '2021-01-08 08:04:49'),
('1cf21af5415a412e99c66eb532fd0c6bd72288b2df90aa535a3e88b123b7f0f1e8723724a32b6a07', 5, 1, 'myApp', '[]', 0, '2020-01-08 14:06:18', '2020-01-08 14:06:18', '2021-01-08 08:06:18'),
('afdf65246e06b38c28264bad9ddaf2e600e6801d5f25903d185d534e9336680c04d1071561c2639e', 2, 1, 'myApp', '[]', 0, '2020-01-08 14:49:15', '2020-01-08 14:49:15', '2021-01-08 08:49:15'),
('a8f4a74a7cb0a43afd287ac7af03607a94adf84b3d70c0bf5f2ea7f9544b972d178949d3e94502ac', 2, 1, 'myApp', '[]', 0, '2020-01-08 18:20:05', '2020-01-08 18:20:05', '2021-01-08 12:20:05'),
('7102257f9ca91815a4043ff450861e09c69c8acb62a9d17def224181d058c36f42175983f1d10ade', 2, 1, 'myApp', '[]', 0, '2020-01-08 19:06:10', '2020-01-08 19:06:10', '2021-01-08 13:06:10'),
('5ac3ca342974d5c27a2574e33243287ca3d28a29c6775d24c67ce5aa8d7586cb9130987107430e3e', 17, 1, 'myApp', '[]', 0, '2020-01-08 19:26:58', '2020-01-08 19:26:58', '2021-01-08 13:26:58'),
('206517e8a4b9fdd9ed38b479f9b9f79257270bc1370f3c348da5f5f1b298f5d6d0609272398a2402', 1, 1, 'myApp', '[]', 0, '2020-01-08 19:29:39', '2020-01-08 19:29:39', '2021-01-08 13:29:39'),
('4f61be9e19300f6fe7fb2c896cdbe49afb8c4698a01a734e8fc8839697a6126a8d33cad805788bc3', 2, 1, 'myApp', '[]', 0, '2020-01-09 11:10:23', '2020-01-09 11:10:23', '2021-01-09 05:10:23'),
('e0e7e3d5c64b92c9c0f686ca36c31d423786b8d2581b5f6e18fcf782fa3d46251fe30efdb2887e37', 2, 1, 'myApp', '[]', 0, '2020-01-09 11:13:42', '2020-01-09 11:13:42', '2021-01-09 05:13:42'),
('e7b0e16db364a3d20a8219574541284bc52c79663dc08ffa746e6df782a8616c74268b953e3a635d', 2, 1, 'myApp', '[]', 0, '2020-01-09 11:14:15', '2020-01-09 11:14:15', '2021-01-09 05:14:15'),
('2c69b657df191c3750daf3e4ff0f2648f4ee0f10b4369a66ad623c4027df7476a9b666bcaa142296', 1, 1, 'myApp', '[]', 0, '2020-01-09 12:08:18', '2020-01-09 12:08:18', '2021-01-09 06:08:18'),
('68fc7e3b8dd5143020f84c144bbe06fefd838aeef84a2210bfdd060ebe5706a51596ee1cb38dd8dd', 1, 1, 'myApp', '[]', 0, '2020-01-09 12:08:27', '2020-01-09 12:08:27', '2021-01-09 06:08:27'),
('a35c6cc787e27cad5f1d759d0f0bbec32c0da6c7227305033e454e5c9aa9ddc9ccf9c7f789bbbddc', 1, 1, 'myApp', '[]', 0, '2020-01-09 12:09:14', '2020-01-09 12:09:14', '2021-01-09 06:09:14'),
('bbcd7e3a213446d33022743b350ca50cbe37dea1160c75354474084850e2c634c7b2a7771c27356c', 1, 1, 'myApp', '[]', 0, '2020-01-09 12:39:27', '2020-01-09 12:39:27', '2021-01-09 06:39:27');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('ea67ebd42f68a5f7bdfb1e1a7e00389d685ce9e9e32293309936656cc704b1dd8e94fa087e29b949', 17, 1, 'myApp', '[]', 0, '2020-01-09 13:24:02', '2020-01-09 13:24:02', '2021-01-09 07:24:02'),
('31b0ac2485305ef3f686c7c0be6968bd443c25b85240a77bf14dadca784900c19c4408525e9f8a9d', 15, 1, 'myApp', '[]', 0, '2020-01-09 13:28:59', '2020-01-09 13:28:59', '2021-01-09 07:28:59'),
('aa9b3c6393722fdc2af2e40404677b1b2afef9ffbe33bb6562114be4963b55ff683aa7b8a7ab491e', 15, 1, 'myApp', '[]', 0, '2020-01-09 13:29:55', '2020-01-09 13:29:55', '2021-01-09 07:29:55'),
('cf94ef68bc1fe9e995ea2fe11210b4e033aaf36e39b1019855eedf5c8794c066cf693296603e42e9', 15, 1, 'myApp', '[]', 0, '2020-01-09 13:32:30', '2020-01-09 13:32:30', '2021-01-09 07:32:30'),
('5c58c29009d06861414c19ca39cc5d7212bf375672893ea0b182e4461fada0da314b89bab5554723', 13, 1, 'myApp', '[]', 0, '2020-01-09 13:36:11', '2020-01-09 13:36:11', '2021-01-09 07:36:11'),
('092d9ce1cdd52a10039933fa46dd257800c3bf1cda5d879b07c06dcced48d1e51fad7e4cbffc2ee3', 1, 1, 'myApp', '[]', 0, '2020-01-09 13:56:47', '2020-01-09 13:56:47', '2021-01-09 07:56:47'),
('4e3bc8aab58622260bd40c340b592a44aff8078b2e787a249f0dd256d89f37a4076c8658d70354b3', 17, 1, 'myApp', '[]', 0, '2020-01-09 13:58:20', '2020-01-09 13:58:20', '2021-01-09 07:58:20'),
('0a6f217735aeb471cb13a2d2fef103015d7fe5aecdc0fdd7ecedaaa00bbf571d0fac70bc2c9a23b4', 17, 1, 'myApp', '[]', 0, '2020-01-09 13:58:51', '2020-01-09 13:58:51', '2021-01-09 07:58:51'),
('f945bb1575def5e46db639596f60d05efdab1a5f42c7dd3207b6245432209723fcc1cacb32a96cb0', 17, 1, 'myApp', '[]', 0, '2020-01-09 14:06:28', '2020-01-09 14:06:28', '2021-01-09 08:06:28'),
('6839a2873986e08a15f4c38a8f8aa4ff81e3947fe654f09469b4d79b0d238523c42a373a9781b074', 1, 1, 'myApp', '[]', 0, '2020-01-09 14:06:30', '2020-01-09 14:06:30', '2021-01-09 08:06:30'),
('2b09615c465f084cacc72007401c6bade50b405e2f354ecf95a1d01d2e974458dbe3e2dc2a521ab7', 17, 1, 'myApp', '[]', 0, '2020-01-09 14:16:28', '2020-01-09 14:16:28', '2021-01-09 08:16:28'),
('3540c8bdd1f92e215e0b56b2b061b4d082d9a74be0b7caf0b54f8257f3ce334bd87573d90fc5e823', 1, 1, 'myApp', '[]', 0, '2020-01-09 14:24:01', '2020-01-09 14:24:01', '2021-01-09 08:24:01'),
('0ebef7784ad2782239619a6797f860e1941f368bf48730c7b526776fbe5617a9f73273ad2687cf54', 15, 1, 'myApp', '[]', 0, '2020-01-09 14:28:13', '2020-01-09 14:28:13', '2021-01-09 08:28:13'),
('a0c8bb9ceabdfbc22639e6f4fd4f032738ade4ca6958dcf7546bd8db68607ac96005375fd64fa55a', 1, 1, 'myApp', '[]', 0, '2020-01-09 14:52:37', '2020-01-09 14:52:37', '2021-01-09 08:52:37'),
('83277a891ddcb3b5258755fc2d56753981925ad30b6d35f23adfba49794e72624a9301fd08ea65b2', 1, 1, 'myApp', '[]', 0, '2020-01-09 16:50:56', '2020-01-09 16:50:56', '2021-01-09 10:50:56'),
('a04acd4f0d6908eea29279ff1fb04d6d975a09102e54994ecd2a026a21695e3b5148787666253782', 17, 1, 'myApp', '[]', 0, '2020-01-09 16:53:43', '2020-01-09 16:53:43', '2021-01-09 10:53:43'),
('184bd067906e9b19dccb0fa6408b20642c4292e4e56bd38600ec07e2b89dbfe46218e2c78c6b8c7b', 1, 1, 'myApp', '[]', 0, '2020-01-09 20:50:52', '2020-01-09 20:50:52', '2021-01-09 14:50:52'),
('783003c12e88429301b13901c47c1a747005edc59432d7f5e7e7acca8f53e6e59e816750b204ec1e', 1, 1, 'myApp', '[]', 0, '2020-01-10 11:26:36', '2020-01-10 11:26:36', '2021-01-10 05:26:36'),
('0506c86d96fa35d341c303afdd76f3eeca3b70ea583f0da779efadd3f993fb9153af1b0a2b33ed72', 2, 1, 'myApp', '[]', 0, '2020-01-10 12:16:38', '2020-01-10 12:16:38', '2021-01-10 06:16:38'),
('c147deb2263128f835eb14a9d603e2b37a75a9f311d9eed031a2e4723c5916b6ee7691fe6477265f', 1, 1, 'myApp', '[]', 0, '2020-01-10 12:33:41', '2020-01-10 12:33:41', '2021-01-10 06:33:41'),
('635fd157b4cf6c8d169428d75a9ef69f619f1b143b58f181ac338b43e80320350b323ed5ce8ae0b5', 1, 1, 'myApp', '[]', 0, '2020-01-10 12:34:49', '2020-01-10 12:34:49', '2021-01-10 06:34:49'),
('df550e8f2a786ff2d9fd488b5943e78a1be0804d8b428c26094716f7e6d5d6d52ccbb162749bed09', 1, 1, 'myApp', '[]', 0, '2020-01-10 12:35:12', '2020-01-10 12:35:12', '2021-01-10 06:35:12'),
('9dbe009c3d6459cfdea97b9c2e87e96dbc2d6c3e223fa3f520111c0699fc596f5edfa527f4f14b1c', 1, 1, 'myApp', '[]', 0, '2020-01-10 12:38:59', '2020-01-10 12:38:59', '2021-01-10 06:38:59'),
('b8794d436216b7b14439e701d3a9b494c2a428fd4b57497a5ffb4856ff539755c4a973a26d878c48', 1, 1, 'myApp', '[]', 0, '2020-01-10 12:51:36', '2020-01-10 12:51:36', '2021-01-10 06:51:36'),
('b4af381ea73303d9e60f9fea03a6a4e7a33d3e9c9d779b41ed484978369737dc1bf9ca72672aa7da', 1, 1, 'myApp', '[]', 0, '2020-01-10 12:53:18', '2020-01-10 12:53:18', '2021-01-10 06:53:18'),
('71e6f8ff1de6becff092c581604f9c7e0b0c120df60aadd15f9d62dcd8d7ce310508c2d6458fa1c8', 15, 1, 'myApp', '[]', 0, '2020-01-10 13:23:51', '2020-01-10 13:23:51', '2021-01-10 07:23:51'),
('d181546f49dbd767853f5b049d29ec87e47005329ba709ad386c593a36669d75f8850ee755114f91', 18, 1, 'myApp', '[]', 0, '2020-01-10 13:37:11', '2020-01-10 13:37:11', '2021-01-10 07:37:11'),
('4ec37b2ef985af299e5cf8a6672b3eef6f22209164c0ce17f93bb6f35330e4d72b35fcd873b8afad', 19, 1, 'myApp', '[]', 0, '2020-01-10 13:41:44', '2020-01-10 13:41:44', '2021-01-10 07:41:44'),
('a7ba1c8124f7dc7c4c675a7afe54223102d31015e468b09d2fde92214e9dcbec545096e63dc5b218', 15, 1, 'myApp', '[]', 0, '2020-01-10 13:50:01', '2020-01-10 13:50:01', '2021-01-10 07:50:01'),
('0eaffb81e84252a88cb6fa6292e17704939ec927922385e73b374ed8abefca2117d0f27fcd4d181d', 13, 1, 'myApp', '[]', 0, '2020-01-10 13:56:33', '2020-01-10 13:56:33', '2021-01-10 07:56:33'),
('a61164f8a5567b3da3c4776cd2d1e9d655ffd556ede5464366a83663105e8c35897e3d77ae99f846', 1, 1, 'myApp', '[]', 0, '2020-01-10 14:14:23', '2020-01-10 14:14:23', '2021-01-10 08:14:23'),
('86203894f4581db306c932d98e698faf8915ec2784ebe4af044fe220b6429a5b22c4feafc79d98cc', 1, 1, 'myApp', '[]', 0, '2020-01-10 14:56:23', '2020-01-10 14:56:23', '2021-01-10 08:56:23'),
('8ed21cf500da1161d3904e18312eccaf9f52823db33479093b17c91a04da6e86406e3174bc022f76', 2, 1, 'myApp', '[]', 0, '2020-01-10 15:04:12', '2020-01-10 15:04:12', '2021-01-10 09:04:12'),
('10f0ac2cabde6f51871db41c94ecf28b0c04f08243d702697f4f78b3129f961ebfb4f4fa79bba7bd', 15, 1, 'myApp', '[]', 0, '2020-01-10 16:37:19', '2020-01-10 16:37:19', '2021-01-10 10:37:19'),
('74ba2934a3444f70326246a043c7627d5d74be85c5894fc66f51d5e827e5b1f444a09330263b2826', 15, 1, 'myApp', '[]', 0, '2020-01-10 16:37:39', '2020-01-10 16:37:39', '2021-01-10 10:37:39'),
('1bdf6806716d9ad609ff0cb78fdc730b694340447fc6c7e868ec893bab2b4b0195e474b6115b56fb', 15, 1, 'myApp', '[]', 0, '2020-01-10 16:38:36', '2020-01-10 16:38:36', '2021-01-10 10:38:36'),
('a7ef7fb2adcf0c20a0839943bc498215f8aac372b697f737b850696673e9df26aba653a9753fce5c', 20, 1, 'myApp', '[]', 0, '2020-01-10 16:39:19', '2020-01-10 16:39:19', '2021-01-10 10:39:19'),
('10aa46ae29c912552c1c953f07689ce5c85a2654ec697ae1d7dea0a7b7f1697288323cf7b3c05237', 1, 1, 'myApp', '[]', 0, '2020-01-10 16:47:56', '2020-01-10 16:47:56', '2021-01-10 10:47:56'),
('7df66655b4a0fa5a1bd7124623aac20e9ffea079669308be844d680d7173dda78e5082ae639afea0', 1, 1, 'myApp', '[]', 0, '2020-01-10 16:58:32', '2020-01-10 16:58:32', '2021-01-10 10:58:32'),
('893f997e6759f0d0bdbc006457acdf9b0c030179c4f642f8170b4d57aa720aacb164e48aa95129c3', 2, 1, 'myApp', '[]', 0, '2020-01-10 19:02:58', '2020-01-10 19:02:58', '2021-01-10 13:02:58'),
('99faab844247abfa00c6516548576f8a71cf5f6d0dbbf25922d402c3834a457b8d6ff976a3e6ab7d', 21, 1, 'myApp', '[]', 0, '2020-01-10 19:12:01', '2020-01-10 19:12:01', '2021-01-10 13:12:01'),
('8ceafca821a49865a6a7043afc5980920c430177dd4e7522e96ecb58aa11541f7e06cbb2525ef26e', 21, 1, 'myApp', '[]', 0, '2020-01-10 19:18:07', '2020-01-10 19:18:07', '2021-01-10 13:18:07'),
('edbe2afa2770436558fdb1c2f18a572747e8318a26fc197de06428261c34937114f9bfcb65499cdb', 1, 1, 'myApp', '[]', 0, '2020-01-10 20:01:07', '2020-01-10 20:01:07', '2021-01-10 14:01:07'),
('506fd5976246dc6c2992b3ab016fa9434e29967e1064ffd5eae1cff1080fa99c1d9744a1fdb3ab3d', 15, 1, 'myApp', '[]', 0, '2020-01-10 20:23:24', '2020-01-10 20:23:24', '2021-01-10 14:23:24'),
('db502eddc45b0301ab18a905bae5f53964918c15ca0c44bbf4d1112d1727fc8936c4ba9b6e485f85', 20, 1, 'myApp', '[]', 0, '2020-01-10 21:16:57', '2020-01-10 21:16:57', '2021-01-10 15:16:57'),
('ca676f98547b1b1e5fd0f1a6cad3ca3f48b0bd719f741dac407232b5e4e7361986012f40833725f5', 15, 1, 'myApp', '[]', 0, '2020-01-10 21:17:55', '2020-01-10 21:17:55', '2021-01-10 15:17:55'),
('47a0bb4926bab95fc73c500e957eb995768d3ed5445f8d802807d8eccf992053cfe28d7566c9639e', 20, 1, 'myApp', '[]', 0, '2020-01-10 21:19:18', '2020-01-10 21:19:18', '2021-01-10 15:19:18'),
('6f4d6ece366b4d29d7f431f83c4b39843fd1155c780af7bc1d659b37ab1fab8f8d53e16f368473ad', 1, 1, 'myApp', '[]', 0, '2020-01-10 21:47:34', '2020-01-10 21:47:34', '2021-01-10 15:47:34'),
('10775adb5a00a2eaa2bd441c7d12aeffb8d0387f1ed25907a075851a6beb106b9a433fe10c43173f', 1, 1, 'myApp', '[]', 0, '2020-01-10 21:49:31', '2020-01-10 21:49:31', '2021-01-10 15:49:31'),
('2bf8175e902537e3368f4bfe77c066829cd06d375583e55e0794b35efff7277faaf412ff9ccc410f', 17, 1, 'myApp', '[]', 0, '2020-01-11 04:55:52', '2020-01-11 04:55:52', '2021-01-10 22:55:52'),
('1bac7ee67b9ee4775f8018d052bb0a2c5d92642c2711af1a07653507050191121d9bc43cf63d4043', 2, 1, 'myApp', '[]', 0, '2020-01-11 20:23:33', '2020-01-11 20:23:33', '2021-01-11 14:23:33'),
('1749f7ee2358dba5934758e54a5443c3f08d643ce0e6c86c056f3e2848be5402229c54d0ea2664bd', 2, 1, 'myApp', '[]', 0, '2020-01-11 20:29:01', '2020-01-11 20:29:01', '2021-01-11 14:29:01'),
('f4f88f13cffb2b119a1c99ff3decce6c261b0dd70030d69ab1edbeb817ada4a37bfb2b5814b8e36f', 2, 1, 'myApp', '[]', 0, '2020-01-12 13:38:17', '2020-01-12 13:38:17', '2021-01-12 07:38:17'),
('f899102cf4eed532a6d120878cc8a9e9cfbd211307a37f3fcae65976f2409cc3608c81e9bc9e843d', 2, 1, 'myApp', '[]', 0, '2020-01-12 13:38:31', '2020-01-12 13:38:31', '2021-01-12 07:38:31'),
('8d55c9e28f9ce41aa4a54cad9bdaef2b3edde880e3c8786d8c76c96bf353a12da481b0f7c2bc36c0', 1, 1, 'myApp', '[]', 0, '2020-01-12 15:51:55', '2020-01-12 15:51:55', '2021-01-12 09:51:55'),
('5961c959c68ba8b77fe12493086420d4e1221e39fcd0cc085c248942f116fd6c579c51de88b17311', 1, 1, 'myApp', '[]', 0, '2020-01-12 20:12:46', '2020-01-12 20:12:46', '2021-01-12 14:12:46'),
('3db15aec90af713c9ef3e316bb066703311b56d0596565cd7ce9d8e18cea9c26c626680ead429de2', 1, 1, 'myApp', '[]', 0, '2020-01-12 21:43:03', '2020-01-12 21:43:03', '2021-01-12 15:43:03'),
('71d1646df9306c83a41a90d1d7be92c34abc4611145b3c3cd9b6993186e039f57686991d9a6d00d8', 1, 1, 'myApp', '[]', 0, '2020-01-12 21:53:48', '2020-01-12 21:53:48', '2021-01-12 15:53:48'),
('4affba4df30c29925dd7c378657e3a42724a7b81f1062531138ef45ee82bd59826b7d7c0833373f9', 1, 1, 'myApp', '[]', 0, '2020-01-13 11:57:48', '2020-01-13 11:57:48', '2021-01-13 05:57:48'),
('d6f5b70a53cb8bfde0aaa4bb4fd67da4abc9df4ecf1c0c5031009b216e4c76a39a16ebce11b77d7f', 1, 1, 'myApp', '[]', 0, '2020-01-13 12:50:05', '2020-01-13 12:50:05', '2021-01-13 06:50:05'),
('f0dc35bd2ccde4dfff812a175fbbd031b53bdfcbc549c74e302b0d7980bfdd79bc7419457ba2c31f', 15, 1, 'myApp', '[]', 0, '2020-01-13 13:03:57', '2020-01-13 13:03:57', '2021-01-13 07:03:57'),
('052773ff982aa40cfe4500a5cd6eeb98e5c74c5ffd7bd6a3bd8ecda11812b971396c7651661647cc', 2, 1, 'myApp', '[]', 0, '2020-01-13 13:11:39', '2020-01-13 13:11:39', '2021-01-13 07:11:39'),
('26d4a6a88ef796b52fee5918bdea86fccb6790fd11fc58a197c0ced98240fd244167380fb05126cc', 20, 1, 'myApp', '[]', 0, '2020-01-13 13:19:20', '2020-01-13 13:19:20', '2021-01-13 07:19:20'),
('0480df805aba29910db075ed4cfbbcebc80031b7d47cbde2287c42ec17cfd65e6f798307bed013ec', 2, 1, 'myApp', '[]', 0, '2020-01-13 13:32:46', '2020-01-13 13:32:46', '2021-01-13 07:32:46'),
('850714d7a5d4c3e3af2bd4f31302818bbce261a368cdc15143ccda22d65f4f7e89e2d1a46d8192ef', 16, 1, 'myApp', '[]', 0, '2020-01-13 13:39:42', '2020-01-13 13:39:42', '2021-01-13 07:39:42'),
('e936c83b260249770d0e2fa740ab4717e30a530ffb50d1deb8a3e875fe0dfbed8fd51d34b16a9759', 20, 1, 'myApp', '[]', 0, '2020-01-13 13:45:12', '2020-01-13 13:45:12', '2021-01-13 07:45:12'),
('79316cf5400b479027c3337a73a5a8ee10e823661e66cd99d2457acf040f9320e8705c0db4ae6cf5', 15, 1, 'myApp', '[]', 0, '2020-01-13 13:45:36', '2020-01-13 13:45:36', '2021-01-13 07:45:36'),
('3633868fd9fe1d81bf6fa5ea0da4286b6cd5c178536fc97dd57869744be8216377533f8882195931', 2, 1, 'myApp', '[]', 0, '2020-01-13 13:47:19', '2020-01-13 13:47:19', '2021-01-13 07:47:19'),
('6d7873b212a1d2e4cff4a9d861b333e5cf6bf68d80bc2a09203a1b2ffde3b76399540c1dd9aaec27', 20, 1, 'myApp', '[]', 0, '2020-01-13 13:50:10', '2020-01-13 13:50:10', '2021-01-13 07:50:10'),
('ea9354fc65eea0002a4c43f170e266466658cadc2b78982e0623c9fca85a50299308172c637c8e9f', 2, 1, 'myApp', '[]', 0, '2020-01-13 13:53:19', '2020-01-13 13:53:19', '2021-01-13 07:53:19'),
('25ebdbb23ff6b197b089d3536a85ea4bb75a67247f54bd707c5c3822cf0227bc5ec011f105c2517f', 20, 1, 'myApp', '[]', 0, '2020-01-13 13:54:59', '2020-01-13 13:54:59', '2021-01-13 07:54:59'),
('ee295e929e01574b5f5c2b146d09366707a10c23b36aa316b7e056e90eb17ac1be01d4d6e53e9f58', 15, 1, 'myApp', '[]', 0, '2020-01-13 13:55:29', '2020-01-13 13:55:29', '2021-01-13 07:55:29'),
('b196786067677335066b250c5f3388eea743a2d1d7607dea460ae731614ae0f892c4158b3be22471', 20, 1, 'myApp', '[]', 0, '2020-01-13 13:55:53', '2020-01-13 13:55:53', '2021-01-13 07:55:53'),
('38ce0280e6c912b6bb7dbddc9035fcae9b36842115a6107f5044d5239941536f25e8385d72990c17', 2, 1, 'myApp', '[]', 0, '2020-01-13 14:04:39', '2020-01-13 14:04:39', '2021-01-13 08:04:39'),
('3ee2b830c627c0976468d8d8806d0cebe2c77c3aafcf8bf56d73e21f43cde00ced4369bf1c993441', 2, 1, 'myApp', '[]', 0, '2020-01-13 16:41:54', '2020-01-13 16:41:54', '2021-01-13 10:41:54'),
('b872810abc0bc5573e8f17bb09080987046ddc1f3d336b39029d7c0e858e648e29c5bf8e5b430c43', 22, 1, 'myApp', '[]', 0, '2020-01-13 16:49:42', '2020-01-13 16:49:42', '2021-01-13 10:49:42'),
('bc24eea1fa81862cd67cb865bfb77617b830ad18cdb43689d9ec0f5955a6c5307c5f9a29b7daec15', 2, 1, 'myApp', '[]', 0, '2020-01-13 17:07:41', '2020-01-13 17:07:41', '2021-01-13 11:07:41'),
('9a0c6f98dcbad8ac9eaeb5936ab6425ef73dd6b2e01bd2808d5e7b10b04d4a0958e8c8c127ae388e', 20, 1, 'myApp', '[]', 0, '2020-01-13 17:10:01', '2020-01-13 17:10:01', '2021-01-13 11:10:01'),
('8f253eec02c0667f4274722d6179315c737d0f5d2127d85501fbc6bf58e4bd24087164b509c37493', 2, 1, 'myApp', '[]', 0, '2020-01-13 17:14:15', '2020-01-13 17:14:15', '2021-01-13 11:14:15'),
('e85685f6ea5552a3c3d4a7cd8c9dd9a712780d4c94b57d074e80b23ad42b78c5d4f50cd2309f8ce6', 1, 1, 'myApp', '[]', 0, '2020-01-13 17:15:17', '2020-01-13 17:15:17', '2021-01-13 11:15:17'),
('b500c91702594290200275debee0373c4fb81b0c358c3619f05a76528f26f54f7dc11ae6a16903f5', 15, 1, 'myApp', '[]', 0, '2020-01-13 17:15:53', '2020-01-13 17:15:53', '2021-01-13 11:15:53'),
('09b632fcee98b4d4626212f6e1c3da47728256e10d688a9df148fa0bb4ac5d48de2f6bd55f4c813c', 1, 1, 'myApp', '[]', 0, '2020-01-13 17:21:50', '2020-01-13 17:21:50', '2021-01-13 11:21:50'),
('c5b632fbf380d16df5cfaf56b8ef2ca312950c6eeac1ad9b0aa54b966781127c5fd1cec24842715f', 1, 1, 'myApp', '[]', 0, '2020-01-13 17:25:14', '2020-01-13 17:25:14', '2021-01-13 11:25:14'),
('dc8bd2b62460b3ad4e74cc7b2838fb8f4cf24df69e2f3c8856e61a92be1e09c05e2960d71957f1ab', 1, 1, 'myApp', '[]', 0, '2020-01-13 17:34:41', '2020-01-13 17:34:41', '2021-01-13 11:34:41'),
('7fd2d1b9467196d834f0a108572554be3d66478d08631c9005d8f075d27075d24cc9f4d2e534d619', 21, 1, 'myApp', '[]', 0, '2020-01-13 17:49:10', '2020-01-13 17:49:10', '2021-01-13 11:49:10'),
('1dc38f5317b81fcb0e679ae6fa57d9a8d615858f29b4abb3f90f24fceafcfa41917774d04b579566', 15, 1, 'myApp', '[]', 0, '2020-01-13 17:52:37', '2020-01-13 17:52:37', '2021-01-13 11:52:37'),
('426c5db24f41b2f88c77307c6db4aa5e96978da55f1e281f5bf657665fb023f648225930c1f01f09', 21, 1, 'myApp', '[]', 0, '2020-01-13 17:53:21', '2020-01-13 17:53:21', '2021-01-13 11:53:21'),
('a04acab2f923e0894c7fe63d1581e9b4ffaa0a3864ff453c9b4287c803c58330a38ed9eed4eca6c4', 15, 1, 'myApp', '[]', 0, '2020-01-13 17:54:46', '2020-01-13 17:54:46', '2021-01-13 11:54:46'),
('93ab68612f3296941743027cd70e37b798d2dce94eaec484cf61baa6ef70a6de336ccca55d7b927a', 23, 1, 'myApp', '[]', 0, '2020-01-13 17:55:47', '2020-01-13 17:55:47', '2021-01-13 11:55:47'),
('f7b4938b46b87fdc85a497ed9982e88afdf4cbf072f710e69344a0724f97e77ceadef8375814fbd3', 23, 1, 'myApp', '[]', 0, '2020-01-13 17:56:45', '2020-01-13 17:56:45', '2021-01-13 11:56:45'),
('835d98ff3f0ba93107db3b160e5862b65ec3aa57ac405954635d8d30d7ce5fc259100f5545b38979', 21, 1, 'myApp', '[]', 0, '2020-01-13 17:56:50', '2020-01-13 17:56:50', '2021-01-13 11:56:50'),
('56155d69d070b5b0139664e0d3555ee8c6c851e25e7c0114d8137af8f9197c8d3e74a1b39af4784a', 1, 1, 'myApp', '[]', 0, '2020-01-13 18:13:21', '2020-01-13 18:13:21', '2021-01-13 12:13:21'),
('fadd0fa393bb19a0a848eb45fef33e3f39717b365a27d77f37f19d0e9b3847c7f6cedbfe97dbaf91', 1, 1, 'myApp', '[]', 0, '2020-01-13 18:14:56', '2020-01-13 18:14:56', '2021-01-13 12:14:56'),
('8ced826691f163826ff23cad24bf10009e85b937c7c9d868468d943fdfb5d190f5852eb34715889b', 1, 1, 'myApp', '[]', 0, '2020-01-13 18:15:32', '2020-01-13 18:15:32', '2021-01-13 12:15:32'),
('bfb202b07ad2a514a1e8726593eb10492548e721f15fd0c3edadb38b5a7ae2d5ee8b9884d06ffb47', 1, 1, 'myApp', '[]', 0, '2020-01-13 18:15:43', '2020-01-13 18:15:43', '2021-01-13 12:15:43'),
('0ffaf34b022825f479cad830b9f0c1d61963224fac55e5f1f97e5a8ffbdd90fd51a2d068d5218ae5', 1, 1, 'myApp', '[]', 0, '2020-01-13 18:16:03', '2020-01-13 18:16:03', '2021-01-13 12:16:03'),
('024fbfcc0dc340edd43a0a0ffc5980331d5212cbbfaa4a5419b34897f0a41a063cebae3adf78f599', 1, 1, 'myApp', '[]', 0, '2020-01-13 18:18:43', '2020-01-13 18:18:43', '2021-01-13 12:18:43'),
('5b6db5c37c36e1f4f164b28699ea58f29e7bcc0b2e364005c286060954f51518598d2d9cededeef0', 31, 1, 'myApp', '[]', 0, '2020-01-13 18:31:39', '2020-01-13 18:31:39', '2021-01-13 12:31:39'),
('00ff8c8928022826376da19f5c94e8762c1e456d6628b0c34fa300b2fc8a486b21588f6016ac28ce', 30, 1, 'myApp', '[]', 0, '2020-01-13 18:44:14', '2020-01-13 18:44:14', '2021-01-13 12:44:14'),
('4baf7fe04c206d60a5a7fdd3fb6dfb0c9f1b31537b52b29394518c39a57f8e32ac3bd5573df53314', 31, 1, 'myApp', '[]', 0, '2020-01-13 18:48:30', '2020-01-13 18:48:30', '2021-01-13 12:48:30'),
('62f8c44f4951d726e0c630d2606312671657368d9ce610b361e11f924daf40defcc6de1a25883772', 31, 1, 'myApp', '[]', 0, '2020-01-13 18:51:00', '2020-01-13 18:51:00', '2021-01-13 12:51:00'),
('b179b92f59a45173c376eadcdc85216124a63f14f460e1945e5847a85e47d2694ce3fc093683295c', 30, 1, 'myApp', '[]', 0, '2020-01-13 18:52:19', '2020-01-13 18:52:19', '2021-01-13 12:52:19'),
('89316107b9edf807ee98bee5d2863acdfd31902bc15d3aa04a93e80060a5089850820bbb4a382ee1', 1, 1, 'myApp', '[]', 0, '2020-01-14 15:50:08', '2020-01-14 15:50:08', '2021-01-14 09:50:08'),
('6e114b12b491da4a0dd4c2394a40ab558545a96fb925aac334cf086ae05ed2da2d6747a886db7f06', 1, 1, 'myApp', '[]', 0, '2020-01-14 15:51:06', '2020-01-14 15:51:06', '2021-01-14 09:51:06'),
('08fffefb016e69a354c20dddc939d1581b401c25f3f4c2c9e69286fa63d9cebcd0c4eeda529380a0', 1, 1, 'myApp', '[]', 0, '2020-01-14 19:52:08', '2020-01-14 19:52:08', '2021-01-14 13:52:08'),
('3a503e85e07bb9a84700b6d6efe122d752da5ca1bdac5f6e93a7f45738359fb7456b09a1e3bcf36f', 1, 1, 'myApp', '[]', 0, '2020-01-14 20:07:17', '2020-01-14 20:07:17', '2021-01-14 14:07:17'),
('8bee89f0d07ba328cdd276d01257158d1772e297ee79908ff9e91f61d23f463bc1cc28afccf2ad2b', 1, 1, 'myApp', '[]', 0, '2020-01-14 20:17:49', '2020-01-14 20:17:49', '2021-01-14 14:17:49'),
('2011cd759e7ab73b698c0f7eab64d011f30a92c20b1c58a6ec4c5db2ffd807b42809cb86491c6979', 1, 1, 'myApp', '[]', 0, '2020-01-15 18:43:04', '2020-01-15 18:43:04', '2021-01-15 12:43:04'),
('f57194decd9374f9f892a3bf9b69a974da6785562d46671bbf9c4b83770c1f50bf5cef7eaa084877', 1, 1, 'myApp', '[]', 0, '2020-01-15 19:03:40', '2020-01-15 19:03:40', '2021-01-15 13:03:40'),
('794dd210dfbf2c66038e66573b0238946a9e62894aff2fc34a7828e1d7f34279cbeb73b446d9ca6b', 32, 1, 'myApp', '[]', 0, '2020-01-15 19:04:11', '2020-01-15 19:04:11', '2021-01-15 13:04:11'),
('661e00fab647423177a50a6e1a2d472e2f2ae32d8a43a373371ec65cb8a0c2fa1e4b7d46ae3ee754', 32, 1, 'myApp', '[]', 0, '2020-01-15 19:04:43', '2020-01-15 19:04:43', '2021-01-15 13:04:43'),
('23ad3566ab9bbc2569b928dc694f78d2ab88fcc821a6254aa723cefb2dff25be9e55c41dafd98c03', 30, 1, 'myApp', '[]', 0, '2020-01-16 11:13:58', '2020-01-16 11:13:58', '2021-01-16 05:13:58'),
('ec6877147e6fb5b4cc5f26a875b5709905d885bfd2a97dbb30f76fe8faeefe92e0add6a001b41e05', 32, 1, 'myApp', '[]', 0, '2020-01-16 15:00:21', '2020-01-16 15:00:21', '2021-01-16 09:00:21'),
('f56040817cb0d43fc682884e018fdddd62d4901935429e69598be4843f29bfccfa92f8d5ac6f2a16', 30, 1, 'myApp', '[]', 0, '2020-01-16 17:19:12', '2020-01-16 17:19:12', '2021-01-16 11:19:12'),
('bf7eb0fc005438b8b9759751aaf6357b0712e970460ff56ccba3b62bffe6b2103521ccedc94a13b4', 1, 1, 'myApp', '[]', 0, '2020-01-16 17:22:44', '2020-01-16 17:22:44', '2021-01-16 11:22:44'),
('aab5b03c6facc736109477147be937839f290ab700b7d93979038f95d818c6e8a126950c6d1ee836', 30, 1, 'myApp', '[]', 0, '2020-01-16 17:23:20', '2020-01-16 17:23:20', '2021-01-16 11:23:20'),
('d823a358b2edf2d7c6bca6df6bd5d3bdc0130927a6f4a42d03f799067c052d1c7c8d39a25f27a1c7', 32, 1, 'myApp', '[]', 0, '2020-01-16 19:02:54', '2020-01-16 19:02:54', '2021-01-16 13:02:54'),
('aa5cb57d7d2f5b65627e6d90d8f8da7c646794b79de022e27db53cce23e4265ddcd80795ef75440a', 32, 1, 'myApp', '[]', 0, '2020-01-16 19:10:39', '2020-01-16 19:10:39', '2021-01-16 13:10:39'),
('fef169695cefb19e1d95ef42ca9b226979813d9b36779dccca0476b5a98f0f95ebf5ffcd3f12feae', 1, 1, 'myApp', '[]', 0, '2020-01-16 19:18:39', '2020-01-16 19:18:39', '2021-01-16 13:18:39'),
('339143fc829159841d4f1bfab95aa2447650c68f4656eb965e177647ac4d4bcfd8725dcd63da13a9', 1, 1, 'myApp', '[]', 0, '2020-01-16 20:41:03', '2020-01-16 20:41:03', '2021-01-16 14:41:03'),
('372d6c3f392248f1e8fd853e3f168434f1710868f791b1a29ba5dc744da107de60c4c3baf0e13762', 32, 1, 'myApp', '[]', 0, '2020-01-17 12:44:33', '2020-01-17 12:44:33', '2021-01-17 06:44:33'),
('1ef3700a642533890ce57747b2b34e5d25379e46204565744cdd9d4ea736907858b773fd9c5ffc2c', 20, 1, 'myApp', '[]', 0, '2020-01-17 13:59:13', '2020-01-17 13:59:13', '2021-01-17 07:59:13'),
('3367d8e61628af2381e286202114ec2da264e87bc3ec3e19dab9c4b20af04e9b1d625bacaa3be2cb', 20, 1, 'myApp', '[]', 0, '2020-01-17 14:02:58', '2020-01-17 14:02:58', '2021-01-17 08:02:58'),
('4db3a99a13cecaebc77d21771aee7970d3fb77a6207d89687da5c67777a5eaa68d584fa32df5110b', 1, 1, 'myApp', '[]', 0, '2020-01-17 15:03:42', '2020-01-17 15:03:42', '2021-01-17 09:03:42'),
('8d1fff30c4977e4462ea580fe7b2b05e210c1420c780958765d382d9f75cfd1669591d48bf39c729', 1, 1, 'myApp', '[]', 0, '2020-01-17 17:05:43', '2020-01-17 17:05:43', '2021-01-17 11:05:43'),
('828f3e8a8e16e87d985ffd5f5e1b5d9bf4e1c04f1d7ac3baf77b1b57b6b823588d83946d0e13cc4b', 20, 1, 'myApp', '[]', 0, '2020-01-17 17:21:33', '2020-01-17 17:21:33', '2021-01-17 11:21:33'),
('5acca8a53574b515e2f3d2a542b3bf7056e75a286bb709f68ba74a1de4110784801d3e0b493dabf9', 1, 1, 'myApp', '[]', 0, '2020-01-17 17:40:45', '2020-01-17 17:40:45', '2021-01-17 11:40:45'),
('12f3d77a144b5e1a64ba1f7d2b8b83f021252b03310cbaeb9397e85e7613006ffccf939ffb0717cd', 32, 1, 'myApp', '[]', 0, '2020-01-17 19:02:22', '2020-01-17 19:02:22', '2021-01-17 13:02:22'),
('2af0cdb38e97ca2125b648b580be62836d6f726018538656630bdb2c36177e1add7ae41ff08f72d7', 1, 1, 'myApp', '[]', 0, '2020-01-17 19:51:56', '2020-01-17 19:51:56', '2021-01-17 13:51:56'),
('c65173f94e29ece0224a4f05c89c07527f474e452e478a57c6b8540ecbde1fd53141c70b9fdf4017', 1, 1, 'myApp', '[]', 0, '2020-01-18 12:27:23', '2020-01-18 12:27:23', '2021-01-18 06:27:23'),
('4b9791c86c87f80c2683a962e64f4760579aeaf5cb6a470d70e0bbc0d02acd30bc57a97439c946ae', 1, 1, 'myApp', '[]', 0, '2020-01-18 12:31:42', '2020-01-18 12:31:42', '2021-01-18 06:31:42'),
('fd0ee6f9f16836bc87aecd7a22bd0acf0aa19a667ee204ca9aa058e368376f1355fe4544447e84d8', 1, 1, 'myApp', '[]', 0, '2020-01-18 12:41:59', '2020-01-18 12:41:59', '2021-01-18 06:41:59'),
('93720d6a115db1fb4b0922046d4b414955151a430a8b296793a462edfe96e527fe65a1377ce90956', 1, 1, 'myApp', '[]', 0, '2020-01-18 12:50:14', '2020-01-18 12:50:14', '2021-01-18 06:50:14'),
('dd54888bd43f05e1e0e53d1a14020809a66650ce114f04d18b1f12fae0e88721656fc8faf935a9d0', 1, 1, 'myApp', '[]', 0, '2020-01-18 13:45:25', '2020-01-18 13:45:25', '2021-01-18 07:45:25'),
('f04738b727433a1128d71830266679d99cd566294735c287fe02f533fd3db5847ae3dbe4e91c19ee', 19, 1, 'myApp', '[]', 0, '2020-01-18 13:46:57', '2020-01-18 13:46:57', '2021-01-18 07:46:57'),
('36290edebb574412215d30c573761d6c00c4f6fb1b90d026c26d715931777f750c5a85db6561ef1a', 1, 1, 'myApp', '[]', 0, '2020-01-18 14:56:17', '2020-01-18 14:56:17', '2021-01-18 08:56:17'),
('d1b163ce2487b65b21b1040df9142642a67ec34897a8b0c429564bc9a0eba20d28194e5b53076296', 1, 1, 'myApp', '[]', 0, '2020-01-18 15:19:39', '2020-01-18 15:19:39', '2021-01-18 09:19:39'),
('3711f056a89f80eb6b873f6a7cf60967139bd4004e66ca1e142a5fbe7c66b2d86ec5e0a3e896553a', 1, 1, 'myApp', '[]', 0, '2020-01-19 00:57:40', '2020-01-19 00:57:40', '2021-01-18 18:57:40'),
('2551487dfbb885a6747fd0124d8a4bcff66670c5d51ffd28fc2ed184b0a05fe368429d48390b5c16', 1, 1, 'myApp', '[]', 0, '2020-01-19 17:50:43', '2020-01-19 17:50:43', '2021-01-19 11:50:43'),
('3b3df78291cd3c2aeb84f1ff68d8c960dd7b539cf53efdd7a37a7d86cd086a8cc9c12533de6aa889', 1, 1, 'myApp', '[]', 0, '2020-01-19 22:07:31', '2020-01-19 22:07:31', '2021-01-19 16:07:31'),
('9d60ce4568442373668d75a20341cd62729c82d5a8767acc34ee368935c9e7aa08ae671fc08180bf', 23, 1, 'myApp', '[]', 0, '2020-01-19 22:10:10', '2020-01-19 22:10:10', '2021-01-19 16:10:10'),
('47064e965974eca92a2188fcb799517cf0ef88c5198a2321b169cf949eab2fbecf18c6aca61487df', 23, 1, 'myApp', '[]', 0, '2020-01-19 22:15:52', '2020-01-19 22:15:52', '2021-01-19 16:15:52'),
('f7c00a030777e51c1dee222fc113dd409007273258c1fe76d2559170fc94cf762c9b3ee8a3b4308b', 23, 1, 'myApp', '[]', 0, '2020-01-20 11:41:34', '2020-01-20 11:41:34', '2021-01-20 05:41:34'),
('fd2a2ccd960f3be0c64d59c2a6db24d0ce8b933c1efb4f5a9265804951a649c8643cbe1c3d475509', 23, 1, 'myApp', '[]', 0, '2020-01-20 11:44:43', '2020-01-20 11:44:43', '2021-01-20 05:44:43'),
('45fa5980c67d890838d498546c67ee70332f27db1cf4adebd6786395fb00794f72ab9b2ae8b7e597', 6, 1, 'myApp', '[]', 0, '2020-01-20 12:22:02', '2020-01-20 12:22:02', '2021-01-20 06:22:02'),
('435af5fb416dab7f3e567dbe89e4ee34e66538abafdc8f13e6e49fac37e02618d734e18b4b020699', 6, 1, 'myApp', '[]', 0, '2020-01-20 12:23:27', '2020-01-20 12:23:27', '2021-01-20 06:23:27'),
('5e0274a1cc536c62cb5642a204aa024ecfdeacbc0c60b1d3c764853a5d6b96a09956f60ba1173e46', 6, 1, 'myApp', '[]', 0, '2020-01-20 13:37:39', '2020-01-20 13:37:39', '2021-01-20 07:37:39'),
('8b57cdd020eb1ac857820ad392d878cbadcb357176ebec210bcfdb70b093c8cce35fcb9eca2befd7', 23, 1, 'myApp', '[]', 0, '2020-01-20 13:58:11', '2020-01-20 13:58:11', '2021-01-20 07:58:11'),
('9589f4d92cb14a6d3dae5ebd19a6d55add3f8a448781fe844b5d846a09cae6eff5514d6adf5eaf92', 1, 1, 'myApp', '[]', 0, '2020-01-20 13:58:54', '2020-01-20 13:58:54', '2021-01-20 07:58:54'),
('5df9a319eac7e3d2f83bd0b369e4ef40e4eacac6b52424e365762201073c127cb58f1375d8c56673', 6, 1, 'myApp', '[]', 0, '2020-01-20 14:31:18', '2020-01-20 14:31:18', '2021-01-20 08:31:18'),
('694fdb642b641f5d27270d5eb71df545c2cf9edaa1ef51c05dc47130562256d7cc01b9c6147aa4dc', 7, 1, 'myApp', '[]', 0, '2020-01-20 14:43:55', '2020-01-20 14:43:55', '2021-01-20 08:43:55'),
('4a2fb6bfdaa3dc32120413897bc5e34b9c2fcff5a1be8ba2478ccb191c2600a6354af47303d29e8a', 23, 1, 'myApp', '[]', 0, '2020-01-20 15:32:10', '2020-01-20 15:32:10', '2021-01-20 09:32:10'),
('73b062df29506f4e402c259575adcfa93233bc08173af5ec72e9854638de75fa949a0f03bcf9d430', 6, 1, 'myApp', '[]', 0, '2020-01-20 15:44:34', '2020-01-20 15:44:34', '2021-01-20 09:44:34'),
('5e537f2b07422c5b06a30be7fda16105d05821017715e2fdbe5002ceb17cb5173db6cc58210c55ef', 23, 1, 'myApp', '[]', 0, '2020-01-20 15:58:02', '2020-01-20 15:58:02', '2021-01-20 09:58:02'),
('eb4911ab91c0f84252db5c9355011b9d58bffbf4044a215d13eeb3dd4550145561907dda0cfd49e2', 20, 1, 'myApp', '[]', 0, '2020-01-20 16:00:08', '2020-01-20 16:00:08', '2021-01-20 10:00:08'),
('1343a1a7bfedba33dc44b66e75381e743ff92f6f517f6dcea8b80fce1ff7a34131e78b4ebfe6bf43', 1, 1, 'myApp', '[]', 0, '2020-01-20 16:03:38', '2020-01-20 16:03:38', '2021-01-20 10:03:38'),
('6acb6c4e574e062de7dc7e17359fd7c8da23333cecaa47183c67a02682ad994e33e4d13d352e7f29', 23, 1, 'myApp', '[]', 0, '2020-01-20 16:27:33', '2020-01-20 16:27:33', '2021-01-20 10:27:33'),
('72ef104a5bdb1696134eadfd437b750721a86f9bcec0e97d418617ccb950c9c83c51b593f745c422', 7, 1, 'myApp', '[]', 0, '2020-01-20 16:30:06', '2020-01-20 16:30:06', '2021-01-20 10:30:06'),
('07e8415b30054363e5b7cb04d47cca6c25276b495bea22b2d7ef9236f2ddea4d2449558b02f85e4f', 6, 1, 'myApp', '[]', 0, '2020-01-20 16:30:38', '2020-01-20 16:30:38', '2021-01-20 10:30:38'),
('64f837b3ac485ce4ac09496d5e45ca2c4e671a15d0fea892d25a1c20d0095c62ece7b469efde0089', 6, 1, 'myApp', '[]', 0, '2020-01-20 16:36:54', '2020-01-20 16:36:54', '2021-01-20 10:36:54'),
('67fcc3bf12a1d46a1e9238c20cd4c424a961688b6a52ab2f53cb78a6ea921c82a6bf64d427bc8a43', 7, 1, 'myApp', '[]', 0, '2020-01-20 16:37:56', '2020-01-20 16:37:56', '2021-01-20 10:37:56'),
('c4c677ea24baadce62f0c9c1099f789848ca7da9c931750f1bf986109223ac1f90e3fefd2711934b', 7, 1, 'myApp', '[]', 0, '2020-01-20 16:49:08', '2020-01-20 16:49:08', '2021-01-20 10:49:08'),
('60d19c563f5d4a7a8ee3db3961a6c2cca03ca89cc13011f2eb35e17f61c671115bf13ab13ad4f4f9', 6, 1, 'myApp', '[]', 0, '2020-01-20 16:51:11', '2020-01-20 16:51:11', '2021-01-20 10:51:11'),
('d4b0a84d97f92c8f349e84020049f97c7960dc71a46c7decf6b5ef1e78e3d986502548e6c9453d15', 7, 1, 'myApp', '[]', 0, '2020-01-20 16:57:05', '2020-01-20 16:57:05', '2021-01-20 10:57:05'),
('425735d74146ba9ff23418aa07fa0653c752e54259d5f894e8efd56fa648282c455f0bcd1e6e0c83', 1, 1, 'myApp', '[]', 0, '2020-01-20 17:12:32', '2020-01-20 17:12:32', '2021-01-20 11:12:32'),
('f9207a0e8b34a0978d2bc8fd79934ac1653b34850c92f04dca3512da7196a422e7268759d5510990', 1, 1, 'myApp', '[]', 0, '2020-01-20 17:31:13', '2020-01-20 17:31:13', '2021-01-20 11:31:13'),
('3756810f99af56a05f4b3d58b91a7e06086fc77a833c8d8bab760706088f2adf65a1d2e2782d596f', 7, 1, 'myApp', '[]', 0, '2020-01-21 11:41:48', '2020-01-21 11:41:48', '2021-01-21 05:41:48'),
('a402c8e8c9e911c8f65ee3d3b833d7965f3a30520b05fc75b42a1943bb866724737a203d3dd2ffd1', 1, 1, 'myApp', '[]', 0, '2020-01-21 11:44:00', '2020-01-21 11:44:00', '2021-01-21 05:44:00'),
('57b944b594ffa6ad89bd1be568de492bcc61cce20230c21f5a32de7b895c2c7b45368db27e7165b0', 1, 1, 'myApp', '[]', 0, '2020-01-21 11:47:26', '2020-01-21 11:47:26', '2021-01-21 05:47:26'),
('7016478d1db2b7cbd76149de72f42970b82e482e12c0cf7d7d2b0f290bdb5239d03ba7c523886177', 1, 1, 'myApp', '[]', 0, '2020-01-21 11:49:28', '2020-01-21 11:49:28', '2021-01-21 05:49:28'),
('3d91582d600a93b5eb2b4e4f564bcb04a1dd37bde83f2310f64b8d9641319eaa98a9135bbd6e7e08', 7, 1, 'myApp', '[]', 0, '2020-01-21 12:16:46', '2020-01-21 12:16:46', '2021-01-21 06:16:46'),
('d014204a1784e79e9752bd5ccbfefd67abf9acf6f61874d6d79dd49aa562207f960bc3859de1b522', 7, 1, 'myApp', '[]', 0, '2020-01-21 12:23:27', '2020-01-21 12:23:27', '2021-01-21 06:23:27'),
('7a7ddd7d0e9debe23799e6ce61d369310b699ab70e08d59c3ce8d8ae1fc36cb5e5b485fb05e3ab78', 7, 1, 'myApp', '[]', 0, '2020-01-21 12:34:10', '2020-01-21 12:34:10', '2021-01-21 06:34:10'),
('745017ea1e44d0c0bbd61601a8669ca4977dd79c170db14372a79fce96bf1214a4fd186b74949578', 7, 1, 'myApp', '[]', 0, '2020-01-21 17:23:54', '2020-01-21 17:23:54', '2021-01-21 11:23:54'),
('d079f5cee2943783e5654f0a300ab672f4ec6348fadc64278f6625f572b5ba12a88323d5b808b79a', 1, 1, 'myApp', '[]', 0, '2020-01-21 19:58:04', '2020-01-21 19:58:04', '2021-01-21 13:58:04'),
('7bac682bb123ddf712576d512526744aea7762304ff99403516d6270f560d8d84083579ad6bd307f', 1, 1, 'myApp', '[]', 0, '2020-01-21 19:58:46', '2020-01-21 19:58:46', '2021-01-21 13:58:46'),
('adeeb25bac250cff470bb2318a3dc268ddb8bbcfc678b4a04f2d1bc93f7b42a1d95eeba4b5b37b3d', 1, 1, 'myApp', '[]', 0, '2020-01-22 12:00:00', '2020-01-22 12:00:00', '2021-01-22 06:00:00'),
('8f42ce64376514bd34796c08825b879b94c5676067fc4631fb3a82a8f7cf6ba07d3ba3676acd3562', 7, 1, 'myApp', '[]', 0, '2020-01-22 12:16:38', '2020-01-22 12:16:38', '2021-01-22 06:16:38'),
('0ec68e5537447550494922f5dda0fed540f5dfd04569f71a53422ef8edeea0b0c685f84aa433ddab', 1, 1, 'myApp', '[]', 0, '2020-01-22 12:50:06', '2020-01-22 12:50:06', '2021-01-22 06:50:06'),
('17e8ec6a745c6db5965e40744b7b7f65f9a2f001f1581b127d16d9377aa563d094854e52fbd7325b', 23, 1, 'myApp', '[]', 0, '2020-01-22 13:21:39', '2020-01-22 13:21:39', '2021-01-22 07:21:39'),
('90dfec764db90c2b5dbd2a73b6ce7ce71b371a0d75ab79f6fa435e62ae80d0c77e13ea31a2bc69eb', 1, 1, 'myApp', '[]', 0, '2020-01-22 14:13:20', '2020-01-22 14:13:20', '2021-01-22 08:13:20'),
('812afe1865b4bf224df8a416473fc9d78593d35325d5ae8fe2d662e8cad698e8c36b26c49dc5a8e2', 1, 1, 'myApp', '[]', 0, '2020-01-22 14:22:45', '2020-01-22 14:22:45', '2021-01-22 08:22:45'),
('cd476e80711f564faa1693f2b275ecafa75b239ade2509d06267a932a3ed5713573bf8b08f82bfe6', 1, 1, 'myApp', '[]', 0, '2020-01-22 15:38:12', '2020-01-22 15:38:12', '2021-01-22 09:38:12'),
('f3874525e89dc9265e2fbec7024b553030f0e9a35872a895cb18681a8132ffd8af4b9e8c3f363619', 1, 1, 'myApp', '[]', 0, '2020-01-22 17:15:22', '2020-01-22 17:15:22', '2021-01-22 11:15:22'),
('2133bf3dcafd3dfec2b79b92e647f0175178e7cb2d05233b2c884d72fb7dce6738ca7bb58aba80bd', 1, 1, 'myApp', '[]', 0, '2020-01-22 17:16:27', '2020-01-22 17:16:27', '2021-01-22 11:16:27'),
('331427c00d99de74e1e7d63b6f3f1c584e9f47e8f5e701e89c33f7c5b94b18e27aa49de02b5984e1', 1, 1, 'myApp', '[]', 0, '2020-01-22 17:19:45', '2020-01-22 17:19:45', '2021-01-22 11:19:45'),
('559a98ddee4036ee53ce717170b730567d977f382aea21e37b3b62ee78e2117bb0eea50833b5c58c', 1, 1, 'myApp', '[]', 0, '2020-01-22 19:28:09', '2020-01-22 19:28:09', '2021-01-22 13:28:09'),
('bfb0550396c4a9dcb2f00d4e14e6f434b93daf656b16d9ff4879f5f9cb84f951e770d18043139b6f', 1, 1, 'myApp', '[]', 0, '2020-01-22 21:05:45', '2020-01-22 21:05:45', '2021-01-22 15:05:45'),
('19446b9dcde104df10298542557e70d2b77df6aa7b1ec60eb29d6b151dae04b12f1be61eb784a3a0', 1, 1, 'myApp', '[]', 0, '2020-01-22 21:06:31', '2020-01-22 21:06:31', '2021-01-22 15:06:31'),
('56c1ec8b390783a66a1a63071b2aa92bf8036cb494f01e8755fb96ca510db460dcb6c8f839b53b7a', 1, 1, 'myApp', '[]', 0, '2020-01-22 21:22:31', '2020-01-22 21:22:31', '2021-01-22 15:22:31'),
('eabe93ebc37bf13159ad9692542ce0690f296334f269a5178c59a9833b38cbfe248b247feea2fa5f', 1, 1, 'myApp', '[]', 0, '2020-01-23 11:55:51', '2020-01-23 11:55:51', '2021-01-23 05:55:51'),
('54ee6169e34dc8193082d104e31ff20a5e6c4e1b08a39315bddecbc106ba4cb0fa38b41990496809', 7, 1, 'myApp', '[]', 0, '2020-01-23 12:54:11', '2020-01-23 12:54:11', '2021-01-23 06:54:11'),
('658a8e6af7d002614890584686ad0e8f5742e91667cc550e7442237e4404f47286e4cda99abdc70d', 1, 1, 'myApp', '[]', 0, '2020-01-23 13:01:03', '2020-01-23 13:01:03', '2021-01-23 07:01:03'),
('735f5162d4bbf01f26a6fb189780026edc20b7f1337d0e9281cc3ee384775985730194506e6d27c4', 7, 1, 'myApp', '[]', 0, '2020-01-23 13:25:12', '2020-01-23 13:25:12', '2021-01-23 07:25:12'),
('46affcf52226fd9e9dccb403b587f4ba13b6b02a9657d703927bdd9481cdb25a778c7abf812a1b71', 1, 1, 'myApp', '[]', 0, '2020-01-23 13:31:01', '2020-01-23 13:31:01', '2021-01-23 07:31:01'),
('9708402419bc728cff02e4b9369a1994aa0b14455a92f04391feda3d706346a1222bacf7884cfec6', 6, 1, 'myApp', '[]', 0, '2020-01-23 13:44:01', '2020-01-23 13:44:01', '2021-01-23 07:44:01'),
('ad4c80f1e2fe77b4e317878d609f16d6589db8c24bb9541c5501a43d08e6581a2879acc1f5be747a', 7, 1, 'myApp', '[]', 0, '2020-01-23 14:18:14', '2020-01-23 14:18:14', '2021-01-23 08:18:14'),
('b0f946e8b5ab66b1dcbc7166ac05854f3527a256c53b416e7e83f2e2920c783dd395cd09969a6fbb', 1, 1, 'myApp', '[]', 0, '2020-01-23 14:50:26', '2020-01-23 14:50:26', '2021-01-23 08:50:26'),
('cd543e5452f8fc239fd4f6b0b3bb20e531a2b758000012b17f8f8ca105b3a4e79bb3413db0e3fdb1', 1, 1, 'myApp', '[]', 0, '2020-01-23 23:05:28', '2020-01-23 23:05:28', '2021-01-23 17:05:28'),
('24b7f29e35de2d8f5f40938d3aa998e05bb7fad1837bdce557765e678e8f19bd7076c2fc16581c29', 1, 1, 'myApp', '[]', 0, '2020-01-24 13:00:36', '2020-01-24 13:00:36', '2021-01-24 07:00:36'),
('8c82e108a01d7c5e24bb4d290f0c86c1ceb1b210c466b3ed4e911ea2bb496f9dea4fef7ad14c30e7', 23, 1, 'myApp', '[]', 0, '2020-01-24 13:35:35', '2020-01-24 13:35:35', '2021-01-24 07:35:35'),
('6a9f17096d354042e8da68a12cad353403d78fe4d1670949e80c04f3b3602ffe42242945352f10f6', 1, 1, 'myApp', '[]', 0, '2020-01-25 21:19:00', '2020-01-25 21:19:00', '2021-01-25 15:19:00'),
('6d90314d5dc0d6756c60e588a08494d12959b0a59966927e18c5c770047b20284a63df6f95423bb9', 1, 1, 'myApp', '[]', 0, '2020-01-26 00:14:47', '2020-01-26 00:14:47', '2021-01-25 18:14:47'),
('9625b4f54ab1f23f32ab7587a68b0069450fd89b824c6529c1447f2bde131aee61602832b7dca68f', 1, 1, 'myApp', '[]', 0, '2020-01-26 15:38:55', '2020-01-26 15:38:55', '2021-01-26 09:38:55'),
('2898fa8772d75ab628da7531c751d215dad85bf5d10986e5c5e86f4152475d8bb598ff78b5532171', 1, 1, 'myApp', '[]', 0, '2020-01-27 11:19:07', '2020-01-27 11:19:07', '2021-01-27 05:19:07'),
('92cfa929575e73e66155c703fa2667f20520ffb23bcc9ef02355f92e564d2d82624fcdefddaa1294', 10, 1, 'myApp', '[]', 0, '2020-01-27 12:08:46', '2020-01-27 12:08:46', '2021-01-27 06:08:46'),
('6c4bda422ff1a55306fe167b3a7a148f0a0c382a544905acdbb40c1d68cb69225592c729699f6feb', 7, 1, 'myApp', '[]', 0, '2020-01-27 13:05:31', '2020-01-27 13:05:31', '2021-01-27 07:05:31'),
('53e86c37812b13ca6528b760c985bb5ff586fa511fff693dc3e5a693d0d9ec221a02ac0e43567fc6', 7, 1, 'myApp', '[]', 0, '2020-01-27 13:05:39', '2020-01-27 13:05:39', '2021-01-27 07:05:39'),
('470f66115cee3571e793839453a4c0f309ed536c5666557dbf838b6746be730097006c2154fc8bab', 8, 1, 'myApp', '[]', 0, '2020-01-27 13:05:47', '2020-01-27 13:05:47', '2021-01-27 07:05:47'),
('b6a049a9cee79e6781428b358944d73178669e5bef4f707e49810cc28fe288b790dde68bc63a67cb', 8, 1, 'myApp', '[]', 0, '2020-01-27 13:05:56', '2020-01-27 13:05:56', '2021-01-27 07:05:56'),
('54d1cc64c3afa35fc85ddf293797bcde5e74c6be39cb80d4c1aaf08ac1d3d24e0b880f36ac5e4f79', 8, 1, 'myApp', '[]', 0, '2020-01-27 13:07:18', '2020-01-27 13:07:18', '2021-01-27 07:07:18'),
('dec87879b9679e313f88676b54b61ef473ce2f6c2f7401dbb1fdc5e847450958ce7eaeb555e92b53', 8, 1, 'myApp', '[]', 0, '2020-01-27 13:07:23', '2020-01-27 13:07:23', '2021-01-27 07:07:23'),
('9f397738d8b689f804386c0d2c44013f019a3fd9d141dea4b77d38735a64a8afa5b97a1fec2b9207', 7, 1, 'myApp', '[]', 0, '2020-01-27 13:07:45', '2020-01-27 13:07:45', '2021-01-27 07:07:45'),
('67a58a113e6ae32dd55635dd34164da3d1742080298e0f7a1ed986dd0b8910a154c23e28a3294075', 23, 1, 'myApp', '[]', 0, '2020-01-27 13:08:18', '2020-01-27 13:08:18', '2021-01-27 07:08:18'),
('f898910a4513d46fb54fd905fd9c8646b9ba1cb158ef116bf94e5d792000dcc2e3586bc6391e634e', 23, 1, 'myApp', '[]', 0, '2020-01-27 13:09:19', '2020-01-27 13:09:19', '2021-01-27 07:09:19'),
('85e5e6aadf319fbccad9e727a92f8f5c46324b68219bd25ed3b4ec3260cd4e3b5593e480c6ef7bb2', 23, 1, 'myApp', '[]', 0, '2020-01-27 13:09:44', '2020-01-27 13:09:44', '2021-01-27 07:09:44'),
('aea0f7260c5959ad3961c543aedab2c71bbda04fc74406e006a3d4bc01d69e8e8b2338351fa1c5d6', 8, 1, 'myApp', '[]', 0, '2020-01-27 13:10:16', '2020-01-27 13:10:16', '2021-01-27 07:10:16'),
('199e19c2208e80dc97cb1745aa53f5894d8ab86d235f435b7b3b0d2366ee2a1fe5992410ebbeac24', 23, 1, 'myApp', '[]', 0, '2020-01-27 13:10:21', '2020-01-27 13:10:21', '2021-01-27 07:10:21'),
('bf3150db8738c69f922e88356cbc60b2866eac73a03428aa8a09461f81ef7a6c295a61fbaa2e0366', 8, 1, 'myApp', '[]', 0, '2020-01-27 13:11:47', '2020-01-27 13:11:47', '2021-01-27 07:11:47'),
('8e868d973289d0a86b4ecbca27c0e3994974fed0734acfbec21c47183a1d79250c547b8d4ea5a26d', 8, 1, 'myApp', '[]', 0, '2020-01-27 13:13:19', '2020-01-27 13:13:19', '2021-01-27 07:13:19'),
('3b57d49e0404818bf1f0dd256b19504e037a42b33b251216fd9d445d89ba8a4373f2f53a45dc02e9', 8, 1, 'myApp', '[]', 0, '2020-01-27 13:13:58', '2020-01-27 13:13:58', '2021-01-27 07:13:58'),
('90556b6ea6af608818470e77ab07610b7c01e9d723e6903006d64a88ac9a9fe584bd590d56066ba0', 10, 1, 'myApp', '[]', 0, '2020-01-27 13:14:58', '2020-01-27 13:14:58', '2021-01-27 07:14:58'),
('6a8394aa68ff7b5d2ab53766896df463fa6e04b0d57614cc61f95cae427f840d9e0c348bf9984e87', 10, 1, 'myApp', '[]', 0, '2020-01-27 13:18:59', '2020-01-27 13:18:59', '2021-01-27 07:18:59'),
('296fb58b001e5b96d8bb0d4721b93d6359778b9d18b6b1d6ead5ffcd335693354f059863be4cbf16', 8, 1, 'myApp', '[]', 0, '2020-01-27 13:21:39', '2020-01-27 13:21:39', '2021-01-27 07:21:39'),
('084b472be6bc77d0c5e1f5fcd172178653f6b0ff37aa2f52dbc0625dabe36e893cc8bfe7de1acbd2', 23, 1, 'myApp', '[]', 0, '2020-01-27 13:21:40', '2020-01-27 13:21:40', '2021-01-27 07:21:40'),
('2b4dc4225ee5f510776050fc3cb3d7382f2334362f2b519e6b7a26bfaff3f8fd93d7fb8d182f5aad', 23, 1, 'myApp', '[]', 0, '2020-01-27 13:24:18', '2020-01-27 13:24:18', '2021-01-27 07:24:18'),
('e0cb2a0133bff441bbd3311e966847da29b2ae9c18f6249f99416a80fb56302042e58fb3350ba139', 6, 1, 'myApp', '[]', 0, '2020-01-27 13:25:04', '2020-01-27 13:25:04', '2021-01-27 07:25:04'),
('d2887d13bfca6b8bc6c174e2fc1a0a70e948d610b765d85a341498c3cfb6fd8393a6a376942e4406', 7, 1, 'myApp', '[]', 0, '2020-01-27 13:25:17', '2020-01-27 13:25:17', '2021-01-27 07:25:17'),
('953963a0ef70f095851b3b0bcec905745aa04fb6a1383e32d9c4e1f79bb0a147f6cd0442c96e37e0', 10, 1, 'myApp', '[]', 0, '2020-01-27 13:25:41', '2020-01-27 13:25:41', '2021-01-27 07:25:41'),
('54ee2fe58f59dc1bf09b8ae01f60af2aed0cf1e67284d8744fba28469074f169f46de42088157e4e', 6, 1, 'myApp', '[]', 0, '2020-01-27 13:57:14', '2020-01-27 13:57:14', '2021-01-27 07:57:14'),
('5c005d995d960004c8a74b8f1521c3935b399df431f5df5628fdca6c355663f98e17f4e1f9957294', 10, 1, 'myApp', '[]', 0, '2020-01-27 14:02:00', '2020-01-27 14:02:00', '2021-01-27 08:02:00'),
('1172552209fab8a1865f331652f10198509acf2b17e38cfcecd8d1ecf19a1011e57427509cd25445', 10, 1, 'myApp', '[]', 0, '2020-01-27 14:02:42', '2020-01-27 14:02:42', '2021-01-27 08:02:42'),
('3e3c3865909b434207e2336352a6ca442d39212ccbe645aa7d562e164517c92b415af4e3805865c7', 23, 1, 'myApp', '[]', 0, '2020-01-27 14:09:40', '2020-01-27 14:09:40', '2021-01-27 08:09:40'),
('d71f3c735edf6d1cf38fcc6ca0b489d20eaff45c8572a96506fa2a1ef8a42c61428b4d245037aa2b', 6, 1, 'myApp', '[]', 0, '2020-01-27 14:23:03', '2020-01-27 14:23:03', '2021-01-27 08:23:03'),
('d20414c0db182d9c8def3db262f75a12c7d2b40e8a992069743ffe7fbd40bdb0c090735b34769421', 7, 1, 'myApp', '[]', 0, '2020-01-27 14:29:59', '2020-01-27 14:29:59', '2021-01-27 08:29:59'),
('7e845afde50f913cfa59d47a08e503a78b6ad7f16a3c13e6d51ea817dcc69e04f8c060b1704b49f8', 23, 1, 'myApp', '[]', 0, '2020-01-27 14:34:42', '2020-01-27 14:34:42', '2021-01-27 08:34:42'),
('6ee92c30427959e08bcbbfdcdc2953a7cda620a62fd14c0593997beeb917509285f822c5f7f71497', 7, 1, 'myApp', '[]', 0, '2020-01-27 14:35:52', '2020-01-27 14:35:52', '2021-01-27 08:35:52'),
('f7f182a1d63690df849a5383e34703d8c118381f75c82ecc6a9f15126b1d405057d99102fc1466ad', 6, 1, 'myApp', '[]', 0, '2020-01-27 14:38:57', '2020-01-27 14:38:57', '2021-01-27 08:38:57'),
('de74033094594194bb7314db588680ca671426779e9c2c6419d299e9c9912ab4af0094206bfca259', 23, 1, 'myApp', '[]', 0, '2020-01-27 14:40:10', '2020-01-27 14:40:10', '2021-01-27 08:40:10'),
('1b601c05c8b19c2022508df636111139365bcb3dda5d9cc9eb2bf6df490afe58f989e99eed268593', 23, 1, 'myApp', '[]', 0, '2020-01-27 14:44:54', '2020-01-27 14:44:54', '2021-01-27 08:44:54'),
('818596cb4d88fcca2103679e6a1f561f20fb3bf48bced9a07e4510ae0d0248a86d4d2cba4efb8e80', 10, 1, 'myApp', '[]', 0, '2020-01-27 14:45:49', '2020-01-27 14:45:49', '2021-01-27 08:45:49'),
('590a4696cf21401073b68a77c5039eea4452097ee54b14328d51bffbda0e0be434fd86e0e1605489', 27, 1, 'myApp', '[]', 0, '2020-01-27 15:01:30', '2020-01-27 15:01:30', '2021-01-27 09:01:30'),
('ffb1d32464d6975e039021efb64861d8415aa8bb1a247dc74be8fe620fd0398867318b73bb9a0e8a', 23, 1, 'myApp', '[]', 0, '2020-01-27 15:05:00', '2020-01-27 15:05:00', '2021-01-27 09:05:00'),
('e12ae022764aa4e6681c3e1b525333b3327e0359651d27718f96c4bb88c5fb9def955649fda5f2e8', 6, 1, 'myApp', '[]', 0, '2020-01-27 15:06:01', '2020-01-27 15:06:01', '2021-01-27 09:06:01'),
('f5edb3e9e177c5ca1991f6cf0468dce8819c9d32ed7a1b4508175016e4bab5dbdb86e8520d8908c8', 1, 1, 'myApp', '[]', 0, '2020-01-27 15:20:02', '2020-01-27 15:20:02', '2021-01-27 09:20:02'),
('e73e230c89009580416bac70059ceb2d4e04923af350db4a9953827fe15d1a7690426b26a7e2cc67', 1, 1, 'myApp', '[]', 0, '2020-01-27 15:34:39', '2020-01-27 15:34:39', '2021-01-27 09:34:39'),
('b059174edb166446a459ddadf2ec0f4b63c6167ca45560cab633e0e736d8c91a535e7a5a5672a9d2', 23, 1, 'myApp', '[]', 0, '2020-01-27 16:31:22', '2020-01-27 16:31:22', '2021-01-27 10:31:22'),
('a3b97945380cde3f4595f1d09e75056612bfbf490641e2d9de102b513ad1ccd969f3c1bf41e42f42', 6, 1, 'myApp', '[]', 0, '2020-01-27 18:13:20', '2020-01-27 18:13:20', '2021-01-27 12:13:20'),
('ab757f12a5958a7aca98accf29efdfd5482e46a42bf0d83bb93476a829e0d93ee79baabd202b0043', 7, 1, 'myApp', '[]', 0, '2020-01-27 18:14:16', '2020-01-27 18:14:16', '2021-01-27 12:14:16'),
('48c9c89315a129cba8b75cb6b86b7ba2ca82088857587649f6274beec06734bb3b8c8ffba493b8dd', 10, 1, 'myApp', '[]', 0, '2020-01-27 18:15:38', '2020-01-27 18:15:38', '2021-01-27 12:15:38'),
('44d383c92a6ff10f4776c0f8709c4b095f5262d4acd39993058b939bed1852f845f14d21a2b9a5da', 1, 1, 'myApp', '[]', 0, '2020-01-27 18:43:41', '2020-01-27 18:43:41', '2021-01-27 12:43:41'),
('b450694bb7ed61cf9addbd86e916d2f295ed2979947b51401b56be4ec0ef159472402a4bcb920584', 27, 1, 'myApp', '[]', 0, '2020-01-27 19:26:47', '2020-01-27 19:26:47', '2021-01-27 13:26:47'),
('70a31fa9f751d1b3357e6dd4e80bb3b4c9bf01970b9eaf40367fca501c80450176c28507e8487b1d', 23, 1, 'myApp', '[]', 0, '2020-01-27 19:34:52', '2020-01-27 19:34:52', '2021-01-27 13:34:52'),
('0846229ee7f8a8c8f3091a52849f6de67b2503bdc0e105c53f896995bb2fa03c5a406e37d3489dcd', 7, 1, 'myApp', '[]', 0, '2020-01-27 19:42:24', '2020-01-27 19:42:24', '2021-01-27 13:42:24'),
('ff0f599e36550918bc0e15af0e9c687048aa641eb8cb0f0b563fdbb94e31490871b7c686233e922d', 10, 1, 'myApp', '[]', 0, '2020-01-27 19:44:34', '2020-01-27 19:44:34', '2021-01-27 13:44:34'),
('d151ab40b982c832f9a999e94a07d3f31969e6d5ee8f3cec595f0fb1d32de15c5adfa02c36866e3b', 23, 1, 'myApp', '[]', 0, '2020-01-27 19:47:30', '2020-01-27 19:47:30', '2021-01-27 13:47:30'),
('2d7ed6a589b334d9c12d6c8a8005af0c9ae7c95dc814a379afdf2da2da76ac23a6f0332758ded655', 1, 1, 'myApp', '[]', 0, '2020-01-27 19:49:19', '2020-01-27 19:49:19', '2021-01-27 13:49:19'),
('bfadc41211c35654c2cf8e778f550a649d8ff68b1872b42d79fcdb9a3f7f3912486282ad92c392a6', 1, 1, 'myApp', '[]', 0, '2020-01-27 19:49:37', '2020-01-27 19:49:37', '2021-01-27 13:49:37'),
('d7641434a7fb6457404de1a8ea02d1b6e8cc74e1a60adac18cf293d5fa9df765080859a4f6be099b', 27, 1, 'myApp', '[]', 0, '2020-01-27 19:58:19', '2020-01-27 19:58:19', '2021-01-27 13:58:19'),
('492acb69a0dfcba79ab446a3cd4e7d840a99e2fa34ee715b3fe199d94325e2fd2d8483ad5da6dd16', 1, 1, 'myApp', '[]', 0, '2020-01-27 19:58:51', '2020-01-27 19:58:51', '2021-01-27 13:58:51'),
('7c9a25943dc274bbfb5c8e43618e2c8e50a96bcc29d39416dd967d3c072122970e18992cb8942e54', 27, 1, 'myApp', '[]', 0, '2020-01-27 20:53:41', '2020-01-27 20:53:41', '2021-01-27 14:53:41'),
('fafcfdeedd61c104836f0b0dece0a066905e5e136db62a7750e22b907c852f51d530494a02912bac', 7, 1, 'myApp', '[]', 0, '2020-01-27 21:10:44', '2020-01-27 21:10:44', '2021-01-27 15:10:44'),
('346e531dae21ecfdc0174fc8d1787f5f2b2e4ece1c9591c2e52f23fa43121ef083192761314e02e6', 6, 1, 'myApp', '[]', 0, '2020-01-27 21:11:16', '2020-01-27 21:11:16', '2021-01-27 15:11:16'),
('a0bfd2d40dc76fc14a1fb4698ab32bda244417cc7b8bb13e9bfd171806b8cde59a5f803e547d1f25', 7, 1, 'myApp', '[]', 0, '2020-01-27 21:12:16', '2020-01-27 21:12:16', '2021-01-27 15:12:16'),
('b358082b772d41a7b72a260c57e96d047ab3b570e702f9c8fe700a7a04e9d6ea9362053e2d4adc9b', 1, 1, 'myApp', '[]', 0, '2020-01-28 11:24:07', '2020-01-28 11:24:07', '2021-01-28 05:24:07'),
('b8cbc8c43c86330d11829945201bd2908375b4af44e2606ee65e4d78c1b4053f30959ea05cc12106', 27, 1, 'myApp', '[]', 0, '2020-01-28 12:46:09', '2020-01-28 12:46:09', '2021-01-28 06:46:09'),
('de1f2988b0fd407767ab66627d61f6c6eb86c358b036a0df0eb8460a607b01ec914d738977cc8ffd', 27, 1, 'myApp', '[]', 0, '2020-01-28 12:48:30', '2020-01-28 12:48:30', '2021-01-28 06:48:30'),
('9740049855a31285079822dd66035f853538de8557801d82938dac07dadd050b8d5642aca605debe', 23, 1, 'myApp', '[]', 0, '2020-01-28 16:59:26', '2020-01-28 16:59:26', '2021-01-28 10:59:26'),
('da20075b825857c8043834a3325e69c175c5fb3893e76083b810bde8336ef268beff11c23e7389ff', 6, 1, 'myApp', '[]', 0, '2020-01-28 17:04:52', '2020-01-28 17:04:52', '2021-01-28 11:04:52'),
('83fd60101f02261da578dc98d3e05e6bb675d9b494bd3ce33b0ae44dd42fe3e6265b0f55d1b42df4', 7, 1, 'myApp', '[]', 0, '2020-01-28 17:18:59', '2020-01-28 17:18:59', '2021-01-28 11:18:59'),
('a8fdb8e1e2171d45cfcd508579685558a6e045c68e342adc1fb40137fdedb17809dd4b8356dcfddf', 1, 1, 'myApp', '[]', 0, '2020-01-28 17:51:38', '2020-01-28 17:51:38', '2021-01-28 11:51:38'),
('c01077ebacbc00cc92008fb5c1ab10c6d864084234dab87d2c61e1f05f61d906b431f54803ebcb2c', 1, 1, 'myApp', '[]', 0, '2020-01-28 19:29:43', '2020-01-28 19:29:43', '2021-01-28 13:29:43'),
('8f7ad111f161896a59be03818d54d9e11390e96259ff47745a1ed9c6136f095b94387d8585259a81', 1, 1, 'myApp', '[]', 0, '2020-01-28 19:32:35', '2020-01-28 19:32:35', '2021-01-28 13:32:35'),
('257d46e4c53fc367cb83db9bd09168d5653f878dc2b887e40f30f55f9d8fba441728528df800cf58', 1, 1, 'myApp', '[]', 0, '2020-01-29 02:07:30', '2020-01-29 02:07:30', '2021-01-28 20:07:30'),
('a481a7b42939b583dd08d964b0286c11f8a25e16b5252567621995ffd7f00fbea5b2691aef3c65c4', 1, 1, 'myApp', '[]', 0, '2020-01-29 03:27:08', '2020-01-29 03:27:08', '2021-01-28 21:27:08'),
('ce8b06cb0f1e3b156e59506437a557f6a952a9db4c7fbe987b6c7204e987e2aae53462e28d671e98', 23, 1, 'myApp', '[]', 0, '2020-01-29 11:00:52', '2020-01-29 11:00:52', '2021-01-29 05:00:52'),
('b0685b948dc2e9ae5ef8fbde89a873a010a3c459dfd98c954f6db6a60eacce71459f3a860054ff80', 1, 1, 'myApp', '[]', 0, '2020-01-29 11:19:21', '2020-01-29 11:19:21', '2021-01-29 05:19:21'),
('17143b524f88d1c9066be16753861cde1f8af09bda171db6c95b130f6497a46a21515786fac89f4a', 7, 1, 'myApp', '[]', 0, '2020-01-29 11:20:46', '2020-01-29 11:20:46', '2021-01-29 05:20:46'),
('1a3dc3061db5c290e8ea6aff56e80d46512e80631b87e8b1116c3a01b144aae0c0bb36b1f4810a8c', 33, 1, 'myApp', '[]', 0, '2020-01-29 11:36:58', '2020-01-29 11:36:58', '2021-01-29 05:36:58'),
('f242fd888c1680bd8cdcccfc1187fdf39e775219e6ca97fba986d3c6accc45a76f93dc501ba19134', 27, 1, 'myApp', '[]', 0, '2020-01-29 11:38:21', '2020-01-29 11:38:21', '2021-01-29 05:38:21'),
('28d09a24023ae45832cf276ac523ece1decaf24ff1a66e29661bbcd6b7a65653464b68de3f95b775', 33, 1, 'myApp', '[]', 0, '2020-01-29 11:38:22', '2020-01-29 11:38:22', '2021-01-29 05:38:22');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('3ba68c352c61a2037a7f3a4a7dd71d9ba3e0b38237093b2109b55d4f55481d47e76cdbe21b4b4acc', 1, 1, 'myApp', '[]', 0, '2020-01-29 11:51:13', '2020-01-29 11:51:13', '2021-01-29 05:51:13'),
('3454ab278808fe3ef5542b13778574e9aed6b806fcd09afa4cc7af39887f70e65f46ed07fe9002ba', 1, 1, 'myApp', '[]', 0, '2020-01-29 12:17:34', '2020-01-29 12:17:34', '2021-01-29 06:17:34'),
('382c0240e6178e5abb8421249013deb535837079ba2ae840e8b1c3c42d4b379167a573a09aeca14f', 15, 1, 'myApp', '[]', 0, '2020-01-29 12:24:59', '2020-01-29 12:24:59', '2021-01-29 06:24:59'),
('878f4a9f068fc3d33e2d4f03846e3043d50192e6fbb0a36a35daf8902429f69a037d1553237f454a', 6, 1, 'myApp', '[]', 0, '2020-01-29 12:26:48', '2020-01-29 12:26:48', '2021-01-29 06:26:48'),
('9d5ca060de422bcb8d2581c6300fe9fe8adb4e46528a0f404df56a2592bbd48edeb0346f44de13f9', 7, 1, 'myApp', '[]', 0, '2020-01-29 12:30:39', '2020-01-29 12:30:39', '2021-01-29 06:30:39'),
('24b8758ee7128353d1859466733928d02cb376d77b3433e0341c38efe9000b3cadde2d28432bee32', 6, 1, 'myApp', '[]', 0, '2020-01-29 12:32:28', '2020-01-29 12:32:28', '2021-01-29 06:32:28'),
('3054b220d75c590b5362786ffe75193b65737e8503d5c77a2d6ece2657f0a0f1fc78107d94ae37c2', 15, 1, 'myApp', '[]', 0, '2020-01-29 12:32:59', '2020-01-29 12:32:59', '2021-01-29 06:32:59'),
('4e5f14e35fcdf4667e45a9a59c71de789ab42060c0c11d147896b7fcdffb127608386b04bf591f49', 35, 1, 'myApp', '[]', 0, '2020-01-29 12:48:39', '2020-01-29 12:48:39', '2021-01-29 06:48:39'),
('87eb0208d494d208ab3f03ad60fd0b4a5f7742756c0c4a06f81beb81672dd81f0543cdd80349ab65', 27, 1, 'myApp', '[]', 0, '2020-01-29 13:42:29', '2020-01-29 13:42:29', '2021-01-29 07:42:29'),
('b515695b1b7b258cc9537b0228a75ae5827fb0a6d083685f7fdda02bea4320b5eba8dddf4bc83f35', 1, 1, 'myApp', '[]', 0, '2020-01-29 13:44:28', '2020-01-29 13:44:28', '2021-01-29 07:44:28'),
('d138dfef345cca18abd9a993da58e7d8939b78494df16850b6ae7664aa175c4dd1904c97099ae111', 27, 1, 'myApp', '[]', 0, '2020-01-29 13:52:36', '2020-01-29 13:52:36', '2021-01-29 07:52:36'),
('cf58ccb9c60402f5e4c95890d9dda4aaf0474af313f6bfd64c9a65f51d90fa78d0dbf7c6335d36a3', 1, 1, 'myApp', '[]', 0, '2020-01-29 13:55:54', '2020-01-29 13:55:54', '2021-01-29 07:55:54'),
('e7ed7f804e811020c9be090bd510ee7ce62f1d695ba7b9437eeb6699cc5fb653d2307e5676f15351', 15, 1, 'myApp', '[]', 0, '2020-01-29 13:56:45', '2020-01-29 13:56:45', '2021-01-29 07:56:45'),
('00b8a82799329134c005415c8fe042fb5a35e0fd05f25956ecaad54cc322e26f95318f6ab61caf5d', 6, 1, 'myApp', '[]', 0, '2020-01-29 13:59:36', '2020-01-29 13:59:36', '2021-01-29 07:59:36'),
('f149fcaddca9f6013c4b97f9fe1bc13037b4612152fae2d4cafa5eaa2bd8ce8b337357b23ecdbd4d', 27, 1, 'myApp', '[]', 0, '2020-01-29 14:24:04', '2020-01-29 14:24:04', '2021-01-29 08:24:04'),
('c43cdaa55a7bf79a8e670e54007eb6131d719383e9b1e815e8a2fccbfbd9a04179d9bce7976577b0', 6, 1, 'myApp', '[]', 0, '2020-01-29 14:31:20', '2020-01-29 14:31:20', '2021-01-29 08:31:20'),
('24b0cc4f3fcd4e1304f2e680e1b6bd0919342adb03e77424afd420f929203c7109aede5f18fb0f0e', 27, 1, 'myApp', '[]', 0, '2020-01-29 14:46:50', '2020-01-29 14:46:50', '2021-01-29 08:46:50'),
('d6ac44620c387b6c1b7a2f60aaa281743b430e1bc76062cccc87d8929d8ee3eb1caaa766fbcec462', 6, 1, 'myApp', '[]', 0, '2020-01-29 15:02:37', '2020-01-29 15:02:37', '2021-01-29 09:02:37'),
('eca0c58ebdb781472077e7bf04b41461c6e44dee6a938fd6afb0875f7f8bec8a61e32f56146db0b9', 23, 1, 'myApp', '[]', 0, '2020-01-29 16:17:08', '2020-01-29 16:17:08', '2021-01-29 10:17:08'),
('58a16c9857f841f957aca772000ee2d30c6421ebca42770354d11527fdc2fe08b98425f63e7c95b7', 1, 1, 'myApp', '[]', 0, '2020-01-29 22:37:36', '2020-01-29 22:37:36', '2021-01-29 16:37:36'),
('fa73bb6a8aafce6471af4438be7b30847729f25cf6a5eb1887e853c83d2e4ed259bb785d6309737e', 1, 1, 'myApp', '[]', 0, '2020-01-30 00:05:45', '2020-01-30 00:05:45', '2021-01-29 18:05:45'),
('9f2648f4015ddcb79a9a748db2df461e97189790e53d7fc5bcced01fe59343cb7b39d2ed7b8e7004', 32, 1, 'myApp', '[]', 0, '2020-01-30 15:01:49', '2020-01-30 15:01:49', '2021-01-30 09:01:49'),
('608d95dffe1042c6104c3e410acec97259fad1fbdf641b1de99463c8a4727812bd5a761cfae359af', 1, 1, 'myApp', '[]', 0, '2020-01-30 16:12:40', '2020-01-30 16:12:40', '2021-01-30 10:12:40'),
('c5630c40b078638d8982b5e84ab37d9b62989a16790bf47d9937d260b8c77e8e57da88f6eb676ce8', 32, 1, 'myApp', '[]', 0, '2020-01-30 16:19:36', '2020-01-30 16:19:36', '2021-01-30 10:19:36'),
('71fb2ceeb1e1ee54ae8b2c14471b048c244fd104231c8d156da8a7a9313c7b1e024d718f07fe9462', 6, 1, 'myApp', '[]', 0, '2020-01-30 16:28:17', '2020-01-30 16:28:17', '2021-01-30 10:28:17'),
('31afee4c7e2cc2f93319267628079078cd389a6ee3dfacca740632457382db7071537875d5a6d682', 32, 1, 'myApp', '[]', 0, '2020-01-30 16:30:38', '2020-01-30 16:30:38', '2021-01-30 10:30:38'),
('d27195a530fd76c2b3ed5fc9961ed3b7be74eb42be5381225cfb84d7c70b6b1529fabf59f831fb32', 6, 1, 'myApp', '[]', 0, '2020-01-30 16:33:32', '2020-01-30 16:33:32', '2021-01-30 10:33:32'),
('2ae4147a59161a47795bbbb38190d50c25d801e876c9b231f2f04d9426bb3e3d48da18333fbd7a53', 32, 1, 'myApp', '[]', 0, '2020-01-30 16:34:52', '2020-01-30 16:34:52', '2021-01-30 10:34:52'),
('ec25fff98cab76a97930a549f2c9e0999304c9605408f038e6ef0c68cb2d07be6bdf7293fe352a0d', 15, 1, 'myApp', '[]', 0, '2020-01-30 16:37:13', '2020-01-30 16:37:13', '2021-01-30 10:37:13'),
('f5b4954368ef1e4e34a29c215a289dc1c31e677bd32f5b114d65015cc45324474584a902025d2f13', 27, 1, 'myApp', '[]', 0, '2020-01-30 16:39:52', '2020-01-30 16:39:52', '2021-01-30 10:39:52'),
('a3ecd3221da19d58d685c366247c13127815a911d71f8a988f58747f29aa6a7345285baa22575c2b', 6, 1, 'myApp', '[]', 0, '2020-01-30 16:41:47', '2020-01-30 16:41:47', '2021-01-30 10:41:47'),
('6f1eb02483947fdd69210593b2c4aba4149f742fa68d0ee1d03635c76804d69cf391a0fd7797764c', 15, 1, 'myApp', '[]', 0, '2020-01-30 16:42:55', '2020-01-30 16:42:55', '2021-01-30 10:42:55'),
('21d79f2a0d28c621b03abef5bba0fef348375f0633ae6ef5fc9aeb65d78371a9eaf73dd94587dd7e', 32, 1, 'myApp', '[]', 0, '2020-01-30 22:07:18', '2020-01-30 22:07:18', '2021-01-30 16:07:18'),
('b0fa628089e940fad13e8321f7b5d7214f327d32a94b4b437ff07c6edd8341b2902498ece5f0b380', 32, 1, 'myApp', '[]', 0, '2020-01-30 22:09:43', '2020-01-30 22:09:43', '2021-01-30 16:09:43'),
('8bac76c45df6d73f4becc4d7498924fdb171c0d201c6062ed0625826b14c9b92fdac48bc57f423e0', 32, 1, 'myApp', '[]', 0, '2020-01-30 22:10:25', '2020-01-30 22:10:25', '2021-01-30 16:10:25'),
('27bce7b36f77723bd3285baba6f71f9e2491209760f5c9f926562bfa00c679d3ac6894bcec0250a5', 10, 1, 'myApp', '[]', 0, '2020-01-30 22:12:48', '2020-01-30 22:12:48', '2021-01-30 16:12:48'),
('b6498c211a6ca3099ccf39f7d6d059285dc351c9cdf47dc2972227d2e201ef64b216b8f5f77b0778', 32, 1, 'myApp', '[]', 0, '2020-01-30 22:16:55', '2020-01-30 22:16:55', '2021-01-30 16:16:55'),
('7815c11d14a5bc5da1ce2bf021c903c3147a9963db8d5192f91b9b72ddb8ae684c94d8a4830ffd18', 33, 1, 'myApp', '[]', 0, '2020-01-31 05:14:33', '2020-01-31 05:14:33', '2021-01-30 23:14:33'),
('3ae2179e8876cf6ce93a3b45be1bb6a76fd0611f8037312e960496570999054dbcd0845ade39bdd0', 44, 1, 'myApp', '[]', 0, '2020-01-31 05:21:42', '2020-01-31 05:21:42', '2021-01-30 23:21:42'),
('18f2226f15897c4d956af03d548cb59c62dd07f9e1ac4865a0ad6cc78288a984c84a30bcbc8df115', 1, 1, 'myApp', '[]', 0, '2020-01-31 18:05:44', '2020-01-31 18:05:44', '2021-01-31 12:05:44'),
('c29d0157a9ac9edec5533700bee8ab90f0b18b836647c5f5c0cc9547aed60e74346a51042f71307d', 33, 1, 'myApp', '[]', 0, '2020-02-02 16:23:22', '2020-02-02 16:23:22', '2021-02-02 10:23:22'),
('b580e85f3d18c051ee6b21c324fab44a1d8c99002c640be750b509ae555a4e1c34045c4d01e03dea', 15, 1, 'myApp', '[]', 0, '2020-02-02 16:34:40', '2020-02-02 16:34:40', '2021-02-02 10:34:40'),
('7da55b5f22dcae619854b9a5a05d3f2c3413856d0ec2c827eed2846f21ff5d16615ec597d9bc69ed', 6, 1, 'myApp', '[]', 0, '2020-02-02 16:38:02', '2020-02-02 16:38:02', '2021-02-02 10:38:02'),
('41b44fcd84552177c1cd7ac86dea53d54241d4c97a9384241df072957ce3a1bc7a1e3451a8907258', 15, 1, 'myApp', '[]', 0, '2020-02-02 16:38:38', '2020-02-02 16:38:38', '2021-02-02 10:38:38'),
('457d7d2dc8c096f2e52d63eddbfc3f9ac892b51da85216fe1e47003ce19646bccc6062fef11ea4bc', 44, 1, 'myApp', '[]', 0, '2020-02-02 16:43:06', '2020-02-02 16:43:06', '2021-02-02 10:43:06'),
('1ab0ea75c6c7190ba5ce5cf796b9273c8f2d16a2c71c27f7f63d90dca48e7d02c2cf960ee3cf81e5', 44, 1, 'myApp', '[]', 0, '2020-02-02 16:46:37', '2020-02-02 16:46:37', '2021-02-02 10:46:37'),
('662c59e036279e2f1d13705645fa369627906b23f2807d691e305a1f6143b7a844281d44d4497b12', 33, 1, 'myApp', '[]', 0, '2020-02-02 16:51:02', '2020-02-02 16:51:02', '2021-02-02 10:51:02'),
('7a3cb62ddb5471cde954b926d04e53be09b2bf67bc0b59e2f65f6e54907866c69f832b58a71252a2', 33, 1, 'myApp', '[]', 0, '2020-02-02 16:51:05', '2020-02-02 16:51:05', '2021-02-02 10:51:05'),
('bf423cab250f64be2b0943e720d6e39d4280914dc1735b0d08cb2117d81a14acf85a50ecacff8310', 45, 1, 'myApp', '[]', 0, '2020-02-02 17:03:33', '2020-02-02 17:03:33', '2021-02-02 11:03:33'),
('c36b64ca7d3df9e97e6f36d8050a476a911c7d49a120e81ee09876bbe89634d613bb9480be3e1c60', 45, 1, 'myApp', '[]', 0, '2020-02-02 17:04:47', '2020-02-02 17:04:47', '2021-02-02 11:04:47'),
('6bd91bf7ce08c6196b0b7f65dab168aec1ed6329b54a5e83e291f8e114427dfd47d9962459b91181', 46, 1, 'myApp', '[]', 0, '2020-02-02 17:31:31', '2020-02-02 17:31:31', '2021-02-02 11:31:31'),
('efb9c87e5ba62c113a7f12d6b622e26302562909889397ded6ffbf2e5e78a6512414f7a81e5b057f', 47, 1, 'myApp', '[]', 0, '2020-02-02 17:39:29', '2020-02-02 17:39:29', '2021-02-02 11:39:29'),
('1db104ede8455552cb1ebd127afc65112ed1a70190924771747ec3e631065d858d8fee045a496731', 48, 1, 'myApp', '[]', 0, '2020-02-02 17:55:45', '2020-02-02 17:55:45', '2021-02-02 11:55:45'),
('12728957cf86b33dba528540f5a4d210e72ce5c98ef7181e5dd92f0d21022945a1a0aca814188ccf', 49, 1, 'myApp', '[]', 0, '2020-02-02 18:31:23', '2020-02-02 18:31:23', '2021-02-02 12:31:23'),
('d5958e9c165d8a2c60227185ea43572da3d4badd88e5f6783f969b4d2ff65680c7f6655d6818c2da', 50, 1, 'myApp', '[]', 0, '2020-02-02 18:54:55', '2020-02-02 18:54:55', '2021-02-02 12:54:55'),
('64a7d3cc2bc6f94285706fdcad1b58b756b83af56a7c52748f73e95d17a35e51c43602fff6bdaebc', 51, 1, 'myApp', '[]', 0, '2020-02-02 19:06:20', '2020-02-02 19:06:20', '2021-02-02 13:06:20'),
('ff5bbc59e288ba55a85b943a69a3f967961622e72c9336fd442159d26c217ff2eb88a06fff28314e', 44, 1, 'myApp', '[]', 0, '2020-02-02 19:41:46', '2020-02-02 19:41:46', '2021-02-02 13:41:46'),
('d1e12e8fe8b2a316465c7a7b2ee53ca7533a3cdcc4dd4d645bff738ab20515c485a00179bb71e206', 44, 1, 'myApp', '[]', 0, '2020-02-02 20:49:57', '2020-02-02 20:49:57', '2021-02-02 14:49:57'),
('31e53cc50efed5a27be1c56f3e2ca95ecc3b2dc09da85d744d5af750f45a62581ac70a99ca43c122', 6, 1, 'myApp', '[]', 0, '2020-02-02 20:58:07', '2020-02-02 20:58:07', '2021-02-02 14:58:07'),
('d325b641477c5f6757e3beb5f1555d00bb54e3ff32a45a4667d943fd57b15b55a856338062c86374', 47, 1, 'myApp', '[]', 0, '2020-02-03 00:39:05', '2020-02-03 00:39:05', '2021-02-02 18:39:05'),
('fde8f2234a08ae3e8112b1763a6e81c5771342e46fe7dfef8104269967574d25ecd04208e3e11df2', 33, 1, 'myApp', '[]', 0, '2020-02-03 16:01:21', '2020-02-03 16:01:21', '2021-02-03 10:01:21'),
('4a2446e5d0a1c1412c7e2e31a452fbd9163f442556d4800b62b12829d8f76d7da47f51695605f23c', 47, 1, 'myApp', '[]', 0, '2020-02-03 16:04:40', '2020-02-03 16:04:40', '2021-02-03 10:04:40'),
('3a09a1a4aaa2caee914f8946a58e4abee0151b65d686e0fbb5834d5fbc09d7b48fe0bbfee70764eb', 52, 1, 'myApp', '[]', 0, '2020-02-03 16:13:05', '2020-02-03 16:13:05', '2021-02-03 10:13:05'),
('f5e606d5735a2d2515dd068143df6a374d345c412ff7b537110d085c1affa26d1c294693df37e7ae', 53, 1, 'myApp', '[]', 0, '2020-02-03 16:21:02', '2020-02-03 16:21:02', '2021-02-03 10:21:02'),
('76b41da9cc18552baac2f0e52cee074522a79579c5b569ad5dd612c3a222eacca59b28a5e94934ae', 54, 1, 'myApp', '[]', 0, '2020-02-03 16:30:35', '2020-02-03 16:30:35', '2021-02-03 10:30:35'),
('04f0688f267471687541fea5b0b29dd6fa1897f82b49193f51ef95183bba0431bd592c10d64b6b1c', 55, 1, 'myApp', '[]', 0, '2020-02-03 16:37:08', '2020-02-03 16:37:08', '2021-02-03 10:37:08'),
('3abcd20bc5b27a0f296ef6973af11b9616de51579c885c569b5fd411e8b9fb45730cca5dd1a6dcfc', 56, 1, 'myApp', '[]', 0, '2020-02-03 16:48:25', '2020-02-03 16:48:25', '2021-02-03 10:48:25'),
('bcf0f229449838616398c95cdc029597738bbf365411983d2372d861906dfb7a4cb30f7cf674f6f0', 57, 1, 'myApp', '[]', 0, '2020-02-03 16:52:55', '2020-02-03 16:52:55', '2021-02-03 10:52:55'),
('aebe182163c09acd62e3921c64885d8c7e60a35a34c9fa22f35af9ef58039b1845d5dfdcd674c1d1', 58, 1, 'myApp', '[]', 0, '2020-02-03 17:04:34', '2020-02-03 17:04:34', '2021-02-03 11:04:34'),
('66d5f8786d76e50524052bd1be44cf4f986b21295f7d5e0fc114d05265128f3182dc39c12c933850', 15, 1, 'myApp', '[]', 0, '2020-02-03 17:23:48', '2020-02-03 17:23:48', '2021-02-03 11:23:48'),
('e36c1d37e6f6c2cab16d4192b91b4d5aa19b64aec745fddeb9f10f8ae145deb7fbd685bd480b7819', 49, 1, 'myApp', '[]', 0, '2020-02-03 18:21:55', '2020-02-03 18:21:55', '2021-02-03 12:21:55'),
('c2470c80ca19c1002925d11b5b248ee38307ee58eee4e3f70db9ef0aa995df36aa30884ce74f47d1', 59, 1, 'myApp', '[]', 0, '2020-02-03 19:35:35', '2020-02-03 19:35:35', '2021-02-03 13:35:35'),
('e32f6fedd9518d86812ccaa03777ace0c9e80e5cc154c3f54a5648672d6bbfbcc7d1cedee32f7ac1', 59, 1, 'myApp', '[]', 0, '2020-02-03 19:48:35', '2020-02-03 19:48:35', '2021-02-03 13:48:35'),
('486b4f099cc39c93d6d8cd959c493c5f1daea80a7595edf75c54395cbf868eab736adbdad3e72775', 6, 1, 'myApp', '[]', 0, '2020-02-03 19:49:03', '2020-02-03 19:49:03', '2021-02-03 13:49:03'),
('9404498f88eb76435e218627325363d333c43b82cc3d3b5bbca6c4c0fd82117332a7c8350b39d834', 59, 1, 'myApp', '[]', 0, '2020-02-03 20:38:19', '2020-02-03 20:38:19', '2021-02-03 14:38:19'),
('9c539d72c89e590a6e8b6fe6556fd4d25fe734b9ee15cf514897962383ea75cf4215ad847c621db0', 59, 1, 'myApp', '[]', 0, '2020-02-03 22:30:04', '2020-02-03 22:30:04', '2021-02-03 16:30:04'),
('add881374ccc9c99d634b489062f11407eee1a994b40033fa7e6c63ce5a22796d32ce39dffb6355e', 1, 1, 'myApp', '[]', 0, '2020-02-03 23:27:53', '2020-02-03 23:27:53', '2021-02-03 17:27:53'),
('5645b6074c8eca484b022e7dcfefb55c31a87c9778f702275cf603090a0b8464ec7613af74631793', 47, 1, 'myApp', '[]', 0, '2020-02-04 16:38:26', '2020-02-04 16:38:26', '2021-02-04 10:38:26'),
('f0b6c770478ee07d8209ed5a1abe509b994063f8ada92ba4fe6d80338f2558184f6af30db0f0e292', 58, 1, 'myApp', '[]', 0, '2020-02-04 16:44:29', '2020-02-04 16:44:29', '2021-02-04 10:44:29'),
('8a425614197d879df1ec657db46bd453ba9cdbf0dffa2f9df4b46a315ef2559aa644ad2b340a0fea', 60, 1, 'myApp', '[]', 0, '2020-02-04 17:05:28', '2020-02-04 17:05:28', '2021-02-04 11:05:28'),
('7c190826a7820581070f509937397d0c134f798effd240d2f35243102b4cbadc09fe0f55662a1832', 61, 1, 'myApp', '[]', 0, '2020-02-04 17:13:05', '2020-02-04 17:13:05', '2021-02-04 11:13:05'),
('d79113edd17781127b2c95d55bf601de5d22cddb6f74c90bd8058d79d6324bb7f0f2c4aacac3dfb7', 62, 1, 'myApp', '[]', 0, '2020-02-04 17:27:22', '2020-02-04 17:27:22', '2021-02-04 11:27:22'),
('3164abc35848954f7688c03627711d9b86cf0ee447afb1109a9be596ab067f632fc30d7efd2fa1f1', 1, 1, 'myApp', '[]', 0, '2020-02-06 18:43:58', '2020-02-06 18:43:58', '2021-02-06 12:43:58'),
('f4cea3fc4413fa321edc938611006569c8035e940780034f99a9b1038ae796202bf15e8dd4af7224', 1, 1, 'myApp', '[]', 0, '2020-02-06 19:29:53', '2020-02-06 19:29:53', '2021-02-06 13:29:53'),
('42e31469a91e4a9e87a7a317b314a8608f9d8ebf24f43e5f3cb7f3f91fa847adf2a4b69ebfd37758', 1, 1, 'myApp', '[]', 0, '2020-02-07 01:43:02', '2020-02-07 01:43:02', '2021-02-06 19:43:02'),
('235d82c39eb01fe7614204e2b1e9f31936a6f3d2725f9e470f330223d8134c58387c9a72b4900b2e', 1, 1, 'myApp', '[]', 0, '2020-02-07 19:06:22', '2020-02-07 19:06:22', '2021-02-07 13:06:22'),
('22f9fc93bbb3f779f8b1b6872e4205911b9d437fa11e4aa9ac54c490c14b4058e0d7b8f45173b9ba', 1, 1, 'myApp', '[]', 0, '2020-02-07 21:40:34', '2020-02-07 21:40:34', '2021-02-07 15:40:34'),
('b2cf1b1f3528984b051c11086e0833804c36c8e703f3b625be2e53cefb22135ee6a48ac03f722ab2', 1, 1, 'myApp', '[]', 0, '2020-02-07 21:50:55', '2020-02-07 21:50:55', '2021-02-07 15:50:55'),
('533c887f03ff72b00f56b5588ed8ca0b72006f1a88cd5c9de2d3d6d60c9659cecbd029153cb709a5', 1, 1, 'myApp', '[]', 0, '2020-02-07 21:51:38', '2020-02-07 21:51:38', '2021-02-07 15:51:38'),
('576429aa50f0573f5b8bfedef81a228c3bd6c37078df51964025c33165cf77773c78cc1745d2f1d4', 1, 1, 'myApp', '[]', 0, '2020-02-07 21:53:20', '2020-02-07 21:53:20', '2021-02-07 15:53:20'),
('1e0da20655f761f19b71b5d0f57a1544dd786b20937c8ffe30b3f974e30f682715a3823a0d73fcc9', 1, 1, 'myApp', '[]', 0, '2020-02-07 21:54:05', '2020-02-07 21:54:05', '2021-02-07 15:54:05'),
('e3c40a2997a992d0e17b61663317d35e103efaf9b0e0bfc452613e691cd1ba11b3f51d4328821c94', 33, 1, 'myApp', '[]', 0, '2020-02-09 17:05:42', '2020-02-09 17:05:42', '2021-02-09 11:05:42'),
('c2ba3f76a9a9ce1dca64c7e0b7890d842c51b77bd7c9f47c0d3d45a88189d71e42ce0c750b1e889b', 1, 1, 'myApp', '[]', 0, '2020-02-10 19:09:06', '2020-02-10 19:09:06', '2021-02-10 13:09:06'),
('58f97fd3e30dae718af026f9c2db825560e4f219bb5931756c4d73dba8a37286784b5eba9d840121', 1, 1, 'myApp', '[]', 0, '2020-02-11 00:38:22', '2020-02-11 00:38:22', '2021-02-10 18:38:22'),
('56e5839490958d7100fef4e623e83d3267cf336b89d33030359d01cc38fc1816a5482ae85d91d26e', 1, 1, 'myApp', '[]', 0, '2020-02-11 02:37:13', '2020-02-11 02:37:13', '2021-02-10 20:37:13'),
('97e11f1e126d10e6d1ccdde0e7dcf13eb4ce967605f9d3290aca36d1fda83999fb80dd62a2ead0ae', 1, 1, 'myApp', '[]', 0, '2020-02-11 16:52:01', '2020-02-11 16:52:01', '2021-02-11 10:52:01'),
('833291c4d109d6f94782e239746672266e976c59deffb208dbb8707cc179e8e9b1c26df6b344e67a', 59, 1, 'myApp', '[]', 0, '2020-02-11 16:52:32', '2020-02-11 16:52:32', '2021-02-11 10:52:32'),
('4a58ca84673cf124d0491cf2263a12a0af001dacadc0f63bf99e6e44acf3ace49b2980fb357fd15e', 1, 1, 'myApp', '[]', 0, '2020-02-11 23:44:14', '2020-02-11 23:44:14', '2021-02-11 17:44:14'),
('cb26ce2674a9451320d75566dc55e432730555c61f0f057ed0727eedc2578e6124cb0520f63b03dc', 59, 1, 'myApp', '[]', 0, '2020-02-12 00:15:19', '2020-02-12 00:15:19', '2021-02-11 18:15:19'),
('7d788277945c6e82deb6ecd48f621f08edb862d0537ce9f2e6fea9776a934ff09c91b19b02ecca5f', 1, 1, 'myApp', '[]', 0, '2020-02-12 00:18:14', '2020-02-12 00:18:14', '2021-02-11 18:18:14'),
('05e9891274aa0b264203f0ddb3fb9d6e2cd06cb5f9d32d746792002d502ed66759d6a8406117d122', 1, 1, 'myApp', '[]', 0, '2020-02-12 01:40:25', '2020-02-12 01:40:25', '2021-02-11 19:40:25'),
('cdea34973956d067d5960438b019b5e9c57bffa957e566bc990af0ca77a28b3e54669346b2f32b99', 1, 1, 'myApp', '[]', 0, '2020-02-12 17:42:40', '2020-02-12 17:42:40', '2021-02-12 11:42:40'),
('438b151b45011e4c2628cedcf9f9f8332d188a08c25617e5680b00da948c810d825f7152bfe09d44', 59, 1, 'myApp', '[]', 0, '2020-02-12 18:30:58', '2020-02-12 18:30:58', '2021-02-12 12:30:58'),
('c80c1b02bdce71805db72ac43a2efb2d853454f56742f176701b2f4ccd616cc273fd8df0dda37e33', 1, 1, 'myApp', '[]', 0, '2020-02-12 19:15:25', '2020-02-12 19:15:25', '2021-02-12 13:15:25'),
('25a170374781c5eba08b0f6599c734dbd25b3308eb52b4dfd0db49f9f354969239b7c600b7d737ea', 1, 1, 'myApp', '[]', 0, '2020-02-12 22:49:18', '2020-02-12 22:49:18', '2021-02-12 16:49:18'),
('df9feb8c94509e16daf20287577a3e08110afaec4aa2b3ff46370993137a9309b2b1a8100e4c00cd', 1, 1, 'myApp', '[]', 0, '2020-02-12 23:04:15', '2020-02-12 23:04:15', '2021-02-12 17:04:15'),
('f172caec8a28eb21c87b406633aadff5765af8bb48d28219e6b79c0b4131c4fd613fcb6215b5d8e7', 1, 1, 'myApp', '[]', 0, '2020-02-13 17:21:49', '2020-02-13 17:21:49', '2021-02-13 11:21:49'),
('1f4d71331304211daae179430bafe47bc748f9971d92fe44df370e3b295bf10ce80911bea47bf5f2', 63, 1, 'myApp', '[]', 0, '2020-02-13 17:31:32', '2020-02-13 17:31:32', '2021-02-13 11:31:32'),
('99e8a14a80960de878b727c39996874f94494f6a974584828f64497454d333bda109b6508d5defcd', 63, 1, 'myApp', '[]', 0, '2020-02-13 17:33:29', '2020-02-13 17:33:29', '2021-02-13 11:33:29'),
('85638ebc9811605544f336dbf722c3e31d21d172bac5fd74a553dee7fc41c9fcb7145ecd0d6f1ea4', 15, 1, 'myApp', '[]', 0, '2020-02-13 17:34:02', '2020-02-13 17:34:02', '2021-02-13 11:34:02'),
('60feaa4620b5c72c3d148152aa526cdc5c3884b87f6c25af58e0b81485dc0d5eeb11a17ef7db7736', 6, 1, 'myApp', '[]', 0, '2020-02-13 17:35:28', '2020-02-13 17:35:28', '2021-02-13 11:35:28'),
('34a081cf4ceb00a7cd96024f746722b00b59d3294fa74ae99164ea581fc362a23a479742412582b5', 15, 1, 'myApp', '[]', 0, '2020-02-13 17:36:16', '2020-02-13 17:36:16', '2021-02-13 11:36:16'),
('d4f08d6cd24684b504f7776e60d1c4f9a5ddd57b4685ef23dd12746ec4c45a97f028adc8278eb133', 63, 1, 'myApp', '[]', 0, '2020-02-13 17:36:42', '2020-02-13 17:36:42', '2021-02-13 11:36:42'),
('833f121f7f7187982c024b380df5be48b4ef56b6ffe9b90604428be95cf6808e9462695a0b83f0fa', 15, 1, 'myApp', '[]', 0, '2020-02-13 17:38:05', '2020-02-13 17:38:05', '2021-02-13 11:38:05'),
('96e3c5e86f78c611314eaac0fcecb7a9d9791486819ececea3b4d7ab2900d19d0f0464c125c03371', 6, 1, 'myApp', '[]', 0, '2020-02-13 17:41:25', '2020-02-13 17:41:25', '2021-02-13 11:41:25'),
('478479d2050878e634a6d197562f82876d1c55ac56f0237bc0198eee0b1cc0d4782d7f15896583ac', 15, 1, 'myApp', '[]', 0, '2020-02-13 17:48:49', '2020-02-13 17:48:49', '2021-02-13 11:48:49'),
('a140d771351f38fb9a433fb07d8b53b3695ee8c8a1d32db5bd4cef943545b6c07dab5b5e7ee070a8', 15, 1, 'myApp', '[]', 0, '2020-02-13 21:02:52', '2020-02-13 21:02:52', '2021-02-13 15:02:52'),
('e499f60ed8f7a43863bcc5c0cb789154798325e5f71d15ada04e4046cec3b0b2591fe33e003e9b17', 15, 1, 'myApp', '[]', 0, '2020-02-13 21:10:42', '2020-02-13 21:10:42', '2021-02-13 15:10:42'),
('1ef71ed2129e3d3310793e3d48d68a760617563c4e9e73e0cb311ef5333237fa695bbca3cc11e838', 15, 1, 'myApp', '[]', 0, '2020-02-13 22:26:49', '2020-02-13 22:26:49', '2021-02-13 16:26:49'),
('01f6c315dc7bccb67f4be0b920ede9dc8ad3187b26fb3b264f64b9c9b4484368e92ad15a913d960d', 15, 1, 'myApp', '[]', 0, '2020-02-13 22:28:51', '2020-02-13 22:28:51', '2021-02-13 16:28:51'),
('0d852661acf84475b31661b90fc9e5b7ff7979127022b74a275b39143eac499a7a24de85db211cd4', 15, 1, 'myApp', '[]', 0, '2020-02-13 23:36:12', '2020-02-13 23:36:12', '2021-02-13 17:36:12'),
('dd482dc3134a28d657251164252461318279957d0d276c99caf04fa7e57fc65e1dc95cf391bd404f', 59, 1, 'myApp', '[]', 0, '2020-02-13 23:38:10', '2020-02-13 23:38:10', '2021-02-13 17:38:10'),
('d02b1c714a1622f47a369f1229de339be00d8ac25856ec871266f1d1f94059f3e4c8db63a89459b9', 1, 1, 'myApp', '[]', 0, '2020-02-14 01:08:41', '2020-02-14 01:08:41', '2021-02-13 19:08:41'),
('1be355422986308ca9586593fa71a8cc028d2493a1c87f42a4024200b43deb9651dff6378b33ec57', 1, 1, 'myApp', '[]', 0, '2020-02-14 01:14:01', '2020-02-14 01:14:01', '2021-02-13 19:14:01'),
('b97b7fd68c58c2150c08fe54dd71f24e733a0f2d3ccd3e9416d2823222ba27f838fbdc88a7a50f8c', 1, 1, 'myApp', '[]', 0, '2020-02-14 18:07:15', '2020-02-14 18:07:15', '2021-02-14 12:07:15'),
('266b108b150dacd6056b6ba5be69031472150f857bec87f7e07614ea5be1543af00d0e56ca6532e1', 1, 1, 'myApp', '[]', 0, '2020-02-14 18:20:18', '2020-02-14 18:20:18', '2021-02-14 12:20:18'),
('85ac5f7e6014e4752166cb04ec1c83f32894d00521eaec5166e3265557291ec2edd955445d608852', 1, 1, 'myApp', '[]', 0, '2020-02-14 18:49:29', '2020-02-14 18:49:29', '2021-02-14 12:49:29'),
('4ce548ee067761d5cf223d216f993a9b3e052fb06a5ad3f8113e3aca8eda7cca46e2d7425e5041be', 59, 1, 'myApp', '[]', 0, '2020-02-14 20:25:44', '2020-02-14 20:25:44', '2021-02-14 14:25:44'),
('16f4afb7c3c6b5128bacfd9d2f8674fc5bfac878eaaffe97b3cab2cf62d90ea74f66e10c9e50a9b1', 1, 1, 'myApp', '[]', 0, '2020-02-15 00:27:48', '2020-02-15 00:27:48', '2021-02-14 18:27:48'),
('9238a0cca1a780060dcfc2a38e52b37031af63c30ae0c1b00964f766c213d0c9f1c5380401e6778c', 59, 1, 'myApp', '[]', 0, '2020-02-15 05:22:44', '2020-02-15 05:22:44', '2021-02-14 23:22:44'),
('eab4fb2113072d197eca01dd9a3330165baa49bdafa3197464bf7c802e90820a4b1ed7e4de301753', 59, 1, 'myApp', '[]', 0, '2020-02-15 19:57:57', '2020-02-15 19:57:57', '2021-02-15 13:57:57'),
('7c572db5d709434a4847253399b4b2e6600de1e641d270d49511942de487f002fc3c6a3f3fcda217', 1, 1, 'myApp', '[]', 0, '2020-02-17 04:00:16', '2020-02-17 04:00:16', '2021-02-16 22:00:16'),
('60183bb111f40500ae697eaaf3e0966221d47eb685390907111a92434560065c40d11259e8ab4191', 63, 1, 'myApp', '[]', 0, '2020-02-17 17:40:12', '2020-02-17 17:40:12', '2021-02-17 11:40:12'),
('91691b29c7dcf17a7bc6ececc578f190117574af486867507dd3c65d981301a86e3d94109a12086a', 15, 1, 'myApp', '[]', 0, '2020-02-17 17:46:56', '2020-02-17 17:46:56', '2021-02-17 11:46:56'),
('de1de165c4832545d8e1e4c979d9692233a24200f36c0f9ee54adde197b8e426a291eb2c49f6af01', 6, 1, 'myApp', '[]', 0, '2020-02-17 17:50:42', '2020-02-17 17:50:42', '2021-02-17 11:50:42'),
('bd6077b12707c610dfc3093ae1348ef1d1e7f4cc61c1e351dd900c121bd5ca64cd3ae86c4674f7bb', 63, 1, 'myApp', '[]', 0, '2020-02-17 17:51:41', '2020-02-17 17:51:41', '2021-02-17 11:51:41'),
('ff7d67a7c69e88b8476672a9d089ef0e5509afc7f170f5b750da3c4f8dba06cd085504e81322f35b', 15, 1, 'myApp', '[]', 0, '2020-02-17 17:52:17', '2020-02-17 17:52:17', '2021-02-17 11:52:17'),
('b2ed71ed7a49f3585a550865b828803a03f581078a8a2bedc481488b35785e9710a7b72f3c5a897d', 6, 1, 'myApp', '[]', 0, '2020-02-17 18:22:32', '2020-02-17 18:22:32', '2021-02-17 12:22:32'),
('9f8aacfe8316fa679286f2ff92eeff6a2e4772bacb4bea51a576fd30ee5fe15591f401827e3bf46b', 15, 1, 'myApp', '[]', 0, '2020-02-17 18:27:48', '2020-02-17 18:27:48', '2021-02-17 12:27:48'),
('97def6da0ead66c6b99b6438548d85dc1154ed5376f9db33412394d79dc399c4cf06c36dff5a5a92', 1, 1, 'myApp', '[]', 0, '2020-02-18 01:05:24', '2020-02-18 01:05:24', '2021-02-17 19:05:24'),
('5799dbb4f1338cc910ca06dcd376c1ee48c32420154faa3935df47473e0ba9d843c12ec2e392d647', 6, 1, 'myApp', '[]', 0, '2020-02-18 18:02:33', '2020-02-18 18:02:33', '2021-02-18 12:02:33'),
('a831cc77bae042698296b39ef9f297bed46f242fd00d2e288ad2ecf5d378b645097ce3dab35ddbcf', 7, 1, 'myApp', '[]', 0, '2020-02-18 18:03:11', '2020-02-18 18:03:11', '2021-02-18 12:03:11'),
('9b4d54f9424d0d22a7acec002042e5bbd8bb8dd60b3a4e6f741434a43f97dcd2edc412c57fe50c1e', 1, 1, 'myApp', '[]', 0, '2020-02-18 19:20:15', '2020-02-18 19:20:15', '2021-02-18 13:20:15'),
('6ad9be0ab70db7cfc08a5b4655c386f629759386698691e26f27c784e497df8343f4c3ffa2ac0934', 59, 1, 'myApp', '[]', 0, '2020-02-18 19:52:39', '2020-02-18 19:52:39', '2021-02-18 13:52:39'),
('8c5d1464f4c026d80092c7c5d80382c77da32b46a464549a5f681385ffa05702d5b2d11b9717b027', 1, 1, 'myApp', '[]', 0, '2020-02-18 21:54:07', '2020-02-18 21:54:07', '2021-02-18 15:54:07'),
('95037aa0c0441002251ec0f360e9ad894b70b88c4dceb4c92e3d2b844b912c26d3425646b4c63b53', 1, 1, 'myApp', '[]', 0, '2020-02-18 22:09:22', '2020-02-18 22:09:22', '2021-02-18 16:09:22'),
('f708dffd97fb6e61f79ff2b09d827c796aaf3c05c1d23d8272a698a03d33dd00b0cb70d1382da710', 1, 1, 'myApp', '[]', 0, '2020-02-18 23:17:26', '2020-02-18 23:17:26', '2021-02-18 17:17:26'),
('29ae2403baf1381e0cd85f41eee63f9013937ee59c554d4ad0bedabe69c34546db3cd1a1e7a39525', 1, 1, 'myApp', '[]', 0, '2020-02-19 00:18:11', '2020-02-19 00:18:11', '2021-02-18 18:18:11'),
('1cdfffb7c5af39c2e2dd27ff49cd8103a9ebd242bf583f35a1799e7126898b8abe81108d3b8a0a1c', 59, 1, 'myApp', '[]', 0, '2020-02-19 04:01:07', '2020-02-19 04:01:07', '2021-02-18 22:01:07'),
('f63c35a99b582570195d7fda4d3b878bafc1beb442006cf5a882510728aff9b93f976a5f8f92d590', 1, 1, 'myApp', '[]', 0, '2020-02-19 17:34:36', '2020-02-19 17:34:36', '2021-02-19 11:34:36'),
('6e22cd49a58da98817aee4784f3d23c55fa1900c6d7a61f3058e91763669da5fc06b5724d0f03106', 1, 1, 'myApp', '[]', 0, '2020-02-19 17:58:04', '2020-02-19 17:58:04', '2021-02-19 11:58:04'),
('c9f130d569095f65cbf32ed43e750ac99c046b61034a34f933ddc2a3334fcef58ba208958794b7e3', 1, 1, 'myApp', '[]', 0, '2020-02-20 01:46:56', '2020-02-20 01:46:56', '2021-02-19 19:46:56'),
('342dfe8d39c0040e7558f73794e996d9c6c1fb18f8363bf65b74e9c6ae5dd87accb9f88b981c189f', 59, 1, 'myApp', '[]', 0, '2020-02-20 01:55:40', '2020-02-20 01:55:40', '2021-02-19 19:55:40'),
('22df7573ddaf50d17efc30e28c7b9f058cbde15caf550453116a0cb74020e214ad42a3a682aa146a', 59, 1, 'myApp', '[]', 0, '2020-02-20 02:01:40', '2020-02-20 02:01:40', '2021-02-19 20:01:40'),
('19d4d0b098f5a60c038f5e82cf4d3b6798951c3c8c2739254f12e17f5ec288c26c2ec95de776b585', 59, 1, 'myApp', '[]', 0, '2020-02-20 02:04:13', '2020-02-20 02:04:13', '2021-02-19 20:04:13'),
('6929569b6ff60bcc9b2a7910a5d453f2a92a4fa85bbd8154fdbb36d2a132f2eb98d59ddce2342223', 6, 1, 'myApp', '[]', 0, '2020-02-20 02:08:28', '2020-02-20 02:08:28', '2021-02-19 20:08:28'),
('30a90dedb698737d0a2afa9df92f66a6f0886aa3625a9ee0c4c75e39a288e76838edfeebaa9c97c2', 59, 1, 'myApp', '[]', 0, '2020-02-20 02:10:56', '2020-02-20 02:10:56', '2021-02-19 20:10:56'),
('ae1392f1270b3d50555030f3b0a4513afc3a631a16593373dfbfd2f8ceae06fd7061feea3ce63a92', 7, 1, 'myApp', '[]', 0, '2020-02-20 02:11:49', '2020-02-20 02:11:49', '2021-02-19 20:11:49'),
('5c408d4093ed1824eae84b4ce10617fbbaab0c8232a6c1d54ce0fe1cc56d966285a03438c2769c41', 59, 1, 'myApp', '[]', 0, '2020-02-20 02:12:52', '2020-02-20 02:12:52', '2021-02-19 20:12:52'),
('41b55dc839611c46af653aead93eff6c679606e4d86991e706242b6d4c1287dad4e1b50e77daeff1', 1, 1, 'myApp', '[]', 0, '2020-03-02 15:11:24', '2020-03-02 15:11:24', '2021-03-02 15:11:24'),
('cdaf0c575a6c492051a0dfcd4d4bfb91825d58a4d6a8e387d5a2925029a05cf66dfe348b45cb3a25', 63, 1, 'myApp', '[]', 0, '2020-03-02 15:13:35', '2020-03-02 15:13:35', '2021-03-02 15:13:35'),
('025e06c6100b6ba1587812c3b7b27e3030699dbc43f9dbd6e9b42633374233e3cb4811ba8e42e8a3', 63, 1, 'myApp', '[]', 0, '2020-03-02 15:15:34', '2020-03-02 15:15:34', '2021-03-02 15:15:34'),
('ed67dc78b05eafa7b41fe0bca55599e07f385398145097a7fb491b6b89a6477b86262b964971ee11', 63, 1, 'myApp', '[]', 0, '2020-03-02 15:18:00', '2020-03-02 15:18:00', '2021-03-02 15:18:00'),
('d510e11284c8c440696869fb74e2c63bdb9005a104c32adbd3c37d6843bd0bbb6e895c79e87e44a2', 1, 1, 'myApp', '[]', 0, '2020-03-02 15:44:18', '2020-03-02 15:44:18', '2021-03-02 15:44:18'),
('d8c321174d1fca8746e940e78b983a781722595d0e9c79d1b7acdefee46f9f865902e4e5cbf4a55b', 1, 1, 'myApp', '[]', 0, '2020-03-02 15:56:18', '2020-03-02 15:56:18', '2021-03-02 15:56:18'),
('acd040707c3a7fd210c94df973b03eb7170c3ed8a4a1b162f769a44cd281650e0f8755a6a63118d0', 1, 1, 'myApp', '[]', 0, '2020-03-02 16:01:04', '2020-03-02 16:01:04', '2021-03-02 16:01:04'),
('d5b445ca3f923bb16e7da10ebe38591a91d1a435dfa6c2cecb562d9d2278ed01eaccda8c94158a57', 1, 1, 'myApp', '[]', 0, '2020-03-02 16:11:17', '2020-03-02 16:11:17', '2021-03-02 16:11:17'),
('ce773f39ef2e42c22d6390d683848811c55f01379628ec346d70d7caf23bbcb300e6a98df5b0adc3', 1, 1, 'myApp', '[]', 0, '2020-03-02 16:30:51', '2020-03-02 16:30:51', '2021-03-02 16:30:51'),
('f133d2d829e49d28c6ad31f15bb49dce24bb51eacae5f5277dd3040a65db08be3fdaed5d35dea983', 63, 1, 'myApp', '[]', 0, '2020-03-02 17:10:15', '2020-03-02 17:10:15', '2021-03-02 17:10:15'),
('de63ba937bf8113777a41b4a9a07ea7a1f1e75bd7f8ed7f6f133a8f33df658d8ce77784756daea19', 1, 1, 'myApp', '[]', 0, '2020-03-02 17:11:24', '2020-03-02 17:11:24', '2021-03-02 17:11:24'),
('efaac36b94bf5093bbc0fa590e3b4c49aaf6e6689f7a2c598807e001fc7f4c4a220238e580e33aad', 1, 1, 'myApp', '[]', 0, '2020-03-02 17:16:46', '2020-03-02 17:16:46', '2021-03-02 17:16:46'),
('4e33240477eed769e8adc3ebea725170084efb390bc1551336e5028214c2654f7a16c3c2da48dd25', 7, 1, 'myApp', '[]', 0, '2020-03-02 17:18:06', '2020-03-02 17:18:06', '2021-03-02 17:18:06'),
('d45c03bf75b24935a0308e9899662e7fe0dd3770ca8f48d4ec79a34791bd6346e577a3deedb0d3fd', 15, 1, 'myApp', '[]', 0, '2020-03-02 17:18:52', '2020-03-02 17:18:52', '2021-03-02 17:18:52'),
('af483822ef35324ab5e449bd37c1b458fc6ef18c28281876dfb662302c51894a178c5482d429170b', 59, 1, 'myApp', '[]', 0, '2020-03-03 06:09:45', '2020-03-03 06:09:45', '2021-03-03 06:09:45'),
('cab503aac5ad39d948874945e922781ee2347780283f64b9c42132edd65a37c6428909a113d6bf0e', 1, 1, 'myApp', '[]', 0, '2020-03-03 17:38:18', '2020-03-03 17:38:18', '2021-03-03 17:38:18'),
('996ddd7992f6be7fdc553538f9c486cad8c39debfbfdf77cc27f0bc6003dd208e1c3c5fd1c6aa1bf', 1, 1, 'myApp', '[]', 0, '2020-03-03 18:43:44', '2020-03-03 18:43:44', '2021-03-03 18:43:44'),
('ef2e2f9c6ca804215c786c6aba8107e4175479bffa3358a39e36c84b6a8986e7ec8371380f75820a', 1, 1, 'myApp', '[]', 0, '2020-03-05 12:23:25', '2020-03-05 12:23:25', '2021-03-05 12:23:25'),
('375e45cde5910f5ee836a47e32ff8e3fc5880bafeae6b14acfcb40bbba5fb566432a56da125108cf', 59, 1, 'myApp', '[]', 0, '2020-03-05 12:24:12', '2020-03-05 12:24:12', '2021-03-05 12:24:12'),
('f1cde94a1d5d749745e9ebccb021a9eb2a368fbd49771626f4076635855aeac98b2618d48b156dbb', 6, 1, 'myApp', '[]', 0, '2020-03-05 12:29:23', '2020-03-05 12:29:23', '2021-03-05 12:29:23'),
('ae5c729a5a5dea70a5bbe6437e1acc0696a3fddc7cb86fb01c3bc27332f6ada0b12b6ece90e4bfc0', 7, 1, 'myApp', '[]', 0, '2020-03-05 12:31:54', '2020-03-05 12:31:54', '2021-03-05 12:31:54'),
('5cdbd1389c944f03fcd8f14b755ce38befbdf668c89cc69f35bec243556e213d02d22690ff3922f3', 1, 1, 'myApp', '[]', 0, '2020-03-05 15:28:31', '2020-03-05 15:28:31', '2021-03-05 15:28:31'),
('ad725f4fcf4e95bd61eeea135777d9af0083c4fef13b5c9e96f581a89ff8ee4c6f4d376045ab52ca', 1, 1, 'myApp', '[]', 0, '2020-03-05 16:12:15', '2020-03-05 16:12:15', '2021-03-05 16:12:15'),
('2220d170855dee5e54c3663efcf5d0aaaf17fac6636033368083ee053964a1dcfbe7356bacd9dadf', 1, 1, 'myApp', '[]', 0, '2020-03-05 17:34:38', '2020-03-05 17:34:38', '2021-03-05 17:34:38'),
('0f936a0655b7ef9e814b9a31fac4d6a019cfb4ea80a9fa46c962a85b3c9baeb130958bbd59509cf8', 1, 1, 'myApp', '[]', 0, '2020-03-07 12:39:12', '2020-03-07 12:39:12', '2021-03-07 12:39:12'),
('0c89f721a1c975190173ad1e21f3525ff048975e34bc4ccdb8b0f15a07d6aceb5b9f1b43404a1748', 33, 1, 'myApp', '[]', 0, '2020-03-09 11:54:39', '2020-03-09 11:54:39', '2021-03-09 11:54:39'),
('c9c41959525c9de8e02250e83a6977308bb639dcb050e0abcf7dafbe2e9d516ec12455dc0e44cf15', 33, 1, 'myApp', '[]', 0, '2020-03-10 10:25:25', '2020-03-10 10:25:25', '2021-03-10 10:25:25'),
('983356d2a3af69db6640a33e34afb3389c950bf6ac1ae1398356796242b61204f2731a1b5d062c1c', 33, 1, 'myApp', '[]', 0, '2020-03-10 10:38:35', '2020-03-10 10:38:35', '2021-03-10 10:38:35'),
('9e2816758b896884938b520c7dae276e267c958bf359cf486478afa91b6c6e978f426b54317bd4ad', 1, 1, 'myApp', '[]', 0, '2020-03-11 14:54:17', '2020-03-11 14:54:17', '2021-03-11 14:54:17'),
('b68c03f007fdfda4e619098bccb8a218fad7557e6fed1f1d0ea50e6b0ea34c3f3c462667c2523b58', 1, 1, 'myApp', '[]', 0, '2020-03-16 13:26:05', '2020-03-16 13:26:05', '2021-03-16 13:26:05'),
('275dbfc48efe18c926e28825b87550a4792ec3ff4cf62696e90baf3bb62522d951990c1a9b68d63b', 1, 1, 'myApp', '[]', 0, '2020-03-16 16:50:59', '2020-03-16 16:50:59', '2021-03-16 16:50:59'),
('c7d0461d70d74dc4d1156b5d68f35a42b017b2cd2bf71c92e012bb1a2096a1457d9cf46abe061541', 1, 1, 'myApp', '[]', 0, '2020-03-16 17:31:03', '2020-03-16 17:31:03', '2021-03-16 17:31:03'),
('e31e4fa49b188be794dfc880d28bef710906d51063d47ecd633224a264ee686ead31b6e8dcf8a4f6', 1, 1, 'myApp', '[]', 0, '2020-03-16 17:31:45', '2020-03-16 17:31:45', '2021-03-16 17:31:45'),
('b1b498e21d6e21f24ccd5d688af8423de504a321c5555967674385477bf7c7be514c851ecbb04fea', 1, 1, 'myApp', '[]', 0, '2020-03-16 17:32:58', '2020-03-16 17:32:58', '2021-03-16 17:32:58'),
('5ee1d2c6ce2271f2717072c21da44ef3d96400dba3fbd3d2806fa88a16f2211274f8197d744ce36f', 1, 1, 'myApp', '[]', 0, '2020-03-16 18:27:22', '2020-03-16 18:27:22', '2021-03-16 18:27:22'),
('dc0a328ef3a59abfba4d694824b208bbf7179173006d2229f10542a188c3182369a2633f6e6414dc', 1, 1, 'myApp', '[]', 0, '2020-03-16 18:27:44', '2020-03-16 18:27:44', '2021-03-16 18:27:44'),
('885c021e193efea398bc45457ed0bde11741b574ee5be292cf6955b8dbb667349a292ff8fca51c10', 1, 1, 'myApp', '[]', 0, '2020-03-16 18:42:48', '2020-03-16 18:42:48', '2021-03-16 18:42:48'),
('faed6f639384c511764da03baeda5171ec88eaa765b88efc56a9ec7d933dc3ad3b97221470584860', 1, 1, 'myApp', '[]', 0, '2020-03-21 13:00:52', '2020-03-21 13:00:52', '2021-03-21 13:00:52'),
('297c487b48c88d6a8bfa9b4af71c5ec0e77443b6e24778d12fe4d8f2cb9a23c7302b36d461138bde', 1, 1, 'myApp', '[]', 0, '2020-03-26 16:20:37', '2020-03-26 16:20:37', '2021-03-26 16:20:37'),
('1e38636a86cf0e38f337a6932b1be974af40097ac6dc1645b099f0100500c090495e17029096d767', 1, 1, 'myApp', '[]', 0, '2020-04-27 23:05:12', '2020-04-27 23:05:12', '2021-04-27 23:05:12'),
('14bd7938b6811e5a7e5127c149f1161d81e646e719106871dd914d56a4f4a6c0ddae8ef353c21ca8', 33, 1, 'myApp', '[]', 0, '2020-04-29 10:32:54', '2020-04-29 10:32:54', '2021-04-29 10:32:54'),
('df561728e1a1fd8d007dbccbf1757c769af26336d216dbdaf20fc4094b422289ce6c16fcf25d2e11', 1, 1, 'myApp', '[]', 0, '2020-05-04 12:59:35', '2020-05-04 12:59:35', '2021-05-04 12:59:35'),
('bcb5be46013ac841ff28b4ccf0c5070a8a6f6105bb8286b4993c18f89b7c57401a4fa91f46b68e3c', 1, 1, 'myApp', '[]', 0, '2020-05-11 13:27:37', '2020-05-11 13:27:37', '2021-05-11 13:27:37'),
('ac38f116c682d847bf8fd9a51fb4b780fe28a20594e032fbf21dcf4d3a7e2fe8689d0339579d18b9', 1, 1, 'myApp', '[]', 0, '2020-05-14 15:54:09', '2020-05-14 15:54:09', '2021-05-14 15:54:09'),
('c82e3f545fef3346a52a9b91ec31f3f56b044ed9e7beb929952b94a24f69887b7b3132fcb0927823', 1, 1, 'myApp', '[]', 0, '2020-06-24 12:12:11', '2020-06-24 12:12:11', '2021-06-24 12:12:11'),
('545d60d1149edc9c8aae3998ba972b5d449e178df3d3e9017087e077e22042a063897dd110c73c51', 1, 1, 'myApp', '[]', 0, '2020-06-24 14:38:20', '2020-06-24 14:38:20', '2021-06-24 14:38:20'),
('ef9ba5f0e92de167cdf6d6780f0a651d84a73fbd47698d14580f3a0a343feffc34290feca4cc6303', 59, 1, 'myApp', '[]', 0, '2020-06-24 15:12:16', '2020-06-24 15:12:16', '2021-06-24 15:12:16'),
('80638b5a17fee31131c891ab93ed3be1a0a40baca3bc2c4149c8314a7ccb8969d55799f747c9e96f', 59, 1, 'myApp', '[]', 0, '2020-06-24 15:48:56', '2020-06-24 15:48:56', '2021-06-24 15:48:56'),
('04b75b593d3ea769e5e781c6f9591b9b87a44fc5da5c14a29469e8a23d1adbbdfcd0c010ce04fdd7', 59, 1, 'myApp', '[]', 0, '2020-06-24 15:49:47', '2020-06-24 15:49:47', '2021-06-24 15:49:47'),
('7743da290f202b6d03c4c23d45eab0ee4c8db7664742bf22c5125e4608d0ec0d349ebeee6b44eea8', 59, 1, 'myApp', '[]', 0, '2020-06-24 16:10:49', '2020-06-24 16:10:49', '2021-06-24 16:10:49'),
('0bf29e8378355871a63bcb7694bf9ea36180a1e6fd8bd9e138c269022c8d31a7d9dbafaca47b2deb', 59, 1, 'myApp', '[]', 0, '2020-06-29 05:30:31', '2020-06-29 05:30:31', '2021-06-29 05:30:31'),
('4d7ab1ac60065e32e6ac003405ad1d0872586f547597bc34a9e3093e3e483fc77ffffb56ae5d0c1a', 59, 1, 'myApp', '[]', 0, '2020-06-29 05:46:14', '2020-06-29 05:46:14', '2021-06-29 05:46:14'),
('12256d0dc7af2d22358e64a2d65b326ceb4bfb641ba0fbfb9e0c80a3cc062737aad1794b812acb5d', 59, 1, 'myApp', '[]', 0, '2020-06-29 15:24:29', '2020-06-29 15:24:29', '2021-06-29 15:24:29'),
('6b697e859f275fee2caea05ae06caea28b2a459de4ac664020a0a1608cc6a78b01fef943bf59f5b0', 59, 1, 'myApp', '[]', 0, '2020-06-30 11:08:07', '2020-06-30 11:08:07', '2021-06-30 11:08:07'),
('4dea59fd97bad99d8d1a2f80db3455395e42aa72a7c4f7122a9565cf09584f1576d5554d424daa49', 33, 1, 'myApp', '[]', 0, '2020-07-05 17:47:53', '2020-07-05 17:47:53', '2021-07-05 17:47:53'),
('b4fbbe136e85e0b215735ba817ee54655e1cf77b2c31c852e4eb63a6d4efb01817e01b13818db1e9', 1, 1, 'myApp', '[]', 0, '2020-07-29 12:14:42', '2020-07-29 12:14:42', '2021-07-29 12:14:42'),
('2d84a35c18c32083461e6feeee5bdbb4c4481d0fb18c33eea898aeae8d96d45d693b4876b18c0750', 59, 1, 'myApp', '[]', 0, '2020-07-30 17:44:52', '2020-07-30 17:44:52', '2021-07-30 17:44:52'),
('6ee58edbd9c379b4b44909752fc64e57032fd064696fb5dac72c4cd5899a0e1fc570da612ef9af33', 1, 1, 'myApp', '[]', 0, '2020-08-02 18:18:34', '2020-08-02 18:18:34', '2021-08-02 18:18:34'),
('9d2d1f951c42f09764ad95caaa8f5cbcb5a03e1b1efd5feeaea226d2728a7c7a2c77af45ffd077b1', 1, 1, 'myApp', '[]', 0, '2020-08-23 00:14:32', '2020-08-23 00:14:32', '2021-08-23 00:14:32'),
('1412c135108e8cb1a9410d9d12968f3a05915062ca5e6321097fc65c1e782a1b0aa3839276a6820a', 1, 1, 'myApp', '[]', 0, '2020-08-31 19:00:50', '2020-08-31 19:00:50', '2021-08-31 19:00:50'),
('a11c0a630d52e9a3e8ef4ac12a6d6ae9f7c64ab8bd32e667aaebc203b1f065405556487e607a0fdd', 59, 1, 'myApp', '[]', 0, '2020-09-03 11:58:07', '2020-09-03 11:58:07', '2021-09-03 11:58:07'),
('2eb363071fa16cf6f303c95179e8171c8e7cb41caa7e4640067fccbb8d55f37a3cca14671665d0a9', 1, 1, 'myApp', '[]', 0, '2020-09-03 15:26:56', '2020-09-03 15:26:56', '2021-09-03 15:26:56'),
('604d3f5d84fff127357f8dda2aa7806da03a394b7a1fe1c73c0a024883b66490851dc84bb7fea564', 66, 1, 'myApp', '[]', 0, '2020-09-03 15:49:39', '2020-09-03 15:49:39', '2021-09-03 15:49:39'),
('275caa6704ffdb244b89b790482145ed3aa697a1bdcc3bf089cd1b2f6dde9a4fcb92d7af67b94bfb', 1, 1, 'myApp', '[]', 0, '2020-09-03 16:00:25', '2020-09-03 16:00:25', '2021-09-03 16:00:25'),
('f14d0c56bb8b7b2a59c3ba75c56ab2faf58ab3acb4c2dfc4b30e3483da7c76f3675c967a6f7d2094', 1, 1, 'myApp', '[]', 0, '2020-09-04 12:56:29', '2020-09-04 12:56:29', '2021-09-04 12:56:29'),
('369f8a91b0b3ebfe3f08bf6f72c2cf9f27f159d1c2b0ee563386f06dffad97d730a9f2a5f6d37d16', 59, 1, 'myApp', '[]', 0, '2020-09-04 13:15:13', '2020-09-04 13:15:13', '2021-09-04 13:15:13'),
('82257cdbe8ea89bddb2d41c15dca2701da6f075aece23bba227c37cd08949a5045c528b3b8fa10a7', 59, 1, 'myApp', '[]', 0, '2020-09-07 12:06:53', '2020-09-07 12:06:53', '2021-09-07 12:06:53'),
('8c4664423af5298ddf88f3789caf557693726e2712ac5129c4d0e272707ada9759aebac4780d6521', 1, 1, 'myApp', '[]', 0, '2020-09-08 16:12:06', '2020-09-08 16:12:06', '2021-09-08 16:12:06'),
('bf5bb3af5ee4934896ad9358d2fdbdfb877de7eeb7fbe659fa0e765fd6ef5d58e94a493950e6fa01', 1, 1, 'myApp', '[]', 0, '2020-09-10 09:32:20', '2020-09-10 09:32:20', '2021-09-10 09:32:20'),
('ec69c8e43b5dc44cd24e0975caa5fb22cc14edf5ccd95f97cb1454e45a66a1d126d593429b064142', 1, 1, 'myApp', '[]', 0, '2020-09-11 01:35:11', '2020-09-11 01:35:11', '2021-09-11 01:35:11'),
('d54b894eb179268cb61af9781a6e0cfa29987c9af9ad7468fb80a562d3d8c08ab376fb9a4e93f47b', 1, 1, 'myApp', '[]', 0, '2020-09-11 01:50:11', '2020-09-11 01:50:11', '2021-09-11 01:50:11'),
('6b4a79152efb6eb6c0246a9f1f3f8b932d7155e23165b605fb7c32ebf59bba49b16d4275378205db', 1, 1, 'myApp', '[]', 0, '2020-09-11 02:05:50', '2020-09-11 02:05:50', '2021-09-11 02:05:50'),
('db5f553e112412b657f27ded677aa5f985180ac499757da51118fdff5d7f5d4003b986ac16e96f33', 1, 1, 'myApp', '[]', 0, '2020-09-11 02:42:22', '2020-09-11 02:42:22', '2021-09-11 02:42:22'),
('c51d1b94bf2c855b072c0c3a52f2c9fef58282c52a483d7168889280612a061516f1e663e93d8c95', 1, 1, 'myApp', '[]', 0, '2020-09-11 02:52:37', '2020-09-11 02:52:37', '2021-09-11 02:52:37'),
('911ca9ed368147e8899dea7ecd0c27265eda6e8cf7dfe06e8686967022411c47eaf819f3eb5f8a16', 1, 1, 'myApp', '[]', 0, '2020-09-14 15:06:50', '2020-09-14 15:06:50', '2021-09-14 15:06:50'),
('849914f82c9ba278d08b4eeaf233beec315c5abec676ced9ea6618cadb1eab18d0d1a1421ead478a', 1, 1, 'myApp', '[]', 0, '2020-09-14 15:14:41', '2020-09-14 15:14:41', '2021-09-14 15:14:41'),
('07595a93faf1223e87f8141fae2d51a81fedb815aa343dcda2778aca4257456ba6315ffd7ac567a4', 1, 1, 'myApp', '[]', 0, '2020-09-14 16:18:09', '2020-09-14 16:18:09', '2021-09-14 16:18:09'),
('709d6a155ff67495e57f43f9633ff05fecddee25a038077c9bc6e4a97c2c4ab94e0e0bf3b3d8ec87', 1, 1, 'myApp', '[]', 0, '2020-09-14 16:19:21', '2020-09-14 16:19:21', '2021-09-14 16:19:21'),
('c6c80ff3802792c81e8d6d4223de177d296aa87ffb89647dd24818fd7520242031cfb8a1a8e9f69a', 1, 1, 'myApp', '[]', 0, '2020-09-19 03:13:12', '2020-09-19 03:13:12', '2021-09-19 03:13:12'),
('da26f637b6813b0eafe59eb37e20a0cd59401d2e748bd11162d2bac2ed9e234dbf00e5b6f7c6e94c', 1, 1, 'myApp', '[]', 0, '2020-09-19 14:30:30', '2020-09-19 14:30:30', '2021-09-19 14:30:30'),
('d5040030aa5b48a716828c8db40c6448b9d75fa4dab6eb977b0a56e1435dc425f34e2b6a60f82103', 1, 1, 'myApp', '[]', 0, '2020-09-23 00:34:53', '2020-09-23 00:34:53', '2021-09-23 00:34:53'),
('071c7cadbed3d1ce07c4065689785cfeab45edae834e90f4871d80e9cae8b253e8a96595db53f297', 1, 1, 'myApp', '[]', 0, '2020-09-23 16:18:11', '2020-09-23 16:18:11', '2021-09-23 16:18:11'),
('3467a2b70510057e2232f1cd2aba106aabf1978b76350d5cd8b755353db48c9d2186f751bb71ee77', 1, 1, 'myApp', '[]', 0, '2020-09-23 21:45:02', '2020-09-23 21:45:02', '2021-09-23 21:45:02'),
('6b716b247f5fb3ff87db221bbaf244e363c10eb1919146cadcb166e55d65994f5ee1bda261b3610a', 1, 1, 'myApp', '[]', 0, '2020-11-04 14:56:32', '2020-11-04 14:56:32', '2021-11-04 14:56:32'),
('0cfec456dc37c1f22285e76537ee1cf4d8c15e7b66c50adf1cc11918c097464279763dad961ada9f', 1, 1, 'myApp', '[]', 0, '2020-11-06 11:25:30', '2020-11-06 11:25:30', '2021-11-06 11:25:30'),
('be486ec00adab4edef0d929c21930714b0c4f69d13562e22ff5fa31a3197a339b50fcdadceb2e8c4', 1, 1, 'myApp', '[]', 0, '2020-11-06 11:27:01', '2020-11-06 11:27:01', '2021-11-06 11:27:01'),
('c3700981213a6459cf7530b7224fae444dfde967eccf2f025f573c5df18aff97a638b3a24f1f2777', 1, 1, 'myApp', '[]', 0, '2020-11-06 11:31:24', '2020-11-06 11:31:24', '2021-11-06 11:31:24'),
('c7374d4df8e3ab67b12ec50c7e9e177ee6b99195a638e6ba95b6e1628e25fb3b8f5716686ed4c65b', 1, 1, 'myApp', '[]', 0, '2020-11-06 12:32:01', '2020-11-06 12:32:01', '2021-11-06 12:32:01'),
('64a853eb5f91b0c64c6853accce46f47377b79c20de654114f8cd094902e105f617cbf1f58fbe915', 1, 1, 'myApp', '[]', 0, '2020-11-06 22:50:05', '2020-11-06 22:50:05', '2021-11-06 22:50:05'),
('850610afe0e0ff8982f1a8328003ddadb757e07ccc2184c67c905acdc80d7bef160045d19bd587a1', 69, 1, 'myApp', '[]', 0, '2020-11-09 19:00:02', '2020-11-09 19:00:02', '2021-11-09 19:00:02'),
('dee29931153aaa69f36899c9b39443bd22a77ac618c5b4a718642ed316d83dcb672522e4f9dfcd83', 69, 1, 'myApp', '[]', 0, '2020-11-09 19:01:17', '2020-11-09 19:01:17', '2021-11-09 19:01:17'),
('f110f3ac04538d7c2306ece431f52853ba5c292875f82499dd889d8647ee7b00596fd2b4bcd4423e', 69, 1, 'myApp', '[]', 0, '2020-11-09 20:15:47', '2020-11-09 20:15:47', '2021-11-09 20:15:47');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'hX5UB5EEbWmWFN57avWTVMkiozyvRdP3IqoKddsL', 'http://localhost', 1, 0, 0, '2019-12-27 05:58:00', '2019-12-27 05:58:00'),
(2, NULL, 'Laravel Password Grant Client', 'R360lJCcJY07EHguwg2RfrFFy7GuXdG6mP3sJalk', 'http://localhost', 0, 1, 0, '2019-12-27 05:58:00', '2019-12-27 05:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-12-27 05:58:00', '2019-12-27 05:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_total` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_gross` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_status_id` int(11) NOT NULL DEFAULT '1',
  `order_confirmed_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_shipped_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_delivered_date` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discounted_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_due_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `legacy_code_sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_in_case` decimal(10,2) DEFAULT NULL,
  `expiry_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_of_measurement` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_description` longtext COLLATE utf8mb4_unicode_ci,
  `IsActive` tinyint(1) NOT NULL DEFAULT '0',
  `weight` int(11) DEFAULT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `group_code` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_description` text COLLATE utf8mb4_unicode_ci,
  `pack_code` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pack_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `legacy_code_sku`, `product_title`, `product_price`, `product_image`, `unit_in_case`, `expiry_date`, `unit_of_measurement`, `product_description`, `IsActive`, `weight`, `product_category_id`, `group_code`, `group_description`, `pack_code`, `pack_description`, `created_at`, `updated_at`) VALUES
(1, 'LEM001', 'LEMON AND LIME SORBET - 2X2.4 LTR', '175.00', 'https://api.movenpickicecream.ae/public/uploads/product_images/20 - LEMON & LIME (SORBET).jpg', '2.00', '01/31/2021', 'LTR', 'LEMON AND LIME SORBET - 2X2.4 LTR', 1, 175, NULL, 'SORBET', 'SORBET ICE CREAMS', '2X2.4 LTR TUB', 'CASE', '2020-11-09 19:55:17', '2020-11-09 19:55:17'),
(2, 'MAN002', 'MANGO SORBET - 2X2.4 LTR', '175.00', 'https://api.movenpickicecream.ae/public/uploads/product_images/2 - MANGO (SORBET).jpg', '2.00', '12/31/2020', 'LTR', 'MANGO SORBET - 2X2.4 LTR', 1, 175, NULL, 'SORBET', 'SORBET ICE CREAM', '2X2.4 LTR TUB', 'CASE', '2020-11-09 19:54:46', '2020-11-09 19:54:46'),
(3, 'PAS001', 'PASSION FRUIT AND MANGO SORBET - 2X2.4 LTR', '175.00', 'https://api.movenpickicecream.ae/public/uploads/product_images/22 - PASSION FRUIT & MANGO (SORBET).jpg', '2.00', '03/31/2021', 'LTR', 'PASSION FRUIT AND MANGO SORBET - 2X2.4 LTR', 1, 175, NULL, 'SORBET', 'SORBET ICE CREAM', '2X2.4 LTR', 'CASE', '2020-11-09 19:53:23', '2020-11-09 19:53:23'),
(4, 'RAS001', 'RASPBERRY AND STRAWBERRY SORBET - 2X2.4 LTR', '175.00', 'https://api.movenpickicecream.ae/public/uploads/product_images/1 - RASBERRY & STRAWBERRY (SORBET).jpg', '2.00', '07/31/2021', 'LTR', 'RASPBERRY AND STRAWBERRY SORBET - 2X2.4 LTR', 1, 175, NULL, 'SORBET', 'SORBET ICE CREAM', '2X2.4 LTR', 'CASE', '2020-11-09 19:52:58', '2020-11-09 19:52:58'),
(5, 'BAN001', 'BANANA - 2X2.4 LTR', '172.00', 'https://api.movenpickicecream.ae/public/uploads/product_images/11 - BANANA.jpg', '2.00', '01/31/2021', 'LTR', NULL, 1, 172, NULL, 'REGULAR 2.4 LTR', 'REGULAR 2.4 LTR TUB', '2X2.4 LTR', NULL, '2020-11-09 19:52:15', '2020-11-09 19:52:15'),
(6, 'BLU001', 'BLUEBERRY CHEESECAKE - 2X2.4 LTR', '172.00', 'https://api.movenpickicecream.ae/public/uploads/product_images/12 - BLUEBERRY CHEESECAKE.jpg', '2.00', 'null', 'LTR', 'BLUEBERRY CHEESECAKE - 2X2.4 LTR', 1, 172, NULL, 'REGULAR 2.4 LTR', 'REGULAR 2.4 LTR TUB', '2X2.4 LTR', 'CASE', '2020-11-09 19:59:49', '2020-11-09 19:59:49'),
(7, 'CAP001', 'CAPPUCCINO - 2X2.4 LTR', '172.00', 'https://api.movenpickicecream.ae/public/uploads/product_images/6 - CAPPUCCINO.jpg', '2.00', 'null', 'LTR', 'CAPPUCCINO - 2X2.4 LTR', 1, 172, NULL, 'REGULAR 2.4 LTR', 'REGULAR 2.4 LTR TUB', '2X2.4 LTR', 'CASE', '2020-11-09 20:21:18', '2020-11-09 20:21:18'),
(8, 'CAR001', 'CARAMELITA - 18X100 ML', '108.00', 'https://api.movenpickicecream.ae/public/uploads/product_images/7 - CARAMELITA.jpg', '18.00', 'null', 'ML', NULL, 1, 108, NULL, 'REGULAR 18X100 ML', 'REGULAR 18X100 ML', '18X100 ML', 'CASE', '2020-11-09 20:22:51', '2020-11-09 20:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(4, 'maintenance', NULL, NULL),
(2, 'cold storage', NULL, NULL),
(3, 'driver', NULL, NULL),
(1, 'customer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 'Abu Dhabi', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(2, 'Ajman', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(3, 'Dubai', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(4, 'Al Fujayrah', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(5, 'Ras Al Khaimah', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(6, 'Al Sharjah', '2019-12-27 05:58:10', '2019-12-27 05:58:10'),
(7, 'Umm al-Qaywayn', '2019-12-27 05:58:10', '2019-12-27 05:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keyword` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `status`, `keyword`, `created_at`, `updated_at`) VALUES
(1, 'pending', 'open', NULL, NULL),
(2, 'processing', 'scheduled', NULL, NULL),
(3, 'loaded', 'loaded', NULL, NULL),
(4, 'on the way', 'dispatch', NULL, NULL),
(5, 'delivered', 'repaired', NULL, NULL),
(6, 'cancelled', 'cancelled', NULL, NULL),
(7, 'closed', 'closed', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stockadjs`
--

CREATE TABLE `stockadjs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sub_channels`
--

CREATE TABLE `sub_channels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sub_channel_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `customer_category_id` bigint(20) DEFAULT NULL,
  `master` tinyint(1) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ntn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `IsActive` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `customer_category_id`, `master`, `name`, `email`, `phone_number`, `mobile_number`, `ntn`, `address`, `city_id`, `state_id`, `password`, `IsActive`, `remember_token`, `created_at`, `updated_at`, `company_name`, `trade_name`, `contact_person_name`, `payment_type`, `delivery_from`, `delivery_to`) VALUES
(1, NULL, 1, 1, 'master', 'master@erp.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$b0hpEqfrT9uexU3rIl6U9emX/pMEmM28M4ZCEWL/ACYWFrrWDIJFC', 1, NULL, '2019-12-27 02:52:56', '2019-12-27 02:52:56', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 1, 1, 0, NULL, 'jasminasuelo25@yahoo.com', '000000', '971568331211', NULL, 'Rigga', '6', '3', '$2y$10$BLxMV2byHwlZ143bJtjh7uWcK6IHQ7V88/IKMNeDrJAzyENSlU6Ka', 1, NULL, '2020-11-09 18:52:10', '2020-11-09 18:52:10', 'United Cool General Trading', 'UCGT Shop Dubai Mall', 'Jasmin Suelo', 'credit', '07:00', '10:00'),
(68, 3, NULL, 0, 'Zafar Iqbal', NULL, '000000', '0554649279', NULL, 'Satwa', '6', '3', '$2y$10$l8JlIjx8qiT2sFwl.p82OuN7eHHQ.JW4gW2g.7IP.6H.WMtG4eIIi', 1, NULL, '2020-11-09 18:45:16', '2020-11-09 18:45:16', NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, 1, 1, 'Donnica', 'donnica.yagao@unitedcool.com', NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$b0hpEqfrT9uexU3rIl6U9emX/pMEmM28M4ZCEWL/ACYWFrrWDIJFC', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigns`
--
ALTER TABLE `assigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channels`
--
ALTER TABLE `channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_categories`
--
ALTER TABLE `customer_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discount_products`
--
ALTER TABLE `discount_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maintenanceusers`
--
ALTER TABLE `maintenanceusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stockadjs`
--
ALTER TABLE `stockadjs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_channels`
--
ALTER TABLE `sub_channels`
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
-- AUTO_INCREMENT for table `assigns`
--
ALTER TABLE `assigns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `channels`
--
ALTER TABLE `channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `customer_categories`
--
ALTER TABLE `customer_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `discount_products`
--
ALTER TABLE `discount_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `maintenanceusers`
--
ALTER TABLE `maintenanceusers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `stockadjs`
--
ALTER TABLE `stockadjs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sub_channels`
--
ALTER TABLE `sub_channels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
