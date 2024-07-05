-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2024 at 03:45 PM
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

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'User Mahasiswa Erfan Fadhil Juzar melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 3, '[]', NULL, '2024-06-21 04:43:23', '2024-06-21 04:43:23'),
(2, 'default', 'User Pimpinan Eka Maulidya Rahmi melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-21 04:43:41', '2024-06-21 04:43:41'),
(3, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-21 04:44:16', '2024-06-21 04:44:16'),
(4, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-21 04:44:34', '2024-06-21 04:44:34'),
(5, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-21 04:44:55', '2024-06-21 04:44:55'),
(6, 'default', 'User Pimpinan Muhammad Amir Shafwan melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 5, '[]', NULL, '2024-06-21 04:46:22', '2024-06-21 04:46:22'),
(7, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-21 04:46:48', '2024-06-21 04:46:48'),
(8, 'default', 'User Dosen/Staff Aditya Ahmad Alfarison melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 6, '[]', NULL, '2024-06-21 04:47:43', '2024-06-21 04:47:43'),
(9, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-21 04:48:03', '2024-06-21 04:48:03'),
(10, 'default', 'User Mahasiswa Farrel Adrian Laksana melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 7, '[]', NULL, '2024-06-21 04:49:05', '2024-06-21 04:49:05'),
(11, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-21 04:49:20', '2024-06-21 04:49:20'),
(12, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-21 06:20:52', '2024-06-21 06:20:52'),
(13, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-21 08:53:10', '2024-06-21 08:53:10'),
(14, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-21 14:15:34', '2024-06-21 14:15:34'),
(15, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-21 19:39:44', '2024-06-21 19:39:44'),
(16, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-21 19:44:11', '2024-06-21 19:44:11'),
(17, 'default', 'User Pimpinan Eka Maulidya Rahmi melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-21 19:46:46', '2024-06-21 19:46:46'),
(18, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-21 19:54:30', '2024-06-21 19:54:30'),
(19, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-25 14:18:34', '2024-06-25 14:18:34'),
(20, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-25 20:00:28', '2024-06-25 20:00:28'),
(21, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-25 20:43:06', '2024-06-25 20:43:06'),
(22, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-25 20:43:53', '2024-06-25 20:43:53'),
(23, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-25 20:47:04', '2024-06-25 20:47:04'),
(24, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-26 00:03:29', '2024-06-26 00:03:29'),
(25, 'default', 'User Pimpinan Eka Maulidya Rahmi melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-06-26 00:03:43', '2024-06-26 00:03:43'),
(26, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 00:03:56', '2024-06-26 00:03:56'),
(27, 'default', 'User Mahasiswa Erfan Fadhil Juzar melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 3, '[]', NULL, '2024-06-26 00:04:08', '2024-06-26 00:04:08'),
(28, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-26 01:32:51', '2024-06-26 01:32:51'),
(29, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 02:37:47', '2024-06-26 02:37:47'),
(30, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-26 04:57:00', '2024-06-26 04:57:00'),
(31, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 04:58:25', '2024-06-26 04:58:25'),
(32, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-26 05:10:04', '2024-06-26 05:10:04'),
(33, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 07:16:36', '2024-06-26 07:16:36'),
(34, 'default', 'User Mahasiswa Erfan Fadhil Juzar melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 3, '[]', NULL, '2024-06-26 07:18:10', '2024-06-26 07:18:10'),
(35, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-26 08:23:47', '2024-06-26 08:23:47'),
(36, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-26 08:28:32', '2024-06-26 08:28:32'),
(37, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 09:14:10', '2024-06-26 09:14:10'),
(38, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-26 12:15:45', '2024-06-26 12:15:45'),
(39, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 12:16:12', '2024-06-26 12:16:12'),
(40, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:19:40', '2024-06-26 18:19:40'),
(41, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-26 18:21:27', '2024-06-26 18:21:27'),
(42, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-26 18:26:51', '2024-06-26 18:26:51'),
(43, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-26 18:39:33', '2024-06-26 18:39:33'),
(44, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-27 02:18:18', '2024-06-27 02:18:18'),
(45, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 02:21:46', '2024-06-27 02:21:46'),
(46, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-27 02:27:38', '2024-06-27 02:27:38'),
(47, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-27 06:27:31', '2024-06-27 06:27:31'),
(48, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-27 06:28:36', '2024-06-27 06:28:36'),
(49, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-06-27 06:51:18', '2024-06-27 06:51:18'),
(50, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-28 00:19:32', '2024-06-28 00:19:32'),
(51, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-28 01:17:22', '2024-06-28 01:17:22'),
(52, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-28 07:32:45', '2024-06-28 07:32:45'),
(53, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-28 10:26:53', '2024-06-28 10:26:53'),
(54, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-28 18:37:31', '2024-06-28 18:37:31'),
(55, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-28 19:31:34', '2024-06-28 19:31:34'),
(56, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-29 06:02:56', '2024-06-29 06:02:56'),
(57, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-30 08:50:13', '2024-06-30 08:50:13'),
(58, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-01 02:13:19', '2024-07-01 02:13:19'),
(59, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-01 09:15:01', '2024-07-01 09:15:01'),
(60, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-01 22:28:19', '2024-07-01 22:28:19'),
(61, 'default', 'User Pimpinan Eka Maulidya Rahmi melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-07-01 23:06:42', '2024-07-01 23:06:42'),
(62, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-01 23:07:37', '2024-07-01 23:07:37'),
(63, 'default', 'User Pimpinan Eka Maulidya Rahmi melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-07-02 01:12:32', '2024-07-02 01:12:32'),
(64, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-02 02:49:00', '2024-07-02 02:49:00'),
(65, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-02 03:15:33', '2024-07-02 03:15:33'),
(66, 'default', 'User Mahasiswa Erfan Fadhil Juzar melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 3, '[]', NULL, '2024-07-02 03:16:07', '2024-07-02 03:16:07'),
(67, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-02 06:41:19', '2024-07-02 06:41:19'),
(68, 'default', 'User Mahasiswa Erfan Fadhil Juzar melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 3, '[]', NULL, '2024-07-02 07:30:25', '2024-07-02 07:30:25'),
(69, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-02 15:58:24', '2024-07-02 15:58:24'),
(70, 'default', 'User Pimpinan Eka Maulidya Rahmi melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 4, '[]', NULL, '2024-07-02 20:58:15', '2024-07-02 20:58:15'),
(71, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-02 20:59:40', '2024-07-02 20:59:40'),
(72, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-02 21:03:07', '2024-07-02 21:03:07'),
(73, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-03 17:10:42', '2024-07-03 17:10:42'),
(74, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-03 17:13:00', '2024-07-03 17:13:00'),
(75, 'default', 'User Mahasiswa Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 10, '[]', NULL, '2024-07-03 17:35:51', '2024-07-03 17:35:51'),
(76, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-03 17:48:10', '2024-07-03 17:48:10'),
(77, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-04 06:09:06', '2024-07-04 06:09:06'),
(78, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 07:34:06', '2024-07-04 07:34:06'),
(79, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-04 08:39:54', '2024-07-04 08:39:54'),
(80, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-04 12:23:41', '2024-07-04 12:23:41'),
(81, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-04 21:18:00', '2024-07-04 21:18:00'),
(82, 'default', 'User Dosen/Staff Indah Wulandari melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 2, '[]', NULL, '2024-07-04 23:04:57', '2024-07-04 23:04:57'),
(83, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-07-05 05:43:29', '2024-07-05 05:43:29');

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
(1, 1, 'Sultan Maulana Ichiro', 'aku adalah manusia', '2024-06-28 09:02:56', '2024-06-28 09:02:56'),
(2, 1, 'Sultan Maulana Ichiro', 'uyvuvugvuhu', '2024-06-28 19:24:36', '2024-06-28 19:24:36');

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
  `gender` varchar(255) NOT NULL,
  `kode_jurusan` varchar(255) NOT NULL,
  `jurusan` varchar(255) NOT NULL,
  `kode_prodi` varchar(255) NOT NULL,
  `prodi` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `no_telp` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosens`
--

INSERT INTO `dosens` (`id`, `nidn`, `nip`, `name`, `gender`, `kode_jurusan`, `jurusan`, `kode_prodi`, `prodi`, `email`, `jabatan`, `image`, `no_telp`, `alamat`, `created_at`, `updated_at`) VALUES
(4, '0015048105', '198104152006041002', 'DEDDY PRAYAMA, S.Kom, M.ISD', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'deddy@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(5, '0007128104', '198112072008122001', 'DEFNI, S.Si, M.Kom', 'Perempuan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'defni@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(6, '0028097803', '197809282008121002', 'DENI SATRIA, S.Kom, M.Kom', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'dns1st@gmail.com', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(7, '0009058601', '198605092014042001', 'DWINY MEIDELFI, S.Kom, M.Cs', 'Perempuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'dwinymeidelfi@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(8, '0001097802', '197809012008121001', 'ERVAN ASRI, S.Kom, M.Kom', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'ervan@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(9, '0021078601', '19860721201012006', 'FAZROL ROZI, M.Sc.', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'fazrol@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(10, '1029058502', '198505292014042001', 'FITRI NOVA, M.T, S.ST', 'Perempuan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'fitrinova85@gmail.com', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(11, '0010056606', '196605101994031003', 'Ir. HANRIYAWAN ADNAN MOODUTO, M.Kom.', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'mooduto@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(13, '0015048209', '198204152012121002', 'HIDRA AMNUR, S.E., S.Kom, M.Kom', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'hidra@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(14, '0019038103', '198103192006042002', 'HUMAIRA, S.T, M.T', 'Perempuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'humaira@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(15, '0001107505', '197510012006041002', 'IKHSAN YUSDA PRIMA PUTRA, S.H., LL.M', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', '', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(16, '0025068301', '198306252008012004', 'INDRI RAHMAYUNI, S.T, M.T', 'Perempuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'indri@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(17, '0029068102', '198106292006042001', 'MERI AZMI, S.T, M.Cs', 'Perempuan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'meriazmi@gmail.com', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(18, '1015047801', '197804152000121002', 'Ir. Rahmat Hidayat, S.T, M.Sc.IT', 'Laki-laki', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'rahmat@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(19, '0001067407', '197406012006042001', 'RASYIDAH, S.Si, M.M.', 'Perempuan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'rasyidah@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(20, '0022017806', '197801222009122002', 'RIKA IDMAYANTI, S.T, M.Kom', 'Perempuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'rikaidmayanti@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(21, '0018077099', '197007182008012010', 'RITA AFYENNI, S.Kom, M.Kom', 'Perempuan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'ritaafyenni@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(22, '0029017603', '197601292002121001', 'RONAL HADI, S.T, M.Kom', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'ronalhadi@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(23, '0010088805', ' 19880810 201903 1 012', 'TAUFIK GUSMAN,  S.S.T, M.Ds', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'taufikgusman@gmail.com', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(24, '0029128003', '198012292006042001', 'YANCE SONATHA, S.Kom, M.T', 'Perempuan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'sonatha.yance@gmail.com', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(25, '0013017604', '197601132006041002', 'Dr. Ir. YUHEFIZAR, S.Kom., M.Kom', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'yuhefizar@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(26, '0019077609', '197607192008012017', 'YULHERNIWATI, S.Kom, M.T', 'Perempuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'yulherniwati@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(27, '0005039205', '199203052019032025', 'TRI LESTARI, S.Pd.,M.Eng.', 'Perempuan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'trilestari0503@gmail.com', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(28, '0006069009', '199006062019032026', 'Fanni Sukma, S.ST., M.T', 'Perempuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'fannisukma@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(29, '0020028804', '198802202019031009', 'Andre Febrian Kasmar, S.T., M.T.', 'Laki-laki', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'andrefebrian@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(30, '0022078607', '198607222009121004', 'RONI PUTRA, S.Kom, M.T ', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'rn.putra@gmail.com', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(31, '0029058909', '19890529 202012 1 003', 'Ardi Syawaldipa, S.Kom.,M.T.', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'ardi.syawaldipa@gmail.com', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(32, '0310119101', '19911110 202203 1 008', 'Harfebi Fryonanda, S.Kom., M.Kom', 'Laki-laki', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'harfebi@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(33, '0012098808', '198809122022031006', 'Ideva Gaputra, S.Kom., M.Kom', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'idevagaputra@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(34, '1017078904', '19890717 202203 2 010', 'Yulia Jihan Sy, S.Kom., M.Kom', 'Perempuan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'yulia@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(35, '1021028702', '19870221 202203 1 001', 'Andrew Kurniawan Vadreas, S.Kom., M.T	', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'andrew@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(36, '2010059001', '19900510 202203 1 002', 'YORI ADI ATMA, S.Pd., M.Kom', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'yori@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(37, '0130039101', '19910330 202203 1 004', 'Dr. Ulya Ilhami Arsyah, S.Kom., M.Kom', 'Laki-laki', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'ulya@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(38, '0218068801', '19880618 202203 1 003', 'Hendra Rotama, S.Pd., M.Sn', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'hendrarotama@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(39, '0008069103', '19910608 202203 2 006', 'Sumema, S.Ds., M.Ds', 'Perempuan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'sumema@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(40, '0017078407', '19840717 201012 1 002', 'Raemon Syaljumairi, S.Kom., M.Kom', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'raemon_syaljumairi@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(41, '0004099601', '19960904 202203 2 018', 'Mutia Rahmi Dewi, S.Kom., M.Kom', 'Perempuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', 'mutiarahmi@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(42, '0001118611', '19861101 202203 2 003', 'Novi, S.Kom., M.T', 'Perempuan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'novi@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(43, '0027089303', '19930827 202203 2 012', 'Rahmi Putri Kurnia, S.Kom., M.Kom', 'Perempuan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'rahmiputri@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 09:25:36', '2024-06-21 09:25:36'),
(44, '0025088802', '198808252015041002', 'ALDE ALANDA, S.Kom, M.T', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'alde@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 10:07:08', '2024-06-21 10:07:08'),
(45, '003078904', '198907032019031015', 'ALDO ERIANDA, M.T, S.ST', 'Laki-laki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', 'aldo@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 10:07:08', '2024-06-21 10:07:08'),
(46, '0002037410', '197403022008121001', 'CIPTO PRABOWO, S.T, M.T', 'Laki-laki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', 'cipto@pnp.ac.id', NULL, NULL, NULL, NULL, '2024-06-21 10:09:12', '2024-06-21 10:09:12'),
(47, '0002127705', '197712022006041000', 'HENDRICK, S.T, M.T.,Ph.D', 'Laki-laki', 'EE', 'Teknik Elektro', '4EC', 'D4 - Teknik Elektronika', 'hendrickpnp77@gmail.com', NULL, NULL, NULL, NULL, '2024-06-21 19:56:59', '2024-06-21 19:56:59');

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
(1, 1, 'ga ada', 'Selasa', '2024-06-24', '10:10:00', '2024-06-28 09:13:45', '2024-06-28 09:13:45'),
(2, 1, 'asdoinas', 'rabu', '2022-10-10', '11:11:00', '2024-06-28 09:53:28', '2024-06-28 09:53:28'),
(3, 1, 'afd', 'xcs', '1312-03-12', '12:31:00', '2024-06-28 09:55:51', '2024-06-28 09:55:51');

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

--
-- Dumping data for table `mahasiswas`
--

INSERT INTO `mahasiswas` (`id`, `nim`, `name`, `kode_jurusan`, `jurusan`, `kode_prodi`, `prodi`, `angkatan`, `email`, `no_telp`, `alamat`, `created_at`, `updated_at`) VALUES
(1, '2111082013', 'Farrel Adrian Laksana', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(2, '2211081001', 'Abdillah Rahman', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(3, '2211081003', 'Alfa Ramadhan', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(4, '2211081008', 'Firman Ardiansyah', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(5, '2211082002', 'Aditya Ahmad Alfarison', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(6, '2211082003', 'Aqmal Bahri', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(7, '2211082006', 'Erfan Fadhil Juzar', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(8, '2211082008', 'Farhan', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(9, '2211082011', 'Fuad Al Fajri', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(10, '2211082026', 'Rayhan Juliansyah', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(11, '2211082029', 'Sultan Maulana Ichiro', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(12, '2211082033', 'Alifah Ulfiah', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(13, '2211083002', 'Marsya Missendhi', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(14, '2211083003', 'Eka Maulidya Rahmi', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(15, '2211083006', 'Indah Wulandari', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(16, '2211083019', 'Alnisa Marsaretni', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(17, '2211083021', 'Aura Zulaikha', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(18, '2211083023', 'Desya Yusalima', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(19, '2211083032', 'Mai Tasa Wilia', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(20, '2211083040', 'Akmal Rendiansyah', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(21, '2211083042', 'Muhammad Amir Shafwan', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44'),
(22, '2211083046', 'Vina Delta Sari', NULL, 'Teknologi Informasi', NULL, 'Teknologi Rekayasa Perangkat Lunak', 2022, NULL, NULL, NULL, '2024-07-04 13:29:44', '2024-07-04 13:29:44');

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
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 13),
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 12),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 7),
(4, 'App\\Models\\User', 9),
(4, 'App\\Models\\User', 10),
(4, 'App\\Models\\User', 11);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(1, 2, 1, 'HP-21-12', 'Handphone', 179, 12344566, '2024-07-03Screenshot 2024-06-11 110206.png', NULL, 1, '2024-06-21 20:18:49', '2024-07-05 06:17:13'),
(2, 2, 1, 'oasidj', 'oaisdj', 0, 21093, '2024-07-02Screenshot 2024-07-01 225733.png', NULL, 1, '2024-07-02 02:50:58', '2024-07-02 21:00:33'),
(4, 1, 1, 'LTP-09-0720', 'Laptop 1', 0, 1, NULL, NULL, 0, '2024-07-04 12:42:52', '2024-07-04 12:42:52'),
(5, 1, 1, 'LTP-09-070', 'Laptop', 0, 1, NULL, NULL, 0, '2024-07-04 12:42:52', '2024-07-04 12:42:52'),
(6, 1, 1, 'M-S3R13S', 'Mouse Logitech', 0, 1, NULL, NULL, 0, '2024-07-04 12:42:52', '2024-07-04 12:42:52'),
(7, 1, 1, 'LTP-09-070112', 'Laptop Acer', 0, 1, NULL, NULL, 0, '2024-07-04 12:49:01', '2024-07-04 12:49:01'),
(8, 1, 1, 'adas21', 'asda', 0, 1, NULL, NULL, 0, '2024-07-04 12:49:01', '2024-07-04 12:49:01'),
(9, 1, 1, 'M-S3R13Sas', 'Mouse Rexus', 0, 1, NULL, NULL, 0, '2024-07-04 12:49:01', '2024-07-04 12:49:01');

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
(4, '2024-07-02 21:38:56', '2024-07-02 21:38:56', 1, 1, 1, NULL, 123, 'income', '1010-10-10', NULL),
(5, '2024-07-02 21:40:03', '2024-07-02 21:40:03', 1, 1, NULL, 'erpan', 10, 'outcome', '0024-10-10', NULL);

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

--
-- Dumping data for table `returns`
--

INSERT INTO `returns` (`id`, `transaction_id`, `user_id`, `product_id`, `tanggal_pengembalian`, `quantity_returned`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '1111-11-11', 1, '2024-06-26 05:10:56', '2024-06-26 05:10:56'),
(2, 1, 1, 1, '1111-12-12', 2, '2024-06-27 02:40:34', '2024-06-27 02:40:34'),
(3, 1, 1, 1, '2024-07-05', 1, '2024-07-05 06:17:13', '2024-07-05 06:17:13');

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
(1, 'Labor 301 Web Multimedia', '2024-06-21 05:59:00', '2024-06-21 05:59:00'),
(2, 'fcvcxcccc', '2024-07-02 21:35:06', '2024-07-02 21:35:21');

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
(1, 'PT Erfan Ganteng', 'Lubuk Buaya', '08123456789', 'tergantung@gmailcom', NULL, NULL),
(2, 'PT SIILTI GACOR', 'Padang', '082389000458', 'siilti@gmailcom', NULL, NULL),
(3, 'PT TEERPEEL PEENPE', 'Pelalawan', '0823890004581', 'trpl@gmailcom', NULL, '2024-07-02 21:36:20');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `name`, `user_id`, `product_id`, `quantity`, `tanggal_peminjaman`, `tanggal_pengembalian`, `desc`, `created_at`, `updated_at`) VALUES
(1, 'Indah Wulandari', 2, 1, 35, '2024-06-26 11:58:35', '2024-07-05 07:20:16', 'osaidnoidnasoidnas', '2024-06-26 04:58:35', '2024-07-05 00:20:16'),
(2, 'Indah Wulandari', 2, 1, 1, '2024-06-26 12:01:02', '2024-07-05 07:14:03', 'sada', '2024-06-26 05:01:02', '2024-07-05 00:14:03'),
(3, 'Indah Wulandari', 2, 1, 1, '2024-06-26 12:05:07', NULL, '', '2024-06-26 05:05:07', '2024-06-26 05:05:07'),
(4, 'Indah Wulandari', 2, 1, 1, '2024-06-26 12:06:03', NULL, '', '2024-06-26 05:06:03', '2024-06-26 05:06:03'),
(5, 'Erfan Fadhil Juzar', 3, 1, 1, '2024-06-26 14:20:24', NULL, NULL, '2024-06-26 07:20:24', '2024-06-26 07:20:24'),
(6, 'Indah Wulandari', 2, 1, 1, '2024-06-26 21:12:22', NULL, NULL, '2024-06-26 14:12:22', '2024-06-26 14:12:22'),
(7, 'Indah Wulandari', 2, 1, 3, '2024-06-27 01:20:48', NULL, 'siaudhiudaiuhdia', '2024-06-26 18:20:48', '2024-06-26 18:21:00'),
(8, 'Indah Wulandari', 2, 1, 5, '2024-06-27 09:23:36', NULL, NULL, '2024-06-27 02:23:36', '2024-06-27 02:23:36'),
(9, 'Erfan Fadhil Juzar', 3, 1, 1, '2024-07-02 11:29:36', '2023-10-10 00:00:00', NULL, '2024-07-02 04:29:36', '2024-07-02 04:29:36'),
(10, 'Indah Wulandari', 2, 1, 1, '2024-07-05 06:17:06', '2024-07-08 10:01:00', NULL, '2024-07-04 23:17:06', '2024-07-04 23:17:06'),
(11, 'Sultan Maulana Ichiro', 1, 1, 1, '2024-07-05 07:35:18', '2024-07-08 10:10:00', NULL, '2024-07-05 00:35:18', '2024-07-05 00:35:18'),
(12, 'Sultan Maulana Ichiro', 1, 1, 1, '2024-07-05 07:39:53', '2024-07-08 10:10:00', NULL, '2024-07-05 00:39:53', '2024-07-05 00:39:53'),
(13, 'Sultan Maulana Ichiro', 1, 1, 1, '2024-07-05 07:41:11', '2024-07-11 23:11:00', NULL, '2024-07-05 00:41:11', '2024-07-05 00:41:11'),
(14, 'Sultan Maulana Ichiro', 1, 1, 1, '2024-07-05 07:42:40', '2024-07-06 23:11:00', NULL, '2024-07-05 00:42:40', '2024-07-05 00:42:40');

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
(3, 'Erfan Fadhil Juzar', 'erpan@gmail.com', NULL, '$2y$12$/f5MNnBFlsj4qY/t3OTMlO5.LJwOVopxjgBf9fCJbR5o2/yXeCtT6', NULL, NULL, NULL),
(4, 'Eka Maulidya Rahmi', 'eka@gmail.com', NULL, '$2y$12$G/EXKxzeQ4AXXu0IPmqATucKXwNzAPuf7UoHsPo80Oi/a1PGBmAxO', NULL, NULL, NULL),
(5, 'Muhammad Amir Shafwan', 'amir@gmail.com', NULL, '$2y$12$t020N5h9eno84PnwL1z02OlagPUrm5n1rPAsJW39peKvGd9x9dj7O', NULL, '2024-06-21 04:46:04', '2024-06-21 04:46:04'),
(6, 'Aditya Ahmad Alfarison', 'adit@gmail.com', NULL, '$2y$12$B4qnmdJIDhx3jYKqGMvocuIkwxzJiWljHXnOakBf/f5AiE2.5YCV6', NULL, '2024-06-21 04:47:25', '2024-06-21 04:47:25'),
(7, 'Farrel Adrian Laksana', 'farrel@gmail.com', NULL, '$2y$12$P3ao6tjf1ZSHRE8BPbTOdu/H.zixl1P1MMuR5LGM0t4yky8J1qsHu', NULL, '2024-06-21 04:48:49', '2024-06-21 04:48:49'),
(9, 'dfse', 'disaj@ADOK.CA', NULL, '$2y$12$uqCIp6ukKN0Zp1voh4S6LegHN46JSKijC27zRTH32P0OjKgj2c8ue', NULL, '2024-07-02 21:30:56', '2024-07-02 21:30:56'),
(10, 'Ichiro', 'ichiro@gmail.com', NULL, '$2y$12$hf04u08ubfdYv3AVCzSsKOJsBeJFBUNynpqoXYt5vMzrUIn9ojO.K', NULL, '2024-07-03 17:35:34', '2024-07-03 17:35:34'),
(11, 'John Doe', 'john.doe@example.com', NULL, '$2y$12$YXqu5zGsjjFscSo2Lu0kou3jhoBHbMmS0wHVnklQFOGKinwrs6jAO', NULL, '2024-07-04 13:36:58', '2024-07-04 13:43:18'),
(12, 'Jane Smith ', ' jane.smith@example.com', NULL, '$2y$12$JjdIxGg4MWfz0k0XnIp/QekFIRrpLKcU6uIyUSh2Ew/m/c5fq05ui', NULL, '2024-07-04 13:36:58', '2024-07-04 13:43:18'),
(13, 'Alex Johnson', 'alex.johnson@example.com', NULL, '$2y$12$PPc0Z8G5K0jIyjQg4hGHveT9EJYWNx2jwzTtZDRI6y823X4yw63KG', NULL, '2024-07-04 13:36:59', '2024-07-04 13:43:18');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `bug_reports`
--
ALTER TABLE `bug_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dosens`
--
ALTER TABLE `dosens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `labors`
--
ALTER TABLE `labors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
