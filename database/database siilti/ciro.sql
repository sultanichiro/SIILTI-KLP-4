-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2024 at 12:11 AM
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
(57, 'default', 'User Admin Sultan Maulana Ichiro melakukan login', NULL, NULL, NULL, 'App\\Models\\User', 1, '[]', NULL, '2024-06-30 08:50:13', '2024-06-30 08:50:13');

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
(2, '1701081035', 'Silvia Angraini', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:03', '2024-06-21 10:26:03'),
(3, '1701091033', 'Dea Annona Prayetno Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:03', '2024-06-21 10:26:03'),
(4, '1701091018', 'Yulia Ramadhani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:03', '2024-06-21 10:26:03'),
(5, '1701081027', 'Syahrul Gusti Hafendi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:03', '2024-06-21 10:26:03'),
(6, '1701082019', 'Rendhika Aditya', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:03', '2024-06-21 10:26:03'),
(7, '1701092022', 'Hexa Aristia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:03', '2024-06-21 10:26:03'),
(8, '1701092016', 'Novelia Desrina Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:03', '2024-06-21 10:26:03'),
(9, '1701091019', 'Fauziah Wulandari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:03', '2024-06-21 10:26:03'),
(10, '1701092021', 'Ira Agustiana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:03', '2024-06-21 10:26:03'),
(11, '1701081015', 'DEDE RAHMAN', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:03', '2024-06-21 10:26:03'),
(12, '1701082012', 'Farhan Hafifi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:03', '2024-06-21 10:26:03'),
(13, '1701081034', 'Zulmaidi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:03', '2024-06-21 10:26:03'),
(14, '1701082017', 'HADITYA HANAFI', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:03', '2024-06-21 10:26:03'),
(15, '1701081010', 'Roberto Firman', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:03', '2024-06-21 10:26:03'),
(16, '1701091010', 'Yenni Wati', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(17, '1701082013', 'PM RIEFKY MUHAMMAD FARHAN', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(18, '1701081029', 'Deo Febrino Mudri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(19, '1701082015', 'Ikhsanul Fajri Yodani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(20, '1701081032', 'Muhammad Yosazikri Ikhsan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(21, '1701091035', 'Chapri Ramadhani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(22, '1701091012', 'Isra Aini', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(23, '1701081031', 'ANGGIE MEIFRIYAN PRATAMA', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(24, '1701082026', 'Resti Pebriani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(25, '1701091091', 'Indah Permata Sari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(26, '1701091034', 'Danny Atthaya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(27, '1701091007', 'Ilham Marjalis', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(28, '1701091002', 'Pratiwi Dwiyanti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(29, '1701091023', 'Fanny Laura', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(30, '1701091017', 'Rara Yulia Insani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(31, '1701091013', 'Arnila Cahya Febri Mendrofa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(32, '1701092030', 'Siti Sa\'adiyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(33, '1701092011', 'Aldo Serena', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(34, '1701091005', 'Sintia Agustin Padri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(35, '1701091004 ', 'Riri Silvani Dwi Putri ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(36, '1701082025', 'Hidayaturrahman', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(37, '1701092002', 'Rizka Putri Yulianda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(38, '1701081038', 'Irfan Kurniawan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(39, '1701092003', 'Dimas Septian Andaleh', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(40, '1701081036', 'Ririn Vamori', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(41, '1701091025', 'Dora Grestya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(42, '1701091009', 'Nilam Permata Bunda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(43, '1601082002', 'Yoga Yowanda Sugama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(44, '1701081001', 'Elfiza', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(45, '1601082004', 'Muhamad Rival', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(46, '1701081003', 'Ilham Hidayat', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(47, '1701091003', 'Rina Yuliana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(48, '1701092025', 'Fathrianda Komala Isral', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(49, '1701091008', 'Sahrul Efendi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(50, '1701091011', 'Intan Rahma Wati', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(51, '1701091030', 'Ratih Wahyuni Islami', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(52, '1701092007', 'Afifah Widodo Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(53, '1711082002', 'Anjelin Andri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(54, '1711082003', 'Ramadhani', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(55, '1711082005', 'Taufik Hidayat', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(56, '1711082006', 'Resy Liza', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(57, '1711082008', 'Cindi Klaudia Putri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(58, '1711082012', 'Jihan Fadhilah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(59, '1711082021', 'M. Aidil Putra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(60, '1711082022', 'Aqilla Novia Sukma', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(61, '1711082024', 'Vienne Anggelica Kurnia', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(62, '1711082025', 'hidayatul sidiq', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(63, '1711082026', 'Sarah Latifah Ma\'rif', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(64, '1711082029', 'Muhammad Abdur Rozak', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(65, '1711082030', 'Syafila Tiara', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(66, '1711082034', 'Elang Abdul Azis', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(67, '1711082036', 'Andre Des Rizaldi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(68, '1711082038', 'Eko Mulya Chandra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(69, '1711082047', 'irsyadi sayid', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(70, '1711082050', 'Rizkhan Hadi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(71, '1711082051', 'Muhammad fahrurrozi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(72, '1711082054', 'Marisa Ayu Saphira', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(73, '1711082055', 'Gabriel Halsya Surya Darma', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(74, '1711082007', 'Farhan Pratama', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(75, '1711082020', 'Dewi Sartika', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(76, '1711082043', 'Dicky Hermiansyah Putra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(77, '1711082052', 'Cecilya Lailaturahmi Hamedeko', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(78, '1711082049', 'Fachrully Rahman ', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(79, '1711082016', 'Suci yolanda putri ', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(80, '1711082019', 'Boby Putra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(81, '1701082023', 'Naufal Ammar Miftah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(82, '1701082001', 'Khaira Aprinaldo Putra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(83, '1701081048', 'Muthia Afrinisa', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(84, '1701082034', 'Chyntia Frandini', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(85, '1701081009', 'Junia Riyani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(86, '1701082022', 'Nur Afuwa Ningtyas', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(87, '1701082032', 'FAJAR SETYAWAN', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(88, '1701082018', 'Hidayatul Fadhilah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(89, '1701081024', 'Athirah Ayu Toisuta', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(90, '1701081002', 'Febri Zummiati', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(91, '1701081040', 'CITRA SARI INDAH UTAMA PUTRI', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(92, '1701081018', 'Reza Anugraha', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(93, '1701081008', 'Sean Rayhan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(94, '1701091022', 'Indra Zandi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(95, '1701092006', 'Annisa Hakimi Nasry', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(96, '1701092009', 'Lokyta Indah Wulandari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(97, '1701082016', 'Yulianti', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(98, '1601082010', 'Ivander Evan Manggala', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(99, '1701082035', 'Afsri Ramayani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(100, '1701081025', 'Dandi Adila Putra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(101, '1701081044', 'ABIM PRADANA PUTRA', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(102, '1701092028', 'Rehanul Fikri Ilmi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(103, '1701092013', 'Taufik Yazidi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(104, '1701081022', 'Nitra Khaira Dini', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(105, '1711082028', 'Zahri Hasanati', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(106, '1701081039', 'Auliatul Wahyudi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(107, '1701082002', 'Yandri Syanurdi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(108, '1701082020', 'Maulana Hanif Alfaro', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(109, '1701092029', 'Satria Rahmat Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(110, '1701091021', 'Yolanda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(111, '2211089008', 'MIFTAHURRAHMI', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(112, '1701091036', 'Sobian Chaniago', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(113, '1701091001', 'Siti Aisyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(114, '1701091027', 'Ratna Mayang Suri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(115, '1701081043', 'Petrus Kanisius Taplo kaize', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(116, '1701082030', 'HERU SAMUDERA', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(117, '1701082021', 'Rahmatul Azizah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(118, '1701091046', 'Maya Lestari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(119, '1701092019', 'Muhammad Adzka Syarif', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(120, '1701092014', 'Rifky Aldiansyah Pratama', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(121, '1701091016', 'Nurlaily', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(122, '1701091028', 'Prima Tri Dewi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(123, '1701091024', 'Fuji Rahayu', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(124, '1701081012', 'GERRI HERMAWAN', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(125, '1601082001', 'Resi Armelia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(126, '1701091048', 'Aditya Fattah A.', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(127, '1701092004', 'Jehan Fauziah Annisa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(128, '1701082005', 'Adityo Ferry', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(129, '1701081028', 'Farid Fauzan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(130, '1601081036', 'Muhammad Fajri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(131, '1701082004', 'Hayatul Azian', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(132, '1601081013', 'Abd Aziz Saleh Batubara', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(133, '1701081011', 'PEGGY PRATAMA', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(134, '1701081033', 'annisa mutiathul jannah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(135, '1701091053', 'Hanif Marshal', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(136, '1601082025', 'Yovi Rezki Putra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(137, '1701092027', 'Wulan Yulia Maizoni', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(138, '1701082010', 'Intan Putri Johan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(139, '1701082024', 'Novita Sari', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(140, '1701091038', 'Aqbil Gilang Arsika', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(141, '1701092001', 'Indri Dwi Ryandari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(142, '1701092015', 'Fitra Febrian', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(143, '1701081005', 'Cilvia Chairunnisa', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(144, '1701081004', 'Nanda Fernando', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(145, '1501082015', 'Aldio Caesar Hidayat', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(146, '1701092008', 'Rizka Adinda Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(147, '1711082044', 'Ichlashio Madheswara', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(148, '1711082035', 'Razitul Ikhlas', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(149, '1711082041', 'Banny Akbar', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(150, '1711082031', 'Ikhlas Zul Amal', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(151, '1711082033', 'Alfiadi Adha', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(152, '1711082032', 'Wahyu Alfandry Pulungan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(153, '1711082037', 'Alkhairul Yoga', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(154, '1701091043', 'Bunga Putri Dipenti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(155, '1701091044', 'Wiwik Oktriliani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(156, '1701092023', 'Soultan Alfath Syahelsa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(157, '1701081026', 'Shavira Triamanda', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(158, '1701091040', 'Ifayola Desdian', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(159, '1701091029', 'Lina Wahyuni', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(160, '1701091026', 'Isnaini', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(161, '1701092012', 'Lakdar Afrento', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(162, '1711082039', 'Filrza Artavio', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(163, '1701081046', 'Monika Listiana Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(164, '1711082014', 'Lathifah Hanum', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(165, '1701081007', 'Nurul Maulida', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(166, '1701081016', 'NAILIL FATMI', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(167, '1701081047', 'Teguh Yudianto', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(168, '1701082009', 'Bima Ardiansyah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(169, '1701081045', 'Andro Osvaldo', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(170, '1701081026b', 'Shavira Triamanda', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(171, '1701081014', 'Syukria Fiki', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(172, '1701082029', 'Merina Savitri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(173, '1701081013', 'Sistri Indah Purnama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(174, '1601081028', 'Alfajri Maulana Ibrahim', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(175, '1701092010', 'Sari Noviani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(176, '1701091045', 'Putri Ramadhani ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(177, '1701091014', 'Debi Regita Senja Untari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(178, '1701092024', 'Helmia Safni', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(179, '1701091052', 'fellicia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(180, '1701091039', 'Sonya Halimah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(181, '1701082014', 'Mechy Adelia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(182, '1701081042', 'Nur Jaini', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(183, '1701081049', 'Doni Azmara', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(184, '1501081047', 'Deri Gustianto', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(185, '1701091041', 'rere salpajuta', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(186, '1701082007', 'Rizky Revaldy', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(187, '1801091021 ', 'Andra Gusman', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(188, '1801091005 ', 'Angga Lorenza ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(189, '1801091034', 'Aprian Adnand', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(190, '1801091006', 'Dinda Meivianti Dwi Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(191, '1801091020', 'Elfi Susanti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(192, '1801092013', 'Elsa Nelzi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(193, '1801092015', 'Fadhila Suci Andini', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(194, '1801092018', 'Fadhilla Rahmanisa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(195, '1801091007', 'Fahmi Abdul Aziz', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(196, '1801092016', 'Feby Rahmasari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(197, '1801092025', 'Habib Faruqi ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(198, '1801091019', 'Johan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(199, '1801091023', 'Juni Safitri ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(200, '1801091030', ' Merisa Adha Azzahra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(201, '1801092021', 'Mufi Arwa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(202, '1801091031', ' Muflihah Indra ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(203, '1801092014', ' Naufal Ihsanul Rasyid ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(204, '1801092026', ' Nur Azizah Rizkyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(205, '1801091035', ' Rades Saputri ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(206, '1801091018', ' Riski Desri Hafani ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(207, '1801091032', 'Tasha Tasmiati ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(208, '1801091033', ' Utari Rezky Alfany', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(209, '1801092023', ' Yenni Yunnita', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(210, '1801092030', ' Yola Yohana ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(211, '1801091008', ' Zahratul Aini Akbar', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:04', '2024-06-21 10:26:04'),
(212, '1801092001', ' Akhiratunnisa Hasanah ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(213, '1801091003', ' Alissa Dori ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(214, '1801091028', ' Alvikri Mukhlis ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(215, '1801092004', ' Dinda Putri Nirmala', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(216, '1801091029', ' Dini Syukrina Sabri ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(217, '1801091016', ' Elsa Annisa Sabri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(218, '1801091024', ' Fasluki Perdana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(219, '1801091015', ' Fira Faradilla', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(220, '1801092028', ' Fitri Handayani ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(221, '1801092002', ' Haura Fathinah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(222, '1801091014', 'Ilfiza Mutia Rahmi ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(223, '1801092007', 'Irna Fitri Yanti ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(224, '1801092011', ' Mohammad Rafiqi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(225, '1801091004', ' Muhammad Fauzi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(226, '1801092008', 'Muhammad Irfan Fadhilah ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(227, '1801091027', ' Mutia Hulwah Nur Alif', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(228, '1801092005', 'Nur Rahmad Ramadhan ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(229, '1801091011', ' Rika Marsoviana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(230, '1801091009', ' Rizna Yusmilanda Purba', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(231, '1801092003', ' Ronaldion Aditya ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(232, '1801091026', ' Safira Putri Nabila', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(233, '1801092012', ' Salsabila Defris Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(234, '1801092029', ' Sarinah Erat', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(235, '1801091001', 'Suri Hanifah ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(236, '1801092010', ' Teten Dwi Rahmi Kiflinda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(237, '1801091002', ' Yolla Fernanda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(238, '1801092009', ' Zelli Oktariana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(239, '1701081030', 'Fachru Ramadhan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(240, '1801082022', 'Ahmad Givantri Haykal', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(241, '1801081007', 'Anggun Melia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(242, '1801081018', 'Annisa Septia Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(243, '1801081019', 'Astina Wahyuni', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(244, '1801081017', 'Atika Suri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(245, '1801082020', 'Dinda Tria Febri Yansyah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(246, '1801082025', 'Esi Tria Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(247, '1801081021', 'Faizura Zadri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(248, '1801082024', 'Fikri Rahmadani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(249, '1801082023', 'Gilang Ramadani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(250, '1801082009', 'Indah Anggraini', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(251, '1801081005', 'M. Rayhan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(252, '1801082021', 'Maitsa Nabila', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(253, '1801081027', 'Meidiana Shafira', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(254, '1801081015', 'Muhammad Fandi Riadi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(255, '1801082019', 'Muhammad Fitra Reza', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(256, '1801081009', 'Nalda Ayu Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(257, '1801081016', 'Nenda Yunita', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(258, '1801082028', 'Nicky Yulia Ameris', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(259, '1801082018', 'Sadik Tulastu', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(260, '1801082016', 'Suci Ramadhani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(261, '1801082014', 'Verdian Ramdhani ', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(262, '1801082017', 'Yusril Mahendra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(263, '1801082013', 'Adam Firmansyah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(264, '1801081003', 'Ananda Kurnia Putra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(265, '1801082011', 'Andre Kurniawan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(266, '1801081024', 'Berlina Febrianti ', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(267, '1801082002 ', 'Dwi Suci Amelia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(268, '1801082001', 'Fatzryah Virantika', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(269, '1801081013', 'Fawziah Tul Ardia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(270, '1801082005', 'Fhadel Wedi Pratama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(271, '1801082007', 'Indra Ramadani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(272, '1801081012', 'Julita Sari ', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(273, '1801081004', ' Lisna Sumarni', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(274, '1801081010', 'Mega Sari', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(275, '1801082006', 'Muhamad Farhan Salim', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(276, '1801081022', 'Muhammad Dehan Pratama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(277, '1801081002 ', 'Muhammad Idris', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(278, '1801082008', ' Muhammad Umar Huzein', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(279, '1801082004', 'Nadila Wellyno Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(280, '1801081025', 'Nova Putri Octaviani ', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(281, '1801081026', 'Rahmat Almubarak', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(282, '1801081023', 'Re Abdul Afif', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(283, '1801081006', 'Reza Putri Julita', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(284, '1801082010', ' Roby Isnil Juanda ', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(285, '1801082026', 'Taufik Ihsan Efendi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(286, '1801081014', 'Yarmis Yuliana ', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(287, '1801081001', 'Yosi Julia Masni', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(288, '1801091025 ', 'Fadhilah Febriani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(289, '1701081006', 'afrizall03chan@gmail.com', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05');
INSERT INTO `mahasiswas` (`id`, `nim`, `name`, `kode_jurusan`, `jurusan`, `kode_prodi`, `prodi`, `angkatan`, `email`, `no_telp`, `alamat`, `created_at`, `updated_at`) VALUES
(290, '1701091047', 'Nasri Sarif', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(291, '1701091050', 'Mursyidul Haq', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(292, '1701092026', 'Risya Dwi Aulia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(293, '1701082033', '	Rafly Surya Chandra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(294, '1701081023', '	Dicky Rinaldi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(295, '1701092020', 'Qatrunnada Nurhana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(296, '1701082036', 'Adella', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(297, '1701092017', 'Lisa Oktafiyani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(298, '1701091015', 'RAHMAT JUNEDI', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(299, '2011089007', 'Putri Huriati', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(300, '1601092016', 'Putri Afriyan Sari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(301, '1701091049', 'Ramli Hidayat', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(302, '1701081041', 'Deby Hibatul Fadillah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(303, '1701082038', 'Hafriyaldo Syafril', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(304, '1711082042', 'Kurnia Fajar Viliano', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(305, '2011089011', 'Wara Ulan Saputri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(306, '2011089004', 'Frisdiandi Septiatama', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(307, '1711082010', 'Reza Oksri Nengsi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(308, '2011089002', 'Afdal', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(309, '1711082013', 'Fikri Maulana', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(310, '1711082048', 'Elsa Oktavia', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(311, '1801082015', 'Dicky Yuliardi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(312, '1901081001', 'Kournia Swastika', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(313, '1901081024', 'Melia Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(314, '1901082008', 'Ossy Mayra Dwitami', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(315, '1901081014', 'Lusi Dwi Tri Wahyuni', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(316, '1901081017', 'Laras Santi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(317, '1901082014', 'M. Wahyu Agustino', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(318, '1901081009', 'Dani Ahnaf Falih', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(319, '1901081007', 'Husnul Fikri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(320, '1901081005', 'Indra Darmawan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(321, '1901082022', 'Muhammad Danny Utama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(322, '1901082002', 'Khasbiy Rifqi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(323, '1901081003', 'Lia Febriyusni Audi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(324, '1901081011', 'Vini Jumatul Fitri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(325, '1901081016', 'Aldi Saputra Tanjung', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(326, '1901081020', 'Dodi Saputra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(327, '1901081022', 'Annisa Dwi Febryanti', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(328, '1901081028', 'Sirajul Afkar', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(329, '1901082004', 'Muhammad Afdal Indrawan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(330, '1901082005', 'Esa Pramedia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(331, '1901082009', 'Afif Farhan Ichwanda', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(332, '19010820011', 'M. Angga Fitra Ramadhan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(333, '1901082017', 'Afifah Khairun Nisa', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(334, '1901082021', 'Fanny Laila Safitri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(335, '1901082024', 'Ahlanda Putra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(336, '1901082027', 'Arin Cantika Musi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(337, '1901081030', 'Spero Apda Mahesa', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(338, '1801082003', 'Dwi Latiffah Hanum', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(339, '1901081004', 'Niamatut Thoharia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(340, '1901081006', 'Ahmad Nur Riyandi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(341, '1901081008', 'Rizki Anugrah Vidian', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(342, '1901081010', 'Rivola Islami', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(343, '1901081015', 'Wahyuna', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(344, '1901081019', 'Yandre May Iklas', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(345, '1901081021', 'Ryansyah Putra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(346, '1901081023', 'Cindy Irawan Pratiwi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(347, '1901081025', 'Rini Wahyuni', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(348, '1901081027', 'Latifah Afra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(349, '1901082001', 'Zigo Stephano', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(350, '1901082003', 'Ahmad Siddiq', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(351, '1901082006', 'Silmi Salsabilla', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(352, '1801081030', 'Spero Apda Mahesa', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(353, '1801081008', 'Rizki Anugrah Vidian', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(354, '1901082016', 'M. Reza Gevan Lolyvich', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(355, '1901082010', 'Ridho Farras Muthi Amta', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(356, '1901082015', 'Anselya Meilanitawati Fitri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(357, '1901082018', 'Puput Pujiati', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(358, '1901082020', 'Muhammad Fajri Husaini', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(359, '1901082025', 'Putri Nadya', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(360, '1901082026', 'Muhamad Al Hafizh', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(361, '1901082029', 'Desi Rahmayuni', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(362, '1901082030', 'Daffa Julistio', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(363, '1901082007', 'Muhammad Iqbal', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(364, '1901093003', 'Hafis Hidayatullah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(365, '1901093009', 'Rahmialis Yakub', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(366, '1901093010', 'Arrafi Herosya Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(367, '1901093011', 'Aulia Permana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(368, '1901093016', 'Hafizah Nurul Salsabila', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(369, '1901093017', 'Muhammad Fikri Afansyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(370, '1901093018', 'Ayyubi Fauzihan Jefry', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(371, '1901093019', 'Nabila Ridwan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(372, '1901093021', 'Nois Arya Chaerunianisa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(373, '1901093031', 'Arinanda Satrya Hakim', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(374, '1901093039', 'Noviana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(375, '1901093041', 'Sarah Fitri Khairatunnisa A', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(376, '1901093042', 'Yusuf Baihaqi Amanda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(377, '1801092019', 'Akbar Fadilah Rahman', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(378, '1901091002', 'Iksan Nursalim', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(379, '1901091003', 'Dea Syafira', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(380, '1901091009', 'Zurriyata Thaibah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(381, '1901091011', 'Agil Kurniawan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(382, '1901091012', 'Jesi Andria Joni', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(383, '1901091015', 'Dian Astuti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(384, '1901091017', 'Trisa Sarifatul Anisak', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(385, '1901091018', 'Rafli Jefa Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(386, '1901091020', 'Sherina Tari Yolanda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(387, '1901091022', 'Adinda Putri Junaidi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(388, '1901091024', 'Indah Kusuma Ningsih', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(389, '1901091026', 'Ridda Witdianti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(390, '1901092002', 'Wahyu Khairat', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(391, '1901092004', 'Fahri Fadhila', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(392, '1901092005', 'Dewi Purnama', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(393, '1901092007', 'Citra Alfianti Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(394, '1901092009', 'Jihan Zakia Firdaus', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(395, '1901092012', 'Rifki Kurnia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(396, '1901092013', 'Mona Monika Veza', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(397, '1901092015', 'Azhim Azda Nugraha', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(398, '1901092017', 'Fadhil Defithra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(399, '1901092020', 'Yulya Marda Ningsih', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(400, '1901092022', 'Febrariola Navida', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(401, '1901092023', 'Afif Fujia Rahman', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(402, '1901092025', 'Yoga Kurniawan Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(403, '1901092030', 'Rifat Alifa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(404, '1901091001', 'Rizkiah Rahmah Hatta', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(405, '1901091004', 'Sandri B', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(406, '1901091006', 'Mifthah Aulianti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(407, '1901091008', 'Welsi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(408, '1901091010', 'Nurul Salsabila Yasfa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(409, '1901091013', 'Rizki Pratama Adryan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(410, '1901091014', 'Juma Helda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(411, '1901091016', 'Nur Azizah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(412, '1901091019', 'Fauza Darmansyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(413, '1901091021', 'Elvina Desmendra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:05', '2024-06-21 10:26:05'),
(414, '1901091023', 'Helzi Rahmalya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(415, '1901091025', 'Nurul Kirana Marta', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(416, '1901091027', 'Riky', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(417, '1901092001', 'Valery Raesya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(418, '1901092003', 'Muhammad Olif Rahmadia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(419, '1901092006', 'Rahmi Zazkia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(420, '1901092008', 'Fadhillah Putri Fatria', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(421, '1901092010', 'Rahayu Indah Abadi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(422, '1901092011', 'Firman Shiddiq Alamsyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(423, '1901092016', 'Eddo Yulianda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(424, '1901092018', 'Fattaliya Zikra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(425, '1901092019', 'Muhammad Abdillah Dzikri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(426, '1901092021', 'Shalsabilla Elga Andini', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(427, '1901092024', 'Imam Muhammad Rafifi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(428, '1901092026', 'Atika Indah Sari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(429, '1901092028', 'Citra Ferlli', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(430, '1901092029', 'Novri Hidayat Sabri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(431, '1901093005', 'Silvia Farina', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(432, '1901093006', 'Miftachul Khairiyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(433, '1901093007', 'Rita Oktaviani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(434, '1901093008', 'Putri Ramadhan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(435, '1901093013', 'Sarifa Suhaila', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(436, '1901093014', 'Ghina Lianti Sastri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(437, '1901093015', 'Friska Wulandari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(438, '1901093022', 'Aura Syifa Listi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(439, '1901093024', 'Muthari Al Furqani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(440, '1901093025', 'Muhammad Irsyad', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(441, '1901093026', 'Scandra Rahmadani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(442, '1901093027', 'Muhamad Irvan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(443, '1901093028', 'Rahmat Tri Saputra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(444, '1901093029', 'Fachrureza Yubesta', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(445, '1901093030', 'Arief Rachman Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(446, '1901093033', 'Tri Veramita', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(447, '1901093034', 'Afdhaluz Zikri Syamra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(448, '1901093035', 'Muhammad Ravi Akbar', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(449, '1901093036', 'Maysitah Khairunnisa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(450, '1901093037', 'M. Dean Abdillah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(451, '1901093038', 'Fakhrie Ramadhan Eka Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(452, '1901093040', 'M Al Hafiz', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(453, '1901082028', 'Muhammad Hafiz', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(454, '1711082001', 'Alif Gilang Mulia', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(455, '1711082040', 'Judang Rizki Muhammad', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(456, '1811081002', 'Dika Andra Joni', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(457, '1811081003', 'Deni Al Farizi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(458, '1811081005', 'Dewi Sartika Mulyadi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(459, '1811081006', 'Novita Aulia', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(460, '1811081007', 'M. Ikhsan Gumanof', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(461, '1811081008', 'Meilinda Safitri Effendi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(462, '1811081009', 'I.s. Mutia', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(463, '1811081010', 'Devara Yudia Alindi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(464, '1811081012', 'Lannia Prissila Ayu', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(465, '1811081014', 'Tulsi Yasmi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(466, '1811081026', 'Muhammad Zukra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(467, '1811081030', 'Zukron Alviandy Rahmadhan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(468, '1811081031', 'Ulul Azmi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(469, '1811081032', 'Farihah Salsabila', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(470, '1811081033', 'Robby Aprilian', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(471, '1811081035', 'Rozliyana Binti Latola', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(472, '1811082001', 'Faza Qonita Auliya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(473, '1811082004', 'M Irsad Alfajri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(474, '1811082010', 'Rahmat Berlianda Avandi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(475, '1811082012', 'Muhammad Ariq Hendry', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(476, '1811082015', 'Nola Nur Azizah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(477, '1811082021', 'Yasri Aldi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(478, '1811082022', 'Farros Hazim', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(479, '1811082024', 'Afrizal Fauzi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(480, '1711082015', 'Maulana Mahardika', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(481, '1711082056', 'Farhan Yofanka', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(482, '1811081001', 'Nuria Sisma Putri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(483, '1811081004', 'Randi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(484, '1811081013', 'Vira Mistika', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(485, '1811081016', 'Walid Algazali Dampuri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(486, '1811081018', 'Muhammad Beni Fajri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(487, '1811081021', 'Larra Dhuta', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(488, '1811081022', 'Richy Azura', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(489, '1811081023', 'Jundullah Ilhaq Aulia', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(490, '1811081024', 'Dicky Syahfitra Lubis', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(491, '1811081029', 'Harfa Thandila', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(492, '1811081034', 'Farhan Rinsky Mulya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(493, '1811081036', 'Ramli', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(494, '1811082002', 'Afza Sorfina', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(495, '1811082003', 'Rayhan Putra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(496, '1811082005', 'Ahmad Arif', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(497, '1811082007', 'Hanif Aulia Sabri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(498, '1811082008', 'Salsabila Delaisya Permana', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(499, '1811082009', 'Ramanda Syahputra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(500, '1811082013', 'Nadilla C. Putri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(501, '1811082017', 'Rafiq Mulia Putra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(502, '1811082018', 'Bayu Gusti Paraya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(503, '1811082019', 'Indah Wahyuandillah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(504, '1811082020', 'Ifdal', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(505, '1811082026', 'Indah Putri Yeni', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(506, '1811082027', 'Salman Alfarissy', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(507, '1901082011', 'Muhammad Angga Fitra Ramadhan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(508, '1711082009', 'Teuku Excel Zasa Desriandi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(509, '2001081009', 'Zeni Tasri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(510, '2001081010', 'Windi Monika', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(511, '2001081011', 'Sisi Priscilla', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(512, '2001081012', 'Fadhillah Herpani Siregar', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(513, '2001081014', 'Muhammad Ihsan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(514, '2001081015', 'Annisa Nabila Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(515, '2001081016', 'Fadila Rahmi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(516, '2001082014', 'Nurul Vania', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(517, '2001082015', 'Putri Ayu', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(518, '2001082016', 'Raihan Muthiaz', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(519, '2001082017', 'Rangga Wahyu Prima', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(520, '2001082019', 'Silvi Julika', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(521, '2001082020', 'Silvia Nurmawati', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(522, '2001082022', 'Vanny Widyawillis', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(523, '2001082023', 'Muhammad Hafiz Alkautsar', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(524, '2001082024', 'Cantika Melati', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(525, '2001082037', 'Faiz Abrar', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(526, '2001082038', 'Faruq Alif', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(527, '2001082039', 'Hapis Ependi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(528, '2001082040', 'Kagum Ary Setiawan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(529, '2001082041', 'Luqmanul Hakim', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(530, '2001082042', 'M Aryo De Fajri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(531, '2001082043', 'Muhammad Abdurrahman Al Aqil', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(532, '2001082044', 'Nanda Vikran Yulzamdi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(533, '2001082045', 'Torry Yosci P Nainggolan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(534, '2001082046', 'Ulfa Izmilia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(535, '2001082047', 'Albert Edya Pratama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(536, '1901082012', 'Fachrurrozi Anwar', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(537, '1901082023', 'Shodiq Al Hakim', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(538, '2001081001', 'Bintang Ramadhana Putra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(539, '2001081002', 'Sulis Tiyah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(540, '2001081003', 'Ali Zikri Fadli', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(541, '2001081004', 'Amelia Yuliza', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(542, '2001081005', 'Aulia Permatasari', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(543, '2001081006', 'Dira Agustina', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(544, '2001081007', 'Martua Raja', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(545, '2001081008', 'Wezi Adri Wilmi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(546, '2001082001', 'Agung Diharsemar', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(547, '2001082002', 'Bagas Prasetyo', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(548, '2001082003', 'Bunga Hendriani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(549, '2001082004', 'Dhea Nur Izzaty Amanda', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(550, '2001082005', 'Elsi Febriani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(551, '2001082006', 'Fachrizal Kurniawan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(552, '2001082009', 'Ilham Anugrah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(553, '2001082010', 'Ilma Yusnita', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(554, '2001082011', 'Jawahiir Abdillah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(555, '2001082025', 'Rahmatul Hayani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(556, '2001082026', 'Muhammad Fadhel', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(557, '2001082027', 'Rahmad Hidayat', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(558, '2001082028', 'Wan Bunga', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(559, '2001082029', 'Ridho Abdillah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(560, '2001082031', 'Nataysa Afrilia', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(561, '2001082032', 'Rayhan Aditya Maulana', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(562, '2001082033', 'Aldo Spama Putra Suir', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(563, '2001082034', 'Ananda Rizki Wulanuri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(564, '2001082035', 'Erlangga Difa Yanzi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(565, '1911081001', 'Virdapiliacani', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(566, '1911081005', 'M. Rafhi Akbar Yasya. U', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(567, '1911081007', 'Rizky Anugrah Hasibuan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(568, '1911081008', 'Arung Ramadhan Safii', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(569, '1911081011', 'Shatfi Husna', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(570, '1911081012', 'Widia Lestari', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(571, '1911081014', 'Mesi Puspita Sari', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(572, '1911081016', 'Raven Rivaldo', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(573, '1911081017', 'Azim Ilhamdi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(574, '1911081018', 'Anisa Fadilah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06');
INSERT INTO `mahasiswas` (`id`, `nim`, `name`, `kode_jurusan`, `jurusan`, `kode_prodi`, `prodi`, `angkatan`, `email`, `no_telp`, `alamat`, `created_at`, `updated_at`) VALUES
(575, '1911081023', 'Adio Ihsan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(576, '1911081024', 'Siska Nofri Dania', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(577, '1911081025', 'Suci Khairatuz Zahra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(578, '1911082001', 'Windi Desti Wahyuni', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(579, '1911082002', 'Puji Dhiya Nabila', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(580, '1911082005', 'Muhammad Fadil', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(581, '1911082006', 'Andi Irham Marhamuddin', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(582, '1911082010', 'Luthfiyyah Riznisa', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(583, '1911082014', 'Abid Asshidiqie Nugraha', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(584, '1911082017', 'Hakkan Syukri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(585, '1911082020', 'Aster Happy Lestari', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(586, '1911082025', 'Haviz Alhadi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(587, '1911082026', 'Visra Handriani', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(588, '1911082027', 'Muhammad Dzikrul Haq', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(589, '1911082030', 'Farid Alfajr Muhlis', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(590, '1911082031', 'Fitri Chairani', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(591, '1911082032', 'Dinda Tryandhary', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(592, '1811081025', 'Alvin Faiz Zulfitri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(593, '1911081002', 'Muhammad Aulia Rahman', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(594, '1911081004', 'Tiara Harmila', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(595, '1911081006', 'Jimmy Efendi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(596, '1911081009', 'Ulil Ambri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(597, '1911081013', 'Nikita Chairunnisa', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(598, '1911081015', 'Nola Reziyana', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(599, '1911081019', 'Muhammad Ilham', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(600, '1911081020', 'Muhammad Ichmal Gumanof', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(601, '1911081021', 'Afifahtul Hidayati Z', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(602, '1911081022', 'Debi Indah Syafira', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(603, '1911082003', 'Pratama Aditya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(604, '1911082004', 'Restu Averian Putra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(605, '1911082007', 'Andi Fathul Mukminin', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(606, '1911082011', 'Rizqul Fauzy', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(607, '1911082012', 'Redhatul Fitri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(608, '1911082013', 'Zelfriadi Abrar', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(609, '1911082015', 'Audra Najmi Maghfira', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(610, '1911082021', 'Srintika Yuni Kharisma', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(611, '1911082022', 'Rizki Ramadanil', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:06', '2024-06-21 10:26:06'),
(612, '1911082023', 'Satrialdi Fernanda Zami', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(613, '1911082024', 'Muhammad Irfan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(614, '1911082028', 'Alfath Aldenof', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(615, '1911082029', 'Ihsanul Ikhwan Sawir', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(616, '1911082033', 'Farhan Maulidani', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(617, '2111089007', 'Hebby Zakkiya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(618, '2111089008', 'Ikhwan Pardamean Siregar', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(619, '2111089011', 'Teten Dwi Rahmi Kiflinda', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(620, '2111089015', 'Zol Vilko', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(621, '2111089004', 'Faizura Zadri', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(622, '2111089014', 'Yolanda', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(623, '1801092027', 'Muhammad Panji', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(624, '2001091002', 'Trio Naldo', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(625, '2001091003', 'Eno Fitriyanti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(626, '2001091004', 'Nawaytu Alrivani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(627, '2001091005', 'Anisa Rahmadhani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(628, '2001091013', 'Gema Hamdi Hizbullah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(629, '2001092001', 'Alim Rahmat Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(630, '2001092002', 'Fejratul Utami', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(631, '2001092003', 'Andari Yudani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(632, '2001092004', 'Annisa Firstiyohana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(633, '2001092006', 'Azzah Ratul Fadhilah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(634, '2001092009', 'Febrila Sucia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(635, '2001092021', 'Iqbal Dirmasyah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(636, '2001092022', 'Nadanty Oktalia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(637, '2001092023', 'Olivia Tri Suci Salsabilla', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(638, '2001092024', 'Asraf', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(639, '2001092025', 'Trynoli Azhari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(640, '2001092026', 'Fantony Rafly', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(641, '2001092027', 'Ruzy Iqbal Angdani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(642, '2001092028', 'Fajar Putra Pratama', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(643, '2001092029', 'Dinda Rahmadani Rahayu', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(644, '2001092030', 'Faradilla Azhary', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(645, '2001092031', 'Zikri Wahyu', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(646, '2001092032', 'Mutiara Cornelia Damayanti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(647, '2001092034', 'Rocky Hendri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(648, '2001092035', 'Abdul Fikri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(649, '2001092036', 'Fachrur Rozi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(650, '2001092038', 'Adithya Rachmat', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(651, '2001092039', 'Aditya Perdana Rizal', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(652, '2001091011', 'Zenita Ulfatihasanah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(653, '2001091012', 'Vivin Erialis Puteri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(654, '2001091017', 'Ridho Rinaldi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(655, '2001091020', 'Jacky Andrazat', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(656, '2001092010', 'Ica Nur Pramanti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(657, '2001092011', 'Muhammad Byon', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(658, '2001092013', 'Neni Harisah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(659, '2001092014', 'Sintari Aulia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(660, '2001092015', 'Viola Yosevi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(661, '2001092033', 'Rahmi Rainnasya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(662, '2001092037', 'Grahilda Calista', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(663, '2001092040', 'Afifah Maharani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(664, '2001092041', 'Amanda Septiani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(665, '2001092042', 'Aqilla Zahra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(666, '2001092043', 'Afrike Yusela', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(667, '2001092044', 'Arsyad Hamidi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(668, '2001092045', 'Bakti Aulia Zikri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(669, '2001092046', 'Benny Kurniawan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(670, '2001092050', 'Fanda Alfaridzi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(671, '2001092051', 'Hagi Matahari Julio', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(672, '2001092053', 'M.ihsan Edisa Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(673, '2001092054', 'Muhammad Alfi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(674, '2001092057', 'Muhammad Raihan Akbar', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(675, '2001091006', 'Elvirina Joice Monica', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(676, '2001091009', 'Reza Aulia Rahmi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(677, '2001091016', 'Seuhendra Setiawan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(678, '2001091018', 'Rita Ramadani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(679, '2001092012', 'Nanda Julian Lubis', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(680, '2001092016', 'Winda Wulandari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(681, '2001092017', 'Zirva Zaitul Qolbi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(682, '2001092018', 'Feby Desna Yunita', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(683, '2001092019', 'Azlan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(684, '2001092020', 'Windy Elsy Dinata', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(685, '2001092047', 'Dian Rahmi Oktaviani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(686, '2001092048', 'Dina Nurulhuda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(687, '2001092049', 'Dinniatul Aqidah Azmi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(688, '2001092058', 'Muhammad Siddiq', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(689, '2001092059', 'Naufal Asyraf Idrisa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(690, '2001092061', 'Rivo Yulio', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(691, '2001092062', 'Ronny Febrian Saputra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(692, '2001092063', 'Ryan Febrialdo', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(693, '2001092065', 'Sulthanah Adibah Syifa', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(694, '2001092066', 'Syafik Maula Faiz', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(695, '2001092067', 'Syahbandar Pujangga', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(696, '2001092068', 'Vicky Adzandra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(697, '2001092069', 'Witri Wulandari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(698, '2001092070', 'Wuri Fatiha Sari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(699, '2001093001', 'Farah Hisanah Adwina', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(700, '2001093002', 'Nazlah Atthahirah Dwi Melki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(701, '2111089010', 'Merisa Adha Azzahra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(702, '2111089001', 'Arga Zulsilva', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(703, '1911082009', 'Muhammad Fikrullah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(704, '2011081001', 'Enzi Marni', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(705, '2011081006', 'Ahmad Rizki Akbar Ganiyu', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(706, '2011081007', 'Arie Kurniawan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(707, '2011081008', 'M. Rizki Hidayah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(708, '2011081009', 'M. Ridwan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(709, '2011081010', 'Maretha Velamorin Vizhinsco', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(710, '2011081011', 'Marliana', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(711, '2011081015', 'Zakia Tulrahma', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(712, '2011081019', 'Aulia Rahma Dani', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(713, '2011081020', 'Ahmat Anggiat', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(714, '2011082002', 'Salsabilla Pramudita', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(715, '2011082005', 'Abdurrahman Razin Ar Ridho', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(716, '2011082006', 'Filbert Tri Athaillah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(717, '2011082008', 'Kevin Adika Haskim', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(718, '2011082010', 'Muhammad Ihsan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(719, '2011082015', 'Rendy Zamora', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(720, '2011083001', 'Alvin Fadli Dwi Mulya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(721, '2011083002', 'Angges Saringga', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(722, '2011083004', 'Budi Perdana', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(723, '2011083006', 'Fadil Sa\'adillah Putra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(724, '2011083009', 'Ila Rahma', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(725, '2011083011', 'Izzatul Yazidah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(726, '2011083012', 'Jeprizal', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(727, '2011083013', 'Muhamad Syahlan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(728, '2011083020', 'Zaqy.  A. Rivai', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(729, '1911081003', 'Syarif Hidayat', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(730, '2011081002', 'Hikmah Maulidya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(731, '2011081005', 'Rezki Hidayat', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(732, '2011081012', 'Nurjamilah Zardi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(733, '2011081014', 'Ahmad Royyan', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(734, '2011081022', 'Rafli Haikal', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(735, '2011081023', 'Viona Denopta', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(736, '2011082004', 'Nurul Prima Annisa', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(737, '2011082007', 'Hamzah Nurhadi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(738, '2011082009', 'Jeremia Toga Barita Tua Silaba', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(739, '2011082011', 'Muhammad Raihan Surya', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(740, '2011082012', 'Naufal Hady', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(741, '2011082013', 'Qusyairy Baginda Maulana', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(742, '2011082014', 'Rana Luthfiya Meza', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(743, '2011082016', 'Rhadi Akhila', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(744, '2011082017', 'Satria Hidayat', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(745, '2011082018', 'Tsalsabila Jilhan Haura', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(746, '2011082019', 'Zul Asfi Rayhan Arevi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(747, '2011083003', 'Bajrul Hakimi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(748, '2011083005', 'Erizal May Hendra', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(749, '2011083007', 'Fatur Rahman Al Farizi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(750, '2011083010', 'Ilham Agus Pratama', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(751, '2011083015', 'Nelly Sintia Yanti', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(752, '2011083017', 'Reza Akbar', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(753, '2011083018', 'Robby Karya Aldi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(754, '2101082021', '   Vania Vikri Ramadhani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(755, '2101082023', 'Muhammad Iqbal', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(756, '2101082013', 'Muhammad Zaidan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(757, '2101082008', 'Izzatul Sabrina', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(758, '2101082016', 'Puja Patrioza', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(759, '2001082036', 'FADHIL GIFARI SYAHPUTRA', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(760, '2101081001', 'AFIFUR RAIHAN RANGKUTI', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(761, '2101081002', 'Alfath Dafana Agly', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(762, '2101081009', 'Idlal Syuja Nizhamul', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(763, '2101082001', 'Abdul Raffi Naufal', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(764, '2101082006', 'Ibra Prakasa', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(765, '2101082012', 'Muhammad Farid', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(766, '2101082014', 'Nadya Pebriani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(767, '2101082017', 'Putri Wahyuni', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(768, '2101082019', 'Raihan Efel Maulana', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(769, '2101082024', 'Izzuddin Azzaky', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(770, '2101082025', 'Oktaviani Pratiwi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(771, '2101082026', 'Afif Permana', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(772, '2101082027', 'Alex Hermansyah', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(773, '2101082030', 'Tasya Sepla Putri Utami', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(774, '2101082035', 'Fauzan Rahmat Tubagus', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(775, '2101082036', 'Fikri Wahyu Ramadhan', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(776, '2101082037', 'Irvan Yuatama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(777, '2101082038', 'Isramadani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(778, '2101082041', 'Meza Meidia Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(779, '2101082042', 'Muhammad Ilham', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(780, '2101082045', 'Rahmatul Qadri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(781, '2101082046', 'Widya Amda Putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(782, '2101082049', 'Muhammad Taufiqurrahman', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(783, '2101082050', 'Muhammad Fadhel', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(784, '2101081004', 'Muhammad Irvandi Lubis', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(785, '2101081006', 'Putri Nabila', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(786, '2101081007', 'Rizka Annisa', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(787, '2101081008', 'Windo Tri Ananda Syaputra', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(788, '2101082004', 'Bintang Aulizul', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(789, '2101082005', 'Hasril Muhammad Iqbal', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(790, '2101082009', 'Metri Andhika Pratama', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(791, '2101082010', 'Muhadzdzib Al Khairy', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(792, '2101082018', 'Rahmida putri', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(793, '2101082022', 'Yunita', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(794, '2101082031', 'Andi Muhammad Riffal', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(795, '2101082032', 'Elida Septriani', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(796, '2101082033', 'Famela Dewi Agustin', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(797, '2101082034', 'Fariz Satria Refandino', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(798, '2101082039', 'Kevin Oktajuanda', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(799, '2101082040', 'Marisa Enjel', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(800, '2101082043', 'Nada Letika Rida Izzati', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(801, '2101082044', 'Gofinda  Rahmat Hidayat', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(802, '2101082047', 'Yassar Azzudha Kanur', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(803, '2101082048', 'Yudi Fitriadi', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(804, '2101082028', 'Nando Faklin', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(805, '2111089006', 'Haura Fathinah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(806, '2211089001', 'Arin Cantika Musi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(807, '2111089005', 'Fuaddi Syah Rahman Amin', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(808, '1101082031', 'ilham agusman tanjung', 'TI', 'Teknologi Informasi', '3TK', 'Teknik Komputer D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(809, '2101092024', 'Aatrisa Mulyati', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(810, '2101092033', 'Abdul Hanif', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(811, '2101092034', 'Abi Lutfiandy Hendri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(812, '2101092035', 'Adhitya Kurniawan Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(813, '2101092001', 'Adi Muhamad Fajar', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:07', '2024-06-21 10:26:07'),
(814, '2101092028', 'Ahmad Faris Almuzakki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(815, '2101092036', 'Al Fajri Huda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(816, '2101092029', 'Andre Mahesa Putra', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(817, '2101092037', 'Anggi Rizki Ramadani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(818, '2101092038', 'Arif Hidayatullah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(819, '2101093002', 'Arina Tasya Kamila', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(820, '2101091001', 'Arisya Riani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(821, '2101092039', 'Arrasy Rizqi Taher', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(822, '2101092003', 'Berliana Dewinta Martin', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(823, '2101092040', 'Bintang Rahmad Handevis', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(824, '2101091002', 'Chantika Tri Amanda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(825, '2101092041', 'Cindy Nabila Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(826, '2101092004', 'Cindy Vallensia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(827, '2101092042', 'Dea Insani Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(828, '2101092013', 'Denis Yusri Hyuanda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(829, '2101092043', 'Dhaniel Putra Al\'qadri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(830, '2101092044', 'Dizqy Hidayat Dm', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(831, '2101092045', 'Ega Aulia Fitri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(832, '2101092046', 'Elvi Susanti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(833, '2101092006', 'Fadilla Anggraini', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(834, '2101092075', 'Farhan Hafidz', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(835, '2101092047', 'Farrel Abennaya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(836, '2101092007', 'Finda Oktariza', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(837, '2101091005', 'Frentyusmelia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(838, '2101092048', 'Gita Ramadani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(839, '2101092049', 'Hadifta Attallah Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(840, '2101092050', 'Hariansyah Fajrin', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(841, '2101092008', 'Hillary Isfalana June', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(842, '2101092051', 'Ishabell Elmisa Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(843, '2101092009', 'Kasih Putri Suarli', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(844, '2101092010', 'Khazanatul Iqbal', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(845, '2101091006', 'Khozi Natul Amroor', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(846, '2101092020', 'Kintan Sepril Syayuni', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(847, '2101092052', 'Maharani Diradinova', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(848, '2101092053', 'Maretha Anggreani Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(849, '2101093003', 'Marlisa Gunawan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(850, '2101092031', 'Maysha Bunga Ananta', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(851, '2101091007', 'Mia Aprilia', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(852, '2101092054', 'Muhamad Faisal', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(853, '2101092055', 'Muhammad Abbel Prasetya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(854, '2101092056', 'Muhammad Dafa Al-isra\'', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08');
INSERT INTO `mahasiswas` (`id`, `nim`, `name`, `kode_jurusan`, `jurusan`, `kode_prodi`, `prodi`, `angkatan`, `email`, `no_telp`, `alamat`, `created_at`, `updated_at`) VALUES
(855, '2101092057', 'Muhammad Fadel Riyaldi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(856, '2101092030', 'Muhammad Rifki Ferdian', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(857, '2101092058', 'Muhammad Zaki', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(858, '2101092059', 'Mustika Chairani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(859, '2101091008', 'Mutiara Maharani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(860, '2101092011', 'Nabila Gafernanda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(861, '2101092060', 'Nauval Maulana Al Amin', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(862, '2101092061', 'Nella Fitriani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(863, '2101092012', 'Nila Enjeli', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(864, '2101092076', 'Nindya Armon', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(865, '2101091009', 'Nurul Safitri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(866, '2101092014', 'Putri Anggraeni Yane', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(867, '2101092015', 'Putri Dini Prameswari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(868, '2101092062', 'Qurratu Aini', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(869, '2101092063', 'Rafi Citra Al Azis', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(870, '2101092078', 'Rafiansyah Darman', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(871, '2101092016', 'Rahmitul Hasanah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(872, '2101092064', 'Raihan Adinata', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(873, '2101092032', 'Rani Latifah Cahyani', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(874, '2101092017', 'Rara Bisri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(875, '2101092065', 'Ratih Yudistiviana', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(876, '2101092018', 'Resti Aulia Sari', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(877, '2101092066', 'Ridha Tul Nafsi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(878, '2101092067', 'Rifki Mulfianda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(879, '2101092068', 'Salsabila okta kirana ', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(880, '2101092069', 'Satria Rhama Dwi Jaya', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(881, '2101091013', 'Siti Nurhaliza Yus', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(882, '2101092021', 'Sonya Hasna Hafizah', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(883, '2101092070', 'Thoriq Sulthan Nugraha', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(884, '2101092022', 'Ulfah Pratiwi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(885, '2101092071', 'Wiwin Apriyanti', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(886, '2101092025', 'Yunika Butsainah Putri', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(887, '2101092026', 'Zahra Meidira', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(888, '2101092027', 'Zalna Mustika', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(889, '2101092074', 'Zikra Jordi', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(890, '2001092056', 'Muhammad Ihsan', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(891, '2211089006', 'Rizkiah Rahmah Hatta', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(892, '2001092055', 'Muhammad Alif Putra Ananda', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(893, '2211089007', 'Firman Shiddiq Alamsyah', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(894, '2211089011', 'Yenni Yunnita', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(895, '2211089003', 'Dani Ahnaf Falih', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(896, '2211089002', 'Chairul Rahman Taufik', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(897, '2211089010', 'Miftahurrahmi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(898, '2211089009', 'Irna fitri yanti', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(899, '2211089012', 'Utari Rezky Alfany', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(900, '2211089004', 'M. Fadli Zein', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(901, '2101162001', 'Aldi Irfandy Hidayat', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(902, '2101162002', 'Alvin Saputra', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(903, '2101162004', 'Beni Irawan', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(904, '2101162003', 'Bobi Yanputra', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(905, '2101163010', 'Defita', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(906, '2101162005', 'Diana Rahayu', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(907, '2101162006', 'Fiqri Sayidina Adianza', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(908, '2101161001', 'Fitrah Jerry Yandi', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(909, '2101163003', 'Gustia Dwi Wulandari', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(910, '2101162008', 'Habib Alfarizzi', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(911, '2101162009', 'Iqra Aulia Syafputra', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(912, '2101163004', 'M. Iqbal', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(913, '2101162011', 'Marsenda Ovilia', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(914, '2101163005', 'Matori Rona Putrawan', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(915, '2101162013', 'Muhammad Alvin Meijikita', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(916, '2101162015', 'Noufal Priatna', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(917, '2101163002', 'Rahmad Ramadhan', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(918, '2101162016', 'Rahmat Datul Fahri', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(919, '2101163006', 'Ridwan', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(920, '2101162022', 'Riko Saputra', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(921, '2101163007', 'Rudi Oktaviansya', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(922, '2101163009', 'Silvia', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(923, '2101162018', 'Syahrul', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(924, '2101163008', 'Windi Novemi', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(925, '2101163001', 'Wini Syafitri', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(926, '2101162019', 'Wiria Ashen', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(927, '2101162020', 'Yuliani', 'TI', 'Teknologi Informasi', '3SI-TD', 'D-3 SISTEM INFORMASI (TANAH DATAR)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(928, '2101183014', 'Andika Fernando', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(929, '2101183009', 'Annisa Fitri', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(930, '2101182002', 'Elto Trio Saputra', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(931, '2101183007', 'Haudio Arsyah Pisesra', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(932, '2101183001', 'Indri Alfianti Safitri', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(933, '2101182003', 'Kemal Mikeda Dikoto', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(934, '2101183011', 'Muhammad Dziqri', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(935, '2101183006', 'Naufal Dzaki', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(936, '2101183008', 'Nur Arikah', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(937, '2101182005', 'Putri Rahmawati', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(938, '2101183004', 'Sinta Alifia Mayasieva', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(939, '2101183005', 'Suci Ramadhani', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(940, '2101183010', 'Yulia Sosmita', 'TI', 'Teknologi Informasi', '3TK-SS', 'D-3 Teknik Komputer (Solok Selatan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(941, '2001092052', 'Luthfi Firstian', 'TI', 'Teknologi Informasi', '3MI', 'Manajemen Informatika D-3', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(942, '2101094009', 'Aditiya Permana Putra', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(943, '2101094019', 'Ahmad Fadli', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(944, '2101094011', 'Dwi Nur Fitriani', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(945, '2101094020', 'Fatma Wati', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(946, '2101094018', 'Feby Dwiyanti Tampubolon', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(947, '2101094006', 'Hafif Saputra', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(948, '2101094016', 'Julia Trysatya Nisari', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(949, '2101094004', 'Nendi Wiziadma', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(950, '2101094002', 'Novia Putri', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(951, '2101094007', 'Nurul Azizah', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(952, '2101094005', 'Surya Sudewo', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(953, '2101094003', 'Syalwa Cendana Ruslan', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(954, '2101094017', 'Yan Arshal Naibaho', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(955, '2101094001', 'Zulfikar', 'TI', 'Teknologi Informasi', '3MI-P', 'Manajemen Informatika (Pelalawan)', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(956, '2011089005', 'Haryuni Azmi', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08'),
(957, '2011089006', 'Ningsih Ayzara', 'TI', 'Teknologi Informasi', '4TRPL', 'Teknologi Rekayasa Perangkat Lunak', NULL, NULL, NULL, NULL, '2024-06-21 10:26:08', '2024-06-21 10:26:08');

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
(3, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 6),
(4, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 7);

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
(21, 'view_log_activity', 'web', '2024-06-28 07:11:30', '2024-06-28 07:11:30');

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
(1, 1, 1, 'HP-21-12', 'Handphone', 113, 7000000, '2024-06-22Screenshot 2024-06-08 112221.png', NULL, NULL, '2024-06-21 20:18:49', '2024-06-27 02:40:34');

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
(2, 1, 1, 1, '1111-12-12', 2, '2024-06-27 02:40:34', '2024-06-27 02:40:34');

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
(2, 2),
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
(21, 1);

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
(1, 'Labor 301 Web Multimedia', '2024-06-21 05:59:00', '2024-06-21 05:59:00');

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
(3, 'PT TEERPEEL PEENPE', 'Pelalawan', '082389000458', 'trpl@gmailcom', NULL, NULL);

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
(1, 'Indah Wulandari', 2, 1, 3, '2024-06-26 11:58:35', NULL, 'uyuyvuyvuyv', '2024-06-26 04:58:35', '2024-06-28 11:20:36'),
(2, 'Indah Wulandari', 2, 1, 1, '2024-06-26 12:01:02', NULL, 'sada', '2024-06-26 05:01:02', '2024-06-26 14:04:41'),
(3, 'Indah Wulandari', 2, 1, 1, '2024-06-26 12:05:07', NULL, '', '2024-06-26 05:05:07', '2024-06-26 05:05:07'),
(4, 'Indah Wulandari', 2, 1, 1, '2024-06-26 12:06:03', NULL, '', '2024-06-26 05:06:03', '2024-06-26 05:06:03'),
(5, 'Erfan Fadhil Juzar', 3, 1, 1, '2024-06-26 14:20:24', NULL, NULL, '2024-06-26 07:20:24', '2024-06-26 07:20:24'),
(6, 'Indah Wulandari', 2, 1, 1, '2024-06-26 21:12:22', NULL, NULL, '2024-06-26 14:12:22', '2024-06-26 14:12:22'),
(7, 'Indah Wulandari', 2, 1, 3, '2024-06-27 01:20:48', NULL, 'siaudhiudaiuhdia', '2024-06-26 18:20:48', '2024-06-26 18:21:00'),
(8, 'Indah Wulandari', 2, 1, 5, '2024-06-27 09:23:36', NULL, NULL, '2024-06-27 02:23:36', '2024-06-27 02:23:36');

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
(7, 'Farrel Adrian Laksana', 'farrel@gmail.com', NULL, '$2y$12$P3ao6tjf1ZSHRE8BPbTOdu/H.zixl1P1MMuR5LGM0t4yky8J1qsHu', NULL, '2024-06-21 04:48:49', '2024-06-21 04:48:49');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `bug_reports`
--
ALTER TABLE `bug_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mahasiswas`
--
ALTER TABLE `mahasiswas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=959;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_supplies`
--
ALTER TABLE `product_supplies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ruangans`
--
ALTER TABLE `ruangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
