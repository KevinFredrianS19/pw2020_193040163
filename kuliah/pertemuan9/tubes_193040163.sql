-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2020 at 11:21 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes_193040163`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(10) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `judul buku` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `tema` varchar(100) NOT NULL,
  `harga` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `cover`, `judul buku`, `penulis`, `tema`, `harga`) VALUES
(1, 'nw.jpg', 'Norwegian Wood	', 'Haruki Murakami', 'Kehidupan	', 'Rp.76.500'),
(2, 'rk.jpg', 'Rumah Kaca', 'Pramoedya Ananta Toer	', 'Pengarsipan Yang Rapi	', 'Rp.35.000\r\n'),
(3, 'km.jpg', 'Komet Minor	', 'Tere Liye	', 'Perjalanan', 'Rp.77.000\r\n'),
(4, 'lk.jpg', 'Luka Kata	', 'Chandra Malik	', 'Cinta', 'Rp.82.000\r\n'),
(5, 'BM.jpg', 'Bumi Manusia', 'Pramoedya Ananta Toer', 'Perjalanan Seorang Tokoh', 'Rp.26.000'),
(6, 'dt.jpg', 'Dear Tomorrow	', 'Maudy Ayunda	', 'Kehidupan', 'Rp.129.000'),
(7, 'CM.jpg', '5 CM', 'Donny Dhirgantoro	', 'Persahabatan', 'Rp.50.000'),
(8, '5NM.jpg', '5 Negeri Menara', 'Ahmad Fuadi	', 'Pokok Permasalahan	', 'Rp.78.900'),
(9, 'LP.jpg', 'Laskar Pelangi', 'Andrea Hirata	', 'Pendidikan', 'Rp.69.000'),
(10, '88lf.jpg', '#88 Love Life', 'Dinda Puspitasari', 'Cinta', 'Rp.88.000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
