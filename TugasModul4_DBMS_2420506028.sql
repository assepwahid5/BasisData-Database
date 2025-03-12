-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Mar 2025 pada 15.12
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
-- Database: `universitas_tidar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alumni`
--

CREATE TABLE `alumni` (
  `NIM` char(11) NOT NULL,
  `Tahun_Lulus` year(4) DEFAULT NULL,
  `Pekerjaan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `alumni`
--

INSERT INTO `alumni` (`NIM`, `Tahun_Lulus`, `Pekerjaan`) VALUES
('24-000001-1', '2020', 'PNS'),
('24-000002-2', '2021', 'Software Engineer'),
('24-000003-3', '2019', 'Network Administrator'),
('24-000004-3', '2019', 'Dokter Umum'),
('24-000005-2', '2020', 'Software Engineer'),
('24-000006-1', '2020', 'Wirausaha'),
('24-000007-2', '2021', 'Dosen'),
('24-000008-1', '2018', 'Dosen'),
('24-000009-2', '2023', 'Analis Keuangan'),
('24-000010-2', '2019', 'Wirausaha'),
('24-000011-3', '2018', 'Dosen'),
('24-000012-2', '2023', 'Dokter Umum'),
('24-000013-1', '2023', 'PNS'),
('24-000014-1', '2023', 'Marketing Specialist'),
('24-000015-2', '2022', 'Wirausaha'),
('24-000016-2', '2021', 'Marketing Specialist'),
('24-000017-2', '2019', 'Analis Keuangan'),
('24-000018-1', '2021', 'Network Administrator'),
('24-000019-2', '2020', 'Akuntan'),
('24-000020-3', '2023', 'Network Administrator'),
('24-000021-3', '2023', 'Akuntan'),
('24-000022-1', '2021', 'Software Engineer'),
('24-000023-1', '2019', 'PNS'),
('24-000024-2', '2019', 'Akuntan'),
('24-000025-2', '2019', 'Wirausaha'),
('24-000026-3', '2023', 'Software Engineer'),
('24-000027-1', '2023', 'Dokter Umum'),
('24-000028-3', '2018', 'Dosen'),
('24-000029-3', '2023', 'PNS'),
('24-000030-3', '2022', 'PNS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `NIDN` char(5) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `No_HP` varchar(20) DEFAULT NULL,
  `ID_Jurusan` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`NIDN`, `Nama`, `Email`, `No_HP`, `ID_Jurusan`) VALUES
('D0001', 'Fathonah Novitasari, M.Farm, S.T., M.T.', 'omanprasetyo@yahoo.com', '576707621', 'J07'),
('D0002', 'Danuja Wahyudin, S.Gz, S.H., M.H.', 'hadi84@yahoo.com', '620510021542', 'J03'),
('D0003', 'Puput Wahyudin, S.E., M.M.', 'cahyadikuswandari@perum.net', '628655615043', 'J03'),
('D0004', 'Hamima Sudiati, M.Farm, S.E., M.M.', 'radensaefullah@ud.or.id', '620848303288', 'J01'),
('D0005', 'Dwi Gunawan, S.Kom., M.Kom.', 'nasyidahkiandra@pt.ponpes.id', '620391300375', 'J03'),
('D0006', 'Luwes Nashiruddin, S.Kom., M.Kom.', 'gtamba@ud.or.id', '621967924360', 'J03'),
('D0007', 'Asmianto Maulana, Prof., Dr.', 'rdamanik@pt.int', '623023678722', 'J10'),
('D0008', 'Hj. Rahmi Rahmawati, S.E., M.M.', 'ysetiawan@yahoo.com', '621296817301', 'J01'),
('D0009', 'Kamal Najmudin, S.E., M.M.', 'anastasia65@hotmail.com', '62182994832', 'J03'),
('D0010', 'Mutia Suryono, Prof., Dr.', 'ardiantokuncara@hotmail.com', '626982366967', 'J06'),
('D0011', 'Hj. Puput Yuliarti, Prof., Dr.', 'cakrabirawa72@pd.mil', '853359325', 'J04'),
('D0012', 'KH. Kairav Nasyidah, S.H., M.H.', 'irnanto20@hotmail.com', '620260715642', 'J05'),
('D0013', 'R. Asmuni Nababan, S.T., M.T.', 'imandala@pt.or.id', '620094709717', 'J08'),
('D0014', 'Anastasia Anggriawan, S.E., M.M.', 'saefullahnadia@yahoo.com', '6205591874073', 'J05'),
('D0015', 'Dono Adriansyah, S.H., M.H.', 'ypratama@yahoo.com', '9947427075', 'J03'),
('D0016', 'Dt. Mulya Uyainah, S.Kom., M.Kom.', 'puspa41@perum.mil', '6206274872893', 'J07'),
('D0017', 'Aisyah Kuswandari, S.Kom., M.Kom.', 'dlaksita@pd.id', '621076267139', 'J06'),
('D0018', 'Luluh Megantara, Dr., M.Sc.', 'mustika94@perum.ac.id', '620878434921', 'J08'),
('D0019', 'dr. Cahyadi Januar, Dr., M.Sc.', 'hnasyidah@perum.my.id', '626045958748', 'J08'),
('D0020', 'Nasim Mansur, S.Kom., M.Kom.', 'faridanyana@pt.desa.id', '824294840', 'J05'),
('D0021', 'Melinda Dongoran, Prof., Dr.', 'cahyanatsir@gmail.com', '964726095', 'J06'),
('D0022', 'Ganep Nurdiyanti, S.Kom., M.Kom.', 'latif02@ud.ac.id', '829803992', 'J05'),
('D0023', 'Mustofa Prabowo, S.Kom., M.Kom.', 'hana53@ud.ponpes.id', '7298855776', 'J07'),
('D0024', 'Tugiman Haryanti, Dr., M.Sc.', 'suryonokasiyah@hotmail.com', '801780377', 'J05'),
('D0025', 'Pranata Thamrin, M.Farm, S.T., M.T.', 'cayadi19@pd.net', '824897231', 'J01'),
('D0026', 'Koko Adriansyah, S.E., M.M.', 'nainggolannyoman@pt.mil.id', '620010715923', 'J02'),
('D0027', 'R. Viktor Pratama, S.Gz, S.T., M.T.', 'hidayantoprayitna@yahoo.com', '62786212902', 'J10'),
('D0028', 'Drs. Martaka Hardiansyah, S.Gz, S.H., M.H.', 'inahutagalung@pd.co.id', '620873984336', 'J10'),
('D0029', 'Najam Dabukke, S.Farm, S.E., M.M.', 'galih98@cv.net', '621718540020', 'J05'),
('D0030', 'Padmi Oktaviani, S.H., M.H.', 'manah61@pt.com', '62810702722', 'J07'),
('D0031', 'Hj. Lalita Sirait, S.T., M.T.', 'jsusanti@hotmail.com', '823332296', 'J05'),
('D0032', 'Dr. Restu Firgantoro, S.T., M.T.', 'nugraha65@gmail.com', '620878323238', 'J05'),
('D0033', 'Iriana Prabowo, S.T., M.T.', 'mardhiyahkambali@gmail.com', '6203735497077', 'J08'),
('D0034', 'Kemba Hutagalung, Prof., Dr.', 'zelda69@yahoo.com', '4194238433', 'J09'),
('D0035', 'Uchita Budiman, S.H., M.H.', 'apradana@gmail.com', '620765955202', 'J08'),
('D0036', 'Emin Mansur, S.H., M.H.', 'uchita77@pt.edu', '895913957', 'J01'),
('D0037', 'Kartika Nugroho, Dr., M.Sc.', 'nataliahalimah@gmail.com', '62822096686', 'J01'),
('D0038', 'Carla Marpaung, S.E., S.E., M.M.', 'pkuswandari@yahoo.com', '78996642', 'J01'),
('D0039', 'Galak Kuswandari, S.H., M.H.', 'bambangfirgantoro@gmail.com', '837417933', 'J06'),
('D0040', 'Ganda Nasyidah, Dr., M.Sc.', 'parisprastuti@ud.com', '6207328436097', 'J04'),
('D0041', 'dr. Yance Budiman, S.Kom., M.Kom.', 'wasitacaket@gmail.com', '620675739408', 'J10'),
('D0042', 'Kemba Waskita, S.H., M.H.', 'opankurniawan@hotmail.com', '627061139963', 'J01'),
('D0043', 'Asirwada Prasetya, S.Pd, S.E., M.M.', 'hasanmahendra@pd.go.id', '6207314180172', 'J09'),
('D0044', 'Dadi Suwarno, S.E., M.M.', 'prayogokurniawan@perum.web.id', '276335119', 'J07'),
('D0045', 'Dr. Syahrini Sudiati, M.M., Dr., M.Sc.', 'ramagunawan@pd.org', '864807913', 'J02'),
('D0046', 'R. Johan Lestari, Prof., Dr.', 'prabowoirawan@hotmail.com', '629913194983', 'J10'),
('D0047', 'Ir. Cici Mansur, S.E., M.M.', 'atmalestari@pd.net', '601816204', 'J06'),
('D0048', 'Diana Marpaung, Prof., Dr.', 'ajenglaksmiwati@pt.id', '621055059597', 'J07'),
('D0049', 'Keisha Uwais, Dr., M.Sc.', 'edison92@cv.go.id', '623816645148', 'J09'),
('D0050', 'Kamaria Kusmawati, S.T., M.T.', 'irianayulianti@gmail.com', '620454270898', 'J05'),
('D0051', 'Cut Ani Saragih, S.Kom., M.Kom.', 'siti86@gmail.com', '887537400', 'J03'),
('D0052', 'Pangeran Anggriawan, S.T., M.T.', 'belindabudiman@cv.ac.id', '742644975', 'J04'),
('D0053', 'Maria Waluyo, S.E., M.M.', 'samosirhendra@yahoo.com', '6203760435093', 'J07'),
('D0054', 'R.M. Warsita Fujiati, S.H., M.H.', 'veropurwanti@yahoo.com', '8904225099', 'J04'),
('D0055', 'Puti Budiyanto, S.E., M.M.', 'lrahayu@hotmail.com', '620325902815', 'J07'),
('D0056', 'drg. Darimin Saragih, S.T., M.T.', 'niyaga61@gmail.com', '620701766862', 'J06'),
('D0057', 'Drs. Anastasia Rahmawati, S.T., M.T.', 'awijayanti@gmail.com', '6207194597606', 'J08'),
('D0058', 'Oskar Haryanto, S.Kom., M.Kom.', 'hmangunsong@yahoo.com', '982028848', 'J10'),
('D0059', 'Fitria Halim, Dr., M.Sc.', 'saptonolukita@yahoo.com', '620315595227', 'J01'),
('D0060', 'Uchita Santoso, M.M., S.H., M.H.', 'firmansyahkajen@gmail.com', '62421675379', 'J04'),
('D0061', 'Surya Damanik, S.Kom., M.Kom.', 'nalarnashiruddin@pt.net.id', '842865188', 'J08'),
('D0062', 'Utama Firgantoro, S.H., M.H.', 'lazuardikarsa@pd.net.id', '6206391505002', 'J04'),
('D0063', 'Tgk. Sabrina Nugroho, S.H., M.H.', 'wnatsir@yahoo.com', '620700220915', 'J06'),
('D0064', 'Tgk. Viman Jailani, S.Pt, S.H., M.H.', 'vinsen88@pt.net', '620930982260', 'J01'),
('D0065', 'Fitriani Dongoran, M.Farm, S.E., M.M.', 'ibun58@pd.or.id', '6205851669907', 'J02'),
('D0066', 'Tina Wahyuni, S.E., M.M.', 'wasitaqori@hotmail.com', '358956876', 'J09'),
('D0067', 'Luwar Nurdiyanti, S.T., M.T.', 'jmelani@yahoo.com', '621731225879', 'J10'),
('D0068', 'drg. Nilam Sihotang, S.Kom., M.Kom.', 'dewizulkarnain@gmail.com', '620201054074', 'J04'),
('D0069', 'R. Aisyah Yolanda, S.T., M.T.', 'mulyononapitupulu@pd.mil', '627718496491', 'J10'),
('D0070', 'Drs. Ani Prasasta, M.Ak, Dr., M.Sc.', 'wulan97@hotmail.com', '815552589', 'J04'),
('D0071', 'R. Vanesa Maulana, S.T., M.T.', 'purwantibelinda@perum.or.id', '620213308581', 'J03'),
('D0072', 'Oliva Nashiruddin, S.E., M.M.', 'karja81@pt.desa.id', '6206466002766', 'J08'),
('D0073', 'Tami Situmorang, Prof., Dr.', 'rmansur@cv.net.id', '6203448059174', 'J08'),
('D0074', 'Ganep Aryani, S.Kom, S.T., M.T.', 'gunartoibun@pt.co.id', '602795589', 'J04'),
('D0075', 'Ulva Farida, S.T., M.T.', 'solehmansur@pd.com', '623630241952', 'J06'),
('D0076', 'T. Hari Damanik, Dr., M.Sc.', 'faizahmarpaung@ud.desa.id', '433105372', 'J07'),
('D0077', 'Cakrawala Wahyuni, Prof., Dr.', 'zirawan@hotmail.com', '6207411144011', 'J10'),
('D0078', 'Humaira Novitasari, Prof., Dr.', 'pnajmudin@ud.edu', '620917825431', 'J06'),
('D0079', 'Cakrawala Puspasari, Dr., M.Sc.', 'damu46@pd.co.id', '6209266335817', 'J07'),
('D0080', 'Asmadi Laksita, S.T., M.T.', 'lidya07@hotmail.com', '6207810564995', 'J09'),
('D0081', 'Amalia Laksita, S.E., S.Kom., M.Kom.', 'agnespradana@hotmail.com', '848120374', 'J04'),
('D0082', 'Gangsa Hidayat, S.H., M.H.', 'raihanwibisono@hotmail.com', '526644187', 'J06'),
('D0083', 'R.A. Samiah Mayasari, S.T., S.H., M.H.', 'mandasarilegawa@hotmail.com', '810149291', 'J09'),
('D0084', 'Ida Laksmiwati, S.Kom., M.Kom.', 'sihotangvinsen@perum.id', '620835236038', 'J04'),
('D0085', 'drg. Cinta Nashiruddin, S.T., Dr., M.Sc.', 'pmansur@yahoo.com', '620216417203', 'J06'),
('D0086', 'Nadine Uwais, S.H., M.H.', 'verorajata@pt.go.id', '620760800509', 'J01'),
('D0087', 'Murti Winarno, S.Kom., M.Kom.', 'ubudiyanto@ud.id', '6207925085962', 'J07'),
('D0088', 'Tgk. Bakiadi Mangunsong, S.Kom., M.Kom.', 'dongoranjaiman@pd.net', '620833890452', 'J02'),
('D0089', 'Malik Napitupulu, S.E., M.M.', 'maheswaraaisyah@hotmail.com', '625108525069', 'J10'),
('D0090', 'Ana Hakim, S.E., M.M.', 'adhiarja38@gmail.com', '62192721606', 'J08'),
('D0091', 'Prayogo Waskita, S.Farm, Dr., M.Sc.', 'silvia97@cv.id', '623361228408', 'J06'),
('D0092', 'Cut Sarah Mayasari, M.Pd, S.E., M.M.', 'fmandala@pt.my.id', '867046986', 'J02'),
('D0093', 'Kenzie Haryanto, S.T., M.T.', 'qpalastri@cv.web.id', '844758401', 'J08'),
('D0094', 'Eli Wibisono, Prof., Dr.', 'pertiwiemong@yahoo.com', '620433532945', 'J02'),
('D0095', 'Sutan Mulyanto Wijayanti, S.E.I, Prof., Dr.', 'prastutiutama@ud.mil.id', '62158039035', 'J01'),
('D0096', 'Hartaka Widodo, S.E., M.M.', 'suryatmiharsanto@pt.int', '620694581232', 'J10'),
('D0097', 'Syahrini Maheswara, S.E., M.M.', 'fnarpati@yahoo.com', '625334536202', 'J08'),
('D0098', 'Ibrani Iswahyudi, S.Pd, S.H., M.H.', 'kemalmansur@yahoo.com', '837299939', 'J10'),
('D0099', 'Victoria Hardiansyah, Dr., M.Sc.', 'wibowoilyas@perum.net.id', '620304318420', 'J06'),
('D0100', 'R.A. Humaira Nugroho, S.Pt, Dr., M.Sc.', 'dpudjiastuti@gmail.com', '620190303365', 'J09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `ID_Fakultas` char(3) NOT NULL,
  `Nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`ID_Fakultas`, `Nama`) VALUES
