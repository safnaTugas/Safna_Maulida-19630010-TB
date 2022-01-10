-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 09:33 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

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
-- Table structure for table `tb_pc`
--

CREATE TABLE `tb_pc` (
  `kd_pc` varchar(5) NOT NULL,
  `merek` varchar(10) NOT NULL,
  `ram` int(5) NOT NULL,
  `penyimpanan` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pc`
--

INSERT INTO `tb_pc` (`kd_pc`, `merek`, `ram`, `penyimpanan`) VALUES
('PC01', 'Asus', 8, 512),
('PC02', 'Asus', 8, 1000),
('PC03', 'Lenovo', 8, 256),
('PC04', 'Lenovo', 16, 1000),
('PC05', 'Asus', 16, 1000),
('PC06', 'Lenovo', 4, 500),
('PC07', 'Asus', 12, 512);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penyewa`
--

CREATE TABLE `tb_penyewa` (
  `kd_penyewa` varchar(5) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `no_telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penyewa`
--

INSERT INTO `tb_penyewa` (`kd_penyewa`, `nama`, `alamat`, `no_telp`) VALUES
('PW01', 'Yuni', 'Banjarbaru Utara', '084512348564'),
('PW02', 'Ilham', 'Banjarbaru Selatan', '081245961247'),
('PW03', 'Wahyu', 'Martapura Barat', '081945234572'),
('PW04', 'Nesa', 'Martapura timur', '086945817413'),
('PW05', 'Puteri', 'Bincau', '084574617928'),
('PW06', 'Iqbal', 'Martapura Timur', '081349440912');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `kodepc` varchar(10) NOT NULL,
  `merek` varchar(20) NOT NULL,
  `ram` varchar(200) NOT NULL,
  `penyimpanan` varchar(200) NOT NULL,
  `kodepenyewa` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `tanggalsewa` date NOT NULL,
  `tanggalkembali` date NOT NULL,
  `hargasewa` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`kodepc`, `merek`, `ram`, `penyimpanan`, `kodepenyewa`, `nama`, `alamat`, `telepon`, `tanggalsewa`, `tanggalkembali`, `hargasewa`) VALUES
('PC01', 'Asus', '12', '256', 'P03', 'Toni', 'Loktabat Utara', '0987564512763', '2021-12-04', '2021-12-06', 200000),
('PC03', 'Lenovo', '8', '256', 'P05', 'Zaka', 'Jl. Sidodadi', '0987564321458', '2021-12-07', '2021-12-10', 400000),
('PC04', 'HP', '11', '256', 'P04', 'Ilham', 'Banjarbaru Asri', '0967543215467', '2021-12-17', '2021-12-18', 100000),
('PC05', 'Acer', '8', '256', 'P06', 'Dana', 'Jl. Karamunting', '0987567432134', '2021-12-16', '2021-12-18', 200000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pc`
--
ALTER TABLE `tb_pc`
  ADD PRIMARY KEY (`kd_pc`);

--
-- Indexes for table `tb_penyewa`
--
ALTER TABLE `tb_penyewa`
  ADD PRIMARY KEY (`kd_penyewa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
