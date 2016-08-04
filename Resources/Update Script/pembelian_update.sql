-- phpMyAdmin SQL Dump
-- version 4.0.10.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 09, 2015 at 04:46 AM
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
-- Table structure for table `pembelian`
--

DROP TABLE IF EXISTS `pembelian`;
CREATE TABLE IF NOT EXISTS `pembelian` (
  `id_pembelian` int(11) NOT NULL AUTO_INCREMENT,
  `id_departemen` int(11) NOT NULL,
  `id_user` int(11) NOT NULL COMMENT 'User yg melakukan insert',
  `id_supplier` int(11) NOT NULL,
  `kode_transaksi` varchar(45) NOT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `id_pesanan_pembelian` int(11) DEFAULT NULL,
  `biaya_lain` int(11) NOT NULL DEFAULT '0',
  `biaya_potongan` int(11) NOT NULL DEFAULT '0',
  `total_biaya` int(11) NOT NULL DEFAULT '0',
  `total_biaya_akhir` int(11) NOT NULL DEFAULT '0',
  `jumlah_item` int(11) NOT NULL DEFAULT '0',
  `guid` char(36) DEFAULT NULL,
  `created` datetime DEFAULT NULL COMMENT 'di isi via Trigger',
  `modified` datetime DEFAULT NULL COMMENT 'di isi via Trigger',
  PRIMARY KEY (`id_pembelian`,`id_departemen`) USING BTREE,
  KEY `fk_pembelian_supplier1_idx` (`id_supplier`),
  KEY `fk_pembelian_pesanan_pembelian1_idx` (`id_pesanan_pembelian`),
  KEY `fk_pembelian_departemen1_idx` (`id_departemen`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Triggers `pembelian`
--
DROP TRIGGER IF EXISTS `pembelian_bi`;
DELIMITER //
CREATE TRIGGER `pembelian_bi` BEFORE INSERT ON `pembelian`
 FOR EACH ROW BEGIN
	SET new.created = current_timestamp(),
		new.guid = (select uuid());
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `pembelian_bu`;
DELIMITER //
CREATE TRIGGER `pembelian_bu` BEFORE UPDATE ON `pembelian`
 FOR EACH ROW BEGIN
	SET new.modified = current_timestamp();
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_detail`
--

DROP TABLE IF EXISTS `pembelian_detail`;
CREATE TABLE IF NOT EXISTS `pembelian_detail` (
  `id_pembelian_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembelian` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `jumlah` float NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  PRIMARY KEY (`id_pembelian_detail`),
  UNIQUE KEY `uq_item_pembelian` (`id_pembelian`,`id_item`,`id_satuan`),
  KEY `fk_pembelian_detail_pembelian1_idx` (`id_pembelian`),
  KEY `fk_pembelian_detail_item1_idx` (`id_item`),
  KEY `id_satuan` (`id_satuan`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `fk_pembelian_departemen1` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id_departemen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pembelian_pesanan_pembelian1` FOREIGN KEY (`id_pesanan_pembelian`) REFERENCES `pesanan_pembelian` (`id_pesanan_pembelian`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pembelian_supplier1` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD CONSTRAINT `fk_pembelian_detail_item1` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pembelian_detail_pembelian1` FOREIGN KEY (`id_pembelian`) REFERENCES `pembelian` (`id_pembelian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pembelian_detail_satuan1` FOREIGN KEY (`id_satuan`) REFERENCES `satuan` (`id_satuan`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