('F01', 'Fakultas Teknik'),
('F02', 'Fakultas Ekonomi dan Bisnis'),
('F03', 'Fakultas Ilmu Komputer'),
('F04', 'Fakultas Kedokteran'),
('F05', 'Fakultas Hukum');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `ID_Jurusan` char(3) NOT NULL,
  `Nama` varchar(60) NOT NULL,
  `ID_Fakultas` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`ID_Jurusan`, `Nama`, `ID_Fakultas`) VALUES
('J01', 'Teknik Informatika', 'F03'),
('J02', 'Sistem Informasi', 'F03'),
('J03', 'Teknik Elektro', 'F01'),
('J04', 'Manajemen', 'F03'),
('J05', 'Akuntansi', 'F03'),
('J06', 'Hukum', 'F05'),
('J07', 'Kedokteran', 'F03'),
('J08', 'Teknik Mesin', 'F01'),
('J09', 'Ilmu Komunikasi', 'F04'),
('J10', 'Farmasi', 'F02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `ID_Kelas` char(4) NOT NULL,
  `Kode_MK` char(5) DEFAULT NULL,
  `NIDN` char(5) DEFAULT NULL,
  `Hari` varchar(20) DEFAULT NULL,
  `Jam` time DEFAULT NULL,
  `Ruangan` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`ID_Kelas`, `Kode_MK`, `NIDN`, `Hari`, `Jam`, `Ruangan`) VALUES
