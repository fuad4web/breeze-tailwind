-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 23, 2024 at 07:18 AM
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
-- Database: `component`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'ipsam', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(2, 'dolorem', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(3, 'doloremque', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(4, 'quo', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(5, 'non', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(6, 'dolorem', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(7, 'autem', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(8, 'excepturi', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(9, 'sed', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(10, 'quis', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(11, 'officia', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(12, 'dolores', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(13, 'quibusdam', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(14, 'ut', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(15, 'ratione', '2023-12-30 09:04:55', '2023-12-30 09:04:55'),
(16, 'commodi', '2023-12-30 09:04:55', '2023-12-30 09:04:55'),
(17, 'ullam', '2023-12-30 09:04:55', '2023-12-30 09:04:55'),
(18, 'aut', '2023-12-30 09:04:55', '2023-12-30 09:04:55'),
(19, 'ratione', '2023-12-30 09:04:55', '2023-12-30 09:04:55'),
(20, 'laborum', '2023-12-30 09:04:55', '2023-12-30 09:04:55');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_30_095032_create_products_table', 1),
(6, '2023_12_30_095053_create_categories_table', 1);

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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` bigint NOT NULL DEFAULT '0',
  `category_id` bigint DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `product_image`, `description`, `price`, `quantity`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'amet', 'dolores-minima-quo-nostrum', 'dNy8XGDpAmMewfrvVR2Te5vRc14oV8HLg2ZEeWJr.jpg', 'In tempora et eius sint sequi. Animi harum omnis sed soluta quia quaerat. Necessitatibus voluptas ut deleniti quisquam doloremque voluptates.', '3600', 21, 1, '2023-12-30 09:04:55', '2023-12-30 11:34:57'),
(3, 'tenetur', 'iusto-laudantium-corrupti-a-et-quo-temporibus-et', 'Y7yK58FVTj4haBXGS0xK1Y8ccu1DoiMX5TBZ9V2n.jpg', 'Cumque odit magni ipsam saepe. Ut ipsam excepturi officia animi. Adipisci dicta aut voluptatem eaque.', '68', 1, 13, '2023-12-30 09:04:55', '2023-12-30 09:04:55'),
(4, 'est', 'soluta-aut-rerum-beatae-dolores', 'Y7yK58FVTj4haBXGS0xK1Y8ccu1DoiMX5TBZ9V2n.jpg', 'Dolor possimus rerum assumenda nobis cum commodi sint sed. Voluptatem architecto veniam rem necessitatibus fuga. Eius provident et ea consequatur dolores quasi itaque.', '80', 28214183, 14, '2023-12-30 09:04:55', '2023-12-30 09:04:55'),
(5, 'nisi', 'sunt-ea-amet-et-hic-veritatis-non-molestias', 'Y7yK58FVTj4haBXGS0xK1Y8ccu1DoiMX5TBZ9V2n.jpg', 'Fugiat libero magni quae voluptas ipsa. Et consequatur dignissimos veritatis iure fugiat est. Molestias sed rerum ea iusto sed quis. Quos veritatis rem magnam.', '43', 19503, 15, '2023-12-30 09:04:55', '2023-12-30 09:04:55'),
(6, 'delectus', 'quas-non-repellat-consequatur-molestiae-molestiae-provident-consequatur', 'Y7yK58FVTj4haBXGS0xK1Y8ccu1DoiMX5TBZ9V2n.jpg', 'Voluptas ab inventore veniam ut neque veritatis. Sit architecto non reiciendis magni et enim. Commodi doloremque velit mollitia provident.', '17', 4, 16, '2023-12-30 09:04:55', '2023-12-30 09:04:55'),
(7, 'eum', 'quaerat-veritatis-harum-delectus-voluptas', 'Y7yK58FVTj4haBXGS0xK1Y8ccu1DoiMX5TBZ9V2n.jpg', 'Cumque dignissimos id eos voluptatibus. Qui hic odio et dolorem. Aliquid magnam deleniti harum dolores vel odio qui sunt. Officia quas vel et dolorum iusto repellendus blanditiis. Non dolores veniam iusto quidem facere aut.', '86', 29488897, 17, '2023-12-30 09:04:55', '2023-12-30 09:04:55'),
(8, 'mollitia', 'incidunt-sint-molestias-dolores-earum', 'Y7yK58FVTj4haBXGS0xK1Y8ccu1DoiMX5TBZ9V2n.jpg', 'Consequatur molestiae ea modi dolore in et minima. Distinctio tempore temporibus consectetur magnam sint similique iure. Non cupiditate qui facilis accusantium.', '54', 7316487, 18, '2023-12-30 09:04:55', '2023-12-30 09:04:55'),
(9, 'ut', 'nostrum-cum-est-voluptatem-eum-laboriosam-quis-vero-eaque', 'Y7yK58FVTj4haBXGS0xK1Y8ccu1DoiMX5TBZ9V2n.jpg', 'Voluptas minus suscipit repellat provident. Nihil et et blanditiis sit sit. Architecto quo omnis qui tempore corporis modi ullam. Autem sunt ipsum quo consequatur et autem voluptas.', '77', 872655986, 19, '2023-12-30 09:04:55', '2023-12-30 09:04:55'),
(10, 'recusandae', 'voluptas-cupiditate-error-magnam-eos-rerum', 'Y7yK58FVTj4haBXGS0xK1Y8ccu1DoiMX5TBZ9V2n.jpg', 'Hic eaque vitae ipsum adipisci qui sit. Rerum voluptatem voluptas ut et qui. Sit commodi voluptate et est voluptatem.', '37', 5475, 20, '2023-12-30 09:04:55', '2023-12-30 09:04:55'),
(11, 'Wrist Watch', 'wrist-watch', 'Y7yK58FVTj4haBXGS0xK1Y8ccu1DoiMX5TBZ9V2n.jpg', 'This Weist watc is fine and undesdtanding and its also make ones handsome', '2500', 23, 6, '2023-12-30 10:36:30', '2023-12-30 10:36:30'),
(12, 'Ago', 'ago', 'Y7yK58FVTj4haBXGS0xK1Y8ccu1DoiMX5TBZ9V2n.jpg', 'Lorem ipsum dolor siet ameitks ksdjisml', '2500', 78, 11, '2023-12-30 10:51:46', '2023-12-30 10:51:46'),
(13, 'Last Product', 'last-product', 'iewNSTzODD0ecnut14bQnetgwR1VSthujKDiMQy2.jpg', 'Whats my thoufht is none of youe concern dear', '690', 20, 6, '2023-12-30 11:00:46', '2023-12-30 11:00:46'),
(14, 'Another One', 'another-one', 'qbF48femPxVQYjFVT6n31X7ZfDXPtNKSDuvmL9fU.jpg', 'Another One Another One Another One Another One', '690', 7, 8, '2023-12-30 11:02:41', '2023-12-30 11:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lucy Armstrong', 'kelli.rowe@example.com', 'admin', '2023-12-30 09:04:53', '$2y$12$Fqw59eGpvLV4IRKmOJa2t.moubB9tMasA4zGcPhtOWAMgPifOgQGK', 'dBp26AxPwW', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(2, 'Nathaniel Hudson', 'adams.diego@example.org', 'admin', '2023-12-30 09:04:54', '$2y$12$Fqw59eGpvLV4IRKmOJa2t.moubB9tMasA4zGcPhtOWAMgPifOgQGK', 'rHrnGzXoco', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(3, 'Marian Hahn DVM', 'leonardo.mclaughlin@example.com', 'admin', '2023-12-30 09:04:54', '$2y$12$Fqw59eGpvLV4IRKmOJa2t.moubB9tMasA4zGcPhtOWAMgPifOgQGK', 'LBmalvIT8G', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(4, 'Annette Nader', 'elizabeth.legros@example.org', 'user', '2023-12-30 09:04:54', '$2y$12$Fqw59eGpvLV4IRKmOJa2t.moubB9tMasA4zGcPhtOWAMgPifOgQGK', 'H1R2qaiU4V', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(5, 'Maximillia Yost', 'magnolia.dickinson@example.org', 'user', '2023-12-30 09:04:54', '$2y$12$Fqw59eGpvLV4IRKmOJa2t.moubB9tMasA4zGcPhtOWAMgPifOgQGK', 'WIDBvpNDHF', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(6, 'Ena Bahringer PhD', 'jjones@example.org', 'user', '2023-12-30 09:04:54', '$2y$12$Fqw59eGpvLV4IRKmOJa2t.moubB9tMasA4zGcPhtOWAMgPifOgQGK', 'B1bvKsoxv0', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(7, 'Ricky Schinner MD', 'jacques05@example.org', 'user', '2023-12-30 09:04:54', '$2y$12$Fqw59eGpvLV4IRKmOJa2t.moubB9tMasA4zGcPhtOWAMgPifOgQGK', 'VSOfpmfE2D', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(8, 'Nikko Langosh', 'wpfannerstill@example.org', 'admin', '2023-12-30 09:04:54', '$2y$12$Fqw59eGpvLV4IRKmOJa2t.moubB9tMasA4zGcPhtOWAMgPifOgQGK', 'Hy6ZG1WNkn', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(9, 'Hollis Hahn', 'littel.cheyanne@example.com', 'admin', '2023-12-30 09:04:54', '$2y$12$Fqw59eGpvLV4IRKmOJa2t.moubB9tMasA4zGcPhtOWAMgPifOgQGK', 'gyp9GtvUbf', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(10, 'Walton Nitzsche', 'geoffrey41@example.com', 'admin', '2023-12-30 09:04:54', '$2y$12$Fqw59eGpvLV4IRKmOJa2t.moubB9tMasA4zGcPhtOWAMgPifOgQGK', 'QH0ol6fqTU', '2023-12-30 09:04:54', '2023-12-30 09:04:54'),
(11, 'Abdulhammed Fuad', 'fuskydon@gmail.com', 'admin', NULL, '$2y$12$O9HUG2E62JsLJxB/sijAn.4EICR1fxmx2H9JRjaBMBxh6jViA62Ky', NULL, '2023-12-30 09:06:10', '2023-12-30 09:06:10');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
