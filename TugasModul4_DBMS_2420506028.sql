-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Mar 2025 pada 02.15
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
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa_teknologiinformasi`
--

CREATE TABLE `mahasiswa_teknologiinformasi` (
  `NPM` char(5) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Tempat_Lahir` varchar(30) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Jenis_Kelamin` enum('L','P') NOT NULL,
  `No_Hp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa_teknologiinformasi`
--

INSERT INTO `mahasiswa_teknologiinformasi` (`NPM`, `Nama`, `Tempat_Lahir`, `Tanggal_Lahir`, `Jenis_Kelamin`, `No_Hp`) VALUES
('00001', 'Yani Dabukke', 'Samarinda', '2004-09-11', 'L', '083044221157'),
('00002', 'Hj. Hana Wasita', 'Samarinda', '2000-12-19', 'L', '089129388804'),
('00003', 'Kani Pratiwi, S.pd.,M.T.', 'Samarinda', '2004-03-30', 'P', '082055547061'),
('00005', 'Marsudi Suartini', 'Samarinda', '2003-07-08', 'P', '086488647516'),
('00006', 'Kani Pratiwi', 'Samarinda', '2004-03-08', 'L', '085002748224'),
('00007', 'Elvina Salahudin', 'Samarinda', '1999-07-27', 'P', '089751634887'),
('00008', 'Keisha Uyainah', 'Samarinda', '2006-12-26', 'L', '084264919464'),
('00009', 'Tgk. Kezia Hutasoit', 'Samarinda', '2006-12-15', 'L', '086487461462'),
('00010', 'Gina Suwarno', 'Samarinda', '2005-12-19', 'L', '082844525891'),
('00011', 'Pranawa Saragih', 'Tanjungbalai', '2005-07-28', 'P', '089030958639'),
('00012', 'Febi Kurniawan', 'Tanjungbalai', '1999-08-31', 'P', '084334280063'),
('00013', 'Betania Rahayu', 'Tanjungbalai', '2005-08-02', 'L', '086762937326'),
('00014', 'Samiah Kusumo', 'Tanjungbalai', '1999-05-18', 'P', '087640739472'),
('00015', 'R.M. Bancar Dabukke, S.E.', 'Tanjungbalai', '2006-08-15', 'L', '082488345849'),
('00016', 'Dr. Yuliana Narpati', 'Tanjungbalai', '2003-03-31', 'L', '086509581894'),
('00017', 'Iriana Nuraini', 'Tanjungbalai', '2004-06-19', 'P', '086493380308'),
('00018', 'Ian Manullang, M.Farm', 'Tanjungbalai', '2003-08-10', 'L', '082119788044'),
('00019', 'Kemal Rahayu', 'Tanjungbalai', '2004-10-07', 'P', '088901174495'),
('00020', 'Edi Wahyudin', 'Tanjungbalai', '2005-11-06', 'P', '086995671218'),
('00021', 'Damu Nashiruddin', 'Gorontalo', '2001-06-18', 'P', '087718076212'),
('00022', 'Iriana Halimah', 'Gorontalo', '1999-03-03', 'L', '081041736388'),
('00023', 'Hana Namaga', 'Gorontalo', '2005-08-14', 'P', '081892294950'),
('00024', 'Ellis Putra', 'Gorontalo', '1999-09-02', 'L', '087832771742'),
('00025', 'Julia Agustina', 'Gorontalo', '2000-12-07', 'P', '081159954951'),
('00026', 'Salsabila Mayasari, S.Psi', 'Gorontalo', '2000-04-26', 'P', '085743582053'),
('00027', 'dr. Paramita Andriani, S.', 'Gorontalo', '1999-06-17', 'L', '085129827642'),
('00028', 'Mursinin Kuswoyo', 'Gorontalo', '2006-04-30', 'L', '083531236247'),
('00029', 'Ilsa Usada, S.H.', 'Gorontalo', '2000-11-27', 'L', '082072149366'),
('00030', 'Respati Maryadi', 'Gorontalo', '2006-06-29', 'L', '087921541310'),
('00031', 'Drs. Tari Wasita, S.Kom', 'Kupang', '1999-09-04', 'P', '082302316460'),
('00032', 'Mulyanto Hariyah', 'Kupang', '2003-05-26', 'P', '086447767486'),
('00033', 'Sutan Martani Riyanti, M.', 'Kupang', '1999-04-05', 'L', '084478959163'),
('00034', 'Erik Laksita', 'Kupang', '2007-02-02', 'P', '081792941464'),
('00035', 'Jefri Rahmawati', 'Kupang', '2000-02-24', 'L', '089193123516'),
('00036', 'Janet Hartati, M.Ak', 'Kupang', '2001-03-03', 'L', '089187984997'),
('00037', 'Cut Ika Rajata, S.Pt', 'Kupang', '2001-01-11', 'L', '083514774876'),
('00038', 'T. Sabri Wibisono', 'Kupang', '2002-10-11', 'L', '088569413418'),
('00039', 'Ratna Astuti, S.Farm', 'Kupang', '2007-02-17', 'P', '086161562926'),
('00040', 'Gawati Maulana', 'Kupang', '2000-08-04', 'P', '089213031349'),
('00041', 'Perkasa Waskita', 'Bandung', '2000-05-08', 'P', '089878837312'),
('00042', 'Halima Pratama', 'Bandung', '2005-10-16', 'P', '088123126452'),
('00043', 'Balamantri Santoso', 'Bandung', '2001-09-27', 'P', '085330202297'),
('00044', 'R. Gilda Waluyo', 'Bandung', '2004-07-10', 'L', '083610066081'),
('00045', 'dr. Arta Kuswandari', 'Bandung', '2000-12-15', 'L', '083163335852'),
('00046', 'R.A. Farhunnisa Mandala', 'Bandung', '2006-09-22', 'P', '084314040227'),
('00047', 'Nurul Narpati', 'Bandung', '2006-08-08', 'P', '088490962266'),
('00048', 'Cinta Megantara', 'Bandung', '2005-09-11', 'L', '085047805973'),
('00049', 'R. Sadina Latupono, S.T.', 'Bandung', '2004-12-16', 'L', '085806522290'),
('00050', 'Endah Mandala', 'Bandung', '2000-12-27', 'P', '088637684565');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `mahasiswa_teknologiinformasi`
--
ALTER TABLE `mahasiswa_teknologiinformasi`
  ADD PRIMARY KEY (`NPM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
