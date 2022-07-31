-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 24, 2022 at 10:01 AM
-- Server version: 8.0.29
-- PHP Version: 8.1.7

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
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `sessoin_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `qty` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `sessoin_id`, `user_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 'ef9dc829-2e77-48b1-ab88-9ef249eb90d4', 225, 792, 811, '2022-07-24 02:33:17', '2022-07-24 02:33:17'),
(2, '122b1773-7be7-4d90-808f-5606531324ca', 893, 686, 483, '2022-07-24 02:33:28', '2022-07-24 02:33:28'),
(3, '4f4b2455-776c-457d-830a-4101e198aa04', 799, 558, 255, '2022-07-24 02:33:29', '2022-07-24 02:33:29');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_05_09_134700_create_products_table', 1),
(10, '2022_07_18_064425_cart', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('09de852dd7c2d2bda2b96a0c178150992a6fe8351f79ad8b268e98737398ee2eec144ba9acb9761c', 2, 1, 'authToken', '[]', 0, '2022-07-15 06:36:34', '2022-07-15 06:36:34', '2023-07-15 12:06:34'),
('0adeabf7fc41356586b98f4c1f1571fd3aa98b380ee36805e2c0840443b5d9603973ad60771c8949', 7, 1, 'authToken', '[]', 0, '2022-07-15 06:37:16', '2022-07-15 06:37:16', '2023-07-15 12:07:16'),
('0d62555323d7c6f9878b1e085ab5f4701e7f4320ad98b71add11f45614104ea6c0070817841ebdfd', 1, 1, 'authToken', '[]', 0, '2022-07-15 06:28:09', '2022-07-15 06:28:09', '2023-07-15 11:58:09'),
('1442917634a44f614cff966b459e618c91ea194690fff6c2f61f714440e2e9d88844b5c6ff6281cb', 8, 1, 'authToken', '[]', 0, '2022-07-15 06:37:17', '2022-07-15 06:37:17', '2023-07-15 12:07:17'),
('14f900f77bd4bcc0b9f7ebdd7f5912f2b83236002fe4503370ae853fd2a48204990add03f4ed34d3', 3, 1, 'authToken', '[]', 0, '2022-07-15 06:36:46', '2022-07-15 06:36:46', '2023-07-15 12:06:46'),
('1a42308d7687460e4ed9ec98e2d49a0adc67dfc1d75c7fcd9bc587e37457e4e40a6165c58e6c75d2', 6, 1, 'authToken', '[]', 0, '2022-07-15 06:37:15', '2022-07-15 06:37:15', '2023-07-15 12:07:15'),
('300c2db3841b6dcfd1ef706f1bf5f887dbb10d5ee8599b4e4ac455a9fd7ca1acf2527f559ead06db', 1, 1, 'authToken', '[]', 0, '2022-07-13 04:44:54', '2022-07-13 04:44:54', '2023-07-13 10:14:54'),
('4d6d6a0c6dcf03f5f495d2f51cfe0cf17503a66a8a702d3510bc9dda90c8c431f989890fa2959285', 4, 1, 'authToken', '[]', 0, '2022-07-15 06:36:49', '2022-07-15 06:36:49', '2023-07-15 12:06:49'),
('53dfb51fa0ccab4b94d360d4fc50e1822d1d822f11d465e707fe13f9829575e456601e58d81bcea6', 1, 1, 'authToken', '[]', 0, '2022-07-13 06:02:23', '2022-07-13 06:02:23', '2023-07-13 11:32:23'),
('5d3ebf1c1a81bb692684b7a6b786c2d9d9e30b336ca6bcea20f8225fd906d8563e6bc5f9d4843b4b', 1, 1, 'authToken', '[]', 0, '2022-07-13 06:02:29', '2022-07-13 06:02:29', '2023-07-13 11:32:29'),
('625909e50f68b1330cb903a203c5f74895b07baf7454d1ea39c995277484c44789f75ab3b140acca', 1, 1, 'authToken', '[]', 0, '2022-07-13 06:02:22', '2022-07-13 06:02:22', '2023-07-13 11:32:22'),
('64877982fa445b488c1a1f164954c4cdd7e92a2e7eab13bec8ce8c2c0386b4e6574f8605539421a7', 1, 1, 'authToken', '[]', 0, '2022-07-13 06:02:25', '2022-07-13 06:02:25', '2023-07-13 11:32:25'),
('6ae7a5ee0dd5c2ce5c9acce961b7d6ce3b37e46666e1108a345323a2b548e6cd26df79ef6fb4677d', 1, 1, 'authToken', '[]', 0, '2022-07-13 05:56:29', '2022-07-13 05:56:29', '2023-07-13 11:26:29'),
('6afe2e0411be734b17a6051b4c4ac22524742fe87b242f02c1470582b05485e6d9ff871f3a12d0e8', 1, 1, 'authToken', '[]', 0, '2022-07-13 06:02:26', '2022-07-13 06:02:26', '2023-07-13 11:32:26'),
('7d2e7330730b19d33d37523ed41b9ef6f55963420360d4b69060badc5d41ef37e3f4169150aee205', 1, 1, 'authToken', '[]', 0, '2022-07-13 06:08:08', '2022-07-13 06:08:08', '2023-07-13 11:38:08'),
('820692e69cf4fd4219a1bd6c44fb4b6e1e8f0de40f5c2d5a85610383b475c43044b9c147651c1f4a', 5, 1, 'authToken', '[]', 0, '2022-07-15 06:36:50', '2022-07-15 06:36:50', '2023-07-15 12:06:50'),
('8ff390f2b021b6cef9686aeceb2de2b6fc1f3c27519fdb6509503c8d911805ee7a6deff2ebc436a0', 1, 1, 'authToken', '[]', 0, '2022-07-13 06:04:55', '2022-07-13 06:04:55', '2023-07-13 11:34:55'),
('9002aba7b074bd727b0bcc3ab233d33574c1254a06cbf5d1f0a5ab7c1cdbaf293a5040a13e64e16a', 1, 1, 'authToken', '[]', 0, '2022-07-13 06:02:24', '2022-07-13 06:02:24', '2023-07-13 11:32:24'),
('ac0672f199fcbd03fe19db67e5a44b8f6fd6b46c7f577f3a836098fbb9353c5924b222064d36d261', 1, 1, 'authToken', '[]', 0, '2022-07-13 06:02:23', '2022-07-13 06:02:23', '2023-07-13 11:32:23'),
('b3ca2d3525bfc4be8affe275dd564f060028fa355c013c5f917d22c36f67a2afe7d66ab1503ad109', 1, 1, 'authToken', '[]', 0, '2022-07-13 05:06:05', '2022-07-13 05:06:05', '2023-07-13 10:36:05'),
('bc151faca828a5cb14f26ad981f581ed2607f4965128b648e1a48f04dec72bfd085910136abbedc5', 1, 1, 'authToken', '[]', 0, '2022-07-13 06:02:20', '2022-07-13 06:02:20', '2023-07-13 11:32:20'),
('c03b0d836afa68be98cbf580beb654bb46ec2de04e0d659183573c4ffd923d157f1fff44ba1b8955', 1, 1, 'authToken', '[]', 0, '2022-07-13 06:02:28', '2022-07-13 06:02:28', '2023-07-13 11:32:28'),
('c11ba59f9baa6f27d3b6dbfdf23716180e856d14d7eac2e9ae491d436d500004ed7d1ed3910ea576', 1, 1, 'authToken', '[]', 0, '2022-07-13 05:50:08', '2022-07-13 05:50:08', '2023-07-13 11:20:08'),
('c67a985a00d1437146479dc2c9dbfb5e6f7bfcf08b80bcc57eaed8ce3a7204e10f96e7d8e4fcf7ba', 1, 1, 'authToken', '[]', 0, '2022-07-13 04:44:48', '2022-07-13 04:44:48', '2023-07-13 10:14:48'),
('d9ea9218b34b95046f104de84b4c738fb2e4f8fbf4b272e13f9e2e2382c10e0242322ec333fd79d3', 1, 1, 'authToken', '[]', 0, '2022-07-15 06:27:01', '2022-07-15 06:27:01', '2023-07-15 11:57:01'),
('dba7edbf93533985da3eaa8ab4a496ef7e9d0b91c1d6501e02d91da05cdcf0813b54ee8dffaaa689', 1, 1, 'authToken', '[]', 0, '2022-07-13 06:02:26', '2022-07-13 06:02:26', '2023-07-13 11:32:26'),
('e7ddbc36e5472d195f5339d487277023cbd97181c53d07d70bb26466934d18ddf49738294d6c2147', 1, 1, 'authToken', '[]', 0, '2022-07-13 06:02:27', '2022-07-13 06:02:27', '2023-07-13 11:32:27'),
('f2127018ab457072d48148136f0163e33a17e5608333e64afd726d27e650791d7794a45a7e0b204d', 1, 1, 'authToken', '[]', 0, '2022-07-13 05:06:30', '2022-07-13 05:06:30', '2023-07-13 10:36:30'),
('f6d26e770b891d4c5d8f0f4a8b98a7da03b4bf2f00b2dc86be1cc887966bca545d8332b9f91c4c17', 1, 1, 'authToken', '[]', 0, '2022-07-13 04:46:23', '2022-07-13 04:46:23', '2023-07-13 10:16:23'),
('f8ac1218298cfe803500bf120535decb1d3e59350d8cb02b06f06afbfb335fbc79ffb788b0b37daf', 1, 1, 'authToken', '[]', 0, '2022-07-13 05:59:02', '2022-07-13 05:59:02', '2023-07-13 11:29:02');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'u3g8c7KFRsH0zsU1xGnW5WUz3O1Aw6yipoVOIMan', NULL, 'http://localhost', 1, 0, 0, '2022-07-13 04:40:00', '2022-07-13 04:40:00'),
(2, NULL, 'Laravel Password Grant Client', 'jjm5TygSNCoSsJhNegd702Uq7qWr0ElledrjUqG4', 'users', 'http://localhost', 0, 1, 0, '2022-07-13 04:40:00', '2022-07-13 04:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-07-13 04:40:00', '2022-07-13 04:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `user` int NOT NULL,
  `price` int NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` int NOT NULL DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user`, `price`, `description`, `category`, `name`, `created_at`, `updated_at`) VALUES
