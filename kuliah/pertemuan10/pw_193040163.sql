-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2020 at 11:20 AM
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
-- Database: `pw_193040163`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nrp` char(9) NOT NULL,
  `email` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `nrp`, `email`, `jurusan`, `gambar`) VALUES
(1, 'kevin fredrian syach', '193040163', 'kfredrinsyach19@gmail.com', 'Teknik Informatika', 'kevin.jpe'),
(2, 'Jeniusan Jaya', '193040164', 'jeniusanjaya@gmail.com', 'Teknik Mesin', 'jaya.jpg'),
(3, 'Syalfa Inayah', '193040165', 'syalfainaya@gmail.com', 'Teknik Pangan', 'syalfa.jpg'),
(4, 'Ristya Sekardita', '193040166', 'sekardita@gmail.com', 'Teknik Pangan', 'dita.jpg'),
(5, 'Dzakwan Ahmad Fauzan', '193040167', 'DzakwanAhmad@gmail.com', 'Teknik Mesin', 'Fauzan.jpg'),
(6, 'Andika Muhammad Yusuf', '193040168', 'andikamyusuf@gmail.com', 'Teknik Industri', 'dika.jpg'),
(7, 'Hana Juliarosana Mochtar', '193040169', 'hanajulia@gmail.com', 'Teknik Pangan', 'hana.jpg'),
(8, 'Alvin Pratama', '193040170', 'alvinpratama@gmail.com', 'Teknik Informatika', 'alvin.jpg'),
(9, 'Rapina Rara Ritonga', '193040171', 'Rapinarara@gmail.com', 'Teknik Mesin', 'rara.jpg'),
(10, 'Yasmin Indaryanti', '193040172', 'yasminindar@gmail.com', 'Teknik Informatika', 'yasmin.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
