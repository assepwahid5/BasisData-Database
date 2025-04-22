-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Apr 2025 pada 16.37
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
-- Database: `perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jurusan` varchar(20) DEFAULT 'Umum',
  `tgl_daftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama`, `jurusan`, `tgl_daftar`) VALUES
('AGT0000001', 'chandra jatmiko', 'Sistem Informasi', '2025-04-01'),
('AGT0000002', 'burhanudin', 'Manajemen', '2025-02-11'),
('AGT0000003', 'Hamdan Rizky', 'Teknik Elektro', '2025-01-23'),
('AGT0000004', 'Surya Mansyur', 'Teknik Komputer', '2022-04-06'),
('AGT0000005', 'Salman Wibowo', 'Umum', '2021-04-05'),
('AGT0000006', 'Yusuf Ramadhan', 'Sistem Informasi', '2022-05-20'),
('AGT0000007', 'Larasati Putri', 'Teknik Informatika', '2022-06-25'),
('AGT0000008', 'Bayu Saputra', 'Sistem Informasi', '2022-07-11'),
('AGT0000009', 'Intan Permata', 'Teknik Komputer', '2022-08-03'),
('AGT0000010', 'Fahmi Ridwan', 'Teknik Komputer', '2022-08-20'),
('AGT0000011', 'Siti Aminah', 'Teknik Informatika', '2022-09-01'),
('AGT0000012', 'Dimas Prasetyo', 'Sistem Informasi', '2022-09-15'),
('AGT0000013', 'Mega Ayu', 'Teknik Komputer', '2022-10-02'),
('AGT0000014', 'Aldo Ramzi', 'Teknik Informatika', '2022-10-19'),
('AGT0000015', 'Citra Dewi', 'Sistem Informasi', '2022-11-07'),
('AGT0000016', 'Galih Nugraha', 'Teknik Komputer', '2022-11-25'),
('AGT0000017', 'Nisa Khoirunnisa', 'Teknik Informatika', '2022-12-05'),
('AGT0000018', 'Arif Hidayat', 'Sistem Informasi', '2023-01-10'),
('AGT0000019', 'Putri Melati', 'Teknik Komputer', '2023-02-14'),
('AGT0000020', 'Reza Ananda', 'Teknik Informatika', '2023-03-01'),
('AGT0000021', 'Bella Salsabila', 'Sistem Informasi', '2023-03-15'),
('AGT0000022', 'Fajar Sidik', 'Teknik Komputer', '2023-04-04'),
('AGT0000023', 'Nurul Huda', 'Teknik Informatika', '2023-04-20'),
('AGT0000024', 'Rio Pradana', 'Sistem Informasi', '2023-05-06'),
('AGT0000025', 'Silvia Oktaviani', 'Teknik Komputer', '2023-05-18');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id_buku` varchar(10) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `penerbit` varchar(50) DEFAULT NULL,
  `tahun_terbit` int(11) DEFAULT NULL CHECK (`tahun_terbit` between 1900 and 2025),
  `id_penerbit` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `penerbit`, `tahun_terbit`, `id_penerbit`) VALUES
('BK00000001', 'Teknologi dan penerapannya', 'Erlalang', 1999, 'PNB0000001'),
('BK00000002', 'Economics falacy', 'Insitut Ekonomi Norwegia', 2001, 'PNB0000002'),
('BK00000003', 'AI Manager', 'Google', 2020, 'PNB0000003'),
('BK00000004', 'Infrastruktur Jaringan', 'Networking Academy', 2002, 'PNB0000004'),
('BK00000005', 'Manajemen dan Infrastruktur', 'economic and techlogy', 2019, 'PNB0000005'),
('BK0000006', 'Dasar-Dasar Komputer', 'Langit Cerah', 2001, 'PNB0000006'),
('BK0000007', 'Pemrograman Java Lanjutan', 'Mentari Pustaka', 2005, 'PNB0000007'),
('BK0000008', 'Pengantar Jaringan Komputer', 'Bintang Media', 2003, 'PNB0000008'),
('BK0000009', 'Sistem Operasi Modern', 'Pelangi Ilmu', 2007, 'PNB0000009'),
('BK0000010', 'Algoritma dan Pemrograman', 'Samudra Pustaka', 2004, 'PNB0000010'),
('BK0000011', 'Manajemen Basis Data', 'Lintang Cemerlang', 2009, 'PNB0000011'),
('BK0000012', 'Rekayasa Perangkat Lunak', 'Sinar Aksara', 2010, 'PNB0000012'),
('BK0000013', 'Teknologi Cloud Computing', 'Pustaka Harapan', 2011, 'PNB0000013'),
('BK0000014', 'Keamanan Jaringan', 'Gema Edukasi', 2008, 'PNB0000014'),
('BK0000015', 'Pemrograman Web Dasar', 'Cahaya Ilmu', 2012, 'PNB0000015'),
('BK0000016', 'Pemrograman Python untuk Pemula', 'Langit Cerah', 2013, 'PNB0000006'),
('BK0000017', 'Struktur Data dan Algoritma', 'Mentari Pustaka', 2014, 'PNB0000007'),
('BK0000018', 'Analisis dan Desain Sistem Informasi', 'Bintang Media', 2015, 'PNB0000008'),
('BK0000019', 'Basis Data Lanjut', 'Pelangi Ilmu', 2016, 'PNB0000009'),
('BK0000020', 'Etika Profesi Teknologi Informasi', 'Samudra Pustaka', 2017, 'PNB0000010');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_anggota` varchar(10) DEFAULT NULL,
  `id_buku` varchar(10) DEFAULT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `denda` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `id_anggota`, `id_buku`, `tgl_pinjam`, `tgl_kembali`, `denda`) VALUES
