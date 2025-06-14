-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2025 at 06:31 PM
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
-- Database: `toko_online`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_transaksi` (IN `p_id_pelanggan` INT, IN `p_id_buku` INT, IN `p_jumlah` INT)   BEGIN
    DECLARE v_harga DECIMAL(10,2);
    DECLARE v_stok INT;
    DECLARE v_total DECIMAL(10,2);
    SELECT harga, stok INTO v_harga, v_stok
    FROM buku WHERE id_buku = p_id_buku;
    IF v_stok < p_jumlah THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Stok tidak mencukupi';
    END IF;
    SET v_total = v_harga * p_jumlah;
    INSERT INTO transaksi (id_pelanggan, id_buku, jumlah, total_harga, tanggal_transaksi)
    VALUES (p_id_pelanggan, p_id_buku, p_jumlah, v_total, CURDATE());
    UPDATE buku
    SET stok = stok - p_jumlah
    WHERE id_buku = p_id_buku;
    UPDATE pelanggan
    SET total_belanja = total_belanja + v_total
    WHERE id_pelanggan = p_id_pelanggan;
END$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `hitung_diskon` (`total` DECIMAL(10,2)) RETURNS DECIMAL(5,2) DETERMINISTIC BEGIN
    DECLARE diskon DECIMAL(5,2);
    IF total >= 5000000 THEN
        SET diskon = 0.10;
    ELSEIF total >= 1000000 THEN
        SET diskon = 0.05;
    ELSE
        SET diskon = 0.00;
    END IF;
    RETURN diskon;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `penulis` varchar(100) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `penulis`, `harga`, `stok`) VALUES
(1, 'Python Dasar', 'Assep Wahid', 85000.00, 48),
(2, 'MySQL Lengkap', 'Budi Raharjo', 120000.00, 31),
(3, 'Web Fullstack', 'Dian Pratama', 150000.00, 29),
(4, 'Java Pemula', 'Eko Yulianto', 95000.00, 20),
(5, 'Machine Learning', 'Sinta Wulandari', 175000.00, 31),
(6, 'Data Mining', 'Lukman Hakim', 155000.00, 20),
(7, 'C++ Advanced', 'Tia Kartika', 115000.00, 30),
(8, 'Cloud Computing', 'Rahmat Hidayat', 130000.00, 45),
(9, 'AI in Practice', 'Zahra Kamila', 200000.00, 15),
(10, 'Cybersecurity', 'Dimas Surya', 160000.00, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `total_belanja` decimal(10,2) DEFAULT 0.00,
  `status_member` enum('REGULER','GOLD','PLATINUM') DEFAULT 'REGULER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama`, `total_belanja`, `status_member`) VALUES
(1, 'Andi', 6360000.00, 'PLATINUM'),
(2, 'Budi', 1000000.00, 'GOLD'),
(3, 'Citra', 475000.00, 'REGULER'),
(4, 'Dewi', 700000.00, 'REGULER'),
(5, 'Eka', 0.00, 'REGULER'),
(6, 'Fajar', 0.00, 'REGULER'),
(7, 'Gina', 0.00, 'REGULER'),
(8, 'Hana', 0.00, 'REGULER'),
(9, 'Ivan', 0.00, 'REGULER'),
(10, 'Joko', 0.00, 'REGULER');

--
-- Triggers `pelanggan`
--
DELIMITER $$
CREATE TRIGGER `update_status_member` BEFORE UPDATE ON `pelanggan` FOR EACH ROW BEGIN
    IF NEW.total_belanja >= 5000000 THEN
        SET NEW.status_member = 'PLATINUM';
    ELSEIF NEW.total_belanja >= 1000000 THEN
        SET NEW.status_member = 'GOLD';
    ELSE
        SET NEW.status_member = 'REGULER';
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_buku` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `total_harga` decimal(10,2) DEFAULT NULL,
  `tanggal_transaksi` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `id_buku`, `jumlah`, `total_harga`, `tanggal_transaksi`) VALUES
(1, 1, 1, 2, 170000.00, '2025-06-14'),
(2, 2, 2, 3, 360000.00, '2025-06-14'),
(3, 1, 3, 1, 150000.00, '2025-06-14'),
(4, 3, 4, 5, 475000.00, '2025-06-14'),
(5, 4, 5, 4, 700000.00, '2025-06-14'),
(6, 1, 2, 3, 360000.00, '2025-06-14'),
(7, 1, 2, 3, 360000.00, '2025-06-14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_buku` (`id_buku`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
