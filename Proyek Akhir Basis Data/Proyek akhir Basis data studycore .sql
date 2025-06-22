-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2025 at 05:17 PM
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
-- Database: `studycore`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_materi_dan_tugas_peserta` (IN `pid` INT)   BEGIN
SELECT p.nama, k.judul AS namaKursus, m.judul AS judulMateri, m.fileMateri, m.tanggalUpload
FROM peserta p
JOIN kursus k ON k.kursusID IN (
SELECT kursusID FROM pembayaran WHERE pesertaID = pid AND status = 'lunas'
)
JOIN materikursus m ON m.kursusID = k.kursusID
WHERE p.pesertaID = pid;
SELECT t.judul AS judulTugas, t.deadline, pt.fileTugas, pt.tanggalKumpul
FROM tugas t
JOIN pengumpulantugas pt ON pt.tugasID = t.tugasID
WHERE pt.pesertaID = pid;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `kursus`
--

CREATE TABLE `kursus` (
  `kursusID` int(11) NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `trainerID` int(11) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kursus`
--

INSERT INTO `kursus` (`kursusID`, `judul`, `deskripsi`, `trainerID`, `harga`) VALUES
(1, 'Dasar Python', 'Belajar dasar pemrograman Python.', 1, 500000.00),
(2, 'Membangun Website dengan Laravel', 'Panduan lengkap membangun web dengan Laravel.', 2, 750000.00),
(3, 'Kursus SQL', 'Dasar-dasar SQL', 1, 250000.00),
(4, 'Belajar Java Dasar', 'Kursus Java untuk pemula.', 1, 500000.00),
(5, 'Front-End Web dengan React', 'antarmuka web dengan React.', 2, 750000.00),
(6, 'Desain UI dengan Figma', 'Dasar-dasar desain UI menggunakan Figma.', 3, 400000.00),
(7, 'Membuat Aplikasi Android', 'Panduan membuat aplikasi Android', 4, 800000.00);

-- --------------------------------------------------------

--
-- Table structure for table `materikursus`
--

