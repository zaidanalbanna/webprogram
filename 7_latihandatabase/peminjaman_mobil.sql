-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2020 at 12:06 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualanmobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `noplat` varchar(8) NOT NULL,
  `tahun` year(4) NOT NULL,
  `tarif` varchar(30) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`noplat`, `tahun`, `tarif`, `status`) VALUES
('H 2995 L', 2018, 'Rp.1.000.000', 'Baik'),
('H 3660 A', 2019, 'Rp.1.500.000', 'Baik'),
('H 9798 K', 2015, 'Rp.800.000', 'Baik');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `noktp` int(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `telepon` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sopir`
--

CREATE TABLE `sopir` (
  `idsopir` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `sim` int(20) NOT NULL,
  `tarif` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tipekendaraan`
--

CREATE TABLE `tipekendaraan` (
  `idtype` int(10) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `notransaksi` int(10) NOT NULL,
  `tglpesan` date NOT NULL,
  `tglpinjam` date NOT NULL,
  `tglkembalirencana` date NOT NULL,
  `jamkembalirencana` time NOT NULL,
  `tglkembalirealisasi` date NOT NULL,
  `jamkembalirealisasi` time NOT NULL,
  `denda` int(20) NOT NULL,
  `kilometerpinjam` int(20) NOT NULL,
  `kilometerkembali` int(20) NOT NULL,
  `bbmpinjam` int(10) NOT NULL,
  `bbmkembali` int(10) NOT NULL,
  `kondisimobilpinjam` text NOT NULL,
  `kondisimobilkembali` text NOT NULL,
  `kerusakan` text NOT NULL,
  `biayakerusakan` int(10) NOT NULL,
  `biayabbm` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`noplat`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`noktp`);

--
-- Indexes for table `sopir`
--
ALTER TABLE `sopir`
  ADD PRIMARY KEY (`idsopir`);

--
-- Indexes for table `tipekendaraan`
--
ALTER TABLE `tipekendaraan`
  ADD PRIMARY KEY (`idtype`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`notransaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sopir`
--
ALTER TABLE `sopir`
  MODIFY `idsopir` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tipekendaraan`
--
ALTER TABLE `tipekendaraan`
  MODIFY `idtype` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `notransaksi` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
