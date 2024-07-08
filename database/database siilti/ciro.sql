-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2024 at 09:18 PM
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
-- Database: `ciro`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug_reports`
--

CREATE TABLE `bug_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bug_reports`
--

INSERT INTO `bug_reports` (`id`, `user_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(3, 2, 'Indah Wulandari', 'Ada kesalahan pada sistem', '2024-07-08 11:13:04', '2024-07-08 11:13:04'),
(4, 2, 'Indah Wulandari', 'Test Report Bug', '2024-07-08 11:15:35', '2024-07-08 11:15:35');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hardware', NULL, NULL),
(2, 'Software', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dosens`
--

CREATE TABLE `dosens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nidn` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `kode_jurusan` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `kode_prodi` varchar(255) DEFAULT NULL,
  `prodi` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labors`
--

CREATE TABLE `labors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `kegiatan` longtext NOT NULL,
  `day` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `labors`
--

INSERT INTO `labors` (`id`, `room_id`, `kegiatan`, `day`, `date`, `time`, `created_at`, `updated_at`) VALUES
(1, 5, 'Presentasi PBL Sidang TA', 'Senin', '2024-07-07', '08:00:00', '2024-06-28 09:13:45', '2024-07-08 08:53:43'),
(3, 1, 'Presentasi PBL Inventaris', 'Selasa', '2024-07-09', '08:00:00', '2024-06-28 09:55:51', '2024-07-08 08:55:19'),
(5, 3, 'Presentasi PBL KBK', 'Rabu', '2024-07-10', '08:00:00', '2024-07-08 08:54:45', '2024-07-08 08:54:45');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswas`
--

CREATE TABLE `mahasiswas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nim` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `kode_jurusan` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) NOT NULL,
  `kode_prodi` varchar(255) DEFAULT NULL,
  `prodi` varchar(255) NOT NULL,
  `angkatan` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_11_01_081100_create_categories_table', 1),