CREATE TABLE `materikursus` (
  `materiID` int(11) NOT NULL,
  `kursusID` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `fileMateri` varchar(255) DEFAULT NULL,
  `tanggalUpload` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materikursus`
--

INSERT INTO `materikursus` (`materiID`, `kursusID`, `judul`, `fileMateri`, `tanggalUpload`) VALUES
(7, 1, 'Pengenalan Python', 'python_intro.pdf', '2025-05-01 10:00:00'),
(8, 2, 'Instalasi Laravel', 'laravel_install.pdf', '2025-05-02 11:00:00'),
(9, 1, 'Apa itu Python?', 'intropython.pdf', '2025-05-01 09:00:00'),
(10, 5, 'React Components', 'reactcomponents.pdf', '2025-05-02 10:00:00'),
(11, 6, 'Figma Basics', 'figmabasics.pdf', '2025-05-03 11:00:00'),
(12, 7, 'Android Studio Setup', 'androidsetup.pdf', '2025-05-04 12:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `pembayaranID` int(11) NOT NULL,
  `pesertaID` int(11) DEFAULT NULL,
  `kursusID` int(11) DEFAULT NULL,
  `jumlahBayar` decimal(10,2) DEFAULT NULL,
  `tanggalBayar` datetime DEFAULT NULL,
  `status` enum('lunas','pending','gagal') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`pembayaranID`, `pesertaID`, `kursusID`, `jumlahBayar`, `tanggalBayar`, `status`) VALUES
(1, 1, 1, 500000.00, '2025-05-01 09:30:00', 'lunas'),
(2, 2, 2, 750000.00, '2025-05-02 10:15:00', 'lunas'),
(3, 4, 1, 500000.00, '2025-05-20 14:00:00', 'lunas'),
(4, 5, 2, 750000.00, '2025-05-21 15:00:00', 'lunas'),
(5, 6, 3, 400000.00, '2025-05-22 16:00:00', 'lunas'),
(6, 7, 4, 800000.00, '2025-05-23 17:00:00', 'lunas');

-- --------------------------------------------------------

--
-- Table structure for table `pengumpulantugas`
--

CREATE TABLE `pengumpulantugas` (
  `pengumpulanID` int(11) NOT NULL,
  `tugasID` int(11) DEFAULT NULL,
  `pesertaID` int(11) DEFAULT NULL,
  `fileJawaban` varchar(255) DEFAULT NULL,
  `tanggalPengumpulan` datetime DEFAULT NULL,
  `nilai` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengumpulantugas`
--

INSERT INTO `pengumpulantugas` (`pengumpulanID`, `tugasID`, `pesertaID`, `fileJawaban`, `tanggalPengumpulan`, `nilai`) VALUES
(5, 1, 1, 'jawaban_ronald_tugas1.pdf', '2025-06-09 21:00:00', 85.00),
(6, 2, 2, 'jawaban_Assep_tugas1.pdf', '2025-06-11 20:00:00', 90.00),
(12, 1, 1, 'jawabannawang.pdf', '2025-06-09 18:00:00', 85.50),
(13, 2, 2, 'jawabantono.pdf', '2025-06-10 20:30:00', 82.00),
(14, 3, 3, 'jawabanyanuar.pdf', '2025-06-11 15:45:00', 88.75),
(15, 4, 4, 'jawabanrayfal.pdf', '2025-06-12 22:00:00', 98.00);

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `pesertaID` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `passwordHash` varchar(255) DEFAULT NULL,
  `tanggalLahir` date DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nomorTelepon` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`pesertaID`, `nama`, `email`, `passwordHash`, `tanggalLahir`, `alamat`, `nomorTelepon`) VALUES
(1, 'Ronald Zuni', 'ronald.zuni@example.com', 'pwd_ronald_hash_3', '1995-03-15', 'Jl. Contoh Alamat No. 1, Jakarta', '081234567890'),
(2, 'Assep Wahid', 'assep.wahid@example.com', 'pwd_assep_hash_4', '1998-07-20', 'Jl. Contoh Alamat No. 2, Bandung', '087654321098'),
(3, 'Ronald_Zuni', 'ronald.zuni@@example.com', 'pwd_ronald_hash_3', NULL, NULL, NULL),
(4, 'Nawang putri', 'out@studycore.com', 'pass431', '1995-03-21', 'Jl.Optik', '081234567890'),
(5, 'Tono Buris', 'tono@studycore.com', 'pass816', '1998-07-15', 'Jl. Angin', '081298765432'),
(6, 'Yanuar indaya', 'inda@studycore.com', 'pass127', '2000-11-02', 'Jl. katalis', '081377788899'),
(7, 'Rayfal Sugasti', 'fal@studycore.com', 'pass653', '1998-01-25', 'Jl. Jeruk', '081366677788');

-- --------------------------------------------------------

--
-- Table structure for table `sertifikat`
--

CREATE TABLE `sertifikat` (
  `sertifikatID` int(11) NOT NULL,
  `pesertaID` int(11) DEFAULT NULL,
  `kursusID` int(11) DEFAULT NULL,
  `nomorSertifikat` varchar(50) DEFAULT NULL,
  `nilaiAkhir` decimal(5,2) DEFAULT NULL,
  `tanggalTerbit` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sertifikat`
--

INSERT INTO `sertifikat` (`sertifikatID`, `pesertaID`, `kursusID`, `nomorSertifikat`, `nilaiAkhir`, `tanggalTerbit`) VALUES
(1, 1, 1, 'LV2025001', 85.00, '2025-06-15'),
(2, 2, 2, 'LV2025002', 90.00, '2025-06-16'),
(3, 4, 1, 'LV2025003', 85.50, '2025-07-15'),
(4, 5, 2, 'LV2025004', 82.00, '2025-07-16'),
(5, 6, 3, 'LV2025005', 88.75, '2025-07-17'),
(6, 7, 4, 'LV2025006', 87.00, '2025-07-18');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `trainerID` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `passwordHash` varchar(255) DEFAULT NULL,
  `spesialisasi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`trainerID`, `nama`, `email`, `passwordHash`, `spesialisasi`) VALUES
(1, 'Zurich Sabil', 'zurich@studycore.com', 'hash123', 'Data Science'),
(2, 'Hakkan Azrul', 'hakkan@studycore.com', 'hash456', 'Web Development'),
(3, 'Citra arini', 'citra@studycore.com', 'pass381', 'UI/UX Design'),
(4, 'Dewi Nova', 'deva@studycore.com', 'pass156', 'Mobile Development'),
(5, 'Andi Pratama', 'andi@studycore.com', 'pass123', 'Data Science'),
(6, 'Rian santoso', 'ian@studycore.com', 'pass321', 'Development');

-- --------------------------------------------------------

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `tugasID` int(11) NOT NULL,
  `kursusID` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `tanggalDeadline` datetime DEFAULT NULL,
  `fileLampiran` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tugas`
--

INSERT INTO `tugas` (`tugasID`, `kursusID`, `judul`, `deskripsi`, `tanggalDeadline`, `fileLampiran`) VALUES
(1, 1, 'Tugas Variabel dan Tipe Data', 'Kerjakan soal tipe data', '2025-06-10 23:59:59', 'tugas1_python.pdf'),
(2, 2, 'Tugas Routing Laravel', 'Implementasi routing dasar', '2025-06-12 23:59:59', 'tugas1_laravel.pdf'),
(3, 1, 'Tugas Variabel', 'Buat program sederhana menggunakan variabel.', '2025-06-10 23:59:00', 'tugasvari.pdf'),
(4, 5, 'Tugas Komponen', 'Buat komponen React sederhana.', '2025-06-11 23:59:00', 'tugas-komnen.pdf'),
(5, 6, 'Tugas Wireframe', 'Desain wireframe aplikasi mobile.', '2025-06-12 23:59:00', 'tugas-wirframe.pdf'),
(6, 7, 'Tugas Login App', 'Buat aplikasi login sederhana.', '2025-06-13 23:59:00', 'tugas-log.pdf');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_materi_per_kursus`
-- (See below for the actual view)
--
CREATE TABLE `view_materi_per_kursus` (
`namaKursus` varchar(255)
,`judulMateri` varchar(255)
,`fileMateri` varchar(255)
,`tanggalUpload` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_peserta_kursus`
-- (See below for the actual view)
--
CREATE TABLE `view_peserta_kursus` (
`PesertaID` int(11)
,`Nama` varchar(100)
,`KursusID` int(11)
,`NamaKursus` varchar(255)
,`Status` enum('lunas','pending','gagal')
,`TanggalBayar` datetime
);

-- --------------------------------------------------------

--
-- Structure for view `view_materi_per_kursus`
--
DROP TABLE IF EXISTS `view_materi_per_kursus`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_materi_per_kursus`  AS SELECT `k`.`judul` AS `namaKursus`, `m`.`judul` AS `judulMateri`, `m`.`fileMateri` AS `fileMateri`, `m`.`tanggalUpload` AS `tanggalUpload` FROM (`materikursus` `m` join `kursus` `k` on(`m`.`kursusID` = `k`.`kursusID`)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_peserta_kursus`
--
DROP TABLE IF EXISTS `view_peserta_kursus`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_peserta_kursus`  AS SELECT `p`.`pesertaID` AS `PesertaID`, `p`.`nama` AS `Nama`, `k`.`kursusID` AS `KursusID`, `k`.`judul` AS `NamaKursus`, `pm`.`status` AS `Status`, `pm`.`tanggalBayar` AS `TanggalBayar` FROM ((`peserta` `p` join `pembayaran` `pm` on(`p`.`pesertaID` = `pm`.`pesertaID`)) join `kursus` `k` on(`pm`.`kursusID` = `k`.`kursusID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kursus`
--
ALTER TABLE `kursus`
  ADD PRIMARY KEY (`kursusID`),
  ADD KEY `trainerID` (`trainerID`);

--
-- Indexes for table `materikursus`
--
ALTER TABLE `materikursus`
  ADD PRIMARY KEY (`materiID`),
  ADD KEY `kursusID` (`kursusID`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`pembayaranID`),
  ADD KEY `pesertaID` (`pesertaID`),
  ADD KEY `kursusID` (`kursusID`);

--
-- Indexes for table `pengumpulantugas`
--
ALTER TABLE `pengumpulantugas`
  ADD PRIMARY KEY (`pengumpulanID`),
  ADD KEY `tugasID` (`tugasID`),
  ADD KEY `idx_pengumpulan` (`pesertaID`,`tugasID`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`pesertaID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_peserta_email` (`email`);

--
-- Indexes for table `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD PRIMARY KEY (`sertifikatID`),
  ADD KEY `pesertaID` (`pesertaID`),
  ADD KEY `kursusID` (`kursusID`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`trainerID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`tugasID`),
  ADD KEY `kursusID` (`kursusID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kursus`
--
ALTER TABLE `kursus`
  MODIFY `kursusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `materikursus`
--
ALTER TABLE `materikursus`
  MODIFY `materiID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `pembayaranID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pengumpulantugas`
--
ALTER TABLE `pengumpulantugas`
  MODIFY `pengumpulanID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `pesertaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sertifikat`
--
ALTER TABLE `sertifikat`
  MODIFY `sertifikatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `trainer`
--
ALTER TABLE `trainer`
  MODIFY `trainerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `tugasID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kursus`
--
ALTER TABLE `kursus`
  ADD CONSTRAINT `kursus_ibfk_1` FOREIGN KEY (`trainerID`) REFERENCES `trainer` (`trainerID`);

--
-- Constraints for table `materikursus`
--
ALTER TABLE `materikursus`
  ADD CONSTRAINT `materikursus_ibfk_1` FOREIGN KEY (`kursusID`) REFERENCES `kursus` (`kursusID`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`pesertaID`) REFERENCES `peserta` (`pesertaID`),
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`kursusID`) REFERENCES `kursus` (`kursusID`);

--
-- Constraints for table `pengumpulantugas`
--
ALTER TABLE `pengumpulantugas`
  ADD CONSTRAINT `pengumpulantugas_ibfk_1` FOREIGN KEY (`tugasID`) REFERENCES `tugas` (`tugasID`),
  ADD CONSTRAINT `pengumpulantugas_ibfk_2` FOREIGN KEY (`pesertaID`) REFERENCES `peserta` (`pesertaID`);

--
-- Constraints for table `sertifikat`
--
ALTER TABLE `sertifikat`
  ADD CONSTRAINT `sertifikat_ibfk_1` FOREIGN KEY (`pesertaID`) REFERENCES `peserta` (`pesertaID`),
  ADD CONSTRAINT `sertifikat_ibfk_2` FOREIGN KEY (`kursusID`) REFERENCES `kursus` (`kursusID`);

--
-- Constraints for table `tugas`
--
ALTER TABLE `tugas`
  ADD CONSTRAINT `tugas_ibfk_1` FOREIGN KEY (`kursusID`) REFERENCES `kursus` (`kursusID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
