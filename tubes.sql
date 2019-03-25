-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2018 at 04:35 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `nim` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`username`, `password`, `nim`) VALUES
('admin', 'admin', 21);

-- --------------------------------------------------------

--
-- Table structure for table `fakultas`
--

CREATE TABLE `fakultas` (
  `idFakultas` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fakultas`
--

INSERT INTO `fakultas` (`idFakultas`, `nama`) VALUES
('FEB', 'Fakultas Ekonomi dan Bisnis'),
('FIF', 'Fakultas Informatika'),
('FIT', 'Fakultas Ilmu Terapan'),
('FRI', 'Fakultas Rekayasa Industri'),
('FTE', 'Fakultas Teknik Elektro');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nama` varchar(30) NOT NULL,
  `nim` int(10) NOT NULL,
  `jenisKelamin` varchar(6) NOT NULL,
  `idFakultas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nama`, `nim`, `jenisKelamin`, `idFakultas`) VALUES
('A', 1, 'Pria', 'FIF'),
('B', 2, 'Wanita', 'FIF'),
('C', 3, 'Pria', 'FIF'),
('D', 4, 'Pria', 'FIT'),
('E', 5, 'Pria', 'FIF'),
('F', 6, 'Wanita', 'FEB'),
('G', 7, 'Wanita', 'FTE'),
('H', 8, 'Pria', 'FRI'),
('I', 9, 'Pria', 'FRI'),
('J', 10, 'Pria', 'FTE'),
('M', 13, 'Pria', 'FEB'),
('N', 14, 'Wanita', 'FRI'),
('O', 15, 'Wanita', 'FIF'),
('P', 16, 'Pria', 'FTE'),
('Q', 17, 'Pria', 'FEB'),
('R', 18, 'Wanita', 'FIF'),
('S', 19, 'Pria', 'FRI'),
('T', 20, 'Wanita', 'FIF'),
('U', 21, 'Pria', 'FIF'),
('Faris', 22, 'Pria', 'FIT'),
('sukonto', 69, 'Pria', 'FRI'),
('KOMANG', 100, 'Pria', 'FRI'),
('sacbjk', 1234, 'Pria', 'FIF'),
('asdfg', 10000, 'Pria', 'FIF'),
('Nanang', 133412, 'Pria', 'FEB'),
('Muhammad Faris Luthfi', 321312, 'Pria', 'FTE');

-- --------------------------------------------------------

--
-- Table structure for table `paslon`
--

CREATE TABLE `paslon` (
  `idPaslon` varchar(10) NOT NULL,
  `ketua` int(10) NOT NULL,
  `wakil` int(10) NOT NULL,
  `visi` varchar(500) NOT NULL,
  `misi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paslon`
--

INSERT INTO `paslon` (`idPaslon`, `ketua`, `wakil`, `visi`, `misi`) VALUES
('1', 1, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
('2', 3, 4, '(visi2)', '(misi2)'),
('3', 5, 6, '(visi3)', '(misi3)');

-- --------------------------------------------------------

--
-- Table structure for table `pemilih`
--

CREATE TABLE `pemilih` (
  `idPemilih` varchar(10) NOT NULL,
  `nim` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemilih`
--

INSERT INTO `pemilih` (`idPemilih`, `nim`) VALUES
('p1', 7),
('p2', 8),
('p3', 9),
('p4', 10),
('p7', 13),
('p8', 14),
('p9', 15),
('p10', 16),
('p11', 17),
('p12', 18),
('p13', 19),
('p14', 20),
('p16', 22),
('p69', 69),
('p100', 100),
('p1234', 1234),
('p10000', 10000),
('p133412', 133412),
('p321312', 321312);

-- --------------------------------------------------------

--
-- Table structure for table `suara`
--

CREATE TABLE `suara` (
  `idSuara` varchar(10) NOT NULL,
  `idFakultas` varchar(10) NOT NULL,
  `idPaslon` varchar(10) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suara`
--

INSERT INTO `suara` (`idSuara`, `idFakultas`, `idPaslon`, `jumlah`) VALUES
('FEB1', 'FEB', '1', 0),
('FEB2', 'FEB', '2', 700),
('FEB3', 'FEB', '3', 0),
('FIF1', 'FIF', '1', 500),
('FIF2', 'FIF', '2', 0),
('FIF3', 'FIF', '3', 45),
('FIT1', 'FIT', '1', 0),
('FIT2', 'FIT', '2', 0),
('FIT3', 'FIT', '3', 1000),
('FRI1', 'FRI', '1', 0),
('FRI2', 'FRI', '2', 0),
('FRI3', 'FRI', '3', 0),
('FTE1', 'FTE', '1', 0),
('FTE2', 'FTE', '2', 0),
('FTE3', 'FTE', '3', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`username`),
  ADD KEY `akun_fk` (`nim`);

--
-- Indexes for table `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`idFakultas`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `mahasiswa_fk1` (`idFakultas`);

--
-- Indexes for table `paslon`
--
ALTER TABLE `paslon`
  ADD PRIMARY KEY (`idPaslon`),
  ADD UNIQUE KEY `ketua` (`ketua`),
  ADD UNIQUE KEY `wakil` (`wakil`),
  ADD KEY `paslon_fk1` (`ketua`) USING BTREE;

--
-- Indexes for table `pemilih`
--
ALTER TABLE `pemilih`
  ADD PRIMARY KEY (`idPemilih`),
  ADD KEY `pemilih_fk` (`nim`);

--
-- Indexes for table `suara`
--
ALTER TABLE `suara`
  ADD PRIMARY KEY (`idSuara`),
  ADD KEY `suara_fk1` (`idFakultas`),
  ADD KEY `suara_fk2` (`idPaslon`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akun`
--
ALTER TABLE `akun`
  ADD CONSTRAINT `akun_fk` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON UPDATE CASCADE;

--
-- Constraints for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_fk1` FOREIGN KEY (`idFakultas`) REFERENCES `fakultas` (`idFakultas`) ON UPDATE CASCADE;

--
-- Constraints for table `paslon`
--
ALTER TABLE `paslon`
  ADD CONSTRAINT `paslon_fk1` FOREIGN KEY (`ketua`) REFERENCES `mahasiswa` (`nim`) ON UPDATE CASCADE,
  ADD CONSTRAINT `paslon_fk2` FOREIGN KEY (`wakil`) REFERENCES `mahasiswa` (`nim`) ON UPDATE CASCADE;

--
-- Constraints for table `pemilih`
--
ALTER TABLE `pemilih`
  ADD CONSTRAINT `pemilih_fk` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON UPDATE CASCADE;

--
-- Constraints for table `suara`
--
ALTER TABLE `suara`
  ADD CONSTRAINT `suara_fk1` FOREIGN KEY (`idFakultas`) REFERENCES `fakultas` (`idFakultas`) ON UPDATE CASCADE,
  ADD CONSTRAINT `suara_fk2` FOREIGN KEY (`idPaslon`) REFERENCES `paslon` (`idPaslon`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
