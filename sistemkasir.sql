-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2022 at 01:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemkasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangpenjualan`
--

CREATE TABLE `barangpenjualan` (
  `no_faktur` varchar(10) NOT NULL,
  `kode_barang` varchar(30) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` int(10) NOT NULL,
  `qty` int(10) NOT NULL,
  `total1` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barangpenjualan`
--

INSERT INTO `barangpenjualan` (`no_faktur`, `kode_barang`, `nama_barang`, `harga`, `qty`, `total1`) VALUES
('F0001', 'A0010', 'HAND STABILIZER', 10000, 3, 30000),
('F0001', 'A006', 'MIE SEDAAP GORENG', 2500, 1, 2500),
('F0002', 'A003', 'MIE SUKSES GORENG AYAM BWG', 3000, 1, 3000),
('F0003', 'A005', 'SENSI MASK ', 2000, 2, 4000),
('F0004', 'A009', 'TOLAK ANGIN', 2500, 2, 5000),
('F0004', 'A008', 'COCA-COLA 1 Liter', 13000, 1, 13000),
('F0005', 'A003', 'MIE SUKSES GORENG AYAM BWG', 3000, 2, 6000),
('F0005', 'A006', 'MIE SEDAAP GORENG', 2500, 5, 12500),
('F0006', 'A009', 'TOLAK ANGIN', 2500, 5, 12500),
('F0007', 'A004', 'DETOL HAND SANITIZER 100ml', 15000, 1, 15000),
('F0008', 'A002', 'SARIMI AYAM BAWANG', 2200, 1, 2200),
('F0009', 'A0010', 'HAND STABILIZER', 10000, 1, 10000),
('F0010', 'A004', 'DETOL HAND SANITIZER 100ml', 15000, 1, 15000),
('F0010', 'A0010', 'HAND STABILIZER', 10000, 1, 10000),
('F0011', 'A007', 'FITMEE MIE KOREA', 19500, 2, 39000),
('F0012', 'A006', 'MIE SEDAAP GORENG', 2500, 1, 2500),
('F0013', 'A004', 'DETOL HAND SANITIZER 100ml', 15000, 1, 15000),
('F0014', 'A005', 'SENSI MASK ', 2000, 2, 4000),
('F0015', 'A003', 'MIE SUKSES GORENG AYAM BWG', 3000, 2, 6000),
('F0016', 'A005', 'SENSI MASK ', 2000, 5, 10000),
('F0017', 'A005', 'SENSI MASK ', 2000, 5, 10000),
('F0018', 'A005', 'SENSI MASK ', 2000, 5, 10000),
('F0019', 'A004', 'DETOL HAND SANITIZER 100ml', 15000, 1, 15000),
('F0019', 'A009', 'TOLAK ANGIN', 2500, 2, 5000),
('F0020', 'A009', 'TOLAK ANGIN', 2500, 1, 2500),
('F0021', 'A005', 'SENSI MASK ', 2000, 2, 4000),
('F0022', 'A008', 'COCA-COLA 1 Liter', 13000, 1, 13000),
('F0023', 'A009', 'TOLAK ANGIN', 2500, 2, 5000),
('F0024', 'A009', 'TOLAK ANGIN', 2500, 1, 2500),
('F0024', 'A006', 'MIE SEDAAP GORENG', 2500, 2, 5000),
('F0025', 'A006', 'MIE SEDAAP GORENG', 2500, 1, 2500),
('F0026', 'A0001', 'INDOMIE GORENG', 2500, 10, 25000),
('F0027', 'A006', 'MIE SEDAAP GORENG', 2500, 1, 2500),
('F0028', 'A005', 'SENSI MASK ', 2000, 3, 6000),
('F0028', 'A006', 'MIE SEDAAP GORENG', 2500, 1, 2500),
('F0029', 'A007', 'FITMEE MIE KOREA', 19500, 1, 19500);

-- --------------------------------------------------------

--
-- Table structure for table `cicil`
--

CREATE TABLE `cicil` (
  `no_cicil` varchar(10) CHARACTER SET latin1 NOT NULL,
  `kasir` varchar(30) CHARACTER SET latin1 NOT NULL,
  `id_pelanggan` varchar(10) CHARACTER SET latin1 NOT NULL,
  `nama_pelanggan` varchar(255) CHARACTER SET latin1 NOT NULL,
  `diskon` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kurang` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `masterbarang`
--

CREATE TABLE `masterbarang` (
  `kode_barang` varchar(30) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `stok` int(10) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `masterbarang`
--

INSERT INTO `masterbarang` (`kode_barang`, `nama_barang`, `stok`, `harga`) VALUES
('A0001', 'INDOMIE GORENG', 90, 2500),
('A0010', 'HAND STABILIZER', 142, 10000),
('A002', 'SARIMI AYAM BAWANG', 99, 2200),
('A003', 'MIE SUKSES GORENG AYAM BWG', 95, 3000),
('A004', 'DETOL HAND SANITIZER 100ml', 85, 15000),
('A005', 'SENSI MASK ', 235, 2000),
('A006', 'MIE SEDAAP GORENG', 84, 2500),
('A007', 'FITMEE MIE KOREA', 94, 19500),
('A008', 'COCA-COLA 1 Liter', 96, 13000),
('A009', 'TOLAK ANGIN', 187, 2500),
('A011', 'INDOMIE SEBLAK', 200, 2500),
('A012', 'SABUN DETOL', 100, 2500);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nomor` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `nomor`) VALUES
('P0001', 'UMUM', 'UMUM', 'UMUM'),
('P0002', 'AHOK', 'PEKALONGAN', '+6289626562656'),
('P0003', 'PRABOWO', 'PEKALONGAN', '+62864964656'),
('P0004', 'BASUKI', 'PEKALONGAN', '+6288928922');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `no_faktur` varchar(10) NOT NULL,
  `kasir` varchar(30) NOT NULL,
  `id_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `diskon` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `bayar` int(10) NOT NULL,
  `kembali` int(10) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`no_faktur`, `kasir`, `id_pelanggan`, `nama_pelanggan`, `diskon`, `total`, `bayar`, `kembali`, `tanggal`) VALUES
