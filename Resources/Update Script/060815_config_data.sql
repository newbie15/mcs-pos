-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 06, 2015 at 07:54 AM
-- Server version: 5.1.59-community
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `app_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `nama` varchar(50) NOT NULL,
  `nilai` mediumtext,
  PRIMARY KEY (`nama`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`nama`, `nilai`) VALUES
('cabang_alamat', 'Chandra Building Lt 1 No 101A'),
('cabang_kode', 'CBG'),
('cabang_kota', 'JAKARTA BARAT'),
('cabang_nama', 'Apotek Surya Glodok'),
('cabang_telp', '021-92687687'),
('template_struk_refund', '[DEPARTEMEN]\r\n[DEPARTEMEN_ALAMAT]\n\r\n[DEPARTEMEN_KOTA]\r\n[DEPARTEMEN_TELP]\r\nDELIVERY ORDER : 0877-8546-3888\r\nNo : [KODE_TRX]   Kasir : [KASIR]\r\n[WAKTU_TRX]\r\n========================================\n\r\n** RETUR BARANG **\r\n========================================\r\n[[ITEM]]\r\n----------------------------------------\r\n[[TOTAL]]');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
