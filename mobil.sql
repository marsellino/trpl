-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2017 at 06:29 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `datamobil`
--

CREATE TABLE `datamobil` (
  `idmobil` int(11) NOT NULL,
  `tanggalmasuk` date NOT NULL,
  `jenistipe` varchar(20) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahunproduksi` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datamobil`
--

INSERT INTO `datamobil` (`idmobil`, `tanggalmasuk`, `jenistipe`, `warna`, `tahunproduksi`, `harga`, `jumlah`) VALUES
(1, '2014-02-04', 'avanza', 'merah', 2013, 130000000, 5),
(2, '2014-04-01', 'avanza', 'putih', 2013, 130000000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `datashowroom`
--

CREATE TABLE `datashowroom` (
  `idshowroom` int(11) NOT NULL,
  `namashowroom` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `nohp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datashowroom`
--

INSERT INTO `datashowroom` (`idshowroom`, `namashowroom`, `alamat`, `nohp`) VALUES
(1, 'madona', 'jember', 812938299);

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `idlevel` int(11) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`idlevel`, `level`) VALUES
(1, 'showroom'),
(2, 'supplier');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `idpemesanan` int(11) NOT NULL,
  `tglpemesanan` date NOT NULL,
  `namashowroom` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `nohp` int(11) NOT NULL,
  `jenistipe` varchar(11) NOT NULL,
  `warna` varchar(20) NOT NULL,
  `tahunproduksi` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `totalharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `idlevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`, `idlevel`) VALUES
(111, 'showroom', 'showroom', 1),
(112, 'supplier', 'supplier', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datamobil`
--
ALTER TABLE `datamobil`
  ADD PRIMARY KEY (`idmobil`);

--
-- Indexes for table `datashowroom`
--
ALTER TABLE `datashowroom`
  ADD PRIMARY KEY (`idshowroom`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`idlevel`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`idpemesanan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datamobil`
--
ALTER TABLE `datamobil`
  MODIFY `idmobil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `datashowroom`
--
ALTER TABLE `datashowroom`
  MODIFY `idshowroom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `idlevel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `idpemesanan` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
