-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 02:56 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_film`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `nama_film` varchar(200) NOT NULL,
  `id_genre` int(200) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `cover` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `nama_film`, `id_genre`, `duration`, `cover`, `created_at`, `updated_at`) VALUES
(1, 'cinta subuh', 101, ' 2 jam 10 menit', 'cinta_subuh.jpeg', '2023-06-16 04:15:26', '2023-06-16 04:15:26'),
(2, 'Waktu Maghrib', 102, '1 jam 53 menit', 'waktu_magrib.jpeg', '2023-06-16 04:24:32', '2023-06-16 04:24:32'),
(3, 'Joker', 103, '2 jam 30 menit', 'joker.jpg', '2023-06-16 04:24:32', '2023-06-16 04:24:32'),
(4, 'Laskar Pelangi', 104, '3 Jam 12 Menit', 'Laskar_Pelangi.jpg', '2023-06-16 06:54:08', '2023-06-16 06:54:08'),
(5, 'Nenek Gayung', 102, '1 Jam 40 Menit', 'nenek gayung.jpg', '2023-06-16 06:56:28', '2023-06-16 06:56:28'),
(6, 'Evil Dead Rise', 107, '2 Jam 29 Menit', 'Evil Dead Rise.jpg', '2023-06-16 06:57:27', '2023-06-16 06:57:27'),
(7, 'Train to Busan', 107, '3 Jam 13 Menit', 'train_to_busan.jpeg', '2023-06-16 06:59:18', '2023-06-16 06:59:18'),
(8, 'Kingdom', 107, '4 Jam 02 Menit', 'kingdom.jpeg', '2023-06-16 07:01:12', '2023-06-16 07:01:12'),
(9, 'Mumun', 102, '1 Jam 55 Menit', 'mumun.jpg', '2023-06-16 07:04:17', '2023-06-16 07:04:17'),
(10, 'The Doll 3', 102, '2 Jam 47 Menit', 'theDoll3.jpeg', '2023-06-16 07:13:48', '2023-06-16 07:13:48'),
(103, 'Transformers', 109, ' 2 Jam 7 Menit', '1688217957_0615343fbdb49cf69f2c.jpg', '2023-06-26 16:07:11', '2023-06-26 16:07:11'),
(106, 'Sesuai Aplikasi', 106, ' 1 Jam 29 Menit', '1688258665_27948bdbcc6e44f244cb.jpg', '2023-07-02 00:44:25', '2023-07-02 00:44:25');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id` int(11) NOT NULL,
  `nama_genre` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `nama_genre`, `created_at`, `updated_at`) VALUES
(101, 'Romantic', '2023-06-22 08:21:07', '2023-06-22 08:21:07'),
(102, 'Horor', '2023-06-22 08:21:55', '2023-06-22 08:21:55'),
(103, 'Action', '2023-06-22 08:22:28', '2023-06-22 08:22:28'),
(104, 'Roman', '2023-06-22 08:22:52', '2023-06-22 08:22:52'),
(105, 'Drama', '2023-06-22 08:23:11', '2023-06-22 08:23:11'),
(106, 'Comedy', '2023-06-22 08:23:46', '2023-06-22 08:23:46'),
(107, 'Horor Thailer', '2023-06-22 08:36:42', '2023-06-22 08:36:42'),
(108, 'Fantasi', '2023-06-22 08:38:10', '2023-06-22 08:38:10'),
(109, 'Fiksi', '2023-06-22 08:38:10', '2023-06-22 08:38:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_genre` (`id_genre`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