(6, '2023_11_01_081314_create_products_table', 1),
(7, '2023_11_01_081345_create_suppliers_table', 1),
(8, '2023_11_14_034705_create_product_supplies_table', 1),
(9, '2024_06_12_180059_create_transactions_table', 1),
(10, '2024_06_12_200303_create_returns_table', 1),
(11, '2024_06_18_113109_create_permission_tables', 1),
(12, '2024_06_20_095821_create_activity_log_table', 1),
(13, '2024_06_20_095822_add_event_column_to_activity_log_table', 1),
(14, '2024_06_20_095823_add_batch_uuid_column_to_activity_log_table', 1),
(15, '2024_06_20_141634_create_mahasiswas_table', 1),
(16, '2024_06_20_162241_create_dosens_table', 1),
(17, '2024_06_21_101411_create_ruangans_table', 1),
(18, '2024_06_28_110834_create_labors_table', 2),
(19, '2024_06_28_144642_create_bug_reports_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 11),
(4, 'App\\Models\\User', 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('indah@gmail.com', 'dRZNlBWzPX5nI37GQ5MlnE2q6wzL0RgJJmxV3hq9SJxz4rVEaGH8kCtP3kHC', '2024-07-07 09:42:25'),
('sultanmaulanaichiro@gmail.com', '2vnlwPoPZUrqDng3mA3Pu0eZFsJQBRzhZO9w9KJyCwdas3teTKXEifYMRzp2', '2024-07-07 09:43:31');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_dashboard', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(2, 'view_barang', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(3, 'view_barang_masuk', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(4, 'view_barang_keluar', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(5, 'view_kategori_barang', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(6, 'view_kategori_berita', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(7, 'view_supplier', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(8, 'view_peminjaman', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(9, 'view_pengembalian', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(10, 'view_pimpinan', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(11, 'view_dosen/staff', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(12, 'view_mahasiswa', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(13, 'view_admin', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(14, 'view_user', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(15, 'view_ruangan', 'web', '2024-06-21 05:31:42', '2024-06-21 05:31:42'),
(16, 'view_input_peminjaman', 'web', '2024-06-26 02:37:34', '2024-06-26 02:37:34'),
(17, 'view_riwayat_peminjaman', 'web', '2024-06-26 02:37:34', '2024-06-26 02:37:34'),
(18, 'view_validasi_barang', 'web', '2024-06-26 02:37:34', '2024-06-26 02:37:34'),
(19, 'view_labor', 'web', '2024-06-28 04:02:56', '2024-06-28 04:02:56'),
(20, 'view_report', 'web', '2024-06-28 07:08:25', '2024-06-28 07:08:25'),
(21, 'view_log_activity', 'web', '2024-06-28 07:11:30', '2024-06-28 07:11:30'),
(22, 'view_barang_pimpinan', 'web', '2024-07-01 22:46:10', '2024-07-01 22:46:10');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `room_id` bigint(20) UNSIGNED NOT NULL,
  `kode_barang` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `room_id`, `kode_barang`, `name`, `stock`, `price`, `image`, `desc`, `verified`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'HP-21-12', 'Handphone', 0, 12344566, '2024-07-03Screenshot 2024-06-11 110206.png', NULL, 1, '2024-06-21 20:18:49', '2024-07-08 12:05:43'),
(6, 1, 1, 'M-S3R13S', 'Mouse Logitech', 0, 349000, '2024-07-08mouse.jpeg', NULL, 1, '2024-07-04 12:42:52', '2024-07-08 12:05:43'),
(7, 1, 5, 'LTP-09-070112', 'Laptop Acer', 0, 7000000, '2024-07-08acer_aspire_5_primary-100769594-orig (1).jpg', NULL, 0, '2024-07-04 12:49:01', '2024-07-08 10:53:22'),
(9, 1, 5, 'M-S3R13Sas', 'Mouse Rexus', 90, 399000, '2024-07-08acer_aspire_5_primary-100769594-orig (1).jpg', NULL, 1, '2024-07-04 12:49:01', '2024-07-08 12:05:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_supplies`
--

CREATE TABLE `product_supplies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `type` enum('income','outcome') NOT NULL,
  `date` date NOT NULL,
  `desc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_supplies`
--

INSERT INTO `product_supplies` (`id`, `created_at`, `updated_at`, `product_id`, `user_id`, `supplier_id`, `name`, `quantity`, `type`, `date`, `desc`) VALUES
(8, '2024-07-08 11:21:30', '2024-07-08 11:53:55', 9, 1, 5, NULL, 100, 'income', '2024-07-09', NULL),
(9, '2024-07-08 11:55:07', '2024-07-08 11:55:07', 9, 1, NULL, 'Budiono Siregar', 10, 'outcome', '2024-07-09', 'Merusakkan barang di Labor Multimedia');

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `quantity_returned` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(2, 'pimpinan', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(3, 'dosen_staff', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28'),
(4, 'mahasiswa', 'web', '2024-06-21 04:42:28', '2024-06-21 04:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 3),
(16, 4),
(17, 3),
(17, 4),
(19, 1),
(20, 1),
(21, 1),
(22, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ruangans`
--

CREATE TABLE `ruangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ruangans`
--

INSERT INTO `ruangans` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'E310 Labor Multimedia', '2024-06-21 05:59:00', '2024-07-08 07:51:52'),
(3, 'E208 Labor Sistem Informasi 2', '2024-07-08 07:51:05', '2024-07-08 07:53:49'),
(4, 'E301 Labor Pemograman 1', '2024-07-08 07:51:28', '2024-07-08 07:51:28'),
(5, 'E302 Labor Pemograman 2', '2024-07-08 07:52:11', '2024-07-08 07:52:11'),
(6, 'E201 Labor Internet of Things', '2024-07-08 07:52:50', '2024-07-08 07:52:50'),
(7, 'E202 Labor Perakitan dan Instalasi', '2024-07-08 07:53:17', '2024-07-08 07:53:17'),
(8, 'E204 Labor Artificial Inteligence', '2024-07-08 07:54:34', '2024-07-08 07:54:34'),
(9, 'E311 Labor Sistem Informasi', '2024-07-08 07:55:32', '2024-07-08 07:55:32'),
(10, 'E303 Labor Instalasi Jaringan 1', '2024-07-08 07:55:52', '2024-07-08 07:55:52'),
(11, 'E304 Labor Instalasi Jaringan 2', '2024-07-08 07:56:03', '2024-07-08 07:56:03');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`) VALUES
(1, 'PT PBL INVENTARIS', 'Politeknik Negeri Padang', '085212481023', 'pblinventaris@gmailcom', NULL, '2024-07-08 12:17:49'),
(2, 'PT SIILTI KELOMPOK 4', 'Padang', '082389000458', 'siilti@gmailcom', NULL, '2024-07-08 12:15:36'),
(5, 'PT Distribusi Voucher Nusantara Tbk - DIVA', 'Jln. Distribusi Voucher Nusantara Tbk No.112 A', '081234567890', 'vouchernusantara@gmail.com', '2024-07-08 07:59:34', '2024-07-08 07:59:34');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `tanggal_peminjaman` datetime NOT NULL,
  `tanggal_pengembalian` datetime DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `back` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sultan Maulana Ichiro', 'sultanmaulanaichiro@gmail.com', NULL, '$2y$12$HEt8mmnZzPkAanwKsDJSE.2KtBecVpzk.6/8kooo8E3IIRmqYVAe6', NULL, NULL, NULL),
(2, 'Indah Wulandari', 'indah@gmail.com', NULL, '$2y$12$3ldPCtO5aqJ4mdYDmqTth.UiHvPuj.pQJkzMuII.utjcneiPaZFLm', NULL, NULL, NULL),
(3, 'Erfan Fadhil Juzar', 'erpan@gmail.com', NULL, '$2y$12$LTN7QJWwXfoMZlWlTg4lEeYDzzRoeDk.SELIM383mxJNhKJTa8zou', NULL, NULL, '2024-07-07 09:31:28'),
(4, 'Eka Maulidya Rahmi', 'eka@gmail.com', NULL, '$2y$12$G/EXKxzeQ4AXXu0IPmqATucKXwNzAPuf7UoHsPo80Oi/a1PGBmAxO', NULL, NULL, NULL),
(5, 'Muhammad Amir Shafwan', 'amir@gmail.com', NULL, '$2y$12$t020N5h9eno84PnwL1z02OlagPUrm5n1rPAsJW39peKvGd9x9dj7O', NULL, '2024-06-21 04:46:04', '2024-06-21 04:46:04'),
(6, 'Aditya Ahmad Alfarison', 'adit@gmail.com', NULL, '$2y$12$B4qnmdJIDhx3jYKqGMvocuIkwxzJiWljHXnOakBf/f5AiE2.5YCV6', NULL, '2024-06-21 04:47:25', '2024-06-21 04:47:25'),
(7, 'Farrel Adrian Laksana', 'farrel@gmail.com', NULL, '$2y$12$P3ao6tjf1ZSHRE8BPbTOdu/H.zixl1P1MMuR5LGM0t4yky8J1qsHu', NULL, '2024-06-21 04:48:49', '2024-06-21 04:48:49'),
(11, 'John Doe', 'john.doe@example.com', NULL, '$2y$12$YXqu5zGsjjFscSo2Lu0kou3jhoBHbMmS0wHVnklQFOGKinwrs6jAO', NULL, '2024-07-04 13:36:58', '2024-07-04 13:43:18'),
(12, 'Jane Smith ', ' jane.smith@example.com', NULL, '$2y$12$JjdIxGg4MWfz0k0XnIp/QekFIRrpLKcU6uIyUSh2Ew/m/c5fq05ui', NULL, '2024-07-04 13:36:58', '2024-07-04 13:43:18'),
(13, 'Alex Johnson', 'alex.johnson@example.com', NULL, '$2y$12$PPc0Z8G5K0jIyjQg4hGHveT9EJYWNx2jwzTtZDRI6y823X4yw63KG', NULL, '2024-07-04 13:36:59', '2024-07-04 13:43:18'),
(15, 'SIILTI', 'siilti@gmail.com', NULL, '$2y$12$Ow8uQLnrXjR5xTlYoENZzezdKhAqu3SQOUAQCvAMeqrK53UJefwUu', NULL, '2024-07-08 08:10:11', '2024-07-08 08:10:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `bug_reports`
--
ALTER TABLE `bug_reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bug_reports_user_id_foreign` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosens`
--
ALTER TABLE `dosens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `dosens_nip_unique` (`nip`),
  ADD UNIQUE KEY `dosens_email_unique` (`email`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `labors`
--
ALTER TABLE `labors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `labors_room_id_foreign` (`room_id`);

--
-- Indexes for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mahasiswas_nim_unique` (`nim`),
  ADD UNIQUE KEY `mahasiswas_email_unique` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

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
  ADD UNIQUE KEY `products_kode_barang_unique` (`kode_barang`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_ruangans_id_foreign` (`room_id`);

--
-- Indexes for table `product_supplies`
--
ALTER TABLE `product_supplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_supplies_product_id_foreign` (`product_id`),
  ADD KEY `product_supplies_user_id_foreign` (`user_id`),
  ADD KEY `product_supplies_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `returns_transaction_id_foreign` (`transaction_id`),
  ADD KEY `returns_user_id_foreign` (`user_id`),
  ADD KEY `returns_product_id_foreign` (`product_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `ruangans`
--
ALTER TABLE `ruangans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bug_reports`
--
ALTER TABLE `bug_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dosens`
--
ALTER TABLE `dosens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labors`
--
ALTER TABLE `labors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_supplies`
--
ALTER TABLE `product_supplies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ruangans`
--
ALTER TABLE `ruangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bug_reports`
--
ALTER TABLE `bug_reports`
  ADD CONSTRAINT `bug_reports_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `labors`
--
ALTER TABLE `labors`
  ADD CONSTRAINT `labors_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `ruangans` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_ruangans_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `ruangans` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_supplies`
--
ALTER TABLE `product_supplies`
  ADD CONSTRAINT `product_supplies_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_supplies_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `product_supplies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `returns`
--
ALTER TABLE `returns`
  ADD CONSTRAINT `returns_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `returns_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `returns_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