(5, 501, 39, 'Unbranded', 309, 'Awesome Cotton Shoes', '2022-07-18 00:59:29', '2022-07-18 00:59:29'),
(6, 343, 210, 'Tasty', 799, 'Handcrafted Wooden Keyboard', '2022-07-18 00:59:29', '2022-07-18 00:59:29'),
(7, 100, 162, 'Unbranded', 763, 'Handmade Concrete Hat', '2022-07-18 00:59:30', '2022-07-18 00:59:30'),
(8, 105, 35, 'Handmade', 803, 'Sleek Wooden Car', '2022-07-18 00:59:30', '2022-07-18 00:59:30'),
(9, 114, 393, 'Unbranded', 599, 'Licensed Plastic Ball', '2022-07-18 00:59:30', '2022-07-18 00:59:30'),
(10, 301, 245, 'Licensed', 678, 'Generic Steel Pants', '2022-07-18 00:59:31', '2022-07-18 00:59:31'),
(11, 329, 796, 'Handcrafted', 190, 'Sleek Wooden Sausages', '2022-07-18 00:59:31', '2022-07-18 00:59:31'),
(12, 176, 219, 'Sleek', 465, 'Incredible Frozen Gloves', '2022-07-18 00:59:31', '2022-07-18 00:59:31'),
(13, 793, 112, 'Awesome', 659, 'Tasty Steel Bike', '2022-07-18 00:59:40', '2022-07-18 00:59:40'),
(14, 203, 614, 'Incredible', 614, 'Rustic Granite Shoes', '2022-07-18 00:59:41', '2022-07-18 00:59:41'),
(15, 791, 22, 'Ergonomic', 628, 'Handmade Plastic Chicken', '2022-07-18 00:59:41', '2022-07-18 00:59:41'),
(16, 563, 252, 'Awesome', 2, 'Handcrafted Frozen Mouse', '2022-07-18 00:59:42', '2022-07-18 00:59:42'),
(17, 240, 352, 'Unbranded', 316, 'Handmade Granite Sausages', '2022-07-18 00:59:42', '2022-07-18 00:59:42'),
(18, 783, 578, 'Intelligent', 260, 'Fantastic Cotton Mouse', '2022-07-18 00:59:42', '2022-07-18 00:59:42'),
(19, 752, 517, 'Handmade', 817, 'Handcrafted Steel Table', '2022-07-18 00:59:43', '2022-07-18 00:59:43'),
(20, 233, 375, 'Generic', 632, 'Awesome Fresh Soap', '2022-07-18 00:59:53', '2022-07-18 00:59:53'),
(21, 67, 159, 'Tasty', 602, 'Fantastic Soft Tuna', '2022-07-18 00:59:53', '2022-07-18 00:59:53'),
(22, 459, 623, 'Incredible', 39, 'Rustic Wooden Tuna', '2022-07-18 00:59:54', '2022-07-18 00:59:54'),
(23, 732, 12, 'Ergonomic', 675, 'Rustic Cotton Bike', '2022-07-18 00:59:54', '2022-07-18 00:59:54'),
(24, 286, 497, 'Ergonomic', 46, 'Handmade Cotton Bacon', '2022-07-18 01:01:12', '2022-07-18 01:01:12'),
(25, 326, 520, 'Tasty', 788, 'Sleek Granite Keyboard', '2022-07-18 01:01:12', '2022-07-18 01:01:12'),
(26, 933, 967, 'Small', 588, 'Sleek Fresh Pizza', '2022-07-18 01:01:13', '2022-07-18 01:01:13'),
(27, 364, 266, 'Ergonomic', 553, 'Unbranded Granite Soap', '2022-07-18 01:01:13', '2022-07-18 01:01:13'),
(28, 58, 772, 'Incredible', 816, 'Incredible Fresh Keyboard', '2022-07-18 01:01:14', '2022-07-18 01:01:14'),
(29, 749, 550, 'Awesome', 601, 'Refined Metal Shoes', '2022-07-18 01:01:14', '2022-07-18 01:01:14'),
(30, 270, 477, 'Refined', 893, 'Unbranded Wooden Shoes', '2022-07-18 01:01:14', '2022-07-18 01:01:14'),
(31, 762, 581, 'Awesome', 808, 'Tasty Soft Chips', '2022-07-18 01:01:14', '2022-07-18 01:01:14'),
(32, 936, 611, 'Small', 940, 'Tasty Granite Mouse', '2022-07-18 01:01:23', '2022-07-18 01:01:23'),
(33, 392, 900, 'Licensed', 453, 'Rustic Cotton Ball', '2022-07-18 01:01:23', '2022-07-18 01:01:23'),
(34, 978, 746, 'Incredible', 466, 'Ergonomic Soft Keyboard', '2022-07-18 01:01:24', '2022-07-18 01:01:24'),
(35, 275, 364, 'Refined', 334, 'Licensed Rubber Pizza', '2022-07-18 01:01:24', '2022-07-18 01:01:24'),
(36, 51, 792, 'Licensed', 700, 'Refined Frozen Cheese', '2022-07-18 01:01:25', '2022-07-18 01:01:25'),
(37, 639, 120, 'Tasty', 835, 'Ergonomic Granite Car', '2022-07-18 01:01:39', '2022-07-18 01:01:39'),
(38, 408, 911, 'Refined', 661, 'Fantastic Granite Mouse', '2022-07-18 01:02:07', '2022-07-18 01:02:07'),
(39, 14, 708, 'Incredible', 665, 'Tasty Concrete Fish', '2022-07-18 01:02:38', '2022-07-18 01:02:38'),
(40, 110, 767, 'Handcrafted', 583, 'Awesome Soft Pants', '2022-07-18 01:05:17', '2022-07-18 01:05:17'),
(41, 126, 239, 'Fantastic', 212, 'Rustic Granite Mouse', '2022-07-18 01:05:21', '2022-07-18 01:05:21'),
(42, 776, 927, 'Fantastic', 529, 'Gorgeous Metal Shirt', '2022-07-18 01:05:28', '2022-07-18 01:05:28'),
(43, 704, 477, 'Unbranded', 575, 'Small Soft Keyboard', '2022-07-18 01:05:29', '2022-07-18 01:05:29'),
(44, 320, 436, 'Refined', 335, 'Ergonomic Fresh Chicken', '2022-07-18 01:05:30', '2022-07-18 01:05:30'),
(45, 800, 778, 'Handcrafted', 717, 'Tasty Soft Computer', '2022-07-18 01:05:30', '2022-07-18 01:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Nazmul Hasan Robin',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nazmul Hasan Robin', 'admin@gmail.com', NULL, '$2y$10$7fz1L5Tz6q6BIPqpEKi/geMlcYlYTNEFhM6LkVL6d/.S4DUPkIUMC', NULL, '2022-07-13 04:38:55', '2022-07-13 04:38:55'),
(2, 'Nazmul Hasan Robin', 'Aileen54@yahoo.com', NULL, '$2y$10$WUl5A/mea1EfvgLBSIpcvucvBEY71ZVb6AeHfyLPMRfh9MO7huRHu', NULL, '2022-07-15 06:36:34', '2022-07-15 06:36:34'),
(3, 'Nazmul Hasan Robin', 'Edythe33@gmail.com', NULL, '$2y$10$ejXfWwSoP2MUODieD/d95eDgQR6mHvso7XU0ZEPfwQp.QPPdzS/0y', NULL, '2022-07-15 06:36:46', '2022-07-15 06:36:46'),
(4, 'Nazmul Hasan Robin', 'Adelbert26@yahoo.com', NULL, '$2y$10$VV4xUcnXtjoGCM2ciPWvcuIHfcg9iiVz6Y3JOw9WfVIcdlbG8PRNe', NULL, '2022-07-15 06:36:49', '2022-07-15 06:36:49'),
(5, 'Nazmul Hasan Robin', 'Ruthie.Moen@yahoo.com', NULL, '$2y$10$JJFmzH623LXOLGLj8.8LP.zAuAQ1PG9jUr6PFRnrZvvS9b25XLbhy', NULL, '2022-07-15 06:36:50', '2022-07-15 06:36:50'),
(6, 'Nazmul Hasan Robin', 'Bryon.Kessler98@gmail.com', NULL, '$2y$10$7LiyHgtxL5J.EArJ/8QjDuyv5SFVQOLnzoSoNOAbUISYyG1s/Kah.', NULL, '2022-07-15 06:37:15', '2022-07-15 06:37:15'),
(7, 'Nazmul Hasan Robin', 'Abigail70@gmail.com', NULL, '$2y$10$R5Wc2OaTOGxORS.9/HswJeOYvlmN.8i84baQIon/BzF3td98ZK6OG', NULL, '2022-07-15 06:37:16', '2022-07-15 06:37:16'),
(8, 'Nazmul Hasan Robin', 'Hudson.Glover@hotmail.com', NULL, '$2y$10$cpw6eY44DuZy50W.aItB2O5rdnlhL4qxdRsH4yq/NswXNBxxreBBa', NULL, '2022-07-15 06:37:17', '2022-07-15 06:37:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
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
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