('F0001', 'Riswanda Himawan', 'P0002', 'AHOK', 0, 32500, 35000, 2500, '2020-03-22'),
('F0002', 'Riswanda Himawan', 'P0002', 'UMUM', 0, 3000, 5000, 2000, '2020-03-22'),
('F0003', 'Riswanda Himawan', 'P0001', 'UMUM', 0, 4000, 5000, 1000, '2020-03-22'),
('F0004', 'Riswanda Himawan', 'P0001', 'UMUM', 0, 18000, 20000, 2000, '2020-03-22'),
('F0005', 'Riswanda Himawan', 'P0003', 'PRABOWO', 0, 18500, 20000, 1500, '2020-03-22'),
('F0006', 'Riswanda Himawan', 'P0001', 'UMUM', 0, 12500, 15000, 2500, '2020-03-23'),
('F0007', 'Riswanda Himawan', 'P0001', 'UMUM', 0, 15000, 20000, 5000, '2020-03-23'),
('F0008', 'Riswanda Himawan', 'P0001', 'UMUM', 0, 2200, 3000, 800, '2020-03-23'),
('F0009', 'Riswanda Himawan', 'P0001', 'UMUM', 0, 10000, 10000, 0, '2020-03-23'),
('F0010', 'Manx Asep', 'P0003', 'PRABOWO', 0, 25000, 30000, 5000, '2020-03-24'),
('F0011', 'Manx Asep', 'P0003', 'UMUM', 0, 39000, 40000, 1000, '2020-03-24'),
('F0012', 'Manx Asep', 'P0003', 'UMUM', 0, 2500, 3000, 500, '2020-03-24'),
('F0013', 'Manx Asep', 'P0002', 'AHOK', 0, 15000, 20000, 5000, '2020-03-25'),
('F0014', 'Manx Asep', 'P0002', 'UMUM', 0, 4000, 4000, 0, '2020-03-25'),
('F0015', 'Riswanda Himawan', 'P0001', 'UMUM', 0, 6000, 7000, 1000, '2020-03-26'),
('F0016', 'Riswanda Himawan', 'P0001', 'UMUM', 0, 10000, 10000, 0, '2020-03-27'),
('F0017', 'Riswanda Himawan', 'P0002', 'AHOK', 0, 10000, 15000, 5000, '2020-03-27'),
('F0018', 'Riswanda Himawan', 'P0001', 'UMUM', 0, 10000, 15000, 5000, '2020-03-28'),
('F0019', 'Riswanda Himawan', 'P0001', 'UMUM', 0, 20000, 20000, 0, '2020-03-28'),
('F0020', 'Riswanda Himawan', 'P0001', 'UMUM', 0, 2500, 3000, 500, '2020-03-28'),
('F0021', 'Riswanda Himawan', 'P0001', 'UMUM', 0, 4000, 5000, 1000, '2020-03-29'),
('F0022', 'Riswanda Himawan', 'P0002', 'AHOK', 0, 13000, 15000, 2000, '2020-03-29'),
('F0023', 'Riswanda Himawan', 'P0002', 'UMUM', 0, 5000, 5000, 0, '2020-03-29'),
('F0024', 'Riswanda Himawan', 'P0002', 'UMUM', 0, 7500, 10000, 2500, '2020-03-29'),
('F0025', 'Riswanda Himawan', 'P0002', 'UMUM', 0, 2500, 3000, 500, '2020-03-29'),
('F0026', 'Riswanda Himawan', 'P0002', 'UMUM', 0, 25000, 30000, 5000, '2020-03-29'),
('F0027', 'Riswanda Himawan', 'P0001', 'UMUM', 0, 2500, 3000, 500, '2020-03-29'),
('F0028', 'Riswanda Himawan', 'P0001', 'UMUM', 0, 8500, 10000, 1500, '2020-03-29'),
('F0029', 'Kamidi', 'P0001', 'UMUM', 0, 19500, 20000, 500, '2020-03-29');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nohp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `nohp`) VALUES
(1, 'admin', 'admin', 'Riswanda Himawan', '+6289673449080'),
(2, 'Asep', 'Asep', 'Manx Asep', '0854862659'),
(3, 'kamidi', 'kamidi', 'Kamidi', '+628987242422');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangpenjualan`
--
ALTER TABLE `barangpenjualan`
  ADD KEY `kode_barang` (`kode_barang`),
  ADD KEY `no_faktur` (`no_faktur`);

--
-- Indexes for table `cicil`
--
ALTER TABLE `cicil`
  ADD PRIMARY KEY (`no_cicil`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `masterbarang`
--
ALTER TABLE `masterbarang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`no_faktur`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barangpenjualan`
--
ALTER TABLE `barangpenjualan`
  ADD CONSTRAINT `barangpenjualan_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `masterbarang` (`kode_barang`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
