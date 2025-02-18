-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2025 at 02:17 AM
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
-- Database: `teknologi_informasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_mahasiswa`
--

CREATE TABLE `daftar_mahasiswa` (
  `NPM` char(10) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Tempat_Lahir` varchar(20) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `No_Hp` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `daftar_mahasiswa`
--

INSERT INTO `daftar_mahasiswa` (`NPM`, `Nama`, `Tempat_Lahir`, `Tanggal_Lahir`, `No_Hp`) VALUES
('2420506000', 'Assep Wahidun', 'Magelang', '2004-09-08', '081179982231'),
('2420506028', 'Assep Wahid', 'Magelang', '2006-08-12', '081179982231'),
('2420506200', 'Assep Wahidin', 'Magelang', '2001-02-14', '081179982231'),
('2420506201', 'Assep Wahidin', 'Magelang', '2005-07-19', '081179982231');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_mahasiswa`
--
ALTER TABLE `daftar_mahasiswa`
  ADD PRIMARY KEY (`NPM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