('K001', 'MK002', 'D0047', 'Kamis', '14:04:03', 'R277'),
('K002', 'MK012', 'D0029', 'Selasa', '23:04:36', 'R417'),
('K003', 'MK001', 'D0036', 'Senin', '06:19:45', 'R178'),
('K004', 'MK002', 'D0058', 'Kamis', '08:09:33', 'R143'),
('K005', 'MK011', 'D0045', 'Selasa', '17:04:45', 'R332'),
('K006', 'MK013', 'D0010', 'Selasa', '14:26:46', 'R128'),
('K007', 'MK002', 'D0032', 'Rabu', '02:23:04', 'R446'),
('K008', 'MK009', 'D0049', 'Jumat', '01:32:52', 'R486'),
('K009', 'MK014', 'D0052', 'Jumat', '04:52:45', 'R390'),
('K010', 'MK001', 'D0009', 'Rabu', '06:02:01', 'R141');

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `ID_KRS` int(11) NOT NULL,
  `NIM` char(11) DEFAULT NULL,
  `ID_Kelas` char(4) DEFAULT NULL,
  `Semester` int(11) DEFAULT NULL,
  `Kode_MK` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`ID_KRS`, `NIM`, `ID_Kelas`, `Semester`, `Kode_MK`) VALUES
(1, '24-000039-1', 'K007', 6, NULL),
(2, '24-000062-2', 'K003', 3, NULL),
(3, '24-000047-3', 'K009', 2, NULL),
(4, '24-000005-2', 'K009', 8, NULL),
(5, '24-000044-2', 'K010', 7, NULL),
(6, '24-000060-1', 'K001', 7, NULL),
(7, '24-000014-1', 'K009', 8, NULL),
(8, '24-000063-3', 'K010', 1, NULL),
(9, '24-000084-1', 'K005', 3, NULL),
(10, '24-000010-2', 'K002', 4, NULL),
(11, '24-000036-2', 'K001', 2, NULL),
(12, '24-000019-2', 'K004', 4, NULL),
(13, '24-000027-1', 'K005', 7, NULL),
(14, '24-000075-1', 'K003', 6, NULL),
(15, '24-000098-2', 'K006', 3, NULL),
(16, '24-000042-2', 'K007', 7, NULL),
(17, '24-000071-2', 'K004', 8, NULL),
(18, '24-000077-2', 'K005', 1, NULL),
(19, '24-000022-1', 'K006', 4, NULL),
(20, '24-000004-3', 'K003', 5, NULL),
(21, '24-000100-1', 'K005', 3, NULL),
(22, '24-000043-2', 'K006', 5, NULL),
(23, '24-000052-1', 'K008', 3, NULL),
(24, '24-000064-3', 'K004', 2, NULL),
(25, '24-000034-3', 'K006', 1, NULL),
(26, '24-000058-2', 'K008', 6, NULL),
(27, '24-000055-1', 'K002', 7, NULL),
(28, '24-000013-1', 'K009', 6, NULL),
(29, '24-000070-1', 'K003', 5, NULL),
(30, '24-000025-2', 'K005', 1, NULL),
(31, '24-000009-2', 'K005', 4, NULL),
(32, '24-000004-3', 'K006', 5, NULL),
(33, '24-000056-1', 'K001', 1, NULL),
(34, '24-000027-1', 'K002', 2, NULL),
(35, '24-000082-1', 'K008', 2, NULL),
(36, '24-000036-2', 'K010', 7, NULL),
(37, '24-000004-3', 'K007', 5, NULL),
(38, '24-000046-3', 'K005', 3, NULL),
(39, '24-000100-1', 'K005', 4, NULL),
(40, '24-000069-3', 'K003', 4, NULL),
(41, '24-000067-1', 'K003', 3, NULL),
(42, '24-000046-3', 'K003', 7, NULL),
(43, '24-000057-1', 'K009', 6, NULL),
(44, '24-000002-2', 'K007', 5, NULL),
(45, '24-000058-2', 'K001', 6, NULL),
(46, '24-000032-1', 'K008', 5, NULL),
(47, '24-000047-3', 'K004', 3, NULL),
(48, '24-000092-2', 'K005', 4, NULL),
(49, '24-000027-1', 'K007', 1, NULL),
(50, '24-000006-1', 'K008', 2, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` char(11) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Tanggal_Lahir` date DEFAULT NULL,
  `Jenis_Kelamin` enum('L','P') DEFAULT NULL,
  `Alamat` text DEFAULT NULL,
  `ID_Jurusan` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama`, `Tanggal_Lahir`, `Jenis_Kelamin`, `Alamat`, `ID_Jurusan`) VALUES
('24-000001-1', 'Padma Widodo', '2001-05-27', 'P', '\"Gang Sukabumi No. 95\nBalikpapan, GO 93470\"', 'J01'),
('24-000002-2', 'Ade Prastuti', '2000-03-30', 'L', '\"Gang Ciwastra No. 544\nTangerang, Aceh 07360\"', 'J06'),
('24-000003-3', 'Eka Marbun', '2000-09-05', 'L', '\"Gg. Cikutra Timur No. 282\nTidore Kepulauan, MU 79525\"', 'J05'),
('24-000004-3', 'Hilda Uyainah, M.Farm', '2003-12-26', 'P', '\"Jl. Bangka Raya No. 5\nPangkalpinang, Jambi 55855\"', 'J05'),
('24-000005-2', 'R.A. Puspa Suryatmi', '2002-01-09', 'L', '\"Gang Dipenogoro No. 80\nPasuruan, Papua 74572\"', 'J02'),
('24-000006-1', 'Ihsan Prastuti', '2002-06-16', 'P', '\"Jalan Cikutra Barat No. 714\nCirebon, Kalimantan Utara 70393\"', 'J05'),
('24-000007-2', 'Jarwadi Sirait, S.H.', '1999-12-11', 'L', '\"Jalan Rajawali Barat No. 7\nTanjungpinang, Maluku 11046\"', 'J02'),
('24-000008-1', 'Atma Haryanti', '2002-09-04', 'L', '\"Jalan Waringin No. 7\nLangsa, Kepulauan Bangka Belitung 35449\"', 'J10'),
('24-000009-2', 'Mila Firgantoro', '1999-07-25', 'L', '\"Jl. HOS. Cokroaminoto No. 97\nPematangsiantar, Sulawesi Selatan 54027\"', 'J07'),
('24-000010-2', 'T. Dodo Astuti, S.IP', '2002-05-03', 'L', '\"Jl. Lembong No. 4\nTangerang, NT 65778\"', 'J10'),
('24-000011-3', 'Drs. Imam Kurniawan, S.Sos', '2005-07-11', 'P', '\"Jl. Suryakencana No. 203\nBalikpapan, AC 73484\"', 'J05'),
('24-000012-2', 'Caket Wibisono, M.Pd', '2004-10-16', 'L', '\"Jalan Ciwastra No. 6\nPadangpanjang, Papua Barat 63396\"', 'J10'),
('24-000013-1', 'Omar Suryatmi', '2005-07-22', 'P', '\"Jalan Cikutra Barat No. 2\nPadangpanjang, MU 96988\"', 'J04'),
('24-000014-1', 'Hardi Haryanti', '1999-10-20', 'L', '\"Jl. Pasirkoja No. 5\nBanda Aceh, Bali 08714\"', 'J10'),
('24-000015-2', 'Hj. Cici Namaga, S.IP', '2006-12-17', 'L', '\"Jalan Tebet Barat Dalam No. 9\nKota Administrasi Jakarta Selatan, Kalimantan Selatan 54981\"', 'J03'),
('24-000016-2', 'Rahman Gunarto', '2002-06-15', 'P', '\"Gang Sadang Serang No. 84\nAmbon, JT 01304\"', 'J05'),
('24-000017-2', 'Puti Paramita Simanjuntak, M.TI.', '1999-04-03', 'P', '\"Gg. M.H Thamrin No. 20\nSalatiga, PA 04714\"', 'J07'),
('24-000018-1', 'Ayu Fujiati', '2002-01-24', 'P', '\"Gg. Pasir Koja No. 97\nTual, BT 78317\"', 'J06'),
('24-000019-2', 'Abyasa Sihombing', '2005-06-20', 'L', '\"Gg. Raya Ujungberung No. 7\nMeulaboh, Kalimantan Utara 42522\"', 'J09'),
('24-000020-3', 'Janet Sitompul', '2002-07-09', 'P', '\"Jl. Cempaka No. 6\nBatu, JI 48137\"', 'J06'),
('24-000021-3', 'Drs. Daruna Wijaya', '2006-02-17', 'P', '\"Gg. Ciumbuleuit No. 460\nSemarang, Banten 86833\"', 'J02'),
('24-000022-1', 'R.M. Karta Mandasari', '2002-09-16', 'P', '\"Gang Pelajar Pejuang No. 74\nTegal, SB 42409\"', 'J06'),
('24-000023-1', 'Daliono Rahayu', '2006-11-11', 'P', '\"Jl. Sadang Serang No. 616\nPangkalpinang, BB 01970\"', 'J06'),
('24-000024-2', 'Kartika Hariyah', '2004-11-05', 'L', '\"Gg. Jamika No. 464\nSalatiga, KR 02754\"', 'J07'),
('24-000025-2', 'Cut Cornelia Prayoga', '2006-03-10', 'L', '\"Gg. Cikapayang No. 644\nTangerang, JB 27991\"', 'J01'),
('24-000026-3', 'Uda Wacana', '2005-02-27', 'L', '\"Gang Wonoayu No. 13\nBau-Bau, Papua 84792\"', 'J08'),
('24-000027-1', 'Jessica Mayasari', '2005-04-24', 'L', '\"Gg. Ahmad Dahlan No. 4\nBlitar, SG 33009\"', 'J06'),
('24-000028-3', 'Hj. Eli Gunarto, S.Sos', '2003-06-08', 'L', '\"Jl. Kapten Muslihat No. 75\nYogyakarta, KI 52129\"', 'J03'),
('24-000029-3', 'Opung Nababan, M.M.', '2006-07-12', 'L', '\"Gang Rajawali Timur No. 9\nLangsa, Sulawesi Selatan 14101\"', 'J06'),
('24-000030-3', 'Puti Elisa Mandala, S.I.Kom', '2002-08-31', 'L', '\"Gang Tubagus Ismail No. 9\nSerang, Bali 85418\"', 'J01'),
('24-000031-2', 'Devi Prasetya', '2002-10-29', 'P', '\"Jalan Kutai No. 1\nKupang, ST 38337\"', 'J10'),
('24-000032-1', 'R.A. Alika Hidayat, S.E.', '2004-08-05', 'P', '\"Gang Wonoayu No. 63\nPalu, Sumatera Utara 25631\"', 'J07'),
('24-000033-3', 'Gamani Prayoga', '2006-02-19', 'L', '\"Jl. Yos Sudarso No. 864\nPematangsiantar, Papua Barat 96544\"', 'J07'),
('24-000034-3', 'Cahyadi Budiyanto, S.Sos', '2001-05-30', 'P', '\"Jalan Suryakencana No. 9\nKota Administrasi Jakarta Utara, PB 74076\"', 'J01'),
('24-000035-1', 'Kawaya Wibowo', '2004-10-05', 'P', '\"Jl. Soekarno Hatta No. 1\nLubuklinggau, Maluku Utara 36768\"', 'J05'),
('24-000036-2', 'drg. Hani Yolanda, S.H.', '2007-03-08', 'P', '\"Jl. Medokan Ayu No. 1\nPadang, PB 77725\"', 'J06'),
('24-000037-3', 'Anita Sitorus', '2003-08-26', 'L', '\"Gg. Gegerkalong Hilir No. 35\nBanjarmasin, Maluku Utara 25832\"', 'J01'),
('24-000038-3', 'Ifa Yuliarti', '2005-01-11', 'L', '\"Gang Ronggowarsito No. 58\nMataram, SB 68165\"', 'J09'),
('24-000039-1', 'Aisyah Putra', '2004-11-16', 'L', '\"Gang Dr. Djunjunan No. 9\nBanjarbaru, Riau 82856\"', 'J02'),
('24-000040-1', 'Dt. Jamal Salahudin', '2003-02-17', 'L', '\"Gg. Tubagus Ismail No. 00\nDenpasar, NB 75061\"', 'J02'),
('24-000041-1', 'Drajat Napitupulu', '2006-11-07', 'P', '\"Jalan Joyoboyo No. 30\nKota Administrasi Jakarta Utara, KB 36810\"', 'J01'),
('24-000042-2', 'Dr. Garda Thamrin, S.Psi', '2005-03-01', 'P', '\"Jalan Ronggowarsito No. 9\nDenpasar, BA 07300\"', 'J09'),
('24-000043-2', 'Okta Haryanti', '2002-10-25', 'P', '\"Gang M.T Haryono No. 4\nCimahi, Jawa Timur 44387\"', 'J10'),
('24-000044-2', 'Dadi Wulandari, M.Farm', '2004-07-23', 'L', '\"Gang Tubagus Ismail No. 5\nBalikpapan, DI Yogyakarta 44953\"', 'J07'),
('24-000045-3', 'Devi Melani', '2000-09-23', 'P', '\"Gang Cikapayang No. 6\nKota Administrasi Jakarta Pusat, SN 88813\"', 'J09'),
('24-000046-3', 'Diana Pratiwi, M.Ak', '2005-07-14', 'P', '\"Jl. S. Parman No. 134\nSukabumi, Bali 23726\"', 'J10'),
('24-000047-3', 'Zelda Haryanti, S.Pd', '2005-07-16', 'L', '\"Gg. Astana Anyar No. 9\nBanda Aceh, KI 34719\"', 'J03'),
('24-000048-1', 'Kayla Permadi', '2002-11-15', 'L', '\"Gg. Astana Anyar No. 84\nPangkalpinang, MA 55954\"', 'J05'),
('24-000049-3', 'Dr. Novi Yuliarti, M.Ak', '2004-09-08', 'L', '\"Gang Ahmad Yani No. 541\nBinjai, NT 10988\"', 'J08'),
('24-000050-1', 'Cawuk Lailasari', '2003-09-05', 'P', '\"Jalan Moch. Ramdan No. 7\nBalikpapan, Lampung 61899\"', 'J04'),
('24-000051-3', 'KH. Teguh Pertiwi, S.T.', '2003-09-29', 'P', '\"Jalan Joyoboyo No. 148\nBanjarbaru, Maluku Utara 68253\"', 'J08'),
('24-000052-1', 'Viman Purwanti', '1999-03-28', 'L', '\"Jalan Jayawijaya No. 576\nBontang, Kalimantan Selatan 56805\"', 'J05'),
('24-000053-3', 'Nova Suwarno, S.I.Kom', '2005-01-18', 'L', '\"Gang Kebonjati No. 003\nSawahlunto, Kepulauan Riau 81365\"', 'J01'),
('24-000054-1', 'Jati Waluyo', '2003-07-10', 'P', '\"Gang Surapati No. 568\nMetro, KR 38732\"', 'J09'),
('24-000055-1', 'Dr. Irfan Maryadi', '2002-05-21', 'L', '\"Gg. W.R. Supratman No. 36\nSemarang, Sumatera Barat 83518\"', 'J06'),
('24-000056-1', 'Harsaya Rahmawati, M.M.', '2003-03-20', 'L', '\"Jalan Dipatiukur No. 86\nMedan, SG 96700\"', 'J09'),
('24-000057-1', 'Zelda Hartati, M.Farm', '2004-10-27', 'P', '\"Gang Suniaraja No. 585\nMeulaboh, JB 43704\"', 'J08'),
('24-000058-2', 'Sutan Danu Saputra, S.IP', '2001-10-21', 'L', '\"Gg. Kebonjati No. 791\nBanjarbaru, JI 38505\"', 'J06'),
('24-000059-1', 'Salimah Waskita', '2004-03-25', 'L', '\"Jalan Ahmad Yani No. 382\nTidore Kepulauan, Kalimantan Tengah 97384\"', 'J03'),
('24-000060-1', 'Malika Pranowo', '2000-07-29', 'L', '\"Gang Raya Setiabudhi No. 9\nPagaralam, MU 49156\"', 'J08'),
('24-000061-1', 'Mala Haryanti', '2003-01-20', 'L', '\"Jl. Ronggowarsito No. 573\nSalatiga, SS 78874\"', 'J02'),
('24-000062-2', 'Hj. Puji Maryati', '2007-01-25', 'P', '\"Jl. Sukajadi No. 9\nPangkalpinang, Sulawesi Barat 46093\"', 'J10'),
('24-000063-3', 'Cengkir Iswahyudi', '2002-11-20', 'P', '\"Gang Suryakencana No. 1\nTanjungpinang, Sulawesi Barat 48360\"', 'J03'),
('24-000064-3', 'R.M. Mustofa Permata', '2004-10-27', 'L', '\"Jalan Pasir Koja No. 0\nTangerang, Papua Barat 15163\"', 'J03'),
('24-000065-2', 'Tomi Maheswara', '1999-10-29', 'L', '\"Gg. Yos Sudarso No. 3\nKota Administrasi Jakarta Utara, Kalimantan Barat 20931\"', 'J01'),
('24-000066-1', 'Nurul Sinaga, S.I.Kom', '2002-02-08', 'L', '\"Jl. Jend. A. Yani No. 48\nMadiun, Lampung 20419\"', 'J02'),
('24-000067-1', 'Rachel Saefullah', '2002-02-15', 'L', '\"Gang Kebonjati No. 938\nBalikpapan, LA 25141\"', 'J08'),
('24-000068-2', 'Nrima Yuniar', '2005-02-02', 'L', '\"Jl. Rawamangun No. 638\nBekasi, BA 54079\"', 'J08'),
('24-000069-3', 'Yulia Marpaung, S.IP', '2002-05-03', 'P', '\"Gang Antapani Lama No. 818\nLangsa, Sulawesi Tenggara 91429\"', 'J07'),
('24-000070-1', 'Eka Suartini, S.T.', '2001-07-02', 'P', '\"Gg. Suniaraja No. 15\nPrabumulih, Sumatera Selatan 51751\"', 'J09'),
('24-000071-2', 'Purwadi Habibi', '2001-07-09', 'L', '\"Jalan M.T Haryono No. 9\nBatam, SU 37353\"', 'J03'),
('24-000072-2', 'Aslijan Maryati', '2001-10-09', 'L', '\"Jl. Rajawali Timur No. 047\nPangkalpinang, KR 59915\"', 'J06'),
('24-000073-2', 'Bagiya Tarihoran, S.Sos', '2001-05-31', 'P', '\"Gang Yos Sudarso No. 37\nBanda Aceh, Sulawesi Selatan 43360\"', 'J01'),
('24-000074-1', 'drg. Lidya Halim, S.Kom', '2000-04-28', 'L', '\"Jalan Ciwastra No. 534\nBanjar, Sulawesi Tengah 36336\"', 'J04'),
('24-000075-1', 'Kezia Namaga', '1999-11-07', 'P', '\"Jalan Peta No. 617\nBlitar, Lampung 70446\"', 'J01'),
('24-000076-3', 'Aurora Nasyiah', '2004-08-03', 'P', '\"Jl. Bangka Raya No. 612\nMadiun, Bali 72960\"', 'J04'),
('24-000077-2', 'Ir. Dadi Purwanti, M.Kom.', '2002-09-07', 'L', '\"Gg. Joyoboyo No. 05\nSalatiga, Sulawesi Tenggara 31604\"', 'J07'),
('24-000078-3', 'Zahra Wastuti', '2001-07-04', 'P', '\"Jl. M.T Haryono No. 1\nTidore Kepulauan, Lampung 88201\"', 'J04'),
('24-000079-3', 'Titin Manullang', '2004-07-29', 'L', '\"Jalan Jayawijaya No. 64\nCirebon, Kalimantan Selatan 05345\"', 'J08'),
('24-000080-1', 'Ir. Bala Widodo, S.Farm', '2006-09-21', 'L', '\"Jl. Sukajadi No. 6\nPadang Sidempuan, DKI Jakarta 94654\"', 'J07'),
('24-000081-1', 'Endah Usada', '2003-09-22', 'L', '\"Jalan Cihampelas No. 49\nMadiun, Papua Barat 96406\"', 'J09'),
('24-000082-1', 'Usman Mandasari', '2001-12-25', 'L', '\"Gg. Soekarno Hatta No. 861\nTangerang, Kepulauan Riau 69540\"', 'J09'),
('24-000083-3', 'Darman Mangunsong', '2006-10-27', 'L', '\"Jl. Cikapayang No. 74\nBandung, SU 02951\"', 'J03'),
('24-000084-1', 'Elvina Mandala', '2006-03-06', 'L', '\"Gg. PHH. Mustofa No. 65\nTanjungpinang, Maluku 62810\"', 'J04'),
('24-000085-3', 'KH. Balamantri Hakim', '2003-11-27', 'L', '\"Gang Yos Sudarso No. 6\nSorong, Kepulauan Bangka Belitung 66490\"', 'J09'),
('24-000086-3', 'Ratih Maryadi, S.Sos', '2003-11-27', 'L', '\"Gang Dipenogoro No. 202\nTual, Maluku Utara 49310\"', 'J04'),
('24-000087-2', 'Ganep Maryadi', '1999-05-18', 'P', '\"Gg. Yos Sudarso No. 48\nBlitar, Kalimantan Tengah 84013\"', 'J02'),
('24-000088-1', 'T. Edward Sirait, M.Pd', '2001-02-21', 'P', '\"Gg. Gegerkalong Hilir No. 315\nPekalongan, Sumatera Utara 22665\"', 'J09'),
('24-000089-2', 'Karimah Kuswandari', '2004-12-14', 'P', '\"Gang Cikapayang No. 90\nMalang, MU 13186\"', 'J08'),
('24-000090-1', 'R.A. Bella Hartati, M.TI.', '2003-07-28', 'P', '\"Gang Pasirkoja No. 427\nJambi, Sumatera Selatan 76839\"', 'J01'),
('24-000091-1', 'T. Reza Halim, S.Sos', '2002-03-20', 'P', '\"Gang Jend. A. Yani No. 1\nPrabumulih, BB 03247\"', 'J07'),
('24-000092-2', 'R.M. Viman Nashiruddin, S.Farm', '2004-07-27', 'P', '\"Gang Otto Iskandardinata No. 343\nCirebon, AC 80650\"', 'J02'),
('24-000093-2', 'Dr. Upik Prastuti, M.Farm', '2006-08-09', 'L', '\"Jalan HOS. Cokroaminoto No. 3\nSalatiga, LA 64415\"', 'J05'),
('24-000094-1', 'Sutan Wardi Samosir', '2006-05-04', 'L', '\"Gang Dipenogoro No. 0\nCirebon, Sumatera Utara 28529\"', 'J02'),
('24-000095-2', 'Tgk. Karen Purnawati, S.Pd', '2002-06-07', 'L', '\"Jalan M.H Thamrin No. 2\nSamarinda, Riau 96281\"', 'J09'),
('24-000096-3', 'Cakrabirawa Simbolon', '2001-11-29', 'P', '\"Gang Bangka Raya No. 40\nMeulaboh, Jambi 73238\"', 'J04'),
('24-000097-3', 'Hj. Yuliana Kuswandari', '2002-11-07', 'L', '\"Jalan Pacuan Kuda No. 699\nDepok, NB 18686\"', 'J07'),
('24-000098-2', 'Mustika Nurdiyanti, S.IP', '2005-01-27', 'P', '\"Jalan Cihampelas No. 5\nKotamobagu, Sumatera Utara 72191\"', 'J10'),
('24-000099-1', 'Dalima Gunarto', '1999-07-28', 'P', '\"Gg. Cikutra Barat No. 53\nMagelang, BA 69861\"', 'J09'),
('24-000100-1', 'Talia Yuliarti', '2004-11-16', 'P', '\"Jalan Astana Anyar No. 5\nSungai Penuh, RI 37698\"', 'J02'),
('24-000101-1', 'Sugroho anugerah', '2001-03-07', 'L', ' Jl Lodan Raya 1 Bl CF-CG, Dki Jakarta', NULL),
('24-000102-1', 'anugerah stefen', '1999-07-22', 'L', 'Jl Karya Rakyat 24/26, Sumatera Utara', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `Kode_MK` char(5) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `SKS` int(11) DEFAULT NULL,
  `ID_Jurusan` char(3) DEFAULT NULL,
  `NIDN` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`Kode_MK`, `Nama`, `SKS`, `ID_Jurusan`, `NIDN`) VALUES
('MK001', 'Pemrograman Dasar', 2, 'J09', 'D0029'),
('MK002', 'Struktur Data', 2, 'J06', 'D0009'),
('MK003', 'Jaringan Komputer', 2, 'J07', 'D0046'),
('MK004', 'Sistem Operasi', 4, 'J02', 'D0054'),
('MK005', 'Manajemen Basis Data', 2, 'J06', 'D0011'),
('MK006', 'Kalkulus', 2, 'J04', 'D0021'),
('MK007', 'Statistika', 2, 'J08', 'D0034'),
('MK008', 'Akuntansi Keuangan', 4, 'J04', 'D0041'),
('MK009', 'Etika Profesi', 2, 'J07', 'D0009'),
('MK010', 'Hukum Perdata', 4, 'J02', 'D0019'),
('MK011', 'Anatomi Manusia', 3, 'J03', 'D0042'),
('MK012', 'Teknik Digital', 2, 'J08', 'D0038'),
('MK013', 'Pemasaran Digital', 2, 'J06', 'D0057'),
('MK014', 'Sistem Informasi Geografis', 2, 'J09', 'D0037'),
('MK015', 'Keamanan Siber', 2, 'J02', 'D0035');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `kode_MK` char(5) DEFAULT NULL,
  `NIM` char(11) DEFAULT NULL,
  `ID_Jurusan` char(3) DEFAULT NULL,
  `ID_Fakultas` char(3) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`kode_MK`, `NIM`, `ID_Jurusan`, `ID_Fakultas`, `nilai`) VALUES
('MK001', '24-000001-1', 'J01', 'F03', 90),
('MK002', '24-000001-1', 'J01', 'F03', 70),
('MK003', '24-000001-1', 'J01', 'F03', 70),
('MK004', '24-000001-1', 'J01', 'F03', 70),
('MK005', '24-000001-1', 'J01', 'F03', 70),
('MK006', '24-000001-1', 'J01', 'F03', 70),
('MK007', '24-000001-1', 'J01', 'F03', 70),
('MK008', '24-000001-1', 'J01', 'F03', 70),
('MK009', '24-000001-1', 'J01', 'F03', 70),
('MK010', '24-000001-1', 'J01', 'F03', 70),
('MK011', '24-000001-1', 'J01', 'F03', 70),
('MK012', '24-000001-1', 'J01', 'F03', 70),
('MK013', '24-000001-1', 'J01', 'F03', 70),
('MK014', '24-000001-1', 'J01', 'F03', 70),
('MK015', '24-000001-1', 'J01', 'F03', 70),
('MK001', '24-000002-2', 'J06', 'F05', 75),
('MK002', '24-000002-2', 'J06', 'F05', 95),
('MK003', '24-000002-2', 'J06', 'F05', 75),
('MK004', '24-000002-2', 'J06', 'F05', 75),
('MK005', '24-000002-2', 'J06', 'F05', 75),
('MK006', '24-000002-2', 'J06', 'F05', 75),
('MK007', '24-000002-2', 'J06', 'F05', 75),
('MK008', '24-000002-2', 'J06', 'F05', 75),
('MK009', '24-000002-2', 'J06', 'F05', 75),
('MK010', '24-000002-2', 'J06', 'F05', 75),
('MK011', '24-000002-2', 'J06', 'F05', 75),
('MK012', '24-000002-2', 'J06', 'F05', 75),
('MK013', '24-000002-2', 'J06', 'F05', 75),
('MK014', '24-000002-2', 'J06', 'F05', 75),
('MK015', '24-000002-2', 'J06', 'F05', 75),
('MK001', '24-000003-3', 'J05', 'F02', 70),
('MK002', '24-000003-3', 'J05', 'F02', 70),
('MK003', '24-000003-3', 'J05', 'F02', 90),
('MK004', '24-000003-3', 'J05', 'F02', 70),
('MK005', '24-000003-3', 'J05', 'F02', 70),
('MK006', '24-000003-3', 'J05', 'F02', 70),
('MK007', '24-000003-3', 'J05', 'F02', 70),
('MK008', '24-000003-3', 'J05', 'F02', 70),
('MK009', '24-000003-3', 'J05', 'F02', 70),
('MK010', '24-000003-3', 'J05', 'F02', 70),
('MK011', '24-000003-3', 'J05', 'F02', 70),
('MK012', '24-000003-3', 'J05', 'F02', 70),
('MK013', '24-000003-3', 'J05', 'F02', 70),
('MK014', '24-000003-3', 'J05', 'F02', 70),
('MK015', '24-000003-3', 'J05', 'F02', 70),
('MK001', '24-000004-3', 'J05', 'F02', 78),
('MK002', '24-000004-3', 'J05', 'F02', 78),
('MK003', '24-000004-3', 'J05', 'F02', 78),
('MK004', '24-000004-3', 'J05', 'F02', 98),
('MK005', '24-000004-3', 'J05', 'F02', 78),
('MK006', '24-000004-3', 'J05', 'F02', 78),
('MK007', '24-000004-3', 'J05', 'F02', 78),
('MK008', '24-000004-3', 'J05', 'F02', 78),
('MK009', '24-000004-3', 'J05', 'F02', 78),
('MK010', '24-000004-3', 'J05', 'F02', 78),
('MK011', '24-000004-3', 'J05', 'F02', 78),
('MK012', '24-000004-3', 'J05', 'F02', 78),
('MK013', '24-000004-3', 'J05', 'F02', 78),
('MK014', '24-000004-3', 'J05', 'F02', 78),
('MK015', '24-000004-3', 'J05', 'F02', 78),
('MK001', '24-000005-2', 'J02', 'F03', 78),
('MK002', '24-000005-2', 'J02', 'F03', 78),
('MK003', '24-000005-2', 'J02', 'F03', 78),
('MK004', '24-000005-2', 'J02', 'F03', 78),
('MK005', '24-000005-2', 'J02', 'F03', 98),
('MK006', '24-000005-2', 'J02', 'F03', 78),
('MK007', '24-000005-2', 'J02', 'F03', 78),
('MK008', '24-000005-2', 'J02', 'F03', 78),
('MK009', '24-000005-2', 'J02', 'F03', 78),
('MK010', '24-000005-2', 'J02', 'F03', 78),
('MK011', '24-000005-2', 'J02', 'F03', 78),
('MK012', '24-000005-2', 'J02', 'F03', 78),
('MK013', '24-000005-2', 'J02', 'F03', 78),
('MK014', '24-000005-2', 'J02', 'F03', 78),
('MK015', '24-000005-2', 'J02', 'F03', 75),
('MK001', '24-000006-1', 'J05', 'F02', 75),
('MK002', '24-000006-1', 'J05', 'F02', 75),
('MK003', '24-000006-1', 'J05', 'F02', 75),
('MK004', '24-000006-1', 'J05', 'F02', 75),
('MK005', '24-000006-1', 'J05', 'F02', 75),
('MK006', '24-000006-1', 'J05', 'F02', 95),
('MK007', '24-000006-1', 'J05', 'F02', 75),
('MK008', '24-000006-1', 'J05', 'F02', 75),
('MK009', '24-000006-1', 'J05', 'F02', 75),
('MK010', '24-000006-1', 'J05', 'F02', 75),
('MK011', '24-000006-1', 'J05', 'F02', 75),
('MK012', '24-000006-1', 'J05', 'F02', 75),
('MK013', '24-000006-1', 'J05', 'F02', 75),
('MK014', '24-000006-1', 'J05', 'F02', 75),
('MK015', '24-000006-1', 'J05', 'F02', 75),
('MK001', '24-000007-2', 'J02', 'F03', 65),
('MK002', '24-000007-2', 'J02', 'F03', 85),
('MK003', '24-000007-2', 'J02', 'F03', 75),
('MK004', '24-000007-2', 'J02', 'F03', 65),
('MK005', '24-000007-2', 'J02', 'F03', 75),
('MK006', '24-000007-2', 'J02', 'F03', 85),
('MK007', '24-000007-2', 'J02', 'F03', 90),
('MK008', '24-000007-2', 'J02', 'F03', 75),
('MK009', '24-000007-2', 'J02', 'F03', 75),
('MK010', '24-000007-2', 'J02', 'F03', 75),
('MK011', '24-000007-2', 'J02', 'F03', 75),
('MK012', '24-000007-2', 'J02', 'F03', 75),
('MK013', '24-000007-2', 'J02', 'F03', 75),
('MK014', '24-000007-2', 'J02', 'F03', 75),
('MK015', '24-000007-2', 'J02', 'F03', 75),
('MK001', '24-000008-1', 'J10', 'F04', 85),
('MK002', '24-000008-1', 'J10', 'F04', 85),
('MK003', '24-000008-1', 'J10', 'F04', 85),
('MK004', '24-000008-1', 'J10', 'F04', 85),
('MK005', '24-000008-1', 'J10', 'F04', 85),
('MK006', '24-000008-1', 'J10', 'F04', 85),
('MK007', '24-000008-1', 'J10', 'F04', 85),
('MK008', '24-000008-1', 'J10', 'F04', 95),
('MK009', '24-000008-1', 'J10', 'F04', 80),
('MK010', '24-000008-1', 'J10', 'F04', 80),
('MK011', '24-000008-1', 'J10', 'F04', 80),
('MK012', '24-000008-1', 'J10', 'F04', 80),
('MK013', '24-000008-1', 'J10', 'F04', 80),
('MK014', '24-000008-1', 'J10', 'F04', 80),
('MK015', '24-000008-1', 'J10', 'F04', 80),
('MK001', '24-000009-2', 'J07', 'F04', 80),
('MK002', '24-000009-2', 'J07', 'F04', 80),
('MK003', '24-000009-2', 'J07', 'F04', 80),
('MK004', '24-000009-2', 'J07', 'F04', 80),
('MK005', '24-000009-2', 'J07', 'F04', 80),
('MK006', '24-000009-2', 'J07', 'F04', 80),
('MK007', '24-000009-2', 'J07', 'F04', 80),
('MK008', '24-000009-2', 'J07', 'F04', 80),
('MK009', '24-000009-2', 'J07', 'F04', 98),
('MK010', '24-000009-2', 'J07', 'F04', 80),
('MK011', '24-000009-2', 'J07', 'F04', 80),
('MK012', '24-000009-2', 'J07', 'F04', 80),
('MK013', '24-000009-2', 'J07', 'F04', 80),
('MK014', '24-000009-2', 'J07', 'F04', 80),
('MK015', '24-000009-2', 'J07', 'F04', 80),
('MK001', '24-000010-2', 'J10', 'F04', 80),
('MK002', '24-000010-2', 'J10', 'F04', 80),
('MK003', '24-000010-2', 'J10', 'F04', 80),
('MK004', '24-000010-2', 'J10', 'F04', 80),
('MK005', '24-000010-2', 'J10', 'F04', 80),
('MK006', '24-000010-2', 'J10', 'F04', 80),
('MK007', '24-000010-2', 'J10', 'F04', 80),
('MK008', '24-000010-2', 'J10', 'F04', 80),
('MK009', '24-000010-2', 'J10', 'F04', 80),
('MK010', '24-000010-2', 'J10', 'F04', 90),
('MK011', '24-000010-2', 'J10', 'F04', 60),
('MK012', '24-000010-2', 'J10', 'F04', 60),
('MK013', '24-000010-2', 'J10', 'F04', 60),
('MK014', '24-000010-2', 'J10', 'F04', 60),
('MK015', '24-000010-2', 'J10', 'F04', 60),
('MK006', '24-000025-2', 'J04', 'F02', NULL),
('MK006', '24-000016-2', 'J03', 'F03', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perpustakaan`
--

CREATE TABLE `perpustakaan` (
  `ID_Buku` char(5) NOT NULL,
  `Judul` varchar(255) NOT NULL,
  `Pengarang` varchar(100) DEFAULT NULL,
  `Penerbit` varchar(100) DEFAULT NULL,
  `Tahun_Terbit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `perpustakaan`
--

INSERT INTO `perpustakaan` (`ID_Buku`, `Judul`, `Pengarang`, `Penerbit`, `Tahun_Terbit`) VALUES
('B0001', 'Sit impedit sint.', 'R.M. Lega Hardiansyah, S.Psi', 'PT Marbun Persero Tbk', 1995),
('B0002', 'Assumenda veniam.', 'Ir. Oskar Andriani, M.Ak', 'UD Fujiati', 2000),
('B0003', 'Eaque corporis voluptatem.', 'Candrakanta Nasyiah, M.Pd', 'PD Pratiwi Prasasta Persero Tbk', 2015),
('B0004', 'Dolore repellat modi nisi quae.', 'T. Bancar Nurdiyanti', 'CV Pertiwi Dongoran Tbk', 1991),
('B0005', 'Nesciunt suscipit accusantium.', 'Wulan Andriani, S.Psi', 'UD Saragih Wahyudin Persero Tbk', 2015),
('B0006', 'Incidunt quae est.', 'Drs. Salsabila Pudjiastuti', 'PD Pranowo Purnawati', 1996),
('B0007', 'Adipisci aspernatur molestias quam.', 'R. Citra Suryono, S.E.I', 'CV Uwais Tbk', 2017),
('B0008', 'Architecto hic possimus a tempore.', 'Tgk. Putri Waluyo', 'CV Padmasari', 2009),
('B0009', 'Perferendis dicta non.', 'Gilda Lazuardi', 'PD Yuniar Tbk', 2008),
('B0010', 'Temporibus eveniet.', 'Clara Mardhiyah', 'Perum Astuti', 2011);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`NIM`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`NIDN`),
  ADD KEY `ID_Jurusan` (`ID_Jurusan`);

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`ID_Fakultas`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`ID_Jurusan`),
  ADD KEY `ID_Fakultas` (`ID_Fakultas`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`ID_Kelas`),
  ADD KEY `Kode_MK` (`Kode_MK`),
  ADD KEY `NIDN` (`NIDN`);

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`ID_KRS`),
  ADD KEY `ID_Kelas` (`ID_Kelas`),
  ADD KEY `fk_krs_matakuliah` (`Kode_MK`),
  ADD KEY `fk_krs_nim` (`NIM`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`),
  ADD KEY `ID_Jurusan` (`ID_Jurusan`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`Kode_MK`),
  ADD KEY `ID_Jurusan` (`ID_Jurusan`),
  ADD KEY `NIDN` (`NIDN`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD KEY `kode_MK` (`kode_MK`),
  ADD KEY `fk_nilai_jurusan` (`ID_Jurusan`),
  ADD KEY `fk_nilai_fakultas` (`ID_Fakultas`),
  ADD KEY `fk_nilai_nim` (`NIM`);

--
-- Indeks untuk tabel `perpustakaan`
--
ALTER TABLE `perpustakaan`
  ADD PRIMARY KEY (`ID_Buku`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `krs`
--
ALTER TABLE `krs`
  MODIFY `ID_KRS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`);

--
-- Ketidakleluasaan untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`ID_Jurusan`) REFERENCES `jurusan` (`ID_Jurusan`);

--
-- Ketidakleluasaan untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD CONSTRAINT `jurusan_ibfk_1` FOREIGN KEY (`ID_Fakultas`) REFERENCES `fakultas` (`ID_Fakultas`);

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`Kode_MK`) REFERENCES `matakuliah` (`Kode_MK`),
  ADD CONSTRAINT `kelas_ibfk_2` FOREIGN KEY (`NIDN`) REFERENCES `dosen` (`NIDN`);

--
-- Ketidakleluasaan untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `fk_krs_matakuliah` FOREIGN KEY (`Kode_MK`) REFERENCES `matakuliah` (`Kode_MK`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_krs_nim` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`),
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`ID_Kelas`) REFERENCES `kelas` (`ID_Kelas`);

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`ID_Jurusan`) REFERENCES `jurusan` (`ID_Jurusan`);

--
-- Ketidakleluasaan untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD CONSTRAINT `matakuliah_ibfk_1` FOREIGN KEY (`ID_Jurusan`) REFERENCES `jurusan` (`ID_Jurusan`),
  ADD CONSTRAINT `matakuliah_ibfk_2` FOREIGN KEY (`NIDN`) REFERENCES `dosen` (`NIDN`);

--
-- Ketidakleluasaan untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `fk_nilai_fakultas` FOREIGN KEY (`ID_Fakultas`) REFERENCES `fakultas` (`ID_Fakultas`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nilai_jurusan` FOREIGN KEY (`ID_Jurusan`) REFERENCES `jurusan` (`ID_Jurusan`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_nilai_nim` FOREIGN KEY (`NIM`) REFERENCES `mahasiswa` (`NIM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`kode_MK`) REFERENCES `matakuliah` (`Kode_MK`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