(1, 'AGT0000001', 'BK00000001', '2024-03-10', '2024-03-15', 0),
(2, 'AGT0000002', 'BK00000002', '2024-03-12', '2024-03-18', 2000),
(3, 'AGT0000002', 'BK00000005', '2024-03-20', NULL, 0),
(4, 'AGT0000002', 'BK0000006', '2024-03-11', '2024-03-16', 0),
(5, 'AGT0000003', 'BK0000007', '2024-03-12', '2024-03-17', 0),
(6, 'AGT0000004', 'BK0000011', '2024-03-13', '2024-03-18', 0),
(7, 'AGT0000005', 'BK0000012', '2024-03-14', '2024-03-20', 2000),
(8, 'AGT0000006', 'BK0000008', '2024-03-15', '2024-03-22', 4000),
(9, 'AGT0000007', 'BK0000019', '2024-03-16', '2024-03-25', 8000),
(10, 'AGT0000008', 'BK0000013', '2024-03-17', '2024-03-24', 4000),
(11, 'AGT0000009', 'BK0000011', '2024-03-18', '2024-03-23', 0),
(12, 'AGT0000010', 'BK0000009', '2024-03-19', '2024-03-25', 2000),
(13, 'AGT0000011', 'BK0000015', '2024-03-20', '2024-03-26', 2000),
(14, 'AGT0000012', 'BK0000016', '2024-03-21', '2024-03-27', 2000),
(15, 'AGT0000013', 'BK0000017', '2024-03-22', '2024-03-28', 2000),
(16, 'AGT0000014', 'BK0000011', '2024-03-23', '2024-03-29', 2000),
(17, 'AGT0000015', 'BK0000006', '2024-03-24', '2024-03-30', 2000),
(18, 'AGT0000016', 'BK0000018', '2024-03-25', '2024-03-31', 2000),
(19, 'AGT0000017', 'BK0000007', '2024-03-26', '2024-04-01', 2000),
(20, 'AGT0000018', 'BK0000019', '2024-03-27', '2024-04-02', 2000),
(21, 'AGT0000019', 'BK0000010', '2024-03-28', '2024-04-03', 2000),
(22, 'AGT0000020', 'BK0000013', '2024-03-29', '2024-04-04', 2000),
(23, 'AGT0000021', 'BK0000012', '2024-03-30', '2024-04-05', 2000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penerbit`
--

CREATE TABLE `penerbit` (
  `id_penerbit` varchar(10) NOT NULL,
  `nama_penerbit` varchar(100) NOT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penerbit`
--

INSERT INTO `penerbit` (`id_penerbit`, `nama_penerbit`, `alamat`) VALUES
('PNB0000001', 'Erlalang', 'Jakarta'),
('PNB0000002', 'Institut Ekonomi Norwegia', 'Oslo'),
('PNB0000003', 'Google', 'California'),
('PNB0000004', 'Networking Academy', 'New York'),
('PNB0000005', 'economic and techlogy', 'London'),
('PNB0000006', 'Langit Cerah', 'Bandung'),
('PNB0000007', 'Mentari Pustaka', 'Yogyakarta'),
('PNB0000008', 'Bintang Media', 'Surabaya'),
('PNB0000009', 'Pelangi Ilmu', 'Semarang'),
('PNB0000010', 'Samudra Pustaka', 'Bekasi'),
('PNB0000011', 'Lintang Cemerlang', 'Depok'),
('PNB0000012', 'Sinar Aksara', 'Medan'),
('PNB0000013', 'Pustaka Harapan', 'Malang'),
('PNB0000014', 'Gema Edukasi', 'Tangerang'),
('PNB0000015', 'Cahaya Ilmu', 'Bogor');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `fk_id_penerbit` (`id_penerbit`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_anggota` (`id_anggota`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indeks untuk tabel `penerbit`
--
ALTER TABLE `penerbit`
  ADD PRIMARY KEY (`id_penerbit`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `fk_id_penerbit` FOREIGN KEY (`id_penerbit`) REFERENCES `penerbit` (`id_penerbit`);

--
-- Ketidakleluasaan untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`id_anggota`) REFERENCES `anggota` (`id_anggota`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
