-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: app_pos_nyi_20160228
-- ------------------------------------------------------
-- Server version	5.1.73-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `konsinyasi`
--

DROP TABLE IF EXISTS `konsinyasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `konsinyasi` (
  `id_konsinyasi` int(11) NOT NULL AUTO_INCREMENT,
  `id_departemen` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `kode_transaksi` varchar(45) NOT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `biaya_lain` int(11) NOT NULL DEFAULT '0',
  `total_biaya` int(11) NOT NULL DEFAULT '0',
  `total_biaya_akhir` int(11) NOT NULL DEFAULT '0',
  `jumlah_item` int(11) NOT NULL DEFAULT '0',
  `jatuh_tempo` date NOT NULL,
  `no_informasi` varchar(50) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `guid` char(36) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id_konsinyasi`),
  KEY `id_departemen` (`id_departemen`),
  KEY `id_user` (`id_user`),
  KEY `id_supplier` (`id_supplier`),
  CONSTRAINT `konsinyasi_ibfk_1` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id_departemen`),
  CONSTRAINT `konsinyasi_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `konsinyasi_ibfk_3` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `konsinyasi_detail`
--

DROP TABLE IF EXISTS `konsinyasi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `konsinyasi_detail` (
  `id_konsinyasi_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_konsinyasi` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `jumlah_retur` float NOT NULL DEFAULT '0',
  `jumlah_keluar` float NOT NULL DEFAULT '0',
  `jumlah_bayar` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_konsinyasi_detail`),
  KEY `id_konsinyasi` (`id_konsinyasi`),
  KEY `id_item` (`id_item`),
  KEY `id_satuan` (`id_satuan`),
  CONSTRAINT `konsinyasi_detail_ibfk_1` FOREIGN KEY (`id_konsinyasi`) REFERENCES `konsinyasi` (`id_konsinyasi`),
  CONSTRAINT `konsinyasi_detail_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`),
  CONSTRAINT `konsinyasi_detail_ibfk_3` FOREIGN KEY (`id_satuan`) REFERENCES `satuan` (`id_satuan`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `konsinyasi_retur`
--

DROP TABLE IF EXISTS `konsinyasi_retur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `konsinyasi_retur` (
  `id_konsinyasi_retur` int(11) NOT NULL AUTO_INCREMENT,
  `id_departemen` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `kode_transaksi` varchar(45) NOT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `jumlah_item` int(11) NOT NULL,
  `guid` char(36) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id_konsinyasi_retur`),
  KEY `konsinyasi_retur_fk1` (`id_departemen`),
  KEY `konsinyasi_retur_fk2` (`id_user`),
  KEY `konsinyasi_retur_fk3` (`id_supplier`),
  CONSTRAINT `konsinyasi_retur_fk1` FOREIGN KEY (`id_departemen`) REFERENCES `departemen` (`id_departemen`) ON DELETE NO ACTION,
  CONSTRAINT `konsinyasi_retur_fk2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `konsinyasi_retur_fk3` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `konsinyasi_retur_detail`
--

DROP TABLE IF EXISTS `konsinyasi_retur_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `konsinyasi_retur_detail` (
  `id_konsinyasi_retur_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_konsinyasi_retur` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  PRIMARY KEY (`id_konsinyasi_retur_detail`),
  KEY `konsinyasi_ret_det_fk1` (`id_konsinyasi_retur`),
  KEY `konsinyasi_ret_det_fk2` (`id_item`),
  KEY `konsinyasi_ret_det_fk3` (`id_satuan`),
  CONSTRAINT `konsinyasi_ret_det_fk1` FOREIGN KEY (`id_konsinyasi_retur`) REFERENCES `konsinyasi_retur` (`id_konsinyasi_retur`),
  CONSTRAINT `konsinyasi_ret_det_fk2` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`),
  CONSTRAINT `konsinyasi_ret_det_fk3` FOREIGN KEY (`id_satuan`) REFERENCES `satuan` (`id_satuan`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-04-19 15:19:48
