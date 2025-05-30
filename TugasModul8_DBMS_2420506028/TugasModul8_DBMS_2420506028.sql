-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Bulan Mei 2025 pada 14.23
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nip` char(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `bidang` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nip`, `nama`, `bidang`) VALUES
('1980010101', 'Dr. Andi Wijaya', 'Pemrograman'),
('1982020202', 'Dr. Lina Marlina', 'Jaringan Komputer'),
('1983030303', 'Dr. Taufik Hidayat', 'Basis Data'),
('1984040404', 'Dr. Rina Wulandari', 'Sistem Informasi'),
('1985050505', 'Dr. Bambang Suryo', 'Teknik Elektro'),
('1986060606', 'Dr. Sari Lestari', 'Algoritma'),
('1987070707', 'Dr. Yusuf Rahman', 'Keamanan Informasi'),
('1988080808', 'Dr. Dewi Sartika', 'Manajemen Proyek'),
('1989090909', 'Dr. Anton Gunawan', 'Kalkulus'),
('1990010101', 'Dr. Nia Ramadhani', 'Kewirausahaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jurusan` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jurusan`) VALUES
('1234567890', 'Andi', 'Informatika'),
('2201000001', 'Asep Nugraha', 'Teknik Informatika'),
('2201000002', 'Rina Marlina', 'Sistem Informasi'),
('2201000003', 'Budi Santoso', 'Teknik Informatika'),
('2201000004', 'Siti Aminah', 'Sistem Informasi'),
('2201000005', 'Agus Pratama', 'Teknik Informatika'),
('2201000006', 'Dina Lestari', 'Sistem Informasi'),
('2201000007', 'Tono Riyadi', 'Teknik Elektro'),
('2201000008', 'Maya Safitri', 'Teknik Elektro'),
('2201000009', 'Hendra Wijaya', 'Teknik Informatika'),
('2201000010', 'Fitri Handayani', 'Sistem Informasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` char(6) NOT NULL,
  `nama_mk` varchar(50) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `sks`) VALUES
('IF2020', 'Jaringan', 3),
('MK001', 'Algoritma dan Pemrograman', 3),
('MK002', 'Struktur Data', 3),
('MK003', 'Basis Data', 3),
('MK004', 'Jaringan Komputer', 3),
('MK005', 'Pemrograman Web', 3),
('MK006', 'Kalkulus', 2),
('MK007', 'Kewirausahaan', 2),
('MK008', 'Sistem Operasi', 3),
('MK009', 'Manajemen Proyek TI', 2),
('MK010', 'Keamanan Informasi', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tagihan`
--

CREATE TABLE `tagihan` (
  `id_tagihan` int(11) NOT NULL,
  `nim` char(10) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tagihan`
--

INSERT INTO `tagihan` (`id_tagihan`, `nim`, `jumlah`, `status`) VALUES
(11, '2201000001', 500000, 'Belum Lunas'),
(12, '2201000002', 2750000, 'Lunas'),
(13, '2201000003', 3000000, 'Belum Lunas'),
(14, '2201000004', 2000000, 'Lunas'),
(15, '2201000005', 2500000, 'Belum Lunas'),
(16, '2201000006', 2800000, 'Lunas'),
(17, '2201000007', 2200000, 'Belum Lunas'),
(18, '2201000008', 2400000, 'Lunas'),
(19, '2201000009', 2600000, 'Belum Lunas'),
(20, '2201000010', 2700000, 'Lunas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp_tabel`
--

CREATE TABLE `temp_tabel` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nip`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indeks untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  ADD PRIMARY KEY (`id_tagihan`),
  ADD KEY `nim` (`nim`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  MODIFY `id_tagihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tagihan`
--
ALTER TABLE `tagihan`
  ADD CONSTRAINT `tagihan_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
