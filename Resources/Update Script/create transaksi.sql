/*
SQLyog Community v12.2.1 (64 bit)
MySQL - 5.1.73-community : Database - app_pos_20150926
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `transfer` */

DROP TABLE IF EXISTS `transfer`;

CREATE TABLE `transfer` (
  `id_transfer` int(11) NOT NULL AUTO_INCREMENT,
  `id_departemen` int(11) NOT NULL,
  `id_departemen_asal` int(11) NOT NULL,
  `id_departemen_tujuan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `kode_transaksi` varchar(45) NOT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL,
  `jumlah_item` int(11) NOT NULL DEFAULT '0',
  `guid` char(36) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id_transfer`),
  KEY `fk_transfer_departemen1` (`id_departemen_asal`),
  KEY `fk_transfer_departemen2` (`id_departemen_tujuan`),
  KEY `fk_transfer_user` (`id_user`),
  KEY `id_departemen` (`id_departemen`),
  CONSTRAINT `fk_transfer_departemen1` FOREIGN KEY (`id_departemen_asal`) REFERENCES `departemen` (`id_departemen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_transfer_departemen2` FOREIGN KEY (`id_departemen_tujuan`) REFERENCES `departemen` (`id_departemen`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_transfer_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Table structure for table `transfer_detail` */

DROP TABLE IF EXISTS `transfer_detail`;

CREATE TABLE `transfer_detail` (
  `id_transfer_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_transfer` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`id_transfer_detail`),
  KEY `fk_transfer_detail_transfer` (`id_transfer`),
  KEY `fk_transfer_detail_item` (`id_item`),
  KEY `fk_transfer_detail_satuan` (`id_satuan`),
  CONSTRAINT `fk_transfer_detail_item` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`),
  CONSTRAINT `fk_transfer_detail_satuan` FOREIGN KEY (`id_satuan`) REFERENCES `satuan` (`id_satuan`),
  CONSTRAINT `fk_transfer_detail_transfer` FOREIGN KEY (`id_transfer`) REFERENCES `transfer` (`id_transfer`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
