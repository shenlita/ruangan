-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2018 at 01:25 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gorilla`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'gorilla', 'gorillagorilla'),
(2, 'kenji', 'kenjikenji');

-- --------------------------------------------------------

--
-- Table structure for table `formulirpeminjaman`
--

CREATE TABLE `formulirpeminjaman` (
  `idformulir` int(10) NOT NULL,
  `noruangan` varchar(10) NOT NULL,
  `idUser` varchar(10) NOT NULL,
  `namaacara` text NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formulirpeminjaman`
--

INSERT INTO `formulirpeminjaman` (`idformulir`, `noruangan`, `idUser`, `namaacara`, `waktu`) VALUES
(1, '201', '2016081013', 'percobaan testing', '2018-05-22 04:00:00'),
(2, '12', 'ffdfdff', 'gcfgdcgfdg', '2018-01-01 01:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `idUser` varchar(10) NOT NULL,
  `idFormulir` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `persetujuan` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ruangan`
--

CREATE TABLE `ruangan` (
  `noruangan` varchar(10) NOT NULL,
  `statusruangan` varchar(10) NOT NULL,
  `kursi` int(11) NOT NULL,
  `meja` int(11) NOT NULL,
  `proyektor` int(11) NOT NULL,
  `ac` int(11) NOT NULL,
  `komputer` int(11) NOT NULL,
  `papantulis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(2) NOT NULL,
  `jabatan` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `jabatan`, `nama`, `password`) VALUES
(1, 'admin', 'admin', 'admin'),
(3, 'bap', 'bap', 'bap'),
(4, 'satpam', 'satpam', 'satpam'),
(5, 'peminjam', 'peminjam', 'peminjam'),
(6, 'karpodi', 'kaprodi', 'kaprodi'),
(7, 'umum', 'umum', 'umum'),
(8, 'rektor', 'rektor', 'rektor'),
(9, 'satpam', 'satpam', 'satpam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `formulirpeminjaman`
--
ALTER TABLE `formulirpeminjaman`
  ADD PRIMARY KEY (`idformulir`);

--
-- Indexes for table `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`noruangan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `formulirpeminjaman`
--
ALTER TABLE `formulirpeminjaman`
  MODIFY `idformulir` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
