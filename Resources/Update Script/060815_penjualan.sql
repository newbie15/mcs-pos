-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 06, 2015 at 07:46 AM
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
-- Table structure for table `penjualan`
--

DROP TABLE IF EXISTS `penjualan`;
CREATE TABLE IF NOT EXISTS `penjualan` (
  `id_penjualan` int(11) NOT NULL AUTO_INCREMENT,
  `id_departemen` int(11) NOT NULL,
  `id_user` int(11) NOT NULL COMMENT 'Petugas Kasir',
  `id_customer` int(11) NOT NULL,
  `kode_transaksi` varchar(45) DEFAULT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `id_pesanan_penjualan` int(11) DEFAULT NULL,
  `biaya_lain` int(11) NOT NULL DEFAULT '0',
  `biaya_potongan` int(11) NOT NULL DEFAULT '0',
  `total_biaya` int(11) NOT NULL DEFAULT '0' COMMENT 'total biaya penjualan',
  `total_biaya_akhir` int(11) NOT NULL DEFAULT '0' COMMENT 'total biaya yg harus dibayar',
  `jumlah_item` int(11) NOT NULL DEFAULT '0',
  `bayar_tunai` int(11) NOT NULL DEFAULT '0',
  `bayar_kembali` int(11) NOT NULL DEFAULT '0',
  `is_dibayar` tinyint(1) NOT NULL DEFAULT '0',
  `is_refund` int(1) NOT NULL DEFAULT '0',
  `waktu_refund` datetime DEFAULT NULL,
  `id_user_refund` int(11) DEFAULT NULL,
  `biaya_potongan_refund` int(11) NOT NULL DEFAULT '0',
  `total_biaya_refund` int(11) NOT NULL DEFAULT '0' COMMENT 'total biaya retur',
  `is_saved` tinyint(1) NOT NULL DEFAULT '0',
  `keterangan_save` varchar(50) DEFAULT NULL,
  `guid` char(36) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id_penjualan`,`id_departemen`) USING BTREE,
  UNIQUE KEY `kode_transaksi` (`kode_transaksi`),
  KEY `id_departemen` (`id_departemen`),
  KEY `id_user` (`id_user`),
  KEY `id_customer` (`id_customer`),
  KEY `id_user_refund` (`id_user_refund`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=67 ;

--
-- Triggers `penjualan`
--
DROP TRIGGER IF EXISTS `penjualan_bi`;
DELIMITER //
CREATE TRIGGER `penjualan_bi` BEFORE INSERT ON `penjualan`
 FOR EACH ROW -- Set waktu created
set new.created = current_timestamp, 
	new.guid = (select uuid())
//
DELIMITER ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id_departemen`),
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `penjualan_ibfk_3` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `penjualan_ibfk_4` FOREIGN KEY (`id_user_refund`) REFERENCES `user` (`id_user`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
