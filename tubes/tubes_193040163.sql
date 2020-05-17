-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2020 at 03:08 PM
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
  `judul_buku` varchar(100) NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `tema` varchar(100) NOT NULL,
  `harga` char(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `cover`, `judul_buku`, `penulis`, `tema`, `harga`) VALUES
(1, 'NW.jpg', 'NORWEGIAN WOOD', 'MURAKAMI', 'Motifasi pengalaman hidup', 'Rp. 75.000'),
(2, 'rk.jpg', 'Rumah Kaca', 'Pramoedya Ananta Toer	', 'Pengarsipan Yang Rapi	', 'Rp.35.000\r\n'),
(3, 'km.jpg', 'Komet Minor	', 'Tere Liye	', 'Perjalanan', 'Rp.77.000\r\n'),
(4, 'lk.jpg', 'Luka Kata	', 'Chandra Malik	', 'Cinta', 'Rp.82.000\r\n'),
(5, 'BM.jpg', 'Bumi Manusia', 'Pramoedya Ananta Toer', 'Perjalanan Seorang Tokoh', 'Rp.26.000'),
(6, 'DR.jpg', 'Dear Tomorrow	', 'Maudy Ayunda	', 'Kehidupan', 'Rp.129.000'),
(7, 'CM.jpg', '5 CM', 'Donny Dhirgantoro	', 'Persahabatan', 'Rp.50.000'),
(8, '5NM.jpg', '5 Negeri Menara', 'Ahmad Fuadi	', 'Pokok Permasalahan	', 'Rp.78.900'),
(9, 'LP.jpg', 'Laskar Pelangi', 'Andrea Hirata	', 'Pendidikan', 'Rp.69.000'),
(10, '88.jpg', '#88 Love Life', 'Dinda Puspitasari', 'Cinta', 'Rp.88.000');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(3, 'asus', '$2y$10$P2MJxbiwmL2RXYO91nxt1OOMbBOF9nwC1q1bHdjLSGGKEEg7/TOMy'),
(4, 'kevin', '$2y$10$FrACr9bspdRqAXgAN/hw0.WAuRpesqOj.OB3QqtRaJR02R3eVdrFC'),
(5, 'akun1', '$2y$10$trJXJmb3FSW33TZx36swBOlm9h5geTO73vcVfKzPJ8L/p3/vrvBBO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
