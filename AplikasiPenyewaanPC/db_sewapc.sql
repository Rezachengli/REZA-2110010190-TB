-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2024 at 07:40 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sewapc`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_datapc`
--

CREATE TABLE `tb_datapc` (
  `NoPC` int(15) NOT NULL,
  `MerekPC` varchar(15) NOT NULL,
  `JenisPC` varchar(15) NOT NULL,
  `HargaSewa` int(15) NOT NULL,
  `Stok` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_datapc`
--

INSERT INTO `tb_datapc` (`NoPC`, `MerekPC`, `JenisPC`, `HargaSewa`, `Stok`) VALUES
(1, 'komputer', 'Gaming', 100, 2),
(2, 'laptopkeren', 'Gaming', 100000, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis`
--

CREATE TABLE `tb_jenis` (
  `id_jenis` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_jenis`
--

INSERT INTO `tb_jenis` (`id_jenis`, `nama`) VALUES
(1, 'Gaming'),
(2, 'Kentang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembeli`
--

CREATE TABLE `tb_pembeli` (
  `IDPembeli` int(11) NOT NULL,
  `NamaLengkap` varchar(20) NOT NULL,
  `JenisKelamin` varchar(10) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `NoTelpon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pembeli`
--

INSERT INTO `tb_pembeli` (`IDPembeli`, `NamaLengkap`, `JenisKelamin`, `Alamat`, `NoTelpon`) VALUES
(1, 'reza', 'Laki-Laki', 'vetran', '0897574'),
(2, 'reja', 'Laki-Laki', 'vetran', '08766');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksisewa`
--

CREATE TABLE `tb_transaksisewa` (
  `IDSewa` int(20) NOT NULL,
  `IDPembeli` int(20) NOT NULL,
  `NoPC` varchar(50) NOT NULL,
  `Harga` int(15) NOT NULL,
  `HariSewa` varchar(20) NOT NULL,
  `Biaya` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_transaksisewa`
--

INSERT INTO `tb_transaksisewa` (`IDSewa`, `IDPembeli`, `NoPC`, `Harga`, `HariSewa`, `Biaya`) VALUES
(12, 13, '55', 100000, '1bulan', 200000),
(13, 14, '10', 100000, '2bulan', 20000000),
(19, 12, '21', 10000, '1bulan', 2000000),
(114, 4121, '55', 10000, '2bulan', 10000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_datapc`
--
ALTER TABLE `tb_datapc`
  ADD PRIMARY KEY (`NoPC`);

--
-- Indexes for table `tb_jenis`
--
ALTER TABLE `tb_jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `tb_pembeli`
--
ALTER TABLE `tb_pembeli`
  ADD PRIMARY KEY (`IDPembeli`);

--
-- Indexes for table `tb_transaksisewa`
--
ALTER TABLE `tb_transaksisewa`
  ADD PRIMARY KEY (`IDSewa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
