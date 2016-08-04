/*
Navicat MySQL Data Transfer

Source Server         : Apotek
Source Server Version : 50157
Source Host           : localhost:3306
Source Database       : apotekdb

Target Server Type    : MYSQL
Target Server Version : 50157
File Encoding         : 65001

Date: 2015-06-16 20:38:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `accountsetup`
-- ----------------------------
DROP TABLE IF EXISTS `accountsetup`;
CREATE TABLE `accountsetup` (
  `AccCode` varchar(6) DEFAULT NULL,
  `AccNo` varchar(6) DEFAULT NULL,
  KEY `AccCode` (`AccCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of accountsetup
-- ----------------------------
INSERT INTO `accountsetup` VALUES ('PLB', '3920');
INSERT INTO `accountsetup` VALUES ('PLS', '3910');

-- ----------------------------
-- Table structure for `assetdetail`
-- ----------------------------
DROP TABLE IF EXISTS `assetdetail`;
CREATE TABLE `assetdetail` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `ReferenceNo` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `NoUrut` int(11) DEFAULT '0',
  `AssetCode` varchar(50) DEFAULT NULL,
  `Qty` int(11) DEFAULT '0',
  `Price` double DEFAULT '0',
  `OutletCode` varchar(50) DEFAULT NULL,
  `EntryBy` varchar(50) DEFAULT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CostPrice` double DEFAULT '0',
  `QtyBeli` double DEFAULT '0',
  `KelompokCode` varchar(50) DEFAULT NULL,
  `AssetName` varchar(50) DEFAULT NULL,
  `Bulan` int(11) DEFAULT '0',
  KEY `AssetCode` (`AssetCode`),
  KEY `KelompokCode` (`KelompokCode`),
  KEY `OutletCode` (`OutletCode`),
  KEY `ReferenceNo` (`ReferenceNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assetdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `assetheader`
-- ----------------------------
DROP TABLE IF EXISTS `assetheader`;
CREATE TABLE `assetheader` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `SupplierCode` varchar(50) DEFAULT NULL,
  `OutletCode` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `Remark` varchar(50) DEFAULT NULL,
  `TotalQty` double DEFAULT '0',
  `TotalNilai` double DEFAULT '0',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  `PostingStatus` int(11) DEFAULT '0',
  `TotalSelisih` double DEFAULT '0',
  `TotalSupplier` double DEFAULT '0',
  KEY `OutletCode` (`OutletCode`),
  KEY `SupplierCode` (`SupplierCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of assetheader
-- ----------------------------

-- ----------------------------
-- Table structure for `coadetail`
-- ----------------------------
DROP TABLE IF EXISTS `coadetail`;
CREATE TABLE `coadetail` (
  `AccNo` varchar(6) DEFAULT NULL,
  `AccName` varchar(30) DEFAULT NULL,
  `AccGroupNo` varchar(6) DEFAULT NULL,
  `AccNormal` int(11) DEFAULT '0',
  `AccCurrency` varchar(50) DEFAULT NULL,
  KEY `AccNo` (`AccNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coadetail
-- ----------------------------
INSERT INTO `coadetail` VALUES ('1110', 'KAS RUKO', '1100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1120', 'KAS PGC', '1100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1130', 'KAS KM', '1100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1140', 'PETTY CASH', '1100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1210', 'BANK BCA - AC 8770170789', '1200', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1220', 'BANK BCA - AC 0013380845', '1200', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1311', 'PAK CHRIST', '1310', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1349', 'PIUTANG PGC LAIN', '1310', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1381', 'PIUTANG ROMI', '1380', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1382', 'PIUTANG FADIL', '1380', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1383', 'PIUTANG CONG', '1380', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1384', 'PIUTANG HOY', '1380', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1385', 'PIUTANG KO SALIM', '1380', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1386', 'PIUTANG ROSITA', '1380', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1387', 'PIUTANG ERNI', '1380', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1388', 'PIUTANG ASUAN', '1380', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1389', 'PIUTANG METI', '1380', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1390', 'PIUTANG ALIONG', '1380', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1391', 'PIUTANG ROBIN', '1390', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1392', 'PIUTANG SALIM', '1390', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1393', 'PIUTANG HARRY', '1390', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1394', 'PIUTANG FERRY', '1390', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1399', 'PIUTANG LAIN-LAIN', '1390', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1410', 'PERSEDIAAN BARANG', '1400', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1420', 'PERSEDIAAN SPARE PART', '1400', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1490', 'PERSEDIAAN LAIN-LAIN', '1400', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1510', 'SEWA DI BAYAR DI MUKA', '1500', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1810', 'BANGUNAN', '1800', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1820', 'KENDARAAN', '1800', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1830', 'PERALATAN KANTOR', '1800', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1910', 'AKUM. PENY. BANGUNAN', '1900', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1920', 'AKUM. PENY. KENDARAAN', '1900', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('1930', 'AKUM. PENY. PERLENGKAP KANTOR', '1900', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('2110', 'SUPPLIER ?', '2100', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('2210', 'HUTANG BANK ?', '2200', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('2220', 'HUTANG HAGA MM', '2200', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('2230', 'HUTANG FIF', '2200', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('2290', 'HUTANG TITIPAN CARD', '2200', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('2310', 'HUTANG SI ?', '2300', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('2410', 'BIAYA TELEPON', '2400', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('2420', 'BIAYA LISTRIK', '2400', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('2430', 'BIAYA PAM', '2400', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('3110', 'MODAL ROBIN', '3100', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('3120', 'MODAL SALIM', '3100', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('3130', 'MODAL HARRY', '3100', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('3910', 'LABA RUGI DI TAHAN', '3900', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('3920', 'LABA RUGI TAHUN BERJALAN', '3900', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('4110', 'PENJUALAN BARANG', '4100', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('4120', 'PENJUALAN SPARE PART', '4100', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('5110', 'HARGA POKOK BARANG', '5100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('5120', 'HARGA POKOK SPARE PART', '5100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6111', 'GAJI KARYAWAN', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6112', 'UANG MAKAN + TRANSPORT', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6113', 'TUNJANGAN KERAJINAN', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6114', 'BENSIN + PARKIR', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6121', 'THR', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6122', 'BONUS', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6131', 'ASURANSI', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6132', 'RENOVASI KANTOR', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6133', 'SEWA GEDUNG', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6134', 'SERVICE CHARGE', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6141', 'LISTRIK', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6142', 'PAM', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6143', 'TELEPON', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6151', 'BIAYA PEMELIHARAAN KENDARAAN', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6161', 'PAJAK BUMI DAN BANGUNAN', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6171', 'ALAT TULIS KANTOR', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6181', 'JASA PROFESSIONAL', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6191', 'BIAYA EKSPEDISI', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6192', 'BIAYA PENJUALAN', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6199', 'BIAYA LAIN-LAIN', '6100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6410', 'BIAYA PENY. BANGUNAN', '6400', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6420', 'BIAYA PENY. KENDARAAN', '6400', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('6430', 'BIAYA PENY. PERALATAN KANTOR', '6400', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('8110', 'PENDAPATAN JASA GIRO', '8100', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('8120', 'PENDAPATAN SEWA', '8100', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('8130', 'SURCHARGE MESIN EDC', '8100', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('8140', 'PENDAPATAN LAIN2', '8100', '0', '1 - IDR');
INSERT INTO `coadetail` VALUES ('9110', 'BIAYA ADMINISTRASI BANK', '9100', '2', '1 - IDR');
INSERT INTO `coadetail` VALUES ('9120', 'BIAYA MESIN EDC', '9100', '2', '1 - IDR');

-- ----------------------------
-- Table structure for `coaheader`
-- ----------------------------
DROP TABLE IF EXISTS `coaheader`;
CREATE TABLE `coaheader` (
  `AccNo` varchar(6) DEFAULT NULL,
  `AccName` varchar(30) DEFAULT NULL,
  `AccPrefik` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coaheader
-- ----------------------------
INSERT INTO `coaheader` VALUES ('1100', 'KAS', null);
INSERT INTO `coaheader` VALUES ('1200', 'BANK', null);
INSERT INTO `coaheader` VALUES ('1400', 'PERSEDIAAN', null);
INSERT INTO `coaheader` VALUES ('1500', 'BIAYA DI BAYAR DI MUKA', null);
INSERT INTO `coaheader` VALUES ('1800', 'AKTIVA TETAP', null);
INSERT INTO `coaheader` VALUES ('1900', 'AKUMULASI PENYUSUTAN', null);
INSERT INTO `coaheader` VALUES ('2100', 'HUTANG DAGANG SUPPLIER', null);
INSERT INTO `coaheader` VALUES ('2200', 'HUTANG BANK', null);
INSERT INTO `coaheader` VALUES ('2300', 'HUTANG PEMEGANG SAHAM', null);
INSERT INTO `coaheader` VALUES ('2400', 'BIAYA YG MASIH HARUS DI BAYAR', null);
INSERT INTO `coaheader` VALUES ('3100', 'MODAL', null);
INSERT INTO `coaheader` VALUES ('3900', 'LABA RUGI', null);
INSERT INTO `coaheader` VALUES ('4100', 'PENJUALAN', null);
INSERT INTO `coaheader` VALUES ('5100', 'HARGA POKOK PENJUALAN', null);
INSERT INTO `coaheader` VALUES ('6100', 'BIAYA OPERASIONAL', null);
INSERT INTO `coaheader` VALUES ('6400', 'BIAYA PENYUSUTAN', null);
INSERT INTO `coaheader` VALUES ('8100', 'PENDAPATAN LAIN-LAIN', null);
INSERT INTO `coaheader` VALUES ('9100', 'BIAYA LAIN-LAIN', null);
INSERT INTO `coaheader` VALUES ('1310', 'PIUTANG DAGANG', null);
INSERT INTO `coaheader` VALUES ('1390', 'PIUTANG LAIN-LAIN', null);
INSERT INTO `coaheader` VALUES ('1380', 'PIUTANG KARYAWAN', null);

-- ----------------------------
-- Table structure for `coareport`
-- ----------------------------
DROP TABLE IF EXISTS `coareport`;
CREATE TABLE `coareport` (
  `AccNo` varchar(10) DEFAULT NULL,
  `Code` varchar(1) DEFAULT NULL,
  `AccName` varchar(40) DEFAULT NULL,
  `Remark` varchar(80) DEFAULT NULL,
  KEY `Code` (`Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coareport
-- ----------------------------

-- ----------------------------
-- Table structure for `gjdetail`
-- ----------------------------
DROP TABLE IF EXISTS `gjdetail`;
CREATE TABLE `gjdetail` (
  `Auto` int(11) NOT NULL AUTO_INCREMENT,
  `NoBukti` varchar(15) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `AccNo` varchar(10) DEFAULT NULL,
  `Remark` varchar(40) DEFAULT NULL,
  `Debet` double DEFAULT '0',
  `Credit` double DEFAULT '0',
  `JobNo` varchar(15) DEFAULT NULL,
  `CostNo` varchar(50) DEFAULT NULL,
  KEY `AccNo` (`AccNo`),
  KEY `CostNo` (`CostNo`),
  KEY `JobNo` (`JobNo`),
  KEY `NoBukti` (`NoBukti`),
  KEY `TglBukti` (`TglBukti`),
  KEY `Auto` (`Auto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gjdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `gjheader`
-- ----------------------------
DROP TABLE IF EXISTS `gjheader`;
CREATE TABLE `gjheader` (
  `NoBukti` varchar(15) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `Remark` varchar(40) DEFAULT NULL,
  `Amount` double DEFAULT '0',
  `JTrans` tinyint(4) DEFAULT '0',
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `NoCekGiro` varchar(50) DEFAULT NULL,
  KEY `CreatedDate` (`CreatedDate`),
  KEY `NoBukti` (`NoBukti`),
  KEY `TglBukti` (`TglBukti`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gjheader
-- ----------------------------

-- ----------------------------
-- Table structure for `kartubayar`
-- ----------------------------
DROP TABLE IF EXISTS `kartubayar`;
CREATE TABLE `kartubayar` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `ReferenceNo` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `NoUrut` int(11) DEFAULT '0',
  `MerchantID` varchar(50) DEFAULT NULL,
  `Type` int(11) DEFAULT '0',
  `TotalNilai` double DEFAULT '0',
  `OutletCode` varchar(50) DEFAULT NULL,
  `EntryBy` varchar(50) DEFAULT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TotalCharge` double DEFAULT '0',
  `Closing` tinyint(1) DEFAULT '0',
  `Kembali` double DEFAULT '0',
  KEY `MerchantID` (`MerchantID`),
  KEY `OutletCode` (`OutletCode`),
  KEY `ReferenceNo` (`ReferenceNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of kartubayar
-- ----------------------------

-- ----------------------------
-- Table structure for `kartustock`
-- ----------------------------
DROP TABLE IF EXISTS `kartustock`;
CREATE TABLE `kartustock` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `ReferenceNo` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `NoUrut` int(11) DEFAULT '0',
  `ArtikelCode` varchar(50) DEFAULT NULL,
  `Qty1` int(11) DEFAULT '0',
  `Price1` double DEFAULT '0',
  `Qty2` int(11) DEFAULT NULL,
  `Price2` double DEFAULT NULL,
  `OutletCode` varchar(50) DEFAULT NULL,
  `EntryBy` varchar(50) DEFAULT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CostPrice` double DEFAULT '0',
  `QtyBeli` double DEFAULT '0',
  `Discount` double DEFAULT '0',
  `Batch` varchar(50) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `Type` int(11) DEFAULT '0',
  KEY `ArtikelCode` (`ArtikelCode`),
  KEY `OutletCode` (`OutletCode`),
  KEY `ReferenceNo` (`ReferenceNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `opnamedetail`
-- ----------------------------
DROP TABLE IF EXISTS `opnamedetail`;
CREATE TABLE `opnamedetail` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `ReferenceNo` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `NoUrut` int(11) DEFAULT '0',
  `ArtikelCode` varchar(50) DEFAULT NULL,
  `Qty` int(11) DEFAULT '0',
  `Price` double DEFAULT '0',
  `OutletCode` varchar(50) DEFAULT NULL,
  `EntryBy` varchar(50) DEFAULT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `ArtikelCode` (`ArtikelCode`),
  KEY `OutletCode` (`OutletCode`),
  KEY `ReferenceNo` (`ReferenceNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opnamedetail
-- ----------------------------

-- ----------------------------
-- Table structure for `opnameheader`
-- ----------------------------
DROP TABLE IF EXISTS `opnameheader`;
CREATE TABLE `opnameheader` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `SupplierCode` varchar(50) DEFAULT NULL,
  `OutletCode` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `Remark` varchar(50) DEFAULT NULL,
  `TotalQty` double DEFAULT '0',
  `TotalNilai` double DEFAULT '0',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  KEY `OutletCode` (`OutletCode`),
  KEY `SupplierCode` (`SupplierCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of opnameheader
-- ----------------------------

-- ----------------------------
-- Table structure for `parameter`
-- ----------------------------
DROP TABLE IF EXISTS `parameter`;
CREATE TABLE `parameter` (
  `ParameterCode` varchar(10) DEFAULT NULL,
  `ParameterValue` int(11) DEFAULT '0',
  KEY `ParameterCode` (`ParameterCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parameter
-- ----------------------------
INSERT INTO `parameter` VALUES ('POS0', '0');
INSERT INTO `parameter` VALUES ('POS1', '0');
INSERT INTO `parameter` VALUES ('POS2', '0');
INSERT INTO `parameter` VALUES ('POS3', '0');

-- ----------------------------
-- Table structure for `saldoacc`
-- ----------------------------
DROP TABLE IF EXISTS `saldoacc`;
CREATE TABLE `saldoacc` (
  `Tahun` int(11) DEFAULT '0',
  `AccNo` varchar(6) DEFAULT NULL,
  `SaldoAwal` double DEFAULT '0',
  `Nilai01` double DEFAULT '0',
  `Nilai02` double DEFAULT '0',
  `Nilai03` double DEFAULT '0',
  `Nilai04` double DEFAULT '0',
  `Nilai05` double DEFAULT '0',
  `Nilai06` double DEFAULT '0',
  `Nilai07` double DEFAULT '0',
  `Nilai08` double DEFAULT '0',
  `Nilai09` double DEFAULT '0',
  `Nilai10` double DEFAULT '0',
  `Nilai11` double DEFAULT '0',
  `Nilai12` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of saldoacc
-- ----------------------------

-- ----------------------------
-- Table structure for `tassetdetail`
-- ----------------------------
DROP TABLE IF EXISTS `tassetdetail`;
CREATE TABLE `tassetdetail` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `ReferenceNo` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `NoUrut` int(11) DEFAULT '0',
  `AssetCode` varchar(50) DEFAULT NULL,
  `Qty` int(11) DEFAULT '0',
  `Price` double DEFAULT '0',
  `OutletCode` varchar(50) DEFAULT NULL,
  `EntryBy` varchar(50) DEFAULT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CostPrice` double DEFAULT '0',
  `QtyBeli` double DEFAULT '0',
  `KelompokCode` varchar(50) DEFAULT NULL,
  `AssetName` varchar(50) DEFAULT NULL,
  `Bulan` int(11) DEFAULT '0',
  KEY `AssetCode` (`AssetCode`),
  KEY `KelompokCode` (`KelompokCode`),
  KEY `OutletCode` (`OutletCode`),
  KEY `ReferenceNo` (`ReferenceNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tassetdetail
-- ----------------------------

-- ----------------------------
-- Table structure for `tassetheader`
-- ----------------------------
DROP TABLE IF EXISTS `tassetheader`;
CREATE TABLE `tassetheader` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `SupplierCode` varchar(50) DEFAULT NULL,
  `OutletCode` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `Remark` varchar(50) DEFAULT NULL,
  `TotalQty` double DEFAULT '0',
  `TotalNilai` double DEFAULT '0',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  `PostingStatus` int(11) DEFAULT '0',
  `TotalSelisih` double DEFAULT '0',
  `TotalSupplier` double DEFAULT '0',
  KEY `OutletCode` (`OutletCode`),
  KEY `SupplierCode` (`SupplierCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tassetheader
-- ----------------------------

-- ----------------------------
-- Table structure for `tbapproval`
-- ----------------------------
DROP TABLE IF EXISTS `tbapproval`;
CREATE TABLE `tbapproval` (
  `QueueNo` varchar(50) DEFAULT NULL,
  `RequestBy` varchar(50) DEFAULT NULL,
  `RequestTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(50) DEFAULT NULL,
  `ApprovedBy` varchar(50) DEFAULT NULL,
  `ApprovedTime` datetime DEFAULT NULL,
  KEY `QueueNo` (`QueueNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `tbartikel`
-- ----------------------------
DROP TABLE IF EXISTS `tbartikel`;
CREATE TABLE `tbartikel` (
  `ArtikelCode` varchar(50) DEFAULT NULL,
  `Barcode` varchar(50) DEFAULT NULL,
  `ArtikelName` varchar(100) DEFAULT NULL,
  `AverageCost` double DEFAULT '0',
  `ArtikelStatus` int(11) DEFAULT '0',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  `HighSellPrice` double DEFAULT '0',
  `SatuanBeli` varchar(50) DEFAULT NULL,
  `SatuanStok` varchar(50) DEFAULT NULL,
  `Price1` double DEFAULT '0',
  `Price2` double DEFAULT NULL,
  `Satuan1` varchar(50) DEFAULT NULL,
  `Satuan2` varchar(50) DEFAULT NULL,
  `Content` int(11) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `ArtikelShow` varchar(100) DEFAULT NULL,
  `Price1Show` varchar(50) DEFAULT NULL,
  `Price2Show` varchar(50) DEFAULT NULL,
  `ContentShow` varchar(50) DEFAULT NULL,
  KEY `ArtikelCode` (`ArtikelCode`),
  KEY `Barcode` (`Barcode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbartikel
-- ----------------------------
INSERT INTO `tbartikel` VALUES ('01484', '8999255560129', 'JOINT X (1DUS @30TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:03:37', '0', null, '', '200000', '0', 'DUS', '', '1', 'MEYER VITABIOTICS', 'JOINT X (1DUS @30TAB) ', '160,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00996', '8997008110157', 'EVENING PRIMROSE OIL (EPO) (1DUS @64SOFTGELS)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '232500', null, 'DUS', null, null, 'INTERBAT', 'EVENING PRIMROSE OIL (EPO) (1DUS @64SOFTGELS) ', '190,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00002', '', '3 IN ONE', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-30 14:40:36', '0', null, '', '145000', '0', 'DUS', '', '1', 'IKAPHARMINDO P', '3 IN ONE ', '132,500 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01019', '1901197458584', 'FACESPA (1DUS @30CAP)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '210000', null, 'DUS', null, null, 'SANBE', 'FACESPA (1DUS @30CAP) ', '180,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02018', null, 'NEPRISOL SUSU', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '50000', null, 'BTOL', null, null, 'ASTELLAS', 'NEPRISOL SUSU ', '40,000 / BTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80896', '', '.SANGOBION (25LBR @10CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-10-10 14:45:48', '0', null, '10 BIJI', '260000', '11000', 'DUS', 'LBR', '25', null, '.SANGOBION (25LBR @10CAP) ', '225,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02119', null, 'NUTRAFOR CHOL (6LBR @10CAP)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '85000', null, 'DUS', null, null, 'GUARDIAN P', 'NUTRAFOR CHOL (6LBR @10CAP) ', '95,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02118', '8993430101602', 'NUTRAFOR BALANCE (6STRIP @10CAP)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '110000', null, 'DUS', null, null, 'MEDITALENT', 'NUTRAFOR BALANCE (6STRIP @10CAP) ', '110,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01666', null, 'LI XU WANG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '63000', null, 'DUS', null, null, 'SCHERING PLOUGH', 'LI XU WANG ', '53,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02261', null, 'PEPTISOL VANILA', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '50000', null, 'DUS', null, null, null, 'PEPTISOL VANILA ', '39,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01387', null, 'IMMUNO8 KIDS (1BOTOL @60TAB)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '135000', null, 'BOTOL', null, null, 'INDOFARMA (IF)', 'IMMUNO8 KIDS (1BOTOL @60TAB) ', '125,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00502', null, 'CALTRATE D+MINERAL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '75000', null, 'BTL', null, null, 'MECOSIN', 'CALTRATE D+MINERAL ', '75,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02515', '', 'REJUVIT CAP', '0', '1', null, '2013-08-08 07:25:21', ' Sri', '2014-06-18 19:11:50', '0', null, '', '200000', '0', 'BTL', '', '1', 'PHAROS', 'REJUVIT CAP ', '122,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00228', '', 'ASTACOR (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:18:14', '0', null, '', '270000', '0', 'BOTOL', '', '1', 'DEXA MEDICA', 'ASTACOR (1BOTOL @30CAP) ', '270,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00362', '8992863661851', 'BIOCALCI-72 (1BOTOL @30TAB)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '50000', null, 'BOTOL', null, null, 'ARMOXINDO FARMA', 'BIOCALCI-72 (1BOTOL @30TAB) ', '45,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02581', '9316254862488', 'ROYAL JOINT (1BOTOL @30CAP) NC', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:38:38', '0', null, '', '210000', '0', 'BOTOL', '', '1', 'EAGLE INDO PHARMA', 'ROYAL JOINT (1BOTOL @30CAP) NC ', '210,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02517', '', 'REMACT KAP', '0', '1', null, '2013-08-08 07:25:21', ' Sri', '2014-06-18 19:11:45', '0', null, '', '135000', '0', 'BTL', '', '1', 'PHAROS', 'REMACT KAP ', '135,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01541', null, 'KIREI', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '150000', null, 'BTL', null, null, 'IFARS', 'KIREI ', '135,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02730', '', 'SOFT-U-DERM FORTE (1BOTOL @40g)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:33:04', '0', null, '', '26000', '0', 'BOTOL', '', '1', null, 'SOFT-U-DERM FORTE (1BOTOL @40g) ', '26,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02531', '8998667101302', 'RENOVIT (1BOTOL @30KAPLET)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '56000', null, 'BOTOL', null, null, 'PHYTO KEMO', 'RENOVIT (1BOTOL @30KAPLET) ', '55,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00327', null, 'BETAMIN TAB', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '20000', null, 'BTL', null, null, null, 'BETAMIN TAB ', '20,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00113', '', 'ALTERNATIF (1BOTOL @30TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:15:03', '0', null, '', '92500', '0', 'BOTOL', '', '1', 'LAPI', 'ALTERNATIF (1BOTOL @30TAB) ', '90,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01205', '8997050803502', 'GINKGO FORCE (1BOTOL @60TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-25 18:09:19', '0', null, '', '180000', '0', 'BOTOL', '', '1', 'NOVARTIS', 'GINKGO FORCE (1BOTOL @60TAB) ', '155,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01582', null, 'LACTOCORE', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '20000', null, 'BTL', null, null, 'GSK', 'LACTOCORE ', '20,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01086', '9316254861191', 'FISH OIL 1000MG OMEGA-3 (1BOTOL @30CAP) NC', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '90000', null, 'BOTOL', null, null, 'INTERBAT', 'FISH OIL 1000MG OMEGA-3 (1BOTOL @30CAP) NC ', '115,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00689', '', 'COENZYME Q 10 60 BIJI NATURE CHOI', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:08:16', '0', null, '', '225000', '0', 'BTL', '', '1', 'FAHRENHEIT', 'COENZYME Q 10 60 BIJI NATURE CHOI ', '225,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00363', '636510641176', 'BIOCALTH (1BOTOL @90KAPLET)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '295000', null, 'BOTOL', null, null, 'ARMOXINDO FARMA', 'BIOCALTH (1BOTOL @90KAPLET) ', '290,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01087', null, 'FISH OIL OMEGA 200 BIJI NATURE CHO', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '290000', null, 'BTL', null, null, 'INTERBAT', 'FISH OIL OMEGA 200 BIJI NATURE CHO ', '252,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00998', null, 'EVER OXI ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '70000', null, 'BTL', null, null, 'INTERBAT', 'EVER OXI  ', '50,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00226', null, 'ASPAR-K ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '250000', '25000', 'DUS', 'LBR', '10', 'SANOFI AVENTIS', 'ASPAR-K  @10TAB', '210,000 / DUS', '21,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01946', null, 'MUCOSTA 100 MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '445000', '45000', 'DUS', 'LBR', '10', 'SOHO', 'MUCOSTA 100 MG @10TAB', '335,000 / DUS', '37,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00084', null, 'ALDACTONE 25MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '180000', '18500', 'DUS', 'LBR', '10', 'LAPI', 'ALDACTONE 25MG @10TAB', '180,000 / DUS', '18,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02320', null, 'PLETAAL 50MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '785000', '79000', 'DUS', 'LBR', '10', 'SANOFI AVENTIS', 'PLETAAL 50MG  @10TAB', '725,000 / DUS', '67,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01227', '8994388112429', 'GLUCODEX 80MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '50000', '6000', 'DUS', 'LBR', '10', 'INTERBAT', 'GLUCODEX 80MG  @10TAB', '40,000 / DUS', '6,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('03115', '8994388110296', 'VOLTADEX 50MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '17500', '5000', 'DUS', 'LBR', '5', null, 'VOLTADEX 50MG  @10TAB', '17,500 / DUS', '5,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('80048', null, '.AMARYL 4MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '225000', '75000', 'DUS', 'LBR', '3', null, '.AMARYL 4MG @10TAB', '210,000 / DUS', '70,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00121', null, 'AMARYL 1MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '140000', '28000', 'DUS', 'LBR', '5', 'LAPI', 'AMARYL 1MG @10TAB', '130,000 / DUS', '26,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00712', null, 'CORDARONE 200MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '202500', '67500', 'DUS', 'LBR', '3', 'FAHRENHEIT', 'CORDARONE 200MG  @10TAB', '165,000 / DUS', '55,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01715', null, 'LODOZ 5/6,25', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '292000', '98000', 'DUS', 'LBR', '3', null, 'LODOZ 5/6,25 @10TAB', '277,500 / DUS', '93,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01714', null, 'LODOZ 2,5/6,25 ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '187500', '62500', 'DUS', 'LBR', '3', 'PYRIDAM', 'LODOZ 2,5/6,25  @10TAB', '185,000 / DUS', '62,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02955', null, 'TROLIP 100MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '120000', '40000', 'DUS', 'LBR', '3', null, 'TROLIP 100MG  @10TAB', '112,500 / DUS', '37,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01985', null, 'NATRILIX SR ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '225000', '75000', 'DUS', 'LBR', '3', 'MAHAKAM BETA FARMA', 'NATRILIX SR  @10TAB', '202,500 / DUS', '67,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00705', '', 'CONCOR 2,5MG  ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-24 18:07:02', '0', null, '@10TAB', '400000', '40000', 'DUS', 'LBR', '10', 'FAHRENHEIT', 'CONCOR 2,5MG  AK @10TAB', '490,000 / DUS', '50,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00123', '', 'AMARYL 3MG', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2013-08-17 10:35:12', '0', null, '@ 10TAB', '320000', '64000', 'DUS', 'LBR', '5', 'SANDOZ', 'AMARYL 3MG 10TAB ', '61,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02847', '8994388111460', 'TENSIVASK 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '485000', '98000', 'DUS', 'LBR', '5', null, 'TENSIVASK 10MG  @10TAB', '500,000 / DUS', '98,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01254', '8994388111651', 'GLUVAS 4MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '310000', '62000', 'DUS', 'LBR', '5', 'INOVAIL', 'GLUVAS 4MG  @10TAB', '310,000 / DUS', '62,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01253', '8994388111644', 'GLUVAS 3MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '265000', '53000', 'DUS', 'LBR', '5', 'INTENDIS', 'GLUVAS 3MG  @10TAB', '270,000 / DUS', '53,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01829', '8992858630510', 'METRIX 1MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@14TAB', '50000', '25000', 'DUS', 'LBR', '2', null, 'METRIX 1MG  @14TAB', '50,000 / DUS', '27,500 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('80685', null, '.METRIX 4MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@15TAB', '160000', '80000', 'DUS', 'LBR', '2', null, '.METRIX 4MG  @15TAB', '175,000 / DUS', '87,500 / LBR', '2 @15TAB');
INSERT INTO `tbartikel` VALUES ('03075', null, 'VIOPOR-M FORTE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '150000', '28000', 'DUS', 'LBR', '5', null, 'VIOPOR-M FORTE  @6TAB', '130,000 / DUS', '25,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('03074', null, 'VIOPOR-M ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '95000', '19000', 'DUS', 'LBR', '5', null, 'VIOPOR-M  @6TAB', '95,000 / DUS', '19,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('02042', '20320942', 'NEUROTAM 1200MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '285000', '57000', 'DUS', 'LBR', '5', 'OTTO', 'NEUROTAM 1200MG  @10TAB', '265,000 / DUS', '53,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02045', '20320584', 'NEUROTAM 800MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '210000', '42000', 'DUS', 'LBR', '5', 'ETHICA', 'NEUROTAM 800MG  @10TAB', '190,000 / DUS', '38,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02872', null, 'THYROZOL 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '175000', '18500', 'DUS', 'LBR', '10', null, 'THYROZOL 10MG  @10TAB', '160,000 / DUS', '17,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00844', null, 'DIAMICRON MR 30MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '125000', '25000', 'DUS', 'LBR', '6', 'DEXA MEDICA', 'DIAMICRON MR 30MG  @10TAB', '145,000 / DUS', '25,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('00777', null, 'DANSERA', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '255000', '27000', 'DUS', 'LBR', '10', 'DANKOS', 'DANSERA @10TAB', '235,000 / DUS', '24,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01309', null, 'HERBESSER 30MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '300000', '31000', 'DUS', 'LBR', '10', 'LANDSON', 'HERBESSER 30MG  @10TAB', '290,000 / DUS', '30,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00115', null, 'AMADIAB-1MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '105000', '22000', 'DUS', 'LBR', '5', 'PHAROS', 'AMADIAB-1MG @10TAB', '97,500 / DUS', '20,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('80042', null, '.AMADIAB 4MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '325000', '65000', 'DUS', 'LBR', '5', null, '.AMADIAB 4MG @10TAB', '285,000 / DUS', '53,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02082', '8991771110314', 'NONFLAMIN ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '246000', '43000', 'DUS', 'LBR', '6', 'PHAROS', 'NONFLAMIN  @10TAB', '228,000 / DUS', '37,500 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('00650', '', 'CIPROXIN 500MG ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-27 11:06:01', '0', null, '', '200000', '20000', 'LBR', 'BIJI', '10', 'SOHO', 'CIPROXIN 500MG  @10TAB', '400,000 / DUS', '200,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('01819', null, 'MERTIGO', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '310000', '32000', 'DUS', 'LBR', '10', 'SANBE', 'MERTIGO @10TAB', '265,000 / DUS', '27,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01949', null, 'MUSIN 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '65000', '14000', 'DUS', 'LBR', '5', null, 'MUSIN 500MG  @10TAB', '62,500 / DUS', '12,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01074', '', 'FEROGLOBIN CAPSULES', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2013-08-17 10:46:44', '0', null, '@ 6 TAB', '70000', '14000', 'DUS', 'LBR', '5', 'INTERBAT', 'FEROGLOBIN ', '13,000 / BTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01204', null, 'GERDILIUM ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '115000', '27000', 'DUS', 'LBR', '5', 'SCAN', 'GERDILIUM  @10TAB', '115,000 / DUS', '27,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01512', '8992858445114', 'KALXETIN 10MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '120000', '40000', 'DUS', 'LBR', '3', 'MEPROFARM', 'KALXETIN 10MG @10TAB', '45,000 / DUS', '20,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02251', null, 'PEDAB ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '155000', '15000', 'DUS', 'LBR', '10', 'BOEHRINGER INGELHEIM', 'PEDAB  @10TAB', '55,000 / DUS', '12,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02399', '20323004', 'PROFILAS ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '170000', '35000', 'DUS', 'LBR', '5', null, 'PROFILAS  @10TAB', '130,000 / DUS', '27,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02882', null, 'TILFLAM ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '280000', '60000', 'DUS', 'LBR', '5', null, 'TILFLAM  @6TAB', '280,000 / DUS', '57,500 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01589', '8994388110869', 'LAKTAFIT', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '168000', '28000', 'DUS', 'LBR', '6', 'SANBE', 'LAKTAFIT @10TAB', '168,000 / DUS', '28,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('01073', '8992858624519', 'FEROFORT ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '195000', '20000', 'DUS', 'LBR', '10', 'INTERBAT', 'FEROFORT  @10TAB', '195,000 / DUS', '20,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01796', null, 'MEDIXON 16MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '195000', '40000', 'DUS', 'LBR', '5', 'SOHO', 'MEDIXON 16MG @6TAB', '175,000 / DUS', '38,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('02696', null, 'SIBERID ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '200000', '50000', 'DUS', 'LBR', '5', 'SANOFI', 'SIBERID  @10TAB', '200,000 / DUS', '40,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01131', null, 'FOLAC', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '90000', '10000', 'DUS', 'LBR', '10', 'SANOFI AVENTIS', 'FOLAC @10TAB', '70,000 / DUS', '8,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('03111', '8414200215508', 'VIUSID', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2013-08-17 10:50:54', '0', null, '@ 4G', '750000', '36000', 'DUS', 'SACHET', '21', null, 'VIUSID (21SACHETS @4g) ', '750,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00792', '8994388111866', 'DECULIN 15MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '195000', '39000', 'DUS', 'LBR', '5', 'FAHRENHEIT', 'DECULIN 15MG  @6TAB', '187,500 / DUS', '39,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('00976', '8994388111606', 'ESVAT 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '60000', '13000', 'DUS', 'LBR', '5', 'SANBE', 'ESVAT 10MG  @6TAB', '45,000 / DUS', '9,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('00916', null, 'ECLID 50MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '80000', '16000', 'DUS', 'LBR', '5', 'SANBE', 'ECLID 50MG  @10TAB', '80,000 / DUS', '17,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00915', null, 'ECLID 100MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '125000', '25000', 'DUS', 'LBR', '5', 'SANBE', 'ECLID 100MG @10TAB', '120,000 / DUS', '24,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02085', '8994388110807', 'NOPERTEN  5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '30000', '6000', 'DUS', 'LBR', '5', 'DARYA-VARIA', 'NOPERTEN  5MG  @6TAB', '30,000 / DUS', '6,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('00819', '8994388112993', 'DEXANORM 1MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '110000', '22000', 'DUS', 'LBR', '5', 'KALBE', 'DEXANORM 1MG  @10TAB', '105,000 / DUS', '20,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02501', '8993347002474', 'RECHOL 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '202500', '67500', 'DUS', 'LBR', '3', 'VITABIOTICS', 'RECHOL 10MG  @10TAB', '202,500 / DUS', '67,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02503', null, 'RECHOL 5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '127500', '40000', 'DUS', 'LBR', '3', 'SOHO', 'RECHOL 5MG  @10TAB', '127,500 / DUS', '40,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02265', null, 'PERIFAS ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '180000', '19000', 'DUS', 'LBR', '10', 'BOEHRINGER INGELHEIM', 'PERIFAS  @10TAB', '150,000 / DUS', '15,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02502', '8993347003594', 'RECHOL 20MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '240000', '80000', 'DUS', 'LBR', '3', 'SOHO', 'RECHOL 20MG  @10TAB', '195,000 / DUS', '80,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02065', null, 'NILATIKA ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '35000', '5000', 'DUS', 'LBR', '10', 'CENDO', 'NILATIKA  @10TAB', '35,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02087', null, 'NORELUT ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '220000', '44000', 'DUS', 'LBR', '5', 'ASTELLAS', 'NORELUT  @10TAB', '200,000 / DUS', '40,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02834', '', 'TELFAST HD 180 MG', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2013-08-17 11:00:16', '0', null, '@ 10 TAB', '85000', '85000', 'DUS', 'LBR', '1', null, 'TELFAST HD 180 MG ', '75,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02833', '', 'TELFAS OD 120 MG', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2013-08-17 10:59:13', '0', null, '@ 10 TAB', '772500', '77500', 'DUS', 'LBR', '10', null, 'TELFAS OD ', '72,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00933', '20310004', 'EMINETON ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '140000', '15000', 'DUS', 'LBR', '10', 'SANBE', 'EMINETON  @10TAB', '140,000 / DUS', '15,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01531', null, 'KETESSE ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '275000', '67500', 'DUS', 'LBR', '5', 'PHAPROS', 'KETESSE  @10TAB', '225,000 / DUS', '47,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('03170', '8993347007097', 'ZERLIN 50MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '390000', '130000', 'DUS', 'LBR', '3', null, 'ZERLIN 50MG  @10TAB', '330,000 / DUS', '110,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02939', null, 'TRIBOST ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '174000', '58000', 'DUS', 'LBR', '3', null, 'TRIBOST  @10TAB', '174,000 / DUS', '58,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00613', '8991771100315', 'CERADOLAN 200MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '340000', '170000', 'DUS', 'LBR', '2', 'TAKEDA', 'CERADOLAN 200MG  @10TAB', '340,000 / DUS', '170,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('00446', null, 'BRAINACT 1000MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '570000', '190000', 'DUS', 'LBR', '3', 'SOHO', 'BRAINACT 1000MG @10TAB', '570,000 / DUS', '190,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01303', '8992858433319', 'HEPASIL ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '175000', '35000', 'DUS', 'LBR', '5', 'LANDSON', 'HEPASIL  @10TAB', '155,000 / DUS', '31,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00695', '8994388111200', 'COLERGIS ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '225000', '25000', 'DUS', 'LBR', '10', 'DARYA VARIA', 'COLERGIS  @10TAB', '225,000 / DUS', '25,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02170', null, 'OPIBRIGHT ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '110000', '37000', 'DUS', 'LBR', '3', 'KALBE', 'OPIBRIGHT  @10TAB', '110,000 / DUS', '37,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02915', '8993347000333', 'TRAMAL KAPSUL ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '275000', '55000', 'DUS', 'LBR', '5', null, 'TRAMAL KAPSUL  @10TAB', '520,000 / DUS', '55,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('03203', '', 'NEO NOVAPON', '0', '1', ' Ana', '2013-08-17 11:07:10', null, null, '0', null, '@ 10 TAB', '150000', '15000', 'DUS', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02369', '', 'PREGNOLIN', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2013-08-17 11:04:59', '0', null, '@ 10 TAB', '90000', '30000', 'DUS', 'LBR', '3', 'SANDOZ', 'PREGNOLIN ', ' / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01816', null, 'MERCOTIN SYP', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '55000', null, 'BTL', null, null, 'ABBOTT', 'MERCOTIN SYP ', '50,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02947', null, 'TRILEPTAL 300MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '400000', '82500', 'DUS', 'LBR', '5', null, 'TRILEPTAL 300MG  @10TAB', '437,500 / DUS', '85,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02949', '', 'TRIOLAX (1STRIP @6SUPP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:28:22', '0', null, '', '27500', '0', 'DUS', '', '1', null, 'TRIOLAX (1STRIP @6SUPP) ', '27,500 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03204', '', 'TRIFEDRIN', '0', '1', ' Ana', '2013-08-17 11:10:16', null, null, '0', null, '@ 10 TAB', '45000', '17500', 'DUS', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01729', null, 'LOVASK 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '247500', '82500', 'DUS', 'LBR', '3', null, 'LOVASK 10MG  @10TAB', '247,500 / DUS', '82,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01331', '8994568111969', 'HISTRINE FT 10MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '195000', '65000', 'DUS', 'LBR', '3', 'FAHRENHEIT', 'HISTRINE FT 10MG @10TAB', '180,000 / DUS', '60,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00793', '8994388111873', 'DECULIN 30MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '250000', '59000', 'DUS', 'LBR', '5', 'DANKOS', 'DECULIN 30MG @6TAB', '300,000 / DUS', '59,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('80150', null, '.BLOPRESS 8MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@7TAB', '175000', '87500', 'DUS', 'LBR', '2', null, '.BLOPRESS 8MG  @7TAB', '165,000 / DUS', '82,500 / LBR', '2 @7TAB');
INSERT INTO `tbartikel` VALUES ('02519', null, 'REMINYL 16MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@7TAB', '1510000', '405000', 'DUS', 'LBR', '4', 'PYRIDAM', 'REMINYL 16MG  @7TAB', '1,440,000 / DUS', '390,000 / LBR', '4 @7TAB');
INSERT INTO `tbartikel` VALUES ('81114', '', 'XTRA-E 400', '0', '1', ' Merry', '2013-08-13 16:43:03', null, null, '0', null, '', '95000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('03103', '', 'VITAONE', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:27:11', '0', null, '', '142500', '0', 'BTL', '', '1', null, 'VITAONE ', '132,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02967', '', 'TUMMY SLIM (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:28:15', '0', null, '', '120000', '0', 'BOTOL', '', '1', null, 'TUMMY SLIM (1BOTOL @30CAP) ', '90,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01085', '695282051989', 'FIREKING (1BOTOL @30TAB)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '100000', null, 'BOTOL', null, null, 'INTERBAT', 'FIREKING (1BOTOL @30TAB) ', '100,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02832', '8995012149354', 'TEH OYAMA (1DUS @20SACHET)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:30:24', '0', null, '', '38000', '0', 'DUS', '', '1', null, 'TEH OYAMA (1DUS @20SACHET) ', '27,500 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02830', '8993186119197', 'TEH 919 (1DUS @20TEABAGS)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:30:29', '0', null, '', '35000', '0', 'DUS', '', '1', null, 'TEH 919 (1DUS @20TEABAGS) ', '33,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00254', '', 'AVITER 21 BKS', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:20:29', '0', null, '', '300000', '0', 'DUS', '', '1', 'DEXA MEDICA', 'AVITER 21 BKS ', '275,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01547', null, 'KOBELLON TAB', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '150000', null, 'DUS', null, null, 'KALBE', 'KOBELLON TAB ', '140,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01770', '8997008110027', 'MAQURE (1DUS @30CAP)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '150000', null, 'DUS', null, null, null, 'MAQURE (1DUS @30CAP) ', '130,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02188', null, 'OSSOVIT PLUS (30SACHET @5g)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '235000', null, 'DUS', null, null, 'PHAPROS', 'OSSOVIT PLUS (30SACHET @5g) ', '235,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02122', '8999255560112', 'NUTRIBETIC (1DUS @30TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:18:01', '0', null, '', '200000', '200000', 'DUS', '', '1', 'DARYA-VARIA', 'NUTRIBETIC (1DUS @30TAB) ', '165,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01917', '8999809800565', 'MOLOCO B12 ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '190000', '33000', 'DUS', 'LBR', '6', 'MAHAKAM BETA FARMA', 'MOLOCO B12  @10TAB', '180,000 / DUS', '30,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('81069', '', '.XENICAL @21TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:39:42', '0', null, '', '185000', '185000', 'DUS', '', '1', null, '.XENICAL @21TAB ', '165,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01450', null, 'IRGAPAN 200MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '45000', '7000', 'DUS', 'LBR', '10', 'KIMIA FARMA (KF)', 'IRGAPAN 200MG @10TAB', '38,000 / DUS', '7,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01786', null, 'MECOQUIN 500MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '100000', '15000', 'DUS', 'LBR', '10', 'SARAS SUBUR AYOE', 'MECOQUIN 500MG @10TAB', '100,000 / DUS', '10,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02207', '', 'OTORYL 25MG', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2013-08-17 10:52:53', '0', null, '@ 10 TAB', '30000', '4000', 'DUS', 'LBR', '10', 'BAYER', 'OTORYL 25MG ', '4,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02816', null, 'TARONTAL 400MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '640000', '65000', 'DUS', 'LBR', '10', null, 'TARONTAL 400MG  @10TAB', '495,000 / DUS', '50,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00558', null, 'CAVIPLEX ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '40000', '5000', 'DUS', 'LBR', '10', 'DEXA MEDICA', 'CAVIPLEX  @10TAB', '35,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01675', null, 'LIFIBRON 600MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '365000', '42500', 'DUS', 'LBR', '10', 'DEXA MEDICA', 'LIFIBRON 600MG  @10TAB', '365,000 / DUS', '40,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01644', null, 'LERZIN', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '25000', '5000', 'DUS', 'LBR', '5', 'PHAROS', 'LERZIN @10TAB', '25,000 / DUS', '5,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02659', null, 'SELESBION', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '50000', '8000', 'DUS', 'LBR', '10', 'SANDOZ', 'SELESBION @10TAB', '50,000 / DUS', '8,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01119', null, 'FLUCADEX', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '45000', '5000', 'DUS', 'LBR', '10', 'PHAROS', 'FLUCADEX @10TAB', '35,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02426', '8993430102654', 'PRORENAL ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '645000', '65000', 'DUS', 'LBR', '10', 'MAXVITA', 'PRORENAL  @10TAB', '640,000 / DUS', '65,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00106', null, 'ALOFAR 300MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '45000', '7500', 'DUS', 'LBR', '10', 'DARYA VARIA', 'ALOFAR 300MG @10TAB', '45,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00987', null, 'ETHIROV 500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '300000', '60000', 'DUS', 'LBR', '5', 'INTERBAT', 'ETHIROV 500MG  @10TAB', '300,000 / DUS', '60,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00880', null, 'DOHIXAT  100 MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '10TAB', '100000', '10000', 'DUS', 'LBR', '10', 'INTERBAT', 'DOHIXAT  100 MG  10TAB', '100,000 / DUS', '10,000 / LBR', '10 10TAB');
INSERT INTO `tbartikel` VALUES ('00377', null, 'BIOMEGA TAB', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '55000', '7000', 'DUS', 'LBR', '10', 'SOHO', 'BIOMEGA TAB @10TAB', '55,000 / DUS', '7,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01886', null, 'MIONALGIN ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '50000', '10000', 'DUS', 'LBR', '10', 'DEXA MEDICA', 'MIONALGIN  @10TAB', '50,000 / DUS', '7,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01216', null, 'GLIKOS 500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '10TAB', '50000', '5000', 'DUS', 'LBR', '10', 'GSK', 'GLIKOS 500MG  10TAB', '50,000 / DUS', '5,000 / LBR', '10 10TAB');
INSERT INTO `tbartikel` VALUES ('01339', null, 'HUFAMAG PLUS ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '25000', '5000', 'DUS', 'LBR', '10', 'SANBE', 'HUFAMAG PLUS  @10TAB', '25,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01967', null, 'MYLOXAN', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '25000', '3000', 'DUS', 'LBR', '10', 'NOVELL', 'MYLOXAN @10TAB', '20,000 / DUS', '2,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00882', null, 'DOLODON 500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '25000', '5000', 'DUS', 'LBR', '10', 'SANBE', 'DOLODON 500MG  @10TAB', '25,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01266', null, 'GRANTUSIF', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '40000', '5000', 'DUS', 'LBR', '10', 'NOVARTIS', 'GRANTUSIF @10TAB', '35,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01832', null, 'METROLET 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '95000', '10000', 'DUS', 'LBR', '10', 'GUARDIAN P', 'METROLET 500MG  @10TAB', '50,000 / DUS', '7,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02782', null, 'SULCOLON ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '660000', '66000', 'DUS', 'LBR', '10', null, 'SULCOLON  @10TAB', '555,000 / DUS', '56,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00959', null, 'ERAPHAGE 500MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '130000', '14000', 'DUS', 'LBR', '10', 'SANBE', 'ERAPHAGE 500MG @10TAB', '90,000 / DUS', '11,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00105', null, 'ALOFAR 100MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '25000', '5000', 'DUS', 'LBR', '10', 'ETHICA', 'ALOFAR 100MG @10TAB', '25,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00982', null, 'ETHAMBUTOL 500MG  KF', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '70000', '7500', 'DUS', 'LBR', '10', 'SANBE', 'ETHAMBUTOL 500MG  KF @10TAB', '55,000 / DUS', '6,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01724', null, 'LOSARTAN 50MG  HJ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '75000', '25000', 'DUS', 'LBR', '3', 'GSK', 'LOSARTAN 50MG  HJ @10TAB', '75,000 / DUS', '25,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01127', null, 'FLUTAMOL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '110000', '12500', 'DUS', 'LBR', '10', 'SANOFI AVENTIS', 'FLUTAMOL @10TAB', '40,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02036', null, 'NEUROMEC', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '35000', '5000', 'DUS', 'LBR', '10', null, 'NEUROMEC @10TAB', '35,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01413', null, 'INOXIN 400MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '45000', '4500', 'DUS', 'LBR', '15', null, 'INOXIN 400MG @10TAB', '42,500 / DUS', '4,500 / LBR', '15 @10TAB');
INSERT INTO `tbartikel` VALUES ('00717', null, 'CORSATROCIN 500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '140000', '15000', 'DUS', 'LBR', '10', 'IMEDCO DJAJA', 'CORSATROCIN 500MG  @10TAB', '140,000 / DUS', '15,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01065', null, 'FENAMIN 500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '30000', '5000', 'DUS', 'LBR', '5', 'SANBE', 'FENAMIN 500MG  @10TAB', '30,000 / DUS', '5,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02666', null, 'SELESPURIN 300MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '35000', '15000', 'DUS', 'LBR', '10', null, 'SELESPURIN 300MG @10TAB', '35,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00799', null, 'DEMACOLIN', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '50000', '5000', 'DUS', 'LBR', '10', 'NOVELL', 'DEMACOLIN ', '50,000 / DUS', '5,000 / LBR', '10 ');
INSERT INTO `tbartikel` VALUES ('02959', null, 'TROMILIN 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '85000', '10000', 'DUS', 'LBR', '10', null, 'TROMILIN 500MG  @10TAB', '80,000 / DUS', '10,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02917', null, 'TRAMIFEN', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '225000', '75000', 'DUS', 'LBR', '3', null, 'TRAMIFEN @10TAB', '210,000 / DUS', '70,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01717', null, 'LOKEV', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '30000', '7000', 'DUS', 'LBR', '5', 'ASTRAZENECA', 'LOKEV @10TAB', '25,000 / DUS', '7,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('03011', null, 'UROTRACTIN 400MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '210000', '35000', 'DUS', 'LBR', '6', null, 'UROTRACTIN 400MG @10TAB', '210,000 / DUS', '35,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('00711', '3594451400450', 'CORALAN 7,5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '520000', '130000', 'DUS', 'LBR', '4', 'FAHRENHEIT', 'CORALAN 7,5MG  @14TAB', '520,000 / DUS', '127,500 / LBR', '4 @14TAB');
INSERT INTO `tbartikel` VALUES ('00710', '3594451300460', 'CORALAN 5MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '520000', '130000', 'DUS', 'LBR', '4', 'KALBE', 'CORALAN 5MG @14TAB', '520,000 / DUS', '130,000 / LBR', '4 @14TAB');
INSERT INTO `tbartikel` VALUES ('03148', '', 'YAZ (1STRIP @28TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:26:02', '0', null, '', '210000', '0', 'DUS', '', '1', null, 'YAZ (1STRIP @28TAB) ', '172,500 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00157', '', 'ANGELIQ (1STRIP @28TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:15:26', '0', null, '', '365000', '0', 'DUS', '', '1', 'DANKOS', 'ANGELIQ (1STRIP @28TAB) ', '310,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00285', null, 'BD-GARD', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '275000', '56000', 'DUS', 'LBR', '5', 'OTTO', 'BD-GARD @6TAB', '257,500 / DUS', '52,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('02013', null, 'NEOFER ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '190000', '38000', 'DUS', 'LBR', '5', 'KOWA', 'NEOFER  @6TAB', '180,000 / DUS', '37,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('03172', null, 'ZESTRIL 5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@14TAB', '230000', '115000', 'DUS', 'LBR', '2', null, 'ZESTRIL 5MG  @14TAB', '210,000 / DUS', '105,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('02775', '6901070384639', 'STOBLED (1STRIP @16CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:31:37', '0', null, '', '115000', '0', 'DUS', '', '1', null, 'STOBLED (1STRIP @16CAP) ', '115,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01963', '', 'MYFORTIC 360MG', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-12 14:43:58', '0', null, '@10TAB', '1300000', '260000', 'DUS', 'LBR', '5', 'MEPROFARM', 'MYFORTIC 360MG @10TAB', '1,300,000 / DUS', '260,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01288', null, 'HARNAL OCAS ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '435000', '145000', 'DUS', 'LBR', '3', 'ABBOTT', 'HARNAL OCAS  @10TAB', '395,000 / DUS', '132,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02164', '8994568113185', 'OMZ ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '290000', '58000', 'DUS', 'LBR', '5', 'MERCK', 'OMZ  @6TAB', '290,000 / DUS', '58,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('00892', null, 'DORNER ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '217500', '72500', 'DUS', 'LBR', '3', 'SANBE', 'DORNER  @10TAB', '217,500 / DUS', '72,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01738', null, 'LUTENYL ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '295000', '100000', 'DUS', 'LBR', '3', 'JOHNSON&JOHNSON', 'LUTENYL  @10TAB', '297,000 / DUS', '90,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00032', null, 'ACTALIPID 20MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '270000', '90000', 'DUS', 'LBR', '3', 'PFIZER', 'ACTALIPID 20MG @10TAB', '270,000 / DUS', '90,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02063', '5000455017689', 'NIF-TEN ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@14TAB', '460000', '230000', 'DUS', 'LBR', '2', 'CENDO', 'NIF-TEN  @14TAB', '430,000 / DUS', '215,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('02902', null, 'TOPAMAX 100MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '795000', '132500', 'DUS', 'LBR', '6', null, 'TOPAMAX 100MG  @10TAB', '720,000 / DUS', '120,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('02091', '899103010070', 'NORMAFIT ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '105000', '37500', 'DUS', 'LBR', '3', 'JANSSEN-CILAG', 'NORMAFIT  @6TAB', '112,500 / DUS', '37,500 / LBR', '3 @6TAB');
INSERT INTO `tbartikel` VALUES ('02112', null, 'NU-FIT ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '140000', '28000', 'DUS', 'LBR', '5', 'INTERBAT', 'NU-FIT  @4TAB', '92,500 / DUS', '18,500 / LBR', '5 @4TAB');
INSERT INTO `tbartikel` VALUES ('02284', '69012877', 'PIEN TZE HUANG 1TAB', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '800000', null, 'BUAH', null, null, null, 'PIEN TZE HUANG 1TAB ', '650,000 / BUAH', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00043', '', 'ACTONEL 35MG (1STRIP @4TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-01-19 16:11:24', '0', null, '', '430000', '0', 'DUS', '', '1', 'ETHICA', 'ACTONEL 35MG (1STRIP @4TAB) ', '385,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01477', '9317935258378', 'JANUVIA 50MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '320000', '160000', 'DUS', 'LBR', '2', 'DEXA MEDICA', 'JANUVIA 50MG  @14TAB', '295,000 / DUS', '145,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('00927', null, 'ELOVESS ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '95000', '32500', 'DUS', 'LBR', '3', 'PHAROS', 'ELOVESS  @10TAB', '87,500 / DUS', '30,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('81120', '', 'NNO', '0', '1', ' Merry', '2013-08-15 14:01:20', null, null, '0', null, '', '85000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01767', null, 'MALTOFER FOL ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '100000', '20000', 'DUS', 'LBR', '5', 'PRIMA SOLUSI MEDIKA', 'MALTOFER FOL  @6TAB', '80,000 / DUS', '17,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('00252', '', 'AVELOX 400MG (1STRIP @5TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:20:01', '0', null, '', '290000', '0', 'DUS', '', '1', null, 'AVELOX 400MG (1STRIP @5TAB) ', '285,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01141', '20311148', 'FORNEURO ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '150000', '31000', 'DUS', 'LBR', '5', '0', 'FORNEURO  @6TAB', '140,000 / DUS', '28,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01213', null, 'GLAUCON CENDO ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '85000', '42500', 'DUS', 'LBR', '2', 'PFIZER', 'GLAUCON CENDO  @10TAB', '85,000 / DUS', '42,500 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('03102', '899103010070', 'VITANORM ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '115000', '40000', 'DUS', 'LBR', '3', null, 'VITANORM  @10TAB', '110,000 / DUS', '37,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02859', '899103010070', 'TGF-CENDO ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '105000', '37000', 'DUS', 'LBR', '3', null, 'TGF-CENDO  @6TAB', '112,500 / DUS', '37,000 / LBR', '3 @6TAB');
INSERT INTO `tbartikel` VALUES ('02656', null, 'SEBIVO ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@14TAB', '1460000', '730000', 'DUS', 'LBR', '2', 'DANKOS', 'SEBIVO  @14TAB', '1,460,000 / DUS', '730,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('01002', null, 'EVISTA 60MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '550000', '275000', 'DUS', 'LBR', '2', 'INTERBAT', 'EVISTA 60MG @14TAB', '555,000 / DUS', '275,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('01436', null, 'INTERXANTHIN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '180000', '60000', 'DUS', 'LBR', '3', 'KIMIA FARMA (KF)', 'INTERXANTHIN  ', '150,000 / DUS', '50,000 / LBR', '3 ');
INSERT INTO `tbartikel` VALUES ('80779', null, '.OSSOPAN 800', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '315000', '53000', 'DUS', 'LBR', '6', null, '.OSSOPAN 800 @10TAB', '230,000 / DUS', '40,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('03161', null, 'ZANIDIP 20MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@14TAB', '310000', '155000', 'DUS', 'LBR', '2', null, 'ZANIDIP 20MG  @14TAB', '300,000 / DUS', '150,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('01375', '8993347008353', 'ILOS 50MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '187500', '62500', 'DUS', 'LBR', '3', 'DEXA MEDICA', 'ILOS 50MG @10TAB', '180,000 / DUS', '60,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00635', '8993347006403', 'CHOLESPAR 20MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '530000', '177500', 'DUS', 'LBR', '3', 'PHARMASI BINANGKIT', 'CHOLESPAR 20MG  @10TAB', '495,000 / DUS', '165,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00160', '', 'ANORAL ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:15:35', '0', null, '', '120000', '0', 'DUS', '', '1', 'SEJAHTERA FITOFARMA', 'ANORAL  ', '120,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00636', '8993347011001', 'CHOLESPAR 40MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '525000', '175000', 'DUS', 'LBR', '3', 'PHARMASI BINANGKIT', 'CHOLESPAR 40MG  @10TAB', '510,000 / DUS', '170,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00895', null, 'DR FIORENTINI', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '27000', null, 'LBR', null, null, 'SCAN', 'DR FIORENTINI ', '20,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02115', null, 'NULCER 200MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '65000', '15000', 'DUS', 'LBR', '5', 'SARAS SUBUR', 'NULCER 200MG @10TAB', '52,500 / DUS', '13,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01922', null, 'MOSARDAL 500MG (1STRIP @6KAPLET)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '185000', null, 'DUS', null, null, null, 'MOSARDAL 500MG (1STRIP @6KAPLET) ', '185,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80441', '', '.HEPAMERZ (10SACHET)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:48:35', '0', null, '', '415000', '0', 'DUS', '', '1', null, '.HEPAMERZ (10SACHET) ', '365,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03147', '', 'YASMIN (1STRIP @21TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:26:07', '0', null, '', '185000', '185000', 'DUS', '', '1', null, 'YASMIN (1STRIP @21TAB) ', '170,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01062', null, 'FEMARA 2,5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '1890000', '630000', 'DUS', 'LBR', '3', 'SANBE', 'FEMARA 2,5MG  @10TAB', '1,900,000 / DUS', '630,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02090', '8999809102386', 'NORIZEC 3 ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '126000', '42000', 'DUS', 'LBR', '3', 'JANSSEN-CILAG', 'NORIZEC 3  @10TAB', '126,000 / DUS', '42,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01766', null, 'MALTOFER ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '90000', '18000', 'DUS', 'LBR', '5', 'TUMBUH LESTARI', 'MALTOFER  @6TAB', '75,000 / DUS', '16,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('00537', null, 'CARNICO Q ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '600000', '61000', 'DUS', 'LBR', '10', 'ARMOXINDO FARMA', 'CARNICO Q  @10TAB', '580,000 / DUS', '58,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02200', null, 'OSTEOKOM FORTE', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '135000', null, 'DUS', null, null, 'JANSSEN-CILAG', 'OSTEOKOM FORTE ', '127,500 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00603', '899103010070', 'CENDOVITAL ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '105000', '37500', 'DUS', 'LBR', '3', 'DEXA MEDICA', 'CENDOVITAL  @10TAB', '112,500 / DUS', '375,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('081121', '', 'TANTUM LOZENGES ', '0', '1', ' Merry', '2013-08-15 14:40:17', null, null, '0', null, '', '37000', '0', 'DUS', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01920', null, 'MONURIL 3 GR', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '165000', null, 'DUS', null, null, 'LAPI', 'MONURIL 3 GR ', '150,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01259', '8997002880193', 'GOLMUN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '150000', '30000', 'DUS', 'LBR', '5', 'TAKEDA', 'GOLMUN  @6TAB', '150,000 / DUS', '30,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01381', '9322882009713', 'IMDUR 60MG ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-10-01 15:11:09', '0', null, '@14TAB', '190000', '95000', 'DUS', 'LBR', '2', 'INDOFARMA', 'IMDUR 60MG  @14TAB', '170,000 / DUS', '82,500 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('01672', '8992112000028', 'LIFEZAR 100MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '300000', '100000', 'DUS', 'LBR', '3', 'NOVELL', 'LIFEZAR 100MG @10TAB', '262,500 / DUS', '85,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02958', null, 'TROMBOLES ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '410000', '70000', 'DUS', 'LBR', '6', null, 'TROMBOLES  @10TAB', '365,000 / DUS', '65,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('00645', '5702157150809', 'CIPRALEX 10MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '540000', '270000', 'DUS', 'LBR', '2', 'MEPROFARM', 'CIPRALEX 10MG @14TAB', '480,000 / DUS', '240,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('00846', '', 'DIANE 35 (1STRIP @21TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:06:02', '0', null, '', '100000', '100000', 'DUS', '', '1', 'BOEHRINGER INGELHEIM', 'DIANE 35 (1STRIP @21TAB) ', '90,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00527', '8999809102126', 'CARDIOMIN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '52500', '11000', 'DUS', 'LBR', '5', 'SAMPHARINDO PRATAMA', 'CARDIOMIN  @4TAB', '42,500 / DUS', '9,500 / LBR', '5 @4TAB');
INSERT INTO `tbartikel` VALUES ('00289', '8994573000333', 'BECOMBION DROPS (1BOTOL @15ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:21:52', '0', null, '', '26000', '0', 'BOTOL', '', '1', 'PYRIDAM', 'BECOMBION DROPS (1BOTOL @15ML) ', '23,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03076', '8993347006670', 'VIOSTIN DS ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-09-27 14:44:23', '0', null, '', '28000', '28000', 'LBR', '', '1', null, 'VIOSTIN DS  @5TAB', '150,000 / DUS', '25,000 / LBR', '6 @5TAB');
INSERT INTO `tbartikel` VALUES ('02099', null, 'NOROS', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '225000', '45000', 'DUS', 'LBR', '5', 'PHAROS', 'NOROS @10TAB', '195,000 / DUS', '40,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02472', '8850769006223', 'PYNOCARE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '200000', '100000', 'DUS', 'LBR', '2', 'PHAROS', 'PYNOCARE  @10TAB', '200,000 / DUS', '100,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('01774', null, 'MATOVIT', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '105000', '35000', 'DUS', 'LBR', '3', 'SARI SEHAT', 'MATOVIT @10TAB', '105,000 / DUS', '32,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00255', '', 'AVODART 0,5MG', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:20:21', '0', null, '@10TAB', '265000', '90000', 'DUS', 'LBR', '3', 'DEXA MEDICA', 'AVODART 0,5MG @10TAB', '255,000 / DUS', '85,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01008', null, 'EXFORGE 5MG/80MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '400000', '200000', 'DUS', 'LBR', '2', 'INTERBAT', 'EXFORGE 5MG/80MG @14TAB', '350,000 / DUS', '175,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('01006', null, 'EXFORGE 10MG/160MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '520000', '260000', 'DUS', 'LBR', '2', 'INTERBAT', 'EXFORGE 10MG/160MG @14TAB', '480,000 / DUS', '240,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('01007', null, 'EXFORGE 5MG/160MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '490000', '245000', 'DUS', 'LBR', '2', 'INTERBAT', 'EXFORGE 5MG/160MG  @14TAB', '210,000 / DUS', '200,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('01476', '9317935258385', 'JANUVIA 100MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '340000', '170000', 'DUS', 'LBR', '2', null, 'JANUVIA 100MG  @14TAB', '295,000 / DUS', '150,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('00772', '8999809100764', 'DALFAROL-300 ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '285000', '12500', 'DUS', 'LBR', '25', 'DANKOS', 'DALFAROL-300  @4TAB', '285,000 / DUS', '12,500 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('03095', '8993430102777', 'VITAMAM 1 ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '60000', '20000', 'DUS', 'LBR', '3', null, 'VITAMAM 1  @10TAB', '39,000 / DUS', '13,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00456', null, 'BRM ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '410000', '70000', 'DUS', 'LBR', '6', 'OTSUKA', 'BRM  @10TAB', '390,000 / DUS', '65,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('80094', null, '.ASTHIN FORCE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '125000', '45000', 'DUS', 'LBR', '3', null, '.ASTHIN FORCE  @6TAB', '110,000 / DUS', '37,500 / LBR', '3 @6TAB');
INSERT INTO `tbartikel` VALUES ('00602', '899103010070', 'CENDOBERRY ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '105000', '37000', 'DUS', 'LBR', '3', 'SOHO', 'CENDOBERRY  @10TAB', '105,000 / DUS', '37,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00202', '9317935258187', 'ARCOXIA 60MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '315000', '105000', 'DUS', 'LBR', '3', 'DEXA MEDICA', 'ARCOXIA 60MG  @10TAB', '285,000 / DUS', '95,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00122', null, 'AMARYL 2MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '245000', '49000', 'DUS', 'LBR', '5', 'LAPI', 'AMARYL 2MG @10TAB', '237,500 / DUS', '47,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('80429', null, '.GLURENORM 30MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '200000', '22000', 'DUS', 'LBR', '10', null, '.GLURENORM 30MG  @10TAB', '150,000 / DUS', '15,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00741', '5000455017771', 'CRESTOR 10MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '490000', '245000', 'DUS', 'LBR', '2', 'KALBE', 'CRESTOR 10MG @14TAB', '450,000 / DUS', '225,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('03134', '9317935258286', 'VYTORIN 10MG/20MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '500000', '170000', 'DUS', 'LBR', '3', null, 'VYTORIN 10MG/20MG  @10TAB', '510,000 / DUS', '170,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01685', null, 'LIPANTHYL SUPRA 160MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '570000', '190000', 'DUS', 'LBR', '3', 'NOVARTIS', 'LIPANTHYL SUPRA 160MG  @10TAB', '390,000 / DUS', '130,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00111', null, 'ALPENTIN 300MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '362500', '72500', 'DUS', 'LBR', '5', 'LAPI', 'ALPENTIN 300MG @10TAB', '362,500 / DUS', '72,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01961', '', 'MYFORTIC 180MG', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-12 16:54:25', '0', null, '@10 TAB', '675000', '135000', 'DUS', 'LBR', '5', 'MEGA L', 'MYFORTIC 180MG ', ' / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00763', '', 'CYMBALTA', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-24 15:48:24', '0', null, '', '125000', '0', 'LBR', '', '1', 'FAHRENHEIT', 'CYMBALTA ', '120,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02910', '', 'TRACETATE SYRUP 200ML', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-12 09:56:03', '0', null, '', '375000', '0', 'BTL', '', '1', null, 'TRACETATE SYRUP 200ML ', '350,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('081115', '', 'NONITEENS', '0', '1', ' Merry', '2013-08-13 14:05:06', null, null, '0', null, '', '140000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01201', null, 'GENTEAL GEL EYE 10g', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '60000', null, 'TUBE', null, null, 'SCAN', 'GENTEAL GEL EYE 10g ', '60,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00076', '388710', 'ALBOTHYL10 ML', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:14:22', '0', null, '', '32000', '0', 'BTOL', '', '1', 'LAPI', 'ALBOTHYL ', '28,000 / BTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80985', '', '.THYRAX TAB (1BTL @100TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2013-11-21 09:14:40', '0', null, '', '220000', '2500', 'BTL', 'TAB', '100', null, '.THYRAX TAB (1BTL @100TAB) ', '185,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00908', '5413895021251', 'DUOTRAV (2,5ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-21 10:13:24', '0', null, '', '410000', '0', 'BOTOL', '', '1', 'ABBOTT', 'DUOTRAV (2,5ML) ', '410,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02728', '', 'SOFRADEX EAR/EYE DROPS (8ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:33:09', '0', null, '', '57000', '0', 'BOTOL', '', '1', null, 'SOFRADEX EAR/EYE DROPS (8ML) ', '57,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02123', '', 'NUTRIVISION (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:17:55', '0', null, '', '225000', '0', 'BOTOL', '', '1', 'DARYA-VARIA', 'NUTRIVISION (1BOTOL @30CAP) ', '185,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03121', '', 'VOLTAREN OPHTHA EYE DROPS (5ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:26:19', '0', null, '', '57000', '0', 'BOTOL', '', '1', null, 'VOLTAREN OPHTHA EYE DROPS (5ML) ', '57,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00335', null, 'BETOPTIMA EYE DROPS (5ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '85000', null, 'BOTOL', null, null, 'SANBE', 'BETOPTIMA EYE DROPS (5ML) ', '67,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02799', '', 'TAFLOTAN 0,0015% EYE DROPS (2,5ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:30:53', '0', null, '', '315000', '0', 'BOTOL', '', '1', null, 'TAFLOTAN 0,0015% EYE DROPS (2,5ML) ', '260,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02815', '8992858777512', 'TARIVID OTIC SOLUTION (3ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:30:35', '0', null, '', '76000', '0', 'BOTOL', '', '1', null, 'TARIVID OTIC SOLUTION (3ML) ', '70,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01125', null, 'FLUMETHOLON 0,1% (5ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '87500', null, 'BOTOL', null, null, 'BAYER', 'FLUMETHOLON 0,1% (5ML) ', '80,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02812', '', 'TARIVID 0,3% EYE DROPS (5ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:30:40', '0', null, '', '55000', '0', 'BOTOL', '', '1', null, 'TARIVID 0,3% EYE DROPS (5ML) ', '55,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00259', '300650275132', 'AZOPT EYE DROPS (5ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:20:38', '0', null, '', '230000', '230000', 'BOTOL', '', '1', 'PHAROS', 'AZOPT EYE DROPS (5ML) ', '205,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02247', null, 'PATANOL ED 0,1% (1BOTOL @5ML)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '120000', null, 'BOTOL', null, null, 'BOEHRINGER INGELHEIM', 'PATANOL ED 0,1% (1BOTOL @5ML) ', '60,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02893', '', 'TOBREX', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:28:50', '0', null, '', '60000', '0', 'BTL', '', '1', null, 'TOBREX ', '50,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01977', null, 'NAPHCON-A (15ML)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '42500', null, 'BOTOL', null, null, 'PRAFA', 'NAPHCON-A (15ML) ', '37,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01200', null, 'GENTEAL EYE DROPS (10ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '65000', null, 'BOTOL', null, null, 'NOVARTIS', 'GENTEAL EYE DROPS (10ML) ', '60,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00768', '8991111151175', 'DAKTARIN POWDER (1BOTOL @20g)', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:07:23', '0', null, '', '50000', '0', 'BOTOL', '', '1', 'KALBE', 'DAKTARIN POWDER (1BOTOL @20g) ', '48,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01068', '8992837670322', 'FENISTIL ORAL DROPS (10ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '60000', null, 'BOTOL', null, null, 'INTERBAT', 'FENISTIL ORAL DROPS (10ML) ', '49,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00707', '', 'COOLING 5 SPRAY', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:08:00', '0', null, '', '20000', '0', 'BTL', '', '1', 'FAHRENHEIT', 'COOLING 5 SPRAY ', '22,000 / BLT', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00723', '8995201800028', 'COUNTERPAIN 30g', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-23 15:50:46', '0', null, '', '35000', '0', 'TUBE', '', '1', 'FAHRENHEIT', 'COUNTERPAIN 30g ', '32,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01478', '8997007790268', 'JAO-NORI', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:03:45', '0', null, '', '37500', '37500', 'BTOL', '', '1', null, 'JAO-NORI ', '37,000 / BTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01233', '322181', 'GLUCOSAMINE CIRCLE HEALTH (1BOTOL @60TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-20 04:41:05', '0', null, '', '185000', '5000', 'BTL', 'BIJI', '60', 'IFARS', 'GLUCOSAMINE CIRCLE HEALTH (1BOTOL @60TAB) ', '160,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02279', null, 'PHISOHEX 110ML', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '30000', null, 'BTL', null, null, 'TANABE', 'PHISOHEX 110ML ', '30,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00295', '', 'BEDAK ULAR ( BESAR )', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:22:01', '0', null, '', '27500', '0', 'BTOL', '', '1', 'CORSA INDUSTRIES', 'BEDAK ULAR ( BESAR ) ', '23,000 / BTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00351', null, 'BIO HAIR TONIK 123 (1BOTOL @210ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '95000', null, 'BOTOL', null, null, 'IKAPHARMINDO', 'BIO HAIR TONIK 123 (1BOTOL @210ML) ', '92,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00340', null, 'BICNAT 500MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '100', null, 'BTIR', null, null, 'PHAROS', 'BICNAT 500MG ', '50 / BTIR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00595', '', 'CENDO D-RETH MINI DOSE', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 13:09:15', '0', null, '@ 10 TAB', '105000', '35000', 'DUS', 'LBR', '3', null, 'CENDO D-RETH MINI DOSE ', '35,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01003', null, 'EVOTHYL 100MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '95000', '20000', 'DUS', 'LBR', '5', 'INTERBAT', 'EVOTHYL 100MG  @6TAB', '85,000 / DUS', '17,500 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01004', null, 'EVOTHYL 300MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '210000', '42000', 'DUS', 'LBR', '5', 'INTERBAT', 'EVOTHYL 300MG  @6TAB', '185,000 / DUS', '37,500 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('00238', null, 'ASTIKA 100MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '45000', '6000', 'DUS', 'LBR', '10', 'DEXA MEDICA', 'ASTIKA 100MG @10TAB', '45,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01806', null, 'MEIACT 200MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '360000', '180000', 'DUS', 'LBR', '2', 'MAHAKAM BETA FARMA', 'MEIACT 200MG @10TAB', '360,000 / DUS', '180,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('81111', '', 'GLIMEFION 2 MG', '0', '1', ' Merry', '2013-08-13 13:54:16', ' Merry', '2013-08-17 13:08:26', '0', null, '@10 TAB', '125000', '42000', 'DUS', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00960', null, 'ERGOTIKA 1MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '170000', '18000', 'DUS', 'LBR', '10', 'SANBE', 'ERGOTIKA 1MG  @10TAB', '170,000 / DUS', '18,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01346', null, 'HYPERCHOL 200MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '275000', '55000', 'DUS', 'LBR', '5', 'KIMIA FARMA (KF)', 'HYPERCHOL 200MG  @6TAB', '237,500 / DUS', '47,500 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01677', '', 'LINCOCIN 500MG', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-25 14:42:49', '0', null, '10TAB', '264000', '88000', 'DUS', 'LBR', '3', 'FERRON PAR', 'LINCOCIN 500MG 10TAB', '240,000 / DUS', '80,000 / LBR', '3 10TAB');
INSERT INTO `tbartikel` VALUES ('00863', null, 'DIOVAN 80MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '280000', '140000', 'DUS', 'LBR', '2', 'TAKEDA', 'DIOVAN 80MG  @14TAB', '300,000 / DUS', '150,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('00006', null, 'A-B VASK 5MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@ 10 TAB', '165000', '55000', 'DUS', 'LBR', '3', 'SOHO', 'A-B VASK 5MG @ 10 TAB', '140,000 / DUS', '47,500 / LBR', '3 @ 10 TAB');
INSERT INTO `tbartikel` VALUES ('00005', null, 'A-B VASK 10MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@ 10 TAB', '262500', '87500', 'DUS', 'LBR', '3', 'SOHO', 'A-B VASK 10MG @ 10 TAB', '262,500 / DUS', '87,500 / LBR', '3 @ 10 TAB');
INSERT INTO `tbartikel` VALUES ('01620', null, 'LAPISIV-T', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '60000', '6000', 'DUS', 'LBR', '10', 'PHAROS', 'LAPISIV-T @10TAB', '60,000 / DUS', '6,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01575', null, 'LACOPHEN 500MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '260000', '26000', 'DUS', 'LBR', '10', 'TAISHO', 'LACOPHEN 500MG @10TAB', '260,000 / DUS', '26,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01618', null, 'LAPIFLOX 500MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '295000', '70000', 'DUS', 'LBR', '5', 'ITRASAL', 'LAPIFLOX 500MG @6TAB', '295,000 / DUS', '60,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01587', null, 'LAGESIL ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '75000', '8000', 'DUS', 'LBR', '10', 'GSK', 'LAGESIL  @10TAB', '65,000 / DUS', '7,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01624', null, 'LASAL 4MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '200000', '20000', 'DUS', 'LBR', '10', 'SANBE', 'LASAL 4MG @10TAB', '200,000 / DUS', '20,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00290', '8994573000326', 'BECOMBION FORTE', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '85000', '9000', 'DUS', 'LBR', '10', null, 'BECOMBION FORTE @10TAB', '75,000 / DUS', '8,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('03167', null, 'ZEGREN 50MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '160000', '17000', 'DUS', 'LBR', '10', null, 'ZEGREN 50MG  @10TAB', '110,000 / DUS', '12,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('81125', '', 'LAPIMOX 500MG', '0', '1', ' Merry', '2013-08-17 13:16:53', null, null, '0', null, '@10 TAB', '250000', '25000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01592', null, 'LAMESON 16MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '675000', '67500', 'DUS', 'LBR', '10', 'SOHO', 'LAMESON 16MG  @10TAB', '610,000 / DUS', '62,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00086', null, 'ALEGI 0,5MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '105000', '11000', 'DUS', 'LBR', '10', 'LAPI', 'ALEGI 0,5MG @10TAB', '100,000 / DUS', '10,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('81126', '', 'LAPIMUC TAB', '0', '1', ' Merry', '2013-08-17 13:18:26', null, null, '0', null, '@ 10 TAB', '80000', '9000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('03056', '', 'VIAGRA 100 MG ( 1LBR )', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-20 14:31:46', '0', null, '', '520000', '130000', 'DUS', 'BIJI', '4', null, 'VIAGRA 100 MG ( 1LBR ) ', '470,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00298', null, 'BENIAZIDE 400MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '55000', '6000', 'DUS', 'LBR', '10', 'CORSA INDUSTRIES', 'BENIAZIDE 400MG @10TAB', '55,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02888', null, 'TIRIZ 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '105000', '35000', 'DUS', 'LBR', '3', null, 'TIRIZ 10MG  @10TAB', '95,000 / DUS', '32,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00331', null, 'BETASERC 24MG (1STRIP @20TAB)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '190000', null, 'DUS', null, null, 'DEXA MEDICA', 'BETASERC 24MG (1STRIP @20TAB) ', '160,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02823', null, 'TEBOKAN  40MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '500000', '55000', 'DUS', 'LBR', '10', null, 'TEBOKAN  40MG  @10TAB', '450,000 / DUS', '46,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02825', null, 'TEBOKAN SPESIAL 80MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '315000', '105000', 'DUS', 'LBR', '3', null, 'TEBOKAN SPESIAL 80MG  @10TAB', '270,000 / DUS', '90,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('81124', '', 'ACTALIPID 40 MG', '0', '1', ' Merry', '2013-08-17 13:16:01', null, null, '0', null, '@10 TAB', '270000', '90000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81123', '', 'SAPHRIS 10 MG', '0', '1', ' Merry', '2013-08-17 13:14:52', null, null, '0', null, '@10 TAB', '500000', '250000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81122', '', 'SAPHRIS 5 MG', '0', '1', ' Merry', '2013-08-17 13:13:56', null, null, '0', null, '@10TAB', '430000', '215000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81121', '', 'SEQUEST', '0', '1', ' Merry', '2013-08-17 13:12:14', null, null, '0', null, '@1SCH', '390000', '20000', 'BOX', 'SCH', '20', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01560', '8992772233064', 'KOYO GUTONGTIEGAO', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '38000', null, 'DUS', null, null, 'NOVARTIS', 'KOYO GUTONGTIEGAO ', '35,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02687', '', 'SHANG HAN NING (1BOTOL @20CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:35:04', '0', null, '', '16000', '0', 'BOTOL', '', '1', null, 'SHANG HAN NING (1BOTOL @20CAP) ', '12,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00751', '8993191739939', 'CURMINO (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:07:45', '0', null, '', '30000', '0', 'BOTOL', '', '1', 'FAHRENHEIT', 'CURMINO (1BOTOL @30CAP) ', '24,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80797', '', '.PAY FUNG YEN ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:46:56', '0', null, '', '125000', '0', 'DUS', '', '1', null, '.PAY FUNG YEN  ', '120,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01566', null, 'KY JELLY', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '47500', null, 'BTOL', null, null, 'COMBIPHAR', 'KY JELLY ', '45,000 / BTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03154', '', 'YUNNAN KOYO', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:25:54', '0', null, '', '43000', '0', 'DUS', '', '1', null, 'YUNNAN KOYO ', '43,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01871', '', 'MINYAK DEWI TUNJONG  KECIL', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 11:05:15', '0', null, '', '9000', '0', 'BTL', '', '0', 'SANDOZ', 'MINYAK DEWI KECIL ', '9,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00273', '', 'BALPIRIK MERAH', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-07-12 13:27:46', '0', null, '', '67000', '6500', 'LUSIN', 'BIJI', '12', 'DEXA MEDICA', 'BALPIRIK MERAH ', '6,500 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02507', '388550', 'REDOXON', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 21:27:17', '0', null, '', '64000', '32000', 'DUS', 'TUBE', '2', null, 'REDOXON ', '25,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00560', '', 'CDR', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-18 00:24:09', '0', null, '10BIJI', '66000', '33000', 'DUS', 'TUBE', '2', null, 'CDR ', '25,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81128', '', 'KAKAK TUA', '0', '1', ' Merry', '2013-08-17 13:30:41', null, null, '0', null, '', '180000', '10000', 'BOX', 'BTL', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81129', '', 'HUO XIANG ZHENG', '0', '1', ' Merry', '2013-08-17 13:33:16', null, null, '0', null, '', '15000', '3000', 'BOX', 'BTL', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01793', '8992858253610', 'MEDIFLEX (1BOTOL @75g)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '180000', null, 'BOTOL', null, null, 'SOHO', 'MEDIFLEX (1BOTOL @75g) ', '145,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03146', '', 'YANYAN HANPIAN (2STRIP @8TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:26:13', '0', null, '', '15000', '0', 'DUS', '', '1', null, 'YANYAN HANPIAN (2STRIP @8TAB) ', '15,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80430', '', '.GOLDEN THROAT', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:48:42', '0', null, '', '14000', '0', 'DUS', '', '1', null, '.GOLDEN THROAT ', '13,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00190', '9556586301013', 'APPETON MV21+GINSENG (1DUS @30CAP)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-15 16:28:14', '0', null, '', '260000', '260000', 'DUS', '', '1', 'PRAFA', 'APPETON MV21+GINSENG (1DUS @30CAP) ', '125,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00911', null, 'DUREX ISI 12', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '45000', null, 'DUS', null, null, 'SANBE', 'DUREX ISI 12 ', '45,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01366', null, 'I-FLEX', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '510000', null, 'BTL', null, null, 'INDOFARMA (IF)', 'I-FLEX ', '510,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02787', '8994591030077', 'SUPRADYN (1BOTOL @30KAPLET)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:31:05', '0', null, '', '73500', '0', 'BOTOL', '', '1', null, 'SUPRADYN (1BOTOL @30KAPLET) ', '67,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01947', null, 'MULAX (1DUS @10SACHETS)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '52500', null, 'DUS', null, null, 'GRACIA PHARMINDO', 'MULAX (1DUS @10SACHETS) ', '45,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00180', '9556586415017', 'APPETON ACTIV-C ORANGE (1BOTOL @60TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-15 16:29:16', '0', null, '', '140000', '0', 'BOTOL', '', '1', 'NOVELL', 'APPETON ACTIV-C ORANGE (1BOTOL @60TAB) ', '70,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00187', '9556586412016', 'APPETON LYSINE CHEWABLE (1BOTOL @60TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-15 16:28:22', '0', null, '', '185000', '0', 'BOTOL', '', '1', 'PRAFA', 'APPETON LYSINE CHEWABLE (1BOTOL @60TAB) ', '93,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00181', '9556586420011', 'APPETON A-Z KID^S ORANGE (1BOTOL @100TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-15 16:29:09', '0', null, '', '110000', '0', 'BOTOL', '', '1', 'SANDOZ', 'APPETON A-Z KID^S ORANGE (1BOTOL @100TAB) ', '60,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00179', '9556586415031', 'APPETON ACTIV-C BLACKCURRANT (1BOTOL @60TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-15 16:29:24', '0', null, '', '140000', '0', 'BOTOL', '', '1', 'NOVELL', 'APPETON ACTIV-C BLACKCURRANT (1BOTOL @60TAB) ', '72,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00182', '9556586420035', 'APPETON A-Z KID^S STRAWBERRY (1BOTOL @100TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-15 16:29:00', '0', null, '', '120000', '0', 'BOTOL', '', '1', null, 'APPETON A-Z KID^S STRAWBERRY (1BOTOL @100TAB) ', '60,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00184', '9556586414010', 'APPETON C 250MG ORANGE (1BOTOL @60TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-15 16:28:45', '0', null, '', '140000', '0', 'BOTOL', '', '1', null, 'APPETON C 250MG ORANGE (1BOTOL @60TAB) ', '70,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00183', '9556586421018', 'APPETON C 250MG BLACKCURRANT (1BOTOL @60TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-15 16:28:53', '0', null, '', '140000', '0', 'BOTOL', '', '1', null, 'APPETON C 250MG BLACKCURRANT (1BOTOL @60TAB) ', '70,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00185', '9556586419015', 'APPETON C 500MG ORANGE (1BOTOL @30TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-15 16:28:38', '0', null, '', '140000', '0', 'BOTOL', '', '1', 'BERNOFARM', 'APPETON C 500MG ORANGE (1BOTOL @30TAB) ', '72,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00191', '9556586411019', 'APPETON ORIGINAL CHEWABLE (1BOTOL @60TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-15 16:28:03', '0', null, '', '72000', '0', 'BOTOL', '', '1', 'PRAFA', 'APPETON ORIGINAL CHEWABLE (1BOTOL @60TAB) ', '72,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01901', '8993176110067', 'MKP LANG (1BOTOL @120ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-22 14:56:30', '0', null, '', '330000', '28000', 'LSN', 'BTL', '12', 'ETHICA', 'MKP LANG (1BOTOL @120ML) ', '25,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01556', null, 'KOTAK OBAT BESAR', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '15000', null, 'DUS', null, null, 'FAHRENHEIT', 'KOTAK OBAT BESAR ', '15,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01900', '', 'MKP KONICARE 100ML', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2014-02-05 18:11:33', '0', null, '', '427500', '36000', 'LSN', 'BTL', '12', 'ETHICA', 'MKP KONICARE 100ML ', '32,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01148', '', 'FRESH CARE OIL TEENS', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2013-08-17 12:51:59', '0', null, '', '16000', '16000', 'BTL', '', '1', 'GSK', 'FRESH CARE OIL ', '16,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00272', '', 'BALPIRIK HIJAU', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:21:33', '0', null, '', '6000', '0', 'TUBE', '', '1', 'DEXA MEDICA', 'BALPIRIK HIJAU ', '6,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02607', '', 'SALONPAS CAIR BESAR50ML', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 17:08:10', '0', null, '', '16000', '0', 'BTL', '', '1', 'PFIZER', 'SALONPAS CAIR BESAR ', '14,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02764', '', 'STARDEC DIGITAL THERMOMETER', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:31:53', '0', null, '', '27500', '0', 'TUBE', '', '1', null, 'STARDEC DIGITAL THERMOMETER ', '27,500 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03073', '', 'VINMED DIGITAL THERMOMETER', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:27:39', '0', null, '', '20000', '0', 'PEN', '', '1', null, 'VINMED DIGITAL THERMOMETER ', '22,500 / PEN', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03036', '8992772123068', 'VEGETA', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:27:50', '0', null, '', '8500', '0', 'DUS', '', '1', null, 'VEGETA ', '8,500 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01883', '8991919111951', 'MINYAK TELON NYONYA MENEER (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2014-02-07 11:28:43', '0', null, '', '155000', '14000', 'LSN', 'BTL', '12', 'PHAROS', 'MINYAK TELON NYONYA MENEER (1BOTOL @60ML) ', '13,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('081112', '', 'MICROPORE @BESAR', '0', '1', ' Merry', '2013-08-13 11:54:48', null, null, '0', null, '', '32000', '0', 'ROL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00745', '8850007400479', 'CTM ( 1000 )', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2014-01-22 18:53:06', '0', null, '', '35000', '100', 'BTOL', 'BIJI', '1', 'KALBE', 'CTM ( 1000 ) ', '15,000 / BTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('08108', '', 'LAPIKOTE TAB', '0', '1', ' Merry', '2013-08-13 12:57:30', ' Merry', '2013-08-17 13:28:20', '0', null, '@10 TAB', '135000', '14000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81127', '', 'LAPICEF 500 MG', '0', '1', ' Merry', '2013-08-17 13:23:45', null, null, '0', null, '@ 10 TAB', '1000000', '100000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('80963', '', '.TEBOKAN FORTE 120MG (2LBR @15TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 13:24:33', '0', null, '@15 TAB', '450000', '225000', 'DUS', 'LBR', '2', null, '.TEBOKAN FORTE 120MG (2LBR @15TAB) ', '400,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80659', '', '.MECOLA FORTE (5LBR @6TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 13:29:18', '0', null, '@6 CAP', '182000', '37500', 'DUS', 'LBR', '5', null, '.MECOLA FORTE (5LBR @6TAB) ', '170,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01976', '', 'NANO PROPOLIS', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-10-18 12:07:06', '0', null, '', '420000', '60000', 'BOX', 'BTL', '7', 'NOVARTIS', 'NANO PROPOLIS ', '60,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81130', '', ' APPETON A-Z BLACKCURRANT', '0', '1', ' Merry', '2013-08-17 13:58:17', ' Merry', '2013-08-17 13:59:15', '0', null, '@100TAB', '57500', '0', 'BTL', 'BTL', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('081131', '', 'PO LEUNG', '0', '1', ' Merry', '2013-08-17 14:01:07', ' Merry', '2013-10-21 16:56:35', '0', null, '', '155000', '16000', 'BOX', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02736', null, 'SOHOTIN 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '425000', '42500', 'DUS', 'LBR', '10', null, 'SOHOTIN 10MG  @10TAB', '425,000 / DUS', '42,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02059', null, 'NICHOMYCIN 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '80000', '20000', 'DUS', 'LBR', '5', 'CENDO', 'NICHOMYCIN 500MG  @10TAB', '80,000 / DUS', '20,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02387', null, 'PRIMPERAN COMPOSITUM ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '160000', '17500', 'DUS', 'LBR', '10', 'GUARDIAN P', 'PRIMPERAN COMPOSITUM  @10TAB', '160,000 / DUS', '17,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01186', '8990999010017', 'GASTRUCID ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '40000', '5000', 'DUS', 'LBR', '10', null, 'GASTRUCID  @10TAB', '20,000 / DUS', '2,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00986', null, 'ETHILIN 500MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '245000', '50000', 'DUS', 'LBR', '5', 'INTERBAT', 'ETHILIN 500MG @10TAB', '245,000 / DUS', '50,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01306', null, 'HEPT-A-MYL ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '170000', '85000', 'DUS', 'LBR', '2', 'LANDSON', 'HEPT-A-MYL  @10TAB', '135,000 / DUS', '67,500 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('02185', null, 'OSSORAL 800MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '255000', '43000', 'DUS', 'LBR', '6', 'MERCK', 'OSSORAL 800MG  @10TAB', '240,000 / DUS', '43,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('01696', null, 'LIPO FOOD ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '30000', null, 'LBR', null, null, 'KALBE', 'LIPO FOOD  ', '30,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00932', null, 'EMIBION ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '130000', '13000', 'DUS', 'LBR', '10', 'SANBE', 'EMIBION  @10TAB', '130,000 / DUS', '13,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02309', '8992858665413', 'PLANTACID FORTE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '85000', '9000', 'DUS', 'LBR', '10', 'MERCK', 'PLANTACID FORTE  @10TAB', '85,000 / DUS', '8,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02138', '8999809700094', 'OBIPLUZ ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@5TAB', '100000', '17500', 'DUS', 'LBR', '6', 'FORTUNE STAR', 'OBIPLUZ  @5TAB', '72,000 / DUS', '12,000 / LBR', '6 @5TAB');
INSERT INTO `tbartikel` VALUES ('03186', null, 'ZORALIN ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '120000', '15000', 'DUS', 'LBR', '10', null, 'ZORALIN  @10TAB', '125,000 / DUS', '12,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00676', null, 'CLORACEF 500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '465000', '155000', 'DUS', 'LBR', '3', 'FAHRENHEIT', 'CLORACEF 500MG  @10TAB', '465,000 / DUS', '155,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01099', null, 'FLADEX FORTE ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '50000', '10000', 'DUS', 'LBR', '5', 'INTERBAT', 'FLADEX FORTE  @10TAB', '50,000 / DUS', '5,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00429', null, 'BONIC PLUS', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '160000', '33000', 'DUS', 'LBR', '5', 'IFARS', 'BONIC PLUS @6TAB', '135,000 / DUS', '30,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01269', null, 'GRATHAZON ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '25000', '5000', 'DUS', 'LBR', '20', 'INTERBAT', 'GRATHAZON  @10TAB', '25,000 / DUS', '5,000 / LBR', '20 @10TAB');
INSERT INTO `tbartikel` VALUES ('00133', null, 'AMINORAL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '10TAB', '670000', '68000', 'DUS', 'LBR', '10', 'DEXA MEDICA', 'AMINORAL 10TAB', '670,000 / DUS', '68,000 / LBR', '10 10TAB');
INSERT INTO `tbartikel` VALUES ('01906', null, 'MOBIFLEX 15MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '57500', null, 'LBR', null, null, 'LAPI', 'MOBIFLEX 15MG ', '55,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02737', '', 'SOLANS (1STRIP @10CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:32:58', '0', null, '', '100000', '0', 'LBR', '', '1', null, 'SOLANS (1STRIP @10CAP) ', '95,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02727', '', 'SOFIX 100MG ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:33:54', '0', null, '@10TAB', '540000', '180000', 'DUS', 'LBR', '3', null, 'SOFIX 100MG  @10TAB', '540,000 / DUS', '180,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01322', '20313548', 'HEXER 150MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '200000', '45000', 'DUS', 'LBR', '5', 'KALBE', 'HEXER 150MG  @10TAB', '200,000 / DUS', '40,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01945', null, 'MUCOS 30MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '75000', '8000', 'DUS', 'LBR', '10', 'SOHO', 'MUCOS 30MG ', '75,000 / DUS', '8,000 / LBR', '10 ');
INSERT INTO `tbartikel` VALUES ('03137', null, 'WIROS 20MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '25000', '5000', 'DUS', 'LBR', '10', null, 'WIROS 20MG  @10TAB', '25,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02658', null, 'SELEDRYL', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@12TAB', '50000', '7000', 'DUS', 'LBR', '10', 'SANDOZ', 'SELEDRYL @12TAB', '50,000 / DUS', '7,000 / LBR', '10 @12TAB');
INSERT INTO `tbartikel` VALUES ('01532', null, 'KETOCID', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '675000', '70000', 'DUS', 'LBR', '10', 'PHAROS', 'KETOCID @10TAB', '615,000 / DUS', '62,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02731', null, 'SOHOBAL 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '200000', '20000', 'DUS', 'LBR', '10', null, 'SOHOBAL 500MG  @10TAB', '200,000 / DUS', '20,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01890', null, 'MIRASIC 500MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '50000', '5000', 'DUS', 'LBR', '10', 'DANKOS', 'MIRASIC 500MG @10TAB', '50,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00820', '8994388112092', 'DEXANTA ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '20000', '3000', 'DUS', 'LBR', '10', 'DANKOS', 'DEXANTA  @10TAB', '20,000 / DUS', '3,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00850', null, 'DICYNONE 500', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '240000', '120000', 'DUS', 'LBR', '2', 'PFIZER', 'DICYNONE 500 @10TAB', '160,000 / DUS', '90,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('00981', null, 'ETAPHYLLINE ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '190000', '95000', 'DUS', 'LBR', '2', 'SANBE', 'ETAPHYLLINE  @10TAB', '135,000 / DUS', '67,500 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('03164', null, 'ZANTADIN 150MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '475000', '48000', 'DUS', 'LBR', '10', null, 'ZANTADIN 150MG  @10TAB', '450,000 / DUS', '48,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02663', null, 'SELESMAG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '25000', '5000', 'DUS', 'LBR', '10', 'INDOFARMA', 'SELESMAG @10TAB', '25,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('081132', '', 'PATPOLES', '0', '1', ' Merry', '2013-08-17 14:13:37', null, null, '0', null, '@12BTL', '38000', '3500', 'BOX', 'BOX', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00279', '4897035990040', 'BARACLUDE 0,5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '1650000', '550000', 'DUS', 'LBR', '3', 'DEXA MEDICA', 'BARACLUDE 0,5MG  @10TAB', '1,650,000 / DUS', '550,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('80365', '', '.FAXIDEN 20MG (10LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:58:13', '0', null, '', '25000', '10000', 'DUS', '', '1', null, '.FAXIDEN 20MG (10LBR @10TAB) ', '25,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01523', '8992783905912', 'KEMOREN 50MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '30000', '5000', 'DUS', 'LBR', '10', 'MERCK', 'KEMOREN 50MG @10TAB', '30,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00691', null, 'COLASKIN', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '175000', '63000', 'DUS', 'LBR', '3', 'FAHRENHEIT', 'COLASKIN @10TAB', '165,000 / DUS', '55,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01330', null, 'HISTIGO ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '35000', '8000', 'DUS', 'LBR', '5', 'FAHRENHEIT', 'HISTIGO  ', '35,000 / DUS', '8,000 / LBR', '5 ');
INSERT INTO `tbartikel` VALUES ('01054', null, 'FAXIDEN 10MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '20000', '5000', 'DUS', 'LBR', '10', 'SANBE', 'FAXIDEN 10MG @10TAB', '20,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('081136', '', 'DOMETA', '0', '1', ' Merry', '2013-08-17 14:32:55', null, null, '0', null, '@ 10 BIJI', '137500', '27500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01909', null, 'MOLACORT 0,5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '20000', '2500', 'DUS', 'LBR', '10', 'SOHO', 'MOLACORT 0,5MG  @10TAB', '20,000 / DUS', '3,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00979', null, 'ETACIN 500MG (2LBR)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '225000', '120000', 'DUS', 'LBR', '2', 'SANBE', 'ETACIN 500MG (2LBR) ', '225,000 / DUS', '120,000 / LBR', '2 ');
INSERT INTO `tbartikel` VALUES ('00447', '20301743', 'BRAINACT 500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '375000', '125000', 'DUS', 'LBR', '3', 'OTTO', 'BRAINACT 500MG  @10TAB', '345,000 / DUS', '110,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01730', null, 'LOVASK 5MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '135000', '45000', 'DUS', 'LBR', '3', 'GSK', 'LOVASK 5MG @10TAB', '135,000 / DUS', '50,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02577', null, 'ROTAVER ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '240000', '25000', 'DUS', 'LBR', '10', null, 'ROTAVER  @10TAB', '220,000 / DUS', '23,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01854', '8993347014279', 'MILMOR NF', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-10-17 15:23:15', '0', null, '@10TAB', '122500', '22500', 'DUS', 'LBR', '6', 'LAPI', 'MILMOR @10TAB', '108,000 / DUS', '18,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('02966', null, 'TUDIAB TAB', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '98000', '10000', 'DUS', 'LBR', '10', null, 'TUDIAB TAB @10TAB', '98,000 / DUS', '10,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('03029', null, 'VASCUPRAX 200MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '445000', '45000', 'DUS', 'LBR', '10', null, 'VASCUPRAX 200MG  @10TAB', '420,000 / DUS', '42,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01757', '', 'MADECASSOL TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-03-17 17:05:10', '0', null, '@10TAB', '180000', '90000', 'DUS', 'LBR', '2', 'PHAROS', 'MADECASSOL @10TAB', '120,000 / DUS', '60,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('01639', null, 'LAZ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '200000', '45000', 'DUS', 'LBR', '5', 'GSK', 'LAZ @4TAB', '200,000 / DUS', '45,000 / LBR', '5 @4TAB');
INSERT INTO `tbartikel` VALUES ('00305', null, 'BERNOFLOX 500MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '212500', '42500', 'DUS', 'LBR', '5', 'DARYA VARIA', 'BERNOFLOX 500MG @4TAB', '212,500 / DUS', '42,500 / LBR', '5 @4TAB');
INSERT INTO `tbartikel` VALUES ('02054', '', 'NEW PROZOS', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-08-29 12:47:18', '0', null, '', '105000', '25000', 'BOX', 'BIJI', '5', 'SANDOZ', 'NEW PROZOS ', '17,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('081134', '', 'JINGREAT', '0', '1', ' Merry', '2013-08-17 14:30:48', null, null, '0', null, '90BIJI', '250000', '0', 'BTL', 'BTL', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('03037', '', 'VENARON', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 14:28:33', '0', null, '@10 TAB', '280000', '28000', 'DUS', 'LBR', '10', null, 'VENARON ', '28,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80831', '', 'PRIMADEX FORTE', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2015-01-27 15:21:02', '0', null, '@10 BIJI', '55000', '7500', 'BOX', 'LBR', '10', null, '.PRIMADEX F ', '7,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00452', '8993347005451', 'BNS', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 14:33:47', '0', null, '', '80000', '0', 'BOTOL', '', '1', 'OTTO', 'BREATHY NASAL DROPS (30ML) ', '18,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01760', '', 'MADU CLOVER HONY( KECIL)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-19 12:02:23', '0', null, '', '175000', '0', 'BTL', '', '1', 'BAYER', 'MADU CLOVER HONY( KECIL) ', '140,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81132', '', 'MELATONIN SEA QUIL', '0', '1', ' Merry', '2013-08-17 14:25:03', null, null, '0', null, '@60 BIJI', '220000', '0', 'BTL', 'BTL', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00015', '', 'ABIXA 10MG', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 14:21:01', '0', null, '@14 TAB', '830000', '415000', 'DUS', 'LBR', '2', 'SOHO', 'ABIXA 10MG ', '375,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81133', '', 'BENOSON TAB', '0', '1', ' Merry', '2013-08-17 14:39:53', null, null, '0', null, '@10 BIJI', '105000', '12000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81134', '', 'QUIDEX 500MG', '0', '1', ' Merry', '2013-08-17 14:41:09', null, null, '0', null, '@6 BIJI', '165000', '60000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02259', '', 'PEMOTONG OBAT', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-02 09:18:46', '0', null, '', '20000', '20000', 'BOX', '', '1', 'BOEHRINGER INGELHEIM', 'PEMOTONG OBAT ', '20,000 / BOX', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80006', '', '.ACEPRES 25MG (10LBR@10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 14:38:08', '0', null, '@10BIJI', '315000', '32000', 'DUS', 'LBR', '10', null, '.ACEPRES 25MG (10LBR@10TAB) ', '315,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81135', '', 'PRILOS', '0', '1', ' Merry', '2013-08-17 14:42:40', null, null, '0', null, '@4 BIJI', '250000', '50000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00810', null, 'DETRUSITOL 2MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '285000', '142500', 'DUS', 'LBR', '2', 'KALBE', 'DETRUSITOL 2MG  @14TAB', '260,000 / DUS', '132,500 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('01612', null, 'LAPIBAL 500MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '205000', '22000', 'DUS', 'LBR', '10', 'SOHO', 'LAPIBAL 500MG @10TAB', '185,000 / DUS', '18,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80464', '', '.HYPERCHOL 100MG (4LBR @12CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 14:51:14', '0', null, '@10 BIJI', '150000', '37500', 'DUS', 'LBR', '4', null, '.HYPERCHOL 100MG (4LBR @12CAP) ', '140,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80349', '', '.EXCELASE-E (10LBR @10CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 14:52:23', '0', null, '@10 BIJI', '230000', '23000', 'DUS', 'LBR', '10', null, '.EXCELASE-E (10LBR @10CAP) ', '230,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02402', null, 'PROGYNOVA 1MG (1STRIP @28TAB)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '120000', null, 'DUS', null, null, 'ABBOTT', 'PROGYNOVA 1MG (1STRIP @28TAB) ', '110,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02403', '', 'PROGYNOVA 2MG (1STRIP @28TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Sri', '2014-06-18 19:12:22', '0', null, '', '160000', '0', 'DUS', '', '1', 'ABBOTT', 'PROGYNOVA 2MG (1STRIP @28TAB) ', '140,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00759', '', 'CYCLO-PROGYNOVA (1STRIP @21TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:07:37', '0', null, '', '130000', '0', 'DUS', '', '1', 'KALBE', 'CYCLO-PROGYNOVA (1STRIP @21TAB) ', '110,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03001', '4032717001021', 'URDAFALK ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@5TAB', '315000', '53000', 'DUS', 'LBR', '6', null, 'URDAFALK  @5TAB', '270,000 / DUS', '46,000 / LBR', '6 @5TAB');
INSERT INTO `tbartikel` VALUES ('01799', null, 'MEDROL 4MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '360000', '37000', 'DUS', 'LBR', '10', 'SIDO MUNCUL', 'MEDROL 4MG @10TAB', '320,000 / DUS', '33,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00688', null, 'CO-DIOVAN 80/12,5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '340000', '170000', 'DUS', 'LBR', '2', 'FAHRENHEIT', 'CO-DIOVAN 80/12,5MG  @14TAB', '340,000 / DUS', '170,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('02740', null, 'SOMEROL 16MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '310000', '62000', 'DUS', 'LBR', '5', null, 'SOMEROL 16MG  @10TAB', '275,000 / DUS', '57,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02442', null, 'PROTICA 30MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '250000', '125000', 'DUS', 'LBR', '2', 'KOTRA PHARMA', 'PROTICA 30MG  @10TAB', '235,000 / DUS', '125,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('00169', null, 'ANTIPLAT 50MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '187500', '67500', 'DUS', 'LBR', '3', 'DANKOS', 'ANTIPLAT 50MG @10TAB', '187,500 / DUS', '67,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01324', '20313623', 'HEXILON 4MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '150000', '30000', 'DUS', 'LBR', '5', null, 'HEXILON 4MG  @10TAB', '120,000 / DUS', '24,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00653', '20302900', 'CITAZ 50MG ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-11-28 10:31:27', '0', null, '', '70000', '7000', 'LBR', 'BIJI', '10', 'HEXPHARM JAYA (HJ)', 'CITAZ 50MG  @10TAB', '312,500 / DUS', '67,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02282', null, 'PIDOVIX 75MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '420000', '140000', 'DUS', 'LBR', '3', 'PFIZER', 'PIDOVIX 75MG @10TAB', '397,500 / DUS', '132,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00490', null, 'CALORTUSIN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '35000', '5000', 'DUS', 'LBR', '10', 'MUTIFA', 'CALORTUSIN  @10TAB', '25,000 / DUS', '7,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00569', null, 'CEFADROXIL 500MG  BERNO', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '65000', '9000', 'DUS', 'LBR', '10', 'OTTO', 'CEFADROXIL 500MG  BERNO @10TAB', '70,000 / DUS', '8,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00152', null, 'ANASTAN FORTE', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '30000', '5000', 'DUS', 'LBR', '10', 'DEXA MEDICA', 'ANASTAN FORTE @10TAB', '50,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00828', null, 'DEXYMOX FORTE', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '55000', '7500', 'DUS', 'LBR', '10', 'LAPI', 'DEXYMOX FORTE @10TAB', '55,000 / DUS', '7,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01916', null, 'MOLEXFLU ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '50000', '6000', 'DUS', 'LBR', '15', 'SOHO', 'MOLEXFLU  @10TAB', '45,000 / DUS', '5,000 / LBR', '15 @10TAB');
INSERT INTO `tbartikel` VALUES ('02575', '8994591210257', 'ROMILAR ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '137500', '7000', 'DUS', 'LBR', '25', null, 'ROMILAR  @6TAB', '137,500 / DUS', '6,000 / LBR', '25 @6TAB');
INSERT INTO `tbartikel` VALUES ('01132', '8994388110241', 'FOLAMIL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '125000', '5000', 'DUS', 'LBR', '25', 'SANOFI AVENTIS', 'FOLAMIL @4TAB', '125,000 / DUS', '5,000 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('02626', null, 'SANMOL', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '30000', '2000', 'DUS', 'LBR', '25', 'SOHO', 'SANMOL @4TAB', '25,000 / DUS', '2,000 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('00818', null, 'DEXAMETHASONE 0,75MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '37500', '2500', 'DUS', 'LBR', '20', 'KALBE', 'DEXAMETHASONE 0,75MG  @10TAB', '27,500 / DUS', '2,000 / LBR', '20 @10TAB');
INSERT INTO `tbartikel` VALUES ('00817', null, 'DEXAMETHASONE 0,5MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '40000', '2000', 'DUS', 'LBR', '20', 'KALBE', 'DEXAMETHASONE 0,5MG @10TAB', '30,000 / DUS', '2,000 / LBR', '20 @10TAB');
INSERT INTO `tbartikel` VALUES ('00666', '8993430101626', 'CLINDAMYCIN 150MG NOVELL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '50000', '6000', 'DUS', 'LBR', '5', 'KALBE', 'CLINDAMYCIN 150MG NOVELL @10TAB', '25,000 / DUS', '6,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00668', null, 'CLINDAMYCIN 300MG  DEXA', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '75000', '8500', 'DUS', 'LBR', '10', 'FAHRENHEIT', 'CLINDAMYCIN 300MG  DEXA @10TAB', '75,000 / DUS', '8,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80829', null, '.PRENAMIA ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '100000', '3500', 'DUS', 'LBR', '25', null, '.PRENAMIA  @4TAB', '100,000 / DUS', '5,000 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('03166', null, 'ZEGAVIT ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@5TAB', '125000', '13000', 'DUS', 'LBR', '10', null, 'ZEGAVIT  @5TAB', '110,000 / DUS', '11,000 / LBR', '10 @5TAB');
INSERT INTO `tbartikel` VALUES ('01514', '8996878704176', 'KALZANA D LEMBARAN', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-23 18:38:20', '0', null, '@10TAB', '135000', '7000', 'DUS', 'LBR', '20', 'DEXA MEDICA', 'KALZANA D  @10TAB', '110,000 / DUS', '6,000 / LBR', '20 @10TAB');
INSERT INTO `tbartikel` VALUES ('02024', '8992858659115', 'NEURALGIN', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '45000', '5000', 'DUS', 'LBR', '10', 'GALENIUM PHARMASIA', 'NEURALGIN @10TAB', '39,000 / DUS', '4,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02341', '8993347000401', 'POLYSILANE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@TAB', '32000', '7500', 'DUS', 'LBR', '5', 'TANABE', 'POLYSILANE  @TAB', '28,000 / DUS', '6,500 / LBR', '5 @TAB');
INSERT INTO `tbartikel` VALUES ('01479', '', 'JARUM BD MIKROFINE', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-20 04:45:07', '0', null, '', '235000', '3000', 'BOX', 'BIJI', '100', 'DEXA MEDICA', 'JARUM BD MIKROFINE ', '2,000 / BTR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02861', '8995201800165', 'THERAGRAN-M ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '400000', '17000', 'DUS', 'LBR', '25', null, 'THERAGRAN-M  @6TAB', '345,000 / DUS', '15,000 / LBR', '25 @6TAB');
INSERT INTO `tbartikel` VALUES ('00410', null, 'BISOPROLOL 5 MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '21000', '7000', 'DUS', 'LBR', '3', 'MOLEX AYUS', 'BISOPROLOL 5 MG  @10TAB', '24,000 / DUS', '8,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02711', null, 'SIMVASTATIN 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '22500', '5000', 'DUS', 'LBR', '5', null, 'SIMVASTATIN 10MG  @10TAB', '23,000 / DUS', '5,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02991', null, 'ULTRAVITA ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '115000', '5000', 'DUS', 'LBR', '25', null, 'ULTRAVITA  @4TAB', '95,000 / DUS', '5,000 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('00950', '8992112013080', 'ENZYPLEX ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '90000', '4000', 'DUS', 'LBR', '25', 'SANBE', 'ENZYPLEX  @4TAB', '39,000 / DUS', '3,500 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('00337', '', 'BEVIZIL', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-10-09 09:00:37', '0', null, '@10TAB', '132500', '5500', 'DUS', 'LBR', '25', 'DEXA MEDICA', 'BEVISIL @10TAB', '127,000 / DUS', '5,500 / LBR', '25 @10TAB');
INSERT INTO `tbartikel` VALUES ('02635', null, 'SANTA-E ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '77500', '3500', 'DUS', 'LBR', '25', 'BINTANG TOEDJOE', 'SANTA-E  @4TAB', '70,000 / DUS', '3,500 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('02186', null, 'OSSOVIT ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '170000', '17500', 'DUS', 'LBR', '10', 'MERCK', 'OSSOVIT  @6TAB', '165,000 / DUS', '17,500 / LBR', '10 @6TAB');
INSERT INTO `tbartikel` VALUES ('80766', null, '.OCULEX ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '125000', '28000', 'DUS', 'LBR', '5', null, '.OCULEX  @6TAB', '115,000 / DUS', '23,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01991', null, 'NATUR E 100 MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '16000', null, 'DUS', null, null, 'BAYER', 'NATUR E 100 MG ', '14,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01295', '8999908056900', 'HEMAVITON ACTION ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@5TAB', '52500', '6000', 'DUS', 'LBR', '10', 'LANDSON', 'HEMAVITON ACTION  @5TAB', '55,000 / DUS', '6,000 / LBR', '10 @5TAB');
INSERT INTO `tbartikel` VALUES ('01053', '8995858111058', 'FATIGON SPIRIT ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@5TAB', '35000', '7000', 'DUS', 'LBR', '6', 'SANBE', 'FATIGON SPIRIT  @5TAB', '32,000 / DUS', '6,000 / LBR', '6 @5TAB');
INSERT INTO `tbartikel` VALUES ('02671', null, 'SELOXY AA ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '150000', '30000', 'DUS', 'LBR', '5', 'MEDIFARMA', 'SELOXY AA  @6TAB', '140,000 / DUS', '37,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('02790', '', 'SURBEX T', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-24 16:06:46', '0', null, '', '47500', '10000', 'DUS', 'LBR', '5', null, 'SURBEX T ', '37,500 / DUS', '8,500 / LBR', '5 ');
INSERT INTO `tbartikel` VALUES ('01124', '', 'FLUIMUCIL GRANULE 200 MG', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-19 14:53:31', '0', null, '', '155000', '5500', 'BOX', 'BKS', '30', 'BAYER', 'FLUIMUCIL GRANULE 200 MG ', '5,000 / BKS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00400', '8992799020951', 'BISOLVON', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '150000', '15000', 'DUS', 'LBR', '10', 'BUFA ANEKA', 'BISOLVON @10TAB', '125,000 / DUS', '13,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02195', '8997020060010', 'OSTEOCARE TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-05-29 11:57:40', '0', null, '@6TAB', '95000', '20000', 'DUS', 'LBR', '5', 'DEXA MEDICA', 'OSTEOCARE  @6TAB', '95,000 / DUS', '20,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('00831', '8997020060065', 'DIABETONE ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '105000', '21000', 'DUS', 'LBR', '5', 'SANOFI AVENTIS', 'DIABETONE  @6TAB', '102,500 / DUS', '21,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('02368', '8997020060072', 'PREGNACARE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '80000', '16500', 'DUS', 'LBR', '5', 'SANDOZ', 'PREGNACARE  @6TAB', '70,000 / DUS', '14,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('02343', '8993347008667', 'POLYSILANE MAX ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '52500', '6000', 'DUS', 'LBR', '10', 'TANABE', 'POLYSILANE MAX  @4TAB', '52,500 / DUS', '6,000 / LBR', '10 @4TAB');
INSERT INTO `tbartikel` VALUES ('01459', null, 'ISO MENOPACE', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '170000', '35000', 'DUS', 'LBR', '5', 'PRATAPA NIRMALA', 'ISO MENOPACE @6TAB', '170,000 / DUS', '34,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('02670', '8994568111938', 'SELOXY ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '130000', '29000', 'DUS', 'LBR', '5', 'SOHO', 'SELOXY  @6TAB', '110,000 / DUS', '23,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('02198', null, 'OSTEOFLAM ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '290000', '30000', 'DUS', 'LBR', '10', 'SCHERING PLOUGH', 'OSTEOFLAM  @6TAB', '220,000 / DUS', '26,000 / LBR', '10 @6TAB');
INSERT INTO `tbartikel` VALUES ('02297', null, 'PIRACETAM 1200MG  DEXA', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '80000', '9000', 'DUS', 'LBR', '10', 'PFIZER', 'PIRACETAM 1200MG  DEXA @10TAB', '85,000 / DUS', '9,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00134', '8994805002258', 'AMLODIPINE 10MG (3STRIP @10TAB) HJ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '30000', '12500', 'DUS', 'LBR', '3', 'DEXA MEDICA', 'AMLODIPINE 10MG (3STRIP @10TAB) HJ @10TAB', '35,000 / DUS', '12,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00222', null, 'ASAM MEFENAMAT 500MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '17000', '3000', 'DUS', 'LBR', '10', 'DEXA MEDICA', 'ASAM MEFENAMAT 500MG @10TAB', '15,000 / DUS', '2,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01833', null, 'METRONIDAZOL 500MG  KF', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '25000', '3000', 'DUS', 'LBR', '10', 'SOHO', 'METRONIDAZOL 500MG  KF @10TAB', '25,000 / DUS', '3,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02474', null, 'PYRAZINAMIDE 500MG IF', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '40000', '4000', 'DUS', 'LBR', '10', 'NATURE CARE (NC)', 'PYRAZINAMIDE 500MG IF @10TAB', '27,000 / DUS', '4,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01811', '8994388180930', 'MELOXICAM 7,5MG  DEXA', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '35000', '8000', 'DUS', 'LBR', '5', 'SURYA DERMATO', 'MELOXICAM 7,5MG  DEXA @10TAB', '35,000 / DUS', '8,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00621', '', 'CETIRIZINE ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-28 11:01:55', '0', null, '@10TAB', '15000', '5000', 'DUS', 'LBR', '5', 'MOLEX AYUS', 'CETERIZINE  @10TAB', '20,000 / DUS', '5,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('81139', '', 'OVACARE', '0', '1', ' Merry', '2013-08-17 15:26:41', null, null, '0', null, '@6 IBIJI', '140000', '29000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01122', '', 'FLUIMUCIL 600MG @2TAB', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 15:27:14', '0', null, '@2BIJI', '125000', '25000', 'DUS', 'LBR', '5', 'SANOFI AVENTIS', 'FLUIMUCIL 600MG @2TAB ', '110,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02165', null, 'ONDANSETRON 4MG  IF', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '20000', '15000', 'DUS', 'LBR', '2', 'PHAROS', 'ONDANSETRON 4MG  IF @6TAB', '20,000 / DUS', '15,000 / LBR', '2 @6TAB');
INSERT INTO `tbartikel` VALUES ('02166', '8993430160647', 'ONDANSETRON 8MG NOVELL', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '40000', '20000', 'DUS', 'LBR', '2', 'PHAROS', 'ONDANSETRON 8MG NOVELL @6TAB', '30,000 / DUS', '15,000 / LBR', '2 @6TAB');
INSERT INTO `tbartikel` VALUES ('01607', '8993430103200', 'LANSOPRAZOLE 30MG  NOVELL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '20000', '10000', 'DUS', 'LBR', '2', 'LAPI', 'LANSOPRAZOLE 30MG  NOVELL @10TAB', '20,000 / DUS', '10,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('01723', null, 'LORATADINE 10MG  IF', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '20000', '5000', 'DUS', 'LBR', '5', 'GSK', 'LORATADINE 10MG  IF @10TAB', '20,000 / DUS', '5,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00890', null, 'DOMPERIDONE 10MG  IF', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '35000', '5000', 'DUS', 'LBR', '10', 'IKAPHARMINDO', 'DOMPERIDONE 10MG  IF @10TAB', '30,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02595', null, 'SALBUTAMOL 2MG  IF', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '13000', '2000', 'DUS', 'LBR', '10', 'IKHAPARMINDO', 'SALBUTAMOL 2MG  IF @10TAB', '13,000 / DUS', '2,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01810', '8994388180923', 'MELOXICAM 15MG  DEXA', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '40000', '9000', 'DUS', 'LBR', '5', 'OTTO', 'MELOXICAM 15MG  DEXA @10TAB', '40,000 / DUS', '8,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02712', null, 'SIMVASTATIN 20MG  KF', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '45000', '10000', 'DUS', 'LBR', '5', null, 'SIMVASTATIN 20MG  KF @10TAB', '45,000 / DUS', '10,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00894', null, 'DOXYCYCLINE 100MG  KF', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '35000', '5000', 'DUS', 'LBR', '10', 'SANBE', 'DOXYCYCLINE 100MG  KF @10TAB', '30,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01191', null, 'GEMFIBROZIL 300MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '40000', '5500', 'DUS', 'LBR', '10', 'PFIZER', 'GEMFIBROZIL 300MG  @10TAB', '35,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01217', null, 'GLIMEPIRIDE 1MG  DEXA', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '35000', '7000', 'DUS', 'LBR', '5', null, 'GLIMEPIRIDE 1MG  DEXA @10TAB', '35,000 / DUS', '8,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01218', null, 'GLIMEPIRIDE 2 MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '45000', '10000', 'DUS', 'LBR', '5', 'SANBE', 'GLIMEPIRIDE 2 MG  @10TAB', '40,000 / DUS', '9,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01219', null, 'GLIMEPIRIDE 3 MG  DEXA', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '70000', '15000', 'DUS', 'LBR', '5', 'ACTAVIS', 'GLIMEPIRIDE 3 MG  DEXA @10TAB', '70,000 / DUS', '15,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01220', null, 'GLIMEPIRIDE 4MG DEXA', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '80000', '18000', 'DUS', 'LBR', '5', 'KALBE', 'GLIMEPIRIDE 4MG DEXA @10TAB', '80,000 / DUS', '18,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00675', null, 'CLOPIDOGREL 75MG DEXA', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '140000', '30000', 'DUS', 'LBR', '5', 'FAHRENHEIT', 'CLOPIDOGREL 75MG DEXA @6TAB', '180,000 / DUS', '36,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('02062', null, 'NIFEDIPIN 10MG  DEXA', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '15000', '2000', 'DUS', 'LBR', '10', 'CENDO', 'NIFEDIPIN 10MG  DEXA @10TAB', '12,500 / DUS', '1,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00049', null, 'ACYCLOVIR 400MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '60000', '8000', 'DUS', 'LBR', '10', 'SOLVAY', 'ACYCLOVIR 400MG @10TAB', '45,000 / DUS', '8,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00048', null, 'ACYCLOVIR 200MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '40000', '5000', 'DUS', 'LBR', '10', 'SOLVAY', 'ACYCLOVIR 200MG @10TAB', '40,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00516', null, 'CAPTOPRIL 12,5MG  IF', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '10000', '1500', 'DUS', 'LBR', '10', 'GRAHA FARMA', 'CAPTOPRIL 12,5MG  IF @10TAB', '10,000 / DUS', '1,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01827', null, 'METHYLPREDNISOLONE 4MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '40000', '5000', 'DUS', 'LBR', '10', 'TUNGGAL IDAMAN', 'METHYLPREDNISOLONE 4MG @10TAB', '35,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01214', null, 'GLIBENCLAMIDE 5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '12000', '1500', 'DUS', 'LBR', '10', 'NOVARTIS', 'GLIBENCLAMIDE 5MG  @10TAB', '8,000 / DUS', '1,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00096', null, 'ALLOPURINOL 100MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '17500', '2000', 'DUS', 'LBR', '10', 'DARYA VARIA', 'ALLOPURINOL 100MG @10TAB', '14,000 / DUS', '1,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02419', '', 'PROPANOLOL 40MG (10LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 15:38:43', '0', null, '@10 BIJI', '17500', '2500', 'DUS', 'LBR', '10', 'LUXOR', 'PROPANOLOL 40MG (10LBR @10TAB) ', '15,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02417', '', 'PROPANOLOL 10 MG', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 15:38:17', '0', null, '@10BIJI', '15000', '2000', 'DUS', 'LBR', '10', null, 'PROPANOLOL 10 MG ', '1,500 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80656', '', '.MECOBALAMIN 500MG (10LBR @10CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 15:33:33', '0', null, '@10 BIJI', '70000', '8000', 'DUS', 'LBR', '10', null, '.MECOBALAMIN 500MG (10LBR @10CAP) ', '70,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80613', '', '.LINCOMYCIN 500MG (5LBR @12CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 15:42:56', '0', null, '@10 BIJI', '45000', '11000', 'DUS', 'LBR', '5', null, '.LINCOMYCIN 500MG (5LBR @12CAP) ', '45,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80939', '', '.SPIROLACTONE 25MG (10LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 15:44:03', '0', null, '@10 BIJI', '45000', '5000', 'DUS', 'LBR', '10', null, '.SPIROLACTONE 25MG (10LBR @10TAB) ', '45,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01391', '', 'IM-REG ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 14:50:30', '0', null, '@10TAB', '410000', '70000', 'DUS', 'LBR', '6', 'DEXA MEDICA', 'IM-REG  @10TAB', '390,000 / DUS', '65,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('081123', '', 'ENAKUR @10TAB', '0', '1', ' Merry', '2013-08-15 14:54:57', ' Merry', '2013-08-17 14:46:37', '0', null, '@10 TAB', '15000', '5000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81136', '', 'HERBALAX SLIMMING', '0', '1', ' Merry', '2013-08-17 14:54:11', null, null, '0', null, '@16 SCH', '32500', '0', 'BOX', 'BOX', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('80563', '', '.LACTO-B @40SACHET', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-01 15:10:00', '0', null, '', '175000', '4500', 'DUS', 'SCH', '40', null, '.LACTO-B @40SACHET ', '150,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01667', null, 'LIBROZYM', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '55000', '6000', 'DUS', 'LBR', '10', 'SCHERING PLOUGH', 'LIBROZYM @10TAB', '37,500 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01668', null, 'LIBROZYM PLUS', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '65000', '7000', 'DUS', 'LBR', '10', 'MERCK', 'LIBROZYM PLUS @10TAB', '38,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02717', '', 'SISTENOL 1BOTOL @10KAPLET', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:34:54', '0', null, '', '18500', '0', 'BOTOL', '', '1', null, 'SISTENOL 1BOTOL @10KAPLET ', '18,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80410', '', '.GENTASOLON CREAM', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:48:49', '0', null, '', '25000', '0', 'TUBE', '', '1', null, '.GENTASOLON CREAM ', '17,500 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02855', '', 'TERRAMYCIN 1TUBE @3,5g', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:29:09', '0', null, '', '10000', '0', 'TUBE', '', '1', null, 'TERRAMYCIN 1TUBE @3,5g ', '10,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00716', null, 'CORSAMAG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '230000', '23000', 'DUS', 'LBR', '10', 'KALBE', 'CORSAMAG  @10TAB', '230,000 / DUS', '23,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01789', '8999809800510', 'MEDIAMER B6', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '240000', '27500', 'DUS', 'LBR', '10', 'NELLCO', 'MEDIAMER B6 @10TAB', '240,000 / DUS', '24,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00901', null, 'DULCOLAX SUP', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@5SUP', '650000', '66000', 'DUS', 'LBR', '10', 'SANBE', 'DULCOLAX SUP @5SUP', '575,000 / DUS', '59,000 / LBR', '10 @5SUP');
INSERT INTO `tbartikel` VALUES ('00583', null, 'CELEBREX 200MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '390000', '130000', 'DUS', 'LBR', '3', 'LAPI', 'CELEBREX 200MG  @10TAB', '315,000 / DUS', '105,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00004', null, '3TC-HBV ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@ 14 TAB', '450000', '225000', 'DUS', 'LBR', '2', 'IKAPHARMINDO P', '3TC-HBV  @ 14 TAB', '450,000 / DUS', '255,000 / LBR', '2 @ 14 TAB');
INSERT INTO `tbartikel` VALUES ('03024', null, 'VALTREX 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '725000', '105000', 'DUS', 'LBR', '7', null, 'VALTREX 500MG  @6TAB', '700,000 / DUS', '105,000 / LBR', '7 @6TAB');
INSERT INTO `tbartikel` VALUES ('00469', '8995228500321', 'BUSCOPAN PLUS', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '330000', '15000', 'DUS', 'LBR', '25', null, 'BUSCOPAN PLUS @4TAB', '287,500 / DUS', '12,500 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('01097', '', 'FIXEF 100MG (1STRIP @10CAP)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-18 22:08:32', '0', null, '', '120000', '0', 'LBR', 'BIJI', '10', 'INTERBAT', 'FIXEF 100MG (1STRIP @10CAP) ', '120,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00143', '', 'AMOXILIN (10LBR)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 15:48:09', '0', null, '@10 BIJI', '35000', '4000', 'DUS', 'LBR', '10', 'SANDOZ', 'AMOXILIN (10LBR) ', '35,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01590', '', 'LACTAMAM 10 TAB', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-12-20 12:18:09', '0', null, '@10 BIJI', '156000', '26000', 'BOX', 'LBR', '3', 'SANBE', 'LAKTAMAM 10 TAB ', '23,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02213', null, 'OTTOPRIM FORTE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '50000', '10000', 'DUS', 'LBR', '10', 'JANSSEN-CILAG', 'OTTOPRIM FORTE  @10TAB', '50,000 / DUS', '7,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80111', '', '.BAQUINOR ED', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:24:08', '0', null, '', '31000', '0', 'BTL', '', '1', null, '.BAQUINOR ED ', '31,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01638', null, 'LAXOBERON 7,5MG/ML (1BOTOL @10ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '67500', null, 'BOTOL', null, null, 'GSK', 'LAXOBERON 7,5MG/ML (1BOTOL @10ML) ', '57,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80374', '', '.FLAMAR ED', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:58:06', '0', null, '', '32000', '0', 'BTL', '', '1', null, '.FLAMAR ED ', '31,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00450', '', 'BRALIFLEX PLUS', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:17:26', '0', null, '', '40000', '0', 'BTL', '', '1', 'OTTO', 'BRALIFLEX PLUS ', '38,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02210', '8992837610502', 'OTRIVIN DEWASA TETES HIDUNG (1BOTOL @10ML)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '47000', null, 'BOTOL', null, null, 'DEXA MEDICA', 'OTRIVIN DEWASA TETES HIDUNG (1BOTOL @10ML) ', '39,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02209', null, 'OTRIVIN ANAK', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '46000', null, 'BOTOL', null, null, 'DEXA MEDICA', 'OTRIVIN ANAK ', '39,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80893', '', '.SANBE TEAR', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:45:31', '0', null, '', '21000', '21000', 'BTL', '', '1', null, '.SANBE TEAR ', '20,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00248', '', 'ATROVENT 0,025% (1BOTOL @20ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:18:46', '0', null, '', '200000', '0', 'BOTOL', '', '1', 'SOHO', 'ATROVENT 0,025% (1BOTOL @20ML) ', '170,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01237', null, 'GLUCOTROL XL 10MG (1BOTOL @30TAB)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '155000', null, 'BOTOL', null, null, 'SANBE', 'GLUCOTROL XL 10MG (1BOTOL @30TAB) ', '135,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02316', null, 'PLAVIX 75MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@14TAB', '640000', '320000', 'DUS', 'LBR', '2', 'PFIZER', 'PLAVIX 75MG  @14TAB', '320,000 / DUS', '160,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('02100', null, 'NORVASK 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '330000', '110000', 'DUS', 'LBR', '3', 'BIO-LIFE', 'NORVASK 10MG  @10TAB', '330,000 / DUS', '110,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02101', null, 'NORVASK 5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '180000', '60000', 'DUS', 'LBR', '3', 'BIO-LIFE', 'NORVASK 5MG  @10TAB', '175,000 / DUS', '60,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00257', '', 'AZITHROMYCIN 500MG', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-24 11:56:27', '0', null, '', '105000', '11000', 'LBR', 'BIJI', '10', 'DEXA MEDICA', 'AZITHROMYCIN 500MG @10TAB', '200,000 / DUS', '100,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('00164', '', 'ANTALGIN 500MG 10TAB', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 15:31:35', '0', null, '@10 BIJI', '20000', '3000', 'BOX', 'LBR', '10', 'SEJAHTERA FITOFARMA', 'ANTALGIN 500MG 10TAB ', '2,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00138', '', 'AMLODIPINE 5MG(3STRIP@10BIJI)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-05 14:18:55', '0', null, '@10 BIJI', '15000', '6000', 'BOX', 'LBR', '3', 'DANKOS', 'AMLODIPINE 5MG 10TAB ', '7,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02347', null, 'PONSTAN 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '207500', '21000', 'DUS', 'LBR', '10', null, 'PONSTAN 500MG  @10TAB', '190,000 / DUS', '20,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01240', null, 'GLUCOVANCE 500MG/2,5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '370000', '37500', 'DUS', 'LBR', '10', 'PFIZER', 'GLUCOVANCE 500MG/2,5MG  @10TAB', '327,500 / DUS', '32,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01241', null, 'GLUCOVANCE 500MG/5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '455000', '46000', 'DUS', 'LBR', '10', 'JANSSEN-CILAG', 'GLUCOVANCE 500MG/5MG  @10TAB', '400,000 / DUS', '40,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01229', null, 'GLUCOPHAGE 850MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@8TAB', '220000', '15000', 'DUS', 'LBR', '15', 'INTERBAT', 'GLUCOPHAGE 850MG @8TAB', '190,000 / DUS', '13,000 / LBR', '15 @8TAB');
INSERT INTO `tbartikel` VALUES ('02416', '8992858664812', 'PRONICY 4MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '22500', '3000', 'DUS', 'LBR', '10', 'SCAN', 'PRONICY 4MG  @10TAB', '18,500 / DUS', '2,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01239', null, 'GLUCOVANCE 250MG/1,25MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '235000', '24000', 'DUS', 'LBR', '10', 'GSK', 'GLUCOVANCE 250MG/1,25MG  @10TAB', '190,000 / DUS', '20,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02034', null, 'NEUROFENAC PLUS ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '430000', '45000', 'DUS', 'LBR', '10', 'PHAROS', 'NEUROFENAC PLUS  @10TAB', '330,000 / DUS', '35,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('03009', '8992916942036', 'URIXIN 400MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '500000', '57000', 'DUS', 'LBR', '10', null, 'URIXIN 400MG  @10TAB', '500,000 / DUS', '57,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00832', null, 'DIABEX 500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '135000', '14000', 'DUS', 'LBR', '10', 'SANOFI AVENTIS', 'DIABEX 500MG  @10TAB', '99,000 / DUS', '12,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00885', null, 'DOLOS ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '80000', '9000', 'DUS', 'LBR', '10', 'SANBE', 'DOLOS  @10TAB', '75,000 / DUS', '8,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01333', null, 'HOMOCLOMIN 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '245000', '25000', 'DUS', 'LBR', '10', 'FAHRENHEIT', 'HOMOCLOMIN 10MG  @10TAB', '190,000 / DUS', '21,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00821', null, 'DEXTAMINE ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '475000', '17000', 'DUS', 'LBR', '30', 'KALBE', 'DEXTAMINE  @10TAB', '420,000 / DUS', '15,000 / LBR', '30 @10TAB');
INSERT INTO `tbartikel` VALUES ('02107', null, 'NOVALGIN 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '600000', '13000', 'DUS', 'LBR', '50', 'BIO-LIFE', 'NOVALGIN 500MG  @10TAB', '550,000 / DUS', '11,000 / LBR', '50 @10TAB');
INSERT INTO `tbartikel` VALUES ('01159', '', 'FUNG SA YEN @ 12 BTL', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-27 15:38:09', '0', null, '', '30000', '3000', 'DUS', '', '0', 'NOVARTIS', 'FUNG SA YEN @ 12 BTL ', '21,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01779', null, 'MAZOL CREAM 5g', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '5000', null, 'TUBE', null, null, 'TAISHO', 'MAZOL CREAM 5g ', '5,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01588', '8993883880086', 'LAGESIL SUSPENSI (1BOTOL @170ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '35000', null, 'BOTOL', null, null, 'BAYER', 'LAGESIL SUSPENSI (1BOTOL @170ML) ', '28,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02064', '8999809101129', 'NIFURAL SIRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '52500', null, 'BOTOL', null, null, 'CENDO', 'NIFURAL SIRUP (1BOTOL @60ML) ', '47,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80820', '', '.POLYCROL SYRUP 180ML', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:46:35', '0', null, '', '39000', '0', 'BTL', '', '1', null, '.POLYCROL SYRUP 180ML ', '39,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00803', '300747126132', 'DEPAKOTE ER 500MG (1BOTOL @100TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:06:57', '0', null, '', '700000', '0', 'BOTOL', '', '1', 'FAHRENHEIT', 'DEPAKOTE ER 500MG (1BOTOL @100TAB) ', '625,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01519', '', 'KARY UNI ED (1BOTOL @5ML)', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:04:16', '0', null, '', '30000', '30000', 'BOTOL', '', '1', 'MEDIFARMA LAB', 'KARY UNI ED (1BOTOL @5ML) ', '35,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02344', '8993347005086', 'POLYSILANE SUSPENSI (1BOTOL @180ML)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '29000', null, 'BOTOL', null, null, 'GSK', 'POLYSILANE SUSPENSI (1BOTOL @180ML) ', '28,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01506', '8992858445015', 'KALMICETINE 250MG ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 16:14:31', '0', null, '@10TAB', '52500', '6000', 'DUS', 'LBR', '10', null, 'KALMICETINE 250MG  @10TAB', '50,000 / DUS', '6,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('81115', '', 'PO CAI ', '0', '1', ' Merry', '2013-08-13 18:01:22', ' Merry', '2014-05-31 11:05:25', '0', null, '@10 BTL', '32000', '3500', 'BOX', 'BIJI', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81143', '', 'SAGESTAM EYE DROP', '0', '1', ' Merry', '2013-08-17 16:11:58', null, null, '0', null, '', '19000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81089', '', '.ZITROMAX 500MG @3TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:39:30', '0', null, '', '180000', '0', 'DUS', '', '1', null, '.ZITROMAX 500MG @3TAB ', '165,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80317', '', '.DUPHASTONE @20TAB', '0', '1', null, '2013-08-08 07:25:21', ' Sri', '2014-01-26 16:42:32', '0', null, '', '280000', '15000', 'DUS', 'TAB', '20', null, '.DUPHASTONE @20TAB ', '260,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00051', '', 'ACYCLOVIR 5% KRIM', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-01-19 16:17:18', '0', null, '', '100000', '4000', 'DUS', 'TUBE', '25', 'BAYER', 'ACYCLOVIR 5% (25TUBE @5g) KF ', '100,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81140', '', 'MECONEURO', '0', '1', ' Merry', '2013-08-17 15:56:11', null, null, '0', null, '@10BIJI', '205000', '21000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('80548', '', '.KETOKONAZOLE CREAM (12 TUBE)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-10-02 13:05:36', '0', null, '', '57500', '8000', 'BOX', 'TUBE', '12', null, '.KETOKONAZOLE CREAM (12 TUBE) ', '57,500 / TUBE ', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80735', '', '.NEUROVIT-E (6LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 16:06:45', '0', null, '@10 BIJI', '66000', '11000', 'DUS', 'LBR', '6', null, '.NEUROVIT-E (6LBR @10TAB) ', '60,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('081118', '', 'SPASMAL', '0', '1', ' Merry', '2013-08-14 14:09:38', ' Merry', '2013-08-17 16:08:33', '0', null, '@10 BIJI', '100000', '7000', 'BOX', 'LBR', '20', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81141', '', 'HUMAPEN ERGO', '0', '1', ' Merry', '2013-08-17 16:09:59', null, null, '0', null, '', '220000', '0', 'BUAH', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81142', '', 'DAPYRIN', '0', '1', ' Merry', '2013-08-17 16:11:06', null, null, '0', null, '@BIJI', '80000', '4000', 'BOX', 'LBR', '20', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01771', '', 'MASKER @50 LBR', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-19 14:17:27', '0', null, '', '25000', '1000', 'DUS', 'BIJI', '50', 'HEALTH WEALTH', 'MASKER @50 LBR ', '25,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80723', '', '.NEUROBION 5000MG (25LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 15:36:31', '0', null, '@10BIJI', '630000', '26000', 'DUS', 'LBR', '25', null, '.NEUROBION 5000MG (25LBR @10TAB) ', '495,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01089', '8993347009305', 'FISHQUA (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '75000', null, 'BOTOL', null, null, 'INTERBAT', 'FISHQUA (1BOTOL @30CAP) ', '62,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01155', '8993347005987', 'FRUIT 18 JR ANAK (1BOTOL @60CAP)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '170000', null, 'BOTOL', null, null, 'MERCK', 'FRUIT 18 JR ANAK (1BOTOL @60CAP) ', '140,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80802', '', '.PHARMATON F @ BLISTER 5 TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 15:47:12', '0', null, '@ 5BIJI', '170000', '17000', 'BOX', 'LBR', '10', null, '.PHARMATON F @ BLISTER 5 TAB ', '14,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00567', '8999809100641', 'CEDOCARD 5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '72000', '13000', 'DUS', 'LBR', '6', 'EISAI INDONESIA', 'CEDOCARD 5MG  @10TAB', '54,000 / DUS', '90,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('01926', null, 'MOTILIUM TAB ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '305000', '62500', 'DUS', 'LBR', '5', 'MAHAKAM BETA FARMA', 'MOTILIUM TAB  @10TAB', '265,000 / DUS', '53,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00244', null, 'ATORSAN 40MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '300000', '100000', 'DUS', 'LBR', '3', 'SOHO', 'ATORSAN 40MG @10TAB', '300,000 / DUS', '100,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('81065', '', '.VYTORIN 10/10MG (3LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 15:23:34', '0', null, '@ 10 BIJI', '500000', '170000', 'DUS', 'LBR', '3', null, '.VYTORIN 10/10MG (3LBR @10TAB) ', '525,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02494', null, 'RANTIN 150 MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '430000', '45000', 'DUS', 'LBR', '10', 'SIMEX', 'RANTIN 150 MG  @10TAB', '420,000 / DUS', '42,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01841', '', 'MICARDIS 80MG PRO', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-11-28 17:29:34', '0', null, '@10TAB', '170000', '85000', 'DUS', 'LBR', '2', 'NOVELL', 'MICARDIS 80MG  @10TAB', '290,000 / DUS', '145,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('01930', null, 'MOVIX-COX 15MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '330000', '110000', 'DUS', 'LBR', '3', 'ASTRAZENECA', 'MOVIX-COX 15MG  @10TAB', '330,000 / DUS', '110,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('80521', null, '.ISORIC 300MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '135000', '27500', 'DUS', 'LBR', '5', null, '.ISORIC 300MG  @10TAB', '125,000 / DUS', '27,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('80520', '', '.ISORIC 100MG ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-02-22 18:19:09', '0', null, '@10TAB', '82500', '16000', 'DUS', 'LBR', '5', null, '.ISORIC 100MG  @10TAB', '50,000 / DUS', '15,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02331', '', 'POLARAMINE 10LBR @10TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 16:30:32', '0', null, '@10 BIJI', '300000', '30000', 'BOX', 'LBR', '10', 'NICHOLAS', 'POLARAMINE 10LBR @10TAB ', '30,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01430', null, 'INTERPEC ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '90000', '10000', 'DUS', 'LBR', '10', 'KIMIA FARMA (KF)', 'INTERPEC  @10TAB', '90,000 / DUS', '10,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01438', null, 'INTIDROL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '110000', '29000', 'DUS', 'LBR', '5', 'INDOFARMA (IF)', 'INTIDROL @10TAB', '110,000 / DUS', '27,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01439', null, 'INTIFEN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '230000', '23000', 'DUS', 'LBR', '10', 'NOVELL', 'INTIFEN  @10TAB', '180,000 / DUS', '19,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('03187', null, 'ZOTER 200MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '150000', '50000', 'DUS', 'LBR', '3', null, 'ZOTER 200MG  @10TAB', '150,000 / DUS', '50,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('004503', '', 'INCELIN 500MG', '0', '1', ' Ana', '2013-08-09 22:39:10', null, null, '0', null, '', '110000', '0', 'LBR', '', '1', null, 'INCELIN 500MG ', ' / LBR', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('01968', null, 'MYOBAT ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '150000', '32000', 'DUS', 'LBR', '5', 'SOHO', 'MYOBAT  @10TAB', '137,500 / DUS', '27,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01440', null, 'INTRIZIN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '110000', '40000', 'DUS', 'LBR', '3', 'INDOFARMA (IF)', 'INTRIZIN  @10TAB', '90,000 / DUS', '35,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01084', null, 'FINPRO ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '300000', '100000', 'DUS', 'LBR', '3', 'INTERBAT', 'FINPRO  @10TAB', '260,000 / DUS', '87,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02930', null, 'TRIAMCORT ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '220000', '22000', 'DUS', 'LBR', '10', null, 'TRIAMCORT  @10TAB', '220,000 / DUS', '22,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02437', '', 'PROSTAKUR', '0', '1', null, '2013-08-08 07:25:21', ' Rosa', '2013-08-17 15:13:01', '0', null, '@ 6 TAB', '75000', '15000', 'DUS', 'LBR', '5', null, 'PROSTAKUR (5LBR @6TAB) ', '70,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01423', null, 'INTERFAM 20MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '82500', '27500', 'DUS', 'LBR', '3', 'INDOFARMA (IF)', 'INTERFAM 20MG  @10TAB', '82,500 / DUS', '27,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01401', null, 'INCLARIN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '225000', '43000', 'DUS', 'LBR', '5', 'SOHO', 'INCLARIN  @10TAB', '225,000 / DUS', '43,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01437', null, 'INTERZOL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '205000', '42500', 'DUS', 'LBR', '5', 'NOVELL', 'INTERZOL @10TAB', '205,000 / DUS', '42,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01415', null, 'INSAAR ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '232500', '77500', 'DUS', 'LBR', '3', 'HEXPHARM JAYA (HJ)', 'INSAAR  @10TAB', '232,500 / DUS', '77,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01775', null, 'MATOVIT AX ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '125000', '42500', 'DUS', 'LBR', '3', 'RUSLINDO ANUGERAH', 'MATOVIT AX  @6TAB', '127,500 / DUS', '42,500 / LBR', '3 @6TAB');
INSERT INTO `tbartikel` VALUES ('00610', null, 'CEPTIK 100MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '450000', '150000', 'DUS', 'LBR', '3', 'OTTO', 'CEPTIK 100MG  @10TAB', '450,000 / DUS', '155,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00654', null, 'CLABAT 500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '212500', '42500', 'DUS', 'LBR', '5', 'KALBE', 'CLABAT 500MG  @4TAB', '212,500 / DUS', '42,500 / LBR', '5 @4TAB');
INSERT INTO `tbartikel` VALUES ('01424', null, 'INTERFLOX 500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '135000', '45000', 'DUS', 'LBR', '3', 'INDOFARMA (IF)', 'INTERFLOX 500MG  @4TAB', '122,500 / DUS', '42,500 / LBR', '3 @4TAB');
INSERT INTO `tbartikel` VALUES ('00233', null, 'ASTHIN FORCE 6 ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '165000', '55000', 'DUS', 'LBR', '6', 'DEXA MEDICA', 'ASTHIN FORCE 6  @6TAB', '135,000 / DUS', '37,500 / LBR', '6 @6TAB');
INSERT INTO `tbartikel` VALUES ('02056', '', 'NEXIUM 20MG (4STRIP @7TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-30 10:25:07', '0', null, '7 BIJI', '440000', '110000', 'DUS', 'LBR', '4', 'SANDOZ', 'NEXIUM 20MG (4STRIP @7TAB) ', '105,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03197', '', 'ZYCIN 250MG ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-10-01 12:57:30', '0', null, '@4TAB', '100000', '50000', 'DUS', 'LBR', '2', null, 'ZYCIN 250MG  @4TAB', '194,000 / DUS', '97,000 / LBR', '2 @4TAB');
INSERT INTO `tbartikel` VALUES ('01442', null, 'INVOMIT 4MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '270000', '95000', 'DUS', 'LBR', '3', 'KIMIA FARMA (KF)', 'INVOMIT 4MG @6TAB', '270,000 / DUS', '90,000 / LBR', '3 @6TAB');
INSERT INTO `tbartikel` VALUES ('02178', '20322106', 'OSCAL 0,25 (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-21 09:38:33', '0', null, '', '210000', '0', 'BOTOL', '', '1', 'SCAN', 'OSCAL 0,25 (1BOTOL @30CAP) ', '190,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00670', null, 'CLOGIN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '330000', '165000', 'DUS', 'LBR', '2', 'INDOFARMA', 'CLOGIN  @14TAB', '300,000 / DUS', '155,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('02357', null, 'PRAVINAT 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '456000', '77000', 'DUS', 'LBR', '6', 'NOVARTIS', 'PRAVINAT 10MG  @10TAB', '440,000 / DUS', '75,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('01728', null, 'LOTYN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '290000', '100000', 'DUS', 'LBR', '3', 'GSK', 'LOTYN  @10TAB', '290,000 / DUS', '100,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01422', null, 'INTERDOXIN 50MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '80000', '16000', 'DUS', 'LBR', '5', 'INDOFARMA (IF)', 'INTERDOXIN 50MG  @4TAB', '70,000 / DUS', '15,000 / LBR', '5 @4TAB');
INSERT INTO `tbartikel` VALUES ('03198', '', 'ZYCIN 500MG (1STRIP @3CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:25:20', '0', null, '', '70000', '0', 'DUS', '', '1', null, 'ZYCIN 500MG (1STRIP @3CAP) ', '60,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02883', null, 'TILIDON', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '87000', '29000', 'DUS', 'LBR', '3', null, 'TILIDON @10TAB', '87,000 / DUS', '29,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01116', null, 'FLOXBIO 500MG (5STRIP @10TAB)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '150000', '15000', 'DUS', 'LBR', '5', 'KALBE', 'FLOXBIO 500MG (5STRIP @10TAB) @10TAB', '150,000 / DUS', '15,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01812', '', 'MELOXIN 15MG ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-09-30 13:17:19', '0', null, '@10TAB', '375000', '75000', 'DUS', 'LBR', '5', null, 'MELOXIN 15MG  @10TAB', '130,000 / DUS', '75,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('00094', '', 'ALKOHOL PAD', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2013-12-11 18:05:40', '0', null, '', '12500', '12500', 'DUS', '', '1', 'DARYA VARIA', 'ALKOHOL PAD ', '10,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02599', '8995232700625', 'SALICYL BEDAK', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2013-11-21 15:01:14', '0', null, '', '7000', '0', 'BTOL', '', '1', 'LAPI', 'SALICYL BEDAK ', '6,000 / BTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00319', '8992843101902', 'BETADINE KUMUR (1BOTOL @190ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-17 17:09:54', '0', null, '', '17500', '0', 'BOTOL', '', '1', 'GUARDIAN P', 'BETADINE KUMUR (1BOTOL @190ML) ', '17,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80675', '', '.MENTHOL ABC(BESAR)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-07-15 17:27:00', '0', null, '', '255000', '22000', 'LSN', 'BIJI', '12', null, '.MENTHOL ABC(BESAR) ', '21,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80770', '', '.OMEPROXIL 500MG', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 16:43:40', '0', null, '@10 BIJI', '90000', '15000', 'BOX', 'LBR', '10', null, '.OMEPROXIL 500MG ', '10,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00073', '', 'AKRINOR TAB', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2013-08-17 11:13:58', '0', null, '@ 10 TAB', '560000', '56000', 'DUS', 'LBR', '10', 'LAPI', 'AKRINOR TAB ', '56,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('003525', '', 'AGGRAVAN', '0', '1', ' Ana', '2013-08-11 10:37:01', ' Merry', '2013-08-17 16:41:04', '0', null, '@10 BIJI', '210000', '70000', 'DUS', 'LBR', '3', null, 'AGRAVOR ', ' / DUS', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('00934', '', 'ENATIN', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 16:39:48', '0', null, '@9 BIJI', '28000', '14000', 'BOX', 'LBR', '2', 'PHAPROS', 'ENATIN ', '13,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81117', '', 'REQUIP2MG', '0', '1', ' Merry', '2013-08-14 12:21:43', ' Merry', '2013-08-17 16:47:24', '0', null, '@4BIJI', '200000', '30000', 'BOX', 'LBR', '7', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81071', '', '.XYZAL @10TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 16:26:59', '0', null, '@10 BIJI', '350000', '70000', 'BOX', 'LBR', '5', null, '.XYZAL @10TAB ', '70,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80775', '', '.OPISTAN (10LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 16:49:22', '0', null, '@10 BIJI', '35000', '5000', 'DUS', 'LBR', '10', null, '.OPISTAN (10LBR @10TAB) ', '25,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00249', '', 'AUGENTONIC 15 ML', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:19:44', '0', null, '', '30000', '0', 'BTL', '', '1', 'PHAROS', 'AUGENTONIC 15 ML ', '30,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01115', '', 'FLOXA BOTOLAN', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-03-07 09:35:20', '0', null, '', '35000', '0', 'BTL', '', '1', 'NICHOLAS', 'FLOXA  ', '33,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02339', null, 'POLYDEX', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '38500', null, 'BTL', null, null, 'TANABE', 'POLYDEX ', '37,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02438', null, 'PROTAGENTAN', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '45000', null, 'BTL', null, null, 'DANPAC PHARMA', 'PROTAGENTAN ', '40,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00553', '', 'CATARLENT TETES MATA 15 ML', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-13 13:55:33', '0', null, '', '35000', '35000', 'BTL', '', '1', 'PRAFA', 'CATARLENT TETES MATA 15 ML ', '25,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03108', '', 'VITROLENTA', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:26:47', '0', null, '', '35000', '0', 'BTL', '', '1', null, 'VITROLENTA ', '38,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01066', '', 'FENICOL 0,5%', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-17 17:33:52', '0', null, '', '35000', '35000', 'BTL', '', '1', 'INTERBAT', 'FENICOL 0,5% ', '27,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00620', '', 'CETAPRED', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:08:39', '0', null, '', '27000', '0', 'BTL', '', '1', 'MOLEX AYUS', 'CETAPRED ', '27,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00089', '', 'ALETROL', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:14:46', '0', null, '', '15000', '0', 'BTL', '', '1', 'LAPI', 'ALETROL ', '15,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02376', '', 'PRIMADEX 10TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 16:51:08', '0', null, '@10 BIJI', '50000', '5000', 'BOX', 'LBR', '10', 'ASTRAZENECA', 'PRIMADEX 10TAB ', ' / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81152', '', 'KOTAK P3K BIASA', '0', '1', ' Merry', '2013-08-17 16:47:49', ' Merry', '2015-05-02 18:35:19', '0', null, '', '12500', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00789', '8992112046118', 'DECOLSIN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '67500', '3000', 'DUS', 'LBR', '25', null, 'DECOLSIN  @4TAB', '67,500 / DUS', '2,500 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('02155', null, 'OMEGA SQUA PLUS K-link (1BOTOL @30SOFTGEL)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '135000', null, 'BOTOL', null, null, null, 'OMEGA SQUA PLUS K-link (1BOTOL @30SOFTGEL) ', '90,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81144', '', 'SUPERVITON', '0', '1', ' Merry', '2013-08-17 16:13:51', null, null, '0', null, '100 BIJI', '70000', '100', 'BTL', 'BTL', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81158', '', 'ROLL ON GADING', '0', '1', ' Merry', '2013-08-17 17:00:45', null, null, '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00092', '', 'ALKOHOL CAIR 100ML', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2013-12-11 18:05:48', '0', null, '', '4500', '0', 'BTL', '', '1', 'LAPI', 'ALKOHOL CAIR 100ML ', '4,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02574', '', 'RIVANOL BESAR', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:39:01', '0', null, '', '6000', '0', 'BTL', '', '1', null, 'RIVANOL BESAR ', '6,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01013', '', 'EYEFRESH', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-13 13:59:06', '0', null, '', '32500', '32500', 'BTL', '', '1', 'INTERBAT', 'EYEFRESH ', '30,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02884', '', 'TIMOL 0,5%BOTOL', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-04-24 13:13:26', '0', null, '', '52000', '52000', 'BTL', '', '1', null, 'TIMOL 0,5% ', '50,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00605', '', 'CENFRESH ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-13 13:53:33', '0', null, '', '38000', '38000', 'BTL', '', '1', 'DEXA MEDICA', 'CENFRESH  ', '30,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00597', '', 'CENDO LYTERS', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-13 13:57:52', '0', null, '', '25000', '25000', 'BTL', '', '1', null, 'CENDO LYTERS ', '20,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('003304', '', 'TIMOL 0.25', '0', '1', ' Ana', '2013-08-09 19:06:48', null, null, '0', null, '', '37500', '0', 'BTL', '', '1', null, 'TIMOL 0.25 ', ' / BTL', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('81160', '', 'ASTADIAB', '0', '1', ' Merry', '2013-08-17 17:03:53', ' Merry', '2013-08-17 17:05:02', '0', null, '@6 BIJI', '205000', '41000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81157', '', 'METSEL', '0', '1', ' Merry', '2013-08-17 16:58:38', null, null, '0', null, '@6BIJI', '155000', '32000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01265', '', 'GRAFAMIC 500 MG 10 TAB', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 16:59:52', '0', null, '@10 BIJI', '35000', '5000', 'BOX', 'LBR', '10', 'BAYER', 'GRAFAMIC 500 MG 10 TAB ', '5,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02335', '', 'POLOFAR PLUS ( 10 LBR )', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 16:59:15', '0', null, '@10 BIJI', '50000', '5000', 'DUS', 'LBR', '10', 'ROCHE', 'POLOFAR PLUS ( 10 LBR ) ', '50,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80862', '', '.QIDROX 500MG (3LBR @10 CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 17:04:40', '0', null, '@10BIJI', '300000', '100000', 'BOX', 'LBR', '3', null, '.QIDROX 500MG (3LBR @10 CAP) ', '100,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81145', '', 'GARLIC FORTE', '0', '1', ' Merry', '2013-08-17 16:22:33', null, null, '0', null, '@60 BIJI', '145000', '0', 'BTL', 'BTL', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01326', null, 'HIALID 0,1% (1BOTOL @5ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '65000', null, 'BOTOL', null, null, 'KALBE', 'HIALID 0,1% (1BOTOL @5ML) ', '65,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01557', null, 'KOTAK OBAT KECIL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '10000', null, 'DUS', null, null, 'FAHRENHEIT', 'KOTAK OBAT KECIL ', '10,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81146', '', 'XARELTO 10 MG', '0', '1', ' Merry', '2013-08-17 16:24:53', null, null, '0', null, '@ 10 BIJI', '325000', '0', 'BOX', 'BOX', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81161', '', 'XANTURIC 300 MG', '0', '1', ' Merry', '2013-08-17 17:05:48', null, null, '0', null, '@10 BIJI', '50000', '11000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81147', '', 'XARELTO 15 MG', '0', '1', ' Merry', '2013-08-17 16:26:17', ' Merry', '2013-08-17 17:12:04', '0', null, '@ 14 BIJI', '800000', '400000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81148', '', 'PREDNICORT 4 MG', '0', '1', ' Merry', '2013-08-17 16:28:03', null, null, '0', null, '', '25000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01787', '', 'MECOX 15 MG 10 TAB', '0', '1', null, '2013-08-08 07:25:21', ' Nova', '2013-08-17 14:49:37', '0', null, '@ 10 TAB', '110000', '58000', 'LBR', 'LBR', '2', null, 'MECOX 15 MG 10 TAB ', '57,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03110', null, 'VITROLENTA MINIDOES', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '32500', null, 'LBR', null, null, null, 'VITROLENTA MINIDOES ', '25,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00601', '', 'CENDO XITROL MD', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-13 13:52:00', '0', null, '', '21000', '0', 'LBR', '', '1', 'DANKOS', 'CENDO XITROL MD ', '25,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02080', null, 'NONCORT', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '45000', null, 'LBR', null, null, 'LAPI', 'NONCORT ', '38,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80463', '', '.HYALUB MINI DOSE', '0', '1', null, '2013-08-08 07:25:21', ' Sri', '2014-12-11 18:52:01', '0', null, '', '60000', '60000', 'LBR', '', '1', null, '.HYALUB MINI DOSE ', '50,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01212', '', 'GLAOPLUS', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2014-01-04 16:01:41', '0', null, '', '105000', '105000', 'LBR', '', '1', 'NOVARTIS', 'GLAOPLUS ', '105,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00598', null, 'CENDO PROTAGENTA MD', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '39000', null, 'LBR', null, null, 'ETHICA', 'CENDO PROTAGENTA MD ', '35,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01734', null, 'LUBRICENT MD', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '43000', null, 'LBR', null, null, 'NOVELL', 'LUBRICENT MD ', '35,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01015', '', 'EYEFRESH PLUS MINI DOSE', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-13 13:58:25', '0', null, '', '38000', '38000', 'LBR', '', '1', null, 'EYEFRESH PLUS MINI DOSE ', '32,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01014', '', 'EYEFRESH MINIDOSE', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-13 13:59:00', '0', null, '', '27000', '0', 'LBR', '', '1', 'INTERBAT', 'EYEFRESH MINIDOSE ', '20,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00606', '', 'CENFRESH MINIDOES', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-13 13:53:23', '0', null, '', '27000', '27000', 'LBR', '', '1', 'PHAROS', 'CENFRESH MINIDOES ', '20,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00965', null, 'ERLAMYCETIN MATA', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '5000', null, 'BTOL', null, null, 'GRACIA P', 'ERLAMYCETIN MATA ', '5,000 / BTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02870', '', 'THROMBOPHOB GEL 20g', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-23 16:36:36', '0', null, '', '52500', '0', 'TUBE', '', '1', null, 'THROMBOPHOB GEL 20g ', '49,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02180', '8992858460216', 'OSFIT DHA ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '110000', '37500', 'DUS', 'LBR', '3', 'KALBE', 'OSFIT DHA  @10TAB', '85,000 / DUS', '32,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00035', null, 'ACTAPIN 5MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '30000', '12500', 'DUS', 'LBR', '3', 'DANKOS', 'ACTAPIN 5MG @10TAB', '30,000 / DUS', '10,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00011', '', 'ABILIFY 10 MG ( 1 LBR)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-23 16:03:20', '0', null, '', '425000', '0', 'LBR', '', '1', 'LAPI', 'ABILIFY 10 MG ( 1 LBR) ', '410,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80011', '', '.ACTAPIN 10MG (3LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:24:32', '0', null, '', '55000', '20000', 'DUS', '', '1', null, '.ACTAPIN 10MG (3LBR @10TAB) ', '60,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80724', '', '.NEUROBION PUTIH (25LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 15:36:05', '0', null, '210BIJI', '350000', '14000', 'DUS', 'LBR', '25', null, '.NEUROBION PUTIH (25LBR @10TAB) ', '275,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02113', '8993424101601', 'NULACTA ', '0', '1', null, '2013-08-08 07:25:21', ' Sri', '2014-01-26 17:49:15', '0', null, '@12TAB', '235000', '47000', 'DUS', 'LBR', '5', 'NOVARTIS', 'NULACTA IBU  @12TAB', '215,000 / DUS', '35,000 / LBR', '5 @12TAB');
INSERT INTO `tbartikel` VALUES ('00684', '', 'CO Q TEN KONILIFE', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:08:22', '0', null, '', '110000', '0', 'BTL', '', '1', 'FAHRENHEIT', 'CO Q TEN KONILIFE ', '100,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('081109', '', 'VERMIN @30TAB', '0', '1', ' Merry', '2013-08-13 10:23:25', null, null, '0', null, '', '35000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01130', '8998667101654', 'FOCUS (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '90000', null, 'BOTOL', null, null, 'SANOFI AVENTIS', 'FOCUS (1BOTOL @30CAP) ', '80,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01706', '8998667101463', 'LIVERGARD (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-12-12 19:08:34', '0', null, '', '90000', '0', 'BOTOL', '', '1', 'FAHRENHEIT', 'LIVERGARD (1BOTOL @30CAP) ', '80,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02506', '8998667101661', 'REDAXIN (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Sri', '2014-06-18 19:11:57', '0', null, '', '70000', '0', 'BOTOL', '', '1', null, 'REDAXIN (1BOTOL @30CAP) ', '60,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02191', '8998667101470', 'OSTEGARD (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-12 19:06:59', '0', null, '', '90000', '90000', 'BOTOL', '', '1', 'KIMIA FARMA', 'OSTEGARD (1BOTOL @30CAP) ', '80,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02431', '8998667101630', 'PROSMETO (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '90000', null, 'BOTOL', null, null, 'SYNERGI (USA)', 'PROSMETO (1BOTOL @30CAP) ', '80,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01236', '8998667101623', 'GLUCOTRIM (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '70000', null, 'BOTOL', null, null, 'SANBE', 'GLUCOTRIM (1BOTOL @30CAP) ', '60,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03082', '', 'VISION (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:27:33', '0', null, '', '75000', '75000', 'BOTOL', '', '1', null, 'VISION (1BOTOL @30CAP) ', '65,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02772', '3331300097238', 'STERIMAR NASAL BABY (1BOTOL @50ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:31:43', '0', null, '', '125000', '0', 'BOTOL', '', '1', null, 'STERIMAR NASAL BABY (1BOTOL @50ML) ', '115,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02771', '3331300097221', 'STERIMAR NASAL ANAK (1BOTOL @50ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:31:48', '0', null, '', '120000', '0', 'BOTOL', '', '1', null, 'STERIMAR NASAL ANAK (1BOTOL @50ML) ', '105,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01395', '8998667101142', 'IMUNEA (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '75000', null, 'BOTOL', null, null, 'DEXA MEDICA', 'IMUNEA (1BOTOL @30CAP) ', '65,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02160', '8993347013159', 'OMEPROS 3,6,9 (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '110000', null, 'BOTOL', null, null, 'PYRIDAM FARMA', 'OMEPROS 3,6,9 (1BOTOL @30CAP) ', '100,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00997', '8998667101401', 'EVER E250 (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '62500', null, 'BOTOL', null, null, 'INTERBAT', 'EVER E250 (1BOTOL @30CAP) ', '53,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02580', '8997016610151', 'ROYAL JELLY 500MG SUPPLEMAX (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:38:47', '0', null, '', '60000', '0', 'BOTOL', '', '1', 'EAGLE INDO PHARMA', 'ROYAL JELLY 500MG SUPPLEMAX (1BOTOL @30CAP) ', '60,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00311', '8997016610199', 'BETA CAROTENE 6MG SUPPLEMAX (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:22:22', '0', null, '', '25000', '0', 'BOTOL', '', '1', 'DEXA MEDICA', 'BETA CAROTENE 6MG SUPPLEMAX (1BOTOL @30CAP) ', '25,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02440', '8997016610083', 'PROTEGAR SUPPLEMAX (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '90000', null, 'BOTOL', null, null, 'KOTRA PHARMA', 'PROTEGAR SUPPLEMAX (1BOTOL @30CAP) ', '90,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01641', '8997016610021', 'LECITHIN 1200MG SUPPLEMAX (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '35000', null, 'BOTOL', null, null, 'LAPI', 'LECITHIN 1200MG SUPPLEMAX (1BOTOL @30CAP) ', '35,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03023', '8998888563033', 'VALE^S FEMME (1DUS @12PCS)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:28:06', '0', null, '', '25000', '0', 'DUS', '', '1', null, 'VALE^S FEMME (1DUS @12PCS) ', '25,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01488', '8997020060133', 'JOINTACE GEL 50g', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:03:27', '0', null, '', '80000', '0', 'TUBE', '', '1', 'VITABIOTICS', 'JOINTACE GEL 50g ', '80,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02137', '8992112074012', 'OBIMIN-AF ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '45000', '15000', 'DUS', 'LBR', '3', 'ACTAVIS', 'OBIMIN-AF  @10TAB', '33,000 / DUS', '11,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02105', null, 'NOURISKIN 60 TAB', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '365000', null, 'DUS', null, null, 'ACTAVIS', 'NOURISKIN 60 TAB ', '340,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81077', '', '.ZEGASE (10LBR @5TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 15:34:13', '0', null, '@10BIJI', '115000', '13000', 'DUS', 'LBR', '10', null, '.ZEGASE (10LBR @5TAB) ', '125,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00492', null, 'CALPLEX', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '110000', '22000', 'DUS', 'LBR', '5', 'HARSEN', 'CALPLEX @6TAB', '105,000 / DUS', '21,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('80774', '', '.ONGLIZA (2LBR @14TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-19 09:59:42', '0', null, '14 BIJI', '330000', '165000', 'DUS', 'LBR', '2', null, '.ONGLIZA (2LBR @14TAB) ', '330,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02404', '8993347005246', 'PROLACTA DHA FOR BABY ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10softgel', '245000', '50000', 'DUS', 'LBR', '5', 'GUARDIAN P', 'PROLACTA DHA FOR BABY  @10softgel', '230,000 / DUS', '45,000 / LBR', '5 @10softgel');
INSERT INTO `tbartikel` VALUES ('02114', null, 'NULACTA PLUS ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@12TAB', '270000', '54000', 'DUS', 'LBR', '5', 'NOVAGALI PHARMA', 'NULACTA PLUS  @12TAB', '270,000 / DUS', '54,000 / LBR', '5 @12TAB');
INSERT INTO `tbartikel` VALUES ('80837', '', '.PROLIBI @4TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:46:11', '0', null, '', '160000', '0', 'LBR', '', '1', null, '.PROLIBI @4TAB ', '160,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02413', '8993883880208', 'PROMAVIT', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '120000', '20000', 'DUS', 'LBR', '6', 'SCAN', 'PROMAVIT @10TAB', '114,000 / DUS', '18,500 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('02499', null, 'REBONE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '300000', '62000', 'DUS', 'LBR', '5', 'TOTALCARE', 'REBONE  @6TAB', '275,000 / DUS', '62,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('02495', null, 'RASILEZ 150MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@7TAB', '204000', '102000', 'DUS', 'LBR', '2', 'IKAPHARMINDO P', 'RASILEZ 150MG  @7TAB', '165,000 / DUS', '82,500 / LBR', '2 @7TAB');
INSERT INTO `tbartikel` VALUES ('02769', '8993347002030', 'ENIZALETS 5MG', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-25 18:40:31', '0', null, '@10TAB', '110000', '12000', 'DUS', 'LBR', '10', null, 'STELAZINE 5MG  @10TAB', '75,000 / DUS', '10,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('03096', '8993430102845', 'VITAMAM 2 ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@8TAB', '68000', '17000', 'DUS', 'LBR', '4', null, 'VITAMAM 2  @8TAB', '52,000 / DUS', '13,000 / LBR', '4 @8TAB');
INSERT INTO `tbartikel` VALUES ('01640', '8993883880079', 'L-BIO', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@1G', '160000', '5500', 'DUS', 'SACHET', '30', 'NOVELL', 'L-BIO @1G', '120,000 / DUS', '4,000 / SACHET', '30 @1G');
INSERT INTO `tbartikel` VALUES ('02143', null, 'OCU-V ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '135000', '27500', 'DUS', 'LBR', '5', 'PRAFA', 'OCU-V  @6TAB', '130,000 / DUS', '26,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01385', null, 'IMFORCE TAB', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '45000', null, 'LBR', null, null, 'KIMIA FARMA (KF)', 'IMFORCE TAB ', '43,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02709', null, 'SIMVASK 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '225000', '75000', 'DUS', 'LBR', '3', null, 'SIMVASK 10MG  @10TAB', '202,500 / DUS', '67,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02710', null, 'SIMVASK 5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '120000', '42000', 'DUS', 'LBR', '3', null, 'SIMVASK 5MG  @10TAB', '112,500 / DUS', '37,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00128', null, 'AMCOR', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '70000', '25000', 'DUS', 'LBR', '3', 'ROCELLA LAB', 'AMCOR @10TAB', '100,000 / DUS', '35,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00618', null, 'CESTER ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '85000', '19000', 'DUS', 'LBR', '5', 'BERNOFARM', 'CESTER  @6TAB', '80,000 / DUS', '16,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01016', '8993883880062', 'EYEVIT ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '130000', '45000', 'DUS', 'LBR', '3', 'INTERBAT', 'EYEVIT  @10TAB', '99,000 / DUS', '33,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00366', null, 'BIOCURLAM ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '125000', '62500', 'DUS', 'LBR', '2', 'CORSA INDUSTRIES', 'BIOCURLAM  @10TAB', '125,000 / DUS', '62,500 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('00325', null, 'BETALANS', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '270000', '135000', 'DUS', 'LBR', '2', 'SOHO', 'BETALANS @10TAB', '240,000 / DUS', '120,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('01776', null, 'MATOVIT FIFTY ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '120000', '40000', 'DUS', 'LBR', '3', 'RUSLINDO ANUGERAH', 'MATOVIT FIFTY  @10TAB', '112,500 / DUS', '37,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02406', null, 'PROLIBI ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '800000', '160000', 'DUS', 'LBR', '5', 'ARMOXINDO FARMA', 'PROLIBI  @4TAB', '800,000 / DUS', '160,000 / LBR', '5 @4TAB');
INSERT INTO `tbartikel` VALUES ('00012', '', 'ABILIFY 15MG @10TAB', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-23 16:03:12', '0', null, '', '485000', '0', 'DUS', '', '1', 'LAPI', 'ABILIFY 15MG @10TAB ', '475,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00365', null, 'BIOCURKEM', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '337500', '112500', 'DUS', 'LBR', '3', null, 'BIOCURKEM @10TAB', '337,500 / DUS', '112,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('03173', null, 'ZEUFOR ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '390000', '130000', 'DUS', 'LBR', '3', null, 'ZEUFOR  @10TAB', '330,000 / DUS', '110,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02220', '8993347006137', 'OZEN 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '142500', '47500', 'DUS', 'LBR', '3', 'MERCK', 'OZEN 10MG  @10TAB', '127,500 / DUS', '42,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('81067', '', '.XATRAL (3LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-24 17:00:27', '0', null, '10 BIJI', '375000', '125000', 'DUS', 'LBR', '3', null, '.XATRAL (3LBR @10TAB) ', '375,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02392', null, 'PRODEXON ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '45000', '5000', 'DUS', 'LBR', '10', 'GUARDIAN P', 'PRODEXON  @10TAB', '45,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02733', null, 'SOHOLIN 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '18000', '60000', 'DUS', 'LBR', '5', null, 'SOHOLIN 500MG  @6TAB', '350,000 / DUS', '60,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('80273', null, '.DALFAROL 200MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '260000', '12000', 'DUS', 'LBR', '25', null, '.DALFAROL 200MG  @4TAB', '220,000 / DUS', '9,000 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('02405', '8993430100988', 'PROLACTA DHA FOR MOTHER ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10SOFTGEL', '240000', '40000', 'DUS', 'LBR', '6', 'GUARDIAN P', 'PROLACTA DHA FOR MOTHER  @10SOFTGEL', '192,000 / DUS', '34,000 / LBR', '6 @10SOFTGEL');
INSERT INTO `tbartikel` VALUES ('03059', null, 'VIBRION ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '200000', '40000', 'DUS', 'LBR', '5', null, 'VIBRION  @6TAB', '175,000 / DUS', '35,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01202', null, 'GERAC 10 SACHET', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '130000', null, 'BOX', null, null, 'SCAN', 'GERAC 10 SACHET ', '115,000 / BOX', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01740', '8994388111699', 'LYCOXY ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '150000', '30000', 'DUS', 'LBR', '5', null, 'LYCOXY  @6TAB', '137,500 / DUS', '28,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01207', null, 'GLAMAROL-1MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '125000', '25000', 'DUS', 'LBR', '5', 'NOVARTIS', 'GLAMAROL-1MG @10TAB', '80,000 / DUS', '16,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01208', null, 'GLAMAROL-2MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '225000', '45000', 'DUS', 'LBR', '5', 'NOVARTIS', 'GLAMAROL-2MG  @10TAB', '185,000 / DUS', '37,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01974', null, 'NALETAL 50MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '150000', '50000', 'DUS', 'LBR', '3', 'NOVARTIS', 'NALETAL 50MG  @10TAB', '150,000 / DUS', '50,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('81022', '', '.UNALIUM 5MG', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-10-20 17:27:17', '0', null, '', '80000', '4000', 'LBR', 'BIJI', '20', null, '.UNALIUM 5MG (2LBR @20TAB) ', '130,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02994', '', 'UNALIUM-10MG ', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2014-03-03 16:07:56', '0', null, '', '110000', '6000', 'LBR', 'BIJI', '20', null, 'UNALIUM-10MG 1TAB ', '5,000 / BUTIR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01172', '', 'GALFLUX 10MG', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-10 17:58:58', '0', null, '', '65000', '3500', 'LBR', 'BIJI', '20', 'NOVARTIS', 'GALFLUX 10MG @20TAB', '110,000 / DUS', '55,000 / LBR', '2 @20TAB');
INSERT INTO `tbartikel` VALUES ('01261', null, 'GOVAZOL 150 MG (1LBR @3TAB)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '160000', null, 'LBR', null, null, 'SURYA DERMATO', 'GOVAZOL 150 MG (1LBR @3TAB) ', '150,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01465', '8992916982360', 'ISOPTIN 80MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '670000', '136000', 'DUS', 'LBR', '5', 'KIMIA FARMA (KF)', 'ISOPTIN 80MG @10TAB', '525,000 / DUS', '105,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02175', null, 'OPUS ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '250000', '50000', 'DUS', 'LBR', '5', 'COMBIPHAR', 'OPUS  @10TAB', '225,000 / DUS', '45,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02936', null, 'TRIATEC 5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '720000', '120000', 'DUS', 'LBR', '6', null, 'TRIATEC 5MG  @10TAB', '630,000 / DUS', '105,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('00016', '5000455006461', 'ACCOLATE 20MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '285000', '142500', 'DUS', 'LBR', '2', 'ETHICA', 'ACCOLATE 20MG @14TAB', '260,000 / DUS', '130,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('02362', null, 'PRAZINA ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '130000', '13000', 'DUS', 'LBR', '10', null, 'PRAZINA  @10TAB', '130,000 / DUS', '13,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80632', '', '.LOPITEN 10MG@10TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:46:48', '0', null, '', '55000', '0', 'LBR', '', '1', null, '.LOPITEN 10MG@10TAB ', '55,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02076', '', 'NIZORAL/TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-04-16 10:12:04', '0', null, '15000', '150000', '15000', 'LBR', 'BIJI', '10', 'SIMEX', 'NIZORAL/TAB ', '13,000 / BUTIR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02571', '', 'RISINA ( 2 LBR )', '0', '1', null, '2013-08-08 07:25:21', ' Sri', '2014-06-18 19:11:25', '0', null, '', '56000', '0', 'LBR', '', '1', null, 'RISINA ( 2 LBR ) ', '56,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03048', null, 'VERCURE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '87500', '18000', 'DUS', 'LBR', '5', null, 'VERCURE  @10TAB', '87,500 / DUS', '20,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01972', null, 'MYORI ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '175000', '35000', 'DUS', 'LBR', '5', 'NOVARTIS', 'MYORI  @10TAB', '137,500 / DUS', '30,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01980', null, 'NARIZ 25MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '75000', '15000', 'DUS', 'LBR', '5', 'NOVELL', 'NARIZ 25MG  @10TAB', '285,000 / DUS', '15,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('81003', null, '.TRIATEC 10MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '485000', '162500', 'DUS', 'LBR', '3', null, '.TRIATEC 10MG @10TAB', '420,000 / DUS', '142,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02935', null, 'TRIATEC 2,5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '550000', '92500', 'DUS', 'LBR', '6', null, 'TRIATEC 2,5MG  @10TAB', '405,000 / DUS', '67,500 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('81011', '', '.TRIPTAGIC @2TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2015-04-25 13:27:48', '0', null, '10BIJI', '487500', '50000', 'LBR', 'BIJI', '1', null, '.TRIPTAGIC @2TAB ', '90,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02563', null, 'RIMACTANE 600 MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '687500', '27500', 'DUS', 'LBR', '25', 'INTRA ARIES', 'RIMACTANE 600 MG  @10TAB', '687,500 / DUS', '27,500 / LBR', '25 @10TAB');
INSERT INTO `tbartikel` VALUES ('03202', '', 'ISOPRINOSINE', '0', '1', ' Ana', '2013-08-17 11:02:55', null, null, '0', null, '@ 8 TAB', '100000', '100000', 'DUS', 'LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('03205', '', 'NALETAL 100 MG', '0', '1', ' Ana', '2013-08-17 11:12:27', null, null, '0', null, '@ 10 TAB', '165000', '80000', 'DUS', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01001', null, 'EVION 10TAB', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '12500', null, 'LBR', null, null, 'INTERBAT', 'EVION 10TAB ', '11,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03049', '8991111151335', 'VERMOX ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@1TAB', '480000', '20000', 'DUS', 'LBR', '24', null, 'VERMOX  @1TAB', '462,500 / DUS', '18,500 / LBR', '24 @1TAB');
INSERT INTO `tbartikel` VALUES ('01637', '8998777140093', 'LAXING', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '60000', '3000', 'DUS', 'LBR', '25', 'DANKOS', 'LAXING @4TAB', '55,000 / DUS', '2,500 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('003513', '', 'NEO NAPACIN', '0', '1', ' Ana', '2013-08-10 22:10:50', null, null, '0', null, '', '2000', '2000', 'LBR', '', '1', null, 'NEO NAPACIN ', ' / LBR', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('00847', '8998777110201', 'DIAPET ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '4TAB', '45000', '2500', 'DUS', 'LBR', '25', 'HEXPHARM JAYA (HJ)', 'DIAPET  4TAB', '32,000 / DUS', '2,000 / LBR', '25 4TAB');
INSERT INTO `tbartikel` VALUES ('00423', '8999908072009', 'BODREX MIGRA ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-22 18:20:01', '0', null, '@4TAB', '42500', '2500', 'DUS', 'LBR', '4', 'BOEHRINGER INGELHEIM', 'BODREX MIGRA  @4TAB', '38,000 / DUS', '2,000 / LBR', '4 @4TAB');
INSERT INTO `tbartikel` VALUES ('02287', '', 'PILKITA', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 20:55:41', '0', null, '@2BIJI', '12000', '1500', 'BUNGKUS', 'LBR', '10', null, 'PILKITA 10BUNGKUS ', '10,000 / BUNGKUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02052', '8992112020088', 'NEW DIATABS ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '55000', '3000', 'DUS', 'LBR', '25', 'DANKOS', 'NEW DIATABS  @4TAB', '47,000 / DUS', '2,000 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('00371', null, 'BIOGESIC', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '40000', '2000', 'DUS', 'LBR', '25', 'HEXPHARM JAYA (HJ)', 'BIOGESIC @4TAB', '35,000 / DUS', '2,000 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('003515', '', 'UPIXON', '0', '1', ' Ana', '2013-08-10 23:20:22', null, null, '0', null, '', '0', '0', 'LBR', '', '1', null, 'UPIXON ', ' / LBR', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('00368', '', 'BIODIAR 630MG 10 TAB', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-03-28 09:09:26', '0', null, '@10TAB', '65000', '14000', 'DUS', 'LBR', '5', 'BERNOFARM', 'BIODIAR 630MG  @10TAB', '60,000 / DUS', '12,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01559', '8993338001011', 'KOYO CABE ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '150000', '8000', 'DUS', 'SACHET', '20', 'DARYA VARIA', 'KOYO CABE  ', '117,000 / DUS', '6,000 / SACHET', '20 ');
INSERT INTO `tbartikel` VALUES ('81119', '', 'FATIGON VIRO', '0', '1', ' Merry', '2013-08-15 10:35:31', null, null, '0', null, '', '5000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01923', '8997011200111', 'MOSAVON TABLET', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-03-28 11:01:25', '0', null, '@4TAB', '25000', '2000', 'DUS', 'LBR', '25', null, 'MOSAVON @4TAB', '25,000 / DUS', '2,000 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('01642', '8998777150009', 'LELAP', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '21000', '7000', 'DUS', 'LBR', '3', 'LAPI', 'LELAP @4TAB', '15,000 / DUS', '5,500 / LBR', '3 @4TAB');
INSERT INTO `tbartikel` VALUES ('00848', '8998777140079', 'DIAPET NR ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '56000', '3000', 'DUS', 'LBR', '20', 'HEXPHARM JAYA (HJ)', 'DIAPET NR  @6TAB', '47,000 / DUS', '2,000 / LBR', '20 @6TAB');
INSERT INTO `tbartikel` VALUES ('081108', '', 'MUCOHEXIN TAB', '0', '1', ' Merry', '2013-08-13 10:04:31', null, null, '0', null, '', '2500', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01285', '', 'HANSAPLAST( 100 LBR )', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-24 09:20:15', '0', null, '', '23000', '250', 'BOX', '', '0', 'COMBIPHAR', 'HANSAPLAST( 100 LBR ) ', '21,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02276', '8995228500147', 'PHARMATON VIT', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '187500', '37500', 'DUS', 'LBR', '5', 'BOEHRINGER INGELHEIM', 'PHARMATON VIT @10TAB', '160,000 / DUS', '35,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01578', null, 'LACTAFAR', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '120000', '40000', 'DUS', 'LBR', '3', null, 'LACTAFAR @10TAB', '120,000 / DUS', '40,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('81110', '', 'REDACID', '0', '1', ' Merry', '2013-08-13 13:45:23', null, null, '0', null, '', '52500', '52500', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00913', '8993430163341', 'EAZYCAL ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '120000', '25000', 'DUS', 'LBR', '5', 'SANBE', 'EAZYCAL  @6TAB', '95,000 / DUS', '19,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('02248', '', 'PATRAL (1STRIP @10KAPLET)', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2014-04-19 16:09:35', '0', null, '', '80000', '80000', 'DUS', '', '1', 'BOEHRINGER INGELHEIM', 'PATRAL (1STRIP @10KAPLET) ', '70,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02139', null, 'OCUGARD ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '140000', '48000', 'DUS', 'LBR', '3', 'PHAROS', 'OCUGARD  @10TAB', '140,000 / DUS', '48,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01803', null, 'MEFLAM 7,5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '95000', '47500', 'DUS', 'LBR', '2', null, 'MEFLAM 7,5MG  @10TAB', '95,000 / DUS', '47,500 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('01802', null, 'MEFLAM 15MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '150000', '75000', 'DUS', 'LBR', '2', 'CORONET', 'MEFLAM 15MG  @10TAB', '140,000 / DUS', '70,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('01735', '8993347008070', 'LUFTEN 100MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '825000', '165000', 'DUS', 'LBR', '5', 'DEXA MEDICA', 'LUFTEN 100MG  @10TAB', '610,000 / DUS', '122,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('03052', null, 'VESICARE 5MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '555000', '175000', 'DUS', 'LBR', '3', null, 'VESICARE 5MG @10TAB', '495,000 / DUS', '165,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('03051', null, 'VESICARE 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '577500', '195000', 'DUS', 'LBR', '3', null, 'VESICARE 10MG  @10TAB', '577,500 / DUS', '195,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00918', '4897001680067', 'EFEXOR XR 75MG (2STRIP @14CAP)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '480000', '240000', 'DUS', 'LBR', '2', 'SANBE', 'EFEXOR XR 75MG (2STRIP @14CAP) @14TAB', '430,000 / DUS', '215,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('02801', null, 'TALION ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '90000', '30000', 'DUS', 'LBR', '3', null, 'TALION  @10TAB', '75,000 / DUS', '26,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00720', null, 'COTEN 100MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '247500', '82500', 'DUS', 'LBR', '3', 'FAHRENHEIT', 'COTEN 100MG @10TAB', '245,000 / DUS', '82,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01138', null, 'FORMUNO', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '165000', '55000', 'DUS', 'LBR', '3', 'KALBE', 'FORMUNO ', '165,000 / DUS', '55,000 / LBR', '3 ');
INSERT INTO `tbartikel` VALUES ('00110', null, 'ALPENTIN 100MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '200000', '40000', 'DUS', 'LBR', '5', null, 'ALPENTIN 100MG @10TAB', '200,000 / DUS', '40,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01813', null, 'MEMORAN ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '230000', '46000', 'DUS', 'LBR', '5', 'LAPI', 'MEMORAN  @6TAB', '195,000 / DUS', '39,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01157', null, 'FUCOIDAN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '73000', null, 'LBR', null, null, 'NOVARTIS', 'FUCOIDAN  ', '73,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00877', null, 'DIVENS PLUS ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '160000', '16000', 'DUS', 'LBR', '10', 'SANBE', 'DIVENS PLUS  @6TAB', '160,000 / DUS', '16,000 / LBR', '10 @6TAB');
INSERT INTO `tbartikel` VALUES ('01732', null, 'LQ-500MG (1STRIP @10KAPTAB)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '275000', null, 'DUS', null, null, 'NOVELL', 'LQ-500MG (1STRIP @10KAPTAB) ', '260,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02262', null, 'PEPZOL 20 MG ( 1 LBR )', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '130000', null, 'DUS', null, null, null, 'PEPZOL 20 MG ( 1 LBR ) ', '125,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01398', null, 'IMURAN 50MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@25TAB', '780000', '195000', 'DUS', 'LBR', '4', 'KIMIA FARMA (KF)', 'IMURAN 50MG  @25TAB', '760,000 / DUS', '190,000 / LBR', '4 @25TAB');
INSERT INTO `tbartikel` VALUES ('00640', null, 'CIFLON ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '175000', '35000', 'DUS', 'LBR', '5', 'PHARMASI BINANGKIT', 'CIFLON  @6TAB', '145,000 / DUS', '30,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('02136', '8992112073015', 'OBICAL ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '60000', '21000', 'DUS', 'LBR', '3', 'ACTAVIS', 'OBICAL  @10TAB', '45,000 / DUS', '15,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01143', null, 'FORTIBI', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '110000', '22000', 'DUS', 'LBR', '5', 'GSK', 'FORTIBI @6TAB', '75,000 / DUS', '15,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('02321', null, 'PLEXION 50MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '320000', '35000', 'DUS', 'LBR', '10', 'PFIZER', 'PLEXION 50MG  @10TAB', '320,000 / DUS', '35,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01475', null, 'JANUMET 50MG/500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@7TAB', '180000', '45000', 'DUS', 'LBR', '4', 'INDOFARMA (IF)', 'JANUMET 50MG/500MG  @7TAB', '170,000 / DUS', '42,500 / LBR', '4 @7TAB');
INSERT INTO `tbartikel` VALUES ('01474', null, 'JANUMET 50MG/1000MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@7TAB', '180000', '45000', 'DUS', 'LBR', '4', 'KIMIA FARMA (KF)', 'JANUMET 50MG/1000MG  @7TAB', '170,000 / DUS', '42,500 / LBR', '4 @7TAB');
INSERT INTO `tbartikel` VALUES ('00430', null, 'BONILAV', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '287500', '57500', 'DUS', 'LBR', '5', 'PUSPA PHARMA', 'BONILAV @6TAB', '287,500 / DUS', '57,500 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('00170', null, 'ANTOX', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '204000', '34000', 'DUS', 'LBR', '6', 'DANKOS', 'ANTOX @10TAB', '180,000 / DUS', '30,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('01304', '8993883880123', 'HEPATIN 750MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '137500', '27500', 'DUS', 'LBR', '5', null, 'HEPATIN 750MG  @6TAB', '120,000 / DUS', '25,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01174', null, 'GALVUS 50 MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '200000', '100000', 'DUS', 'LBR', '2', 'NOVARTIS', 'GALVUS 50 MG  @14TAB', '145,000 / DUS', '75,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('02718', null, 'SIZORIL-100 ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '495000', '165000', 'DUS', 'LBR', '3', null, 'SIZORIL-100  @10TAB', '480,000 / DUS', '160,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01686', null, 'LIPARIN 140MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@12TAB', '340000', '68000', 'DUS', 'LBR', '5', 'SANOFI AVENTIS', 'LIPARIN 140MG @12TAB', '262,500 / DUS', '55,000 / LBR', '5 @12TAB');
INSERT INTO `tbartikel` VALUES ('00124', null, 'AMARYL M 1MG/250MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '90000', '30000', 'DUS', 'LBR', '3', 'SANDOZ', 'AMARYL M 1MG/250MG @10TAB', '82,500 / DUS', '27,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02144', '8999809502544', 'ODACE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '122500', '42000', 'DUS', 'LBR', '3', 'DARYA-VARIA', 'ODACE  @10TAB', '95,000 / DUS', '32,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00251', '', 'AVAMYS (1BOTOL @120SPRAY)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-21 10:14:07', '0', null, '', '130000', '0', 'BOTOL', '', '1', 'PHAROS', 'AVAMYS (1BOTOL @120SPRAY) ', '130,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01255', null, 'GLY DERM ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '135000', null, 'TUBE', null, null, 'INTENDIS', 'GLY DERM  ', '125,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00101', '', 'ALOCLAIR GEL', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:14:36', '0', null, '', '80000', '0', 'TUBE', '', '1', 'SOHO', 'ALOCLAIR GEL ', '78,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80957', '', '.SYMBICORT 60', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:41:58', '0', null, '', '280000', '280000', 'BTL', '', '1', null, '.SYMBICORT 60 ', '250,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80955', '', '.SYMBICORT 120', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:42:36', '0', null, '', '480000', '0', 'BTL', '', '1', null, '.SYMBICORT 120 ', '435,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80855', '', '.PUJIMIN', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:46:04', '0', null, '', '190000', '190000', 'BTL', '', '1', null, '.PUJIMIN ', '200,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02182', '8993430161743', 'OSMETIN ZUPER (1DUS @10SACHET)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '215000', null, 'DUS', null, null, 'MERCK', 'OSMETIN ZUPER (1DUS @10SACHET) ', '165,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80380', '', '.FOLAMIL GENIO @30CAP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-14 16:31:41', '0', null, '', '110000', '0', 'BTL', '', '1', null, '.FOLAMIL GENIO @30CAP ', '90,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02796', '8992858473513', 'SYNBIO (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-21 09:39:45', '0', null, '', '97500', '0', 'BOTOL', '', '1', null, 'SYNBIO (1BOTOL @30CAP) ', '90,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80123', '', '.BEROTEC SPRAY', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:22:45', '0', null, '', '105000', '105000', 'BTL', '', '1', null, '.BEROTEC SPREY ', '95,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80944', '', '.STALEVO @30TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:42:42', '0', null, '', '385000', '385000', 'BTL', '', '1', null, '.STALEVO @30TAB ', '385,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01577', null, 'LACTACYD BABY 60ML', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '22500', null, 'BTL', null, null, 'PRAFA', 'LACTACYD BABY 60ML ', '22,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01273', null, 'GRENDIS (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '225000', null, 'BOTOL', null, null, 'GSK', 'GRENDIS (1BOTOL @30CAP) ', '175,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00079', '', 'ALCO DROP', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-14 08:48:46', '0', null, '', '46000', '0', 'BTL', '', '1', 'LAPI', 'ALCO DROP ', '35,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01112', null, 'FLIXONASE NASAL SPRAY (1BOTOL @120M)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '230000', null, 'BOTOL', null, null, 'IKAPHARMINDO P', 'FLIXONASE NASAL SPRAY (1BOTOL @120M) ', '200,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02925', '300650266390', 'TRAVATAN 0,004% EYE DROPS (2,5ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-13 09:49:03', '0', null, '', '345000', '0', 'BOTOL', '', '1', null, 'TRAVATAN 0,004% EYE DROPS (2,5ML) ', '315,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02798', '300650429696', 'SYSTANE EYE DROPS (15ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:30:59', '0', null, '', '97500', '0', 'BOTOL', '', '1', null, 'SYSTANE EYE DROPS (15ML) ', '90,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02205', '8993430161880', 'OSTOBON (1DUS @30SACHET)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-20 19:04:22', '0', null, '', '160000', '0', 'DUS', '', '1', 'NOVARTIS', 'OSTOBON (1DUS @30SACHET) ', '125,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03042', null, 'VENTOLIN 2MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '75000', '25000', 'DUS', 'LBR', '3', null, 'VENTOLIN 2MG  @10TAB', '65,000 / DUS', '22,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01550', '', 'KOLKATRIOL (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-21 09:38:52', '0', null, '', '185000', '0', 'BOTOL', '', '1', 'GALENIUM PHARMASIA', 'KOLKATRIOL (1BOTOL @30CAP) ', '185,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80778', '', '.OSFIT @30TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:47:55', '0', null, '', '85000', '0', 'BTL', '', '1', null, '.OSFIT @30TAB ', '80,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00159', '', 'ANGKUNG', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:17:59', '0', null, '', '1075000', '0', 'BIJI', '', '1', 'SEJAHTERA FITOFARMA', 'ANGKUNG ', '850,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01469', '', 'ISOTIC TEARIN (5ML)', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:03:52', '0', null, '', '17500', '0', 'BOTOL', '', '1', 'PROMED', 'ISOTIC TEARIN (5ML) ', '17,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01305', null, 'HEPSERA 10MG (1BOTOL @30TAB)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '1100000', null, 'BOTOL', null, null, 'LANDSON', 'HEPSERA 10MG (1BOTOL @30TAB) ', '1,020,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03078', '8993347008728', 'VIOSTIN-X (1BOTOL @30KAPLET)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-22 17:48:52', '0', null, '', '197500', '0', 'BOTOL', '', '1', null, 'VIOSTIN-X (1BOTOL @30KAPLET) ', '170,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01300', '20313722', 'HEPAMAX (1BOTOL @30CAP)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-21 09:41:24', '0', null, '', '235000', '235000', 'BOTOL', '', '1', 'COMBIPHAR', 'HEPAMAX (1BOTOL @30CAP) ', '190,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80715', '', '.NASACORT AQ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:49:21', '0', null, '', '210000', '0', 'BTL', '', '1', null, '.NASACORT AQ ', '170,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01180', '', 'GARCIA @60TAB', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-14 16:34:22', '0', null, '', '90000', '0', 'BTL', '', '1', 'NOVARTIS', 'GARCIA @60TAB ', '90,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01982', null, 'NASONEX NASAL SPRAY 140', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '240000', null, 'BTL', null, null, 'OTTO', 'NASONEX NASAL SPRAY 140 ', '260,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81042', '', '.VENTOLIN INHALER', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:40:49', '0', null, '', '95000', '0', 'BTL', '', '1', null, '.VENTOLIN INHALER ', '87,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00541', '', 'CARTFLEX 20 BIJI', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-21 10:13:50', '0', null, '', '80000', '0', 'BTL', '', '1', 'ACTAVIS', 'CARTFLEX 20 BIJI ', '82,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01957', '', 'MYCOSTATIN ORAL (1BOTOL @12ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-21 09:50:33', '0', null, '', '55000', '0', 'BOTOL', '', '1', 'INTERBAT', 'MYCOSTATIN ORAL (1BOTOL @12ML) ', '52,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02167', null, 'ONE TOUCH ULTRA', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '335000', null, 'DUS', null, null, 'DEXA MEDICA', 'ONE TOUCH ULTRA ', '270,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00017', '4015630056378', 'ACCU-CHEK ACTIVE (1BOX @50STRIP)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:14:02', '0', null, '', '185000', '0', 'DUS', '', '1', 'PFIZER', 'ACCU-CHEK ACTIVE (1BOX @50STRIP) ', '160,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01467', '8992916982667', 'ISOPTIN SR 240MG (1BOTOL @50KAPLET)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-20 04:48:09', '0', null, '', '700000', '14000', 'BOTOL', 'BIJI', '50', null, 'ISOPTIN SR 240MG (1BOTOL @50KAPLET) ', '570,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80185', '', '.CATALIN', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:59:49', '0', null, '', '60000', '0', 'BTL', '', '1', null, '.CATALIN ', '57,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03163', null, 'ZANTAC 300MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '172500', '57500', 'DUS', 'LBR', '3', null, 'ZANTAC 300MG @10TAB', '165,000 / DUS', '55,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('80918', '', '.SERETIDEN 125', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:44:41', '0', null, '', '135000', '0', 'BTL', '', '1', null, '.SERETIDEN 125 ', '135,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80319', '', '.ECATROL @30TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-21 09:35:16', '0', null, '', '150000', '0', 'BTL', '', '1', null, '.ECATROL @30TAB ', '160,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01090', null, 'FITA JOINT ROLL (1BOTOL @35g)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '85000', null, 'BOTOL', null, null, 'INTERBAT', 'FITA JOINT ROLL (1BOTOL @35g) ', '67,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02477', '', 'Q TEN 100MG @30CAP', '0', '1', null, '2013-08-08 07:25:21', ' Sri', '2014-06-18 19:12:10', '0', null, '', '295000', '0', 'BTL', '', '1', 'SOHO', 'Q TEN 100MG @30CAP ', '295,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01891', null, 'MITRACALSIUM', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '155000', null, 'BTL', null, null, 'PHAROS', 'MITRACALSIUM ', '140,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00218', '8993347005000', 'ARTOVIT (1BOTOL @30 SOFT GEL)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:16:11', '0', null, '', '100000', '0', 'BOTOL', '', '1', 'DEXA MEDICA', 'ARTOVIT (1BOTOL @30 SOFT GEL) ', '100,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00455', '', 'BRICASMA TURBO ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-21 09:42:00', '0', null, '', '197500', '200000', 'BTL', '', '1', 'OTSUKA', 'BRICASMA TURBO  ', '175,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00487', '8997010310156', 'CALLUSOL (10ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '30000', null, 'BOTOL', null, null, 'HUFA', 'CALLUSOL (10ML) ', '25,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80259', '', '.CORMEGA @30CAP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:59:21', '0', null, '', '285000', '0', 'BTL', '', '1', null, '.CORMEGA @30CAP ', '270,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00485', '7321839711961', 'CALCUSOL', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-14 09:20:56', '0', null, '', '25000', '0', 'BTL', '', '0', 'SEJAHTERA LESTARI', 'CALCUSOL ', '25,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02629', '', 'SANOSKIN OXY', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:38:16', '0', null, '', '225000', '0', 'TUB', '', '1', 'HISAMITSU', 'SANOSKIN OXY ', '225,000 / TUB', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00026', '8993347012701', 'ACLONAC EMULGEL 1% 20g', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:13:54', '0', null, '', '30000', '0', 'TUBE', '', '1', null, 'ACLONAC EMULGEL 1% 20g ', '30,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00849', '', 'DIBEKACIN TETES MATA', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:05:57', '0', null, '', '75000', '0', 'BTL', '', '1', 'PFIZER', 'DIBEKACIN TETES MATA ', '70,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02389', null, 'PROBIO-C', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '60000', null, 'DUS', null, null, 'GUARDIAN P', 'PROBIO-C ', '60,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00484', '698138690158', 'CALCIUM MAGNESIUM ZINC', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '220000', null, 'BTOL', null, null, 'SEJAHTERA LESTARI', 'CALCIUM MAGNESIUM ZINC ', '170,000 / BTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01994', '', 'NATURES BOUNTY HAIR NUTRITION', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:18:07', '0', null, '', '225000', '0', 'BTL', '', '1', 'COMBIPHAR', 'NATURES BOUNTY HAIR NUTRITION ', '175,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80417', '', '.GLISODIN @30CAP', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2013-11-21 09:21:13', '0', null, '', '175000', '175000', 'BTL', '', '1', null, '.GLISODIN @30CAP ', '170,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00471', '8997007790466', 'C 1000 TREELAINS (1BOTOL @100TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-20 17:17:10', '0', null, '', '300000', '3500', 'DUS', 'BIJI', '100', 'SEJAHTERA LESTARI', 'C 1000 TREELAINS (1BOTOL @100TAB) ', '185,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01700', '6940539001281', 'LIQUID CALCIUM WILINGTON (1BOTOL @100SOFTGEL)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-20 14:40:29', '0', null, '', '85000', '1000', 'BOTOL', 'BIJI', '100', null, 'LIQUID CALCIUM WILINGTON (1BOTOL @100SOFTGEL) ', '75,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01868', null, 'MINYAK BUAH MERAH MBM (1BOTOL @125ML)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '195000', null, 'BOTOL', null, null, 'NOVARTIS', 'MINYAK BUAH MERAH MBM (1BOTOL @125ML) ', '195,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01224', '8806128321018', 'GLUCO DR (1BOX @50 STRIP)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '180000', null, 'DUS', null, null, 'MUGI LAB', 'GLUCO DR (1BOX @50 STRIP) ', '150,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02152', '', 'OMEGA 3 SALMON SQUALENE (100 SOFTGEL)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-10-07 11:18:38', '0', null, '', '200000', '0', 'BTL', '', '0', 'EISAI', 'OMEGA 3 SALMON SQUALENE (100 SOFTGEL) ', '200,000 / PEN', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01293', null, 'HEEL SOFT', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '37500', null, 'TUB', null, null, 'LANDSON', 'HEEL SOFT ', '22,000 / TUB', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02639', '', 'SARANG SEMUT (30CAP @500MG)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-05-07 15:09:27', '0', null, '', '135000', '0', 'DUS', '', '1', 'MEDIFARMA', 'SARANG SEMUT (50CAP @500MG) ', '120,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02956', null, 'TROLIP 300MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '275000', '92000', 'DUS', 'LBR', '3', null, 'TROLIP 300MG  @10TAB', '264,000 / DUS', '85,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02744', null, 'SPASMOMEN  ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '198000', '67500', 'DUS', 'LBR', '3', null, 'SPASMOMEN   @10TAB', '198,000 / DUS', '67,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00938', null, 'ENDOMETRIL 5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '375000', '42500', 'DUS', 'LBR', '10', 'SANBE', 'ENDOMETRIL 5MG  @10TAB', '375,000 / DUS', '37,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00663', null, 'CLAST 0,5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '220000', '22000', 'DUS', 'LBR', '10', 'KALBE', 'CLAST 0,5MG  @10TAB', '220,000 / DUS', '22,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('03171', null, 'ZESTRIL 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@14TAB', '360000', '180000', 'DUS', 'LBR', '2', null, 'ZESTRIL 10MG  @14TAB', '280,000 / DUS', '140,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('02562', null, 'RIMACTANE 450 MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '562500', '25000', 'DUS', 'LBR', '25', null, 'RIMACTANE 450 MG @10TAB', '562,500 / DUS', '22,500 / LBR', '25 @10TAB');
INSERT INTO `tbartikel` VALUES ('02037', null, 'NEURONTIN 300MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '525000', '105000', 'DUS', 'LBR', '25', 'LAPI', 'NEURONTIN 300MG  @10TAB', '2,562,500 / DUS', '102,500 / LBR', '25 @10TAB');
INSERT INTO `tbartikel` VALUES ('03017', '8994388112962', 'VACLO 75MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '310000', '62000', 'DUS', 'LBR', '5', null, 'VACLO 75MG  @6TAB', '235,000 / DUS', '40,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('80015', null, '.ACTOS 15MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@7TAB', '110000', '55000', 'DUS', 'LBR', '2', null, '.ACTOS 15MG  @7TAB', '110,000 / DUS', '55,000 / LBR', '2 @7TAB');
INSERT INTO `tbartikel` VALUES ('01252', '8994388111637', 'GLUVAS 2MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '215000', '43000', 'DUS', 'LBR', '5', 'PFIZER', 'GLUVAS 2MG  @10TAB', '205,000 / DUS', '41,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('80254', '', '.CONCOR 5MG PRO', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-24 18:03:31', '0', null, '@10TAB', '400000', '50000', 'DUS', 'LBR', '10', null, '.CONCOR 5MG AK @10TAB', '550,000 / DUS', '65,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00778', null, 'DAONIL 5MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '320000', '32000', 'DUS', 'LBR', '10', 'DANKOS', 'DAONIL 5MG @10TAB', '310,000 / DUS', '32,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00841', null, 'DIALON 100MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '365000', '37500', 'DUS', 'LBR', '10', 'DEXA MEDICA', 'DIALON 100MG  @10TAB', '330,000 / DUS', '36,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02058', null, 'NEXIUM 40MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@7TAB', '270000', '135000', 'DUS', 'LBR', '2', 'SOHO', 'NEXIUM 40MG  @7TAB', '260,000 / DUS', '130,000 / LBR', '2 @7TAB');
INSERT INTO `tbartikel` VALUES ('00935', null, 'ENCEPHABOL ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '320000', '32000', 'DUS', 'LBR', '10', 'PHAPROS', 'ENCEPHABOL  @10TAB', '320,000 / DUS', '32,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02684', '8992858673616', 'SEROLIN 30MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@21TAB', '520000', '260000', 'DUS', 'LBR', '2', 'BODE', 'SEROLIN 30MG  @21TAB', '410,000 / DUS', '205,000 / LBR', '2 @21TAB');
INSERT INTO `tbartikel` VALUES ('03013', null, 'URSOLIC 250MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '270000', '90000', 'DUS', 'LBR', '3', null, 'URSOLIC 250MG  @10TAB', '232,500 / DUS', '77,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02789', null, 'SUPRAZID FORTE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '60000', '9000', 'DUS', 'LBR', '10', null, 'SUPRAZID FORTE  @10TAB', '60,000 / DUS', '9,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01370', '', 'IKAPHEN @100CAP', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-23 18:35:00', '0', null, '', '140000', '1500', 'BTL', 'BIJI', '100', 'BERNOFARM', 'IKAPHEN @100CAP ', '135,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02181', null, 'OSKADON', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '70000', '2000', 'DUS', 'LBR', '25', 'MERCK', 'OSKADON @4TAB', '61,000 / DUS', '1,500 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('02014', '8992112014087', 'NEOZEP FORTE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '47000', '2500', 'DUS', 'LBR', '25', 'NOVELL', 'NEOZEP FORTE  @4TAB', '44,000 / DUS', '2,000 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('01444', '8998667000605', 'INZA ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '78000', '2000', 'DUS', 'LBR', '50', 'YARINDO FARMATAMA (YF)', 'INZA  @4TAB', '65,000 / DUS', '1,500 / LBR', '50 @4TAB');
INSERT INTO `tbartikel` VALUES ('02616', '8993008122503', 'SANAFLU', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '37500', '2000', 'DUS', 'LBR', '25', 'KALBE', 'SANAFLU @4TAB', '37,500 / DUS', '1,500 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('00090', '8991771200114', 'ALINAMIN-F', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '100000', '12000', 'DUS', 'LBR', '10', 'LAPI', 'ALINAMIN-F @10TAB', '90,000 / DUS', '10,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01158', '8992112063016', 'FUNDAMIN-E ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '77500', '3500', 'DUS', 'LBR', '25', 'NOVARTIS', 'FUNDAMIN-E  @4TAB', '78,000 / DUS', '3,500 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('01554', '8993058300425', 'KOMIX RASA PEPPERMINT', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@7ML', '22000', '1000', 'DUS', 'SACHET', '30', 'KALBE', 'KOMIX RASA PEPPERMINT @7ML', '17,000 / DUS', '750 / SACHET', '30 @7ML');
INSERT INTO `tbartikel` VALUES ('00114', '', 'ALUDONNA', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2015-06-09 16:11:02', '0', null, '@8TAB', '80000', '4000', 'DUS', 'LBR', '20', 'LAPI', 'ALUDONNA @10TAB', '60,000 / DUS', '6,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01400', null, 'INCIDAL-OD ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '120000', '25000', 'DUS', 'LBR', '5', 'HEXPHARM JAYA (HJ)', 'INCIDAL-OD  @10TAB', '112,000 / DUS', '23,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02157', null, 'OMEPRAZOLE IF', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '15000', '5000', 'DUS', 'LBR', '3', 'GSK', 'OMEPRAZOLE IF @10TAB', '15,000 / DUS', '5,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01606', null, 'LANSOPRAZOLE 30MG  IF', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '25000', '12500', 'DUS', 'LBR', '2', 'OTTO', 'LANSOPRAZOLE 30MG  IF @10TAB', '24,000 / DUS', '12,500 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('00679', null, 'CO AMOXICLAV ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '160000', '32500', 'DUS', 'LBR', '5', 'FAHRENHEIT', 'CO AMOXICLAV  @6TAB', '150,000 / DUS', '30,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01822', null, 'METFORMIN 850MG HJ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '37500', '4000', 'DUS', 'LBR', '10', 'SANBE', 'METFORMIN 850MG HJ @10TAB', '37,000 / DUS', '4,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02146', null, 'OFLOXACIN 400MG IF', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '62500', '12500', 'DUS', 'LBR', '5', 'BIO-LIFE', 'OFLOXACIN 400MG IF @10TAB', '62,500 / DUS', '12,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00575', null, 'CEFIXIME 100MG PL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '90000', '18000', 'DUS', 'LBR', '5', 'KALBE', 'CEFIXIME 100MG PL @10TAB', '65,000 / DUS', '15,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00517', null, 'CAPTOPRIL 25MG  DEXA', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '15000', '2000', 'DUS', 'LBR', '10', 'SEJAHTERA LESTARI', 'CAPTOPRIL 25MG  DEXA @10TAB', '14,000 / DUS', '2,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02553', null, 'RIFAMPICIN 300MG  KF', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '45000', '5000', 'DUS', 'LBR', '10', null, 'RIFAMPICIN 300MG  KF @10TAB', '45,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01276', null, 'GRISEOFULVIN 125MG  IF', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '25000', '3000', 'DUS', 'LBR', '10', 'LANDSON', 'GRISEOFULVIN 125MG  IF @10TAB', '25,000 / DUS', '3,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02596', null, 'SALBUTAMOL 4MG  IF', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '18000', '2500', 'DUS', 'LBR', '10', 'LUEN FOOK M', 'SALBUTAMOL 4MG  IF @10TAB', '18,000 / DUS', '2,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01468', null, 'ISOSORBIDE DINITRATE 5MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '17500', '2000', 'DUS', 'LBR', '10', 'NOVELL', 'ISOSORBIDE DINITRATE 5MG @10TAB', '12,000 / DUS', '1,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01404', null, 'INH CIBA 300MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '70000', '8500', 'DUS', 'LBR', '10', 'YARINDO FARMATAMA (YF)', 'INH CIBA 300MG @10TAB', '70,000 / DUS', '8,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02556', null, 'RIFAMPICIN 600MG  BERNO', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '145000', '15000', 'DUS', 'LBR', '10', null, 'RIFAMPICIN 600MG  BERNO @10TAB', '85,000 / DUS', '9,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02305', null, 'PIROXICAM 20MG KF', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '18000', '2500', 'DUS', 'LBR', '10', 'EISAI INDONESIA', 'PIROXICAM 20MG KF @10TAB', '15,000 / DUS', '2,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01534', null, 'KETOKONAZOLE TAB@ 5 BLISTER 10 TAB', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '25000', null, 'DUS', null, null, 'PHAROS', 'KETOKONAZOLE TAB@ 5 BLISTER 10 TAB ', '25,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02492', null, 'RANITIDINE 150MG  HJ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '20000', '2500', 'DUS', 'LBR', '10', 'SAMCO FARMA', 'RANITIDINE 150MG  HJ @10TAB', '17,500 / DUS', '2,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00721', null, 'COTRIMOKSAZOLE PROMED', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '25000', '3000', 'DUS', 'LBR', '10', 'FAHRENHEIT', 'COTRIMOKSAZOLE PROMED @10TAB', '25,000 / DUS', '3,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00672', '', 'CLONIDINE 0,15MG (10STRIP @10TAB) KF', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-25 17:16:36', '0', null, '10 BIJI', '35000', '4000', 'DUS', 'LBR', '10', 'FAHRENHEIT', 'CLONIDINE 0,15MG (10STRIP @10TAB) KF ', '45,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03047', null, 'VERAPAMIL ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '55000', '7000', 'DUS', 'LBR', '10', null, 'VERAPAMIL  @10TAB', '55,000 / DUS', '7,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00641', null, 'CIMETIDINE 200MG  PKA', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '17500', '2500', 'DUS', 'LBR', '10', 'PHARMASI BINANGKIT', 'CIMETIDINE 200MG  PKA @10TAB', '17,500 / DUS', '2,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02211', null, 'OTTOPAN ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '25000', '2500', 'DUS', 'LBR', '10', 'DEXA MEDICA', 'OTTOPAN  @10TAB', '25,000 / DUS', '2,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00280', '4897035990033', 'BARACLUDE 1MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '3050000', '1025000', 'DUS', 'LBR', '3', 'DEXA MEDICA', 'BARACLUDE 1MG @10TAB', '3,020,000 / DUS', '1,025,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01705', '8999809102454', 'LIVERPRIME', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2015-05-11 17:56:26', '0', null, '@10TAB', '185000', '65000', 'DUS', 'LBR', '3', 'PHAROS', 'LIVERCARE @10TAB', '170,000 / DUS', '56,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('80531', null, '.KALMECO 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '220000', '22000', 'DUS', 'LBR', '10', null, '.KALMECO 500MG  @10TAB', '215,000 / DUS', '21,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80489', '', '.INHIPRAZ 30MG@10TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:48:23', '0', null, '', '115000', '0', 'DUS', '', '1', null, '.INHIPRAZ 30MG@10TAB ', '115,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01055', null, 'FAXIDEN 20MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '50000', '6000', 'DUS', 'LBR', '10', 'SANDOZ', 'FAXIDEN 20MG  @10TAB', '80,000 / DUS', '8,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01929', null, 'MOVIX 7,5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '95000', '50000', 'DUS', 'LBR', '2', 'ETHICA', 'MOVIX 7,5MG  @10TAB', '95,000 / DUS', '47,500 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('81131', '', 'RIF 450MG', '0', '1', ' Merry', '2013-08-17 14:06:05', null, null, '0', null, '@10 BIJI', '300000', '30000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00200', null, 'ARCALION ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '420000', '42000', 'DUS', 'LBR', '10', 'OTTO', 'ARCALION  @6TAB', '350,000 / DUS', '35,000 / LBR', '10 @6TAB');
INSERT INTO `tbartikel` VALUES ('01168', null, 'GABITEN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '40000', '8000', 'DUS', 'LBR', '10', 'MERCK', 'GABITEN  @10TAB', '40,000 / DUS', '8,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00886', null, 'DOM 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '120000', '40000', 'DUS', 'LBR', '3', 'SANBE', 'DOM 10MG  @10TAB', '75,000 / DUS', '25,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('80190', '', '.CEDANTRON @10TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:59:42', '0', null, '', '160000', '0', 'LBR', '', '1', null, '.CEDANTRON @10TAB ', '160,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02877', null, 'TICURING 250MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '170000', '85000', 'DUS', 'LBR', '2', null, 'TICURING 250MG @10TAB', '155,000 / DUS', '78,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('02603', '4032717000062', 'SALOFALK 500MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '1120000', '115000', 'DUS', 'LBR', '10', 'ASTRAZENECA', 'SALOFALK 500MG @10TAB', '1,000,000 / DUS', '110,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01928', null, 'MOVIX 15 MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '155000', '77500', 'DUS', 'LBR', '2', 'PYRIDAM', 'MOVIX 15 MG @10TAB', '155,000 / DUS', '77,500 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('01594', null, 'LAMESON 8MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '490000', '50000', 'DUS', 'LBR', '10', null, 'LAMESON 8MG @10TAB', '420,000 / DUS', '42,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02345', '8994388110852', 'PONDEX FORTE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '35000', '5000', 'DUS', 'LBR', '10', 'GSK', 'PONDEX FORTE  @10TAB', '35,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01325', '20313647', 'HEXILON 8MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '145000', '50000', 'DUS', 'LBR', '3', 'KALBE', 'HEXILON 8MG  @10TAB', '120,000 / DUS', '42,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01834', null, 'MEXPHARM 15MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '170000', '87500', 'DUS', 'LBR', '2', 'ACTAVIS', 'MEXPHARM 15MG  @10TAB', '70,000 / DUS', '40,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('01323', '20313661', 'HEXILON 16MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '215000', '72500', 'DUS', 'LBR', '3', 'TAISHO', 'HEXILON 16MG  @10TAB', '195,000 / DUS', '65,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00984', null, 'ETHICOL 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '100000', '40000', 'DUS', 'LBR', '3', 'SANBE', 'ETHICOL 10MG  @10TAB', '75,000 / DUS', '30,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01271', null, 'GRAZEO 20MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '35000', '5000', 'DUS', 'LBR', '10', null, 'GRAZEO 20MG  @10TAB', '35,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00731', '5391189200677', 'COVERAM 5MG/5MG (1BOTOL @30TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:07:52', '0', null, '', '315000', '0', 'BOTOL', '', '1', 'KALBE', 'COVERAM 5MG/5MG (1BOTOL @30TAB) ', '315,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01921', null, 'MOSAPEC', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '10000', null, 'LBR', null, null, 'LAPI', 'MOSAPEC ', '10,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02301', null, 'PIROCAM 20MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '17500', '4000', 'DUS', 'LBR', '5', 'TANABE', 'PIROCAM 20MG  @10TAB', '20,000 / DUS', '4,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('03054', '8992858480115', 'VESTEIN ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '86000', '43000', 'DUS', 'LBR', '2', null, 'VESTEIN  @10TAB', '80,000 / DUS', '40,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('01250', '', 'GLUTROP TAB (5LBR @6TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-21 18:52:38', '0', null, '', '85000', '85000', 'LBR', '', '1', 'BOROBUDUR', 'GLUTROP TAB (5LBR @6TAB) ', '77,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01094', null, 'FITONERGI ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '420000', '70000', 'DUS', 'LBR', '6', 'INTERBAT', 'FITONERGI  @10TAB', '330,000 / DUS', '62,500 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('00155', null, 'ANDRIOL ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '690000', '115000', 'DUS', 'LBR', '6', 'BERNOFARM', 'ANDRIOL  @10TAB', '645,000 / DUS', '110,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('80628', '', '.LIVIAL (1LBR @28TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:47:30', '0', null, '', '310000', '310000', 'DUS', '', '1', null, '.LIVIAL (1LBR @28TAB) ', '310,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00464', null, 'BUFACARYL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '30000', '5000', 'DUS', 'LBR', '10', 'MECOSIN', 'BUFACARYL @10TAB', '30,000 / DUS', '3,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01270', null, 'GRATHEOS 50MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '20000', '5000', 'DUS', 'LBR', '5', 'ACTAVIS', 'GRATHEOS 50MG  @10TAB', '20,000 / DUS', '5,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00813', null, 'DEXACAP 12,5 MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '12500', '2500', 'DUS', 'LBR', '10', 'FAHRENHEIT', 'DEXACAP 12,5 MG  @6TAB', '12,500 / DUS', '2,500 / LBR', '10 @6TAB');
INSERT INTO `tbartikel` VALUES ('01137', '20311285', 'FORDESIA', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '10TAB', '720000', '240000', 'DUS', 'LBR', '3', null, 'FORDESIA 10TAB', '690,000 / DUS', '230,000 / LBR', '3 10TAB');
INSERT INTO `tbartikel` VALUES ('01093', null, 'FITOCHOSIL ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '450000', '75000', 'DUS', 'LBR', '6', 'INTERBAT', 'FITOCHOSIL  @10TAB', '408,000 / DUS', '68,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('01095', null, 'FITOSERIN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '600000', '100000', 'DUS', 'LBR', '6', 'INTERBAT', 'FITOSERIN  @10TAB', '525,000 / DUS', '87,500 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('01527', null, 'KENDARON', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '142500', '47500', 'DUS', 'LBR', '3', 'SOHO', 'KENDARON ', '142,500 / DUS', '47,500 / LBR', '3 ');
INSERT INTO `tbartikel` VALUES ('02953', null, 'TRIZEDON MR ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@30TAB', '220000', '110000', 'DUS', 'LBR', '2', null, 'TRIZEDON MR  @30TAB', '220,000 / DUS', '110,000 / LBR', '2 @30TAB');
INSERT INTO `tbartikel` VALUES ('80136', '', '.BINOZYT (1LBR @3TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 18:01:39', '0', null, '', '75000', '0', 'DUS', '', '1', null, '.BINOZYT (1LBR @3TAB) ', '65,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01118', null, 'FLOXIGRA 500MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '70000', '15000', 'DUS', 'LBR', '10', 'PHAROS', 'FLOXIGRA 500MG @10TAB', '70,000 / DUS', '15,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00669', null, 'CLINMAS 150MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '105000', '35000', 'DUS', 'LBR', '3', 'FAHRENHEIT', 'CLINMAS 150MG  @10TAB', '105,000 / DUS', '35,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01785', '', 'MECOLA TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-21 08:41:51', '0', null, '10 BIJI', '110000', '22000', 'BOX', 'LBR', '5', 'CINA', 'MECOLA TAB ', '21,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80575', '', '.LAPIBROZ 600MG @6CAP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 14:49:08', '0', null, '@6 BIJI', '160000', '32000', 'BOX', 'LBR', '5', null, '.LAPIBROZ 600MG @6CAP ', '27,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00461', '4032717010016', 'BUDENOFALK 3MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '1450000', '290000', 'DUS', 'LBR', '5', 'GRAHA FARMA', 'BUDENOFALK 3MG @10TAB', '1,300,000 / DUS', '260,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02867', null, 'THIMELON 4MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '115000', '23000', 'DUS', 'LBR', '5', null, 'THIMELON 4MG  @10TAB', '115,000 / DUS', '23,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00946', '', 'ENICO CAP @120 BTR', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-09 15:00:34', '0', null, '', '345000', '3500', 'BTL', 'BIJI', '120', 'SANBE', 'ENICO CAP @120 BTR ', '270,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80935', '', '.SPIRAMYCIN 1.5', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 14:07:30', '0', null, '@10 TAB', '75000', '15000', 'BOX', 'LBR', '5', null, '.SPIRAMYCIN 1.5 ', '15,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80171', '', '.CANDESARTAN 8MG @10TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:59:54', '0', null, '', '50000', '0', 'LBR', '', '1', null, '.CANDESARTAN 8MG @10TAB ', '47,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03003', null, 'URESIX ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '80000', '9000', 'DUS', 'LBR', '10', null, 'URESIX  @10TAB', '80,000 / DUS', '8,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00638', '8992858619911', 'CHOLESTAT 20MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '210000', '70000', 'DUS', 'LBR', '3', 'PHARMASI BINANGKIT', 'CHOLESTAT 20MG  @10TAB', '187,500 / DUS', '62,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01713', null, 'LODIA', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '60000', '12000', 'DUS', 'LBR', '6', 'IFARS', 'LODIA @10TAB', '52,000 / DUS', '9,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('02103', null, 'NOTRITIS', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '142500', '30000', 'DUS', 'LBR', '3', 'PHAROS', 'NOTRITIS @10TAB', '142,500 / DUS', '30,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00529', null, 'CARDISAN 5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '265000', '54000', 'DUS', 'LBR', '5', 'MERCK', 'CARDISAN 5MG  @10TAB', '250,000 / DUS', '50,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('03002', '20330040', 'URDAHEX 250MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '277500', '92500', 'DUS', 'LBR', '3', null, 'URDAHEX 250MG  @10TAB', '262,500 / DUS', '87,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01402', null, 'INDEXON ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '35000', '4000', 'DUS', 'LBR', '10', 'PHYTO KEMO AGUNG (PKA)', 'INDEXON  @10TAB', '27,000 / DUS', '4,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02032', null, 'NEURODEX ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '65000', '5000', 'DUS', 'LBR', '20', 'MEDIFARMA', 'NEURODEX  @10TAB', '48,000 / DUS', '4,000 / LBR', '20 @10TAB');
INSERT INTO `tbartikel` VALUES ('02532', '8992858670417', 'REOTAL-SR 400 ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '255000', '85000', 'DUS', 'LBR', '3', 'PHYTO KEMO', 'REOTAL-SR 400  @10TAB', '202,500 / DUS', '67,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02142', null, 'OCUSON ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '125000', '13000', 'DUS', 'LBR', '10', 'PRAFA', 'OCUSON  @10TAB', '110,000 / DUS', '125,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00719', null, 'CORTIDEX ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '25000', '3000', 'DUS', 'LBR', '10', 'FAHRENHEIT', 'CORTIDEX  @10TAB', '25,000 / DUS', '3,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01135', null, 'FOLAVIT 400 -Ág ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '75000', '8000', 'DUS', 'LBR', '10', 'GUARDIAN P', 'FOLAVIT 400 -Ág  @10TAB', '67,500 / DUS', '8,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02845', null, 'TENSICAP 25MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '185000', '38000', 'DUS', 'LBR', '5', null, 'TENSICAP 25MG  @10TAB', '170,000 / DUS', '34,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02844', null, 'TENSICAP 12,5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '90000', '18500', 'DUS', 'LBR', '5', null, 'TENSICAP 12,5MG  @10TAB', '90,000 / DUS', '18,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02453', null, 'PROXIME ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '36000', '12000', 'DUS', 'LBR', '3', 'PHARMACORE LABS', 'PROXIME  @10TAB', '33,000 / DUS', '12,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00952', null, 'EPEXOL ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '85000', '9000', 'DUS', 'LBR', '10', 'SANBE', 'EPEXOL  @10TAB', '70,000 / DUS', '8,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00099', null, 'ALLORIS', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '410000', '42000', 'DUS', 'LBR', '10', 'DANKOS', 'ALLORIS @10TAB', '390,000 / DUS', '40,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01307', null, 'HEPTASAN', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '25000', '3000', 'DUS', 'LBR', '10', 'LANDSON', 'HEPTASAN @10TAB', '22,500 / DUS', '2,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00617', null, 'CERINI ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '64000', '32000', 'DUS', 'LBR', '2', 'DANKOS', 'CERINI  @10TAB', '58,000 / DUS', '30,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('80371', null, '.FLAMAR 25MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '80000', '8500', 'DUS', 'LBR', '10', null, '.FLAMAR 25MG  @10TAB', '70,000 / DUS', '8,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01139', null, 'FORMYCO 200MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '227000', '46000', 'DUS', 'LBR', '5', 'PHAPROS', 'FORMYCO 200MG  @10TAB', '210,000 / DUS', '45,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00528', null, 'CARDISAN 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '465000', '95000', 'DUS', 'LBR', '5', 'BERNOFARM', 'CARDISAN 10MG  @10TAB', '440,000 / DUS', '90,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00386', null, 'BIOSANBE', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '90000', '10000', 'DUS', 'LBR', '10', 'BRISTOL-MYERS SQUIBB', 'BIOSANBE @10TAB', '85,000 / DUS', '9,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80981', null, '.THIAMYCIN 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '320000', '35000', 'DUS', 'LBR', '10', null, '.THIAMYCIN 500MG  @10TAB', '305,000 / DUS', '31,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00342', null, 'BICROLID 250MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '260000', '90000', 'DUS', 'LBR', '3', 'ETHICA', 'BICROLID 250MG  @10TAB', '240,000 / DUS', '87,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00343', null, 'BICROLID 500MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '655000', '220000', 'DUS', 'LBR', '3', 'BERNOFARM', 'BICROLID 500MG @10TAB', '600,000 / DUS', '200,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02999', null, 'UPLORES ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '50000', '50000', 'LBR', 'LBR', '3', null, 'UPLORES  @10TAB', '135,000 / LBR', '45,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('80057', null, '.AMOXAN 250MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '152500', '16000', 'DUS', 'LBR', '10', null, '.AMOXAN 250MG  @10TAB', '145,000 / DUS', '16,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00395', null, 'BIOTHICOL 500MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '330000', '34000', 'DUS', 'LBR', '10', 'MOLEX AYUS', 'BIOTHICOL 500MG @10TAB', '300,000 / DUS', '31,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('03007', null, 'URINTER ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '283000', '30000', 'DUS', 'LBR', '10', null, 'URINTER  @10TAB', '283,000 / DUS', '30,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02470', null, 'PURICEMIA 300MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '260000', '27500', 'DUS', 'LBR', '10', 'KONILIFE', 'PURICEMIA 300MG  @10TAB', '247,500 / DUS', '25,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02617', null, 'SANAZET', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '115000', '12000', 'DUS', 'LBR', '10', 'SANBE', 'SANAZET @10TAB', '115,000 / DUS', '12,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00857', null, 'DILMEN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '95000', '11000', 'DUS', 'LBR', '10', 'INDOFARMA (IF)', 'DILMEN  @10TAB', '90,000 / DUS', '9,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02631', null, 'SANPRIMA ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '85000', '9000', 'DUS', 'LBR', '10', 'DELTOMED', 'SANPRIMA  @10TAB', '80,000 / DUS', '9,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02857', null, 'TETRASANBE 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '50000', '6000', 'DUS', 'LBR', '10', null, 'TETRASANBE 500MG  @10TAB', '45,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01674', '', 'LIFIBRON 300MG', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 14:46:01', '0', null, '@10 TAB', '220000', '22500', 'BOX', 'LBR', '10', 'DEXA MEDICA', 'LIFIBRON 300MG ', '22,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01329', null, 'HISTAPAN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '58500', '6500', 'DUS', 'LBR', '10', 'KALBE', 'HISTAPAN  @10TAB', '55,000 / DUS', '6,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80730', null, '.NEUROSANBE 5000 ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '215000', '22000', 'DUS', 'LBR', '10', null, '.NEUROSANBE 5000  @10TAB', '200,000 / DUS', '21,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00924', null, 'ELKANA', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '70000', '7500', 'DUS', 'LBR', '10', 'SANBE', 'ELKANA @10TAB', '65,000 / DUS', '7,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00920', null, 'EFLAGEN 25MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '65000', '13000', 'DUS', 'LBR', '5', 'SANDOZ', 'EFLAGEN 25MG  @10TAB', '60,000 / DUS', '13,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00921', null, 'EFLAGEN 50MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '100000', '20000', 'DUS', 'LBR', '5', 'SANDOZ', 'EFLAGEN 50MG  @10TAB', '90,000 / DUS', '19,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00637', '8992858617719', 'CHOLESTAT 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '125000', '42500', 'DUS', 'LBR', '3', 'PHARMASI BINANGKIT', 'CHOLESTAT 10MG  @10TAB', '112,500 / DUS', '37,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00294', null, 'BECOM-ZET', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '160000', '17000', 'DUS', 'LBR', '10', 'CORSA INDUSTRIES', 'BECOM-ZET @10TAB', '143,000 / DUS', '16,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02636', null, 'SANTIBI 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '90000', '9500', 'DUS', 'LBR', '10', 'BINTANG TOEDJOE', 'SANTIBI 500MG  @10TAB', '85,000 / DUS', '9,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02637', null, 'SANTIBI PLUS ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '65000', '7000', 'DUS', 'LBR', '10', null, 'SANTIBI PLUS  @10TAB', '55,000 / DUS', '7,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02061', null, 'NIFEDIN ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '60000', '6500', 'DUS', 'LBR', '10', 'CENDO', 'NIFEDIN  @10TAB', '55,000 / DUS', '6,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80906', null, '.SANPRIMA FORTE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '185000', '19000', 'DUS', 'LBR', '10', null, '.SANPRIMA FORTE  @10TAB', '170,000 / DUS', '17,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02559', null, 'RIFAMTIBI 600MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '515000', '53000', 'DUS', 'LBR', '10', null, 'RIFAMTIBI 600MG @10TAB', '472,500 / DUS', '48,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00292', null, 'BECOM-C', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '122500', '13000', 'DUS', 'LBR', '10', 'CORSA INDUSTRIES', 'BECOM-C @10TAB', '110,000 / DUS', '12,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02858', null, 'TETRIN 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '100000', '12000', 'DUS', 'LBR', '10', null, 'TETRIN 500MG  @10TAB', '100,000 / DUS', '12,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02041', null, 'NEUROSANBE PLUS ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '105000', '11000', 'DUS', 'LBR', '10', 'SCHERING PLOUGH', 'NEUROSANBE PLUS  @10TAB', '90,000 / DUS', '10,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02539', null, 'RETIVIT ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '345000', '35000', 'DUS', 'LBR', '10', 'KALBE', 'RETIVIT  @10TAB', '315,000 / DUS', '330,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80469', null, '.HYPOFIL ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '200000', '22000', 'DUS', 'LBR', '10', null, '.HYPOFIL  @10TAB', '185,000 / DUS', '19,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00967', null, 'ERYSANBE 500MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '235000', '24000', 'DUS', 'LBR', '10', 'SOHO', 'ERYSANBE 500MG @10TAB', '215,000 / DUS', '22,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02079', null, 'NOLIPO 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '430000', '44000', 'DUS', 'LBR', '10', 'JANSSEN-CILAG', 'NOLIPO 500MG  @10TAB', '385,000 / DUS', '40,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01451', null, 'IRONYL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '225000', '24000', 'DUS', 'LBR', '10', 'HEXPHARM JAYA (HJ)', 'IRONYL @10TAB', '135,000 / DUS', '19,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02911', null, 'TRADOSIK 50MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '285000', '29000', 'DUS', 'LBR', '10', null, 'TRADOSIK 50MG  @10TAB', '270,000 / DUS', '28,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01399', null, 'INBION', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '115000', '12000', 'DUS', 'LBR', '10', 'BERNOFARM', 'INBION @10TAB', '107,000 / DUS', '11,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80318', '', '.DUVADILAN @10TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 14:51:59', '0', null, '@10BIJI', '345000', '70000', 'BOX', 'LBR', '5', null, '.DUVADILAN @10TAB ', '40,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00288', '', 'BECEFORT TAB 10 TAB', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 14:45:24', '0', null, '@10', '150000', '15000', 'BOX', 'LBR', '10', 'PYRIDAM', 'BECEFORT TAB 10 TAB ', '15,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01185', '', 'GASTROLAN @10CAP', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 14:48:17', '0', null, '@10', '100000', '100000', 'BOX', 'LBR', '1', null, 'GASTROLAN @10CAP ', '95,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02732', null, 'SOHOBION ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '125000', '13000', 'DUS', 'LBR', '10', null, 'SOHOBION  @10TAB', '125,000 / DUS', '13,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00453', null, 'BRENAX 60MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '105000', '35000', 'DUS', 'LBR', '3', 'OTTO', 'BRENAX 60MG @10TAB', '95,000 / DUS', '32,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02408', null, 'PROLIC 300MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '650000', '68000', 'DUS', 'LBR', '10', 'SANOFI AVENTIS', 'PROLIC 300MG  @10TAB', '600,000 / DUS', '65,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02941', null, 'TRICHODAZOL 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '145000', '15000', 'DUS', 'LBR', '10', null, 'TRICHODAZOL 500MG  @10TAB', '135,000 / DUS', '14,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01359', '8992916262035', 'IBERET FOLIC-500', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '360000', '37500', 'DUS', 'LBR', '10', 'DEXA MEDICA', 'IBERET FOLIC-500 @10TAB', '285,000 / DUS', '29,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02623', null, 'SANLIN 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '72500', '8000', 'DUS', 'LBR', '10', 'GSK', 'SANLIN 500MG  @10TAB', '72,500 / DUS', '8,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01427', null, 'INTERMOXIL 500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '255000', '26000', 'DUS', 'LBR', '10', 'DEXA MEDICA', 'INTERMOXIL 500MG  @10TAB', '245,000 / DUS', '26,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02630', null, 'SANPICILLIN 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '160000', '17500', 'DUS', 'LBR', '10', 'INDO ABADI', 'SANPICILLIN 500MG  @10TAB', '145,000 / DUS', '16,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02773', null, 'STILERAN ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '150000', '10000', 'DUS', 'LBR', '20', null, 'STILERAN  @10TAB', '150,000 / DUS', '7,500 / LBR', '20 @10TAB');
INSERT INTO `tbartikel` VALUES ('00350', null, 'BIO ATP ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '230000', '23500', 'DUS', 'LBR', '10', 'PYRIDAM', 'BIO ATP  @10TAB', '220,000 / DUS', '25,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('03195', null, 'ZUMAFIB 300MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '202500', '75000', 'DUS', 'LBR', '3', null, 'ZUMAFIB 300MG  @10TAB', '202,500 / DUS', '67,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('80058', null, '.AMOXAN 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '300000', '31000', 'DUS', 'LBR', '10', null, '.AMOXAN 500MG  @10TAB', '295,000 / DUS', '30,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02558', null, 'RIFAMTIBI 450MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '390000', '40000', 'DUS', 'LBR', '10', null, 'RIFAMTIBI 450MG @10TAB', '360,000 / DUS', '38,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80385', null, '.FORBETES 850MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '100000', '11000', 'DUS', 'LBR', '10', null, '.FORBETES 850MG  @10TAB', '90,000 / DUS', '9,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80382', null, '.FORBETES 500MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '95000', '10000', 'DUS', 'LBR', '10', null, '.FORBETES 500MG @10TAB', '85,000 / DUS', '8,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00867', '8993347001903', 'DISFLATYL ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '60000', '7500', 'DUS', 'LBR', '10', 'KALBE', 'DISFLATYL  @10TAB', '52,500 / DUS', '6,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01804', null, 'MEGABAL ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '155000', '16000', 'DUS', 'LBR', '10', null, 'MEGABAL  @10TAB', '147,500 / DUS', '15,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00993', '8993347002306', 'EUPHYLLIN RETARD MITE ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '210000', '22000', 'DUS', 'LBR', '10', 'COMBIPHAR', 'EUPHYLLIN RETARD MITE  @10TAB', '150,000 / DUS', '18,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02451', null, 'PROVITAL PLUS ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@5TAB', '195000', '20000', 'DUS', 'LBR', '10', 'YUNNAN BAIYAO', 'PROVITAL PLUS  @5TAB', '175,000 / DUS', '18,000 / LBR', '10 @5TAB');
INSERT INTO `tbartikel` VALUES ('02302', null, 'PIROFEL 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '58000', '6000', 'DUS', 'LBR', '10', 'TANABE', 'PIROFEL 10MG  @10TAB', '58,000 / DUS', '6,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02303', null, 'PIROFEL 20MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '150000', '17500', 'DUS', 'LBR', '10', 'PHAROS', 'PIROFEL 20MG @10TAB', '147,000 / DUS', '15,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00698', null, 'COLSANCETINE 250MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '52500', '6000', 'DUS', 'LBR', '10', 'KALBE (AK)', 'COLSANCETINE 250MG @10TAB', '52,500 / DUS', '6,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02650', null, 'SCOPMA PLUS ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '65000', '7000', 'DUS', 'LBR', '10', 'MARGUNA', 'SCOPMA PLUS  @10TAB', '65,000 / DUS', '7,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02346', null, 'PONSAMIC 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '140000', '15000', 'DUS', 'LBR', '10', null, 'PONSAMIC 500MG  @10TAB', '120,000 / DUS', '13,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00941', null, 'ENERPLUS', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '138000', '23000', 'DUS', 'LBR', '6', 'INTERBAT', 'ENERPLUS @10TAB', '138,000 / DUS', '23,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('01235', null, 'GLUCOTIKA 850MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '75000', '13000', 'DUS', 'LBR', '6', 'IFARS', 'GLUCOTIKA 850MG  @10TAB', '75,000 / DUS', '13,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('01622', null, 'LAPRAZ ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '285000', '105000', 'DUS', 'LBR', '3', 'KALBE', 'LAPRAZ  @10TAB', '285,000 / DUS', '90,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01177', '', 'GANIN', '0', '1', null, '2013-08-08 07:25:20', ' Nova', '2013-08-17 14:47:13', '0', null, '@ 10 TAB', '165000', '60000', 'DUS', 'LBR', '1', 'NOVARTIS', 'GANIN (1STRIP @10CAP) ', '55,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03131', '', 'VOSEA TAB', '0', '1', null, '2013-08-08 07:25:21', ' Nova', '2013-08-17 14:48:26', '0', null, '@ 10 TAB', '60000', '5000', 'DUS', 'LBR', '10', null, 'VOSEA TAB ', '7,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01646', '', 'LESCOL XL TAB 80MG', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-07-12 15:59:34', '0', null, '@14 TAB', '245000', '122500', 'LBR', 'LBR', '2', 'HUFA', 'LESCOL XL TAB 80MG ', '450,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02433', '', 'PROSOGAN FD 15 MG', '0', '1', null, '2013-08-08 07:25:21', ' Nova', '2013-08-17 15:04:42', '0', null, '@14 TAB', '170000', '170000', 'DUS', 'LBR', '1', 'INCONTECH (USA)', 'PROSOGAN FD 15 MG ', '170,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00506', '', 'CANDERIN 8MG ( 3 LBR )', '0', '1', null, '2013-08-08 07:25:20', ' Nova', '2013-08-17 15:06:57', '0', null, '', '180000', '60000', 'DUS', 'LBR', '3', 'GRAHA FARMA', 'CANDERIN 8MG ( 3 LBR ) ', '172,500 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00504', '', 'CANDERIN 16MG ( 3 LBR )', '0', '1', null, '2013-08-08 07:25:20', ' Nova', '2013-08-17 15:07:15', '0', null, '', '262500', '87500', 'DUS', 'LBR', '3', 'IFARS', 'CANDERIN 16MG ( 3 LBR ) ', '245,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02751', '20327248', 'SPIROLA 25MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '90000', '18500', 'DUS', 'LBR', '5', null, 'SPIROLA 25MG  @10TAB', '67,500 / DUS', '13,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00328', '20301828', 'BETA-ONE 2,5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '130000', '26000', 'DUS', 'LBR', '5', 'BERNOFARM', 'BETA-ONE 2,5MG  @10TAB', '95,000 / DUS', '20,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01634', null, 'LATROPIL 800MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '190000', '19000', 'DUS', 'LBR', '10', 'BOEHRINGER INGELHEIM', 'LATROPIL 800MG @10TAB', '190,000 / DUS', '19,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01058', null, 'FELDENE Flash 20MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '450000', '150000', 'DUS', 'LBR', '3', 'SANBE', 'FELDENE Flash 20MG  @10TAB', '420,000 / DUS', '140,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01350', '8994568111976', 'HYPERIL 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '390000', '130000', 'DUS', 'LBR', '3', 'DEXA MEDICA', 'HYPERIL 10MG  ', '285,000 / DUS', '95,000 / LBR', '3 ');
INSERT INTO `tbartikel` VALUES ('01971', null, 'MYONEP 50MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '315000', '35000', 'DUS', 'LBR', '10', 'NOVARTIS', 'MYONEP 50MG @10TAB', '315,000 / DUS', '35,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02086', '8994388110791', 'NOPERTEN 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '40000', '8000', 'DUS', 'LBR', '5', 'DARYA-VARIA', 'NOPERTEN 10MG  @6TAB', '40,000 / DUS', '9,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01353', '8994568111686', 'HYPERIL 5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '390000', '40000', 'DUS', 'LBR', '10', 'NOVELL', 'HYPERIL 5MG  @6TAB', '390,000 / DUS', '40,000 / LBR', '10 @6TAB');
INSERT INTO `tbartikel` VALUES ('02674', null, 'SELVIM 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '35000', '10000', 'DUS', 'LBR', '5', 'MEDIKON', 'SELVIM 10MG  @10TAB', '20,000 / DUS', '7,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01693', null, 'LIPITOR 40MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '540000', '180000', 'DUS', 'LBR', '3', 'ALCON', 'LIPITOR 40MG @10TAB', '480,000 / DUS', '165,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02869', '8992112078027', 'THROMBO ASPILETS ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@30TAB', '120000', '24000', 'DUS', 'LBR', '5', null, 'THROMBO ASPILETS  @30TAB', '70,000 / DUS', '15,000 / LBR', '5 @30TAB');
INSERT INTO `tbartikel` VALUES ('01396', '8993883880000', 'IMUNOS', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '115000', '24000', 'DUS', 'LBR', '5', 'DEXA MEDICA', 'IMUNOS @4TAB', '105,000 / DUS', '22,000 / LBR', '5 @4TAB');
INSERT INTO `tbartikel` VALUES ('01409', null, 'INLACTA DHA', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '95000', '32500', 'DUS', 'LBR', '2', 'INDOFARMA (IF)', 'INLACTA DHA @10TAB', '90,000 / DUS', '32,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('00055', null, 'ADALAT 5MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '87500', '17500', 'DUS', 'LBR', '5', 'DANKOS', 'ADALAT 5MG @10TAB', '87,500 / DUS', '17,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01680', null, 'LIPANTHYL 100MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '430000', '55000', 'DUS', 'LBR', '8', 'BOEHRINGER INGELHEIM', 'LIPANTHYL 100MG  @6TAB', '360,000 / DUS', '45,000 / LBR', '8 @6TAB');
INSERT INTO `tbartikel` VALUES ('01683', null, 'LIPANTHYL 300MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '6TAB', '500000', '105000', 'DUS', 'LBR', '5', 'NOVELL', 'LIPANTHYL 300MG 6TAB', '500,000 / DUS', '100,000 / LBR', '5 6TAB');
INSERT INTO `tbartikel` VALUES ('01681', null, 'LIPANTHYL 200MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '6TAB', '585000', '117500', 'DUS', 'LBR', '5', 'LANDSON', 'LIPANTHYL 200MG 6TAB', '450,000 / DUS', '90,000 / LBR', '5 6TAB');
INSERT INTO `tbartikel` VALUES ('02189', null, 'OSTE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '205000', '21000', 'DUS', 'LBR', '10', 'PHAPROS', 'OSTE  @6TAB', '170,000 / DUS', '17,000 / LBR', '10 @6TAB');
INSERT INTO `tbartikel` VALUES ('80418', '', 'GLUCOBAY 100MG', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-10-01 08:36:17', '0', null, '@10TAB', '135000', '29000', 'DUS', 'LBR', '5', null, '.GLUCOBAY 100MG @10TAB', '140,000 / DUS', '28,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02948', null, 'TRIMOXSUL FORTE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '160000', '7000', 'DUS', 'LBR', '25', null, 'TRIMOXSUL FORTE  @4TAB', '150,000 / DUS', '7,000 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('02436', '', 'PROSTACOM ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-19 13:36:05', '0', null, '@10TAB', '307500', '102500', 'DUS', 'LBR', '3', 'OYAMA', 'PROSTACOM  @10TAB', '255,000 / DUS', '85,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02840', null, 'TENACE 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '330000', '55000', 'DUS', 'LBR', '6', null, 'TENACE 10MG  @10TAB', '260,000 / DUS', '45,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('02841', null, 'TENACE 5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '175000', '30000', 'DUS', 'LBR', '6', null, 'TENACE 5MG  @10TAB', '168,000 / DUS', '28,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('02842', null, 'TENAZIDE', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '186000', '62000', 'DUS', 'LBR', '3', null, 'TENAZIDE @10TAB', '165,000 / DUS', '55,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00742', '5000455017795', 'CRESTOR 20MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '580000', '290000', 'DUS', 'LBR', '2', 'KALBE', 'CRESTOR 20MG @14TAB', '530,000 / DUS', '265,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('81137', '', 'PROVITAL TABLET', '0', '1', ' Rosa', '2013-08-17 15:18:07', ' Rosa', '2013-08-17 15:17:36', '0', null, '@ 10 TAB', '235000', '24000', 'DUS', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00743', '', 'CRESTOR 40MG ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-11-20 17:42:13', '0', null, '10 BIJI', '825000', '275000', 'BOX', 'LBR', '3', 'KALBE', 'CRESTOR 40MG @7TAB ', '180,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00149', '', 'ANADEX( 25 LBR)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 15:40:01', '0', null, '@4BIJI', '125000', '3500', 'DUS', 'LBR', '25', 'DARYA VARIA', 'ANADEX( 25 LBR) ', '125,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02015', '20320867', 'NEPATIC 300MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '425000', '85000', 'DUS', 'LBR', '5', 'SCHERING PLOUGH', 'NEPATIC 300MG  @10TAB', '300,000 / DUS', '60,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00686', null, 'COBAZIM 1000MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '210000', '9500', 'DUS', 'LBR', '25', null, 'COBAZIM 1000MG  @4TAB', '205,000 / DUS', '9,500 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('02049', '8992858659511', 'NEVOX XR ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '60000', '20000', 'DUS', 'LBR', '3', 'GUARDIAN P', 'NEVOX XR  @10TAB', '54,000 / DUS', '18,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01176', null, 'GALVUSMET 50MG/850MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '210000', '70000', 'DUS', 'LBR', '3', 'NOVARTIS', 'GALVUSMET 50MG/850MG @10TAB', '150,000 / DUS', '50,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01175', null, 'GALVUSMET 50MG/500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '210000', '70000', 'DUS', 'LBR', '3', 'NOVARTIS', 'GALVUSMET 50MG/500MG  @10TAB', '150,000 / DUS', '50,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('80251', '', '.COMBIVENT UAP (2LBR)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-19 18:18:30', '0', null, '', '210000', '110000', 'DUS', 'LBR', '2', null, '.COMBIVENT UAP (2LBR) ', '180,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03045', null, 'VENTOLIN NEBULES 2,5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@5AMPUL', '175000', '45000', 'DUS', 'BNGKS', '4', null, 'VENTOLIN NEBULES 2,5MG  @5AMPUL', '165,000 / DUS', '42,500 / BNGKS', '4 @5AMPUL');
INSERT INTO `tbartikel` VALUES ('00372', null, 'BIO-LIFE AHFC (1DUS @30SACHETS)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '375000', null, 'DUS', null, null, 'KALBE', 'BIO-LIFE AHFC (1DUS @30SACHETS) ', '345,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00899', '8995228500239', 'DULCOLAX ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '210000', '11000', 'DUS', 'LBR', '20', 'INTERBAT', 'DULCOLAX  @10TAB', '180,000 / DUS', '10,000 / LBR', '20 @10TAB');
INSERT INTO `tbartikel` VALUES ('02196', '8997020060027', 'OSTEOCARE SIRUP (1BOTOL @100ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-17 17:12:13', '0', null, '', '46000', '0', 'BOTOL', '', '1', 'SCHERING PLOUGH', 'OSTEOCARE SIRUP (1BOTOL @100ML) ', '45,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01113', '', 'FLIXOTIDE NEBULES 0,5MG/2ML (1DUS @5BUNGKUS)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-19 18:17:48', '0', null, '', '185000', '95000', 'DUS', 'LBR', '2', 'IKAPHARMINDO P', 'FLIXOTIDE NEBULES 0,5MG/2ML (1DUS @5BUNGKUS) ', '180,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00482', '8997020060218', 'CALCIFLAVONE', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '115000', '23000', 'DUS', 'LBR', '5', 'RAMA EMERALD', 'CALCIFLAVONE @6TAB', '110,000 / DUS', '23,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01486', null, 'JOINTACE ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '120000', '24000', 'DUS', 'LBR', '5', 'VITABIOTICS', 'JOINTACE  @6TAB', '115,000 / DUS', '24,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('00420', '', 'BODREX FLU/ BATUK BATUK KERING( 25 LBR )', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-22 18:20:20', '0', null, '@4TAB', '40000', '2500', 'DUS', 'LBR', '25', 'GRAHA FARMA', 'BODREX FLU/ BATUK BATUK KERING( 25 LBR ) @4TAB', '33,000 / DUS', '2,500 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('03199', null, 'ZYLORIC 100MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '450000', '23000', 'DUS', 'LBR', '20', null, 'ZYLORIC 100MG  @10TAB', '390,000 / DUS', '20,000 / LBR', '20 @10TAB');
INSERT INTO `tbartikel` VALUES ('03200', null, 'ZYLORIC 300MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '470000', '47500', 'DUS', 'LBR', '10', null, 'ZYLORIC 300MG  @10TAB', '425,000 / DUS', '44,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02411', '8992858664713', 'PROMAG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@12TAB', '16000', '6000', 'DUS', 'LBR', '3', 'SCAN', 'PROMAG  @12TAB', '15,000 / DUS', '5,000 / LBR', '3 @12TAB');
INSERT INTO `tbartikel` VALUES ('00415', '8999908000200', 'BODREX', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '7000', '3500', 'DUS', 'LBR', '2', 'OTTO', 'BODREX @10TAB', '6,000 / DUS', '3,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('00949', null, 'ENTROSTOP ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '10000', '5000', 'DUS', 'LBR', '2', 'SANBE', 'ENTROSTOP  @10TAB', '10,000 / DUS', '5,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('02585', '8992916992574', 'RYTMONORM 150MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '390000', '65000', 'DUS', 'LBR', '6', 'PERDANA SAKTI', 'RYTMONORM 150MG @10TAB', '330,000 / DUS', '52,500 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('02373', null, 'PRENATIN-DF ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '195000', '33000', 'DUS', 'LBR', '6', 'GUARDIAN P', 'PRENATIN-DF  @10TAB', '132,000 / DUS', '22,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('80050', '', '.AMARYL M2/500MG (3 LBR @ 10 TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-31 12:52:47', '0', null, '@10TAB', '150000', '50000', 'DUS', 'LBR', '3', null, '.AMARYL M2/500MG (3 LBR @ 10 TAB) ', '145,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02791', null, 'SURBEX Z', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '87500', '17500', 'DUS', 'LBR', '5', null, 'SURBEX Z ', '70,000 / DUS', '14,000 / LBR', '5 ');
INSERT INTO `tbartikel` VALUES ('02527', null, 'RENAPAR', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '205000', '21000', 'DUS', 'LBR', '10', 'SANOFI AVENTIS', 'RENAPAR @10TAB', '205,000 / DUS', '21,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02497', null, 'REBAL PLUS ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '210000', '21000', 'DUS', 'LBR', '10', 'VITABIOTICS', 'REBAL PLUS  @10TAB', '210,000 / DUS', '21,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02461', '9322882009621', 'PULMICORT 1MG IN 2ML ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '5AMPUL', '340000', '90000', 'DUS', 'BNGKS', '4', 'YUNNAN BAIYAO', 'PULMICORT 1MG IN 2ML  5AMPUL', '330,000 / DUS', '90,000 / BNGKS', '4 5AMPUL');
INSERT INTO `tbartikel` VALUES ('02460', '9322882009614', 'PULMICORT 0,5MG IN 2ML ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '5AMPUL', '340000', '90000', 'DUS', 'BNGKS', '4', 'HANAKA FARMASINDO', 'PULMICORT 0,5MG IN 2ML  5AMPUL', '330,000 / DUS', '85,000 / BNGKS', '4 5AMPUL');
INSERT INTO `tbartikel` VALUES ('01182', null, 'GASFLAT', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '150000', '16000', 'DUS', 'LBR', '10', 'SCAN', 'GASFLAT @10TAB', '150,000 / DUS', '15,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01520', '', 'KASA STERIL', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:04:06', '0', null, '', '8000', '0', 'DUS', '', '1', 'MEDIFARMA LAB', 'KASA STERIL ', '8,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02228', '8992695120601', 'PANADOL HIJAU ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '75000', '8500', 'DUS', 'LBR', '10', null, 'PANADOL HIJAU  @10TAB', '68,000 / DUS', '7,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02229', '8992695110602', 'PANADOL MERAH ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '65000', '7000', 'DUS', 'LBR', '10', 'DARYA-VARIA', 'PANADOL MERAH  @10TAB', '58,000 / DUS', '6,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02226', '8992695100603', 'PANADOL BIRU ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '60000', '6500', 'DUS', 'LBR', '10', 'JANSSEN-CILAG', 'PANADOL BIRU  @10TAB', '50,000 / DUS', '5,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00126', null, 'AMBEVEN', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '125000', '13000', 'DUS', 'LBR', '10', 'ZOJA MILANO', 'AMBEVEN @10TAB', '110,000 / DUS', '12,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02237', '8998667000582', 'PARAMEX ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '87000', '2000', 'DUS', 'LBR', '50', 'BAYER', 'PARAMEX  @4TAB', '78,000 / DUS', '2,000 / LBR', '50 @4TAB');
INSERT INTO `tbartikel` VALUES ('02987', '', 'ULTRAFLU (25LBR)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-10-01 09:58:34', '0', null, '4 BIJI', '60000', '3000', 'DUS', 'LBR', '25', null, 'ULTRAFLU (25LBR) ', '52,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01939', null, 'MUCOHEXIN TAB (25LBR @4TAB)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '50000', null, 'DUS', null, null, 'DARYA-VARIA', 'MUCOHEXIN TAB (25LBR @4TAB) ', '42,500 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01553', '8993058300821', 'KOMIX RASA JERUK NIPIS ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@7ML', '22000', '1000', 'DUS', 'SACHET', '30', 'GENERIK MARIN', 'KOMIX RASA JERUK NIPIS  @7ML', '17,000 / DUS', '750 / SACHET', '30 @7ML');
INSERT INTO `tbartikel` VALUES ('01552', '8993058300524', 'KOMIX RASA JAHE', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@7ML', '22000', '1000', 'DUS', 'SACHET', '30', 'IKAPHARMINDO P', 'KOMIX RASA JAHE @7ML', '17,500 / DUS', '750 / SACHET', '30 @7ML');
INSERT INTO `tbartikel` VALUES ('01699', null, 'LIPOVAS ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '247500', '90000', 'DUS', 'LBR', '3', 'NOVELL', 'LIPOVAS  @10TAB', '247,500 / DUS', '90,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02649', null, 'SCANTOMA ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '120000', '12000', 'DUS', 'LBR', '10', 'BOEHRINGER INGELHEIM', 'SCANTOMA  @10TAB', '120,000 / DUS', '12,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00795', '', 'DEFLAMAT 75MG CR', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:07:09', '0', null, '', '120000', '0', 'DUS', '', '1', 'DANKOS', 'DEFLAMAT 75MG CR ', '120,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02827', null, 'TEGRETOL 200MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '210000', '42000', 'DUS', 'LBR', '5', null, 'TEGRETOL 200MG  @10TAB', '195,000 / DUS', '39,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02895', null, 'TOFRANIL 25MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '290000', '58000', 'DUS', 'LBR', '5', null, 'TOFRANIL 25MG  @10TAB', '290,000 / DUS', '58,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('80928', null, '.SIRDALUD ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '850000', '86000', 'DUS', 'LBR', '10', null, '.SIRDALUD  @10TAB', '675,000 / DUS', '78,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01966', null, 'MYLANTA TAB', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '49000', '5500', 'DUS', 'LBR', '10', 'NOVELL', 'MYLANTA TAB @4TAB', '43,000 / DUS', '5,000 / LBR', '10 @4TAB');
INSERT INTO `tbartikel` VALUES ('01722', null, 'LOPRESOR 100MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '690000', '140000', 'DUS', 'LBR', '5', 'NOVELL', 'LOPRESOR 100MG @10TAB', '600,000 / DUS', '120,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00546', null, 'CATAFLAM D50 ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '225000', '48000', 'DUS', 'LBR', '5', 'ITRASAL', 'CATAFLAM D50  @10TAB', '225,000 / DUS', '45,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00861', null, 'DIOVAN 40MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '280000', '140000', 'DUS', 'LBR', '2', 'KALBE', 'DIOVAN 40MG  @14TAB', '280,000 / DUS', '140,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('00860', null, 'DIOVAN 160MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '380000', '195000', 'DUS', 'LBR', '2', 'MERCK', 'DIOVAN 160MG  @14TAB', '380,000 / DUS', '190,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('00545', null, 'CATAFLAM 50MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '262500', '52500', 'DUS', 'LBR', '5', 'KALBE', 'CATAFLAM 50MG @10TAB', '215,000 / DUS', '45,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('03117', null, 'VOLTAREN 25MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '175000', '36000', 'DUS', 'LBR', '5', null, 'VOLTAREN 25MG  @10TAB', '150,000 / DUS', '30,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01679', null, 'LIORESAL 10MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '375000', '72500', 'DUS', 'LBR', '5', 'PHAROS', 'LIORESAL 10MG @10TAB', '375,000 / DUS', '72,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02430', '9317935258231', 'PROSCAR 5MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@15TAB', '400000', '205000', 'DUS', 'LBR', '2', 'RADIANT SENTRAL', 'PROSCAR 5MG @15TAB', '400,000 / DUS', '200,000 / LBR', '2 @15TAB');
INSERT INTO `tbartikel` VALUES ('00544', null, 'CATAFLAM 25MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '130000', '27000', 'DUS', 'LBR', '5', 'ACTAVIS', 'CATAFLAM 25MG @10TAB', '115,000 / DUS', '23,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('03185', null, 'ZOLOFT 50MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '495000', '165000', 'DUS', 'LBR', '3', null, 'ZOLOFT 50MG  @10TAB', '495,000 / DUS', '165,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('80083', '', '.ARCOXIA 90MG (3LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-18 13:37:49', '0', null, '10 BIJI', '330000', '110000', 'DUS', 'LBR', '3', null, '.ARCOXIA 90MG (3LBR @10TAB) ', '315,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01823', null, 'METHERGIN 0,125MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '350000', '35000', 'DUS', 'LBR', '10', 'INOVASI', 'METHERGIN 0,125MG  @10TAB', '350,000 / DUS', '35,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00852', null, 'DIFLUCAN 150MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@1TAB', '462500', '97500', 'DUS', 'LBR', '5', 'IKAPHARMINDO', 'DIFLUCAN 150MG  @1TAB', '462,500 / DUS', '92,500 / LBR', '5 @1TAB');
INSERT INTO `tbartikel` VALUES ('02644', null, 'SCANAFLAM 25MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '75000', '15000', 'DUS', 'LBR', '5', 'JANSSEN', 'SCANAFLAM 25MG  @10TAB', '60,000 / DUS', '12,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01852', null, 'MICTONORM', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@7TAB', '320000', '80000', 'DUS', 'LBR', '4', 'DEXA MEDICA', 'MICTONORM @7TAB', '320,000 / DUS', '80,000 / LBR', '4 @7TAB');
INSERT INTO `tbartikel` VALUES ('00534', null, 'CARDURA 1MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '300000', '65000', 'DUS', 'LBR', '5', 'MOLEX AYUS', 'CARDURA 1MG  @10TAB', '350,000 / DUS', '70,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00535', null, 'CARDURA 2MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '525000', '105000', 'DUS', 'LBR', '5', 'MOLEX AYUS', 'CARDURA 2MG @10TAB', '525,000 / DUS', '105,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02391', '', 'PROCOLD', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 16:21:24', '0', null, '@4BIJI', '62500', '3000', 'BOX', 'LBR', '25', 'GUARDIAN P', 'PROCOLD ', '2,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02095', '', 'NORMUDAL TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 16:16:56', '0', null, '@10 BIJI', '45000', '10000', 'BOX', 'LBR', '3', 'LANDSON', 'NORMUDAL TAB ', '10,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80806', '', '.PIRABRAIN 1200MG (6LBR @10CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 16:18:19', '0', null, '@10 BIJI', '210000', '43000', 'DUS', 'LBR', '6', null, '.PIRABRAIN 1200MG (6LBR @10CAP) ', '210,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02002', '8992858257113', 'NEO GYNOXA VAGINAL ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-15 15:34:49', '0', null, '', '70000', '17500', 'LBR', 'BIJI', '5', 'NOVARTIS', 'NEO GYNOXA VAGINAL  @5SUP', '130,000 / DUS', '65,000 / LBR', '2 @5SUP');
INSERT INTO `tbartikel` VALUES ('03118', null, 'VOLTAREN 50MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '305000', '62000', 'DUS', 'LBR', '5', null, 'VOLTAREN 50MG  @10TAB', '247,500 / DUS', '50,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00994', null, 'EUTHYROX 100-Ág ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@25TAB', '195000', '49000', 'DUS', 'LBR', '4', 'COMBIPHAR', 'EUTHYROX 100-Ág  @25TAB', '160,000 / DUS', '40,000 / LBR', '4 @25TAB');
INSERT INTO `tbartikel` VALUES ('01421', null, 'INTERDOXIN 100MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '110000', '23000', 'DUS', 'LBR', '5', 'INDOFARM (IF)', 'INTERDOXIN 100MG  @4TAB', '110,000 / DUS', '22,000 / LBR', '5 @4TAB');
INSERT INTO `tbartikel` VALUES ('01024', null, 'FAMOCID 40MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '155000', '32500', 'DUS', 'LBR', '5', 'SANBE', 'FAMOCID 40MG  @6TAB', '145,000 / DUS', '29,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01023', null, 'FAMOCID 20MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '110000', '25000', 'DUS', 'LBR', '5', 'SANBE', 'FAMOCID 20MG  @6TAB', '92,500 / DUS', '20,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('00589', null, 'CELESTONE', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '570000', '38000', 'DUS', 'LBR', '15', 'TANABE', 'CELESTONE @10TAB', '480,000 / DUS', '33,000 / LBR', '15 @10TAB');
INSERT INTO `tbartikel` VALUES ('01017', null, 'EZETROL 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '435000', '145000', 'DUS', 'LBR', '3', 'INTERBAT', 'EZETROL 10MG  @10TAB', '450,000 / DUS', '150,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02267', null, 'PERSANTIN 25MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '460000', '24000', 'DUS', 'LBR', '20', 'BOEHRINGER INGELHEIM', 'PERSANTIN 25MG  @10TAB', '380,000 / DUS', '21,000 / LBR', '20 @10TAB');
INSERT INTO `tbartikel` VALUES ('00687', null, 'CO-DIOVAN 160/12,5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '380000', '200000', 'DUS', 'LBR', '2', 'FAHRENHEIT', 'CO-DIOVAN 160/12,5MG  @14TAB', '380,000 / DUS', '190,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('01302', null, 'HEPA-Q', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@6TAB', '140000', '28000', 'DUS', 'LBR', '5', 'PRAFA', 'HEPA-Q @6TAB', '140,000 / DUS', '28,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('02351', null, 'PRADAXA 110MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '600000', '200000', 'DUS', 'LBR', '3', 'BOEHRINGER INGELHEIM', 'PRADAXA 110MG  @10TAB', '465,000 / DUS', '160,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02353', null, 'PRADAXA 75MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '600000', '200000', 'DUS', 'LBR', '3', 'TANABE', 'PRADAXA 75MG  @10TAB', '520,000 / DUS', '185,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02543', '8992858671414', 'RG-CHOLINE 1000 ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '540000', '180000', 'DUS', 'LBR', '3', 'SANOFI AVENTIS', 'RG-CHOLINE 1000  @10TAB', '435,000 / DUS', '145,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('03040', '8470008878956', 'VENOSMIL 200MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '170000', '85000', 'DUS', 'LBR', '2', null, 'VENOSMIL 200MG  @10TAB', '145,000 / DUS', '72,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('00437', '7640128016564', 'BONVIVA 150MG (1STRIP @1TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:17:13', '0', null, '', '400000', '400000', 'DUS', '', '1', 'DIPA PHARMALAB', 'BONVIVA 150MG (1STRIP @1TAB) ', '395,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03022', null, 'VALEMIA 5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '150000', '30000', 'DUS', 'LBR', '5', null, 'VALEMIA 5MG  @6TAB', '142,000 / DUS', '28,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('03021', null, 'VALEMIA 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '250000', '50000', 'DUS', 'LBR', '5', null, 'VALEMIA 10MG  @6TAB', '240,000 / DUS', '48,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('01692', null, 'LIPITOR 20MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '540000', '180000', 'DUS', 'LBR', '3', 'SCHERING PLOUGH', 'LIPITOR 20MG @10TAB', '480,000 / DUS', '160,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02240', '', 'PARATUSIN ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 16:35:08', '0', null, '@20 BIJI', '160000', '8000', 'BOX', 'LBR', '20', 'BAYER', 'PARATUSIN TAB ', '6,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00776', '', 'DANOCRINE 200MG', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 16:36:07', '0', null, '@10 BIJI', '1000000', '100000', 'BOX', 'LBR', '10', 'DANKOS', 'DANOCRINE 200MG ', '100,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81118', '', 'ASPIRIN', '0', '1', ' Merry', '2013-08-14 16:00:53', ' Merry', '2013-08-17 16:31:31', '0', null, '@10 BIJI', '75000', '5500', 'BOX', 'LBR', '15', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('80960', '', 'TANAPRES 10MG @10TAB', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2013-11-08 15:59:10', '0', null, '@10 BIJI', '375000', '125000', 'BOX', 'LBR', '3', null, '.TANAPRES 10MG @10TAB ', '95,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03178', '', 'ZINNAT 500MG (1STRIP @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:25:28', '0', null, '', '110000', '0', 'DUS', '', '1', null, 'ZINNAT 500MG (1STRIP @10TAB) ', '110,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03177', '', 'ZINNAT 250MG (1STRIP @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:25:36', '0', null, '', '75000', '0', 'DUS', '', '1', null, 'ZINNAT 250MG (1STRIP @10TAB) ', '75,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00547', '', 'CATAFLAM FAST 50MG (3STRIP @1SACHET)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-22 15:24:18', '0', null, '', '75000', '0', 'DUS', '', '1', null, 'CATAFLAM FAST 50MG (3STRIP @1SACHET) ', '60,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00008', '', 'ABBOTIC XL 500 MG', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 16:38:44', '0', null, '@2 BIJI', '370000', '75000', 'BOX', 'LBR', '5', 'MEIJI', 'ABBOTIC XL 500 MG ', '65,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02244', '', 'PARIET 10MG (1STRIP @14TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-22 15:20:40', '0', null, '', '140000', '0', 'DUS', '', '1', 'BOEHRINGER INGELHEIM', 'PARIET 10MG (1STRIP @14TAB) ', '140,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81151', '', 'TEGRETOR 100 MG', '0', '1', ' Merry', '2013-08-17 16:38:02', null, null, '0', null, '@10 BIJI', '150000', '30000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02245', '', 'PARIET 20MG (1STRIP @14TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2015-06-04 15:54:33', '0', null, '', '245000', '0', 'LBR', '', '1', 'BOEHRINGER INGELHEIM', 'PARIET 20MG (1STRIP @14TAB) ', '225,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81153', '', 'TRAJENTA DUO2,5/500', '0', '1', ' Merry', '2013-08-17 16:53:40', null, null, '0', null, '@ 10 BIJI', '210000', '70000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81154', '', 'TRAJENTA DUO 2,5/850', '0', '1', ' Merry', '2013-08-17 16:54:20', null, null, '0', null, '@10 BIJI', '210000', '70000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81155', '', 'TRAJENTA DUO 2,5/1000', '0', '1', ' Merry', '2013-08-17 16:54:59', null, null, '0', null, '@10 BIJI', '210000', '70000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01144', null, 'FOSAMAX PLUS', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '450000', null, 'BOX', null, null, 'GSK', 'FOSAMAX PLUS ', '380,000 / BOX', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00030', null, 'ACRAN 150MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '385000', '40000', 'DUS', 'LBR', '10', 'PFIZER', 'ACRAN 150MG @10TAB', '350,000 / DUS', '37,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02747', null, 'SPIRASIN 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '535000', '55000', 'DUS', 'LBR', '10', null, 'SPIRASIN 500MG  @10TAB', '500,000 / DUS', '52,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80895', null, '.SANEXON ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '200000', '21000', 'DUS', 'LBR', '10', null, '.SANEXON  @10TAB', '195,000 / DUS', '20,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('03132', null, 'VOSEDON ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '215000', '22000', 'DUS', 'LBR', '10', null, 'VOSEDON  @10TAB', '195,000 / DUS', '20,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00639', null, 'CHOLVASTIN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '285000', '100000', 'DUS', 'LBR', '3', 'PHARMASI BINANGKIT', 'CHOLVASTIN  @10TAB', '260,000 / DUS', '90,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('80373', null, '.FLAMAR 50MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '165000', '17500', 'DUS', 'LBR', '10', null, '.FLAMAR 50MG  @10TAB', '150,000 / DUS', '16,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00308', null, 'BERRY VISION ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '290000', '30000', 'DUS', 'LBR', '10', 'SOHO', 'BERRY VISION  @10TAB', '260,000 / DUS', '27,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01838', null, 'MEZATRIN 250MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@6TAB', '400000', '82500', 'DUS', 'LBR', '5', 'DEXA MEDICA', 'MEZATRIN 250MG  @6TAB', '390,000 / DUS', '78,000 / LBR', '5 @6TAB');
INSERT INTO `tbartikel` VALUES ('02625', null, 'SANMETIDIN ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '140000', '15000', 'DUS', 'LBR', '10', 'DARYA VARIA', 'SANMETIDIN  @10TAB', '132,500 / DUS', '13,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02363', null, 'PREABOR', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '205000', '42500', 'DUS', 'LBR', '3', null, 'PREABOR @10TAB', '205,000 / DUS', '42,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02514', null, 'REGUMEN ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '90000', '30000', 'DUS', 'LBR', '3', null, 'REGUMEN  @10TAB', '90,000 / DUS', '30,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01539', '9342769003689', 'KIDS 3 60TAB', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '205000', null, 'DUS', null, null, 'PRAFA', 'KIDS 3 60TAB ', '210,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81165', '', 'SYNCORE', '0', '1', ' Merry', '2013-08-17 17:22:19', null, null, '0', null, '', '100000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02116', '', 'NUR HABBAT', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 17:06:28', '0', null, '', '25000', '0', 'BTL', '', '1', 'PHAROS', 'NUR HABBAT ', '25,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02422', '', 'PROPOLIS MELILEA @ 7 BTL', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-10-18 12:06:28', '0', null, '', '220000', '40000', 'DUS', 'BTL', '7', 'ABBOTT', 'PROPOLIS MELILEA @ 7 BTL ', '210,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81162', '', 'SALONPAS CAIR KECIL 30 ML', '0', '1', ' Merry', '2013-08-17 17:08:39', null, null, '0', null, '', '11000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81163', '', 'RIVANOL KECIL', '0', '1', ' Merry', '2013-08-17 17:09:10', null, null, '0', null, '', '4500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81164', '', 'CENDO VASACON MD', '0', '1', ' Merry', '2013-08-17 17:21:11', null, null, '0', null, '', '25000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81167', '', 'CENDO POLYNEL MD', '0', '1', ' Merry', '2013-08-17 17:29:26', null, null, '0', null, '', '30000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81166', '', 'MY BABY LOTIONM', '0', '1', ' Merry', '2013-08-17 17:23:26', null, null, '0', null, '', '10000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02296', '', 'PIRABRAIN 400 MG 10 TAB', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2015-04-28 17:47:15', '0', null, '@10 BIJI', '120000', '22000', 'BOX', 'LBR', '6', 'PFIZER', 'PIRABRAIN 400 MG 10 TAB ', '18,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02443', '', 'PROTOP (1STRIP @14CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 17:36:27', '0', null, '', '155000', '12000', 'LBR', 'BIJI', '1', 'KOTRA PHARMA', 'PROTOP (1STRIP @14CAP) ', '155,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81149', '', 'SENDI CAP', '0', '1', ' Merry', '2013-08-17 16:29:01', null, null, '0', null, '', '5000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81150', '', 'IKADIABET', '0', '1', ' Merry', '2013-08-17 16:29:30', null, null, '0', null, '', '7000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00038', '8993478101046', 'ACTIFED SIRUP KUNING (1BOTOL @120ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:13:46', '0', null, '', '47000', '0', 'BOTOL', '', '1', 'COMBIPHAR', 'ACTIFED SIRUP KUNING (1BOTOL @120ML) ', '41,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02838', '8995201800103', 'TEMPRA SYRUP (1BOTOL @100ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-14 09:24:02', '0', null, '', '41000', '0', 'BOTOL', '', '1', null, 'TEMPRA SYRUP (1BOTOL @100ML) ', '37,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01332', '8994568145476', 'HISTRINE SIRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '50000', null, 'BOTOL', null, null, 'FAHRENHEIT', 'HISTRINE SIRUP (1BOTOL @60ML) ', '46,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02176', '', 'OREZINC SYRUP 60ML', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-15 14:02:41', '0', null, '', '25000', '0', 'BTL', '', '1', 'EISAI INDONESIA', 'OREZINC SYRUP 60ML ', '25,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00784', '', 'DECAMAG @4TAB', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 20:19:48', '0', null, '@4 BIJI', '25000', '3000', 'BOX', 'LBR', '25', 'NOVELL', 'DECAMAG @4TAB ', '2,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00758', '8993347008735', 'CUSTODIOL ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '18000', '9000', 'DUS', 'LBR', '3', 'KALBE', 'CUSTODIOL  @10TAB', '27,000 / DUS', '9,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02642', '8994591040021', 'SARIDON ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '66000', '3500', 'DUS', 'LBR', '30', 'TAKEDA', 'SARIDON  @4TAB', '66,000 / DUS', '3,000 / LBR', '30 @4TAB');
INSERT INTO `tbartikel` VALUES ('00165', '8992003170410', 'ANTANGIN JRG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '35000', '2000', 'DUS', 'LBR', '20', 'DANKOS', 'ANTANGIN JRG @4TAB', '33,000 / DUS', '2,000 / LBR', '20 @4TAB');
INSERT INTO `tbartikel` VALUES ('81173', '', 'PYREX', '0', '1', ' Merry', '2013-08-17 20:32:07', null, null, '0', null, '@10BIJI', '50000', '5000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01975', '8992112069018', 'NALGESTAN ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '125000', '5000', 'DUS', 'LBR', '25', 'NOVARTIS', 'NALGESTAN  @4TAB', '95,000 / DUS', '5,000 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('01992', '8999809400017', 'NATUR-E (1DUS @16CAP)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '16000', null, 'DUS', null, null, 'BAYER', 'NATUR-E (1DUS @16CAP) ', '14,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81174', '', 'STARDEX', '0', '1', ' Merry', '2013-08-17 20:36:19', null, null, '0', null, '3 BUAH', '15000', '0', 'BOX', 'BOX', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01282', '', 'HANSAPLAST PLESTER 1 BIJI', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-20 12:26:01', '0', null, '', '250', '250', 'BIJI', '', '1', 'COMBIPHAR', 'HANSAPLAST PLESTER 1 BIJI ', '250 / BIJI', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01894', '', 'MIXAGRIP FLU&BATUK', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2014-05-14 16:46:51', '0', null, '4 BIJI', '42500', '2500', 'BOX', 'LBR', '25', 'NOVARTIS', 'MIXAGRIP FLU&BATUK ', '1,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00349', '', 'BINTANG TUJUH ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 20:53:31', '0', null, '', '50000', '6000', 'DUS', 'LUSIN', '12', 'NICHOLAS', 'BINTANG TUJUH ( 50 LBR) ', '4,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('003512', '', 'INZANA SYRUP', '0', '1', ' Ana', '2013-08-10 08:32:05', null, null, '0', null, '', '1500', '0', 'LBR', '', '1', null, 'INZANA SYRUP ', ' / LBR', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('81176', '', 'TOLAK ANGIN TAB', '0', '1', ' Merry', '2013-08-17 20:42:05', null, null, '0', null, '@2BIJI', '13000', '1500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02896', '8998898151442', 'TOLAK ANGIN ANAK ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10ML', '17000', '2000', 'DUS', 'SACHET', '12', null, 'TOLAK ANGIN ANAK  @10ML', '17,000 / DUS', '2,000 / SACHET', '12 @10ML');
INSERT INTO `tbartikel` VALUES ('81177', '', 'POLYCROL TAB', '0', '1', ' Merry', '2013-08-17 21:03:56', null, null, '0', null, '@10 BIJI', '10000', '5000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02224', null, 'PAMOL', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '50000', '2000', 'DUS', 'LBR', '25', 'SCHERING PLOUGH', 'PAMOL @4TAB', '37,500 / DUS', '1,500 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('00945', '', 'ENERVON-C STRIP', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 15:41:11', '0', null, '@4BIJI', '110000', '5500', 'BOX', 'LBR', '25', 'SANBE', 'ENERVON-C 1STRIP @4TAB ', '4,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01149', null, 'FRESH CARE STRONG  ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '11000', null, 'BTL', null, null, 'PYRIDAM', 'FRESH CARE STRONG   ', '10,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00370', null, 'BIODIAR 630MG 4TAB', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '6000', null, 'LBR', null, null, 'HEXPHARM JAYA (HJ)', 'BIODIAR 630MG 4TAB ', '5,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01551', '', 'KOMIX OBH', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 21:09:08', '0', null, '', '22000', '1000', 'BOX', 'BKS', '30', 'IFARS', 'KOMIX OBH ', ' ', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81178', '', 'BALSAM SCORPION', '0', '1', ' Merry', '2013-08-17 21:14:05', ' Merry', '2013-12-15 17:43:05', '0', null, '', '11000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01954', '', 'MYCORINE POWDER', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-05-29 11:57:25', '0', null, '', '32500', '0', 'BTL', '', '0', 'PUSPA PHARMA', 'MYCORINE PODER ', '32,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01284', null, 'HANSAPLAST TRANSPARAN', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '6000', null, 'LBR', null, null, 'COMBIPHAR', 'HANSAPLAST TRANSPARAN ', '5,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01768', null, 'MAPOH', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '15000', null, 'BTL', null, null, 'PRIMA SOLUSI MEDIKA', 'MAPOH ', '11,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03092', '', 'VITAL', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:27:17', '0', null, '', '13000', '0', 'BOTOL', '', '1', null, 'VITAL ', '12,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81179', '', 'CHIBY OIL', '0', '1', ' Merry', '2013-08-17 21:16:59', null, null, '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81180', '', 'GENTIAN VIOLET', '0', '1', ' Merry', '2013-08-17 21:18:29', null, null, '0', null, '', '4000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02266', '', 'PERMEN WOOD^S', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-04-16 14:59:06', '0', null, '3000', '38000', '3000', 'BOX', 'BKS', '15', 'BOEHRINGER INGELHEIM', 'PERMEN WOOD^S ', '2,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81181', '', 'A IPI', '0', '1', ' Merry', '2013-08-17 21:20:13', null, null, '0', null, '', '4000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81104', '', 'DARSI @12CAPSULE', '0', '1', ' Merry', '2013-08-12 16:42:11', null, null, '0', null, '', '9000', '0', 'DUS', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81113', '', 'PIL TUNTAS', '0', '1', ' Merry', '2013-08-13 14:09:03', null, null, '0', null, '', '8000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81183', '', 'LOTTE EYE DROP', '0', '1', ' Merry', '2013-08-17 21:22:38', null, null, '0', null, '', '8000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00632', '', 'CHLORAMFECORT H KRIM ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-04-24 14:13:40', '0', null, '', '12000', '0', 'TUB', '', '1', 'SOHO', 'CHLORAMFECORT H KRIM  ', '9,000 / TUB', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02608', '', 'SALONPAS GEL ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:21:15', '0', null, '', '17000', '17000', 'TUBE', '', '1', 'PFIZER', 'SALONPAS GEL  ', '12,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01564', null, 'KRIM RHEUMACYL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '13000', null, 'TUB', null, null, 'NOVARTIS', 'KRIM RHEUMACYL ', '12,000 / TUB', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('081125', '', 'MINYAK KAPAK 3ML', '0', '1', ' Merry', '2013-08-15 16:20:42', null, null, '0', null, '', '5500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00153', '', 'ANDALAN TEST STRIP', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:15:17', '0', null, '', '5000', '0', 'LBR', '', '1', 'BERNOFARM', 'ANDALAN TEST STRIP ', '5,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02330', '8997011910096', 'POLAR BEAR/BERUANG (1BOTOL @8ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-20 04:10:34', '0', null, '', '120000', '12000', 'LSN', 'BTL', '12', 'NICHOLAS', 'POLAR BEAR/BERUANG (1BOTOL @8ML) ', '8,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02439', null, 'PROTECAL SOLID @10TAB', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '25000', null, 'TUBE', null, null, 'KOTRA PHARMA', 'PROTECAL SOLID @10TAB ', '23,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00562', '', 'CDR FORTOS', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2014-04-19 14:29:51', '0', null, '', '35000', '0', 'TUBE', '', '1', null, 'CDR FORTOS ', '31,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02866', '', 'THIAMYCIN FORTE SIROP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2013-12-11 15:32:49', '0', null, '', '45000', '0', 'BOTOL', '', '1', null, 'THIAMYCIN FORTE SIROP (1BOTOL @60ML) ', '50,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00491', '', 'CALOS 500MG (1BOTOL @60TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-12-11 18:15:55', '0', null, '', '52000', '0', 'BOTOL', '', '1', 'DEXA MEDICA', 'CALOS 500MG (1BOTOL @60TAB) ', '45,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01426', '', 'INTERHISTIN SYRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2013-12-11 15:34:36', '0', null, '', '20000', '0', 'BOTOL', '', '1', 'DEXA MEDICA', 'INTERHISTIN SYRUP (1BOTOL @60ML) ', '20,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81053', '', '.VITAPLEX SYP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:40:06', '0', null, '', '30000', '0', 'BTL', '', '1', null, '.VITAPLEX SYP ', '30,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02174', '8994568145995', 'OPTIMAX PLUS SIRUP (1BOTOL @100ML)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '62500', null, 'BOTOL', null, null, 'COMBIPHAR', 'OPTIMAX PLUS SIRUP (1BOTOL @100ML) ', '52,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01919', null, 'MONELL SYRP@60ML', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '32500', null, 'BTL', null, null, 'MAHAKAM BETA FARMA', 'MONELL SYRP@60ML ', '32,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03159', '8993430101732', 'ZAMEL SIRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-15 14:02:53', '0', null, '', '34000', '0', 'BOTOL', '', '1', null, 'ZAMEL SIRUP (1BOTOL @60ML) ', '31,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80763', '', '.NYMIKO DROP 12ML', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:48:13', '0', null, '', '32500', '0', 'BTL', '', '1', null, '.NYMIKO DROP 12ML ', '29,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01100', '', 'FLAGYL (1BOTOL @60ML )', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-14 18:41:48', '0', null, '', '50000', '0', 'BOTOL', '', '1', 'INTERBAT', 'FLAGYL (1BOTOL @60ML ) ', '50,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02427', '8993347003259', 'PRORIS (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-14 18:17:22', '0', null, '', '22000', '0', 'BOTOL', '', '1', null, 'PRORIS (1BOTOL @60ML) ', '18,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02429', '8993347004737', 'PRORIS FORTE', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-14 18:17:17', '0', null, '', '25000', '0', 'BOTOL', '', '1', null, 'PRORIS FORTE ', '21,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81184', '', 'COLSANCETIN SYP', '0', '1', ' Merry', '2013-08-17 21:34:13', null, null, '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81044', '', '.VENTOLIN SYRUP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:40:38', '0', null, '', '47500', '0', 'BTL', '', '1', null, '.VENTOLIN SYRUP ', '42,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00922', '8993430163570', 'EGOJI (1BOTOL @100ML)', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2013-12-11 15:33:37', '0', null, '', '42500', '0', 'BOTOL', '', '1', 'SANBE', 'EGOJI (1BOTOL @100ML) ', '42,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01942', '', 'MUCOPECT DROPS 15MG/ML (1BOTOL @20ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-14 18:43:19', '0', null, '', '57500', '0', 'BOTOL', '', '1', 'DANKOS', 'MUCOPECT DROPS 15MG/ML (1BOTOL @20ML) ', '47,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01944', '', 'MUCOPECT SIRUP 30MG/5ML (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-14 18:43:25', '0', null, '', '54000', '0', 'BOTOL', '', '1', 'MAHAKAM BETA FARMA', 'MUCOPECT SIRUP 30MG/5ML (1BOTOL @60ML) ', '49,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01943', '', 'MUCOPECT SIRUP 15MG/5ML (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-14 18:43:31', '0', null, '', '48000', '0', 'BOTOL', '', '1', 'DANKOS', 'MUCOPECT SIRUP 15MG/5ML (1BOTOL @60ML) ', '39,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80764', '', '.OA FORTE @50TAB', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2015-02-24 09:31:22', '0', null, '', '255000', '255000', 'BTL', '', '1', null, '.OA FORTE @60TAB ', '260,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00404', '8992799140703', 'BISOLVON EXTRA (1BOTOL @125ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-15 14:03:47', '0', null, '', '49000', '0', 'BOTOL', '', '1', 'NUFARINDO', 'BISOLVON EXTRA (1BOTOL @125ML) ', '44,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00408', '', 'BISOLVON KIDS 125ML', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-15 14:03:27', '0', null, '', '42500', '0', 'BTL', '', '1', null, 'BISOLVON KIDS 125ML ', '40,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00409', '8992799144015', 'BISOLVON SOLUTION (1BOTOL @50ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-15 14:03:22', '0', null, '', '65000', '0', 'BOTOL', '', '1', 'MOLEX AYUS', 'BISOLVON SOLUTION (1BOTOL @50ML) ', '56,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00403', '', 'BISOLVON ELIKSIR (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-15 14:03:53', '0', null, '', '26000', '0', 'BOTOL', '', '1', 'NUFARINDO', 'BISOLVON ELIKSIR (1BOTOL @60ML) ', '23,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00405', '', 'BISOLVON EXTRA (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-15 14:03:42', '0', null, '', '29000', '0', 'BOTOL', '', '1', 'LANDSON', 'BISOLVON EXTRA (1BOTOL @60ML) ', '26,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00407', '8992799658178', 'BISOLVON KIDS (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-15 14:03:32', '0', null, '', '29000', '0', 'BOTOL', '', '1', null, 'BISOLVON KIDS (1BOTOL @60ML) ', '23,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80073', '', '.APIALYS DROP 10ML', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-13 18:01:47', '0', null, '', '34000', '0', 'BTL', '', '1', null, '.APIALYS DROP 10ML ', '27,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80074', '', '.APIALYS SYRUP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-13 18:01:34', '0', null, '', '30000', '0', 'BTL', '', '1', null, '.APIALYS SYRUP ', '24,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00937', '', 'ENCEPHABOL LIQUID (1BOTOL @100ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-14 08:54:34', '0', null, '', '62500', '0', 'BOTOL', '', '1', 'SANBE', 'ENCEPHABOL LIQUID (1BOTOL @100ML) ', '58,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01428', null, 'INTERMOXIL SYRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '19000', null, 'BOTOL', null, null, 'HEXPHARM JAYA (HJ)', 'INTERMOXIL SYRUP (1BOTOL @60ML) ', '19,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00585', '', 'CELESTAMINE SIROP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-13 17:59:06', '0', null, '', '53000', '0', 'BOTOL', '', '1', 'TANABE', 'CELESTAMINE SIROP (1BOTOL @60ML) ', '43,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00661', '', 'CLARITIN SIROP 5MG/5ML (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-20 04:40:10', '0', null, '', '82000', '0', 'BTL', '', '1', 'FAHRENHEIT', 'CLARITIN SIROP 5MG/5ML (1BOTOL @60ML) ', '63,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02921', '8992858577112', 'TRANSBRONCHO SYRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:28:34', '0', null, '', '25000', '0', 'BOTOL', '', '1', null, 'TRANSBRONCHO SYRUP (1BOTOL @60ML) ', '25,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02633', '', 'SANPRIMA SIROP (1BOTOL @60ML )', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:37:54', '0', null, '', '25000', '0', 'BOTOL', '', '1', 'BINTANG TOEDJOE', 'SANPRIMA SIROP (1BOTOL @60ML ) ', '22,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02588', '8993430102371', 'RYVEL SYRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-13 17:51:15', '0', null, '', '47000', '0', 'BOTOL', '', '1', 'YAHI UTAMA', 'RYVEL SYRUP (1BOTOL @60ML) ', '40,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01071', null, 'FERLIN', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '33000', null, 'BTOL', null, null, 'INTERBAT', 'FERLIN ', '30,000 / BTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03033', '8994388111415', 'VECTRINE DRY SYRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2013-12-11 15:35:35', '0', null, '', '36000', '0', 'BOTOL', '', '1', null, 'VECTRINE DRY SYRUP (1BOTOL @60ML) ', '35,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01072', '8992112067229', 'FERLIN DROPS (1BOTOL @30ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '30000', null, 'BOTOL', null, null, 'INTERBAT', 'FERLIN DROPS (1BOTOL @30ML) ', '27,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02456', '', 'PROZA SIRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-14 18:49:50', '0', null, '', '47500', '0', 'BOTOL', '', '1', 'LIFEPHARM', 'PROZA SIRUP (1BOTOL @60ML) ', '47,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00449', '', 'BRAINVIT SIRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-13 17:54:10', '0', null, '', '35000', '0', 'BOTOL', '', '1', 'OTTO', 'BRAINVIT SIRUP (1BOTOL @60ML) ', '35,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01050', null, 'FARTOLIN SYP', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '42000', null, 'BTL', null, null, 'SANBE', 'FARTOLIN SYP ', '38,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01472', '8993430102531', 'ISPRINOL SYRUP 250MG/5ML (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-14 18:14:02', '0', null, '', '77500', '0', 'BOTOL', '', '1', 'INDOFARMA (IF)', 'ISPRINOL SYRUP 250MG/5ML (1BOTOL @60ML) ', '72,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81185', '', 'BRONCHOPRONT', '0', '1', ' Merry', '2013-08-17 21:43:12', null, null, '0', null, '', '45000', '8000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('80782', '', '.OSSOVIT SYRUP 100ML', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:47:49', '0', null, '', '30000', '0', 'BTL', '', '1', null, '.OSSOVIT SYRUP 100ML ', '28,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80583', '', '.LASAL SYRUP 100ML', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:47:54', '0', null, '', '25000', '0', 'BTL', '', '1', null, '.LASAL SYRUP 100ML ', '20,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00406', '8995228500154', 'BISOLVON FLU (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-15 14:03:37', '0', null, '', '29000', '0', 'BOTOL', '', '1', 'LANDSON', 'BISOLVON FLU (1BOTOL @60ML) ', '25,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00401', '8995228500376', 'BISOLVON ANTITUSIF (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-15 14:03:59', '0', null, '', '23000', '0', 'BOTOL', '', '1', 'PHYTO KEMO AGUNG F', 'BISOLVON ANTITUSIF (1BOTOL @60ML) ', '23,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00498', '8992837100041', 'CALSOURCE JUNIOR SIRUP SANDOZ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '63000', null, 'BOTOL', null, null, 'PYRIDAM', 'CALSOURCE JUNIOR SIRUP SANDOZ ', '58,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02542', '8993347012992', 'REXCOF SIRUP 4MG/5ML (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-14 09:32:21', '0', null, '', '13000', '0', 'BOTOL', '', '1', 'NOVO NORDISK', 'REXCOF SIRUP 4MG/5ML (1BOTOL @60ML) ', '13,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81186', '', 'RHINATIOL KUNING', '0', '1', ' Merry', '2013-08-17 21:47:04', null, null, '0', null, '', '47500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81187', '', 'RHINATIOL MERAH', '0', '1', ' Merry', '2013-08-17 21:47:34', null, null, '0', null, '', '45000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81188', '', 'RHINATIOL PINK', '0', '1', ' Merry', '2013-08-17 21:49:11', null, null, '0', null, '', '45000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00080', '', 'ALCO PLUS (1BOTOL @100ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-14 08:48:40', '0', null, '', '32000', '0', 'BOTOL', '', '1', 'LAPI', 'ALCO PLUS (1BOTOL @100ML) ', '20,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00081', '', 'ALCO PLUS DMP 100ML', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-14 08:48:34', '0', null, '', '32000', '0', 'BTL', '', '1', 'LAPI', 'ALCO PLUS DMP 100ML ', '22,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81189', '', 'MOSAVON SYP', '0', '1', ' Merry', '2013-08-17 21:51:23', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81190', '', 'MEZINEX SYP', '0', '1', ' Merry', '2013-08-17 21:52:31', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('80363', '', '.FASIPRIM SYP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-14 16:10:22', '0', null, '', '6000', '0', 'BTL', '', '1', null, '.FASIPRIM SYP ', '6,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01627', '8993079831564', 'LASERIN MADU ANAK-ANAK (1BOTOL @110ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '12000', null, 'BOTOL', null, null, 'DARYA VARIA', 'LASERIN MADU ANAK-ANAK (1BOTOL @110ML) ', '12,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03169', '', 'ZENIREX SYUP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:25:48', '0', null, '', '6000', '0', 'BTL', '', '1', null, 'ZENIREX SYUP ', '6,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81191', '', 'ELKANA CL', '0', '1', ' Merry', '2013-08-17 21:54:45', null, null, '0', null, '', '45000', '45000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00953', null, 'EPEXOL SYRUP (1BOTOL @120ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '17500', null, 'BOTOL', null, null, 'PHAPROS', 'EPEXOL SYRUP (1BOTOL @120ML) ', '15,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80022', '', '.AERIUS SIRUP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:24:26', '0', null, '', '85000', '0', 'BTL', '', '1', null, '.AERIUS SIRUP ', '75,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80897', '', '.SANMAG SYRUP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:45:17', '0', null, '', '24000', '0', 'BTL', '', '1', null, '.SANMAG SYRUP ', '22,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81192', '', 'MAGTRAL SYP', '0', '1', ' Merry', '2013-08-17 21:56:31', ' Merry', '2013-11-22 14:32:16', '0', null, '', '22000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('80707', '', '.MUSIN SYRUP 120ML', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:49:26', '0', null, '', '47500', '0', 'BTL', '', '1', null, '.MUSIN SYRUP 120ML ', '42,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00747', '8998777140598', 'CURCUMA PLUS RASA JERUK (1BOTOL @120ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-12-12 09:56:41', '0', null, '', '17000', '0', 'BOTOL', '', '1', 'KALBE', 'CURCUMA PLUS RASA JERUK (1BOTOL @120ML) ', '16,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80196', '', '.CEFAT FORTE SYRUP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-13 17:41:54', '0', null, '', '70000', '0', 'BTL', '', '1', null, '.CEFAT FORTE SYRUP ', '67,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80197', '', '.CEFAT SYRUP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-13 17:42:05', '0', null, '', '43000', '0', 'BTL', '', '1', null, '.CEFAT SYRUP ', '38,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00396', '', 'BIOTHICOL DRY SYRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2013-12-11 15:30:05', '0', null, '', '19000', '0', 'BOTOL', '', '1', 'MECOSIN', 'BIOTHICOL DRY SYRUP (1BOTOL @60ML) ', '19,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80059', '', '.AMOXAN FORTE SYRUP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-13 17:48:09', '0', null, '', '32000', '0', 'BTL', '', '1', null, '.AMOXAN FORTE SYRUP ', '31,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00658', '', 'CLANEKSI FORTE DRY SYRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:08:28', '0', null, '', '65000', '0', 'BOTOL', '', '1', 'FAHRENHEIT', 'CLANEKSI FORTE DRY SYRUP (1BOTOL @60ML) ', '60,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00655', '', 'CLABAT SYRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-14 18:10:55', '0', null, '', '48000', '0', 'BOTOL', '', '1', 'HEXPHARM JAYA (HJ)', 'CLABAT SYRUP (1BOTOL @60ML) ', '48,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00389', '7610715195804', 'BIO-STRATH ELIXIR (1BOTOL @100ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '280000', null, 'BOTOL', null, null, 'SCHERING PLOUGH', 'BIO-STRATH ELIXIR (1BOTOL @100ML) ', '180,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01338', '8994254011115', 'HUFAGRIPP FLU (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-14 08:57:19', '0', null, '', '13000', '0', 'BOTOL', '', '1', 'SANBE', 'HUFAGRIPP FLU (1BOTOL @60ML) ', '10,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01489', '8993365111257', 'JOYBEE KIDS SIRUP (1BOTOL @125ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-14 09:33:04', '0', null, '', '14000', '0', 'BOTOL', '', '1', 'SANBE', 'JOYBEE KIDS SIRUP (1BOTOL @125ML) ', '14,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02000', '8996838101007', 'NELLCO SPECIAL OBH (1BOTOL @100ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-11 18:16:19', '0', null, '', '19000', '0', 'BOTOL', '', '1', 'TANABE', 'NELLCO SPECIAL OBH (1BOTOL @100ML) ', '13,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02217', '', 'OXOPECT SIRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-14 16:03:57', '0', null, '', '32500', '17500', 'BOTOL', '', '1', 'SANDOZ', 'OXOPECT SIRUP (1BOTOL @60ML) ', '32,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00703', '', 'COMTUSI (1BOTOL @100ML)', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:08:09', '0', null, '', '57500', '0', 'BOTOL', '', '1', 'NOVELL', 'COMTUSI (1BOTOL @100ML) ', '48,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80902', '', '.SANMOL SYRUP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:45:04', '0', null, '', '12000', '0', 'BTL', '', '1', null, '.SANMOL SYRUP ', '11,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02837', '8995201800141', 'TEMPRA FORTE SIRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-14 09:23:55', '0', null, '', '38000', '0', 'BOTOL', '', '1', null, 'TEMPRA FORTE SIRUP (1BOTOL @60ML) ', '32,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80703', '', '.MUCOHEXIN SYRUP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:49:32', '0', null, '', '16000', '0', 'BTL', '', '1', null, '.MUCOHEXIN SYRUP ', '15,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80890', '', '.SANADRYL DMP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:45:36', '0', null, '', '17000', '0', 'BTL', '', '1', null, '.SANADRYL DMP ', '16,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02615', '', 'SANADRYL EXPECTORANT (1BOTOL @120ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:38:23', '0', null, '', '14000', '14000', 'BOTOL', '', '1', 'PFIZER', 'SANADRYL EXPECTORANT (1BOTOL @120ML) ', '17,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80901', '', '.SANMOL DROP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:45:10', '0', null, '', '16000', '0', 'BTL', '', '1', null, '.SANMOL DROP ', '15,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01077', '8997020060041', 'FEROGLOBIN SIRUP (1BOTOL @100ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '44000', null, 'BOTOL', null, null, 'INTERBAT', 'FEROGLOBIN SIRUP (1BOTOL @100ML) ', '43,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80482', '', '.IMUNOS SYRUP ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:48:29', '0', null, '', '55000', '0', 'BTL', '', '1', null, '.IMUNOS SYRUP  ', '52,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81193', '', 'INFORCE SYRUP', '0', '1', ' Merry', '2013-08-17 22:03:43', ' Merry', '2014-03-28 10:53:47', '0', null, '', '52500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01777', '', 'MATOVIT SIRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2013-12-11 15:32:04', '0', null, '', '36000', '0', 'BOTOL', '', '1', 'TAISHO', 'MATOVIT SIRUP (1BOTOL @60ML) ', '28,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81007', '', '.TRIBOST SYRUP 60ML', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-30 19:06:15', '0', null, '', '37500', '0', 'BTL', '', '1', null, '.TRIBOST SYRUP 60ML ', '37,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80271', '', '.CURMUNOS SYRUP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:59:06', '0', null, '', '54000', '0', 'BTL', '', '1', null, '.CURMUNOS SYRUP ', '52,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80009', '', '.ACITRAL SYRUP 120ML', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:24:39', '0', null, '', '23000', '0', 'BTL', '', '1', null, '.ACITRAL SYRUP 120ML ', '22,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('081119', '', 'AMOXAN DROP', '0', '1', ' Merry', '2013-08-14 19:03:18', null, null, '0', null, '', '22500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02758', '', 'SPORETIK DRY SYRUP (1BOTOL @30ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:31:58', '0', null, '', '78000', '0', 'BOTOL', '', '1', null, 'SPORETIK DRY SYRUP (1BOTOL @30ML) ', '70,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02811', '8998777101995', 'TANTUM VERDE (1BOTOL @120ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:30:46', '0', null, '', '37500', '0', 'BOTOL', '', '1', null, 'TANTUM VERDE (1BOTOL @120ML) ', '35,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00800', '8992916951502', 'DEPAKENE SYRUP 250MG/5ML (1BOTOL @120ML)', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2013-12-11 15:30:17', '0', null, '', '170000', '170000', 'BOTOL', '', '1', 'NOVELL', 'DEPAKENE SYRUP 250MG/5ML (1BOTOL @120ML) ', '90,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80554', '', '.KLOROPHYL', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:48:08', '0', null, '', '95000', '95000', 'BTL', '', '1', null, '.KLOROPHYL ', '80,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02133', '8993113031059', 'OBH COMBI BATUK PLUS FLU (1BOTOL @100ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-11 18:16:25', '0', null, '', '15000', '0', 'BOTOL', '', '1', 'GSK', 'OBH COMBI BATUK PLUS FLU (1BOTOL @100ML) ', '12,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01277', null, 'GUANISTREP SYRUP', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '6000', null, 'BTL', null, null, 'DOXA MANGGALYA UTAMA', 'GUANISTREP SYRUP ', '6,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80835', '', '.PROFILAS SYRUP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:46:24', '0', null, '', '55000', '0', 'BTL', '', '1', null, '.PROFILAS SYRUP ', '49,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01636', '8993005600035', 'LAXADINE (1BOTOL @110ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '50000', null, 'BOTOL', null, null, 'BOEHRINGER INGELHEIM', 'LAXADINE (1BOTOL @110ML) ', '40,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02836', '8995201800080', 'TEMPRA DROPS (1BOTOL @15ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-14 09:23:49', '0', null, '', '38000', '38000', 'BOTOL', '', '1', null, 'TEMPRA DROPS (1BOTOL @15ML) ', '36,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02774', '8994388130157', 'STIMUNO SIRUP (1BOTOL @100ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-11 18:46:28', '0', null, '', '31000', '0', 'BOTOL', '', '1', null, 'STIMUNO SIRUP (1BOTOL @100ML) ', '31,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00262', '8995201800141', 'BABY^S COUGH SYRUP', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-14 16:02:03', '0', null, '', '5500', '0', 'BTOL', '', '1', 'PHAROS', 'BABY^S COUGH SYRUP ', '4,000 / BTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00948', '8995026802023', 'ENKASARI (1BOTOL @120ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '17500', null, 'BOTOL', null, null, 'SANBE', 'ENKASARI (1BOTOL @120ML) ', '13,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('003405', '', 'GLIMUNOS', '0', '1', ' Ana', '2013-08-09 20:43:55', null, null, '0', null, '', '35000', '0', 'DUS', '', '1', null, 'GLIMUNOS ', ' / DUS', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('80477', '', '.IMBOOST FORCE SYRUP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-11 18:15:35', '0', null, '', '78000', '0', 'BTL', '', '1', null, '.IMBOOST FORCE SYRUP ', '62,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02134', '', 'OBH HERBAL 60ML SYRUP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-11 18:16:31', '0', null, '', '10000', '0', 'BTL', '', '1', 'GSK', 'OBH HERBAL 60ML SYRUP ', '8,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81194', '', 'CITOCETIN', '0', '1', ' Merry', '2013-08-17 22:10:30', null, null, '0', null, '', '7000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('03145', '', 'YANTHIPYRIN SYRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-14 09:21:54', '0', null, '', '5000', '0', 'BOTOL', '', '1', null, 'YANTHIPYRIN SYRUP (1BOTOL @60ML) ', '5,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02239', '8999809500953', 'PARATUSIN SIRUP (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '20000', null, 'BOTOL', null, null, 'BAYER', 'PARATUSIN SIRUP (1BOTOL @60ML) ', '15,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02703', '', 'SILADEX MERAH (TDK BERDAHAK)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-12 10:14:32', '0', null, '', '10000', '0', 'BTL', '', '1', null, 'SILADEX SYRUP (TDK BERDAHAK) ', '10,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81195', '', 'SILADEX HIJAU', '0', '1', ' Merry', '2013-08-17 22:12:09', null, null, '0', null, '', '11000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00013', '8997038431017', 'ABILIFY 1MG/ML (150ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-23 16:03:27', '0', null, '', '630000', '0', 'BOTOL', '', '1', 'LAPI', 'ABILIFY 1MG/ML (150ML) ', '630,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80407', '', '.GASTRUCID SYRUP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:48:55', '0', null, '', '5000', '0', 'BTL', '', '1', null, '.GASTRUCID SYRUP ', '5,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00323', '8992843131008', 'BETADINE VAGINAL DOUCHE (100ML)+ ALAT', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-17 17:08:57', '0', null, '', '47500', '0', 'BOTOL', '', '1', 'OTTO', 'BETADINE VAGINAL DOUCHE (100ML)+ ALAT ', '47,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00322', '8992843131015', 'BETADINE VAGINAL DOUCHE (100ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-17 17:09:27', '0', null, '', '45000', '0', 'BOTOL', '', '1', 'OTTO', 'BETADINE VAGINAL DOUCHE (100ML) ', '40,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02310', null, 'PLANTACID FORTE SIRUP ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '27000', null, 'BTL', null, null, 'ASTRAZENECA', 'PLANTACID FORTE SIRUP  ', '27,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81196', '', 'LASERIN 110 ML', '0', '1', ' Merry', '2013-08-17 22:14:03', null, null, '0', null, '', '12000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01501', '', 'KALK NELCO 100 TAB', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2013-11-08 11:11:21', '0', null, '', '20000', '250', 'BTL', 'BIJI', '100', null, 'KALK NELCO 100 TAB ', '13,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01035', '', 'FARMACROL FORTE 200ML BESAR', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-12-21 13:47:29', '0', null, '', '48000', '0', 'BOTOL', '', '0', 'SANBE', 'FARMACROL FORTE SUSPENSI (1BOTOL @200ML) ', '48,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80360', '', ' ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-21 13:46:49', '0', null, '', '40000', '0', 'BTL', '', '1', null, '.FARMACROL SYRUP 100ML ', '39,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80493', '', '.INPEPSA 200ML', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-11 18:51:41', '0', null, '', '78000', '0', 'BTL', '', '1', null, '.INPEPSA 200ML ', '75,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00339', '8999908003508', 'BEXCE SYRUP (1BOTOL @120ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '24000', null, 'BOTOL', null, null, 'PHAROS', 'BEXCE SYRUP (1BOTOL @120ML) ', '24,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02127', null, 'OBAT BATUK CAP KELAPA LAUT (1BOTOL @177ML)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '26000', null, 'BOTOL', null, null, 'GSK', 'OBAT BATUK CAP KELAPA LAUT (1BOTOL @177ML) ', '22,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00614', '8992858517613', 'CEREBROFORT GOLD (1BOTOL @200ML)', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:08:44', '0', null, '', '28000', '24000', 'BOTOL', '', '1', 'PYRIDAM', 'CEREBROFORT GOLD (1BOTOL @200ML) ', '28,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80800', '', '.PEDIAGROW ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:46:50', '0', null, '', '48000', '0', 'BTL', '', '1', null, '.PEDIAGROW  ', '43,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01317', '', 'HEROCYN ( KECIL)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-12-11 18:56:15', '0', null, '', '7500', '0', 'BOTOL', '', '1', 'KALBE', 'HEROCYN ( KECIL) ', '7,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01761', '', 'MADU DESSERT 1 KG', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-11 18:58:07', '0', null, '', '305000', '0', 'BTL', '', '1', 'KALBE', 'MADU DESSERT 1 KG ', '250,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81066', '', '.XAMTHONE', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:39:56', '0', null, '', '195000', '0', 'BTL', '', '1', null, '.XAMTHONE ', '160,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00856', '', 'DILANTIN 0,1g (1BOTOL @100CAP)', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:04:34', '0', null, '', '395000', '0', 'BOTOL', '', '1', 'KIMIA FARMA (KF)', 'DILANTIN 0,1g (1BOTOL @100CAP) ', '370,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02388', null, 'PRIMPERAN SYRUP 50ML', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '21000', null, 'BTL', null, null, 'GUARDIAN P', 'PRIMPERAN SYRUP 50ML ', '21,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80438', null, '.HARNAL 0,2MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@14TAB', '365000', '182500', 'DUS', 'LBR', '2', null, '.HARNAL 0,2MG  @14TAB', '320,000 / DUS', '170,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('81197', '', 'TELON KRIM', '0', '1', ' Merry', '2013-08-17 22:22:34', null, null, '0', null, '', '17500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('80564', '', '.LAGESIL SYP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:48:01', '0', null, '', '30000', '0', 'BTL', '', '1', null, '.LAGESIL SYP ', '28,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00801', '8992916952028', 'DEPAKOTE 250MG (1BOTOL @100TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-30 10:50:36', '0', null, '', '575000', '6500', 'BOTOL', 'BIJI', '100', 'NOVELL', 'DEPAKOTE 250MG (1BOTOL @100TAB) ', '520,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02337', null, 'POLYCROL FORTE SIRUP GEL (1BOTOL @100ML)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '39000', null, 'BOTOL', null, null, 'TANABE', 'POLYCROL FORTE SIRUP GEL (1BOTOL @100ML) ', '29,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01964', '8992725051226', 'MYLANTA SIRUP (1BOTOL @150ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-09-05 17:22:03', '0', null, '', '30000', '30000', 'BOTOL', '', '1', 'MEPROFARM', 'MYLANTA SIRUP (1BOTOL @150ML) ', '27,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01885', '8995202300220', 'MINYAK TELON SCORPIO (1BOTOL @100ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:42:20', '0', null, '', '160000', '13500', 'LSN', 'BTL', '12', 'DARYA-VARIA', 'MINYAK TELON SCORPIO (1BOTOL @100ML) ', '13,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00213', '', 'AROMA TERAPI SAFE CARE', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-17 17:50:30', '0', null, '', '14000', '14000', 'BTL', '', '1', 'DEXA MEDICA', 'AROMA TERAPI SAFE CARE ', '14,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01927', '20525920249', 'MOVE FREE PLUS MSM (1BOTOL @120TAB)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '550000', null, 'BOTOL', null, null, 'PYRIDAM', 'MOVE FREE PLUS MSM (1BOTOL @120TAB) ', '360,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02328', '8997011910089', 'POLAR BEAR/BERUANG (1BOTOL @18ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-20 04:11:19', '0', null, '', '176000', '16000', 'LSN', 'BTL', '12', 'NATURAL ORGANICS', 'POLAR BEAR/BERUANG (1BOTOL @18ML) ', '15,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02278', null, 'PHENYTOIN 100 KAPSUL', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@1BTR', '67500', '1000', 'DUS', 'BTR', '100', null, 'PHENYTOIN 100 KAPSUL @1BTR', '65,000 / DUS', '1,000 / BTR', '100 @1BTR');
INSERT INTO `tbartikel` VALUES ('81198', '', 'PHENYTOIN AK', '0', '1', ' Merry', '2013-08-17 22:34:16', ' Merry', '2013-08-21 16:57:05', '0', null, '', '67500', '1000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('003309', '', 'MADOPAR', '0', '1', ' Ana', '2013-08-09 19:53:08', ' Merry', '2013-08-18 22:09:52', '0', null, '', '140000', '140000', 'BTL', '', '1', null, 'MADOPAR ', ' / LBR', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('00600', '', 'CENDO XITROL', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-13 13:51:53', '0', null, '', '36000', '0', 'BTL', '', '1', 'DANKOS', 'CENDO XITROL ', '25,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02340', '', 'POLYNEL', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-13 13:58:13', '0', null, '', '30000', '0', 'BTL', '', '1', 'TANABE', 'POLYNEL ', '24,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('003303', '', 'VASACON-A', '0', '1', ' Ana', '2013-08-09 13:27:02', null, null, '0', null, '', '25000', '0', 'BTL', '', '1', null, 'VASACON-A ', ' / BTL', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('02885', '', 'TIMOL 0,5% MINIDOSE', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-13 13:54:25', '0', null, '', '35000', '0', 'LBR', '', '1', null, 'TIMOL 0,5% MINIDOSE ', '30,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00594', null, 'CENDO CARPINE 2 %', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '22000', null, 'BTL', null, null, null, 'CENDO CARPINE 2 % ', '22,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02897', '8998898101447', 'TOLAK ANGIN DEWASA ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10ML', '24000', '2500', 'DUS', 'SACHET', '12', null, 'TOLAK ANGIN DEWASA  @10ML', '21,000 / DUS', '2,000 / SACHET', '12 @10ML');
INSERT INTO `tbartikel` VALUES ('00341', null, 'BICNAT 500MG ( 1000 )', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '35000', null, 'BTOL', null, null, 'PHAROS', 'BICNAT 500MG ( 1000 ) ', '50,000 / BTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02675', '', 'SENSI GLOVES', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:35:09', '0', null, '', '45000', '42500', 'DUS', '', '1', 'SARI SEHAT', 'SENSI GLOVES ', '40,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00373', null, 'BIO-LIFE NATURAL OMEGA 3 (1BOTOL @60CAP)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '137500', null, 'BOTOL', null, null, 'KALBE', 'BIO-LIFE NATURAL OMEGA 3 (1BOTOL @60CAP) ', '117,500 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00951', '8992112013042', 'ENZYPLEX (1BOTOL @50TAB)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '40000', null, 'BOTOL', null, null, 'SANBE', 'ENZYPLEX (1BOTOL @50TAB) ', '39,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03120', '8992837205531', 'VOLTAREN EMULGEL 50g', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:26:24', '0', null, '', '130000', '0', 'TUBE', '', '1', null, 'VOLTAREN EMULGEL 50g ', '95,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00380', '8992858213119', 'BIOPLACENTON JELLY 15g', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '12000', null, 'TUBE', null, null, 'OTTO', 'BIOPLACENTON JELLY 15g ', '11,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01505', '8992858245110', 'KALMICETINE 20MG 15g', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:03:10', '0', null, '', '12000', '0', 'TUBE', '', '1', null, 'KALMICETINE 20MG 15g ', '11,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81199', '', 'GITASPLUS', '0', '1', ' Merry', '2013-08-17 22:50:19', null, null, '0', null, '10 BIJI', '90000', '30000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02025', null, 'NEUROBAT ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '95000', '10000', 'DUS', 'LBR', '10', 'NOVELL', 'NEUROBAT  @10TAB', '85,000 / DUS', '9,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01434', null, 'INTERVASK 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '135000', '45000', 'DUS', 'LBR', '3', 'HEXPHARM JAYA (HJ)', 'INTERVASK 10MG  @10TAB', '135,000 / DUS', '45,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01435', null, 'INTERVASK 5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '125000', '42500', 'DUS', 'LBR', '3', 'KIMIA FARMA (KF)', 'INTERVASK 5MG  @10TAB', '125,000 / DUS', '42,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02860', null, 'THEOBRON ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '110000', '12000', 'DUS', 'LBR', '10', null, 'THEOBRON  @10TAB', '100,000 / DUS', '11,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('81200', '', 'SCOPAMIN', '0', '1', ' Merry', '2013-08-17 22:53:20', null, null, '0', null, '10 BIJI', '130000', '14000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('80668', '', '.MEFINTER 500MG @4LBR', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:50:58', '0', null, '4BIJI', '135000', '5500', 'BOX', 'LBR', '25', null, '.MEFINTER 500MG @4LBR ', '5,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02026', null, 'NEUROBAT A ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '100000', '5000', 'DUS', 'LBR', '25', 'COMBIPHAR', 'NEUROBAT A  @4TAB', '100,000 / DUS', '5,000 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('80244', null, '.COBAZIM 3000MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@4TAB', '390000', '16500', 'DUS', 'LBR', '25', null, '.COBAZIM 3000MG  @4TAB', '380,000 / DUS', '16,000 / LBR', '25 @4TAB');
INSERT INTO `tbartikel` VALUES ('02401', null, 'PROGASTRIC ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '100000', '5000', 'DUS', 'LBR', '20', 'GUARDIAN P', 'PROGASTRIC  @10TAB', '100,000 / DUS', '5,000 / LBR', '20 @10TAB');
INSERT INTO `tbartikel` VALUES ('02215', '', 'OVESTIN CREM', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:25:47', '0', null, '', '150000', '0', 'TUBE', '', '1', 'SANDOZ', 'OVESTIN CREM ', '150,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80164', '', '.BURNAZIN KREM', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 18:00:06', '0', null, '', '50000', '0', 'TUBE', '', '1', null, '.BURNAZIN KREM ', '42,500 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01788', null, 'MEDERMA GEL 20g', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '170000', null, 'TUBE', null, null, null, 'MEDERMA GEL 20g ', '120,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80337', '', '.ESPERSON CREAM', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:58:26', '0', null, '', '110000', '0', 'TUBE', '', '1', null, '.ESPERSON CREAM ', '97,500 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00513', null, 'CANESTEN SD VAGINAL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '120000', null, 'DUS', null, null, 'MECOSIN', 'CANESTEN SD VAGINAL ', '100,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01192', null, 'GENALTEN CREAM 5g', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '5000', null, 'TUBE', null, null, 'PFIZER', 'GENALTEN CREAM 5g ', '5,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02923', '', 'TRANSPULMIN BB BALSAM 20g', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:43:13', '0', null, '', '55000', '0', 'TUBE', '', '1', null, 'TRANSPULMIN BB BALSAM 20g ', '47,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01599', null, 'LANAKELOID-E CREAM 10g', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '57500', null, 'TUBE', null, null, null, 'LANAKELOID-E CREAM 10g ', '66,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02238', '8995232700151', 'PARASOL SPF 33 20g', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-25 18:06:20', '0', null, '', '50000', '0', 'TUBE', '', '1', 'BAYER', 'PARASOL SPF 33 20g ', '44,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80929', '', '.SKIZON KRIM', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:43:59', '0', null, '', '8000', '0', 'TUBE', '', '1', null, '.SKIZON KRIM ', '7,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01344', null, 'HYDROCORTISONE 2,5% CREAM 5G (MARIN)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '7000', null, 'TUBE', null, null, 'KIMIA FARMA (KF)', 'HYDROCORTISONE 2,5% CREAM 5G (MARIN) ', '6,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00384', null, 'BIOQUIN FORTE KRIM 15g', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '37500', null, 'TUBE', null, null, 'GRAHA FARMA', 'BIOQUIN FORTE KRIM 15g ', '37,500 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81201', '', 'VIRUMERZ 10 GR', '0', '1', ' Merry', '2013-08-17 23:02:07', ' Merry', '2013-11-11 09:51:36', '0', null, '', '65000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00378', null, 'BIONECT CREAM 15g', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '100000', null, 'TUBE', null, null, 'IFARS', 'BIONECT CREAM 15g ', '100,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01369', null, 'IKAGEN CREAM 10g', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '13000', null, 'TUBE', null, null, 'BERNOFARM', 'IKAGEN CREAM 10g ', '13,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00807', '', 'DERMATOP CREAM 5G', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:06:47', '0', null, '', '37500', '0', 'TUBE', '', '1', 'KALBE', 'DERMATOP CREAM 5G ', '37,500 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81093', '', '.ZOTER CREAM 5G', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:38:15', '0', null, '', '35000', '0', 'TUBE', '', '1', null, '.ZOTER CREAM 5G ', '36,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01546', null, 'KLORFESON KRIM 10g', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '7000', null, 'TUBE', null, null, 'ERPHA', 'KLORFESON KRIM 10g ', '6,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01020', null, 'FAKTU CREAM 20G', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '107500', null, 'TUBE', null, null, 'SANBE', 'FAKTU CREAM 20G ', '87,500 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01056', null, 'FAXIDEN GEL 10g', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '40000', null, 'TUBE', null, null, 'SANBE', 'FAXIDEN GEL 10g ', '40,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80671', '', '.MELANOX CREM', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:49:44', '0', null, '', '29000', '0', 'TUBE', '', '1', null, '.MELANOX CREM ', '26,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81202', '', 'ACTIVE CLEAR', '0', '1', ' Merry', '2013-08-17 23:05:35', null, null, '0', null, '', '22500', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('80886', '', '.SAGESTAM CREAM', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:25:22', '0', null, '', '13000', '0', 'TUBE', '', '1', null, '.SAGESTAM CREAM ', '12,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02853', '', 'TERRA-CORTRIL 5g', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:29:19', '0', null, '', '17500', '0', 'TUBE', '', '1', null, 'TERRA-CORTRIL 5g ', '17,500 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('003302', '', 'DERMOWHITE CREAM 15G', '0', '1', ' Ana', '2013-08-09 13:14:54', null, null, '0', null, '', '30000', '0', 'TUBE', '', '1', null, 'DERMOWHITE CREAM 15G ', ' / TUBE', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('01111', '', 'FLEXOZIN KRIM 20g', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-18 18:13:56', '0', null, '', '60000', '0', 'TUBE', '', '1', 'SCAN', 'FLEXOZIN KRIM 20g ', '57,500 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80390', '', '.FORMYCO CREM @10GRM', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:49:06', '0', null, '', '20000', '0', 'TUBE', '', '1', null, '.FORMYCO CREM @10GRM ', '18,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80224', '', '.CINOLON CREAM', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-12 19:11:38', '0', null, '', '16000', '0', 'TUBE', '', '1', null, '.CINOLON CREAM ', '15,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80992', '', '.TOP CORT CREAM', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:41:27', '0', null, '', '22000', '22000', 'TUBE', '', '1', null, '.TOP CORT CREAM ', '21,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01161', '8998667500037', 'FUNGIDERM KRIM 10g', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '19000', null, 'TUBE', null, null, 'NOVARTIS', 'FUNGIDERM KRIM 10g ', '21,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01795', null, 'MEDI-KLIN TR 0,025%', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '40000', null, 'TUBE', null, null, 'MERCK', 'MEDI-KLIN TR 0,025% ', '37,500 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01995', '8993347000081', 'NEBACETIN POWDER', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '24000', null, 'TUBE', null, null, 'ASTELLAS', 'NEBACETIN POWDER ', '20,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01196', null, 'GENOINT SALEP KULIT 15g', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '5000', null, 'TUBE', null, null, 'PFIZER', 'GENOINT SALEP KULIT 15g ', '5,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01544', null, 'KLORAMIXIN (1BOTOL @10ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '21000', null, 'BOTOL', null, null, 'COMBIPHAR', 'KLORAMIXIN (1BOTOL @10ML) ', '20,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01545', null, 'KLORAMIXIN-D (1BOTOL @10ML)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '25000', null, 'BOTOL', null, null, 'KALBE', 'KLORAMIXIN-D (1BOTOL @10ML) ', '25,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01509', '', 'KALPANAX K', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-12-13 16:08:30', '0', null, '', '7000', '0', 'TUBE', '', '1', 'SANBE', 'KALPANAX K ', '6,500 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80296', '            ', '.DIGENTA CREAM 10g', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:58:34', '0', null, '', '45000', '0', 'TUBE', '', '1', null, '.DIGENTA CREAM 10g ', '40,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00791', '', 'DECUBAL CREAM 40g', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:07:17', '0', null, '', '40000', '0', 'TUBE', '', '1', 'KALBE', 'DECUBAL CREAM 20g ', '35,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01059', null, 'FELDENE GEL 0,5% 15g', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '70000', null, 'TUBE', null, null, 'SANBE', 'FELDENE GEL 0,5% 15g ', '70,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01060', null, 'FELDENE GEL 0,5% 25g', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '120000', null, 'TUBE', null, null, 'SANBE', 'FELDENE GEL 0,5% 25g ', '110,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00303', '8995232700472', 'BENZOLAC-CL GEL 10g', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:22:10', '0', null, '', '30000', '0', 'TUBE', '', '1', 'DARYA VARIA', 'BENZOLAC-CL GEL 10g ', '27,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02720', '', 'SKINTEX ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:34:48', '0', null, '', '7000', '0', 'TUBE', '', '1', null, 'SKINTEX  ', '7,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00727', '', 'COUNTERPAIN PXM 15GR', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2015-03-31 11:54:25', '0', null, '', '70000', '70000', 'TUBE', '', '1', 'KALBE', 'COUNTERPAIN PXM 15g ', '63,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01543', '8995232700281', 'KLODERMA 0,05% SALEP 10g', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '32500', null, 'TUBE', null, null, 'KALBE', 'KLODERMA 0,05% SALEP 10g ', '26,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01525', '', 'KENACORT-A CREAM 10g', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-12-13 16:24:30', '0', null, '', '80000', '0', 'TUBE', '', '1', 'MERCK', 'KENACORT-A CREAM 10g ', '77,500 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01958', '', 'MYCO-Z SALEP 10g', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-13 16:24:42', '0', null, '', '75000', '0', 'TUBE', '', '1', 'ACTAVIS', 'MYCO-Z SALEP 10g ', '67,500 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00928', null, 'ELOX KRIM 0,1% 10g', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '70000', null, 'TUBE', null, null, 'SANBE', 'ELOX KRIM 0,1% 10g ', '50,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81203', '', 'RYZO TAB', '0', '1', ' Merry', '2013-08-17 23:13:46', null, null, '0', null, '10 BIJI', '80000', '40000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('03190', '8993430162238', 'ZOTIC (3STRIP @10KAPLET)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 17:42:44', '0', null, '@10 BIJI', '200000', '67500', 'DUS', 'LBR', '3', null, 'ZOTIC (3STRIP @10KAPLET) ', '160,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81112', '', 'VIRETH 200MG ', '0', '1', ' Merry', '2013-08-13 13:58:10', ' Merry', '2013-08-17 17:39:15', '0', null, '@10 BIJI', '80000', '40000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81171', '', 'VIVACE 5 MG', '0', '1', ' Merry', '2013-08-17 17:40:39', null, null, '0', null, '@10 BIJI', '75000', '25000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01374', '', 'ILOS 100MG (3LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 17:38:43', '0', null, '@10 BIJI', '330000', '110000', 'DUS', 'LBR', '3', 'DEXA MEDICA', 'ILOS 100MG (3LBR @10TAB) ', '100,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('081120', '', 'CITION', '0', '1', ' Merry', '2013-08-14 19:12:03', ' Merry', '2013-08-17 17:38:01', '0', null, '@10 BIJI', '315000', '110000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('08112', '', 'VOMIPER', '0', '1', ' Merry', '2013-08-13 13:55:41', ' Merry', '2013-08-17 17:32:57', '0', null, '10BIJI', '105000', '35000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81170', '', 'VITAFEM', '0', '1', ' Merry', '2013-08-17 17:35:39', null, null, '0', null, '@6 BIJI', '30000', '6000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81204', '', 'ANTI ZINC', '0', '1', ' Merry', '2013-08-17 23:17:24', null, null, '0', null, '', '50000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00798', '', 'DEGIROL 1STRIP @4', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-19 12:42:29', '0', null, '', '3500', '0', 'LBR', '', '1', 'DANKOS', 'DEGIROL 1STRIP @4 ', ' / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81205', '', 'EMPOWE TREELAIN', '0', '1', ' Merry', '2013-08-17 23:20:13', null, null, '0', null, '', '65000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('03113', '', 'VOLINOL 500MG ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 17:27:28', '0', null, '@6BIJI', '300000', '60000', 'BOX', 'LBR', '5', null, 'VOLINOL 500MG (1STRIP @6KAPLET) ', '60,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81116', '', 'PERBAN ECERAN', '0', '1', ' Merry', '2013-08-14 10:35:18', null, null, '0', null, '', '1500', '0', 'ROL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81207', '', 'PERBAN BESAR', '0', '1', ' Merry', '2013-08-17 23:28:01', null, null, '0', null, '', '3000', '3000', 'ROL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02729', null, 'SOFRATULLE ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '220000', '22500', 'DUS', 'LBR', '10', null, 'SOFRATULLE  @10TAB', '180,000 / DUS', '19,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01765', null, 'MAGARD FA 6 TAB', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '32000', null, 'LBR', null, null, 'GALENIUM PHARMASIA', 'MAGARD FA 6 TAB ', '32,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('003509', '', 'KAPAS K', '0', '1', ' Ana', '2013-08-10 07:56:55', null, null, '0', null, '', '3500', '0', 'TUBE', '', '1', null, 'KAPAS K ', ' / TUBE', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('00239', null, 'ATOFAR 10MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '300000', '100000', 'DUS', 'LBR', '3', 'SERVIER', 'ATOFAR 10MG @10TAB', '285,000 / DUS', '90,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00539', null, 'CARPIATON 100MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '250000', '27500', 'DUS', 'LBR', '10', 'ACTAVIS', 'CARPIATON 100MG @10TAB', '250,000 / DUS', '27,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01031', null, 'FARMABES 30MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '37500', '4000', 'DUS', 'LBR', '10', 'SANBE', 'FARMABES 30MG  @10TAB', '25,000 / DUS', '3,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02526', null, 'RENADINAC 50MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '40000', '5000', 'DUS', 'LBR', '10', 'PHAPROS', 'RENADINAC 50MG  @10TAB', '30,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01040', null, 'FARMASAL 100MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '70000', '8000', 'DUS', 'LBR', '10', 'SANBE', 'FARMASAL 100MG  @10TAB', '60,000 / DUS', '6,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01049', null, 'FARSORBID 5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '27500', '3000', 'DUS', 'LBR', '10', 'SANBE', 'FARSORBID 5MG  @10TAB', '18,000 / DUS', '2,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01042', null, 'FARMOTEN 12,5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '28000', '3500', 'DUS', 'LBR', '10', 'SANBE', 'FARMOTEN 12,5MG  @10TAB', '28,000 / DUS', '3,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01043', null, 'FARMOTEN 25MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '45000', '5000', 'DUS', 'LBR', '10', 'SANBE', 'FARMOTEN 25MG  @10TAB', '45,000 / DUS', '3,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02706', null, 'SIMARC 2 ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '90000', '9000', 'DUS', 'LBR', '10', null, 'SIMARC 2  @10TAB', '75,000 / DUS', '8,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01033', '', 'FARMACROL FORTE TABLET', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2014-01-16 10:20:04', '0', null, '@10TAB', '85000', '9000', 'DUS', 'LBR', '10', 'SANBE', 'FARMACROL FORTE  @10TAB', '70,000 / DUS', '7,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01152', '20311322', 'FRITENS 300MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '205000', '105000', 'DUS', 'LBR', '2', 'ERPHA', 'FRITENS 300MG @10TAB', '205,000 / DUS', '105,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('01709', '8993347007905', 'LIZOR 500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '490000', '250000', 'DUS', 'LBR', '2', 'IFARS', 'LIZOR 500MG  @10TAB', '490,000 / DUS', '250,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('02504', null, 'RECOLFAR ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '150000', '50000', 'DUS', 'LBR', '3', 'SUPPLEMAX', 'RECOLFAR  @10TAB', '150,000 / DUS', '45,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01022', null, 'FALERGI ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '195000', '32500', 'DUS', 'LBR', '6', 'SANBE', 'FALERGI  @10TAB', '165,000 / DUS', '27,500 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('00315', '8992858613315', 'BETABLOK 50MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '16000', '6000', 'DUS', 'LBR', '3', 'MEPROFARM', 'BETABLOK 50MG @10TAB', '16,000 / DUS', '6,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02516', null, 'RELIDE 2MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '75000', '25000', 'DUS', 'LBR', '3', 'PHAROS', 'RELIDE 2MG  @10TAB', '75,000 / DUS', '25,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01242', null, 'GLUDEPATIC 500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '35000', '4000', 'DUS', 'LBR', '10', 'SURYA DERMATO', 'GLUDEPATIC 500MG  @10TAB', '32,500 / DUS', '3,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00744', '', 'CRYPTAL 200MG (1STRIP @4TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-17 16:02:47', '0', null, '', '260000', '0', 'DUS', '', '1', 'KALBE', 'CRYPTAL 200MG (1STRIP @4TAB) ', '225,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01047', null, 'FARSIX 40MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '105000', '12000', 'DUS', 'LBR', '10', 'SANBE', 'FARSIX 40MG  @10TAB', '100,000 / DUS', '10,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01321', '8997006970364', 'HEXAVASK 5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '45000', '17500', 'DUS', 'LBR', '3', 'DEXA MEDICA', 'HEXAVASK 5MG  @10TAB', '45,000 / DUS', '20,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('80304', null, '.DIVASK 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '332500', '112000', 'DUS', 'LBR', '3', null, '.DIVASK 10MG  @10TAB', '240,000 / DUS', '90,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('000003', '', 'GABRYL 250MG', '0', '1', ' Ana', '2013-08-09 21:41:37', null, null, '0', null, '', '47500', '0', 'LBR', '', '1', null, 'GABRYL 250MG ', ' / LBR', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('02069', null, 'NIRMADIL 5MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '135000', '45000', 'DUS', 'LBR', '3', 'SOHO', 'NIRMADIL 5MG @10TAB', '135,000 / DUS', '45,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01039', null, 'FARMALAT 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '48000', '5000', 'DUS', 'LBR', '10', 'SANBE', 'FARMALAT 10MG  @10TAB', '20,000 / DUS', '2,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01524', null, 'KENACORT 4MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '430000', '44000', 'DUS', 'LBR', '10', 'NICHOLAS', 'KENACORT 4MG @10TAB', '390,000 / DUS', '40,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80066', null, '.ANGIOTEN ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '315000', '105000', 'DUS', 'LBR', '3', null, '.ANGIOTEN  @10TAB', '315,000 / DUS', '105,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02035', null, 'NEUROLIN 500MG @10TAB', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '95000', null, 'LBR', null, null, null, 'NEUROLIN 500MG @10TAB ', '95,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02031', null, 'NEUROCHOL ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@5TAB', '435000', '44000', 'DUS', 'LBR', '10', 'SOHO', 'NEUROCHOL  @5TAB', '385,000 / DUS', '40,000 / LBR', '10 @5TAB');
INSERT INTO `tbartikel` VALUES ('01610', null, 'LANTUROL-200', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '190000', '20000', 'DUS', 'LBR', '10', 'VITABIOTICS', 'LANTUROL-200 @10TAB', '160,000 / DUS', '17,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01661', '', 'LEXA (1STRIP @10KAPLET)', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2015-06-12 12:24:13', '0', null, '', '225000', '25000', 'LBR', 'BIJI', '10', 'SANOFI AVENTIS', 'LEXA (1STRIP @10KAPLET) ', '225,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('003408', '', 'LANABAL 500 MG', '0', '1', ' Ana', '2013-08-09 21:29:26', null, null, '0', null, '', '22500', '0', 'LBR', '', '1', null, 'LANABAL 500 MG ', ' / LBR', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('01600', null, 'LANAVEN (10STRIP @10CAP)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '500000', '50000', 'DUS', 'LBR', '10', null, 'LANAVEN (10STRIP @10CAP) @10TAB', '390,000 / DUS', '43,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80297', '', '.DIGEST 30MG', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:25:32', '0', null, '', '100000', '0', 'LBR', '', '1', null, '.DIGEST 30MG ', '100,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80942', '', '.STABLON TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:42:49', '0', null, '', '70000', '0', 'LBR', '', '1', null, '.STABLON TAB ', '70,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81208', '', 'ARTRILOX 7,5MG', '0', '1', ' Merry', '2013-08-17 23:46:25', ' Merry', '2013-11-10 17:22:13', '0', null, '10BIJI', '95000', '47500', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02714', null, 'SINOVA 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '24000', '12500', 'DUS', 'LBR', '2', null, 'SINOVA 10MG  @10TAB', '24,000 / DUS', '12,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('80627', '', '.LITORCOM 20MG @6TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 17:47:46', '0', null, '', '65000', '0', 'LBR', '', '1', null, '.LITORCOM 20MG @6TAB ', '55,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01598', null, 'LANAKELOID', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '680000', '70000', 'DUS', 'LBR', '10', 'INDO SEHAT LESTARI', 'LANAKELOID @10TAB', '475,000 / DUS', '47,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01684', null, 'LIPANTHYL PENTA 145MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '525000', '175000', 'DUS', 'LBR', '3', 'ALCON', 'LIPANTHYL PENTA 145MG @10TAB', '390,000 / DUS', '130,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01603', null, 'LANCOLIN 500MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '270000', '90000', 'DUS', 'LBR', '3', 'BERNOFARM', 'LANCOLIN 500MG @10TAB', '270,000 / DUS', '85,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02455', null, 'PROZA ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '180000', '60000', 'DUS', 'LBR', '3', 'IBOE', 'PROZA  @10TAB', '180,000 / DUS', '60,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('003406', '', 'TENSIRA 300', '0', '1', ' Ana', '2013-08-09 21:18:01', null, null, '0', null, '', '0', '0', 'LBR', '', '1', null, 'TENSIRA 300 ', ' / LBR', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('003204', '', 'EVALEN GEL 0.1%', '0', '1', ' Ana', '2013-08-09 12:23:28', null, null, '0', null, '', '45000', '0', 'TUBE', '', '1', null, 'EVALEN GEL 0.1% ', ' / TUBE', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('00588', '', 'CELESTODERM-V+ GARAMYCIN KRIM 10g', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-20 12:26:14', '0', null, '', '82500', '0', 'TUBE', '', '1', 'TANABE', 'CELESTODERM-V+ GARAMYCIN KRIM 10g ', '70,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80225', '', '.CINOLON-N CREAM 10G', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-12 19:11:32', '0', null, '', '17500', '0', 'TUBE', '', '1', null, '.CINOLON-N CREAM 10G ', '16,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00866', '', 'DIPROSONE OV KRIM 10g', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:04:27', '0', null, '', '80000', '80000', 'TUBE', '', '1', 'KALBE', 'DIPROSONE OV KRIM 10g ', '67,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00805', '', 'DERMATIX 7GRM', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:06:52', '0', null, '', '142500', '0', 'TUBE', '', '1', 'KALBE', 'DERMATIX 7GRM ', '120,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02908', '', 'TOPSY CREAM 5 GM', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:28:43', '0', null, '', '40000', '0', 'TUBE', '', '1', null, 'TOPSY CREAM 5 GM ', '40,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81209', '', 'KALPANAX CAIR', '0', '1', ' Merry', '2013-08-17 23:57:43', null, null, '0', null, '', '4500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02264', null, 'PERDERM KRIM 5g', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '40000', null, 'TUBE', null, null, 'BOEHRINGER INGELHEIM', 'PERDERM KRIM 5g ', '40,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('003203', '', 'DIPROGENTA KRIM 5G', '0', '1', ' Ana', '2013-08-09 12:05:31', null, null, '0', null, '', '45000', '0', 'TUBE', '', '1', null, 'DIPROGENTA KRIM 5G ', ' / TUBE', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('003207', '', 'BACTROBAN SALEP 5G', '0', '1', ' Ana', '2013-08-09 12:43:58', null, null, '0', null, '', '39000', '0', 'TUBE', '', '1', null, 'BACTROBAN SALEP 5G ', ' / TUBE', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('03087', '8995232700588', 'VITACID CREAM 0,05% 20g', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:27:28', '0', null, '', '34000', '0', 'TUBE', '', '1', null, 'VITACID CREAM 0,05% 20g ', '5,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00764', '', 'DAKTARIN DIAPER', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:07:31', '0', null, '', '54000', '0', 'DUS', '', '1', 'FAHRENHEIT', 'DAKTARIN DIAPER ', '52,500 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('003301', '', 'VITACID CREAM 1% ', '0', '1', ' Ana', '2013-08-09 13:04:22', ' Merry', '2013-08-23 15:49:18', '0', null, '', '42500', '0', 'TUBE', '', '1', null, 'VITACID CREAM 15G ', ' / TUBE', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('01497', '', 'KALCINOL N KRIM 10M GR', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:03:20', '0', null, '', '12000', '0', 'TUBE', '', '1', 'PHAROS', 'KALCINOL N KRIM 10M GR ', '12,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80958', '', '.SYNALTEN CREAM', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:41:51', '0', null, '', '5000', '0', 'TUBE', '', '1', null, '.SYNALTEN CREAM ', '7,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02926', '', 'TRAVOCORT CREAM 5g', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:28:28', '0', null, '', '70000', '0', 'TUBE', '', '1', null, 'TRAVOCORT CREAM 5g ', '70,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80979', '', '.THECORT CREM', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:41:44', '0', null, '', '42500', '0', 'TUBE', '', '1', null, '.THECORT CREM ', '38,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00680', '', 'CO APROVEL 150/12,5MG (2STRIP @14TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-19 10:26:47', '0', null, '14BIJI', '320000', '160000', 'DUS', 'LBR', '2', 'FAHRENHEIT', 'CO APROVEL 150/12,5MG (2STRIP @14TAB) ', '250,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80077', null, '.APROVEL 150MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@14TAB', '315000', '157500', 'DUS', 'LBR', '2', null, '.APROVEL 150MG  @14TAB', '250,000 / DUS', '125,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('02646', null, 'SCANDEXON', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '20000', '2500', 'DUS', 'LBR', '10', 'MEDIFARMA', 'SCANDEXON @10TAB', '18,000 / DUS', '2,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01720', null, 'LOPAMID', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '30000', '3500', 'DUS', 'LBR', '10', 'NOVELL', 'LOPAMID @10TAB', '25,000 / DUS', '3,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('03053', null, 'VESPERUM ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '40000', '7000', 'DUS', 'LBR', '10', null, 'VESPERUM  @10TAB', '40,000 / DUS', '7,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02579', null, 'ROVAMYCINE 1.5 M.I.U ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '825000', '82500', 'DUS', 'LBR', '10', 'EAGLE INDO PHARMA', 'ROVAMYCINE 1.5 M.I.U  @10TAB', '825,000 / DUS', '82,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00587', '', 'CELESTIK 10TAB', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-20 12:26:17', '0', null, '', '18000', '18000', 'LBR', '', '0', 'DEXA MEDICA', 'CELESTIK 10TAB ', '15,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00224', '8993347001651', 'ASCARDIA 80MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '210TAB', '107500', '12000', 'DUS', 'LBR', '10', 'DEXA MEDICA', 'ASCARDIA 80MG 210TAB', '72,500 / DUS', '7,500 / LBR', '10 210TAB');
INSERT INTO `tbartikel` VALUES ('01102', '', 'FLAGYL FORTE 500MG 10TAB', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-14 18:41:40', '0', null, '', '62500', '0', 'LBR', '', '1', 'INTERBAT', 'FLAGYL FORTE 500MG 10TAB ', '58,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03184', '8992858697810', 'ZOFREDAL 2MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '270000', '90000', 'DUS', 'LBR', '3', null, 'ZOFREDAL 2MG @10TAB', '270,000 / DUS', '90,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02878', null, 'TIDIFAR 400MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '40000', '8000', 'DUS', 'LBR', '10', null, 'TIDIFAR 400MG @10TAB', '40,000 / DUS', '10,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01264', null, 'GRAFACHLOR ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '25000', '5000', 'DUS', 'LBR', '10', 'MERCK', 'GRAFACHLOR  @10TAB', '20,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00530', null, 'CARDISMO', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '260000', '27500', 'DUS', 'LBR', '10', 'HEXPHARM JAYA (HJ)', 'CARDISMO @10TAB', '270,000 / DUS', '27,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00223', '8993347001668', 'ASCARDIA 160MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '130000', '13500', 'DUS', 'LBR', '10', 'OTTO', 'ASCARDIA 160MG @10TAB', '105,000 / DUS', '11,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('03136', null, 'WINATIN ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '40000', '5000', 'DUS', 'LBR', '10', null, 'WINATIN  @10TAB', '40,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01695', null, 'LIPIVAST 10MG 10TAB', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '10000', null, 'LBR', null, null, 'ALCON', 'LIPIVAST 10MG 10TAB ', '10,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01940', null, 'MUCOPECT 30MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '315000', '32500', 'DUS', 'LBR', '10', 'DARYA-VARIA', 'MUCOPECT 30MG @10TAB', '260,000 / DUS', '26,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02050', null, 'NEVRAMIN', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '13000', null, 'LBR', null, null, 'ASTRAZENECA', 'NEVRAMIN ', '14,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00457', null, 'BROMIFAR ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '25000', '7000', 'DUS', 'LBR', '10', 'OTSUKA', 'BROMIFAR  @10TAB', '25,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80456', '', 'HIBONE 300MG', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-17 17:05:52', '0', null, '', '85000', '85000', 'BTL', '', '1', null, '.HI-BONE @30TAB ', '85,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00310', null, 'BESTALIN 25MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '345000', '35000', 'DUS', 'LBR', '10', 'IFARS', 'BESTALIN 25MG @10TAB', '260,000 / DUS', '29,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01593', null, 'LAMESON 4MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '310000', '32000', 'DUS', 'LBR', '10', 'TRESNO JOYO', 'LAMESON 4MG  @10TAB', '260,000 / DUS', '26,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00961', null, 'ERGOTIKA 4,5 MG 10 TAB', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '60000', null, 'LBR', null, null, 'SANBE', 'ERGOTIKA 4,5 MG 10 TAB ', '60,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01902', '', 'MKP LANG (1BOTOL @15ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-22 14:56:04', '0', null, '', '58000', '5000', 'LSN', 'BTL', '12', 'SOHO', 'MKP LANG (1BOTOL @15ML) ', ' / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01903', '8993176111293', 'MKP LANG (1BOTOL @210ML)JUMBO', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-22 14:55:16', '0', null, '', '572500', '47000', 'LSN', 'BTL', '12', 'SOHO', 'MKP LANG (1BOTOL @210ML) ', '39,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01904', '8993176111262', 'MKP LANG (1BOTOL @30ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-22 14:54:54', '0', null, '', '92500', '9000', 'LSN', 'BTL', '12', 'ETHICA', 'MKP LANG (1BOTOL @30ML) ', '7,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01905', '8993176111279', 'MKP LANG (1BOTOL @60ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-22 14:54:14', '0', null, '', '170000', '16000', 'LSN', 'BTL', '12', 'ETHICA', 'MKP LANG (1BOTOL @60ML) ', '15,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00891', null, 'DOPAMET 250MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '170000', '18000', 'DUS', 'LBR', '10', 'SANBE', 'DOPAMET 250MG  @10TAB', '170,000 / DUS', '18,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01662', '', 'LEXACROL TAB', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-23 16:24:41', '0', null, '10BIJI', '65000', '5000', 'BOX', 'LBR', '15', null, 'LEXACROL TAB ', '5,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00833', null, 'DIABEX FORTE', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '195000', '23000', 'DUS', 'LBR', '10', 'DEXA MEDICA', 'DIABEX FORTE @10TAB', '145,000 / DUS', '15,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00263', null, 'BACBUTINH FORTE ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '200000', '22000', 'DUS', 'LBR', '10', 'TRIMAN INDUSTRI', 'BACBUTINH FORTE  @10TAB', '167,500 / DUS', '17,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80308', null, '.DOLO NEUROBION ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '150000', '16000', 'DUS', 'LBR', '10', null, '.DOLO NEUROBION  @10TAB', '125,000 / DUS', '13,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00112', null, 'ALPHAMOL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '45000', '5000', 'DUS', 'LBR', '15', 'LAPI', 'ALPHAMOL @10TAB', '45,000 / DUS', '5,000 / LBR', '15 @10TAB');
INSERT INTO `tbartikel` VALUES ('01910', null, 'MOLAGIT ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '75000', '5000', 'DUS', 'LBR', '15', 'MAHAKAM BETA FARMA', 'MOLAGIT  @10TAB', '75,000 / DUS', '5,000 / LBR', '15 @10TAB');
INSERT INTO `tbartikel` VALUES ('00824', null, 'DEXTRAL FORTE', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '65000', '7000', 'DUS', 'LBR', '10', 'NYCOMED', 'DEXTRAL FORTE @10TAB', '45,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00109', null, 'ALPARA', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '80000', '7500', 'DUS', 'LBR', '15', 'ETHICA', 'ALPARA @10TAB', '52,500 / DUS', '5,000 / LBR', '15 @10TAB');
INSERT INTO `tbartikel` VALUES ('00823', null, 'DEXTRAL ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '55000', '6000', 'DUS', 'LBR', '15', 'FAHRENHEIT', 'DEXTRAL  @10TAB', '42,500 / DUS', '5,000 / LBR', '15 @10TAB');
INSERT INTO `tbartikel` VALUES ('01565', null, 'KSR', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '240000', '24000', 'DUS', 'LBR', '10', 'COMBIPHAR', 'KSR @10TAB', '250,000 / DUS', '25,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01535', null, 'KETOSTERIL', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '680000', '68000', 'DUS', 'LBR', '10', 'LAPI', 'KETOSTERIL @10TAB', '650,000 / DUS', '65,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01311', '', 'HERBESSER CD 100MG PATEN', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-10 16:21:40', '0', null, '@10TAB', '255000', '85000', 'DUS', 'LBR', '3', 'LANDSON', 'HERBESSER CD 100MG  AK @10TAB', '600,000 / DUS', '60,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80379', '', '.FLUIMUCIL 200MG @10CAP', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 15:44:47', '0', null, '@10 BIJI', '300000', '50000', 'BOX', 'LBR', '6', null, '.FLUIMUCIL 200MG @10CAP ', '44,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01134', '', 'FOLAVIT 1 MG', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 15:46:02', '0', null, '@4BIJI', '187500', '7500', 'BOX', 'LBR', '25', 'GUARDIAN P', 'FOLAVIT 1MG @ BLISTER4 BUTIR ', '7,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81138', '', 'FLUIMUCIL PEDRIATIC GRANUL', '0', '1', ' Merry', '2013-08-17 15:19:42', ' Merry', '2013-09-29 16:52:27', '0', null, '', '125000', '4000', 'BOX', 'SCH', '30', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02598', '', 'SALEP 88 1TUBE', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2014-02-03 11:35:17', '0', null, '', '7000', '0', 'TUBE', '', '1', 'LAPI', 'SALEP 88 1TUBE ', '5,000 / TUBE', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00421', '', 'BODREX FLU/BATUK BERDAHAK', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-22 18:20:13', '0', null, '4BIJI', '40000', '2500', 'DUS', 'LBR', '25', 'BOEHRINGER INGELHEIM', 'BODREX FLU/BATUK BERDAHAK ', ' ', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02610', null, 'SALONPAS HOT MERAH', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@1SACHETS', '60000', '6500', 'DUS', 'SACHETS', '12', 'NOVARTIS', 'SALONPAS HOT MERAH @1SACHETS', '52,000 / DUS', '6,000 / SACHETS', '12 @1SACHETS');
INSERT INTO `tbartikel` VALUES ('80069', '', '.ANTIMO ANAK', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:24:15', '0', null, '', '13000', '1500', 'DUS', '', '1', null, '.ANTIMO ANAK ', '13,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81079', '', '.ZEMYC 150MG (3LBR @1CAP)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-18 00:49:26', '0', null, '1BIJI', '210000', '70000', 'DUS', 'LBR', '3', null, '.ZEMYC 150MG (3LBR @1CAP) ', '210,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00936', null, 'ENCEPHABOL FORTE ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '460000', '46000', 'DUS', 'LBR', '10', 'LANDSON', 'ENCEPHABOL FORTE  @10TAB', '460,000 / DUS', '47,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80149', null, '.BLOPRESS 16MG PLUS ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@7TAB', '225000', '112500', 'DUS', 'LBR', '2', null, '.BLOPRESS 16MG PLUS  @7TAB', '215,000 / DUS', '107,500 / LBR', '2 @7TAB');
INSERT INTO `tbartikel` VALUES ('80039', null, '.AMADIAB 2MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '200000', '40000', 'DUS', 'LBR', '5', null, '.AMADIAB 2MG @10TAB', '180,000 / DUS', '37,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00117', null, 'AMADIAB-3MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '245000', '50000', 'DUS', 'LBR', '5', null, 'AMADIAB-3MG @10TAB', '230,000 / DUS', '46,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02471', null, 'PURUBEX 50MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '475000', '48000', 'DUS', 'LBR', '10', 'KONILIFE', 'PURUBEX 50MG  @10TAB', '395,000 / DUS', '43,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01251', '8994388111620', 'GLUVAS 1MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '115000', '23000', 'DUS', 'LBR', '5', 'BERNOFARM', 'GLUVAS 1MG @10TAB', '110,000 / DUS', '22,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00061', null, 'ADONA (AC-17)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '240000', '24000', 'DUS', 'LBR', '10', 'LAPI', 'ADONA (AC-17) @10TAB', '240,000 / DUS', '24,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02685', null, 'SESDEN 30MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '220000', '22000', 'DUS', 'LBR', '10', 'BODE', 'SESDEN 30MG  @10TAB', '220,000 / DUS', '22,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02976', null, 'TWYNSTA 40/5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@7TAB', '360000', '90000', 'DUS', 'LBR', '4', null, 'TWYNSTA 40/5MG  @7TAB', '290,000 / DUS', '65,000 / LBR', '4 @7TAB');
INSERT INTO `tbartikel` VALUES ('01310', null, 'HERBESSER 60MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '465000', '47000', 'DUS', 'LBR', '10', 'COMBIPHAR', 'HERBESSER 60MG  @10TAB', '460,000 / DUS', '46,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01941', null, 'MUCOPECT 75MG RETARD', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '387500', '87500', 'DUS', 'LBR', '5', 'DANKOS', 'MUCOPECT 75MG RETARD @10TAB', '387,500 / DUS', '85,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00056', null, 'ADALAT OROS 20MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '210000', '70000', 'DUS', 'LBR', '3', 'DANKOS', 'ADALAT OROS 20MG @10TAB', '202,500 / DUS', '67,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00058', null, 'ADALAT OROS 60MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '360000', '122500', 'DUS', 'LBR', '3', 'LAPI', 'ADALAT OROS 60MG @10TAB', '352,500 / DUS', '120,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02975', null, 'TWYNSTA 40/10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@7TAB', '360000', '90000', 'DUS', 'LBR', '4', null, 'TWYNSTA 40/10MG  @7TAB', '250,000 / DUS', '72,500 / LBR', '4 @7TAB');
INSERT INTO `tbartikel` VALUES ('80017', null, '.ADALAT 30MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '210000', '70000', 'DUS', 'LBR', '3', null, '.ADALAT 30MG @10TAB', '210,000 / DUS', '70,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('80419', '', 'GLUCOBAY 50MG ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-10-01 08:36:06', '0', null, '@10TAB', '95000', '19000', 'DUS', 'LBR', '5', null, '.GLUCOBAY 50MG  @10TAB', '87,500 / DUS', '17,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00564', '8999809100658', 'CEDOCARD 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '108000', '18000', 'DUS', 'LBR', '6', 'DEXA MEDICA', 'CEDOCARD 10MG  @10TAB', '78,000 / DUS', '14,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('01847', null, 'MICROGYNON (1STRIP @28TAB)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '12000', null, 'LBR', null, null, 'NOVELL', 'MICROGYNON (1STRIP @28TAB) ', '11,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02898', '', 'TOLAK ANGIN FLU ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-18 01:02:27', '0', null, 'SCH', '24000', '2500', 'DUS', 'SCH', '12', null, 'TOLAK ANGIN FLU  ', '20,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81100', null, '.ZYPREXA 10MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@7TAB', '1400000', '350000', 'LBR', 'LBR', '4', null, '.ZYPREXA 10MG @7TAB', '1,400,000 / LBR', '350,000 / LBR', '4 @7TAB');
INSERT INTO `tbartikel` VALUES ('81035', '', '.VALSARTAN 160MG @10TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:41:03', '0', null, '', '80000', '80000', 'LBR', '', '1', null, '.VALSARTAN 160MG @10TAB ', '80,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00207', null, 'ARICEPT 10MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '770000', '385000', 'DUS', 'LBR', '2', 'DEXA MEDICA', 'ARICEPT 10MG @14TAB', '690,000 / DUS', '350,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('00590', null, 'CELLCEPT 500MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '1000000', '200000', 'DUS', 'LBR', '5', 'BAYER', 'CELLCEPT 500MG @10TAB', '1,000,000 / DUS', '200,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('81036', '', '.VALSARTAN 80 MG', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:40:57', '0', null, '', '55000', '0', 'LBR', '', '1', null, '.VALSARTAN 80 MG ', '50,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80920', '', '.SEROQUEL 100MG @14TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-09-20 12:44:13', '0', null, '', '200000', '0', 'LBR', '', '1', null, '.SEROQUEL 100MG @14TAB ', '200,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00208', null, 'ARICEPT 5MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@14TAB', '650000', '325000', 'DUS', 'LBR', '2', 'DEXA MEDICA', 'ARICEPT 5MG @14TAB', '540,000 / DUS', '285,000 / LBR', '2 @14TAB');
INSERT INTO `tbartikel` VALUES ('80647', '', '.MAINTATE 2,5MG  PRO', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-11-28 10:32:10', '0', null, '@10TAB', '300000', '30000', 'DUS', 'LBR', '10', null, '.MAINTATE 2,5MG  AK @10TAB', '300,000 / DUS', '30,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80884', '', '.RISPERIDONE 2MG @10TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2014-06-09 11:26:54', '0', null, '10 BIJI', '130000', '27500', 'BOX', 'LBR', '5', null, '.RISPERIDONE 2MG @10TAB ', '27,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01843', null, 'MICARDIS PLUS 40/12,5MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '270000', '135000', 'DUS', 'LBR', '2', 'NOVELL', 'MICARDIS PLUS 40/12,5MG  @10TAB', '240,000 / DUS', '125,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('00568', '8999809100689', 'CEDOCARD RETARD ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '162000', '30000', 'DUS', 'LBR', '6', 'DEXA MEDICA', 'CEDOCARD RETARD  @10TAB', '144,000 / DUS', '24,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('00903', '', 'DUMIN ( 50 LBR )', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-18 01:11:55', '0', null, '10BIJI', '290000', '5000', 'BOX', 'LBR', '50', 'SANBE', 'DUMIN ( 50 LBR ) ', '250,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01064', null, 'FEMINAX', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '2000', null, 'LBR', null, null, 'SANBE', 'FEMINAX ', '2,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81172', '', 'MBK PUTIH', '0', '1', ' Merry', '2013-08-17 20:26:27', null, null, '0', null, '10  BKS', '15000', '1500', 'BOX', 'BOX', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00417', '', 'BODREX EXTRA', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-22 18:21:02', '0', null, '4 BIJI', '42500', '2500', 'BOX', 'LBR', '25', 'GRAHA FARMA', 'BODREX EXTRA ', '2,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02352', null, 'PRADAXA 150MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '600000', '200000', 'DUS', 'LBR', '10', 'TANABE', 'PRADAXA 150MG  @10TAB', '555,000 / DUS', '150,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01840', null, 'MICARDIS 40MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '170000', '85000', 'DUS', 'LBR', '2', 'INTERBAT', 'MICARDIS 40MG  @10TAB', '240,000 / DUS', '120,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('02268', null, 'PERSANTIN 75MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '555000', '56000', 'DUS', 'LBR', '10', 'BOEHRINGER INGELHEIM', 'PERSANTIN 75MG @10TAB', '475,000 / DUS', '48,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02977', null, 'TWYNSTA 80/10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@7TAB', '455000', '117500', 'DUS', 'LBR', '4', null, 'TWYNSTA 80/10MG  @7TAB', '390,000 / DUS', '97,500 / LBR', '4 @7TAB');
INSERT INTO `tbartikel` VALUES ('00551', null, 'CATAPRES 75MCG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '210TAB', '325000', '34000', 'DUS', 'LBR', '10', 'SANDOZ', 'CATAPRES 75MCG  210TAB', '277,500 / DUS', '26,000 / LBR', '10 210TAB');
INSERT INTO `tbartikel` VALUES ('00468', '8995228500314', 'BUSCOPAN ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '230000', '24000', 'DUS', 'LBR', '10', 'SEJAHTERA LESTARI', 'BUSCOPAN  @10TAB', '210,000 / DUS', '22,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01825', null, 'METHYCOBAL 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '335000', '35000', 'DUS', 'LBR', '10', 'PHAROS', 'METHYCOBAL 500MG  @10TAB', '295,000 / DUS', '30,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01051', '8995858899857', 'FATIGON ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@4TAB', '42000', '3500', 'DUS', 'LBR', '15', 'SANBE', 'FATIGON  @4TAB', '39,000 / DUS', '3,000 / LBR', '15 @4TAB');
INSERT INTO `tbartikel` VALUES ('02012', '8999908071408', 'NEO RHEUMACYL NEURO (1STRIP @10KAPLET)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '8000', null, 'LBR', null, null, 'KOWA', 'NEO RHEUMACYL NEURO (1STRIP @10KAPLET) ', '7,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81210', '', 'NEPHROLIT', '0', '1', ' Merry', '2013-08-18 01:19:31', null, null, '0', null, '4BIJI', '75000', '4500', 'BOX', 'LBR', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00166', '8992003782347', 'ANTANGIN JRG SIRUP', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-18 01:23:49', '0', null, '11SCH', '23000', '2000', 'DUS', 'SCH', '10', 'DANKOS', 'ANTANGIN JRG SIRUP @10SACHET', '16,000 / DUS', '2,000 ', '10 @10SACHET');
INSERT INTO `tbartikel` VALUES ('00168', '', 'ANTIMO @10TAB', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:15:49', '0', null, '', '5000', '0', 'LBR', '', '1', 'DANKOS', 'ANTIMO @10TAB ', '3,500 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81211', '', 'NATUR SLIM', '0', '1', ' Merry', '2013-08-18 01:26:28', ' Merry', '2013-08-18 01:28:42', '0', null, '1 SCH', '120000', '13000', 'BOX', 'SCH', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('80314', null, '.DUMEX ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@20TAB', '240000', '10000', 'DUS', 'LBR', '25', null, '.DUMEX  @20TAB', '210,000 / DUS', '8,500 / LBR', '25 @20TAB');
INSERT INTO `tbartikel` VALUES ('02785', '8999809101310', 'SUPERTETRA', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@5TAB', '110000', '6000', 'DUS', 'LBR', '20', null, 'SUPERTETRA @5TAB', '93,000 / DUS', '6,000 / LBR', '20 @5TAB');
INSERT INTO `tbartikel` VALUES ('80868', '', '.RENATOR TAB', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-15 14:41:35', '0', null, '6 BIJI', '360000', '120000', 'DUS', 'LBR', '5', null, '.RENATOR TAB ', '170,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81213', '', 'RENABRAZIN', '0', '1', ' Merry', '2013-08-18 01:36:04', null, null, '0', null, '10 BIJI', '315000', '32500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02480', '', 'Q TEN COM', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 16:17:28', '0', null, '@10 BIJI', '265000', '90000', 'BOX', 'LBR', '3', 'BOEHRINGER INGELHEIM', 'Q TEN COM ', '85,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01602', '8992858450613', 'LANCID 30MG ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-09-27 12:11:02', '0', null, '', '145000', '15000', 'LBR', 'BIJI', '10', 'MEDIFARMA LAB', 'LANCID 30MG  @10TAB', '255,000 / DUS', '145,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('00074', '8992858410310', 'ALBIOTIN 150MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '114000', '38000', 'DUS', 'LBR', '3', 'LAPI', 'ALBIOTIN 150MG @10TAB', '90,000 / DUS', '30,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00075', '8992858410419', 'ALBIOTIN 300MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '225000', '75000', 'DUS', 'LBR', '3', 'LAPI', 'ALBIOTIN 300MG @10TAB', '180,000 / DUS', '60,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01452', '8992858637618', 'IRVASK 150MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '285000', '95000', 'DUS', 'LBR', '3', null, 'IRVASK 150MG @10TAB', '262,500 / DUS', '87,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01453', '8992858637717', 'IRVASK 300MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '385000', '130000', 'DUS', 'LBR', '3', 'BERNOFARM', 'IRVASK 300MG  @10TAB', '350,000 / DUS', '125,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01036', null, 'FARMADOL 500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '40000', '5000', 'DUS', 'LBR', '10', 'SANBE', 'FARMADOL 500MG  @10TAB', '40,000 / DUS', '4,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02293', '20323226', 'PIONIX M 500 ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '215000', '72500', 'DUS', 'LBR', '3', 'MERCK', 'PIONIX M 500  @10TAB', '207,000 / DUS', '72,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00538', '8992858618518', 'CARNIQ ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '129000', '43000', 'DUS', 'LBR', '3', 'ARMOXINDO FARMA', 'CARNIQ  @10TAB', '129,000 / DUS', '43,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('81214', '', 'CAR Q', '0', '1', ' Merry', '2013-08-18 01:41:21', null, null, '0', null, '10 BIJI', '165000', '57500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02077', '8992858659610', 'NOCID ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '675000', '68000', 'DUS', 'LBR', '10', 'SIMEX', 'NOCID  @10TAB', '675,000 / DUS', '67,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02688', null, 'SHAROX 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '420000', '225000', 'DUS', 'LBR', '10', null, 'SHAROX 500MG  @10TAB', '420,000 / DUS', '210,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02529', null, 'RENASISTIN 500MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '270000', '90000', 'DUS', 'LBR', '3', 'ACTAVIS', 'RENASISTIN 500MG  @10TAB', '270,000 / DUS', '90,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00718', null, 'CORSEL ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '165000', '57500', 'DUS', 'LBR', '3', 'FAHRENHEIT', 'CORSEL  @10TAB', '172,500 / DUS', '55,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01044', null, 'FARMOXYL 500MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '160000', '17500', 'DUS', 'LBR', '10', 'SANBE', 'FARMOXYL 500MG  @10TAB', '160,000 / DUS', '17,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02887', null, 'TIOXAD ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '560000', '57500', 'DUS', 'LBR', '10', null, 'TIOXAD  @10TAB', '500,000 / DUS', '51,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01845', null, 'MICONAZOLE KRIM', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '4000', null, 'TUB', null, null, 'NOVELL', 'MICONAZOLE KRIM ', '5,000 / TUB', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00201', '9317935258200', 'ARCOXIA 120MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '415000', '140000', 'DUS', 'LBR', '3', 'DEXA MEDICA', 'ARCOXIA 120MG @10TAB', '405,000 / DUS', '130,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('81070', '', '.XICALOM (10LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-20 04:48:40', '0', null, '@10BIJI', '35000', '5000', 'DUS', 'LBR', '10', null, '.XICALOM (10LBR @10TAB) ', '35,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03028', null, 'VASCUPRAX 100MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '265000', '27500', 'DUS', 'LBR', '10', null, 'VASCUPRAX 100MG  @10TAB', '250,000 / DUS', '26,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80987', '', '.TIBICEL 500MG (5LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-20 11:51:42', '0', null, '10 BIJI', '60000', '12000', 'DUS', 'LBR', '10', null, '.TIBICEL 500MG (5LBR @10TAB) ', '60,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01405', null, 'INH-CIBA 400MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '75000', '8500', 'DUS', 'LBR', '10', 'BERNOFARM', 'INH-CIBA 400MG @10TAB', '75,000 / DUS', '8,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00428', null, 'BONIC DS', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '175000', '60000', 'DUS', 'LBR', '3', 'IFARS', 'BONIC DS @10TAB', '150,000 / DUS', '50,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02038', null, 'NEUROPYRON-V ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '52000', '6000', 'DUS', 'LBR', '10', 'ETHICA', 'NEUROPYRON-V  @10TAB', '38,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01274', '', 'GRICIN (10LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-17 15:21:39', '0', null, '@10 BIJI', '85000', '10000', 'DUS', 'LBR', '10', 'GSK', 'GRICIN (10LBR @10TAB) ', '85,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01221', null, 'GLIQUIDONE 30MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '120000', '12000', 'DUS', 'LBR', '10', 'SANOFI AVENTIS', 'GLIQUIDONE 30MG @10TAB', '65,000 / DUS', '7,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('81215', '', 'KETOKONAZOLE TAB', '0', '1', ' Merry', '2013-08-18 05:34:44', null, null, '0', null, '10 BIJI', '30000', '8000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02424', null, 'PROPRANOLOL 10MG  DEXA', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '12500', '1500', 'DUS', 'LBR', '10', 'PHAROS', 'PROPRANOLOL 10MG  DEXA @10TAB', '10,000 / DUS', '1,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00858', null, 'DILTIAZEM 30 MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '20000', '2000', 'DUS', 'LBR', '10', 'MERCK', 'DILTIAZEM 30 MG @10TAB', '20,000 / DUS', '2,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02304', null, 'PIROXICAM 10MG  IF', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@12TAB', '15000', '2000', 'DUS', 'LBR', '10', 'MERCK', 'PIROXICAM 10MG  IF @12TAB', '15,000 / DUS', '2,000 / LBR', '10 @12TAB');
INSERT INTO `tbartikel` VALUES ('01026', null, 'FAMOTIDINE 40MG  IF', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '17500', '4000', 'DUS', 'LBR', '5', 'SANBE', 'FAMOTIDINE 40MG  IF @10TAB', '17,500 / DUS', '4,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01821', null, 'METFORMIN 500MG BERNO', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '18000', '2500', 'DUS', 'LBR', '10', 'SANBE', 'METFORMIN 500MG BERNO @10TAB', '17,500 / DUS', '2,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00889', null, 'DOMPERIDONE 10MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '40000', '5000', 'DUS', 'LBR', '10', 'IKAPHARMINDO', 'DOMPERIDONE 10MG @10TAB', '35,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00127', null, 'AMBROXOL 30MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '20000', '2500', 'DUS', 'LBR', '10', 'ROCELLA LAB', 'AMBROXOL 30MG @10TAB', '20,000 / DUS', '2,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('81109', '', 'SPIRONOLAKTON 100 MG', '0', '1', ' Merry', '2013-08-13 13:43:05', ' Merry', '2013-08-17 15:37:06', '0', null, '210BIJI', '150000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00854', null, 'DIGOXIN 0,25MG  YF', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '17000', '2000', 'DUS', 'LBR', '10', 'PFIZER', 'DIGOXIN 0,25MG  YF @10TAB', '15,000 / DUS', '2,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00851', '', 'DIEDAYAOJING', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-18 19:05:51', '0', null, '', '17500', '0', 'BTOL', '', '1', 'GSK', 'DIEDAYAOJING ', '12,000 / BTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01029', null, 'FARGELIN@30 CAP', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '12000', null, 'BTL', null, null, 'SANBE', 'FARGELIN@30 CAP ', '12,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01336', '8993176120004', 'HUANG LIAN', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-18 05:49:16', '0', null, '', '30000', '3000', 'BOX', 'BOTOL', '12', 'FAHRENHEIT', 'HUANG LIAN ', '30,000 / BTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81216', '', 'QING FEI', '0', '1', ' Merry', '2013-08-18 05:50:48', null, null, '0', null, '', '30000', '3000', 'BOX', 'TUBE', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('081116', '', 'TAY PIN SAN ', '0', '1', ' Merry', '2013-08-13 18:02:08', ' Merry', '2013-11-19 09:40:46', '0', null, '', '21000', '2000', 'BOX', 'BKS', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01889', null, 'MIPI SACHET', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '2000', null, 'SAC', null, null, 'DANKOS', 'MIPI SACHET ', '2,000 / SAC', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81217', '', 'MINYAK UDANG', '0', '1', ' Merry', '2013-08-18 05:54:04', null, null, '0', null, '', '35000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02288', null, 'PING WEI', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '14000', null, 'BTL', null, null, 'ASTRAZENECA', 'PING WEI ', '13,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03174', '6901370033268', 'ZHENG GU SHUI (1BOTOL @30ML)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:25:42', '0', null, '', '16000', '0', 'BOTOL', '', '1', null, 'ZHENG GU SHUI (1BOTOL @30ML) ', '11,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81218', '', 'GELIGA ODOL KECIL', '0', '1', ' Merry', '2013-08-18 05:57:10', null, null, '0', null, '', '15000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01863', '48930727', 'MINYAK ANGIN BUNGA PUTIH (1BOTOL @5ML)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '12000', null, 'BOTOL', null, null, 'INTERBAT', 'MINYAK ANGIN BUNGA PUTIH (1BOTOL @5ML) ', '10,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01862', '48930703', 'MINYAK ANGIN BUNGA PUTIH (1BOTOL @20ML)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '32500', null, 'BOTOL', null, null, 'INTERBAT', 'MINYAK ANGIN BUNGA PUTIH (1BOTOL @20ML) ', '28,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00473', null, 'C IPI ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '4000', null, 'BTL', null, null, 'SEJAHTERA LESTARI', 'C IPI  ', '3,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02546', '', 'RHEUMASON NELCO BIRU', '0', '1', null, '2013-08-08 07:25:21', ' Sri', '2014-06-18 19:11:31', '0', null, '', '4000', '0', 'TUB', '', '1', 'NOVO NORDISK', 'RHEUMASON NELCO BIRU ', '4,000 / TUB', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01880', null, 'MINYAK TAWON EE', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '24000', null, 'BTL', null, null, 'MERCK', 'MINYAK TAWON EE ', '20,000 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81220', '', 'BALSAM LION', '0', '1', ' Merry', '2013-08-18 09:24:32', ' Merry', '2013-08-18 09:24:54', '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('03066', '', 'VICKS VAPORUB BESAR', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-14 08:51:07', '0', null, '', '20000', '0', 'BTL', '', '1', null, 'VICKS VAPORUB BESAR ', '18,500 / BTL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81221', '', 'MENTHOL ABC KECIL', '0', '1', ' Merry', '2013-08-18 09:31:17', ' Ana', '2014-07-15 17:26:11', '0', null, '', '100000', '11000', 'LSN', 'BIJI', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('081105', '', 'PEDITOX', '0', '1', ' Merry', '2013-08-12 17:04:24', ' Merry', '2013-08-13 12:35:58', '0', null, '', '6000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('02691', '4897016459047', 'SIANG SHA (1BOTOL @100PIL)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:34:59', '0', null, '', '14000', '0', 'BOTOL', '', '1', 'MEDIFARMA', 'SIANG SHA (1BOTOL @100PIL) ', '14,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01292', null, 'HCT', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '100', null, 'BTR', null, null, 'COMBIPHAR', 'HCT ', '100 / BTR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01136', null, 'FOLIC ACID TAB', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '150', null, 'TAB', null, null, 'MEDIFARMA LAB', 'FOLIC ACID TAB ', '100 / TAB', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00750', null, 'CURLIV PLUS', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '275000', '46000', 'DUS', 'LBR', '6', 'NOVELL', 'CURLIV PLUS @10TAB', '205,000 / DUS', '35,000 / LBR', '6 @10TAB');
INSERT INTO `tbartikel` VALUES ('80134', '', '.BIMASTAN (10LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-15 18:03:53', '0', null, '10 BIJI', '25000', '4000', 'DUS', 'LBR', '10', null, '.BIMASTAN (10LBR @10TAB) ', '25,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01513', '8992858444919', 'KALXETIN 20MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '195000', '65000', 'DUS', 'LBR', '3', 'DEXA MEDICA', 'KALXETIN 20MG @10TAB', '60,000 / DUS', '20,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02786', null, 'SUPRABIOTIC ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '60000', '7000', 'DUS', 'LBR', '10', null, 'SUPRABIOTIC  @10TAB', '60,000 / DUS', '7,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('80747', '', '.NODROF (10LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-21 18:02:43', '0', null, '10 BIJI', '65000', '7000', 'DUS', 'LBR', '10', null, '.NODROF (10LBR @10TAB) ', '50,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00991', null, 'ETUROL ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '475000', '48000', 'DUS', 'LBR', '10', 'COMBIPHAR', 'ETUROL  @10TAB', '415,000 / DUS', '43,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01378', '', 'IMBOOST FORCE TAB', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-06-07 13:47:01', '0', null, '@10TAB', '172000', '58000', 'DUS', 'LBR', '3', 'INDOFARMA', 'IMBOOST FORCE  @10TAB', '155,000 / DUS', '52,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02899', null, 'TONAR ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '450000', '42500', 'DUS', 'LBR', '10', null, 'TONAR  @10TAB', '450,000 / DUS', '45,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01045', null, 'FARNORMIN 50MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '50000', '5500', 'DUS', 'LBR', '10', 'SANBE', 'FARNORMIN 50MG  @10TAB', '48,000 / DUS', '5,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02983', '8992858680119', 'ULSIKUR 200MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '45000', '6000', 'DUS', 'LBR', '10', null, 'ULSIKUR 200MG  @10TAB', '45,000 / DUS', '6,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00540', null, 'CARPIATON 25MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '35000', '15000', 'DUS', 'LBR', '10', 'DEXA MEDICA', 'CARPIATON 25MG @10TAB', '35,000 / DUS', '9,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01708', '8993498210186', 'LIVRON B.PLEX', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '30000', '3000', 'DUS', 'LBR', '10', 'IFARS', 'LIVRON B.PLEX @10TAB', '25,000 / DUS', '3,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00878', '8992858620313', 'DIVOLTAR 50MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '25000', '5000', 'DUS', 'LBR', '5', 'SANBE', 'DIVOLTAR 50MG  @10TAB', '25,000 / DUS', '5,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00822', null, 'DEXTEEM PLUS ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '25000', '3000', 'DUS', 'LBR', '10', 'FAHRENHEIT', 'DEXTEEM PLUS  @10TAB', '20,000 / DUS', '2,500 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02609', null, 'SALONPAS HIJAU ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@1SACHETS', '60000', '6500', 'DUS', 'SACHETS', '12', 'PFIZER', 'SALONPAS HIJAU  @1SACHETS', '53,000 / DUS', '5,500 / SACHETS', '12 @1SACHETS');
INSERT INTO `tbartikel` VALUES ('01993', null, 'NATUR-E (1DUS @32CAP)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '28000', null, 'DUS', null, null, 'COMBIPHAR', 'NATUR-E (1DUS @32CAP) ', '28,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01281', '', 'HANSAPLAST JUMBO 24', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-07-12 14:33:15', '0', null, '750', '14000', '500', 'DUS', 'BIJI', '1', 'LANDSON', 'HANSAPLAST JUMBO 24 ', '11,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01893', '', 'MIXAGRIP FLU 25LBR @4TAB', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2014-05-14 16:46:26', '0', null, ' 4 BIJI', '42500', '2500', 'DUS', 'LBR', '25', 'PHAROS', 'MIXAGRIP FLU 25LBR @4TAB ', '33,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81222', '', 'KAPSIDA', '0', '1', ' Merry', '2013-08-18 09:59:50', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('003506', '', 'EXERGY', '0', '1', ' Ana', '2013-08-10 00:27:16', null, null, '0', null, '', '3000', '3000', 'LBR', '', '1', null, 'EXERGY ', ' / LBR', ' / ', ' ');
INSERT INTO `tbartikel` VALUES ('02634', '', 'SANTA E -400', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:36:26', '0', null, '4 BIJI', '350000', '15000', 'BOX', 'LBR', '25', 'BINTANG TOEDJOE', 'SANTA E -400 ', '14,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02848', '8994388110814', 'TENSIVASK 5MG (5STRIP @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-18 13:34:01', '0', null, '10BIJI', '270000', '55000', 'DUS', 'LBR', '5', null, 'TENSIVASK 5MG (5STRIP @10TAB) ', '270,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01805', '8993883880154', 'MEGAZING', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '110000', '23000', 'DUS', 'LBR', '5', 'MAHAKAM BETA FARMA', 'MEGAZING @10TAB', '87,500 / DUS', '18,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01687', null, 'LIPESCO', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '345000', '70000', 'DUS', 'LBR', '5', 'SANTEN', 'LIPESCO @10TAB', '300,000 / DUS', '60,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02980', null, 'UBESCO 100 ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '500000', '100000', 'DUS', 'LBR', '5', null, 'UBESCO 100  @10TAB', '470,000 / DUS', '98,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02468', null, 'PURESCO 300MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '360000', '37000', 'DUS', 'LBR', '10', 'KONILIFE', 'PURESCO 300MG  @10TAB', '370,000 / DUS', '37,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01382', null, 'IMESCO ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '580000', '58000', 'DUS', 'LBR', '10', 'INDOFARMA', 'IMESCO  @10TAB', '530,000 / DUS', '53,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01393', null, 'IMULOZ 30MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '380000', '38000', 'DUS', 'LBR', '10', 'NOVELL', 'IMULOZ 30MG @10TAB', '380,000 / DUS', '38,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02722', '', 'SLIMESCO ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-12-22 14:34:42', '0', null, '10 BIJI', '750000', '75000', 'BOX', 'LBR', '10', null, 'SLIMESCO 10 TAB ', '75,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00859', null, 'DIOSTE ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '475000', '95000', 'DUS', 'LBR', '5', 'MERCK', 'DIOSTE  @10TAB', '370,000 / DUS', '76,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('01591', null, 'LAMBUCID', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '70000', '5000', 'DUS', 'LBR', '20', 'SANBE', 'LAMBUCID @10TAB', '40,000 / DUS', '2,500 / LBR', '20 @10TAB');
INSERT INTO `tbartikel` VALUES ('00968', null, 'ESCOVIT', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '800000', '80000', 'DUS', 'LBR', '10', 'SCAN', 'ESCOVIT @10TAB', '675,000 / DUS', '69,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01857', null, 'MINITEN 5MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '525000', '55000', 'DUS', 'LBR', '10', 'DANKOS', 'MINITEN 5MG @10TAB', '525,000 / DUS', '53,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02106', '8993430100568', 'NOVALES 20MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@TAB', '501000', '170000', 'DUS', 'LBR', '3', 'ACTAVIS', 'NOVALES 20MG @TAB', '501,000 / DUS', '167,000 / LBR', '3 @TAB');
INSERT INTO `tbartikel` VALUES ('81224', '', 'PURESTA', '37500', '1', ' Merry', '2013-08-18 10:12:18', null, null, '0', null, '6 BIJI', '175000', '0', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('00580', '', 'CEFSPAN 200 MG', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-28 11:04:27', '0', null, '', '320000', '33000', 'LBR', 'BIJI', '10', 'KALBE', 'CEFSPAN 200 MG ', '245,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('80533', '', '.KALMOXILIN 500MG (10LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-17 15:54:48', '0', null, '@10 BIJI', '250000', '25000', 'DUS', 'LBR', '10', null, '.KALMOXILIN 500MG (10LBR @10TAB) ', '215,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00265', '', 'BACTESYN @10TAB', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2014-05-29 12:20:47', '0', null, '', '145000', '0', 'LBR', '', '1', 'SOHO', 'BACTESYN @10TAB ', '140,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01080', null, 'FETAVITA ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '740000', '75000', 'DUS', 'LBR', '10', 'INTERBAT', 'FETAVITA  @10TAB', '610,000 / DUS', '64,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00578', '', 'CEFSPAN 100 MG 10 TAB', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-05 16:16:52', '0', null, '', '145000', '15000', 'LBR', '', '0', 'KALBE', 'CEFSPAN 100 MG 10 TAB ', '145,000 / TAB', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00486', null, 'CALESCO', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '315000', '63000', 'DUS', 'LBR', '5', 'SEJAHTERA LESTARI', 'CALESCO @10TAB', '290,000 / DUS', '58,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('81225', '', 'VIOXY', '0', '1', ' Merry', '2013-08-18 10:15:14', null, null, '0', null, '6 BIJI', '137500', '27500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01027', null, 'FARBION ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '95000', '10000', 'DUS', 'LBR', '10', 'SANBE', 'FARBION  @10TAB', '90,000 / DUS', '9,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01038', null, 'FARMADRAL 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '25000', '3000', 'DUS', 'LBR', '10', 'SANBE', 'FARMADRAL 10MG  @10TAB', '25,000 / DUS', '3,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('02954', null, 'TROBESCO ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '690000', '69000', 'DUS', 'LBR', '10', null, 'TROBESCO  @10TAB', '690,000 / DUS', '69,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('01449', null, 'IRETENSA 150MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '255000', '85000', 'DUS', 'LBR', '3', 'INDOFARMA (IF)', 'IRETENSA 150MG @10TAB', '255,000 / DUS', '85,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02797', null, 'SYSMUCO 100MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '120000', '40000', 'DUS', 'LBR', '3', null, 'SYSMUCO 100MG  @10TAB', '105,000 / DUS', '35,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01187', '', 'GASTRUL ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-11-17 17:20:10', '0', null, '', '125000', '12500', 'LBR', 'BIJI', '10', null, 'GASTRUL 1 TAB ', '12,500 / TAB', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02874', null, 'TIARYT 200MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '110000', '40000', 'DUS', 'LBR', '3', null, 'TIARYT 200MG  @10TAB', '57,500 / DUS', '19,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00972', null, 'ESTAZOR ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '255000', '85000', 'DUS', 'LBR', '3', 'SANDOZ', 'ESTAZOR  @10TAB', '202,500 / DUS', '67,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00414', null, 'BLOREC 25MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '204000', '68000', 'DUS', 'LBR', '3', 'DEXA MEDICA', 'BLOREC 25MG  @10TAB', '172,500 / DUS', '57,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01510', '8992858647310', 'KALTROFEN 100MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '105000', '35000', 'DUS', 'LBR', '3', 'KALBE', 'KALTROFEN 100MG @10TAB', '60,000 / DUS', '20,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00493', null, 'CALSIVAS 10MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '270000', '90000', 'DUS', 'LBR', '3', 'BMF', 'CALSIVAS 10MG @10TAB', '262,500 / DUS', '87,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01320', null, 'HEXAVASK 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '70000', '25000', 'DUS', 'LBR', '3', 'KALBE', 'HEXAVASK 10MG  @10TAB', '75,000 / DUS', '35,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01918', null, 'MONECTO 20MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '93000', '32500', 'DUS', 'LBR', '3', 'MAHAKAM BETA FARMA', 'MONECTO 20MG @10TAB', '82,500 / DUS', '28,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02528', null, 'RENAPEPSA 20MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '126000', '42000', 'DUS', 'LBR', '3', 'ACTAVIS', 'RENAPEPSA 20MG  @10TAB', '112,500 / DUS', '40,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('81226', '', 'RENDAPID 20 NG', '0', '1', ' Merry', '2013-08-18 10:22:01', null, null, '0', null, '', '105000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('01096', null, 'FIXACEP 200MG (1STRIP @10TAB)', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, null, '260000', null, 'DUS', null, null, 'INTERBAT', 'FIXACEP 200MG (1STRIP @10TAB) ', '225,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02965', '8992858679014', 'TRUVAZ 20MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '405000', '135000', 'DUS', 'LBR', '3', null, 'TRUVAZ 20MG @10TAB', '375,000 / DUS', '125,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00874', '8992858621617', 'DIVASK 5MG ', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-25 14:48:14', '0', null, '@10TAB', '202500', '67500', 'DUS', 'LBR', '10', 'KALBE', 'DIVASK 5MG  AK @10TAB', '180,000 / DUS', '60,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00494', '', 'CALSIVAS 5MG', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-09-06 16:19:14', '0', null, '@10TAB', '155000', '52500', 'DUS', 'LBR', '3', 'IFARS', 'CALSIVAS 5MG @10TAB', '135,000 / DUS', '45,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01731', '', 'LOVATROL 20MG ', '0', '1', null, '2013-08-08 07:25:20', ' Ana', '2013-11-01 11:19:36', '0', null, '@10TAB', '270000', '85000', 'DUS', 'LBR', '3', 'GSK', 'LOVATROL 20MG  @10TAB', '249,000 / DUS', '85,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02197', null, 'OSTEOFAR(3LBR@10TAB)', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '225000', null, 'DUS', null, null, 'SCHERING PLOUGH', 'OSTEOFAR(3LBR@10TAB) ', '225,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02525', '', 'RENACARDON 10MG (3LBR @10TAB)', '40000', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-11-17 16:06:46', '0', null, '10 BIJI', '110000', '41000', 'DUS', 'LBR', '3', 'PHAPROS', 'RENACARDON 10MG (3LBR @10TAB) ', '112,500 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02750', '20327262', 'SPIROLA 100MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '237500', '47500', 'DUS', 'LBR', '5', null, 'SPIROLA 100MG  @10TAB', '210,000 / DUS', '42,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('00020', null, 'ACETENSA', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '255000', '85000', 'DUS', 'LBR', '3', 'DANKOS', 'ACETENSA @10TAB', '255,000 / DUS', '87,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00533', '8992858617313', 'CARDIVASK 5MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '165000', '55000', 'DUS', 'LBR', '3', 'MOLEX AYUS', 'CARDIVASK 5MG @10TAB', '145,000 / DUS', '50,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00623', '8992858619713', 'CETINAL 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '157500', '52500', 'DUS', 'LBR', '3', 'HEXPHARM JAYA (HJ)', 'CETINAL 10MG  @10TAB', '150,000 / DUS', '50,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02523', '', 'REMITAL TAB', '0', '1', null, '2013-08-08 07:25:21', ' Sri', '2014-06-18 19:11:39', '0', null, '', '305000', '305000', 'LBR', '', '1', 'SANBE', 'REMITAL TAB ', '260,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02964', '8992858678918', 'TRUVAZ 10MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '405000', '135000', 'DUS', 'LBR', '3', null, 'TRUVAZ 10MG  @10TAB', '375,000 / DUS', '125,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01147', '8992858624311', 'FREGO 5MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '312500', '62500', 'DUS', 'LBR', '5', 'IFARS', 'FREGO 5MG  @10TAB', '212,500 / DUS', '475,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('03008', null, 'URISPAS 200MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '120000', '40000', 'DUS', 'LBR', '3', null, 'URISPAS 200MG  @10TAB', '120,000 / DUS', '40,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('81039', '', '.V-BLOC 6,25MG (3LBR @10TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-20 17:57:02', '0', null, '10 B IJI', '100000', '35000', 'DUS', 'LBR', '3', null, '.V-BLOC 6,25MG (3LBR @10TAB) ', '60,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('03030', '8992858684711', 'V-BLOC 25MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '225000', '75000', 'DUS', 'LBR', '3', null, 'V-BLOC 25MG  @10TAB', '225,000 / DUS', '75,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02292', '20323202', 'PIONIX 30MG ', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-18 10:38:59', '0', null, '@10TAB', '322500', '107500', 'BOX', 'LBR', '3', 'PFIZER', 'PIONIX 30MG  @10TAB', '255,000 / LBR', '87,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02291', '20323189', 'PIONIX 15MG', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '225000', '75000', 'DUS', 'LBR', '3', 'MEIJI', 'PIONIX 15MG @10TAB', '172,500 / DUS', '57,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01649', '8992858650211', 'LESIDAS 10MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '159000', '53000', 'DUS', 'LBR', '3', 'LAPI', 'LESIDAS 10MG  @10TAB', '120,000 / DUS', '53,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('80517', null, '.IRVEL 150MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '180000', '90000', 'DUS ', 'LBR', '2', null, '.IRVEL 150MG  @10TAB', '175,000 / DUS ', '87,500 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('01888', null, 'MIOZIDINE', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, null, '35000', null, 'LBR', null, null, 'KALBE', 'MIOZIDINE ', '30,000 / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('02308', '8992858665314', 'PLANTACID ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@12TAB', '22500', '4500', 'DUS', 'LBR', '5', 'SANOFI AVENTIS', 'PLANTACID  @12TAB', '22,500 / DUS', '4,500 / LBR', '5 @12TAB');
INSERT INTO `tbartikel` VALUES ('00755', '', 'CURVIT CL EMULSION (1BOTOL @175ML)', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-12-11 18:54:37', '0', null, '', '54000', '0', 'BOTOL', '', '1', 'KALBE', 'CURVIT CL EMULSION (1BOTOL @175ML) ', '47,000 / BOTOL', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01142', '8992858654417', 'FORRES 50MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '235000', '47000', 'DUS', 'LBR', '5', 'MEDIFARMA LAB', 'FORRES 50MG @10TAB', '210,000 / DUS', '42,500 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02586', '8993430100940', 'RYVEL TAB  10MG', '0', '1', null, '2013-08-08 07:25:21', ' Ana', '2014-07-17 18:13:24', '0', null, '@10TAB', '135000', '45000', 'DUS', 'LBR', '3', 'PERDANA SAKTI', 'RYVEL 10MG @10TAB', '120,000 / DUS', '40,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00954', '8993430103354', 'EPIVEN 300MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '292500', '97500', 'DUS', 'LBR', '3', 'INTERBAT', 'EPIVEN 300MG @10TAB', '231,000 / DUS', '77,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('00229', '8993430161217', 'ASTATIN 4MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '140000', '70000', 'DUS', 'LBR', '2', null, 'ASTATIN 4MG @10TAB', '115,000 / DUS', '57,000 / LBR', '2 @10TAB');
INSERT INTO `tbartikel` VALUES ('00091', '8993430102173', 'ALISTA 50MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '660000', '67500', 'DUS', 'LBR', '10', 'MESTIKA FARMA', 'ALISTA 50MG @10TAB', '650,000 / DUS', '65,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('03181', '8993430103729', 'ZITANID 2MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '187500', '62500', 'DUS', 'LBR', '3', null, 'ZITANID 2MG  @10TAB', '150,000 / DUS', '50,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('02920', '8992858677218', 'TRANSBRONCHO 30MG ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '90000', '10000', 'DUS', 'LBR', '10', null, 'TRANSBRONCHO 30MG  @10TAB', '90,000 / DUS', '10,000 / LBR', '10 @10TAB');
INSERT INTO `tbartikel` VALUES ('00514', null, 'CAPTENSIN 12,5MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '17500', '5000', 'DUS', 'LBR', '5', 'MECOSIN', 'CAPTENSIN 12,5MG @10TAB', '17,500 / DUS', '5,000 / LBR', '5 @10TAB');
INSERT INTO `tbartikel` VALUES ('02683', '20327187', 'SERLOF ', '0', '1', null, '2013-08-08 07:25:21', null, null, '0', null, '@10TAB', '480000', '160000', 'DUS', 'LBR', '3', 'BODE', 'SERLOF  @10TAB', '390,000 / DUS', '145,000 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('80289', '', '.DIAGLIM 1MG (2LBR @15TAB)', '0', '1', null, '2013-08-08 07:25:21', ' Merry', '2013-08-21 18:03:32', '0', null, '14BIJI', '65000', '35000', 'DUS', 'LBR', '2', null, '.DIAGLIM 1MG (2LBR @15TAB) ', '60,000 / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('00835', '20305901', 'DIAGLIME 2MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@15TAB', '120000', '60000', 'DUS', 'LBR', '2', 'DEXA MEDICA', 'DIAGLIME 2MG @15TAB', '110,000 / DUS', '55,000 / LBR', '2 @15TAB');
INSERT INTO `tbartikel` VALUES ('00837', '20305949', 'DIAGLIME 4MG ', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@15TAB', '190000', '95000', 'DUS', 'LBR', '2', 'TAKEDA', 'DIAGLIME 4MG  @15TAB', '178,000 / DUS', '90,000 / LBR', '2 @15TAB');
INSERT INTO `tbartikel` VALUES ('00329', '', 'BETA-ONE 5MG (3 STRIP @10TAB)', '0', '1', null, '2013-08-08 07:25:20', ' Sri', '2014-07-01 12:15:12', '0', null, '10 BIJI', '135000', '45000', 'DUS', 'LBR', '3', null, 'BETA-ONE 5MG (5STRIP @10TAB) ', ' / DUS', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('01690', '20317720', 'LIPINORM 20MG', '0', '1', null, '2013-08-08 07:25:20', null, null, '0', null, '@10TAB', '180000', '60000', 'DUS', 'LBR', '3', 'ALCON', 'LIPINORM 20MG @10TAB', '172,500 / DUS', '57,500 / LBR', '3 @10TAB');
INSERT INTO `tbartikel` VALUES ('01689', '', 'LIPINORM 10MG 10TAB', '0', '1', null, '2013-08-08 07:25:20', ' Merry', '2013-08-25 14:51:37', '0', null, '10 B IJI', '110000', '37500', 'BOX', 'LBR', '3', 'SANTEN', 'LIPINORM 10MG 10TAB ', ' / LBR', ' ', ' ');
INSERT INTO `tbartikel` VALUES ('81227', '', 'AMDIXAL 10 MG', '0', '1', ' Merry', '2013-08-18 13:16:15', null, null, '0', null, '10 BIJI', '105000', '35000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81228', '', 'HYPERCHOL 300MG', '0', '1', ' Merry', '2013-08-18 13:54:34', null, null, '0', null, '10 BIJI', '247500', '82500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81229', '', 'HYTRIN 1 MG', '0', '1', ' Merry', '2013-08-18 14:08:22', ' Merry', '2013-08-18 14:09:35', '0', null, '14 BIJI', '550000', '60000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81230', '', 'HYTRIN 2 MG', '0', '1', ' Merry', '2013-08-18 14:09:03', null, null, '0', null, '14 BIJI', '200000', '100000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81231', '', 'CELESTAMIN TAB', '0', '1', ' Merry', '2013-08-18 14:26:17', null, null, '0', null, '10 BIJI', '475000', '32500', 'BOX', 'LBR', '15', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81233', '', 'PRIMOLUT N', '0', '1', ' Merry', '2013-08-18 14:40:55', ' Merry', '2013-10-04 17:50:27', '0', null, '10 BIJI', '142500', '47500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81234', '', 'CLARITIN TAB', '0', '1', ' Merry', '2013-08-18 14:46:51', ' Merry', '2013-08-20 04:39:59', '0', null, '10 BIJI', '700000', '75000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81235', '', 'BIOPREXUM', '0', '1', ' Merry', '2013-08-18 15:00:43', null, null, '0', null, '', '210000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81237', '', 'NARFOZ 4 MG', '0', '1', ' Merry', '2013-08-18 22:16:45', null, null, '0', null, '6 BIJI', '175000', '87500', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81238', '', 'NARFOZ 8 MG', '0', '1', ' Merry', '2013-08-18 22:19:02', ' Merry', '2013-08-18 22:31:51', '0', null, '', '320000', '27000', 'LBR', 'BIJI', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81239', '', 'ABILIFY DISMELT 15MG', '0', '1', ' Merry', '2013-08-18 22:19:35', null, null, '0', null, '', '525000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81240', '', 'CADUET 10MG/10MG', '0', '1', ' Merry', '2013-08-18 22:20:27', null, null, '0', null, '10 BIJI', '315000', '105000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81241', '', 'VIRETH 4OO MG', '0', '1', ' Merry', '2013-08-18 22:21:11', null, null, '0', null, '10 BIJI', '140000', '70000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81242', '', 'TRILAC 4 MG', '0', '1', ' Merry', '2013-08-18 22:22:03', null, null, '0', null, '10 BIJI', '82500', '27500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81243', '', 'PROVINAS 400MG', '0', '1', ' Merry', '2013-08-18 22:22:29', null, null, '0', null, '', '10000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81245', '', 'OSMYCIN 500 MG', '0', '1', ' Merry', '2013-08-19 06:16:40', null, null, '0', null, '', '55000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81246', '', 'TICARD', '0', '1', ' Merry', '2013-08-19 06:17:20', null, null, '0', null, '', '75000', '72500', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81247', '', 'GRATIZIN', '0', '1', ' Merry', '2013-08-19 06:18:17', null, null, '0', null, '', '40000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81248', '', 'AKILEN 400MG', '0', '1', ' Merry', '2013-08-19 06:18:50', null, null, '0', null, '', '75000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81249', '', 'LACIDOFIL', '0', '1', ' Merry', '2013-08-19 06:21:15', null, null, '0', null, '', '42500', '42500', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81250', '', 'CYGEST 400 SUPPO', '0', '1', ' Merry', '2013-08-19 06:21:49', null, null, '0', null, '', '25000', '0', 'BIJI', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81251', '', 'NOVOMIX', '0', '1', ' Merry', '2013-08-19 06:24:10', ' Merry', '2013-08-19 07:43:53', '0', null, '1 PEN', '675000', '145000', 'BOX', 'PEN', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81252', '', 'PRORIS SUPPO', '0', '1', ' Merry', '2013-08-19 06:25:03', null, null, '0', null, '5 BIJI', '45000', '25000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81253', '', 'MIACALSIC NASAL SPRAY', '0', '1', ' Merry', '2013-08-19 06:26:27', null, null, '0', null, '', '1000000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81254', '', 'FLAGYSTATIN SUPP', '0', '1', ' Merry', '2013-08-19 06:28:22', ' Merry', '2013-08-23 18:21:40', '0', null, '', '82500', '16500', 'LBR', 'BIJI', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81255', '', 'NOVORAPID', '0', '1', ' Merry', '2013-08-19 06:30:45', ' Merry', '2013-08-19 07:44:05', '0', null, '1 PEN', '550000', '125000', 'BOX', 'PEN', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81256', '', 'LEVEMIR', '0', '1', ' Merry', '2013-08-19 07:50:55', null, null, '0', null, '', '625000', '135000', 'BOX', 'PENN', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81257', '', 'XALATAN', '0', '1', ' Merry', '2013-08-19 07:52:22', null, null, '0', null, '', '415000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81258', '', 'XALACOM', '0', '1', ' Merry', '2013-08-19 07:52:37', null, null, '0', null, '', '480000', '480000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81259', '', 'PROFENIF  RECTAL', '0', '1', ' Merry', '2013-08-19 07:54:44', null, null, '0', null, '', '55000', '11000', 'LBR', 'BIJI', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81260', '', 'LANTUS', '0', '1', ' Merry', '2013-08-19 07:57:15', null, null, '0', null, '', '650000', '135000', 'BOX', 'PEN', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81261', '', 'ZANIDIP 10 MG', '0', '1', ' Merry', '2013-08-19 07:59:04', null, null, '0', null, '14BIJI', '200000', '100000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81262', '', 'LYRICA 150 MG', '0', '1', ' Merry', '2013-08-19 07:59:40', null, null, '0', null, '', '298000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81263', '', 'TRAJENTA', '0', '1', ' Merry', '2013-08-19 08:00:28', ' Merry', '2013-08-19 09:54:58', '0', null, '10 BIJI', '375000', '125000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81264', '', 'LIPITOR 10 MG', '0', '1', ' Merry', '2013-08-19 09:08:58', null, null, '0', null, '10 BIJI', '540000', '180000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81265', '', 'GARAMYCIN 15 GR', '0', '1', ' Merry', '2013-08-19 09:20:10', null, null, '0', null, '', '75000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81266', '', 'SPASMINAL', '0', '1', ' Merry', '2013-08-19 09:21:50', null, null, '0', null, '10  BIJI', '60000', '7500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81268', '', 'STATOR 20 MG', '0', '1', ' Merry', '2013-08-19 09:25:38', ' Merry', '2013-08-19 09:28:08', '0', null, '10 BIJI', '460000', '155000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81269', '', 'ITRACONAZOLE', '0', '1', ' Merry', '2013-08-19 09:30:06', ' Merry', '2013-08-19 09:54:43', '0', null, '10 BIJI', '145000', '50000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81270', '', 'HAPSEN', '0', '1', ' Merry', '2013-08-19 09:36:52', null, null, '0', null, '10 BIJI', '105000', '40000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81271', '', 'INTERPRIL 10 MG', '0', '1', ' Merry', '2013-08-19 09:37:31', null, null, '0', null, '10 BIJI', '105000', '35000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81272', '', 'ACITRAL TAB', '0', '1', ' Merry', '2013-08-19 10:06:57', null, null, '0', null, '4 BIJI', '75000', '3500', 'BOX', 'LBR', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81275', '', 'KAPAK 28CC', '0', '1', ' Merry', '2013-08-19 10:11:29', ' Merry', '2013-08-19 12:50:53', '0', null, '', '27000', '27000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81276', '', 'ESTER C HOLISTICARE', '0', '1', ' Merry', '2013-08-19 11:37:04', null, null, '0', null, '', '35000', '35000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81277', '', 'BLOPRES 16 MG', '0', '1', ' Merry', '2013-08-19 12:01:39', null, null, '0', null, '7BIJI', '225000', '112500', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81278', '', 'CRAVOX 500 MG', '0', '1', ' Merry', '2013-08-19 12:17:28', ' Merry', '2013-08-19 12:19:46', '0', null, '', '250000', '25000', 'LBR', 'BTR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81279', '', 'KAPAK 10ML ', '0', '1', ' Merry', '2013-08-19 12:29:18', null, null, '0', null, '', '12000', '12000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81280', '', 'CARDIO ASPIRIN', '0', '1', ' Merry', '2013-08-19 12:41:20', null, null, '0', null, '10 BIJI', '39000', '13000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81281', '', 'OLMETEC 40 MG', '0', '1', ' Merry', '2013-08-19 12:41:52', null, null, '0', null, '10 BIJI', '390000', '130000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81282', '', 'KAPAK 5 CC', '0', '1', ' Merry', '2013-08-19 12:45:10', ' Merry', '2014-02-03 11:34:35', '0', null, '', '8000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81283', '', 'KAPAK 56 CC', '0', '1', ' Merry', '2013-08-19 12:46:04', null, null, '0', null, '', '47000', '47000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81284', '', 'PEPZOL 40 MG', '0', '1', ' Merry', '2013-08-19 12:46:55', null, null, '0', null, '', '175000', '0', 'BOX', 'LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81285', '', 'KAPAK 14 CC', '0', '1', ' Merry', '2013-08-19 12:51:33', null, null, '0', null, '', '16000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81286', '', 'KOLESKOL', '0', '1', ' Merry', '2013-08-19 12:53:32', null, null, '0', null, '10 BIJI', '360000', '120000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81287', '', 'ANTASIDA DOEN', '0', '1', ' Merry', '2013-08-19 13:03:47', null, null, '0', null, '10 BIJI', '15000', '2500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81288', '', 'IBUPROFEN 400 MG', '0', '1', ' Merry', '2013-08-19 13:04:56', null, null, '0', null, '10 BIJI', '25000', '3000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81289', '', 'KENALOG', '0', '1', ' Merry', '2013-08-19 13:05:47', null, null, '0', null, '', '53000', '53000', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81290', '', 'PARACETAMOL 500 MG', '0', '1', ' Merry', '2013-08-19 13:16:54', null, null, '0', null, '10 BIJI', '15000', '3000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81292', '', 'TONICARD', '0', '1', ' Merry', '2013-08-19 13:49:34', null, null, '0', null, '', '150000', '150000', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81293', '', 'ACPULSIF', '0', '1', ' Merry', '2013-08-19 13:53:06', ' Merry', '2013-08-19 13:53:50', '0', null, '10BIJI', '187500', '37500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81294', '', 'KOYO HAPPY', '0', '1', ' Merry', '2013-08-19 13:59:01', null, null, '0', null, '', '7000', '8000', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81295', '', 'NISLEV', '0', '1', ' Merry', '2013-08-19 14:03:10', ' Sri', '2014-03-01 17:28:26', '0', null, '', '330000', '35000', 'LBR', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81296', '', 'IBU ANAK KECIL', '0', '1', ' Merry', '2013-08-19 14:04:15', null, null, '0', null, '', '18500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81297', '', 'ENERVON C BTL', '0', '1', ' Merry', '2013-08-19 14:18:00', null, null, '0', null, '', '30000', '30000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81298', '', 'KEPPRA 500 MG', '0', '1', ' Merry', '2013-08-19 14:35:29', null, null, '0', null, '10 BIJI', '310000', '155000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81299', '', 'LYRICA 75', '0', '1', ' Merry', '2013-08-19 14:43:25', null, null, '0', null, '', '175000', '175000', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81300', '', 'LYRICA 50 MG', '0', '1', ' Merry', '2013-08-19 14:44:12', null, null, '0', null, '', '130000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81301', '', 'SIBELIUM 5MG (10LBR@10TAB)', '0', '1', ' Merry', '2013-08-19 15:01:45', null, null, '0', null, '10 BIJI', '840000', '85000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81302', '', 'BONE ONE 0,5MG', '0', '1', ' Merry', '2013-08-19 15:03:48', null, null, '0', null, '10BIJI', '400000', '135000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81303', '', 'BONE ONE 1MG', '0', '1', ' Merry', '2013-08-19 15:10:10', null, null, '0', null, '10BIJI', '585000', '195000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81304', '', 'AMLODIPINE 5MG(5STRIP@10BIJI)', '0', '1', ' Merry', '2013-08-19 15:18:07', ' Merry', '2013-09-05 14:17:18', '0', null, '@10 BIJI', '25000', '5000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81305', '', 'HAU FUNG SHAN', '0', '1', ' Merry', '2013-08-19 15:24:26', null, null, '0', null, '', '50000', '5000', 'LSN', 'BTL', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81306', '', ' NONI', '0', '1', ' Merry', '2013-08-19 15:27:33', null, null, '0', null, '', '300000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81307', '', 'POLAR BEAR 27 ML', '0', '1', ' Merry', '2013-08-19 15:49:11', ' Merry', '2013-08-20 04:10:03', '0', null, '', '250000', '21000', 'LSN', 'BTL', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81308', '', 'SPORETIK 100MG', '0', '1', ' Merry', '2013-08-19 16:10:33', ' Merry', '2013-09-02 09:08:20', '0', null, '', '145000', '15000', 'LBR', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81309', '', 'LEVOFLOKSASIN', '0', '1', ' Merry', '2013-08-19 16:14:48', null, null, '0', null, '10BIJI', '60000', '12500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81310', '', 'NEULIN PS', '0', '1', ' Merry', '2013-08-19 16:38:09', ' Merry', '2013-08-19 16:42:53', '0', null, '6 BIJI', '325000', '65000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81311', '', 'MTX', '0', '1', ' Merry', '2013-08-19 16:39:53', ' Merry', '2013-09-29 16:59:15', '0', null, '', '130000', '3000', 'BTL', 'BIJI', '30', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81312', '', 'DISOLF', '0', '1', ' Merry', '2013-08-19 16:40:30', ' Merry', '2013-08-21 12:52:23', '0', null, '6 BIJI', '225000', '45000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81313', '', 'MEDICATED JUMBO', '0', '1', ' Merry', '2013-08-19 16:44:54', null, null, '0', null, '', '297500', '26000', 'LSN', 'BTL', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81314', '', 'MAINTATE 5 MG', '0', '1', ' Merry', '2013-08-19 17:22:25', null, null, '0', null, '10BIJI', '255000', '85000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81315', '', 'MODALIM', '0', '1', ' Merry', '2013-08-19 17:26:35', null, null, '0', null, '14 BIJI', '310000', '155000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81316', '', 'PUMPITOR', '0', '1', ' Merry', '2013-08-19 17:27:04', null, null, '0', null, '', '110000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81317', '', 'PROSOGAN 30 MG', '0', '1', ' Merry', '2013-08-19 17:28:15', null, null, '0', null, '', '230000', '16500', 'LBR', 'BIJI', '14', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81318', '', 'OBH PLASTIK', '0', '1', ' Merry', '2013-08-19 17:42:57', null, null, '0', null, '', '10000', '10000', 'BTOL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81319', '', 'BISOLVON ELIXIR 125 ML', '0', '1', ' Merry', '2013-08-19 17:55:39', null, null, '0', null, '', '44000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81321', '', 'INSTO BESAR', '0', '1', ' Merry', '2013-08-19 18:31:27', null, null, '0', null, '', '15000', '0', 'BTOL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81322', '', 'GLUCOPHAGE 500 MG', '0', '1', ' Merry', '2013-08-19 19:00:38', null, null, '0', null, '10 BIJI', '132500', '13500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81323', '', 'BETASERC 8 MG', '0', '1', ' Merry', '2013-08-20 03:58:36', null, null, '0', null, '@14 BIJI', '340000', '85000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81324', '', 'MEDIXON 4 MG', '0', '1', ' Merry', '2013-08-20 04:04:25', null, null, '0', null, '@10BIJI', '232500', '24000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81325', '', 'TUNG CHUNG SHIA CHAO30 BIJI', '0', '1', ' Merry', '2013-08-20 04:06:08', ' Merry', '2013-08-20 04:12:35', '0', null, '', '125000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81326', '', 'MEDICATED SEDANG 20ML', '0', '1', ' Merry', '2013-08-20 04:13:21', null, null, '0', null, '', '175000', '16000', 'LSN', 'BTL', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81327', '', 'GLUCOPHAGE XR 500MG', '0', '1', ' Merry', '2013-08-20 04:15:50', null, null, '0', null, '@8BIJI', '275000', '19000', 'BOX', 'LBR', '15', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81328', '', 'TEGRETOR CR 200 MG', '0', '1', ' Merry', '2013-08-20 04:24:33', null, null, '0', null, '@10BIJI', '235000', '49000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81329', '', 'CAVIT D3', '0', '1', ' Merry', '2013-08-20 04:25:55', null, null, '0', null, '@10 BIJI', '150000', '16000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81330', '', 'LEVAZIDE', '0', '1', ' Merry', '2013-08-20 04:26:44', null, null, '0', null, '@6BIJI', '80000', '17000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81331', '', 'ATORSAN 20 MG', '0', '1', ' Merry', '2013-08-20 04:27:19', null, null, '0', null, '@10BIJI', '270000', '90000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81332', '', 'ATORSAN 10 MG', '0', '1', ' Merry', '2013-08-20 04:27:46', ' Merry', '2013-08-20 04:36:43', '0', null, '@10 BIJI', '270000', '90000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81333', '', 'CATAPRES 150 MG', '0', '1', ' Merry', '2013-08-20 04:28:26', null, null, '0', null, '@10 BIJI', '430000', '44000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81334', '', 'IRBESARTAN 150 MG', '0', '1', ' Merry', '2013-08-20 04:29:46', ' Merry', '2014-09-19 16:47:03', '0', null, '', '25000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81335', '', 'CO APROVEL 300MG', '0', '1', ' Merry', '2013-08-20 04:30:35', null, null, '0', null, '@14 BIJI', '430000', '215000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81336', '', 'APROVEL300MG', '0', '1', ' Merry', '2013-08-20 04:31:23', ' Merry', '2013-08-20 09:51:48', '0', null, '@14 BIJI', '425000', '215000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81337', '', 'LASIX 40 MG', '0', '1', ' Merry', '2013-08-20 04:32:06', null, null, '0', null, '@10BIJI', '445000', '45000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81338', '', 'METRIX 2MG', '0', '1', ' Merry', '2013-08-20 04:32:50', ' Merry', '2013-08-20 04:43:49', '0', null, '@14 BIJI', '130000', '65000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81339', '', 'INSTO KECIL', '0', '1', ' Merry', '2013-08-20 04:44:36', null, null, '0', null, '', '115000', '11000', 'LSN', 'BTL', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81340', '', 'GENOINT KRIM 10GR', '0', '1', ' Merry', '2013-08-20 04:50:59', null, null, '0', null, '', '60000', '5000', 'LSN', 'TUB', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81341', '', 'MEFINAL 250 MG', '0', '1', ' Merry', '2013-08-20 07:12:20', ' Ana', '2014-02-22 17:06:45', '0', null, '@10 BIJI', '65000', '7000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81342', '', 'MEFINAL 500 MG', '0', '1', ' Merry', '2013-08-20 07:13:14', null, null, '0', null, '@10 BIJI', '122500', '13000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81343', '', 'GINKONA', '0', '1', ' Merry', '2013-08-20 07:14:47', null, null, '0', null, '@6 BIJI', '150000', '30000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81344', '', 'TRIBESTAN', '0', '1', ' Merry', '2013-08-20 07:15:52', null, null, '0', null, '@4BIJI', '187000', '38000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81345', '', 'BEE PROPOLIS  60TAB', '0', '1', ' Merry', '2013-08-20 09:22:34', ' Merry', '2014-04-28 13:44:23', '0', null, '', '260000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81347', '', 'OPTILET M', '0', '1', ' Merry', '2013-08-20 09:58:29', null, null, '0', null, '', '220000', '2500', 'BBTL', 'BIJI', '100', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81348', '', 'OLMETEC 20 MG', '0', '1', ' Merry', '2013-08-20 10:28:07', null, null, '0', null, '10 BIJI', '375000', '125000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81349', '', 'Y-RINS', '0', '1', ' Merry', '2013-08-20 11:18:03', null, null, '0', null, '', '30000', '30000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81350', '', 'GLUMIN XR 750 MG', '0', '1', ' Merry', '2013-08-20 11:23:01', null, null, '0', null, '10', '150000', '16000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81351', '', 'MICROLAC ISI3', '0', '1', ' Merry', '2013-08-20 11:28:54', ' Merry', '2013-08-21 14:53:25', '0', null, '', '48000', '17500', 'BOX', 'BIJI', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81352', '', 'DIFLUCAN 50 MG', '0', '1', ' Merry', '2013-08-20 11:55:02', ' Merry', '2013-09-30 13:52:52', '0', null, '', '335000', '35000', 'BOX', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81353', '', 'CO DIOVAN 80MG/12.5MG', '0', '1', ' Merry', '2013-08-20 12:12:27', null, null, '0', null, '14 BIJI', '340000', '170000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81354', '', 'IMODIUM', '0', '1', ' Merry', '2013-08-20 12:42:56', null, null, '0', null, '', '80000', '9000', 'LBR', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81355', '', 'CEREBROFOT CAP', '0', '1', ' Merry', '2013-08-20 12:58:44', null, null, '0', null, '10BIJI', '130000', '13500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81356', '', 'Q TEN 60 MG', '0', '1', ' Merry', '2013-08-20 13:48:15', null, null, '0', null, '', '235000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81357', '', 'CEFAT 250 MG', '0', '1', ' Merry', '2013-08-20 14:07:52', null, null, '0', null, '10 BIJI', '500000', '50000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81358', '', 'ACTOS 30 MG', '0', '1', ' Merry', '2013-08-20 14:09:00', null, null, '0', null, '7 BIJI', '160000', '80000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81359', '', 'JING JAU', '0', '1', ' Merry', '2013-08-20 14:59:09', null, null, '0', null, '', '142500', '12500', 'LSN', 'BIJI', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81360', '', 'ETHIVASK 5 MG', '0', '1', ' Merry', '2013-08-20 15:59:32', null, null, '0', null, '10 BIJI', '105000', '35000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81361', '', 'APPETON TAURINE 60S', '0', '1', ' Merry', '2013-08-20 16:10:19', null, null, '0', null, '', '185000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81362', '', 'BIO-STRATH 250 ML', '0', '1', ' Merry', '2013-08-20 16:19:20', null, null, '0', null, '', '510000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81363', '', 'LAPISTAN', '0', '1', ' Merry', '2013-08-20 16:21:49', null, null, '0', null, '10 BIJI', '95000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81364', '', 'INTERNOLOL 50 MG', '0', '1', ' Merry', '2013-08-20 17:34:37', ' Merry', '2013-08-20 17:34:57', '0', null, '10 BIJI', '52500', '17500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81365', '', 'DIGOXIN', '0', '1', ' Merry', '2013-08-20 17:45:30', null, null, '0', null, '10 BIJI', '105000', '11000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81366', '', 'DUODART', '0', '1', ' Merry', '2013-08-20 18:01:01', ' Merry', '2013-08-20 18:03:58', '0', null, '', '510000', '510000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81367', '', 'PROTOS', '0', '1', ' Merry', '2013-08-20 18:43:13', null, null, '0', null, '', '530000', '530000', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81368', '', 'LOTASBAT KRIM', '0', '1', ' Merry', '2013-08-20 18:59:37', ' Merry', '2013-09-15 16:34:57', '0', null, '', '35000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81369', '', 'BORAGINOL N OINT 15GR', '0', '1', ' Merry', '2013-08-20 19:01:58', null, null, '0', null, '', '50000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81370', '', 'BORAGINOL N SUPPO', '0', '1', ' Merry', '2013-08-20 19:02:39', ' Merry', '2013-08-20 19:04:25', '0', null, '5 BIJI', '90000', '45000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81371', '', 'BORAGINOL S OINT', '0', '1', ' Merry', '2013-08-20 19:03:35', null, null, '0', null, '', '66000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81372', '', 'BORAGINOL S SUPPO', '0', '1', ' Merry', '2013-08-20 19:04:15', null, null, '0', null, '5 BIJI', '105000', '55000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81373', '', 'NOURISHSKIN ULTIMATE60S', '0', '1', ' Merry', '2013-08-20 19:09:36', null, null, '0', null, '', '425000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81374', '', 'MERISLON', '0', '1', ' Merry', '2013-08-20 19:11:25', null, null, '0', null, '10 BIJI', '420000', '43000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81375', '', 'FIBESCO', '0', '1', ' Merry', '2013-08-20 19:12:10', ' Merry', '2013-08-21 08:57:59', '0', null, '6 BIJI', '412500', '82500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81376', '', 'OSTE FORTE', '0', '1', ' Merry', '2013-08-21 04:24:07', null, null, '0', null, '6 BIJI', '190000', '40000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81377', '', 'ARDIUM', '0', '1', ' Merry', '2013-08-21 04:25:24', null, null, '0', null, '6BIJI', '285000', '47500', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81378', '', 'ZANTAC 150 MG', '0', '1', ' Merry', '2013-08-21 04:26:27', null, null, '0', null, '10 BIJI', '105000', '37500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81379', '', 'PTU', '0', '1', ' Merry', '2013-08-21 04:27:45', null, null, '0', null, '', '35000', '500', 'BTL', 'BIJI', '100', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81380', '', 'MOTILEX', '0', '1', ' Merry', '2013-08-21 04:28:41', null, null, '0', null, '10 BIJI', '145000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81381', '', 'TEOSAL', '0', '1', ' Merry', '2013-08-21 04:29:23', null, null, '0', null, '10 BIJI', '17500', '2500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81382', '', 'DIAMICRON MR 60', '87500', '1', ' Merry', '2013-08-21 04:31:27', null, null, '0', null, '14 BIJI', '195000', '97500', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81384', '', 'HEMOBION', '0', '1', ' Merry', '2013-08-21 04:35:28', null, null, '0', null, '10 BIJI', '148000', '16000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81385', '', 'CEFAT 500MG', '0', '1', ' Merry', '2013-08-21 04:39:09', ' Merry', '2013-09-17 12:16:30', '0', null, '8500', '95000', '10000', 'LBR', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81386', '', 'CELEBREX 100MG', '0', '1', ' Merry', '2013-08-21 04:41:31', null, null, '0', null, '10BIJI', '210000', '70000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81387', '', 'CO DIOVAN 160MG/12,5MG', '0', '1', ' Merry', '2013-08-21 04:43:41', null, null, '0', null, '14BIJI', '400000', '200000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81388', '', 'PRAVINAT 20 MG', '0', '1', ' Merry', '2013-08-21 04:49:19', null, null, '0', null, '10 BIJI', '810000', '137500', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81389', '', 'AFAMED', '0', '1', ' Merry', '2013-08-21 05:10:12', null, null, '0', null, '10 BIJI', '240000', '80000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81390', '', 'KOMBIGLYZE XR 500', '0', '1', ' Merry', '2013-08-21 05:12:05', null, null, '0', null, '10BIJI', '340000', '85000', 'BOX', 'LBR', '4', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81391', '', 'OSTEONATE OD', '0', '1', ' Merry', '2013-08-21 05:15:51', ' Merry', '2013-09-17 09:08:20', '0', null, '10 BIJI', '355000', '120000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81392', '', 'DIAMICRON 80 MG', '0', '1', ' Merry', '2013-08-21 05:18:56', null, null, '0', null, '10 BIJI', '468000', '39000', 'BOX', 'LBR', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81393', '', 'TENORMIN 50 MG', '0', '1', ' Merry', '2013-08-21 05:22:11', null, null, '0', null, '14 BIJI', '220000', '110000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81394', '', 'VITAMIN K', '0', '1', ' Merry', '2013-08-21 05:25:58', null, null, '0', null, '', '10000', '100', 'BTL', 'BIJI', '100', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81395', '', 'HANSAPLAST PLESTER ROL ', '0', '1', ' Merry', '2013-08-21 06:49:59', null, null, '0', null, '', '75000', '3000', 'BOX', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81396', '', 'NEBIDO', '0', '1', ' Merry', '2013-08-21 06:58:48', null, null, '0', null, '', '2350000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81397', '', 'GLUCOPHAGE XR 750 MG', '0', '1', ' Merry', '2013-08-21 07:07:52', null, null, '0', null, '15BIJI', '280000', '35000', 'BOX', 'LBR', '8', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81398', '', 'DEFLAMAT CR 100MG', '0', '1', ' Merry', '2013-08-21 07:12:38', null, null, '0', null, '', '145000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81399', '', 'CORDILA SR', '0', '1', ' Merry', '2013-08-21 07:14:30', null, null, '0', null, '10 BIJI', '210000', '70000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('14000', '', 'LIVALO', '0', '1', ' Merry', '2013-08-21 12:41:14', null, null, '0', null, '10 BIJI', '247500', '82500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81400', '', 'BRICASMA TAB', '0', '1', ' Merry', '2013-08-21 13:16:01', null, null, '0', null, '10 BIJI', '255000', '26000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81401', '', 'GLAMAROL 3 MG', '0', '1', ' Merry', '2013-08-21 14:49:36', null, null, '0', null, '10 BIJI', '174000', '58000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81402', '', 'LOSEC 20MG', '0', '1', ' Merry', '2013-08-21 14:59:34', null, null, '0', null, '7 BIJI', '300000', '155000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81403', '', 'B6', '0', '1', ' Merry', '2013-08-21 15:20:46', null, null, '0', null, '', '100000', '100', 'BTL', 'BIJI', '500', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81404', '', 'SARANG SEMUT BUBUK', '0', '1', ' Merry', '2013-08-21 16:06:31', null, null, '0', null, '', '130000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81405', '', 'LETONAL 25 MG', '0', '1', ' Merry', '2013-08-21 16:08:08', null, null, '0', null, '10 BIJI', '140000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81406', '', 'ELOCON10GR', '0', '1', ' Merry', '2013-08-21 16:18:40', null, null, '0', null, '', '87500', '87500', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81407', '', 'HEMAVITON STAMINA', '0', '1', ' Merry', '2013-08-21 16:26:51', null, null, '0', null, '5 BIJI', '52500', '6000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81408', '', 'NEBACETIN SALEP', '0', '1', ' Merry', '2013-08-21 16:29:42', null, null, '0', null, '', '20000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81409', '', 'HP PRO', '0', '1', ' Merry', '2013-08-21 17:16:10', null, null, '0', null, '10 BIJI', '530000', '45000', 'BOX', 'LBR', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81410', '', 'NEUROSANBE', '0', '1', ' Merry', '2013-08-21 17:19:40', null, null, '0', null, '10 BIJI', '105000', '11000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81411', '', 'ARTRODAR', '0', '1', ' Merry', '2013-08-21 17:22:03', ' Ana', '2013-11-21 14:04:55', '0', null, '10 BIJI', '270000', '90000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81412', '', 'FUROSEMIDE', '0', '1', ' Merry', '2013-08-21 17:24:52', ' Sri', '2014-05-15 16:08:13', '0', null, '10BIJI', '25000', '2000', 'BOX', 'LBR', '20', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81413', '', 'BAQUINOR 500MG', '0', '1', ' Merry', '2013-08-21 17:27:17', null, null, '0', null, '', '140000', '15000', 'LBR', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81414', '', 'HYPERIL 2,5 MG', '0', '1', ' Merry', '2013-08-21 17:33:52', null, null, '0', null, '6 BIJI', '340000', '35000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81415', '', 'MYONAL', '0', '1', ' Merry', '2013-08-21 17:34:35', ' Merry', '2013-09-02 13:44:01', '0', null, '10 BIJI', '640000', '67500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81417', '', 'ULTRACET', '0', '1', ' Merry', '2013-08-21 17:37:01', null, null, '0', null, '10 BIJI', '240000', '80000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81418', '', 'PRAZOTEC', '0', '1', ' Merry', '2013-08-21 17:39:27', null, null, '0', null, '', '105000', '11000', 'LBR', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81419', '', 'CRAVIT 500 MG', '0', '1', ' Merry', '2013-08-21 17:41:58', null, null, '0', null, '', '385000', '40000', 'LBR', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81420', '', 'NERISONA ORAL', '0', '1', ' Merry', '2013-08-21 17:51:15', null, null, '0', null, '', '290000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81421', '', 'LUFTEN 25 MG', '0', '1', ' Merry', '2013-08-21 17:52:28', null, null, '0', null, '10 BIJI', '265000', '52500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81422', '', 'PARIDE 2 MG', '0', '1', ' Merry', '2013-08-21 17:53:09', null, null, '0', null, '10 BIJI', '120000', '40000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81423', '', 'TAMOFEN 20 MG', '0', '1', ' Merry', '2013-08-21 17:53:51', ' Merry', '2013-09-16 11:09:26', '0', null, '10 BIJI', '180000', '60000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81424', '', 'OPTIMAX TAB', '0', '1', ' Merry', '2013-08-21 18:40:15', ' Sri', '2014-06-18 19:00:03', '0', null, '6 BIJI', '150000', '31000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81425', '', 'ATOFAR20MG', '0', '1', ' Merry', '2013-08-21 18:46:58', null, null, '0', null, '10 BIJI', '300000', '100000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81426', '', 'ATOFAR 40MG', '0', '1', ' Merry', '2013-08-21 18:47:33', null, null, '0', null, '10 BIJI', '315000', '105000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81427', '', 'COVERAM 10/10', '0', '1', ' Merry', '2013-08-21 18:48:15', null, null, '0', null, '', '435000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81428', '', 'DIPROGENTA 10 MG', '0', '1', ' Merry', '2013-08-21 18:49:05', null, null, '0', null, '', '82000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81429', '', 'LIKURMIN', '0', '1', ' Merry', '2013-08-21 18:50:06', null, null, '0', null, '', '32000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81430', '', 'ULCERANIN', '0', '1', ' Merry', '2013-08-21 19:03:21', null, null, '0', null, '10 BIJI', '35000', '7000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81431', '', 'SIFROL 0,125', '0', '1', ' Merry', '2013-08-21 19:04:13', null, null, '0', null, '10 BIJI', '197500', '67500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81432', '', 'PLADOGREL', '0', '1', ' Merry', '2013-08-21 19:12:42', null, null, '0', null, '10 BIJI', '405000', '135000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81433', '', 'GOCLID', '0', '1', ' Merry', '2013-08-21 19:15:18', null, null, '0', null, '10 BIJI', '130000', '65000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81434', '', 'MAGANOL', '0', '1', ' Merry', '2013-08-21 19:16:36', null, null, '0', null, '10 BIJI', '50000', '5000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81435', '', 'RYDIAN', '0', '1', ' Merry', '2013-08-21 19:18:16', null, null, '0', null, '10BIJI', '120000', '40000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81436', '', 'CAL 95', '0', '1', ' Merry', '2013-08-21 19:20:59', null, null, '0', null, '6 BIJI', '130000', '26000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81437', '', 'ZIBRAMAX 500 MG', '0', '1', ' Merry', '2013-08-21 19:21:39', null, null, '0', null, '3BIJI', '180000', '90000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81438', '', 'PLASMIN', '0', '1', ' Merry', '2013-08-21 19:22:22', null, null, '0', null, '10 BIJI', '315000', '105000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81439', '', 'NATTO', '0', '1', ' Merry', '2013-08-21 19:22:49', null, null, '0', null, '4BIJI', '255000', '52000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81440', '', 'PANTOZOL 20 MG', '0', '1', ' Merry', '2013-08-21 19:27:07', null, null, '0', null, '', '112500', '115000', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81441', '', 'CARDACE 5 MG', '0', '1', ' Merry', '2013-08-21 19:28:37', null, null, '0', null, '10 BIJI', '270000', '45000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81442', '', 'GABEXAL', '0', '1', ' Merry', '2013-08-21 19:40:18', ' Merry', '2014-09-23 15:46:15', '0', null, '10 BIJI', '180000', '60000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81443', '', 'MYCORAL TAB', '0', '1', ' Merry', '2013-08-21 19:40:55', null, null, '0', null, '10 BIJI', '195000', '40000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81444', '', 'ALOVELL 10 MG', '0', '1', ' Merry', '2013-08-21 19:41:28', ' Merry', '2014-12-11 18:57:23', '0', null, '10 BIJI', '307500', '102500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81446', '', 'CLANEKSI 500MG', '0', '1', ' Merry', '2013-08-21 19:42:33', null, null, '0', null, '6BIJI', '275000', '60000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81447', '', 'INLACIN 100 MG', '0', '1', ' Merry', '2013-08-21 19:43:02', ' Merry', '2013-11-22 18:08:34', '0', null, '6 BIJI', '155000', '32500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81448', '', 'ATORVASTATIN20MG', '0', '1', ' Merry', '2013-08-22 10:37:02', null, null, '0', null, '10 BIJI', '135000', '45000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81449', '', 'PANTOZOL 40MG', '0', '1', ' Merry', '2013-08-22 10:39:56', null, null, '0', null, '7 BIJI', '142500', '0', 'BOX', 'LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81450', '', 'ROZEREM', '0', '1', ' Merry', '2013-08-22 11:23:05', null, null, '0', null, '7 BIJI', '170000', '0', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81451', '', 'CALTRATE PLUS BITAMIN D', '0', '1', ' Merry', '2013-08-22 11:36:20', null, null, '0', null, '', '115000', '0', 'BTL', 'BIJI', '60', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81452', '', 'VICKS SYRUP BESAR 100ML', '0', '1', ' Merry', '2013-08-22 11:39:00', ' Merry', '2013-11-14 08:50:49', '0', null, '', '14000', '14000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81453', '', 'CEFIXIME 200 MG', '0', '1', ' Merry', '2013-08-22 11:40:17', null, null, '0', null, '10 BIJI', '350000', '35000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81454', '', 'YB SPRAY', '0', '1', ' Merry', '2013-08-22 11:59:13', null, null, '0', null, '', '60000', '60000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81455', '', 'HEPA-BALANCE', '0', '1', ' Merry', '2013-08-22 12:08:44', ' Merry', '2013-08-22 12:08:54', '0', null, '6 BIJI', '700000', '70000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81456', '', 'ENERVON SYP', '0', '1', ' Merry', '2013-08-22 13:01:17', null, null, '0', null, '', '17000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81457', '', 'HERCLOV', '0', '1', ' Merry', '2013-08-22 13:41:51', ' Ana', '2014-03-27 10:15:35', '0', null, '', '135000', '14000', 'LBR', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81458', '', 'VITAMIN A 6000', '0', '1', ' Merry', '2013-08-22 13:45:11', null, null, '0', null, '', '27500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81459', '', 'VITAMIN A 20000', '0', '1', ' Merry', '2013-08-22 13:45:38', null, null, '0', null, '', '35000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81460', '', 'TIOLA', '0', '1', ' Merry', '2013-08-22 13:49:50', null, null, '0', null, '6 BIJI', '130000', '27500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81461', '', 'NUTRIFLAM', '0', '1', ' Merry', '2013-08-22 13:51:05', null, null, '0', null, '6 BIJI', '565000', '57500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81462', '', 'BIOQUINON', '0', '1', ' Merry', '2013-08-22 14:11:13', null, null, '0', null, '10BIJI', '712500', '142500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81463', '', 'ZOTER 400MG', '0', '1', ' Merry', '2013-08-22 14:32:42', null, null, '0', null, '4BIJI', '90000', '30000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81464', '', 'FELOSMA 300 MG', '0', '1', ' Merry', '2013-08-22 14:36:54', null, null, '0', null, '10 BIJI', '240000', '80000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81465', '', 'IBU ANAK BESAR', '0', '1', ' Merry', '2013-08-22 14:59:33', null, null, '0', null, '', '48000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81466', '', 'ALKOHOL 1 LITER', '0', '1', ' Merry', '2013-08-22 15:27:39', ' Ana', '2013-12-11 18:05:32', '0', null, '', '12500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81467', '', 'GRAPRIMA', '0', '1', ' Merry', '2013-08-22 15:39:19', ' Merry', '2013-08-22 15:39:30', '0', null, '10 BIJI', '40000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81468', '', 'BROCON', '0', '1', ' Merry', '2013-08-22 16:20:01', null, null, '0', null, '10 BIJI', '55000', '8000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81469', '', 'DERMIFAR 10GR', '0', '1', ' Merry', '2013-08-22 16:21:11', null, null, '0', null, '', '10000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81470', '', 'FASIPRIM FORTE', '0', '1', ' Merry', '2013-08-22 16:22:12', ' Merry', '2015-02-23 17:03:47', '0', null, '10 BIJI', '125000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81471', '', 'FLUTOP C SYP', '0', '1', ' Merry', '2013-08-22 16:22:42', null, null, '0', null, '', '12000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81472', '', 'FLAZYMEC TAB', '0', '1', ' Merry', '2013-08-22 16:23:27', null, null, '0', null, '10 BIJI', '150000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81473', '', 'KANINA SYP', '0', '1', ' Merry', '2013-08-22 16:23:52', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81474', '', 'VICKS SYP 54ML', '0', '1', ' Merry', '2013-08-22 16:32:50', null, null, '0', null, '', '11000', '11000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81475', '', 'COUNTERPAIN 120 GR', '0', '1', ' Merry', '2013-08-22 16:34:11', null, null, '0', null, '', '80000', '3', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81476', '', 'SORPIREN 2MG', '0', '1', ' Merry', '2013-08-22 17:01:39', ' Merry', '2013-09-25 18:37:46', '0', null, '10 BIJI', '230000', '77000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81477', '', 'AERIUS TAB', '0', '1', ' Merry', '2013-08-22 17:03:44', null, null, '0', null, '14 BIJI', '210000', '105000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81478', '', 'LACTULAX 200ML', '0', '1', ' Merry', '2013-08-22 17:04:13', null, null, '0', null, '', '105000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81479', '', 'ALERTEN 100MG', '0', '1', ' Merry', '2013-08-22 18:09:03', null, null, '0', null, '10 BIJI', '307500', '102500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81480', '', 'TOPLEXIL 120 ML', '0', '1', ' Merry', '2013-08-22 18:12:48', null, null, '0', null, '', '72500', '72500', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81481', '', 'STATOR 10 MG', '0', '1', ' Merry', '2013-08-22 18:22:38', null, null, '0', null, '10 BIJI', '435000', '145000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81482', '', 'INTERPRIL 5 MG', '0', '1', ' Merry', '2013-08-22 18:29:38', null, null, '0', null, '10 BIJI', '75000', '25000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81483', '', 'RETIVIT PLUS', '0', '1', ' Merry', '2013-08-23 10:00:42', null, null, '0', null, '10 BIJI', '610000', '62000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81484', '', 'ALOCLAIR KUMUR', '0', '1', ' Merry', '2013-08-23 10:01:08', null, null, '0', null, '', '90000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81485', '', 'ARIMEDEX', '0', '1', ' Merry', '2013-08-23 11:05:21', ' Merry', '2013-08-23 11:05:30', '0', null, '14 BIJI', '1600000', '800000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81486', '', 'GPU', '0', '1', ' Merry', '2013-08-23 11:15:44', null, null, '0', null, '11000', '142000', '12000', 'LSN', 'BTL', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81487', '', 'BETADINE VAGINA TA 225ML', '0', '1', ' Merry', '2013-08-23 11:19:54', ' Merry', '2013-11-19 09:31:18', '0', null, '', '77500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81488', '', 'ADECCO', '0', '1', ' Merry', '2013-08-23 11:22:23', null, null, '0', null, '10 BIJI', '90000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81489', '', 'LETHIRA', '0', '1', ' Merry', '2013-08-23 11:22:57', null, null, '0', null, '10 BIJI', '170000', '85000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81490', '', 'CONCOR 5MG', '0', '1', ' Merry', '2013-08-23 12:29:18', null, null, '0', null, '10 BIJI', '795000', '80000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81491', '', 'ESSENTIAL MV 21', '0', '1', ' Merry', '2013-08-23 13:13:43', null, null, '0', null, '', '220000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81492', '', 'ELKANA SYP', '0', '1', ' Merry', '2013-08-23 13:57:55', null, null, '0', null, '', '21000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81493', '', 'CINULA', '0', '1', ' Merry', '2013-08-23 14:35:28', null, null, '0', null, '10 BIJI', '172500', '57500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81494', '', 'CAVIDA', '0', '1', ' Merry', '2013-08-23 15:27:29', null, null, '0', null, '10 BIJI', '150000', '25000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81495', '', 'MAXIMUS', '0', '1', ' Merry', '2013-08-23 15:30:05', ' Merry', '2013-08-23 15:46:11', '0', null, '', '45000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81496', '', 'ACETRAM', '0', '1', ' Merry', '2013-08-23 15:45:05', null, null, '0', null, '', '80000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81498', '', 'PARASOL SPF 30 LOTION', '0', '1', ' Merry', '2013-08-23 15:50:24', ' Merry', '2013-08-25 18:06:06', '0', null, '', '75000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81499', '', 'XARELTO 20MG', '0', '1', ' Merry', '2013-08-23 16:09:44', null, null, '0', null, '10 BIJI', '800000', '400000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81500', '', 'DALACIN 150 MG', '0', '1', ' Merry', '2013-08-23 16:45:36', null, null, '0', null, '10 BIJI', '225000', '80000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81501', '', 'APIDRA', '0', '1', ' Merry', '2013-08-23 17:27:04', ' Merry', '2013-08-23 17:27:19', '0', null, '', '675000', '140000', 'BOX', 'PEN', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81502', '', 'DOMETIC', '0', '1', ' Merry', '2013-08-23 17:29:18', ' Merry', '2013-08-23 17:52:49', '0', null, '10 BIJI', '150000', '30000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81503', '', 'LIRAZOLC 25MG', '0', '1', ' Merry', '2013-08-23 17:53:35', ' Merry', '2013-09-25 18:41:05', '0', null, '10 BIJI', '400000', '80000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81504', '', 'PLETAAL100 MG', '0', '1', ' Merry', '2013-08-23 17:54:56', null, null, '0', null, '10 BIJI', '370000', '130000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81506', '', 'LAMICTAL 100 MG', '0', '1', ' Merry', '2013-08-23 19:15:17', null, null, '0', null, '10BIJI', '275000', '92500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81507', '', 'VOLTAREN SR75MG', '0', '1', ' Merry', '2013-08-23 19:17:43', null, null, '0', null, '10 BIJI', '410000', '82500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81508', '', 'ILIADIN SPRAY 0,05%', '0', '1', ' Merry', '2013-08-23 19:19:15', null, null, '0', null, '', '50000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81509', '', 'NITROTECH SUSU', '0', '1', ' Merry', '2013-08-24 09:52:28', null, null, '0', null, '', '725000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81510', '', 'INERSON KRIM', '0', '1', ' Merry', '2013-08-24 10:48:04', ' Merry', '2013-09-23 10:36:24', '0', null, '', '260000', '21000', 'LUSIN', 'TUBE', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81511', '', 'SIDO MUNCUL MANGGIS ', '0', '1', ' Merry', '2013-08-24 11:10:05', ' Ana', '2013-11-21 09:17:28', '0', null, '', '720000', '55000', 'LSN', 'BTL', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81512', '', 'GINKGO JOJO 60 BIJI', '0', '1', ' Merry', '2013-08-24 11:18:28', ' Merry', '2013-08-25 18:09:07', '0', null, '', '235000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81513', '', 'ANADIUM', '0', '1', ' Merry', '2013-08-24 12:00:00', ' Merry', '2013-09-23 10:36:00', '0', null, '10 BIJI', '225000', '75000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81515', '', 'NEPHROVIT FE', '0', '1', ' Merry', '2013-08-24 12:24:03', null, null, '0', null, '10 BIJI', '150000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81516', '', 'IRBOSYD', '0', '1', ' Merry', '2013-08-24 12:24:54', null, null, '0', null, '10 BIJI', '105000', '35000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81517', '', 'IRVELL 300 MG', '0', '1', ' Merry', '2013-08-24 13:42:32', null, null, '0', null, '10 BIJI', '240000', '120000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81518', '', 'REMINYL 8MG', '0', '1', ' Merry', '2013-08-24 14:43:33', ' Merry', '2013-09-23 10:35:17', '0', null, '@14 BIJI', '1620000', '405000', 'BOX', 'LBR', '4', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81519', '', 'NOROID BESAR 200ML', '0', '1', ' Merry', '2013-08-24 14:48:42', ' Ana', '2014-02-14 15:06:07', '0', null, '', '125000', '0', 'BTL', '', '0', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81520', '', 'PRIMPERAN 10MG', '0', '1', ' Merry', '2013-08-24 14:49:36', ' Merry', '2013-09-23 10:33:47', '0', null, '10 BIJI', '130000', '13500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81521', '', 'FLEXOR DS', '0', '1', ' Merry', '2013-08-24 14:57:49', ' Merry', '2013-08-29 11:58:23', '0', null, '6 BIJI', '335000', '33500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81522', '', 'RIFAMPICIN 450MG', '0', '1', ' Merry', '2013-08-24 14:59:36', ' Merry', '2013-08-25 18:12:06', '0', null, '10 BIJI', '120000', '12500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81523', '', 'MBK SILVER', '0', '1', ' Merry', '2013-08-24 16:02:02', null, null, '0', null, '', '20000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81524', '', 'CURCUMA', '0', '1', ' Merry', '2013-08-24 16:20:52', ' Merry', '2013-09-23 10:33:27', '0', null, '10 BIJI', '75000', '8500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81525', '', 'AMOXIL 500MG', '0', '1', ' Merry', '2013-08-24 16:22:14', ' Merry', '2013-09-23 10:33:04', '0', null, '4 BIJI', '250000', '10000', 'BOX', 'LBR', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81526', '', 'BIO GAIA', '0', '1', ' Merry', '2013-08-24 16:30:08', null, null, '0', null, '10 BIJI', '210000', '43000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81527', '', 'ASTHIN BOND', '0', '1', ' Merry', '2013-08-24 17:53:19', null, null, '0', null, '', '280000', '0', 'BTL', 'BIJI', '30', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81528', '', 'REMERON', '0', '1', ' Merry', '2013-08-24 18:03:07', null, null, '0', null, '10 BIJI', '575000', '195000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81529', '', 'ASPILET', '0', '1', ' Merry', '2013-08-24 18:16:05', null, null, '0', null, '10 BIJI', '70000', '8000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81530', '', 'DECOLGEN', '0', '1', ' Merry', '2013-08-24 18:24:05', null, null, '0', null, '4BIJI', '40000', '2000', 'BOX', 'LBR', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81531', '', 'OSTEOR PLUS', '0', '1', ' Merry', '2013-08-24 18:24:39', null, null, '0', null, '6 BIJI', '200000', '40000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81532', '', 'NEOMERCAZOLE', '0', '1', ' Merry', '2013-08-24 18:25:18', ' Merry', '2013-08-25 18:10:01', '0', null, '', '97500', '1000', 'BTL', 'BIJI', '100', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81533', '', 'PROME SYP', '0', '1', ' Merry', '2013-08-24 18:28:06', null, null, '0', null, '', '22000', '22000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81534', '', 'INTERHISTIN TAB', '0', '1', ' Merry', '2013-08-24 18:29:26', null, null, '0', null, '10 BIJI', '55000', '6500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81535', '', 'HIBONE 600MG', '0', '1', ' Merry', '2013-08-24 18:30:38', ' Merry', '2013-11-17 17:05:30', '0', null, '', '110000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81536', '', 'SANB PLEX', '0', '1', ' Merry', '2013-08-24 18:31:58', null, null, '0', null, '', '17500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81537', '', 'SICLIDON', '0', '1', ' Merry', '2013-08-24 18:33:39', ' Merry', '2013-09-25 09:12:07', '0', null, '10 BIJI', '100000', '50000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81538', '', 'HYALOP ED', '0', '1', ' Merry', '2013-08-24 18:35:16', ' Sri', '2014-12-11 18:51:50', '0', null, '', '60000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81539', '', 'VOLTAREN 100 MG', '0', '1', ' Merry', '2013-08-25 13:07:42', null, null, '0', null, '10 BIJI', '537500', '107500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81540', '', 'MECOBOLAMIN', '0', '1', ' Merry', '2013-08-25 13:27:11', null, null, '0', null, '10 BIJI', '70000', '8000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81541', '', 'VITAMIN B6', '0', '1', ' Merry', '2013-08-25 13:46:33', null, null, '0', null, '', '100000', '100', 'BTL', 'BIJI', '900', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81542', '', 'RECUSTEIN', '0', '1', ' Merry', '2013-08-25 16:17:09', null, null, '0', null, '10 BIJI', '100000', '50000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81543', '', 'WOODS MERAH BESAR', '0', '1', ' Merry', '2013-08-25 16:21:58', ' Merry', '2013-09-29 15:14:41', '0', null, '', '27000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81544', '', 'MKP AMBON BIR', '0', '1', ' Merry', '2013-08-26 12:13:53', null, null, '0', null, '', '175000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81545', '', 'CALADIN LOTION', '0', '1', ' Merry', '2013-08-26 13:10:49', null, null, '0', null, '', '16000', '16000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81546', '', 'CAPTENSIN 25 MG', '0', '1', ' Merry', '2013-08-26 13:36:34', null, null, '0', null, '10 BIJI', '25000', '5000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81548', '', 'CLARINASE TAB', '0', '1', ' Merry', '2013-08-26 13:37:57', ' Sri', '2014-11-21 15:13:52', '0', null, '10 BIJI', '275000', '55000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81550', '', 'PEPTOCYL 200 MG', '0', '1', ' Merry', '2013-08-26 15:40:11', null, null, '0', null, '10 BIJI', '82500', '27500', 'BOX', 'LBR', '4', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81551', '', 'LIFEN 200MG', '0', '1', ' Merry', '2013-08-26 15:49:10', ' Merry', '2013-09-06 18:19:18', '0', null, '10 BIJI', '375000', '125000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81552', '', 'ULZOL 20 MG', '0', '1', ' Merry', '2013-08-26 15:50:52', null, null, '0', null, '10 BIJI', '230000', '130000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81553', '', 'CLARIHIS TAB', '0', '1', ' Merry', '2013-08-26 16:26:28', ' Merry', '2013-08-29 17:56:10', '0', null, '10 BIJI', '127500', '42500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81554', '', 'REGROU FORTE', '0', '1', ' Merry', '2013-08-26 16:48:50', null, null, '0', null, '', '105000', '0', 'BTLO', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81555', '', 'BETADIN PLESTER', '0', '1', ' Merry', '2013-08-26 17:39:43', null, null, '0', null, '', '22000', '250', 'BOX', 'BIJI', '100', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81556', '', 'GLUNOR 850 MG', '0', '1', ' Merry', '2013-08-26 18:19:41', null, null, '0', null, '10 BIJI', '70000', '14000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81557', '', 'GLUNOR XR 500 MG', '0', '1', ' Merry', '2013-08-26 18:20:31', null, null, '0', null, '10 BIJI', '45000', '15000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81558', '', 'FREGO 10MG', '0', '1', ' Merry', '2013-08-26 18:21:21', null, null, '0', null, '10 BIJI', '400000', '80000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81559', '', 'ANTIFLAT', '0', '1', ' Merry', '2013-08-26 18:25:37', null, null, '0', null, '10BIJI', '187500', '62500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81561', '', 'HYDERGIN 1 MG', '0', '1', ' Merry', '2013-08-26 19:14:08', null, null, '0', null, '10 BIJI', '650000', '65000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81562', '', 'WOOD MERAH KECIL', '0', '1', ' Merry', '2013-08-26 19:15:33', null, null, '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81563', '', 'WOOD BIRU KECIL', '0', '1', ' Merry', '2013-08-26 19:16:05', null, null, '0', null, '', '15000', '15000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81564', '', 'AMDIXAL 5 MG', '0', '1', ' Merry', '2013-08-26 19:27:03', null, null, '0', null, '10 BIJI', '75000', '25000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81565', '', 'TEAR NATURALE', '0', '1', ' Merry', '2013-08-26 19:29:47', null, null, '0', null, '', '50000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81566', '', 'STROCAIN', '0', '1', ' Merry', '2013-08-26 19:31:04', null, null, '0', null, '10 BIJI', '185000', '19000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81567', '', 'IREMAX', '0', '1', ' Merry', '2013-08-26 19:32:12', ' Merry', '2013-08-26 19:32:17', '0', null, '10 BIJI', '70000', '8000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81568', '', 'ZISTIC 500MG', '0', '1', ' Merry', '2013-08-26 19:37:28', ' Merry', '2013-08-26 19:38:16', '0', null, '', '250000', '25000', 'BOX', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81569', '', 'MEPTIN MINI', '0', '1', ' Merry', '2013-08-27 10:12:57', null, null, '0', null, '10 BIJI', '175000', '20000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81570', '', 'Q TEN 30MG', '0', '1', ' Merry', '2013-08-27 11:34:44', null, null, '0', null, '', '175000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81571', '', 'AUGMENTIN', '0', '1', ' Merry', '2013-08-27 12:53:06', ' Merry', '2013-08-28 12:10:47', '0', null, '4BIJI', '487500', '32500', 'BOX', 'LBR', '15', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81572', '', 'PROFIBRATE 200MG ', '0', '1', ' Merry', '2013-08-27 12:55:48', null, null, '0', null, '10 BIJI', '390000', '130000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81573', '', 'ZALDIAR', '0', '1', ' Merry', '2013-08-27 14:13:04', null, null, '0', null, '', '95000', '95000', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81575', '', 'TOBROSONE MD', '0', '1', ' Merry', '2013-08-27 14:20:53', null, null, '0', null, '', '30000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81576', '', 'PICULA', '0', '1', ' Merry', '2013-08-27 14:57:23', null, null, '0', null, '6 BIJI', '110000', '22000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81577', '', 'DOLOSCANEURON', '0', '1', ' Merry', '2013-08-27 15:17:17', null, null, '0', null, '10 B IJI', '110000', '13000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81578', '', 'BETADINE SOL 60 ML', '0', '1', ' Merry', '2013-08-27 15:50:08', null, null, '0', null, '', '30000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81579', '', 'BETADINE SOL 15ML', '0', '1', ' Merry', '2013-08-27 15:50:44', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81580', '', 'BETADINE SOL30 ML', '0', '1', ' Merry', '2013-08-27 15:51:24', null, null, '0', null, '', '17500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81581', '', 'BETADINE SOL 5ML', '0', '1', ' Merry', '2013-08-27 15:51:51', null, null, '0', null, '', '5000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81582', '', 'GLUCOTROL 5 MG', '0', '1', ' Merry', '2013-08-27 16:24:53', null, null, '0', null, '', '150000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81583', '', 'PRAVASTATIN 20 MG', '0', '1', ' Merry', '2013-08-27 16:36:20', null, null, '0', null, '10 BIJI', '120000', '25000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81584', '', 'BINTAMOX', '0', '1', ' Merry', '2013-08-27 16:36:45', null, null, '0', null, '10 BIJI', '65000', '8000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81585', '', 'FENOFIBRATE', '0', '1', ' Merry', '2013-08-27 16:37:36', null, null, '0', null, '20 BIJI', '140000', '70000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81586', '', 'NIMOTOP', '0', '1', ' Merry', '2013-08-27 16:42:39', null, null, '0', null, '10 BIJI', '362500', '72500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81587', '', 'GASTRIDIN 150 MG', '0', '1', ' Merry', '2013-08-27 17:31:48', null, null, '0', null, '10 BIJI', '400000', '40000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81588', '', 'LASGAN', '0', '1', ' Merry', '2013-08-27 17:34:03', null, null, '0', null, '', '110000', '110000', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81589', '', 'SIFROL 0,25', '0', '1', ' Merry', '2013-08-27 17:58:11', null, null, '0', null, '10 BIJI', '325000', '110000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81590', '', 'SIFROL 0,375MG', '0', '1', ' Merry', '2013-08-27 17:58:54', null, null, '0', null, '10 BIJI', '550000', '180000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81591', '', 'GLIDABET', '0', '1', ' Merry', '2013-08-27 18:00:17', null, null, '0', null, '10 BIJI', '60000', '6000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81592', '', 'CRAVIT EYE DROP', '0', '1', ' Merry', '2013-08-27 18:02:53', null, null, '0', null, '', '120000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81593', '', 'VOMETA FT', '0', '1', ' Merry', '2013-08-27 18:07:34', null, null, '0', null, '10 BIJI', '210000', '42500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81594', '', 'RIMACTAZID', '0', '1', ' Merry', '2013-08-27 18:50:50', null, null, '0', null, '6 BIJI', '250000', '50000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81595', '', 'EPRINOC', '0', '1', ' Merry', '2013-08-27 19:12:55', null, null, '0', null, '10 BIJI', '310000', '32000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81596', '', 'LETONAL 100MG', '0', '1', ' Merry', '2013-08-27 19:13:25', null, null, '0', null, '10 BIJI', '425000', '34000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81597', '', 'MEBO', '0', '1', ' Merry', '2013-08-27 19:23:25', null, null, '0', null, '', '90000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81598', '', 'HEMAPO', '0', '1', ' Merry', '2013-08-28 10:07:26', null, null, '0', null, '', '260000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81599', '', 'PEHADOXIN', '0', '1', ' Merry', '2013-08-28 10:55:08', ' Merry', '2013-08-28 11:04:42', '0', null, '', '100000', '1000', 'BTL', 'BIJI', '100', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81600', '', 'JESSCOOL', '0', '1', ' Merry', '2013-08-28 11:53:16', null, null, '0', null, '', '10000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81601', '', 'DAUN TERATAI', '0', '1', ' Merry', '2013-08-28 13:15:15', ' Merry', '2013-08-28 13:16:29', '0', null, '', '270000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81602', '', 'UTROGESTAN 100 MG', '0', '1', ' Merry', '2013-08-28 13:15:51', ' Merry', '2014-01-05 15:55:34', '0', null, '15 BIJI', '255000', '127500', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81603', '', 'UTROGESTAN200MG', '0', '1', ' Merry', '2013-08-28 13:16:20', ' Merry', '2014-01-05 12:48:10', '0', null, '', '17500', '17500', 'BIJI', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81604', '', 'TWYNSTA 80/5MG', '0', '1', ' Merry', '2013-08-28 13:25:13', null, null, '0', null, '7 BIJI', '455000', '117500', 'BOX', 'LBR', '4', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81605', '', 'STIMUNO SYP 60 ML', '0', '1', ' Merry', '2013-08-28 13:28:08', null, null, '0', null, '', '19000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81606', '', 'STIMUNO CAP', '0', '1', ' Merry', '2013-08-28 13:29:18', ' Merry', '2013-12-11 18:46:22', '0', null, '10 BIJI', '220000', '23000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81607', '', 'AMINO3000', '0', '1', ' Merry', '2013-08-28 14:13:05', null, null, '0', null, '', '300000', '0', 'BTL', 'BIJI', '325', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81609', '', 'WOOD BIRU BESAR', '0', '1', ' Merry', '2013-08-28 14:41:43', null, null, '0', null, '', '25000', '25000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81610', '', 'ETAMOX', '0', '1', ' Merry', '2013-08-28 15:39:41', ' Merry', '2013-08-28 15:40:29', '0', null, '10 BIJI', '45000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81611', '', 'HUFANOXIL 500MG', '0', '1', ' Merry', '2013-08-28 15:40:20', null, null, '0', null, '10 BIJI', '45000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81614', '', 'BIOCAL-95', '0', '1', ' Merry', '2013-08-28 16:23:24', ' Merry', '2013-09-07 10:52:59', '0', null, '', '120000', '0', 'BTL', 'BIJI', '60', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81615', '', 'PIONIK M 850MG', '0', '1', ' Merry', '2013-08-28 18:12:55', null, null, '0', null, '10 BIJI', '234000', '78000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81616', '', 'CEFSPAN SYRUP 100MG', '0', '1', ' Merry', '2013-08-28 18:16:48', ' Merry', '2013-08-28 18:57:35', '0', null, '', '90000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81617', '', 'TORASIC', '0', '1', ' Merry', '2013-08-28 18:18:26', null, null, '0', null, '10 BIJI', '120000', '60000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81618', '', 'PHARMATON MATUELLE', '0', '1', ' Merry', '2013-08-28 18:49:43', null, null, '0', null, '', '135000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81619', '', 'AFRIN NASAL', '0', '1', ' Merry', '2013-08-28 18:50:13', null, null, '0', null, '', '55000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81620', '', 'LITORCOM 10 MG', '0', '1', ' Merry', '2013-08-28 18:55:51', null, null, '0', null, '6 BIJI', '325000', '65000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81621', '', 'AMINEFRON', '0', '1', ' Merry', '2013-08-28 18:56:19', null, null, '0', null, '4 BIJI', '687500', '27500', 'BOX', 'LBR', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81622', '', 'LIFEZAR 50 MG', '0', '1', ' Merry', '2013-08-29 13:48:02', null, null, '0', null, '10 BIJI', '210000', '70000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81623', '', 'EUPHYLIN RETARD', '0', '1', ' Merry', '2013-08-29 13:51:41', ' Ana', '2014-04-02 16:48:50', '0', null, '10 BIJI', '330000', '34000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81624', '', 'ARTEPID TAB', '0', '1', ' Merry', '2013-08-29 13:52:12', null, null, '0', null, '10 BIJI', '425000', '142500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81625', '', 'FAMOTIDIN 20 MG', '0', '1', ' Merry', '2013-08-29 13:58:53', null, null, '0', null, '10 BIJI', '17500', '3500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81626', '', 'YUNAN BAI YAO', '0', '1', ' Merry', '2013-08-29 14:56:56', null, null, '0', null, '', '60000', '60000', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81627', '', 'NOROID CREAM 80 ML', '0', '1', ' Merry', '2013-08-29 15:34:24', null, null, '0', null, '', '105000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81628', '', 'STUGERON TAB', '0', '1', ' Merry', '2013-08-29 15:37:38', null, null, '0', null, '10 BIJI', '700000', '30000', 'BOX', 'LBR', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81629', '', 'BONE ONE 0.25 MG', '0', '1', ' Merry', '2013-08-29 15:38:13', null, null, '0', null, '10 BIJI', '217500', '72500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81630', '', 'METRIX 3 MG', '0', '1', ' Merry', '2013-08-29 15:42:54', null, null, '0', null, '15 BIJI', '170000', '85000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81631', '', 'GENSIA 5 MG', '0', '1', ' Merry', '2013-08-29 16:23:21', null, null, '0', null, '10 BIJI', '150000', '50000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81632', '', 'ISPRINOL TAB', '0', '1', ' Merry', '2013-08-29 16:28:42', null, null, '0', null, '4 BIJI', '75000', '37500', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81633', '', 'OZEN SYP', '0', '1', ' Merry', '2013-08-29 16:29:11', null, null, '0', null, '', '55000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81634', '', 'ACLONAC 50 MG', '0', '1', ' Merry', '2013-08-29 16:29:44', null, null, '0', null, '10 B IJI', '75000', '25000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81635', '', 'VITAMAM 3', '0', '1', ' Merry', '2013-08-29 16:31:03', null, null, '0', null, '7 BIJI', '68000', '17000', 'BOX', 'LBR', '4', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81636', '', 'RIMSTAR 4 FDC', '0', '1', ' Merry', '2013-08-29 16:34:44', null, null, '0', null, '10 BIJI', '195000', '65000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81637', '', 'GLAMAROL4 MG', '0', '1', ' Merry', '2013-08-29 17:33:07', null, null, '0', null, '10 BIJI', '195000', '65000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81638', '', 'HOT IN CREAM', '0', '1', ' Merry', '2013-08-29 17:35:33', null, null, '0', null, '', '20000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81639', '', 'CALNIC PLUS KAP', '0', '1', ' Merry', '2013-08-29 17:49:14', ' Sri', '2014-05-09 13:19:11', '0', null, '10 BIJI', '112500', '37500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81640', '', 'CALNIC PLUS SYP', '0', '1', ' Merry', '2013-08-29 17:49:44', ' Sri', '2014-05-09 13:19:02', '0', null, '', '55000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81641', '', 'TOBRADEX ED', '0', '1', ' Merry', '2013-08-29 17:57:38', null, null, '0', null, '', '82000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81642', '', 'OTOPAIN', '0', '1', ' Merry', '2013-08-29 19:10:23', null, null, '0', null, '', '32500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81643', '', 'IRBESARTAN 300 MG', '0', '1', ' Merry', '2013-08-29 19:12:32', ' Merry', '2014-09-19 16:45:55', '0', null, '', '40000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81644', '', 'RASILEZ 300 MG', '0', '1', ' Merry', '2013-08-29 19:21:55', null, null, '0', null, '7 BIJI', '255000', '127500', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81645', '', 'PLATOGRIX', '0', '1', ' Merry', '2013-08-29 19:23:08', null, null, '0', null, '14 BIJI', '340000', '170000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81646', '', 'PEZETA', '0', '1', ' Merry', '2013-08-29 19:24:28', null, null, '0', null, '10 BIJI', '150000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81647', '', 'LEVOCIN', '0', '1', ' Merry', '2013-08-29 19:28:19', null, null, '0', null, '', '160000', '30000', 'LBR', 'BIJI', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81648', '', 'SOLAXIN TAB', '0', '1', ' Merry', '2013-08-30 09:46:05', null, null, '0', null, '10 BIJI', '400000', '42000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81649', '', 'PANADOL SYP', '0', '1', ' Merry', '2013-08-30 12:06:29', null, null, '0', null, '', '28000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81650', '', 'PROMAG DOUBLE ACTION', '0', '1', ' Merry', '2013-08-30 14:57:16', null, null, '0', null, '6 BIJI', '18000', '10000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81651', '', 'ETIBI 500MG', '0', '1', ' Merry', '2013-08-30 15:34:48', null, null, '0', null, '10 BIJI', '55000', '12000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81652', '', 'MOLAKRIM 30G', '0', '1', ' Merry', '2013-08-30 15:36:54', ' Merry', '2013-08-30 15:38:02', '0', null, '', '12000', '12000', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81653', '', 'BETASON-N CREAM', '0', '1', ' Merry', '2013-08-30 15:37:48', null, null, '0', null, '', '10000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81654', '', 'VENTOLIN EXPECTORANT SYRUP 100ML', '0', '1', ' Merry', '2013-08-30 16:11:17', null, null, '0', null, '', '52000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81655', '', 'KALZANA BOTOL', '0', '1', ' Merry', '2013-08-30 16:17:42', ' Merry', '2014-05-23 18:38:01', '0', null, '', '70000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81656', '', 'TOSTREX 2 %', '0', '1', ' Merry', '2013-08-30 17:18:39', null, null, '0', null, '', '880000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81657', '', 'VIBRAMYCIN 100 MG', '0', '1', ' Merry', '2013-08-30 17:49:50', ' Merry', '2013-09-27 11:32:44', '0', null, '', '132500', '13500', 'LBR', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81658', '', 'SERETIDE DISKUS 250', '0', '1', ' Merry', '2013-08-30 18:35:49', null, null, '0', null, '', '165000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81659', '', 'PECTOCYL CAP', '0', '1', ' Merry', '2013-08-30 18:47:54', null, null, '0', null, '10 BIJI', '87500', '30000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81660', '', 'MYCOSPOR', '0', '1', ' Merry', '2013-08-30 18:53:37', null, null, '0', null, '', '105000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81661', '', 'CANESTEN 3GR', '0', '1', ' Merry', '2013-08-30 18:53:59', ' Merry', '2013-10-18 18:31:34', '0', null, '', '20000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81662', '', 'BAYCUTEN N', '0', '1', ' Merry', '2013-08-30 18:54:28', null, null, '0', null, '', '52000', '52000', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81663', '', 'NIPE SYP', '0', '1', ' Merry', '2013-08-30 18:55:27', null, null, '0', null, '', '68000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81664', '', 'NERVITONE E', '0', '1', ' Merry', '2013-08-30 18:57:14', null, null, '0', null, '10 BIJI', '260000', '13000', 'BOX', 'LBR', '20', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81665', '', 'XILON4 MG', '0', '1', ' Merry', '2013-08-31 09:52:05', null, null, '0', null, '10 BIJI', '137500', '27500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81666', '', 'BRANDS ESSENCE CHICKEN', '0', '1', ' Merry', '2013-08-31 10:14:22', ' Merry', '2013-11-09 10:18:31', '0', null, '', '92000', '16000', 'BOX', 'BOTOL', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81667', '', 'OZMETIN ZUPER', '0', '1', ' Merry', '2013-08-31 10:30:12', ' Merry', '2013-09-17 08:55:34', '0', null, '', '205000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81669', '', 'ASTHIN FORCE CREAM 15GR', '0', '1', ' Merry', '2013-08-31 14:14:45', null, null, '0', null, '', '120000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81670', '', 'DAKTARIN CREAM 10GR', '0', '1', ' Merry', '2013-08-31 14:15:44', null, null, '0', null, '', '35000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81671', '', 'SPIRANTER 500 MG', '0', '1', ' Merry', '2013-08-31 14:37:48', null, null, '0', null, '', '55000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81672', '', 'NEO RHEUMACYL', '0', '1', ' Merry', '2013-08-31 15:24:16', ' Merry', '2015-04-17 13:46:33', '0', null, '20TAB', '180000', '8000', 'BOX', 'LBR', '24', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81673', '', 'SALOFALK 250MG', '0', '1', ' Merry', '2013-08-31 16:54:53', ' Merry', '2013-09-11 10:20:50', '0', null, '10 BIJI', '670000', '69000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81674', '', 'SERETIDE DISKUS 500', '0', '1', ' Merry', '2013-08-31 16:55:43', null, null, '0', null, '', '165000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81676', '', 'TRANSAMIN 250 MG', '0', '1', ' Merry', '2013-08-31 18:32:09', null, null, '0', null, '10 BIJI', '110000', '12500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81677', '', 'TRANSAMIN 500 MG', '0', '1', ' Merry', '2013-08-31 18:32:40', null, null, '0', null, '10 BIJI', '277500', '28000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81678', '', 'TRENTAL 400MG', '0', '1', ' Merry', '2013-08-31 18:35:44', null, null, '0', null, '10 BIJI', '1000000', '100000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81680', '', 'EVION 200 MG VEGECAP', '0', '1', ' Merry', '2013-08-31 18:36:46', null, null, '0', null, '', '72500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81681', '', 'COMBANTRIN 250 MG', '0', '1', ' Merry', '2013-08-31 18:37:11', null, null, '0', null, '', '12000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81682', '', 'BEPANTHEN', '0', '1', ' Merry', '2013-08-31 18:37:34', null, null, '0', null, '', '52500', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81683', '', 'OTOZAMBON', '0', '1', ' Merry', '2013-08-31 18:37:55', null, null, '0', null, '', '50000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81684', '', 'ASTHIN GEL', '0', '1', ' Merry', '2013-08-31 19:00:19', null, null, '0', null, '', '75000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81685', '', 'ASTHIN CREAM', '0', '1', ' Merry', '2013-08-31 19:02:36', null, null, '0', null, '', '120000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81686', '', 'ULTRAPROCT KRIM', '0', '1', ' Merry', '2013-09-01 12:20:40', null, null, '0', null, '', '107000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81687', '', 'MOVI-COX 7,5 MG', '0', '1', ' Merry', '2013-09-02 11:59:47', null, null, '0', null, '10 BIJI', '225000', '75000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81688', '', 'VASCARDIN 10 MG', '0', '1', ' Merry', '2013-09-02 12:47:48', null, null, '0', null, '10 BIJI', '37000', '4000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81690', '', 'VITAZYM', '0', '1', ' Merry', '2013-09-02 12:50:42', null, null, '0', null, '10 BIJI', '65000', '7000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81691', '', 'VIGEL', '0', '1', ' Merry', '2013-09-02 12:54:23', null, null, '0', null, '', '21000', '21000', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81692', '', 'MYLANTA SYP KECIL', '0', '1', ' Merry', '2013-09-02 14:16:28', null, null, '0', null, '', '11000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81693', '', 'ADALAT 10 MG', '0', '1', ' Merry', '2013-09-02 14:21:12', null, null, '0', null, '10 BIJI', '125000', '25000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81694', '', 'INPEPSA SYS 100 ML', '0', '1', ' Merry', '2013-09-02 16:06:38', null, null, '0', null, '', '52500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81695', '', 'B KOMPLEK IPI', '0', '1', ' Merry', '2013-09-02 17:45:40', null, null, '0', null, '', '4000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81696', '', 'SOMEROL 4 MG', '0', '1', ' Merry', '2013-09-02 19:08:40', null, null, '0', null, '10 BIJI', '140000', '27500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81697', '', 'NONEMI', '0', '1', ' Merry', '2013-09-03 12:47:19', null, null, '0', null, '10 BIJI', '135000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81698', '', 'SIZORIL 25 MG', '0', '1', ' Merry', '2013-09-03 12:48:54', null, null, '0', null, '10 BIJI', '225000', '45000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81699', '', 'MENOPACE', '0', '1', ' Merry', '2013-09-03 15:00:24', null, null, '0', null, '6 BIJI', '105000', '21000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81700', '', 'PROVIRON', '0', '1', ' Merry', '2013-09-03 15:00:50', ' Merry', '2013-09-15 16:10:46', '0', null, '10 BIJI', '170000', '85000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81701', '', 'VICKS INHALER', '0', '1', ' Merry', '2013-09-03 15:40:58', null, null, '0', null, '', '12000', '0', 'BIJI', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81702', '', 'ENIKRA', '10000', '1', ' Merry', '2013-09-03 15:54:14', null, null, '0', null, '10 BIJI', '140000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81703', '', 'CARTRILET', '0', '1', ' Merry', '2013-09-03 16:14:19', null, null, '0', null, '10 BIJI', '217500', '72500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81704', '', 'DIAGLIME 3 MG', '0', '1', ' Merry', '2013-09-03 17:25:34', null, null, '0', null, '15 BIJI', '155000', '77500', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81705', '', 'PIRACETAM 400 MG', '0', '1', ' Merry', '2013-09-03 17:27:46', ' Merry', '2013-09-03 17:28:02', '0', null, '10 BIJI', '40000', '5000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81706', '', 'LASAL EXPECTORANT', '0', '1', ' Merry', '2013-09-03 18:33:57', null, null, '0', null, '', '37000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81707', '', 'OSTEOKOM', '0', '1', ' Merry', '2013-09-03 18:34:29', ' Ana', '2014-06-04 15:29:00', '0', null, '6 BIJI', '190000', '40000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81708', '', 'PROLIC 150 MG', '0', '1', ' Merry', '2013-09-03 18:54:41', null, null, '0', null, '10 BIJI', '312000', '32000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81709', '', 'SPYROCON', '0', '1', ' Merry', '2013-09-03 18:55:42', ' Merry', '2013-09-03 18:55:55', '0', null, '4 BIJI', '200000', '70000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81710', '', 'ACEPRES 12,5 MG', '0', '1', ' Merry', '2013-09-03 18:56:25', null, null, '0', null, '10 BIJI', '190000', '20000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81711', '', 'ARTOFLAM', '0', '1', ' Merry', '2013-09-03 18:57:07', null, null, '0', null, '10 BIJI', '225000', '75000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81712', '', 'VECTRIN CAP', '0', '1', ' Merry', '2013-09-03 19:20:52', null, null, '0', null, '10 BIJI', '85000', '42500', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81713', '', 'ULAR KECIL', '0', '1', ' Merry', '2013-09-04 11:56:19', null, null, '0', null, '', '16000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81714', '', 'BALSEM CAP LANG 20G', '0', '1', ' Merry', '2013-09-04 14:33:30', ' Merry', '2013-09-06 15:09:53', '0', null, '', '75000', '7500', 'LSN', 'BTL', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81715', '', 'ORTXED', '0', '1', ' Merry', '2013-09-04 15:19:17', null, null, '0', null, '10 BIJI', '50000', '5000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81717', '', 'KOTAK P3K', '0', '1', ' Merry', '2013-09-04 16:01:26', null, null, '0', null, '', '25000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81718', '', 'AMOXAN SYP', '0', '1', ' Merry', '2013-09-04 16:04:45', null, null, '0', null, '', '27500', '27500', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81719', '', 'TAWON FF', '0', '1', ' Merry', '2013-09-04 16:40:47', null, null, '0', null, '', '370000', '33000', 'LSN', 'BTL', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81720', '', 'VIDASTAT 20 MG', '0', '1', ' Merry', '2013-09-04 18:20:34', null, null, '0', null, '10 BIJI', '120000', '40000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81721', '', 'PIRACETAM 800 MG', '0', '1', ' Merry', '2013-09-04 18:26:55', null, null, '0', null, '10 BIJI', '60000', '7500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81722', '', 'VEGEBLEND JUNIOR ISI 60', '0', '1', ' Merry', '2013-09-04 18:28:42', ' Merry', '2014-11-04 16:26:05', '0', null, '', '170000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81723', '', 'INLACIN 50 MG', '0', '1', ' Merry', '2013-09-04 18:31:56', ' Merry', '2013-11-22 18:08:01', '0', null, '6 BIJI', '125000', '25000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81724', '', 'REGROU', '0', '1', ' Merry', '2013-09-04 18:43:01', null, null, '0', null, '', '52500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81725', '', 'GELIGA ODOL BESAR', '0', '1', ' Merry', '2013-09-04 18:48:30', null, null, '0', null, '', '19000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81726', '', 'VISINE TETES MATA KECIL', '0', '1', ' Merry', '2013-09-04 19:09:13', null, null, '0', null, '', '125000', '11000', 'LSN', 'BTL', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81727', '', 'KALTROFEN 50 MG', '0', '1', ' Merry', '2013-09-04 19:19:16', null, null, '0', null, '10 BIJI', '90000', '30000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81728', '', 'COHISTAN SYRUP 100ML', '0', '1', ' Merry', '2013-09-05 09:37:11', ' Merry', '2013-09-05 09:37:21', '0', null, '', '22500', '22500', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81729', '', 'OZID 20MG', '0', '1', ' Merry', '2013-09-05 09:39:05', null, null, '0', null, '14 BIJI', '157500', '0', 'BOX', 'LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81730', '', 'SUMAGESIC TAB', '0', '1', ' Merry', '2013-09-05 09:40:27', ' Merry', '2013-09-06 15:23:59', '0', null, '4 BIJI', '62500', '2500', 'BOX', 'LBR', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81731', '', 'BUFACORT', '0', '1', ' Merry', '2013-09-05 10:31:27', null, null, '0', null, '', '6000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81732', '', 'CRYPTO PPARS', '0', '1', ' Merry', '2013-09-05 10:35:41', null, null, '0', null, '', '800000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81733', '', 'CRYPTO LIQUID', '0', '1', ' Merry', '2013-09-05 10:36:28', null, null, '0', null, '', '750000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81734', '', 'SALAKINASE', '0', '1', ' Merry', '2013-09-05 11:05:54', null, null, '0', null, '10 BIJI', '420000', '70000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81735', '', 'NORMOTEN 5 MG', '0', '1', ' Merry', '2013-09-05 11:06:27', null, null, '0', null, '10 BIJI', '180000', '60000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81736', '', 'SELOKEN', '0', '1', ' Merry', '2013-09-05 11:19:16', null, null, '0', null, '10 BIJI', '470000', '47500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81737', '', 'RYVEL DROP', '0', '1', ' Merry', '2013-09-05 12:03:56', null, null, '0', null, '', '56000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81738', '', 'VITACIMIN', '0', '1', ' Merry', '2013-09-05 14:49:32', ' Merry', '2014-11-01 09:58:54', '0', null, '2 BIJI', '65000', '6500', 'BOX', 'IKAT', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81739', '', 'MEDICATED KECIL', '0', '1', ' Merry', '2013-09-05 15:18:43', ' Merry', '2013-09-05 15:19:02', '0', null, '', '140000', '13000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81740', '', 'DEXACAP 25MG', '0', '1', ' Merry', '2013-09-05 16:11:31', null, null, '0', null, '10 BIJI', '15000', '1500', 'BOX', 'LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81741', '', 'ZUMAFIB MICRO 160MG', '0', '1', ' Merry', '2013-09-05 16:23:21', null, null, '0', null, '10 BIJI', '270000', '90000', 'BOX', 'LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81742', '', 'OXYCAN', '0', '1', ' Merry', '2013-09-05 16:59:38', null, null, '0', null, '', '35000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81743', '', 'VIBRAMYCIN 50 MG', '0', '1', ' Merry', '2013-09-05 18:05:48', null, null, '0', null, '10 BIJI', '350000', '70000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81744', '', 'DERMOVATE 10GR', '0', '1', ' Merry', '2013-09-05 18:10:08', null, null, '0', null, '', '75000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81745', '', 'MEDI-KLIN GEL', '0', '1', ' Merry', '2013-09-06 11:17:10', null, null, '0', null, '', '23000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81746', '', 'REPLIGEN 300 MG', '0', '1', ' Merry', '2013-09-06 11:18:51', null, null, '0', null, '10 BIJI', '437500', '87500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81747', '', 'ACTIFED MERAH 120ML', '0', '1', ' Merry', '2013-09-06 11:32:21', null, null, '0', null, '', '49000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81748', '', 'SCOT JERUK 400ML', '0', '1', ' Merry', '2013-09-06 11:33:19', ' Merry', '2013-09-06 12:30:54', '0', null, '', '37500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81749', '', 'SCOT PUTIH 400ML', '0', '1', ' Merry', '2013-09-06 11:33:53', ' Merry', '2013-09-06 12:30:42', '0', null, '', '37500', '37500', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81750', '', 'BIOCURLIV TAB', '0', '1', ' Merry', '2013-09-06 15:36:00', null, null, '0', null, '6 BIJI', '190000', '38000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81752', '', 'OSTELOX 15 MG', '0', '1', ' Merry', '2013-09-06 16:54:05', null, null, '0', null, '', '85000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81753', '', 'KALNEX 500 MG', '0', '1', ' Merry', '2013-09-06 16:55:44', null, null, '0', null, '10 BIJI', '270000', '27500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81754', '', 'DANASONE', '0', '1', ' Merry', '2013-09-06 16:57:53', null, null, '0', null, '10 BIJI', '20000', '4000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81755', '', 'DANEURON', '0', '1', ' Merry', '2013-09-06 16:58:39', null, null, '0', null, '10 BIJI', '40000', '5000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81756', '', 'RADIN', '0', '1', ' Merry', '2013-09-06 16:59:24', ' Merry', '2013-09-06 18:20:29', '0', null, '6 BIJI', '15000', '4000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81757', '', 'GLOW ', '0', '1', ' Merry', '2013-09-06 18:02:55', null, null, '0', null, '', '250000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81758', '', 'CAL D CHEW', '0', '1', ' Merry', '2013-09-06 18:03:29', null, null, '0', null, '', '105000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81759', '', 'TERRAMICYN MATA', '0', '1', ' Merry', '2013-09-06 18:11:32', null, null, '0', null, '', '11000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81760', '', 'LANADEXON', '0', '1', ' Merry', '2013-09-06 18:11:59', ' Merry', '2013-09-06 18:20:17', '0', null, '10 BIJI', '17500', '3000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81761', '', 'BRONCHIFAR', '0', '1', ' Merry', '2013-09-06 18:14:32', null, null, '0', null, '10 BIJI', '40000', '7000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81762', '', 'STANZA 500MG', '0', '1', ' Merry', '2013-09-06 18:21:42', null, null, '0', null, '10 BIJI', '40000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81763', '', 'BRONEX', '0', '1', ' Merry', '2013-09-06 18:22:27', null, null, '0', null, '10 BIJI', '35000', '5000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81764', '', 'GRATEOS 50 MG', '0', '1', ' Merry', '2013-09-06 18:23:11', null, null, '0', null, '10 BIJI', '20000', '5000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81765', '', 'BRONKRIS', '0', '1', ' Merry', '2013-09-06 18:23:38', null, null, '0', null, '10 BIJI', '20000', '5000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81766', '', 'Q UBI 10', '0', '1', ' Merry', '2013-09-06 18:45:04', null, null, '0', null, '10 BIJI', '240000', '80000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81767', '', 'CLANEKSI SYP', '0', '1', ' Merry', '2013-09-06 18:45:50', null, null, '0', null, '', '47000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81768', '', 'SEROLIN', '0', '1', ' Merry', '2013-09-06 19:08:07', null, null, '0', null, '', '115000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81769', '', 'SEROQUEL 200 MG', '0', '1', ' Merry', '2013-09-06 19:15:44', null, null, '0', null, '', '250000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81770', '', 'SPORACID', '0', '1', ' Merry', '2013-09-06 19:16:04', ' Ana', '2014-09-24 12:35:14', '0', null, '', '210000', '21000', 'LBR', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81771', '', 'KALITAKE', '0', '1', ' Merry', '2013-09-06 19:16:38', null, null, '0', null, '', '365000', '18500', 'BOX', 'BKS', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81772', '', 'XELODA', '0', '1', ' Merry', '2013-09-06 19:16:57', null, null, '0', null, '', '350000', '350000', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81774', '', 'TEH BUNGA', '0', '1', ' Merry', '2013-09-07 15:30:55', null, null, '0', null, '', '15000', '15000', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81775', '', 'GELIGA COOL ODOL KECIL', '0', '1', ' Merry', '2013-09-07 16:10:05', null, null, '0', null, '', '11000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81776', '', 'NORIT', '0', '1', ' Merry', '2013-09-07 16:10:32', null, null, '0', null, '', '12000', '12000', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81777', '', 'DERMATIX 15GR', '0', '1', ' Merry', '2013-09-07 17:56:28', null, null, '0', null, '', '240000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81778', '', 'GASTRAN', '0', '1', ' Merry', '2013-09-07 17:59:47', null, null, '0', null, '4BIJI', '62500', '2500', 'BOX', 'LBR', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81779', '', 'NERISONA COMBI 5 GR', '0', '1', ' Merry', '2013-09-07 18:00:21', null, null, '0', null, '', '62500', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81780', '', 'CASODEX 150MG', '0', '1', ' Merry', '2013-09-07 18:32:18', null, null, '0', null, '', '3500000', '1750000', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81781', '', 'NORMOTEN 10MG', '0', '1', ' Merry', '2013-09-08 15:29:03', null, null, '0', null, '10 BIJI', '322500', '107500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81783', '', 'TERMAGON FORTE TAB', '0', '1', ' Merry', '2013-09-09 16:27:01', null, null, '0', null, '10 BIJI', '50000', '7000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81784', '', 'TERA-F', '0', '1', ' Merry', '2013-09-09 16:32:00', null, null, '0', null, '10 BIJI', '35000', '5000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81785', '', 'NISAGON CREAM', '0', '1', ' Merry', '2013-09-09 16:33:02', null, null, '0', null, '', '7000', '0', 'BOX', 'TUBE', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81786', '', 'ANVOMER B6', '0', '1', ' Merry', '2013-09-09 17:53:15', null, null, '0', null, '6 BIJI', '150000', '16000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81787', '', 'DECADRYL', '0', '1', ' Merry', '2013-09-10 10:58:46', null, null, '0', null, '', '14000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81788', '', 'LAXADIN KECIL 60ML', '0', '1', ' Merry', '2013-09-10 11:17:16', null, null, '0', null, '', '30000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81789', '', 'DECAMET TAB', '0', '1', ' Merry', '2013-09-10 13:17:29', null, null, '0', null, '10 BIJI', '80000', '8000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81791', '', 'EFISOL LOZ', '0', '1', ' Merry', '2013-09-10 14:49:55', null, null, '0', null, '', '20000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81792', '', 'PHAROLIT SITRAS', '0', '1', ' Merry', '2013-09-10 14:53:03', ' Merry', '2014-03-16 15:55:10', '0', null, '', '65000', '1500', 'BOX', 'BKS', '60', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81793', '', 'ALERTEN 25 MG', '0', '1', ' Merry', '2013-09-10 15:42:25', null, null, '0', null, '10 BIJI', '127000', '45000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81794', '', 'CADUET 5/20 @30TAB', '0', '1', ' Merry', '2013-09-10 16:40:59', ' Merry', '2013-09-10 16:46:26', '0', null, '10 BIJI', '495000', '165000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81795', '', 'FIXEF 200MG', '0', '1', ' Merry', '2013-09-10 16:47:40', null, null, '0', null, '10 BIJI', '210000', '210000', 'LBR', 'LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81796', '', 'PYNOCARE WHITE', '0', '1', ' Merry', '2013-09-10 18:18:16', null, null, '0', null, '10 BIJI', '435000', '145000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81797', '', 'COVERAM 5/10MG', '0', '1', ' Merry', '2013-09-10 18:18:54', null, null, '0', null, '', '315000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81798', '', ' APPETON LYSINE @25TAB', '0', '1', ' Merry', '2013-09-11 14:26:50', ' Merry', '2013-09-15 16:27:43', '0', null, '', '110000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81799', '', 'APPETON TAURINE @25TAB', '0', '1', ' Merry', '2013-09-11 14:27:25', ' Merry', '2013-09-15 16:27:34', '0', null, '', '110000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81800', '', 'APOLAR N', '0', '1', ' Merry', '2013-09-11 15:12:12', null, null, '0', null, '', '40000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81801', '', 'SALONPAS PAIN', '0', '1', ' Merry', '2013-09-11 15:19:19', null, null, '0', null, '1 BUNGKUS', '140000', '14000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81802', '', 'JELI GAMAT 1000ML', '0', '1', ' Merry', '2013-09-11 15:24:23', ' Merry', '2013-09-15 16:40:16', '0', null, '', '350000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81803', '', 'COMBANTRIN SYP', '0', '1', ' Merry', '2013-09-11 15:43:13', null, null, '0', null, '', '14000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81804', '', 'MADECASSOL OINT', '0', '1', ' Merry', '2013-09-11 17:58:33', null, null, '0', null, '', '125000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81805', '', 'TRANSPULMIN SYP 100ML', '0', '1', ' Merry', '2013-09-11 18:01:03', null, null, '0', null, '', '80000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81806', '', 'FLUDANE PLUS', '0', '1', ' Merry', '2013-09-11 18:02:21', null, null, '0', null, '4 BIJI', '75000', '3000', 'BOX', 'LBR', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81807', '', 'VITALONG C', '0', '1', ' Merry', '2013-09-11 18:03:03', null, null, '0', null, '', '25000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81808', '', 'FG TROCHES', '0', '1', ' Merry', '2013-09-11 18:03:54', null, null, '0', null, '10 BIJI', '112500', '11000', 'BOX', 'LBR', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81809', '', 'ULTRAPROCT SUPPO', '0', '1', ' Merry', '2013-09-11 18:08:31', null, null, '0', null, '', '95000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81810', '', 'RIMCURE', '0', '1', ' Merry', '2013-09-11 18:11:41', null, null, '0', null, '10 BIJI', '165000', '55000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81811', '', 'OSKADON SP ', '0', '1', ' Merry', '2013-09-12 11:11:22', null, null, '0', null, '4 BIJI', '37000', '2000', 'BOX', 'LBR', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81812', '', 'KONIDINE TAB', '0', '1', ' Merry', '2013-09-12 11:12:41', null, null, '0', null, '4 BIJI', '72500', '2000', 'BOX', 'LBR', '50', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81813', '', 'CANESTEN CREAM 10G', '0', '1', ' Merry', '2013-09-12 11:31:45', ' Merry', '2013-09-20 12:24:58', '0', null, '', '36000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81814', '', 'AMPICILIN ', '0', '1', ' Merry', '2013-09-12 11:43:18', null, null, '0', null, '10 BIJI', '50000', '7000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81815', '', 'MEXTRIL', '0', '1', ' Merry', '2013-09-12 11:45:38', null, null, '0', null, '4 BIJI', '35000', '2000', 'BOX', 'LBR', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81816', '', 'FAKTU  SUB', '0', '1', ' Merry', '2013-09-12 12:36:00', null, null, '0', null, '5 BIJI', '85000', '42500', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81817', '', 'TENSIRA 300 MG', '0', '1', ' Merry', '2013-09-12 13:17:29', null, null, '0', null, '10 BIJI', '345000', '115000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81818', '', 'KEMBANG BULAN', '0', '1', ' Merry', '2013-09-12 14:48:13', ' Merry', '2013-12-15 17:44:26', '0', null, '', '112000', '10000', 'LUSIN', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81819', '', 'TOPAMAX 50MG', '0', '1', ' Merry', '2013-09-12 15:10:44', null, null, '0', null, '10 BIJI', '510000', '85000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81820', '', 'REMINYL 4MG', '0', '1', ' Merry', '2013-09-12 15:12:57', null, null, '0', null, '', '395000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81821', '', 'TROSYD CREAM 20G', '0', '1', ' Merry', '2013-09-12 15:21:09', ' Merry', '2013-09-15 16:19:45', '0', null, '', '100000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81823', '', 'CARBAMAZEPINE 200MG', '0', '1', ' Merry', '2013-09-12 15:27:51', null, null, '0', null, '10 BIJI', '60000', '6500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81824', '', 'MICROPORE @KECIL', '0', '1', ' Merry', '2013-09-12 15:33:06', ' Merry', '2013-09-15 16:20:47', '0', null, '', '7500', '0', 'ROL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81825', '', 'MICROPORE @SEDANG', '0', '1', ' Merry', '2013-09-12 15:33:40', ' Merry', '2013-09-15 16:20:15', '0', null, '', '16000', '0', 'ROL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81826', '', 'SIDOLA BESAR', '0', '1', ' Merry', '2013-09-12 15:51:11', null, null, '0', null, '', '27500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81827', '', 'HEROCYN BESAR', '0', '1', ' Merry', '2013-09-12 15:53:32', null, null, '0', null, '', '12000', '13000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81828', '', 'HP PRO PLUS', '0', '1', ' Merry', '2013-09-12 15:54:05', ' Merry', '2013-09-13 11:42:02', '0', null, '10 BIJI', '535000', '60000', 'BOX', 'LBR', '9', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81829', '', 'FARSORBID 10MG', '0', '1', ' Merry', '2013-09-12 16:16:29', null, null, '0', null, '10 BIJI', '35000', '4000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81830', '', 'SPRIVE RESPIMAT', '0', '1', ' Merry', '2013-09-12 17:05:28', null, null, '0', null, '', '750000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81831', '', 'LOPROX NAIL', '0', '1', ' Merry', '2013-09-12 18:02:41', null, null, '0', null, '', '175000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81833', '', 'ZOVIRAX 5GR', '0', '1', ' Merry', '2013-09-12 18:04:01', null, null, '0', null, '', '120000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('81834', '', 'ZOVIRAX TAB', '0', '1', ' Merry', '2013-09-12 18:06:38', null, null, '0', null, '5 BIJI', '225000', '47500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84836', '', 'CHOLESPAR 10 MG', '0', '1', ' Merry', '2013-09-13 13:43:03', null, null, '0', null, '10 BIJI', '405000', '145000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84837', '', 'NIZORAL 15GR', '0', '1', ' Merry', '2013-09-13 15:08:24', null, null, '0', null, '', '95000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84838', '', 'STARMUNO', '0', '1', ' Merry', '2013-09-13 18:13:24', null, null, '0', null, '10 BIJI', '210000', '70000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84839', '', 'PREGCY TEST', '0', '1', ' Merry', '2013-09-14 11:45:00', null, null, '0', null, '', '20000', '20000', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84840', '', 'LOTASBAT OINMENT 10G', '0', '1', ' Merry', '2013-09-14 13:55:49', ' Merry', '2013-09-15 16:37:30', '0', null, '', '35000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84841', '', 'SAHNE 80GR', '0', '1', ' Merry', '2013-09-14 14:21:18', null, null, '0', null, '', '70000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84842', '', 'JUVELON 120BIJI', '0', '1', ' Merry', '2013-09-14 14:23:12', null, null, '0', null, '', '115000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84843', '', 'UBI-G 30 MG', '0', '1', ' Merry', '2013-09-14 14:23:54', null, null, '0', null, '10 BIJI', '600000', '60000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84844', '', 'PREDNISONE 5MG', '0', '1', ' Merry', '2013-09-14 15:24:12', ' Merry', '2013-09-23 16:52:05', '0', null, '', '100000', '100', 'BTL', 'BIJI', '1000', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84845', '', 'CITICOLIN', '0', '1', ' Merry', '2013-09-14 17:31:20', null, null, '0', null, '10 BIJI', '202500', '67500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84846', '', 'GALTAREN', '0', '1', ' Merry', '2013-09-15 16:09:48', null, null, '0', null, '', '20000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84847', '', 'MINOSEP', '0', '1', ' Merry', '2013-09-16 10:51:54', null, null, '0', null, '', '25000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84848', '', 'ENERCORE', '0', '1', ' Merry', '2013-09-16 15:39:43', null, null, '0', null, '', '102500', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84849', '', 'GLUCOTIKA 500MG', '0', '1', ' Merry', '2013-09-16 16:15:10', null, null, '0', null, '10 BIJI', '95000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84851', '', 'BRAINOLIN', '0', '1', ' Merry', '2013-09-16 17:58:21', null, null, '0', null, '6 BIJI', '310000', '62500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84853', '', 'B BETA', '0', '1', ' Merry', '2013-09-16 18:59:09', null, null, '0', null, '10 BIJI', '195000', '65000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84854', '', 'KALMETASONE', '0', '1', ' Merry', '2013-09-17 09:47:00', null, null, '0', null, '10 BIJI', '25000', '2500', 'BOX', 'LBR', '20', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84855', '', 'PANTOGAR TAB', '0', '1', ' Merry', '2013-09-17 10:36:24', null, null, '0', null, '10 BIJI', '240000', '87500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84856', '', 'EPOCALDI @30TAB', '0', '1', ' Merry', '2013-09-17 10:37:35', ' Merry', '2013-11-20 19:03:58', '0', null, '', '105000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84857', '', 'MKP AYAM 150ML', '0', '1', ' Merry', '2013-09-17 12:24:20', ' Merry', '2013-09-20 12:27:15', '0', null, '', '45000', '45000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84858', '', 'ESTERC EFFERVESCENT', '0', '1', ' Merry', '2013-09-17 12:25:49', ' Merry', '2013-09-20 12:24:43', '0', null, '', '30000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84859', '', 'UBI-Q 100MG', '0', '1', ' Merry', '2013-09-17 14:23:53', null, null, '0', null, '10 BIJI', '390000', '130000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84860', '', 'SANGOBION FEMINIM', '0', '1', ' Merry', '2013-09-17 18:11:28', null, null, '0', null, '6 BIJI', '220000', '11000', 'BOX', 'LBR', '20', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84861', '', 'BENOSON N', '0', '1', ' Merry', '2013-09-17 18:15:48', null, null, '0', null, '', '31000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84862', '', 'BENOSON', '0', '1', ' Merry', '2013-09-17 18:16:25', null, null, '0', null, '', '24000', '24000', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84863', '', 'KLODERMA 5GR', '0', '1', ' Merry', '2013-09-17 18:17:13', null, null, '0', null, '', '18000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84864', '', 'KANDISTATIN', '0', '1', ' Merry', '2013-09-17 18:19:43', null, null, '0', null, '', '35000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84865', '', 'VOMETA SYP', '0', '1', ' Merry', '2013-09-17 18:43:37', ' Merry', '2013-09-17 18:43:46', '0', null, '', '42000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84866', '', 'SCANAFLAM 50MG', '0', '1', ' Merry', '2013-09-17 18:50:00', null, null, '0', null, '10 BIJI', '105000', '22000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84867', '', 'GALEPSI', '0', '1', ' Merry', '2013-09-18 10:38:24', null, null, '0', null, '10 BIJI', '292500', '97500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84868', '', 'NUTRI B BOTOL', '0', '1', ' Merry', '2013-09-18 12:11:24', ' Merry', '2013-11-10 17:58:03', '0', null, '', '220000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84869', '', 'RED FLOWER NAGA', '0', '1', ' Merry', '2013-09-18 13:35:57', null, null, '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84870', '', 'ORODIN 15ML', '0', '1', ' Merry', '2013-09-18 13:37:08', ' Merry', '2013-09-20 12:27:06', '0', null, '', '25000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84871', '', 'PREDNOX 4MG', '0', '1', ' Merry', '2013-09-18 13:40:40', null, null, '0', null, '10 BIJI', '280000', '30000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84872', '', 'SALONPAS CREAM 30G BESAR', '0', '1', ' Merry', '2013-09-18 13:42:33', ' Ana', '2014-01-16 11:41:03', '0', null, '', '15000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84873', '', 'COD LIVER OIL @100CAP', '0', '1', ' Merry', '2013-09-18 13:44:47', ' Merry', '2013-09-20 12:19:24', '0', null, '', '20000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84874', '', 'BYE BYE FEVER BAYI', '0', '1', ' Merry', '2013-09-18 13:48:56', null, null, '0', null, '', '65000', '7500', 'BOX', 'LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84875', '', 'OTSU WATER INJEKSI 25ML', '0', '1', ' Merry', '2013-09-18 13:54:33', ' Merry', '2013-09-20 12:16:07', '0', null, '', '5000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84877', '', 'LYSMIN', '0', '1', ' Merry', '2013-09-18 17:02:03', null, null, '0', null, '', '21000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84878', '', 'PROMETAZIN', '0', '1', ' Merry', '2013-09-18 17:10:35', null, null, '0', null, '', '17500', '17500', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84879', '', 'CEREBROFORT XL', '0', '1', ' Merry', '2013-09-18 17:21:56', ' Sri', '2014-01-26 17:13:22', '0', null, '', '130000', '14000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84880', '', 'DENOMIX', '0', '1', ' Merry', '2013-09-18 18:04:43', null, null, '0', null, '', '14000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84881', '', 'VIRUMERZ 5GR', '0', '1', ' Merry', '2013-09-18 18:05:15', null, null, '0', null, '', '35000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84882', '', 'COMTUSI 60ML', '0', '1', ' Merry', '2013-09-18 18:06:07', null, null, '0', null, '', '40000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84883', '', 'TANAKAN', '0', '1', ' Merry', '2013-09-18 18:10:51', null, null, '0', null, '15 BIJI', '185000', '92500', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84884', '', 'NOSEDIN', '0', '1', ' Merry', '2013-09-18 18:11:35', ' Merry', '2013-09-18 18:11:42', '0', null, '10 BIJI', '120000', '40000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84885', '', 'ULSAFATE', '0', '1', ' Merry', '2013-09-18 18:12:25', null, null, '0', null, '', '45000', '45000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84886', '', 'UROGETIC', '0', '1', ' Merry', '2013-09-18 18:50:03', null, null, '0', null, '10 BIJI', '375000', '40000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84888', '', 'STREPSIL REGULER', '0', '1', ' Merry', '2013-09-19 12:04:28', ' Merry', '2013-09-19 12:08:04', '0', null, '', '11000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84889', '', 'STREPSIL HONEY LEMON', '0', '1', ' Merry', '2013-09-19 12:04:59', null, null, '0', null, '', '11000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84890', '', 'TONIKUM', '0', '1', ' Merry', '2013-09-19 12:05:25', null, null, '0', null, '', '25000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84891', '', 'BINOTAL500MG', '0', '1', ' Merry', '2013-09-19 12:06:28', null, null, '0', null, '10 BIJI', '175000', '37500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84892', '', 'OXYPEN ', '0', '1', ' Merry', '2013-09-19 12:49:11', null, null, '0', null, '10 BIJI', '130000', '26000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84893', '', 'MINYAK DEWI TUNJONG BESAR 100ML', '0', '1', ' Merry', '2013-09-19 13:24:49', ' Merry', '2013-09-20 12:26:56', '0', null, '', '26000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84894', '', 'BIOLINCOM 500MG', '0', '1', ' Merry', '2013-09-19 13:37:02', null, null, '0', null, '10 BIJI', '375000', '40000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84895', '', 'TRIAMINIC PILEK', '0', '1', ' Merry', '2013-09-19 14:26:02', null, null, '0', null, '', '40000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84896', '', 'TRIAMINIC DROP', '0', '1', ' Merry', '2013-09-19 14:27:04', null, null, '0', null, '', '55000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84897', '', 'SOCID', '0', '1', ' Merry', '2013-09-19 14:33:01', null, null, '0', null, '6 BIJI', '150000', '75000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84898', '', 'DEWI BULAN 100ML', '0', '1', ' Merry', '2013-09-19 16:20:05', ' Merry', '2013-09-20 11:51:31', '0', null, '', '26000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84900', '', 'OSTEOR-C CREAM', '0', '1', ' Merry', '2013-09-19 16:39:52', ' Merry', '2013-09-20 10:56:47', '0', null, '', '87500', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84901', '', 'FLEXIMUV', '0', '1', ' Merry', '2013-09-19 16:52:33', ' Merry', '2014-11-06 15:54:43', '0', null, '10CAP', '120000', '40000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84902', '', 'VOMETA DROP', '0', '1', ' Merry', '2013-09-19 17:08:21', null, null, '0', null, '', '42500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84903', '', 'NUTRI B BLISTER', '0', '1', ' Merry', '2013-09-19 17:24:17', ' Merry', '2013-11-10 17:57:42', '0', null, '10 BIJI', '140000', '35000', 'BOX', 'LBR', '4', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84904', '', 'BLOODCARE', '0', '1', ' Merry', '2013-09-19 17:48:38', null, null, '0', null, '10 BIJI', '40000', '15000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84305', '', 'DEFIRT', '0', '1', ' Merry', '2013-09-19 18:10:21', null, null, '0', null, '10 BIJI', '90000', '20000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84905', '', 'ADEMSARI', '0', '1', ' Merry', '2013-09-20 11:00:58', null, null, '0', null, '', '128000', '11000', 'LSN', 'BOX', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84908', '', 'CENDO CETAMIDE', '0', '1', ' Merry', '2013-09-20 11:54:13', null, null, '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84909', '', 'IBU ANAK SEDANG', '0', '1', ' Merry', '2013-09-20 14:04:54', null, null, '0', null, '', '32000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84910', '', 'IFLAZ', '0', '1', ' Merry', '2013-09-20 16:41:20', null, null, '0', null, '10 BIJI', '100000', '20000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84911', '', 'SONIHR', '0', '1', ' Merry', '2013-09-21 08:40:24', null, null, '0', null, '10 BIJI', '295000', '60000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84913', '', 'D ALPHA 400MG', '0', '1', ' Merry', '2013-09-21 11:38:02', null, null, '0', null, '', '75000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84914', '', 'POSOP', '0', '1', ' Merry', '2013-09-21 12:24:20', ' Merry', '2013-09-21 12:24:27', '0', null, '', '58000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84915', '', 'ENATUCAOR 10 MG', '0', '1', ' Merry', '2013-09-21 12:25:34', ' Merry', '2014-04-23 16:53:48', '0', null, '10 BIJI', '450000', '150000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84916', '', 'SANGOBION SYRUP 100ML', '0', '1', ' Merry', '2013-09-21 16:26:27', null, null, '0', null, '', '27500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84917', '', 'TRIAMINIC EKSPEKTORAN 60ML', '0', '1', ' Merry', '2013-09-21 16:27:35', null, null, '0', null, '', '40000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84318', '', 'COZAR', '0', '1', ' Merry', '2013-09-21 17:13:36', null, null, '0', null, '14 BIJI', '350000', '175000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84920', '', 'BIO39', '0', '1', ' Merry', '2013-09-23 11:32:52', null, null, '0', null, '', '160000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84921', '', 'LANAGOGUM', '0', '1', ' Merry', '2013-09-23 12:29:53', null, null, '0', null, '10 BIJI', '425000', '43000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84922', '', 'EVER E BLISTER', '0', '1', ' Merry', '2013-09-23 13:54:48', ' Merry', '2013-09-23 14:36:28', '0', null, '', '12500', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84923', '', 'VIOXY FM', '0', '1', ' Merry', '2013-09-23 14:36:56', null, null, '0', null, '10 BIJI', '117000', '40000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84924', '', 'SANGOBION DROP', '0', '1', ' Merry', '2013-09-23 15:14:14', null, null, '0', null, '', '37000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84927', '', 'TAWON GG', '0', '1', ' Merry', '2013-09-23 16:23:50', null, null, '0', null, '', '110000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84928', '', 'BALSEM TIGER', '0', '1', ' Merry', '2013-09-23 16:24:16', null, null, '0', null, '', '20000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84929', '', 'FG TROCHES(30 LBR@ 10 BIJI)', '0', '1', ' Merry', '2013-09-23 16:30:53', null, null, '0', null, '10 BIJI', '280000', '11000', 'BOX', 'LBR', '30', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84930', '', 'HERBESSER 90 MG', '0', '1', ' Merry', '2013-09-23 17:03:08', null, null, '0', null, '10 BIJI', '690000', '73000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84931', '', 'NECIBLOK', '0', '1', ' Merry', '2013-09-23 17:05:42', null, null, '0', null, '', '52500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84932', '', 'BECANTEX', '0', '1', ' Merry', '2013-09-23 17:27:54', null, null, '0', null, '10 BIJI', '300000', '32500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84933', '', 'NORIZEC 2MG', '0', '1', ' Merry', '2013-09-23 17:53:23', null, null, '0', null, '10 BIJI', '82500', '27500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84934', '', 'ILIADIN DROP', '0', '1', ' Merry', '2013-09-23 17:53:40', null, null, '0', null, '', '43000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84935', '', 'PERVITA', '0', '1', ' Merry', '2013-09-24 14:21:46', null, null, '0', null, '10 BIJI', '125000', '13000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84936', '', 'CAPTOPRIL 50MG', '0', '1', ' Merry', '2013-09-24 16:03:33', null, null, '0', null, '2000', '25000', '3000', 'BOX', 'LBR 10 BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84937', '', 'FUSYCOM CREAM', '0', '1', ' Merry', '2013-09-24 16:58:08', ' Merry', '2013-09-24 17:03:37', '0', null, '', '35000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84938', '', 'NERISONA COMBI 10GR', '0', '1', ' Merry', '2013-09-24 17:03:58', ' Merry', '2013-10-01 15:10:47', '0', null, '', '110000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84940', '', 'THERAVASK 5MG ', '0', '1', ' Merry', '2013-09-24 18:52:34', null, null, '0', null, '10 BIJI', '135000', '45000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84941', '', 'BENZOLAC 5GR', '0', '1', ' Merry', '2013-09-25 11:27:03', null, null, '0', null, '', '17500', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84942', '', 'POSPARGIN', '0', '1', ' Merry', '2013-09-25 13:35:58', null, null, '0', null, '10 BIJI', '65000', '7500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84943', '', 'DALACIN 300MG', '0', '1', ' Merry', '2013-09-25 13:49:57', null, null, '0', null, '10 BIJI', '435000', '145000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84944', '', 'BIO-STRAT TAB', '0', '1', ' Merry', '2013-09-25 13:50:38', ' Sri', '2014-11-08 11:57:32', '0', null, '', '160000', '160000', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84945', '', 'BALSAM KAKITIGA GREEN 20GR', '0', '1', ' Merry', '2013-09-25 14:17:56', null, null, '0', null, '', '5500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84946', '', 'BALSAM KAKITIGA GREEN36GR', '0', '1', ' Merry', '2013-09-25 14:18:36', null, null, '0', null, '', '8500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84947', '', 'BALSAM KAKITIGA YELOW20GR', '0', '1', ' Merry', '2013-09-25 14:19:17', null, null, '0', null, '', '5500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84948', '', 'BALSAM KAKITIGA YELOW36GR', '0', '1', ' Merry', '2013-09-25 14:19:39', null, null, '0', null, '', '8500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84949', '', 'LARUTAN KAKITIGA', '0', '1', ' Merry', '2013-09-25 14:19:57', null, null, '0', null, '', '3500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84950', '', 'LO HAN KO', '0', '1', ' Merry', '2013-09-25 14:24:29', null, null, '0', null, '', '15000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84951', '', 'PAMOL FORTE TAB', '0', '1', ' Merry', '2013-09-25 14:27:22', null, null, '0', null, '10 BIJI', '45000', '4500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84352', '', 'PREMASTON', '0', '1', ' Merry', '2013-09-25 14:41:39', null, null, '0', null, '10 BIJI', '120000', '42000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84952', '', 'BETOMINPLEK', '0', '1', ' Merry', '2013-09-25 14:47:24', null, null, '0', null, '', '13000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84953', '', 'LESICHOL 300MG', '0', '1', ' Merry', '2013-09-25 16:20:09', null, null, '0', null, '10 BIJI', '420000', '70000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84954', '', 'DUMOCALCIN', '0', '1', ' Merry', '2013-09-25 17:16:01', null, null, '0', null, '10 BIJI', '15000', '5000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84956', '', 'MERTIGO SR', '0', '1', ' Merry', '2013-09-26 14:06:14', null, null, '0', null, '10 BIJI', '500000', '50000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84957', '', 'INSOBETIC TAB', '0', '1', ' Merry', '2013-09-26 14:49:33', null, null, '0', null, '10 BIJI', '355000', '60000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84958', '', 'PROFERTIL', '0', '1', ' Merry', '2013-09-26 16:52:20', ' Merry', '2015-06-03 18:20:15', '0', null, '1BIJI', '152500', '16000', 'LBR', 'BIJI', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84959', '', 'ANDANTOL JELLY', '0', '1', ' Merry', '2013-09-26 17:53:04', ' Merry', '2013-09-26 17:54:56', '0', null, '', '47500', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84960', '', 'NUFIT SYP', '0', '1', ' Merry', '2013-09-26 17:55:44', null, null, '0', null, '', '57500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84961', '', 'THERAVASK 10 MG', '0', '1', ' Merry', '2013-09-26 18:07:44', null, null, '0', null, '10 BIJI', '180000', '60000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84962', '', 'BIOTHICOL 250 MG', '0', '1', ' Merry', '2013-09-26 18:16:19', null, null, '0', null, '10 BIJI', '160000', '16000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84963', '', 'HERBAFRESS', '0', '1', ' Merry', '2013-09-26 19:14:01', null, null, '0', null, '', '5500', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84964', '', 'BALPIRIK KAYU PUTIH', '0', '1', ' Merry', '2013-09-27 11:18:56', null, null, '0', null, '', '6000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84965', '', 'OMEGA 200BIJI', '0', '1', ' Merry', '2013-09-27 11:22:18', ' Merry', '2013-10-01 08:46:34', '0', null, '', '260000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84966', '', 'CLAVAMOX 500MG', '0', '1', ' Merry', '2013-09-27 14:56:43', null, null, '0', null, '10 BIJI', '330000', '110000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84967', '', 'HERBAL FAT BURNER SEAQUIL', '0', '1', ' Merry', '2013-09-27 15:47:17', null, null, '0', null, '', '265000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84968', '', 'HAIR NUTRITION SEAQUIL', '0', '1', ' Merry', '2013-09-27 15:47:45', null, null, '0', null, '', '245000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84969', '', 'CADUET 5/10MG', '0', '1', ' Merry', '2013-09-27 17:12:34', null, null, '0', null, '10 BIJI', '315000', '105000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84970', '', 'VITACID CREAM 0,25%', '0', '1', ' Merry', '2013-09-28 12:32:19', null, null, '0', null, '', '23000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84971', '', 'CLINOVIR CREAM 5G', '0', '1', ' Merry', '2013-09-28 12:33:31', null, null, '0', null, '', '33000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84972', '', 'ALBOTHYL OVULA', '0', '1', ' Merry', '2013-09-28 12:36:11', null, null, '0', null, '', '120000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84973', '', 'AUGENTONIC MD', '0', '1', ' Merry', '2013-09-28 15:21:45', null, null, '0', null, '', '20000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84974', '', 'BEVALEX CREAM', '0', '1', ' Merry', '2013-09-28 16:26:06', null, null, '0', null, '', '10000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84975', '', 'EMKAPSULE', '0', '1', ' Merry', '2013-09-28 16:38:53', null, null, '0', null, '', '8500', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84976', '', 'SAKATONIK LIVER', '0', '1', ' Merry', '2013-09-28 16:39:40', null, null, '0', null, '', '20000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84977', '', 'ANAK KONIDINE SYRUP', '0', '1', ' Merry', '2013-09-28 16:40:28', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84978', '', 'TRANSPULMIN BALSAM', '0', '1', ' Merry', '2013-09-28 16:52:43', null, null, '0', null, '', '52000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84979', '', 'GELIGA BALSAM BESAR', '0', '1', ' Merry', '2013-09-28 18:31:15', null, null, '0', null, '', '12500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84980', '', 'NITROKAF CAP', '0', '1', ' Merry', '2013-09-29 14:45:49', null, null, '0', null, '', '18500', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84981', '', 'LACTACYD 230ML', '0', '1', ' Merry', '2013-09-29 16:19:48', ' Merry', '2013-09-30 12:44:35', '0', null, '', '70000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84982', '', 'MELANOX FORTE', '0', '1', ' Merry', '2013-09-30 09:38:54', null, null, '0', null, '', '30000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84983', '', 'APPETON LYSINE SYP 60 ML', '0', '1', ' Merry', '2013-09-30 12:42:08', ' Merry', '2013-09-30 12:42:36', '0', null, '', '87500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84984', '', 'APPETON TAURINE SYP 60 ML', '0', '1', ' Merry', '2013-09-30 12:43:04', null, null, '0', null, '', '90000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84985', '', 'APPETON TAURIN SYP 120 ML', '0', '1', ' Merry', '2013-09-30 12:43:46', ' Merry', '2013-09-30 12:46:46', '0', null, '', '135000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84986', '', 'APPETON TEENGROW', '0', '1', ' Merry', '2013-09-30 12:44:26', null, null, '0', null, '', '235000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84987', '', 'OSTEOFREE', '0', '1', ' Merry', '2013-09-30 14:02:19', null, null, '0', null, '6 BIJI', '160000', '32500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84988', '', 'DULCOLACTOL SYP', '0', '1', ' Merry', '2013-09-30 14:38:27', null, null, '0', null, '', '58000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84989', '', 'SILEX SYP', '0', '1', ' Merry', '2013-09-30 16:45:14', null, null, '0', null, '', '38000', '38000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84991', '', 'DOMESCO', '0', '1', ' Merry', '2013-09-30 18:41:59', null, null, '0', null, '10 BIJI', '275000', '27500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84992', '', 'IMULAN ', '0', '1', ' Merry', '2013-09-30 19:27:51', null, null, '0', null, '6 BIJI', '80000', '9000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84993', '', 'DOGMATIL CAP', '0', '1', ' Merry', '2013-10-01 13:59:54', null, null, '0', null, '10 BIJI', '325000', '35000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84994', '', 'AKILEN 200MG', '0', '1', ' Merry', '2013-10-01 15:48:54', null, null, '0', null, '10 BIJI', '225000', '75000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84995', '', 'HEROCYN BABY', '0', '1', ' Merry', '2013-10-01 17:47:57', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84996', '', 'TRIAMINIC BATUK&PILEK', '0', '1', ' Merry', '2013-10-01 18:43:08', null, null, '0', null, '', '40000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84997', '', 'KELO-COTE ', '0', '1', ' Merry', '2013-10-02 09:39:08', ' Merry', '2013-11-02 09:44:00', '0', null, '', '350000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84998', '', 'STOPCOLD', '0', '1', ' Merry', '2013-10-02 11:49:31', null, null, '0', null, '4 BIJI', '37500', '3000', 'BOX', 'LBR', '15', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('84999', '', 'OROS BT', '0', '1', ' Merry', '2013-10-02 12:09:12', null, null, '0', null, '', '120000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85000', '', 'OBH ANAK', '0', '1', ' Merry', '2013-10-02 13:20:29', null, null, '0', null, '', '11000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85001', '', 'CURLIV', '0', '1', ' Merry', '2013-10-02 15:16:07', null, null, '0', null, '10 BIJI', '130000', '22000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85002', '', 'ZEVITGROW', '0', '1', ' Merry', '2013-10-02 15:17:00', ' Merry', '2013-10-02 15:17:42', '0', null, '', '10000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85003', '', 'MEXPHARM 7,5MG', '0', '1', ' Merry', '2013-10-02 17:32:43', null, null, '0', null, '10 BIJI', '110000', '55000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85004', '', 'DOLOFEN F', '0', '1', ' Merry', '2013-10-02 17:42:49', null, null, '0', null, '10 BIJI', '75000', '8500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85005', '', 'CALTRATE', '0', '1', ' Merry', '2013-10-02 19:02:24', ' Merry', '2013-10-02 19:04:05', '0', null, '', '62500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85006', '', 'OCULOTECT GEL', '0', '1', ' Merry', '2013-10-02 19:04:30', null, null, '0', null, '', '60000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85007', '', 'AROMASIN', '0', '1', ' Merry', '2013-10-02 19:05:47', null, null, '0', null, '14 BIJI', '2000000', '1000000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85008', '', 'LASAL 2', '0', '1', ' Merry', '2013-10-02 19:08:42', null, null, '0', null, '10 BIJI', '110000', '12000', 'BOX', 'LBR ', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85009', '', 'RHODIUM', '0', '1', ' Merry', '2013-10-03 15:55:29', null, null, '0', null, '10 BIJI', '187500', '63000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85010', '', 'ZAMBUK', '0', '1', ' Merry', '2013-10-04 12:35:59', null, null, '0', null, '', '30000', '30000', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85011', '', 'VICKS VAPORUB 10GR', '0', '1', ' Merry', '2013-10-04 12:36:39', null, null, '0', null, '', '6500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85012', '', 'ADONA FORTE', '0', '1', ' Merry', '2013-10-04 12:42:08', null, null, '0', null, '10 BIJI', '345000', '35000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85013', '', 'ACTIFED KUNING 60ML', '0', '1', ' Merry', '2013-10-04 14:06:40', null, null, '0', null, '', '32000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85014', '', 'ACTIFED MERAH 60 ML', '0', '1', ' Merry', '2013-10-04 14:07:02', null, null, '0', null, '', '32000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85015', '', 'ACTIFED HIJAU 120ML', '0', '1', ' Merry', '2013-10-04 14:07:50', null, null, '0', null, '', '48000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85016', '', 'CTM', '0', '1', ' Merry', '2013-10-04 14:22:30', null, null, '0', null, '12 BIJI', '40000', '2000', 'BOX', 'LBR', '36', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85017', '', 'TOBROSON', '0', '1', ' Merry', '2013-10-04 15:48:45', null, null, '0', null, '', '50000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85018', '', 'AVIL 25MG', '0', '1', ' Merry', '2013-10-04 16:51:05', null, null, '0', null, '10 BIJI', '157000', '16000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85019', '', 'MEPTIN SWING', '0', '1', ' Merry', '2013-10-05 10:31:14', null, null, '0', null, '', '150000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85020', '', 'LACBON', '0', '1', ' Merry', '2013-10-05 10:31:40', null, null, '0', null, '10 BIJI', '150000', '16000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85021', '', 'NIU NAI LIANG', '0', '1', ' Merry', '2013-10-05 11:12:59', null, null, '0', null, '', '30000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85022', '', 'EPSONAL', '0', '1', ' Merry', '2013-10-05 16:33:02', null, null, '0', null, '10 BIJI', '350000', '35000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85023', '', 'NASONEX 60', '0', '1', ' Merry', '2013-10-06 16:11:17', null, null, '0', null, '', '165000', '165000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85024', '', 'TELON KONICARE', '0', '1', ' Merry', '2013-10-07 13:37:14', null, null, '0', null, '', '36000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85025', '', 'JAMU BERSALIN MENERKHUSUS', '0', '1', ' Merry', '2013-10-07 13:37:50', ' Merry', '2013-10-10 14:33:18', '0', null, '', '415000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85026', '', 'SUPRA LIVRON', '0', '1', ' Merry', '2013-10-07 14:38:50', null, null, '0', null, '10 BIJI', '40000', '5000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85027', '', 'APOLAR', '0', '1', ' Merry', '2013-10-07 14:39:28', null, null, '0', null, '', '30000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85028', '', 'ROHTO COOL', '0', '1', ' Merry', '2013-10-07 14:45:09', null, null, '0', null, '', '13000', '13000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85029', '', 'POSTINOR', '0', '1', ' Merry', '2013-10-07 14:47:21', null, null, '0', null, '', '22500', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85030', '', 'MATOFLAM', '0', '1', ' Merry', '2013-10-07 15:02:34', null, null, '0', null, '6 BIJI', '120000', '40000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85031', '', 'KAMILOSAN', '0', '1', ' Merry', '2013-10-07 15:32:12', null, null, '0', null, '', '40000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85032', '', 'PROVELYN 75MG', '0', '1', ' Merry', '2013-10-07 17:03:43', null, null, '0', null, '', '135000', '135000', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85033', '', 'TUNG CHUNG SIA CHAO 90 BIJI', '0', '1', ' Merry', '2013-10-07 17:15:55', null, null, '0', null, '', '340000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85034', '', 'ATP KYOWA', '0', '1', ' Merry', '2013-10-07 19:05:55', null, null, '0', null, '10 BIJI', '145000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85035', '', 'URICA 300 MG', '0', '1', ' Merry', '2013-10-08 11:17:15', ' Merry', '2013-12-01 14:47:03', '0', null, '10 BIJI', '350000', '45000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85036', '', 'DHEA', '0', '1', ' Merry', '2013-10-08 11:48:37', null, null, '0', null, '', '340000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85037', '', 'ROYAL JELLY MADU HD', '0', '1', ' Merry', '2013-10-08 15:54:29', null, null, '0', null, '', '375000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85038', '', 'DIPROSALIC 10GR', '0', '1', ' Merry', '2013-10-08 16:16:40', null, null, '0', null, '', '105000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85039', '', 'CADUET 10/20 MG', '0', '1', ' Merry', '2013-10-08 16:43:34', null, null, '0', null, '10 BIJI', '547500', '182500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85040', '', 'RENABETIC', '0', '1', ' Merry', '2013-10-08 18:22:43', null, null, '0', null, '10 BIJI', '20000', '2500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85041', '', 'POLYSILANE SYP KECIL', '0', '1', ' Merry', '2013-10-09 13:57:43', null, null, '0', null, '', '19000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85042', '', 'COMTUSI CAP', '0', '1', ' Merry', '2013-10-09 14:07:48', null, null, '0', null, '10 BIJI', '70000', '22500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85043', '', 'CHLORAMEX', '0', '1', ' Merry', '2013-10-09 14:14:30', null, null, '0', null, '10 BIJI', '165000', '17000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85044', '', 'LONGATIN 50MG', '0', '1', ' Merry', '2013-10-09 14:15:25', null, null, '0', null, '10 BIJI', '375000', '40000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85045', '', 'LONGATIN 25MG', '0', '1', ' Merry', '2013-10-09 14:16:47', ' Sri', '2015-05-19 14:56:21', '0', null, '4TAB', '250000', '10000', 'BOX', 'LBR', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85046', '', 'OXYVIT', '0', '1', ' Merry', '2013-10-09 17:55:32', null, null, '0', null, '4  BIJI', '240000', '10000', 'BOX', 'LBR', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85047', '', 'ETHIGOBAL', '0', '1', ' Merry', '2013-10-09 18:11:32', null, null, '0', null, '10 BIJI', '100000', '20000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85048', '', 'SIANG PURE OIL SEDANG', '0', '1', ' Merry', '2013-10-10 10:51:41', null, null, '0', null, '', '19000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85049', '', 'TEMULAWAK SACHT', '0', '1', ' Merry', '2013-10-10 12:28:05', ' Merry', '2013-10-11 16:24:01', '0', null, '', '14000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85050', '', 'JAMU BERSALIN MENER', '0', '1', ' Merry', '2013-10-10 14:32:34', ' Merry', '2013-11-09 12:24:13', '0', null, '', '155000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85051', '', 'CANDERSARTAN 16 MG 10 TAB', '0', '1', ' Merry', '2013-10-10 15:23:24', null, null, '0', null, '10 BIJI', '210000', '70000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85052', '', 'CANDERSARTAN 8 MG 10 TAB', '0', '1', ' Merry', '2013-10-10 15:26:51', null, null, '0', null, '10 BIJI', '150000', '50000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85053', '', 'KALIUM DIKLOFENAC 50', '0', '1', ' Merry', '2013-10-10 15:28:59', null, null, '0', null, '10 BIJI', '40000', '8000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85054', '', 'BETADINE OINT', '0', '1', ' Merry', '2013-10-10 16:12:29', null, null, '0', null, '', '14500', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85055', '', 'BACTODERM', '0', '1', ' Merry', '2013-10-10 16:12:51', null, null, '0', null, '', '55000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85056', '', 'FRITENS 150 MG', '0', '1', ' Merry', '2013-10-10 16:13:50', null, null, '0', null, '', '85000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85057', '', 'SIMBADO 10 MG', '0', '1', ' Merry', '2013-10-10 16:40:58', null, null, '0', null, '10 BIJI', '202500', '67500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85058', '', 'SUPRADYN EFFERVESCENT', '0', '1', ' Merry', '2013-10-11 15:14:31', null, null, '0', null, '', '29000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85059', '', 'POLYSILANE KAPLET TELAN', '0', '1', ' Merry', '2013-10-11 16:11:19', null, null, '0', null, '10 BIJI', '15000', '7500', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85060', '', 'DETROVEL 10 MG', '0', '1', ' Merry', '2013-10-11 16:13:57', null, null, '0', null, '10 BIJI', '75000', '25000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85061', '', 'MIACALSIC 100 IU INJ.', '0', '1', ' Merry', '2013-10-12 11:56:44', null, null, '0', null, '', '1000000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85062', '', 'ZHENG KUK SHUI 100ML', '0', '1', ' Merry', '2013-10-12 14:56:53', ' Merry', '2013-11-10 17:14:27', '0', null, '', '47000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85063', '', 'ZHENG KUK SHUI 60ML SPRAY', '0', '1', ' Merry', '2013-10-12 14:57:20', ' Merry', '2013-10-15 14:50:01', '0', null, '', '36000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85065', '', 'SALEP  999', '0', '1', ' Merry', '2013-10-12 14:58:48', null, null, '0', null, '', '22000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85066', '', 'WONG TO YIK', '0', '1', ' Merry', '2013-10-12 14:59:17', ' Merry', '2013-10-16 15:32:23', '0', null, '', '95000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85067', '', 'SO HAP AJA', '0', '1', ' Merry', '2013-10-12 14:59:53', ' Merry', '2013-10-21 16:56:04', '0', null, '', '155000', '16000', 'BOX', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85069', '', 'BAI FUNG WAN KALENG', '0', '1', ' Merry', '2013-10-12 15:02:29', null, null, '0', null, '', '55000', '0', 'KLG', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85070', '', 'BENACOL DTM', '0', '1', ' Merry', '2013-10-12 16:19:14', ' Merry', '2013-10-12 16:23:05', '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85071', '', 'DEFORBIL', '0', '1', ' Merry', '2013-10-12 16:20:03', null, null, '0', null, '10 BIJI', '70000', '15000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85072', '', 'KAFLAM50MG', '0', '1', ' Merry', '2013-10-12 16:21:43', null, null, '0', null, '10 BIJI', '90000', '30000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85073', '', 'NATRIUM DIKLOFENAC 25MG', '0', '1', ' Merry', '2013-10-14 13:58:36', null, null, '0', null, '10 BIJI', '25000', '4000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85074', '', 'NATRIUM DIKLOFENAC 50 MG', '0', '1', ' Merry', '2013-10-14 13:59:49', null, null, '0', null, '10BIJI', '25000', '5000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85075', '', 'NEUROBION INJEKSI', '0', '1', ' Merry', '2013-10-14 18:12:43', ' Merry', '2014-10-04 18:00:05', '0', null, '', '170000', '9000', 'BOX', 'PSG', '20', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85076', '', 'PRATROPIL 400 MG', '0', '1', ' Merry', '2013-10-16 13:41:32', null, null, '0', null, '10 BIJI', '160000', '17000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85077', '', 'RENAMIDE', '0', '1', ' Merry', '2013-10-16 13:42:11', null, null, '0', null, '10 BIJI', '70000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85078', '', 'MILMOR CAP', '0', '1', ' Merry', '2013-10-17 15:24:07', null, null, '0', null, '10 BIJI', '165000', '27500', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85079', '', 'AOF', '0', '1', ' Merry', '2013-10-17 16:35:40', null, null, '0', null, '', '275000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85080', '', 'LEVOPRONT', '0', '1', ' Merry', '2013-10-17 18:28:37', null, null, '0', null, '', '62000', '62000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85081', '', 'REQUIP 4 MG', '0', '1', ' Merry', '2013-10-18 10:08:23', null, null, '0', null, '', '245000', '35000', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85082', '', 'MICARDIS 80 PLUS', '0', '1', ' Merry', '2013-10-18 13:43:17', null, null, '0', null, '10 BIJI', '340000', '170000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85083', '', 'SIBELIUM 10 MG', '0', '1', ' Merry', '2013-10-18 14:38:44', null, null, '0', null, '', '105000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85084', '', 'GLUCO DR SENSOR', '0', '1', ' Merry', '2013-10-18 14:54:23', ' Merry', '2013-10-18 14:54:33', '0', null, '', '215000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85085', '', 'SEMAX', '0', '1', ' Merry', '2013-10-18 15:29:49', ' Merry', '2014-10-04 17:59:19', '0', null, '', '1300000', '0', 'VIAL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85086', '', 'VINAFLUOR', '0', '1', ' Merry', '2013-10-18 16:09:14', null, null, '0', null, '10 BIJI', '95000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85087', '', 'DRAMAMINE', '0', '1', ' Merry', '2013-10-18 16:09:52', null, null, '0', null, '10 BIJI', '140000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85088', '', 'VITAQUIN', '0', '1', ' Merry', '2013-10-18 16:10:18', null, null, '0', null, '', '57000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85089', '', 'TARONTAL 100 MG', '0', '1', ' Merry', '2013-10-18 16:22:05', null, null, '0', null, '10 BIJI', '335000', '35000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85090', '', 'EXTILO', '0', '1', ' Merry', '2013-10-19 14:10:48', null, null, '0', null, '', '22500', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85091', '', 'LISINOPRIL 5 MG', '0', '1', ' Merry', '2013-10-20 13:32:13', ' Merry', '2013-10-20 13:34:48', '0', null, '10 BIJI', '20000', '7000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85092', '', 'LISINOPRIL 10 MG', '0', '1', ' Merry', '2013-10-20 13:32:56', ' Merry', '2013-10-20 13:34:40', '0', null, '10 BIJI', '30000', '10000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85093', '', 'TEMPRA SYP 60 ML', '0', '1', ' Merry', '2013-10-20 16:13:52', null, null, '0', null, '', '32000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85094', '', 'URFAMICIN 500MG', '0', '1', ' Merry', '2013-10-21 13:48:06', null, null, '0', null, '10 BIJI', '490000', '50000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85095', '', 'IMPRESIAL 500MG', '0', '1', ' Merry', '2013-10-21 13:49:45', null, null, '0', null, '10 BIJI', '800000', '82000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85096', '', 'BONEFOS 400MG', '0', '1', ' Merry', '2013-10-21 16:22:06', null, null, '0', null, '10 BIJI', '675000', '0', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85097', '', 'KALNEX 250MG', '0', '1', ' Merry', '2013-10-21 18:45:49', null, null, '0', null, '10 BIJI', '90000', '9000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85098', '', 'CASODEX 50 MG', '0', '1', ' Merry', '2013-10-22 12:58:16', null, null, '0', null, '14 BIJI', '2800000', '1400000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85099', '', 'JUVELON 30 BIJI', '0', '1', ' Merry', '2013-10-22 16:24:26', null, null, '0', null, '', '40000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85100', '', 'PABANOX', '0', '1', ' Merry', '2013-10-22 17:31:38', ' Merry', '2013-12-15 17:43:48', '0', null, '', '43000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85101', '', 'FRESHCOOL', '0', '1', ' Merry', '2013-10-23 11:49:12', ' Merry', '2013-10-23 12:47:08', '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85102', '', 'VIPALBUMIN', '0', '1', ' Merry', '2013-10-23 12:47:27', null, null, '0', null, '', '200000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85103', '', 'LUBIRE', '0', '1', ' Merry', '2013-10-23 12:49:26', null, null, '0', null, '6 BIJI', '140000', '28000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85104', '', 'NITROKAF FORTE', '0', '1', ' Merry', '2013-10-23 12:50:01', null, null, '0', null, '10 BIJI', '310000', '32000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85105', '', 'TANAPRES 5MG', '0', '1', ' Merry', '2013-10-23 12:57:19', ' Ana', '2013-11-08 15:59:00', '0', null, '10 BIJI', '255000', '85000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85106', '', 'SENSITIF TEST', '0', '1', ' Merry', '2013-10-23 12:58:59', null, null, '0', null, '', '18000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85107', '', 'LYSAGOR', '0', '1', ' Merry', '2013-10-23 18:13:27', null, null, '0', null, '10 BIJI', '30000', '10000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85108', '', 'DECOLGEN FX', '0', '1', ' Merry', '2013-10-23 18:14:02', null, null, '0', null, '10 BIJI', '40000', '4500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85109', '', 'POLIDEMISIN ED', '0', '1', ' Merry', '2013-10-23 18:46:47', null, null, '0', null, '', '25000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85110', '', 'OMEGA ODOURLESS', '0', '1', ' Merry', '2013-10-24 10:59:55', null, null, '0', null, '', '160000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85111', '', 'VASACON', '0', '1', ' Merry', '2013-10-24 17:27:20', null, null, '0', null, '', '22000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85112', '', 'FLEXIMAX', '0', '1', ' Merry', '2013-10-25 10:37:06', ' Merry', '2014-11-06 15:55:19', '0', null, '', '80000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85113', '', 'ZYPREXA 5MG', '0', '1', ' Merry', '2013-10-25 12:04:31', null, null, '0', null, '', '250000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85114', '', 'GRAVIMIN', '0', '1', ' Merry', '2013-10-25 15:18:12', null, null, '0', null, '10 BIJI', '65000', '22500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85115', '', 'DAKTARIN ORAL JEL', '0', '1', ' Merry', '2013-10-25 15:49:09', null, null, '0', null, '', '60000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('58116', '', 'OSTELOX 7,5 MG', '0', '1', ' Merry', '2013-10-25 16:30:40', ' Merry', '2013-12-22 14:25:01', '0', null, '', '65000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85116', '', 'ERITROMICIN 500MG', '0', '1', ' Merry', '2013-10-25 16:47:19', null, null, '0', null, '10 BIJI', '100000', '12500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85117', '', 'SHU JIN LU', '0', '1', ' Merry', '2013-10-26 15:47:30', null, null, '0', null, '', '57500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85118', '', 'FU FANG ACIAO', '0', '1', ' Merry', '2013-10-26 15:47:52', null, null, '0', null, '', '140000', '140000', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85119', '', 'LODAMART', '0', '1', ' Merry', '2013-10-26 18:18:51', null, null, '0', null, '10 BIJI', '40000', '8000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85120', '', 'VOMITAS TAB', '0', '1', ' Ana', '2013-10-27 13:25:00', null, null, '0', null, '10 BIJI', '120000', '40000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85121', '', 'DHA COMPLEX @60SOFTGEL', '0', '1', ' Ana', '2013-10-28 13:27:25', ' Ana', '2013-10-28 13:31:13', '0', null, '', '285000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85122', '', 'COUNTERPAIN COOL 30G', '0', '1', ' Ana', '2013-10-28 13:29:22', null, null, '0', null, '', '33000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85123', '', 'THYROZOL 5MG', '0', '1', ' Merry', '2013-10-29 13:51:49', null, null, '0', null, '10 BIJI', '120000', '13000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85124', '', 'DIPROSONE OV SALEP', '0', '1', ' Merry', '2013-10-29 16:30:58', null, null, '0', null, '', '80000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85125', '', 'STENIROL 4MG', '0', '1', ' Merry', '2013-10-29 18:00:22', null, null, '0', null, '10 BIJI', '150000', '30000', 'BOX', 'LBR ', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85126', '', 'CAVIAR EYE GEL', '0', '1', ' Merry', '2013-10-29 18:01:14', null, null, '0', null, '', '380000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85127', '', 'ALKOHOL 300ML', '0', '1', ' Ana', '2013-10-30 10:49:17', null, null, '0', null, '', '9000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85128', '', 'POLYCROL FORTE TAB', '0', '1', ' Ana', '2013-10-30 11:08:26', null, null, '0', null, '10 BIJI', '144000', '7000', 'BOX', 'LBR', '24', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85129', '', 'CAVEA', '0', '1', ' Ana', '2013-10-30 12:49:58', null, null, '0', null, '10 BIJI', '45000', '15000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85130', '', 'SOHC', '0', '1', ' Ana', '2013-10-30 13:48:58', null, null, '0', null, '', '5000', '5000', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85131', '', 'BECOMBION SYP', '0', '1', ' Ana', '2013-10-30 14:11:34', null, null, '0', null, '', '26000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85132', '', 'PLAVESCO', '0', '1', ' Ana', '2013-10-30 15:41:34', null, null, '0', null, '10 BIJI', '850000', '170000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85134', '', 'LESICOL 600MG', '0', '1', ' Merry', '2013-10-30 16:48:02', ' Ana', '2014-02-14 15:06:52', '0', null, '5 BIJI', '420000', '70000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85135', '', 'TELFAST PLUS', '0', '1', ' Merry', '2013-10-30 17:41:10', null, null, '0', null, '10 BIJI', '395000', '40000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85136', '', 'IMBOST TAB', '0', '1', ' Merry', '2013-10-30 18:14:16', null, null, '0', null, '10 BIJI', '100000', '35000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85137', '', 'OTOLIN', '0', '1', ' Merry', '2013-10-30 18:14:37', null, null, '0', null, '', '25000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85138', '', 'OXOFERIN', '0', '1', ' Merry', '2013-10-31 15:34:19', null, null, '0', null, '', '70000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85139', '', 'ACTIFED HIJAU 60 ML', '0', '1', ' Merry', '2013-10-31 16:19:49', null, null, '0', null, '', '32000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85140', '', 'NEUROTAM 400MG', '0', '1', ' Ana', '2013-11-01 10:57:48', null, null, '0', null, '10 BIJI', '210000', '22000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85141', '', 'FLUIMUCIL SYP', '0', '1', ' Merry', '2013-11-01 16:32:05', null, null, '0', null, '', '50000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85142', '', 'CARE PLUS', '0', '1', ' Merry', '2013-11-02 14:45:59', null, null, '0', null, '', '14000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85143', '', 'METHYLPREDNISOLON 16 MG', '0', '1', ' Merry', '2013-11-04 16:32:44', null, null, '0', null, '10  BIJI', '65000', '8000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85144', '', 'JAVANONY', '0', '1', ' Merry', '2013-11-05 13:06:59', null, null, '0', null, '', '180000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85145', '', 'SIDOLA KECIL', '0', '1', ' Merry', '2013-11-06 09:25:21', null, null, '0', null, '', '8500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85146', '', 'EVENING PRIMOSE OILNATURE CARE', '0', '1', ' Merry', '2013-11-06 12:54:01', null, null, '0', null, '', '140000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85147', '', 'KALTICOL 500 MG', '0', '1', ' Merry', '2013-11-06 18:32:00', ' Merry', '2013-11-06 18:32:16', '0', null, '10 BIJI', '165000', '17500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85148', '', 'PERMYO', '0', '1', ' Merry', '2013-11-06 18:45:13', null, null, '0', null, '10 BIJI', '212500', '42500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85149', '', 'ETAFLUSIN  TABLET', '0', '1', ' Merry', '2013-11-08 09:45:51', ' Merry', '2014-02-28 08:53:18', '0', null, '10 BIJI', '85000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85150', '', 'COLDREXIN SYP', '0', '1', ' Merry', '2013-11-08 09:46:57', ' Merry', '2014-02-28 08:53:46', '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85152', '', 'ZOVIRAX KRIM KECIL', '0', '1', ' Merry', '2013-11-08 10:04:41', null, null, '0', null, '', '70000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85153', '', 'SAKATONIK A-B-C ANAK', '0', '1', ' Merry', '2013-11-09 11:12:24', null, null, '0', null, '', '11000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85154', '', 'SIANTAN DEMAM BERDARAH', '0', '1', ' Merry', '2013-11-09 16:30:20', ' Merry', '2013-11-14 18:53:31', '0', null, '10 BIJI', '220000', '25000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85155', '', 'NUTRAFOR GOLD', '0', '1', ' Merry', '2013-11-11 17:15:14', null, null, '0', null, '', '117500', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85156', '', 'SUPRAVIT', '0', '1', ' Merry', '2013-11-11 18:49:03', ' Merry', '2013-11-11 18:49:46', '0', null, '', '17500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85157', '', 'BIOVISION', '0', '1', ' Merry', '2013-11-11 18:50:09', null, null, '0', null, '10 BIJI', '210000', '22000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85158', '', 'HANSAPLAST FUN', '0', '1', ' Merry', '2013-11-12 14:50:08', null, null, '0', null, '', '2500', '0', 'BKS', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85159', '', 'SILADEX MERAH', '0', '1', ' Merry', '2013-11-13 11:24:50', null, null, '0', null, '', '11000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85160', '', 'WOOD MERAH BESAR', '0', '1', ' Merry', '2013-11-13 11:25:08', null, null, '0', null, '', '27000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85161', '', 'PROFIBRATE 300 MG', '0', '1', ' Merry', '2013-11-13 12:30:59', null, null, '0', null, '10 BIJI', '330000', '110000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85162', '', 'CZAR', '0', '1', ' Merry', '2013-11-13 13:45:43', null, null, '0', null, '', '225000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85163', '', 'SPORANOX', '0', '1', ' Merry', '2013-11-13 15:59:18', null, null, '0', null, '', '125000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85164', '', 'URBASON', '0', '1', ' Merry', '2013-11-13 16:37:15', ' Merry', '2013-11-13 16:38:25', '0', null, '10 BIJI', '315000', '32000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85165', '', 'VICKS ANAK', '0', '1', ' Merry', '2013-11-14 08:53:23', null, null, '0', null, '', '11000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85166', '', 'OBH SURYA', '0', '1', ' Merry', '2013-11-14 09:34:59', null, null, '0', null, '', '10000', '10000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85168', '', 'CANDISTIN', '0', '1', ' Merry', '2013-11-14 11:29:10', ' Merry', '2013-11-14 11:30:19', '0', null, '', '35000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85169', '', 'AMOXILLIN PHAROS', '0', '1', ' Merry', '2013-11-14 11:30:07', null, null, '0', null, '10 BIJI', '170000', '17500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85170', '', 'GARLIC PEARL', '0', '1', ' Merry', '2013-11-14 12:54:53', null, null, '0', null, '', '105000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('58171', '', 'MULTI VITAMIN SYP', '0', '1', ' Merry', '2013-11-14 12:55:28', null, null, '0', null, '', '190000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85171', '', 'SIANTAN TYPUS', '0', '1', ' Merry', '2013-11-14 18:54:10', null, null, '0', null, '10 BIJI', '225000', '25000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85172', '', 'BACTROBAN CREAM 10G', '0', '1', ' Merry', '2013-11-15 11:35:38', null, null, '0', null, '', '60000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85173', '', 'RIMACTANE SYP 100ML', '0', '1', ' Merry', '2013-11-15 14:20:11', null, null, '0', null, '', '97500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85174', '', 'HERBALAX INSTAN', '0', '1', ' Merry', '2013-11-15 15:31:35', null, null, '0', null, '', '37500', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85175', '', 'CAR Q 100MG', '0', '1', ' Merry', '2013-11-15 17:29:24', null, null, '0', null, '10 BIJI', '320000', '110000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85176', '', 'TRUVAZ 40 MG', '0', '1', ' Merry', '2013-11-15 17:30:04', null, null, '0', null, '10 BIJI', '405000', '135000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85177', '', 'BU CHANG NAO ', '0', '1', ' Merry', '2013-11-15 17:34:45', null, null, '0', null, '', '70000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85178', '', 'KIANG FUNG SAN', '0', '1', ' Merry', '2013-11-15 17:35:00', ' Sri', '2014-01-26 17:50:55', '0', null, '', '165000', '17500', 'BOX', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85179', '', 'TRANSPULMIN SYP KECIL', '0', '1', ' Merry', '2013-11-15 18:33:08', null, null, '0', null, '', '57500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85180', '', 'ALLOPURINOL 300 MG 3 BLISTER@ 10 BIJI', '0', '1', ' Merry', '2013-11-16 10:59:16', null, null, '0', null, '10 BIJI', '10000', '4000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85181', '', 'OTSU 1 LITER', '0', '1', ' Merry', '2013-11-16 11:04:44', null, null, '0', null, '', '20000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85182', '', 'MADU TJ', '0', '1', ' Merry', '2013-11-16 13:30:41', null, null, '0', null, '', '15000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85183', '', 'REPITHELMINI DOSE', '0', '1', ' Merry', '2013-11-18 16:37:29', null, null, '0', null, '', '38000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85184', '', 'PROVE C', '0', '1', ' Merry', '2013-11-18 17:19:49', null, null, '0', null, '10 BIJI', '105000', '35000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85185', '', 'KASA BARBE', '0', '1', ' Merry', '2013-11-19 11:47:51', null, null, '0', null, '', '7000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('58186', '', 'URICA 100MG', '0', '1', ' Merry', '2013-11-19 13:10:45', null, null, '0', null, '10 BIJI', '190000', '20000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85186', '', 'COMPRAZ', '0', '1', ' Merry', '2013-11-19 18:07:59', null, null, '0', null, '10 B IJI', '230000', '115000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85187', '', 'M-PLAN FIBER', '0', '1', ' Merry', '2013-11-19 19:27:03', ' Merry', '2013-11-30 18:52:07', '0', null, '', '330000', '12500', 'BOX', 'SCH', '30', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85188', '', 'ALOE VERA', '0', '1', ' Merry', '2013-11-19 19:27:28', null, null, '0', null, '', '170000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85189', '', 'DEPAKOTE ER 250 MG', '0', '1', ' Merry', '2013-11-19 19:34:11', null, null, '0', null, '', '680000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85190', '', 'CEREBROFORT GINGKO', '0', '1', ' Ana', '2013-11-20 16:53:40', ' Merry', '2015-04-25 12:16:09', '0', null, '', '145000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85191', '', 'ORALIT', '0', '1', ' Ana', '2013-11-20 16:56:33', ' Merry', '2013-11-24 15:51:45', '0', null, '', '40000', '1000', 'BOX', 'BKS', '100', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85193', '', 'INVOMIT 8 MG', '0', '1', ' Ana', '2013-11-21 12:17:07', ' Ana', '2013-11-21 13:33:24', '0', null, '', '140000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85194', '', 'BETADINE STIK', '0', '1', ' Ana', '2013-11-21 13:34:17', null, null, '0', null, '', '3000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85195', '', 'ACAU ARAK', '0', '1', ' Ana', '2013-11-21 13:35:17', null, null, '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85196', '', 'ZIGAT400MG', '0', '1', ' Ana', '2013-11-21 14:36:41', null, null, '0', null, '', '325000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85197', '', 'AKITA', '0', '1', ' Ana', '2013-11-21 14:57:57', null, null, '0', null, '10 BIJI', '65000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85198', '', 'ELSIRON', '0', '1', ' Ana', '2013-11-21 14:58:31', null, null, '0', null, '10 BIJI', '60000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85199', '', 'ELTAZON', '0', '1', ' Ana', '2013-11-21 14:59:01', null, null, '0', null, '10 BIJI', '60000', '6000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85200', '', 'FLASICOX 15MG', '0', '1', ' Ana', '2013-11-21 14:59:33', null, null, '0', null, '10 BIJI', '75000', '15000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85201', '', 'IFARSYL SYP', '0', '1', ' Ana', '2013-11-21 14:59:52', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85202', '', 'FENRAMIN', '0', '1', ' Ana', '2013-11-21 15:01:59', ' Merry', '2013-11-21 18:50:29', '0', null, '10 BIJI', '25000', '3000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85203', '', 'SEROQUEL 25 MG', '0', '1', ' Merry', '2013-11-22 10:45:08', null, null, '0', null, '', '120000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85204', '', 'PREBIO C', '0', '1', ' Merry', '2013-11-22 11:23:15', null, null, '0', null, '', '60000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85205', '', 'BENOSON G', '0', '1', ' Merry', '2013-11-22 18:16:59', null, null, '0', null, '', '63000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85206', '', 'MEDIKLIN LOTION', '0', '1', ' Merry', '2013-11-23 12:39:49', null, null, '0', null, '', '40000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85207', '', 'ALORA', '0', '1', ' Merry', '2013-11-23 15:55:11', null, null, '0', null, '10 BIJI', '90000', '30000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85208', '', 'RHINOS DROP', '0', '1', ' Merry', '2013-11-23 17:55:11', null, null, '0', null, '', '47500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85209', '', 'STREPSILS COOL', '0', '1', ' Merry', '2013-11-25 10:48:12', ' Merry', '2013-12-21 12:08:54', '0', null, '', '11000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85210', '', 'KAPAS 250GRAM', '0', '1', ' Merry', '2013-11-25 10:49:14', null, null, '0', null, '', '17500', '0', 'SATUAN', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85211', '', 'METHYLCOBAL INJEKSI', '0', '1', ' Merry', '2013-11-25 18:50:29', null, null, '0', null, '', '315000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85212', '', 'MYCORINE CREAM', '0', '1', ' Merry', '2013-11-26 13:46:42', null, null, '0', null, '', '32500', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85213', '', 'RESSAL ACNE', '0', '1', ' Merry', '2013-11-26 13:47:04', null, null, '0', null, '', '30000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85214', '', 'BONEPATIT 800MG', '0', '1', ' Merry', '2013-11-26 15:55:07', null, null, '0', null, '10 BIJI', '255000', '42500', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85216', '', 'SULFITIS 500MG', '0', '1', ' Merry', '2013-11-27 17:15:20', null, null, '0', null, '10 BIJI', '142500', '50000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85217', '', 'BACTROBAN SALEP 10 GR', '0', '1', ' Merry', '2013-11-28 11:54:42', null, null, '0', null, '', '60000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85218', '', 'PROSPAN ', '0', '1', ' Merry', '2013-11-28 16:02:30', null, null, '0', null, '', '77500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85219', '', 'LENTIKULAR MD', '0', '1', ' Merry', '2013-11-28 16:43:52', ' Merry', '2013-11-28 16:44:38', '0', null, '', '37500', '37500', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85220', '', 'GLAOPEN MD', '0', '1', ' Merry', '2013-11-28 16:44:31', null, null, '0', null, '', '105000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85221', '', 'NOROID 40 ML', '0', '1', ' Merry', '2013-11-29 15:48:46', null, null, '0', null, '', '60000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85223', '', 'NOROID 100ML', '0', '1', ' Merry', '2013-11-29 15:49:33', null, null, '0', null, '', '82500', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85224', '', 'IMBOST FORCE 60 ML', '0', '1', ' Merry', '2013-11-29 15:52:16', null, null, '0', null, '', '55000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85225', '', 'NEVRADIN', '0', '1', ' Merry', '2013-11-30 17:57:42', ' Merry', '2013-11-30 17:57:57', '0', null, '10 BIJI', '195000', '22000', 'BOX', 'LBR', '20', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85226', '', 'BRUFEN', '0', '1', ' Merry', '2013-12-02 11:01:29', null, null, '0', null, '10 BIJI', '230000', '24000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85227', '', 'DUPHALAC SYP', '0', '1', ' Merry', '2013-12-02 11:01:45', null, null, '0', null, '', '60000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85228', '', 'CIPROFLOXACIN 500MG', '0', '1', ' Ana', '2013-12-02 14:33:31', null, null, '0', null, '10 BIJI', '40000', '5000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85229', '', 'LACTACYD  BABY 120 ML', '0', '1', ' Ana', '2013-12-02 15:23:03', ' Ana', '2013-12-02 15:27:04', '0', null, '', '22000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85230', '', 'LACTACYD VAGINA 60 ML', '0', '1', ' Ana', '2013-12-02 15:24:14', null, null, '0', null, '', '22000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85231', '', 'PHISOHEX 50ML', '0', '1', ' Ana', '2013-12-02 15:25:04', null, null, '0', null, '', '18000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85232', '', 'HEALTHYSAL', '0', '1', ' Ana', '2013-12-02 16:59:53', null, null, '0', null, '', '40000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85233', '', 'SPIRIVA RESPIMAT', '0', '1', ' Ana', '2013-12-02 17:05:13', null, null, '0', null, '', '750000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85234', '', 'STARCEF 100MG', '0', '1', ' Merry', '2013-12-03 15:43:43', null, null, '0', null, '6 BIJI', '65000', '0', 'LBR', 'LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85235', '', 'KAPAS 1/2 KG', '0', '1', ' Merry', '2013-12-03 16:43:38', null, null, '0', null, '', '35000', '0', 'SATUAN', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85236', '', 'CANESTEN CREAM 5G', '0', '1', ' Ana', '2013-12-04 13:43:10', null, null, '0', null, '', '20000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85237', '', 'LACTACYD BABY 150ML', '0', '1', ' Ana', '2013-12-04 13:43:36', null, null, '0', null, '', '48000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85238', '', 'E 400', '0', '1', ' Merry', '2013-12-04 16:41:41', null, null, '0', null, '', '115000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85239', '', 'CIFLOS 500MG', '0', '1', ' Ana', '2013-12-05 10:30:25', null, null, '0', null, '', '85000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85241', '', 'OLIGOCARE', '0', '1', ' Merry', '2013-12-05 16:08:04', null, null, '0', null, '6 BIJI', '140000', '28000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85242', '', 'ATP DANKOS', '0', '1', ' Ana', '2013-12-05 16:47:14', null, null, '0', null, '10 BIJI', '150000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85243', '', 'MUCERA TAB', '0', '1', ' Ana', '2013-12-06 17:35:22', null, null, '0', null, '10 BIJI', '75000', '9000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85245', '', 'MIKI PRUNE EXTRACT', '0', '1', ' Ana', '2013-12-08 18:26:39', null, null, '0', null, '', '400000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85246', '', 'GLUMIN XR 500 @3LBR', '0', '1', ' Ana', '2013-12-09 15:40:59', null, null, '0', null, '10 BIJI', '60000', '20000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85247', '', 'FIRDAUS OIL', '0', '1', ' Merry', '2013-12-10 13:48:39', null, null, '0', null, '', '45000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85248', '', 'NU-FIT SYP', '0', '1', ' Ana', '2013-12-11 13:33:57', null, null, '0', null, '', '57500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85249', '', 'ESTER C KIDS TAB', '0', '1', ' Merry', '2013-12-12 12:06:29', null, null, '0', null, '', '26000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85250', '', 'DEXYCOL 500MG', '0', '1', ' Merry', '2013-12-12 16:19:54', null, null, '0', null, '10 BIJI', '65000', '7500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85251', '', 'PROVERA 10 MG', '0', '1', ' Ana', '2013-12-14 13:04:49', ' Sri', '2014-11-22 11:30:54', '0', null, '10 BIJI', '345000', '115000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85252', '', 'TARIVID 400MG', '0', '1', ' Ana', '2013-12-14 13:26:00', null, null, '0', null, '10 BIJI', '405000', '135000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85253', '', 'TARIVID 200MG', '0', '1', ' Ana', '2013-12-14 13:26:36', null, null, '0', null, '10 BIJI', '300000', '100000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85254', '', 'NEO RHEUMACYL NECK&SHOULDER', '0', '1', ' Ana', '2013-12-14 14:34:57', null, null, '0', null, '', '28500', '28500', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85255', '', 'MBM SOFT GEL', '0', '1', ' Ana', '2013-12-16 16:06:26', null, null, '0', null, '', '190000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85256', '', 'EXTILO 40 BIJI', '0', '1', ' Ana', '2013-12-16 16:08:35', ' Ana', '2013-12-16 16:08:56', '0', null, '10 BIJI', '85000', '22500', 'BOX', 'LBR', '4', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85257', '', 'OKM 1 BLISTER 10 BIJI', '0', '1', ' Ana', '2013-12-16 16:09:42', null, null, '0', null, '', '42500', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85258', '', 'OKM 3 BLISTER 10 BIJI', '0', '1', ' Ana', '2013-12-16 16:10:45', null, null, '0', null, '10 BIJI', '127500', '42500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85259', '', 'MAXGIVER 1 BLISTER 10 BIJI', '0', '1', ' Ana', '2013-12-16 16:12:07', null, null, '0', null, '', '45000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85260', '', 'MAXGIVER 3 BLISTER 10 B IJI', '0', '1', ' Ana', '2013-12-16 16:12:53', null, null, '0', null, '10 BIJI', '135000', '45000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85261', '', 'VITAGEN 1 BLISTER 10 BIJI', '0', '1', ' Ana', '2013-12-16 16:13:52', null, null, '0', null, '', '52000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85262', '', 'VITAGEN 3 BLISTER 10 BIJI', '0', '1', ' Ana', '2013-12-16 16:14:53', null, null, '0', null, '10 BIJI', '129000', '43000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85263', '', '3S 1 BLISTER 10 BIJI', '0', '1', ' Ana', '2013-12-16 16:18:15', null, null, '0', null, '', '42500', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85264', '', '3S 3 BLISTER 10 BIJI]', '0', '1', ' Ana', '2013-12-16 16:20:12', null, null, '0', null, '10 BIJI', '127500', '42500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85265', '', 'PRATROPIL 800 MG', '0', '1', ' Merry', '2013-12-16 17:07:42', null, null, '0', null, '10 BIJI', '210000', '35000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85266', '', 'FITBON TAB', '0', '1', ' Ana', '2013-12-17 16:04:54', null, null, '0', null, '6 BIJI', '70000', '8500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85267', '', 'MECOBEX', '0', '1', ' Ana', '2013-12-17 16:55:58', null, null, '0', null, '10BIJI', '75000', '8000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85268', '', 'GALTAREN TAB', '0', '1', ' Merry', '2013-12-19 12:15:24', null, null, '0', null, '10 BIJI', '36000', '12000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85269', '', 'HYSTOLAN TAB', '0', '1', ' Ana', '2013-12-19 16:13:36', null, null, '0', null, '10 BIJI', '225000', '47500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85270', '', 'PRAXILENE 200MG', '0', '1', ' Ana', '2013-12-19 16:16:48', null, null, '0', null, '10 BIJI', '540000', '55000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85271', '', 'VIGAMOX ED', '0', '1', ' Ana', '2013-12-19 17:03:49', null, null, '0', null, '', '130000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85272', '', 'COLLAGEN M-PLAN', '0', '1', ' Merry', '2013-12-21 16:29:03', null, null, '0', null, '', '1200000', '42500', 'BOX', 'SCH', '30', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85273', '', 'BYE BYE FEVER ANAK', '0', '1', ' Ana', '2013-12-23 13:47:46', null, null, '0', null, '', '50000', '10000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85274', '', 'FERTIN TAB', '0', '1', ' Merry', '2013-12-24 13:27:01', ' Merry', '2014-05-29 12:12:20', '0', null, '', '120000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85275', '', 'GLUMIN 500MG', '0', '1', ' Merry', '2013-12-24 16:31:05', null, null, '0', null, '10 BIJI', '65000', '13000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85276', '', 'CRAVIT 250 MG', '0', '1', ' Merry', '2013-12-29 14:51:47', null, null, '0', null, '', '255000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85277', '', 'LOPID 900MG', '0', '1', ' Merry', '2013-12-30 12:10:43', null, null, '0', null, '10 BIJI', '570000', '190000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85278', '', 'LENAL ACE', '0', '1', ' Merry', '2013-12-30 12:13:52', null, null, '0', null, '10 BIJI', '150000', '16000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85279', '', 'ASPAR', '0', '1', ' Merry', '2013-12-30 12:14:18', null, null, '0', null, '10 BIJI', '175000', '17000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85280', '', 'MYCOSPOR KECIL 5 GR', '0', '1', ' Merry', '2013-12-30 17:01:08', null, null, '0', null, '', '40000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85281', '', 'CRAVIT 250 MG', '0', '1', ' Merry', '2013-12-30 18:16:05', null, null, '0', null, '', '270000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85282', '', 'NIPE DROP', '0', '1', ' Merry', '2013-12-30 18:20:08', ' Merry', '2014-01-02 15:23:54', '0', null, '', '60000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85283', '', 'ETAFLUSIN SYP', '0', '1', ' Merry', '2014-01-02 15:24:15', null, null, '0', null, '', '10000', '10000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85284', '', 'JOINTFIT ROLLER HIJAU', '0', '1', ' Merry', '2014-01-02 17:19:10', null, null, '0', null, '', '67500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85285', '', 'BINOTAL 1000MG', '0', '1', ' Merry', '2014-01-03 16:49:38', null, null, '0', null, '5 BIJI', '340000', '37500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85286', '', 'ALLERIN SYP120ML', '0', '1', ' Merry', '2014-01-04 17:21:06', ' Merry', '2014-06-13 10:57:04', '0', null, '', '20000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85287', '', 'HISTRINE 10 MG NON FT', '0', '1', ' Merry', '2014-01-06 12:39:20', null, null, '0', null, '10 BIJI', '150000', '50000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85288', '', 'VITAMIN B-1', '0', '1', ' Ana', '2014-01-06 15:46:03', null, null, '0', null, 'BUTIR', '3500', '100', 'BTL', 'BTL', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85289', '', 'VITAMIN  B-COMPLEX', '0', '1', ' Ana', '2014-01-06 15:47:09', null, null, '0', null, 'BUTIR', '30000', '100', 'BTL', 'BTL', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85290', '', 'ANDALAN PIL KB TAB', '0', '1', ' Ana', '2014-01-06 15:49:20', null, null, '0', null, '28 BIJI', '9000', '9000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85291', '', 'GLUCOSAMINE MPL', '0', '1', ' Sri', '2014-01-06 18:58:26', ' Sri', '2014-01-06 19:19:10', '0', null, '10 BIJI', '150000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85300', '', 'TOPLEXIL 60 ML', '0', '1', ' Sri', '2014-01-06 19:18:39', ' Sri', '2014-01-06 19:18:46', '0', null, '', '41000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85301', '', 'TROSYD KECIL 10 GR', '0', '1', ' Sri', '2014-01-07 12:29:12', null, null, '0', null, '', '57500', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85302', '', 'COIRVEBAL 300/12.5', '0', '1', ' Sri', '2014-01-07 14:02:35', null, null, '0', null, '14 BIJI', '240000', '120000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85303', '', 'COIRVEBAL 150 MG', '0', '1', ' Sri', '2014-01-07 14:03:04', null, null, '0', null, '14 BIJI', '180000', '90000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85304', '', 'FLAGYL SUPPO 1MG', '0', '1', ' Sri', '2014-01-07 18:41:25', null, null, '0', null, '', '230000', '23000', 'BOX', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85305', '', 'MADU EKA KECIL', '0', '1', ' Merry', '2014-01-08 10:41:07', null, null, '0', null, '', '90000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85306', '', 'MADU EKA BESAR', '0', '1', ' Merry', '2014-01-08 10:41:25', null, null, '0', null, '', '225000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85307', '', 'ELZAR300MG', '0', '1', ' Merry', '2014-01-08 12:40:36', null, null, '0', null, '10 BIJI', '322500', '107500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85308', '', 'INCLOVIR 500MG', '0', '1', ' Merry', '2014-01-08 14:54:35', null, null, '0', null, '10 BIJI', '705000', '102500', 'BOX', 'LBR', '7', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85309', '', 'VILIRON', '0', '1', ' Merry', '2014-01-08 14:54:49', null, null, '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85310', '', 'ELSAZYM ANAK', '0', '1', ' Merry', '2014-01-08 14:55:06', null, null, '0', null, '', '95000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85311', '', 'CEPTIK 200MG', '0', '1', ' Merry', '2014-01-08 17:31:54', ' Ana', '2014-05-20 17:43:56', '0', null, '', '210000', '22000', 'LBR', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85312', '', 'OBH HERBAL BESAR', '0', '1', ' Merry', '2014-01-08 17:49:07', null, null, '0', null, '', '13000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85313', '', 'OSTOVEL', '0', '1', ' Merry', '2014-01-09 11:21:40', null, null, '0', null, '', '215000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85314', '', 'THERMOMETER SAFETY', '0', '1', ' Merry', '2014-01-09 13:09:41', null, null, '0', null, '', '10000', '0', 'BIJI', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85315', '', 'APPETON 60+ 450G VANILLA', '0', '1', ' Merry', '2014-01-10 14:31:23', null, null, '0', null, '', '350000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85916', '', 'AXANTHIN 4MG', '0', '1', ' Merry', '2014-01-10 18:09:09', null, null, '0', null, '', '110000', '37500', 'BOX', '', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85917', '', 'MELOXIN 7,5MG', '0', '1', ' Merry', '2014-01-11 16:23:32', ' Merry', '2014-05-24 11:26:50', '0', null, '', '47500', '8000', 'LBR', 'BIJI', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85918', '', 'BUNGA PUTIH SEDANG', '0', '1', ' Merry', '2014-01-13 13:30:17', null, null, '0', null, '', '20000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85519', '', 'GENSIA 10 MG', '0', '1', ' Merry', '2014-01-13 14:57:45', null, null, '0', null, '10 BIJI', '255000', '97500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85919', '', 'VICK SYP KECIL 27ML', '0', '1', ' Ana', '2014-01-13 17:51:02', null, null, '0', null, '', '6500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85920', '', 'CARDIVASK 10MG', '0', '1', ' Ana', '2014-01-14 15:18:34', null, null, '0', null, '', '85000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85921', '', 'GROW UP COWOK', '0', '1', ' Merry', '2014-01-15 18:01:44', null, null, '0', null, '', '58000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85922', '', 'GROW UP CEWEK', '0', '1', ' Merry', '2014-01-15 18:02:17', null, null, '0', null, '', '58000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85923', '', 'TUNG HAI CAPSUL', '0', '1', ' Merry', '2014-01-15 18:02:53', ' Sri', '2014-11-14 13:54:16', '0', null, '', '30000', '0', 'BKS', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85324', '', 'HUO XIANG PIEN TZE HUANG', '0', '1', ' Ana', '2014-01-16 10:55:43', null, null, '0', null, '', '22000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85924', '', 'CENDO ASTENOF', '0', '1', ' Ana', '2014-01-16 14:39:05', null, null, '0', null, '', '18000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85925', '', 'OTTOPRIM TAB', '0', '1', ' Merry', '2014-01-17 16:50:45', null, null, '0', null, '10 BIJI', '35000', '5000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85926', '', 'CHAMP EMULSION', '0', '1', ' Merry', '2014-01-17 17:52:05', null, null, '0', null, '', '35000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85927', '', 'INH 100', '0', '1', ' Merry', '2014-01-18 09:48:16', null, null, '0', null, '', '100', '0', 'BIJI', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85928', '', 'FENICOL 0,25 %', '0', '1', ' Merry', '2014-01-18 14:27:55', null, null, '0', null, '', '25000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85929', '', 'MOLESCO 10MG', '0', '1', ' Ana', '2014-01-20 14:02:51', null, null, '0', null, '10 BIJI', '475000', '95000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85930', '', 'KAPAS 100GRAM', '0', '1', ' Ana', '2014-01-21 11:48:00', null, null, '0', null, '', '10000', '0', 'SATUAN', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85931', '', 'DETTOL 100ML', '0', '1', ' Ana', '2014-01-21 14:48:54', null, null, '0', null, '', '13000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85332', '', 'DETTOL 500ML', '0', '1', ' Ana', '2014-01-21 14:49:09', null, null, '0', null, '', '50000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85933', '', 'MINYAK SERE 60ML', '0', '1', ' Merry', '2014-01-23 12:50:35', null, null, '0', null, '', '7500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85934', '', 'KAPAS 1000GRAM', '0', '1', ' Ana', '2014-01-23 15:42:45', null, null, '0', null, '', '60000', '0', 'SATUAN', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85935', '', 'LAPIBAL 250MG', '0', '1', ' Ana', '2014-01-23 16:51:48', null, null, '0', null, '10 BIJI', '135000', '14000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85936', '', 'SEVEN SEA SYP', '0', '1', ' Ana', '2014-01-23 18:05:34', null, null, '0', null, '', '37000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85937', '', 'NATURE HEALTH OMEGA 3', '0', '1', ' Ana', '2014-01-24 17:03:11', null, null, '0', null, '', '380000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85938', '', 'MINYAK GANDAPURA', '0', '1', ' Ana', '2014-01-24 17:58:08', null, null, '0', null, '', '12000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85939', '', 'MELATONIN NATURE HEALTH', '0', '1', ' Ana', '2014-01-25 11:40:19', ' Merry', '2014-02-24 13:27:55', '0', null, '', '350000', '6500', 'BTL', 'BIJI', '60', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85940', '', 'ROMILAR SYP', '0', '1', ' Ana', '2014-01-25 13:08:59', null, null, '0', null, '', '38000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85941', '', 'REFAGAN', '0', '1', ' Ana', '2014-01-25 13:09:13', null, null, '0', null, '', '3000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85942', '', 'HEXADOL SYRUP 100ML', '0', '1', ' Sri', '2014-01-26 15:30:25', null, null, '0', null, '', '17500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85943', '', 'SPIRIVA HANDIHALER', '0', '1', ' Merry', '2014-01-27 14:21:13', null, null, '0', null, '', '205000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85944', '', 'REGRESOR', '0', '1', ' Merry', '2014-01-27 16:46:00', ' Ana', '2014-05-22 16:26:57', '0', null, '6 BIJI', '75000', '15000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85945', '', 'LFX', '0', '1', ' Merry', '2014-01-28 09:50:12', null, null, '0', null, '', '69000', '69000', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85946', '', 'FARGOXIN 0.25', '0', '1', ' Sri', '2014-01-29 14:21:20', null, null, '0', null, '10BIJI', '40000', '4500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85947', '', 'REUCID 300MG', '0', '1', ' Ana', '2014-02-01 15:55:24', null, null, '0', null, '10 BIJI', '60000', '13000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85948', '', 'BALSEM CAP LANG KECIL', '0', '1', ' Merry', '2014-02-03 11:27:14', null, null, '0', null, '', '37500', '4000', 'LSN', 'BIJI', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85949', '', 'VISIONACE', '0', '1', ' Merry', '2014-02-03 14:06:53', null, null, '0', null, '6 BIJI', '170000', '35000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85950', '', 'VISANNE 2MG', '0', '1', ' Merry', '2014-02-03 14:07:36', null, null, '0', null, '14 BIJI', '380000', '190000', 'BOX', 'LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85951', '', 'JOIN FIT', '0', '1', ' Merry', '2014-02-03 14:23:03', null, null, '0', null, '', '65000', '65000', 'ROL', 'ROL', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85952', '', 'OSSORAL 200  MG', '0', '1', ' Merry', '2014-02-03 15:43:27', null, null, '0', null, '10  BIJI', '90000', '15000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85953', '', 'VAGISTIN OVULA', '0', '1', ' Ana', '2014-02-04 15:59:41', ' Merry', '2014-05-25 17:05:38', '0', null, '', '75000', '15000', 'LBR', 'BIJI', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85954', '', 'SCANIDINE TAB', '0', '1', ' Sri', '2014-02-04 16:48:16', null, null, '0', null, '10 BIJI', '80000', '10000', 'BOX', 'LBR', '0', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85955', '', 'BIOCREAM', '0', '1', ' Sri', '2014-02-04 17:43:51', null, null, '0', null, '', '21000', '21000', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85956', '', 'BETADINE SABUN 100ML', '0', '1', ' Merry', '2014-02-06 12:58:23', null, null, '0', null, '', '28000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85957', '', 'BETADINE SABUN 60ML', '0', '1', ' Merry', '2014-02-06 12:58:55', null, null, '0', null, '', '20000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85958', '', 'OSTEOCAL TAB', '0', '1', ' Sri', '2014-02-06 16:37:26', null, null, '0', null, '6BIJI', '75000', '15000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85959', '', 'FIBROLES', '0', '1', ' Ana', '2014-02-07 11:31:06', null, null, '0', null, '10 BIJI', '125000', '42000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85961', '', 'FLOXA MD', '0', '1', ' Ana', '2014-02-07 16:04:27', null, null, '0', null, '', '30000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85962', '', 'METICOL', '0', '1', ' Ana', '2014-02-07 16:43:23', null, null, '0', null, '10 BIJI', '66000', '11000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85964', '', 'OTSU 500ML', '0', '1', ' Ana', '2014-02-08 16:12:43', ' Ana', '2014-02-08 16:14:31', '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85965', '', 'ISORBID 5 MG', '0', '1', ' Merry', '2014-02-10 15:01:58', null, null, '0', null, '10 BIJI', '65000', '8000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85966', '', 'FLUOCORT CREAM 5G', '0', '1', ' Merry', '2014-02-10 15:40:18', null, null, '0', null, '', '20000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85967', '', 'SPIRIVA 18 MICROGRAM @10CAP', '0', '1', ' Merry', '2014-02-10 15:42:22', null, null, '0', null, '', '205000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85968', '', 'VOMITAS FDT TAB', '0', '1', ' Merry', '2014-02-10 17:49:49', null, null, '0', null, '10 BIJI', '200000', '40000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85969', '', 'NOSIB', '0', '1', ' Ana', '2014-02-11 10:17:57', null, null, '0', null, '', '5000', '5000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85970', '', 'MOXAM 15MG TAB', '0', '1', ' Ana', '2014-02-11 13:18:30', null, null, '0', null, '10 BIJI', '262500', '87500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85971', '', 'NEO HORMOVITON', '0', '1', ' Ana', '2014-02-11 14:30:00', null, null, '0', null, '5 BIJI', '52500', '5500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85972', '', 'REBOZET 50 MG', '0', '1', ' Merry', '2014-02-11 17:37:58', null, null, '0', null, '', '12880000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85973', '', 'EZERRA 25GR', '0', '1', ' Ana', '2014-02-12 12:45:08', null, null, '0', null, '', '85000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85974', '', 'FORBONE FORTE', '0', '1', ' Ana', '2014-02-12 12:45:28', ' Merry', '2014-04-15 15:28:40', '0', null, '6 BIJI', '175000', '38000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85975', '', 'SALMON OMEGA 3 6 9', '0', '1', ' Ana', '2014-02-12 13:14:45', null, null, '0', null, '', '265000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85976', '', 'ESVIT C 250MG @30TAB', '0', '1', ' Ana', '2014-02-12 13:15:20', null, null, '0', null, '', '27500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85977', '', 'MYCORAL CREAM 5G', '0', '1', ' Ana', '2014-02-12 16:07:19', null, null, '0', null, '', '13000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85978', '', 'RIMACTANE SYRUP 50ML', '0', '1', ' Ana', '2014-02-12 18:48:47', null, null, '0', null, '', '60000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85979', '', 'BIOSTRUM 100ML', '0', '1', ' Merry', '2014-02-13 14:42:02', null, null, '0', null, '', '43000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85980', '', 'TAWON DD', '0', '1', ' Merry', '2014-02-13 16:39:12', null, null, '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85981', '', 'MAINTATE 2.5MG @3BLISTER', '0', '1', ' Merry', '2014-02-13 17:18:17', null, null, '0', null, '10 BIJI', '150000', '50000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85982', '', 'P PRED', '0', '1', ' Merry', '2014-02-13 17:50:05', null, null, '0', null, '', '42500', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85983', '', 'SUVESCO 40MG', '0', '1', ' Ana', '2014-02-14 18:18:55', null, null, '0', null, '10 BIJI', '320000', '160000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85984', '', 'MOLESCO 5MG', '0', '1', ' Ana', '2014-02-14 18:19:50', null, null, '0', null, '10 BIJI', '275000', '55000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85985', '', 'ELIDEL', '0', '1', ' Merry', '2014-02-14 18:23:51', null, null, '0', null, '', '175000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85987', '', 'SEA QUILL OMEGA 3', '0', '1', ' Merry', '2014-02-17 15:29:00', null, null, '0', null, '', '215000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85988', '', 'SEA QUILL JOINT MOVER', '0', '1', ' Merry', '2014-02-17 15:29:24', null, null, '0', null, '', '405000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85989', '', 'REBOZET 25MG', '0', '1', ' Sri', '2014-02-17 17:45:36', null, null, '0', null, '', '6850000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85990', '', 'APPETON LYSINE 120ML', '0', '1', ' Merry', '2014-02-18 12:10:16', null, null, '0', null, '', '175000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85991', '', 'TOPAMAX 25MG', '0', '1', ' Merry', '2014-02-18 14:46:21', null, null, '0', null, '10 BIJI', '360000', '60000', 'BOX', 'LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85992', '', 'BIOPREXIUM 10MG', '0', '1', ' Merry', '2014-02-18 14:56:02', null, null, '0', null, '', '420000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85993', '', 'CHLORAMFECORT TANPA H', '0', '1', ' Merry', '2014-02-18 18:19:52', null, null, '0', null, '', '13000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85994', '', 'GOLDEN FLAXSEED BUBUK', '0', '1', ' Ana', '2014-02-19 13:22:26', null, null, '0', null, '', '200000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85995', '', 'MELOXICAM 15MG @3BLISTER', '0', '1', ' Ana', '2014-02-19 13:28:59', null, null, '0', null, '10 BIJI', '27000', '9000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85996', '', 'OPILAX SYRUP 120ML', '0', '1', ' Ana', '2014-02-19 14:47:51', null, null, '0', null, '', '54000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85997', '', 'VISANCORT CREAM', '0', '1', ' Ana', '2014-02-19 14:50:44', null, null, '0', null, '', '9000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85998', '', 'SPIRONOLACTONE 25MG', '0', '1', ' Ana', '2014-02-20 15:25:20', null, null, '0', null, '10 BIJI', '45000', '6000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('85999', '', 'LESIFAR-300MG', '0', '1', ' Sri', '2014-02-20 18:49:34', null, null, '0', null, '10BIJI', '330000', '34000', 'BOX', '', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86000', '', 'XAMO PRO', '0', '1', ' Ana', '2014-02-21 15:57:12', null, null, '0', null, '', '95000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86001', '', 'LOCOID LOTION', '0', '1', ' Ana', '2014-02-21 17:11:41', null, null, '0', null, '', '110000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86002', '', 'HYDROCORTISONE GENERIK', '0', '1', ' Ana', '2014-02-22 13:43:36', null, null, '0', null, '', '4500', '4500', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86003', '', 'NOGESTAT TAB', '0', '1', ' Ana', '2014-02-22 14:30:17', null, null, '0', null, '', '22000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86004', '', 'FRUIT DEWASA @30CAP', '0', '1', ' Ana', '2014-02-22 14:32:19', null, null, '0', null, '', '117500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86005', '', 'VEGEBLEND DEWASA @30CAP', '0', '1', ' Ana', '2014-02-22 14:32:57', null, null, '0', null, '', '130000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86006', '', 'VEGEBLEND KIDS @30CAP', '0', '1', ' Ana', '2014-02-22 14:33:34', null, null, '0', null, '', '105000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86007', '', 'OZEN DROP', '0', '1', ' Merry', '2014-02-25 14:17:50', null, null, '0', null, '', '65000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86008', '', 'EDOTIN CAP', '0', '1', ' Ana', '2014-02-25 18:42:35', null, null, '0', null, '10BIJI', '80000', '40000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86009', '', 'MEDITHIN TAB', '0', '1', ' Merry', '2014-02-26 14:21:14', null, null, '0', null, '6 BIJI', '175000', '35000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86010', '', 'CALCIT 0.25MG', '0', '1', ' Merry', '2014-02-26 15:47:55', null, null, '0', null, '', '195000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86011', '', 'LO HAN KUO ZE KE LU', '0', '1', ' Merry', '2014-02-26 17:05:50', null, null, '0', null, '', '20000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86012', '', 'YOSENOB', '0', '1', ' Merry', '2014-02-27 14:37:04', null, null, '0', null, '10 BIJI', '425000', '85000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86013', '', 'OCULENTA GEL', '0', '1', ' Merry', '2014-02-27 18:11:21', null, null, '0', null, '', '65000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86014', '', 'GENTAMYCIN GEL', '0', '1', ' Merry', '2014-02-27 18:11:59', null, null, '0', null, '', '32000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86015', '', 'CENDO XITROL GEL', '0', '1', ' Merry', '2014-02-27 18:12:26', null, null, '0', null, '', '37500', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86016', '', 'ISOPRINOSIN SYP', '0', '1', ' Sri', '2014-03-01 17:45:07', null, null, '0', null, '', '105000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86017', '', 'ESVAT 20MG', '0', '1', ' Ana', '2014-03-03 12:21:11', null, null, '0', null, '6 BIJI', '70000', '14000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86018', '', 'FEMALE @30TAB', '0', '1', ' Ana', '2014-03-03 13:28:34', null, null, '0', null, '', '205000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86019', '', 'DIGEZYM', '0', '1', ' Ana', '2014-03-03 15:38:39', ' Ana', '2014-03-03 15:51:32', '0', null, '10 BIJI', '105000', '24000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86020', '', 'COLDYCIN', '0', '1', ' Merry', '2014-03-04 13:47:06', null, null, '0', null, '', '55000', '27500', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86021', '', 'PERMEN TOLAK ANGIN', '0', '1', ' Merry', '2014-03-06 12:27:53', ' Merry', '2014-10-06 11:47:04', '0', null, '5 BIJI', '40000', '2000', 'BOX', 'BUNGKUS', '20', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86022', '', 'ACNOL GEL 10GR', '0', '1', ' Merry', '2014-03-06 16:42:16', null, null, '0', null, '', '15000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86023', '', 'PANADOL KOMPRES DEMAM', '0', '1', ' Merry', '2014-03-10 14:53:13', null, null, '0', null, '', '15000', '0', 'BKS', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86024', '', 'KETRICIN TAB', '0', '1', ' Sri', '2014-03-10 17:29:34', null, null, '0', null, '10 BIJI', '285000', '32500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86025', '', 'DETTOL CAIR 750ML', '0', '1', ' Merry', '2014-03-11 11:43:34', null, null, '0', null, '', '67500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86026', '', 'OLMETEC 40 PLUS', '0', '1', ' Ana', '2014-03-11 15:41:34', null, null, '0', null, '10 BIJI', '465000', '155000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86027', '', 'MERIT', '0', '1', ' Merry', '2014-03-12 13:18:13', null, null, '0', null, '30 PIL', '113000', '12000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86028', '', 'CALDANA FLEX', '0', '1', ' Merry', '2014-03-12 15:23:27', null, null, '0', null, '6 BIJI', '87500', '18500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86029', '', 'JARUM UNIFINE PENTIPS', '0', '1', ' Merry', '2014-03-12 15:38:10', null, null, '0', null, '1 BIJI', '260000', '3000', 'BOX', 'BIJI', '100', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86030', '', 'DEXYCLAVE FORTE', '0', '1', ' Merry', '2014-03-13 15:58:58', null, null, '0', null, '6 BIJI', '250000', '50000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86031', '', 'BRAND GINSENG', '0', '1', ' Merry', '2014-03-14 11:06:11', null, null, '0', null, '', '105000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86032', '', 'BRAND CORDYCEP', '0', '1', ' Merry', '2014-03-14 11:06:29', null, null, '0', null, '', '105000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86033', '', 'BREATHY NASAL', '0', '1', ' Merry', '2014-03-14 12:56:49', null, null, '0', null, '', '20000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86034', '', 'KALMICETINE SYRUP 60ML', '0', '1', ' Merry', '2014-03-14 13:12:07', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86035', '', 'PRONALGES 50 MG', '0', '1', ' Merry', '2014-03-14 15:42:05', null, null, '0', null, '', '33000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86036', '', 'TIRIZ DROP ', '0', '1', ' Merry', '2014-03-14 18:12:30', ' Merry', '2014-03-14 18:12:51', '0', null, '', '52500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86039', '', 'DIFLAM 50MG ', '0', '1', ' Ana', '2014-03-15 12:46:04', null, null, '0', null, '', '65000', '15000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86040', '', 'ISORBID 10MG PHAROS', '0', '1', ' Ana', '2014-03-15 14:06:26', null, null, '0', null, '10 BIJI', '95000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86041', '', 'DOGMATIL FORTE TAB', '0', '1', ' Ana', '2014-03-15 15:37:06', null, null, '0', null, '10 BIJI', '160000', '80000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86042', '', 'TAPROS INJEKSI 3,75MG', '0', '1', ' Ana', '2014-03-20 13:10:23', null, null, '0', null, '', '1650000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86043', '', 'ERLAMICETIN TETES TELINGA', '0', '1', ' Ana', '2014-03-20 15:53:02', ' Ana', '2014-03-20 15:53:35', '0', null, '', '7000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86044', '', ' GOFLEX TAB', '0', '1', ' Ana', '2014-03-20 16:02:57', null, null, '0', null, '6 BIJI', '212500', '42500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86045', '', 'GARCIPRO 55 @60CAP', '0', '1', ' Merry', '2014-03-21 13:22:48', ' Merry', '2014-03-21 13:24:04', '0', null, '', '75000', '65000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86046', '', 'X NIMAXS @60CAP', '0', '1', ' Merry', '2014-03-21 13:23:30', null, null, '0', null, '', '75000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86047', '', 'PROPEPSA SYRUP 100ML', '0', '1', ' Merry', '2014-03-21 16:12:02', null, null, '0', null, '', '37500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86048', '', 'COMBIFLU TAB', '0', '1', ' Merry', '2014-03-21 17:45:22', null, null, '0', null, '10 BIJI', '75000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86049', '', 'CALSOURCE FORTE', '0', '1', ' Sri', '2014-03-21 18:33:58', null, null, '0', null, '', '57500', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86050', '', 'POLIDENT TABLET CUCI', '0', '1', ' Ana', '2014-03-22 11:53:34', ' Ana', '2014-09-06 14:02:48', '0', null, '', '22500', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86051', '', 'WATERMELON SEMPROT', '0', '1', ' Ana', '2014-03-25 15:45:06', null, null, '0', null, '', '19000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86052', '', 'ACCUCEK PERFORMA', '0', '1', ' Merry', '2014-03-26 13:31:12', null, null, '0', null, '', '310000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86053', '', 'SMECTA @30SACHET', '0', '1', ' Ana', '2014-03-26 16:54:24', null, null, '0', null, '4000', '120000', '4000', 'BOX', 'SACHET', '30', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86054', '', 'ROHTO TEARS 10ML', '0', '1', ' Ana', '2014-03-26 16:55:11', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86055', '', 'DEFONIHR', '0', '1', ' Ana', '2014-03-26 17:16:59', null, null, '0', null, '10 BIJI', '100000', '20000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86056', '', 'DEFONIHR SYP', '0', '1', ' Merry', '2014-03-26 17:19:26', null, null, '0', null, '', '30000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86057', '', 'ZAMEL DROP', '0', '1', ' Merry', '2014-03-26 17:21:32', null, null, '0', null, '', '36000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86058', '', 'CPG NON PROG 75 MG', '0', '1', ' Merry', '2014-03-26 18:14:04', null, null, '0', null, '10 BIJI', '450000', '150000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86059', '', 'LIANBAI TAB@100', '0', '1', ' Ana', '2014-03-27 12:29:36', null, null, '0', null, '', '30000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86060', '', 'AROMA TERAPI KECIL', '0', '1', ' Ana', '2014-03-27 13:17:37', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86061', '', 'TANAPRES 10 MG PRO', '0', '1', ' Merry', '2014-03-28 11:33:23', ' Merry', '2014-11-28 10:32:49', '0', null, '10 BIJI', '750000', '75000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86062', '', 'TERRA-CORTRIL SALEP MATA', '0', '1', ' Ana', '2014-03-28 17:37:06', null, null, '0', null, '', '20000', '20000', 'TUBE', 'TUBE', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86063', '', 'GENOCLOM 50MG ', '0', '1', ' Sri', '2014-03-29 11:32:20', null, null, '0', null, '10BIJI', '220000', '110000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86064', '', 'ULTRASILIN', '0', '1', ' Sri', '2014-04-01 15:39:21', null, null, '0', null, '', '7000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86065', '', 'BROCHIFAR', '0', '1', ' Merry', '2014-04-03 09:23:44', null, null, '0', null, '10 BIJI', '50000', '7500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86066', '', 'ANAK SUMANG', '0', '1', ' Merry', '2014-04-04 11:51:09', null, null, '0', null, '', '750', '0', 'SAC', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86067', '', 'SEA QUILL Z3', '0', '1', ' Merry', '2014-04-04 12:18:44', null, null, '0', null, '', '410000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86068', '', 'FIBRANASE', '0', '1', ' Merry', '2014-04-04 18:41:47', null, null, '0', null, '10 BIJI', '650000', '130000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86069', '', 'MYOVITON', '0', '1', ' Merry', '2014-04-05 15:32:31', null, null, '0', null, '10 BIJI', '220000', '23000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86070', '', 'MEDI-KLIN TR GEL', '0', '1', ' Merry', '2014-04-05 15:33:15', null, null, '0', null, '', '40000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86071', '', 'RHINOS SYP ', '0', '1', ' Merry', '2014-04-05 18:16:29', ' Merry', '2014-05-29 12:00:10', '0', null, '', '37500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86072', '', 'KOLKATRIOL FORTE', '0', '1', ' Sri', '2014-04-06 16:35:59', null, null, '0', null, '', '300000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86073', '', 'DEGIROL @20TAB', '0', '1', ' Merry', '2014-04-07 17:49:53', null, null, '0', null, '', '15000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86074', '', 'ALOVELL 70MG', '0', '1', ' Merry', '2014-04-11 11:41:08', ' Sri', '2014-12-11 18:55:18', '0', null, '', '405000', '405000', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86075', '', 'CITAZ 100MG', '0', '1', ' Sri', '2014-04-11 18:22:44', null, null, '0', null, '', '105000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86076', '', 'AMINO 2222 ISI 320TAB', '0', '1', ' Merry', '2014-04-14 14:51:15', ' Merry', '2014-04-14 14:51:53', '0', null, '', '255000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86077', '', 'AMINO 2222 ISI 300 CAP', '0', '1', ' Merry', '2014-04-14 14:51:41', null, null, '0', null, '', '410000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86079', '', 'COUNTERPAIN 15GR', '0', '1', ' Merry', '2014-04-19 09:55:27', null, null, '0', null, '', '21000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86080', '', 'SUVESCO 10 MG', '0', '1', ' Ana', '2014-04-19 12:28:35', null, null, '0', null, '10 BIJI', '130000', '65000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86081', '', 'ENATUCOR 20 MG', '0', '1', ' Merry', '2014-04-23 16:55:32', null, null, '0', null, '10 BIJI', '600000', '200000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86082', '', 'MOTILIUM SYRUP', '0', '1', ' Merry', '2014-04-24 15:06:44', null, null, '0', null, '', '70000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86083', '', 'NATUR E BODY KRIM', '0', '1', ' Merry', '2014-04-24 16:34:31', ' Merry', '2014-04-24 16:35:38', '0', null, '', '11000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86084', '', 'ALLERIN 60 ML KECIL', '0', '1', ' Merry', '2014-04-24 18:10:12', ' Merry', '2014-06-13 10:57:24', '0', null, '', '14000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86085', '', 'PIROFEL GEL', '0', '1', ' Merry', '2014-04-25 18:04:24', null, null, '0', null, '', '20000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86086', '', 'RECANSA 10MG', '0', '1', ' Merry', '2014-04-25 18:11:29', null, null, '0', null, '10BIJI', '345000', '115000', 'DUS', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86087', '', 'RECANSA 20MG', '0', '1', ' Merry', '2014-04-25 18:12:40', null, null, '0', null, '10BIJI', '665000', '225000', 'DUS', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86088', '', 'CALSIUM 600 CIRCLE', '0', '1', ' Sri', '2014-04-26 11:49:10', null, null, '0', null, '', '87500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86089', '', 'ZINC 60 KAP', '0', '1', ' Ana', '2014-04-26 18:25:03', ' Ana', '2014-04-27 16:23:54', '0', null, '', '182000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86090', '', 'LEVOCIN TETES MATA', '0', '1', ' Ana', '2014-04-27 16:24:25', null, null, '0', null, '', '70000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86091', '', 'OPTIUM FREESTYLE', '0', '1', ' Merry', '2014-04-28 11:00:59', null, null, '0', null, '', '275000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86092', '', 'BEE PROPOLIS 30TAB', '0', '1', ' Merry', '2014-04-28 13:44:58', null, null, '0', null, '', '170000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86093', '', 'BENACOL EKSPEKTORAN', '0', '1', ' Ana', '2014-04-28 15:59:22', null, null, '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86094', '', 'FERITRIN FC TAB', '0', '1', ' Merry', '2014-04-29 16:55:28', null, null, '0', null, '6 BIJI', '75000', '15000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86095', '', 'PROMENO', '0', '1', ' Merry', '2014-04-29 17:33:04', null, null, '0', null, '10 BIJI', '120000', '40000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86096', '', 'GENOINT TETES MATA', '0', '1', ' Merry', '2014-04-30 15:11:17', ' Merry', '2014-05-29 11:59:36', '0', null, '', '7500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86097', '', 'DIPHTEN 50MG', '0', '1', ' Merry', '2014-04-30 16:02:45', null, null, '0', null, '10 BIJI', '375000', '125000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86098', '', 'MINYAK SERE 100ML', '0', '1', ' Sri', '2014-05-01 12:49:07', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86099', '', 'GLUCOLIN', '0', '1', ' Sri', '2014-05-02 14:44:15', null, null, '0', null, '', '25000', '0', 'KLG', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86100', '', 'ELZAR 150MG', '0', '1', ' Laras', '2014-05-03 12:07:59', null, null, '0', null, '10 BIJI', '247500', '82500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86101', '', 'SOFT CLICK ACCU LANCET', '0', '1', ' Merry', '2014-05-05 16:06:31', null, null, '0', null, '', '190000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86102', '', 'KAPAS 50GRAM', '0', '1', ' Ana', '2014-05-06 15:21:28', null, null, '0', null, '', '6000', '0', 'SATUAN', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86104', '', 'NICHOSPOR TAB', '0', '1', ' Ana', '2014-05-06 15:49:36', null, null, '0', null, '10 BIJI', '350000', '70000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86105', '', 'CALCIUM JUNIOR @50TAB', '0', '1', ' Sri', '2014-05-08 13:03:46', null, null, '0', null, '', '42000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86106', '', 'LOCOID CREM 10GR', '0', '1', ' Sri', '2014-05-08 17:46:02', null, null, '0', null, '', '67000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86107', '', 'REFAQUIN', '0', '1', ' Sri', '2014-05-09 10:18:07', null, null, '0', null, '', '60000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86108', '', 'KADITIC 50MG', '0', '1', ' Sri', '2014-05-09 16:00:45', null, null, '0', null, '10 BIJI', '35000', '8000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86109', '', 'GENTACORTIN', '0', '1', ' Sri', '2014-05-10 14:25:03', null, null, '0', null, '', '32500', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86110', '', 'IKADERM', '0', '1', ' Sri', '2014-05-10 14:34:15', null, null, '0', null, '', '32500', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86111', '', 'VIOHYDROCOTE', '0', '1', ' Sri', '2014-05-11 16:59:52', null, null, '0', null, '', '10000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86112', '', 'EPISAN SYP 200ML', '0', '1', ' Merry', '2014-05-15 14:12:57', null, null, '0', null, '', '72500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86114', '', 'GARAMYCIN KCL 5GR', '0', '1', ' Merry', '2014-05-16 13:37:41', ' Merry', '2014-05-29 11:58:54', '0', null, '', '32000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86115', '', 'PRIMET 25MG', '0', '1', ' Merry', '2014-05-16 13:52:01', null, null, '0', null, '10BIJI', '165000', '17000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86116', '', 'ELOCON LOTION 10ML', '0', '1', ' Merry', '2014-05-17 16:41:01', null, null, '0', null, '', '95000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86117', '', 'CLOPIDOGREL PANJANG', '0', '1', ' Merry', '2014-05-19 17:51:29', ' Merry', '2014-05-19 17:52:41', '0', null, ' 10 BIJI', '135000', '45000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86118', '', 'RIMCURE PAED', '0', '1', ' Merry', '2014-05-19 18:10:43', null, null, '0', null, '10 BIJI', '165000', '30000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86119', '', 'HERBESSER CD 200MG', '0', '1', ' Ana', '2014-05-21 14:11:03', null, null, '0', null, '10 BIJI', '390000', '130000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86120', '', 'TRANSPULMIN BB KECIL 10GR', '0', '1', ' Ana', '2014-05-22 12:41:44', ' Merry', '2014-05-29 11:58:33', '0', null, '', '38000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86121', '', 'LUBRICENT BTL', '0', '1', ' Ana', '2014-05-22 15:52:55', null, null, '0', null, '', '45000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86122', '', 'CATARLENT MD', '0', '1', ' Ana', '2014-05-22 15:54:50', null, null, '0', null, '', '22500', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86123', '', 'LYTEERS MD', '0', '1', ' Ana', '2014-05-22 15:57:24', null, null, '0', null, '', '22500', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86124', '', 'SUVESCO 20 MG', '0', '1', ' Merry', '2014-05-24 11:06:55', ' Sri', '2014-06-09 16:44:21', '0', null, '10 BIJI', '215000', '107500', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86125', '', 'PIONIX M 850', '0', '1', ' Sri', '2014-05-26 17:24:43', null, null, '0', null, '10BIJI', '240000', '80000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86126', '', 'ICHTIYOL ', '0', '1', ' Merry', '2014-05-29 11:33:18', null, null, '0', null, '', '6000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86127', '', 'BATUGIN', '0', '1', ' Merry', '2014-05-29 11:34:07', null, null, '0', null, '', '35000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86128', '', 'KLODERMA CREAM 10GR', '0', '1', ' Merry', '2014-05-30 16:53:50', null, null, '0', null, '', '32500', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86129', '', 'SYNBIO TAB', '0', '1', ' Merry', '2014-06-02 16:21:46', null, null, '0', null, '10BIJI', '105000', '35000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86130', '', 'LYNORAL', '0', '1', ' Ana', '2014-06-03 13:28:07', ' Ana', '2014-06-03 13:28:18', '0', null, '', '180000', '2500', 'BTL', 'BIJI', '100', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86131', '', 'EPREX PROTECS 4000IU', '0', '1', ' Ana', '2014-06-03 14:41:56', null, null, '0', null, '', '600000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86132', '', 'CENDO STATROL', '0', '1', ' Ana', '2014-06-04 11:17:05', null, null, '0', null, '', '35000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86133', '', 'CENDO HERVIS 3.5 GRAM', '0', '1', ' Ana', '2014-06-04 15:55:26', null, null, '0', null, '', '42500', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86134', '', 'HESROID', '0', '1', ' Merry', '2014-06-06 13:34:41', null, null, '0', null, '', '140000', '30000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86135', '', 'MKP AYAM 620ML JUMBO', '0', '1', ' Merry', '2014-06-06 16:34:47', null, null, '0', null, '', '175000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86136', '', 'ERICAF', '0', '1', ' Sri', '2014-06-06 18:10:28', null, null, '0', null, '', '165000', '55000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86137', '', 'FERRIZ DROP', '0', '1', ' Sri', '2014-06-06 18:13:11', null, null, '0', null, '', '28000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86138', '', 'IMBOOST SYP', '0', '1', ' Sri', '2014-06-07 13:47:35', ' Sri', '2014-06-07 13:47:46', '0', null, '', '50000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86139', '', 'MOLAPECT TAB', '0', '1', ' Sri', '2014-06-07 15:16:11', null, null, '0', null, '', '85000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86140', '', 'V CARE FEMINIM', '0', '1', ' Merry', '2014-06-09 12:31:10', null, null, '0', null, '', '75000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86141', '', 'CHLOROQUINE', '0', '1', ' Sri', '2014-06-09 13:46:42', null, null, '0', null, '', '500', '0', 'BIJI', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86142', '', 'RAPET WANGI 12TAB', '0', '1', ' Merry', '2014-06-11 14:03:19', null, null, '0', null, '', '6000', '6000', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86143', '', 'APRICOT OBAT BATUK', '0', '1', ' Merry', '2014-06-11 15:43:52', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86144', '', 'HALO ', '0', '1', ' Merry', '2014-06-11 15:45:26', null, null, '0', null, '10 BIJI', '60000', '6000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86145', '', 'HANSAPLAST KOYO', '0', '1', ' Merry', '2014-06-11 16:01:23', null, null, '0', null, '', '1000', '0', 'SACH', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86146', '', 'X-MAXS', '0', '1', ' Merry', '2014-06-12 13:32:15', null, null, '0', null, '', '85000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86147', '', 'THIMELON 8MG', '0', '1', ' Merry', '2014-06-14 18:19:00', null, null, '0', null, '10BIJI', '145000', '30000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86148', '', 'VALESCO 160MG', '0', '1', ' Merry', '2014-06-17 15:05:09', null, null, '0', null, '10 BIJI', '427500', '142500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86149', '', 'VALESCO 80MG', '0', '1', ' Merry', '2014-06-17 15:06:28', null, null, '0', null, '10 BIJI', '150000', '50000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86150', '', 'ZOLADEX INJ 10,8', '0', '1', ' Merry', '2014-06-18 16:13:03', null, null, '0', null, '', '4400000', '0', 'BIJI', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86151', '', 'LESIFIT', '0', '1', ' Merry', '2014-06-19 13:09:53', null, null, '0', null, '', '40000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86152', '', 'DE-COUGH120ML', '0', '1', ' Merry', '2014-06-20 12:47:01', null, null, '0', null, '', '18000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86153', '', 'VENARON CAP@4TAB', '0', '1', ' Merry', '2014-06-20 12:49:55', null, null, '0', null, '4 BIJI', '52000', '11000', 'BOX ', 'LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86154', '', 'ESVIT C 250MG 60TAB', '0', '1', ' Merry', '2014-06-20 14:30:46', null, null, '0', null, '', '55000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86155', '', 'RHINATHIOL CAP', '0', '1', ' Merry', '2014-06-24 17:19:13', null, null, '0', null, '10 BIJI', '250000', '25000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86156', '', 'ZINKID ZINC SYR 100ML', '0', '1', ' Merry', '2014-06-24 17:20:07', null, null, '0', null, '', '30000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86157', '', 'GAMAT EMAS', '0', '1', ' Sri', '2014-06-25 13:40:35', null, null, '0', null, '', '115000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86158', '', 'SANTHONE CAP', '0', '1', ' Sri', '2014-06-25 15:32:52', null, null, '0', null, '', '75000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86159', '', 'RENOVIT GOLD', '0', '1', ' Merry', '2014-06-26 13:45:31', null, null, '0', null, '', '70000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86160', '', 'RENOVIT STRIP', '0', '1', ' Merry', '2014-06-26 13:45:53', null, null, '0', null, '', '9000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86161', '', 'SOLAC SYP 120ML', '0', '1', ' Merry', '2014-06-27 16:09:46', null, null, '0', null, '', '70000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86162', '', 'PONSTELAX 500MG', '0', '1', ' Merry', '2014-06-27 16:46:35', null, null, '0', null, '10 BIJI', '65000', '7000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86163', '', 'RIMACTAZID PAED 75/50', '0', '1', ' Ana', '2014-06-27 17:51:43', null, null, '0', null, '10 BIJI', '125000', '25000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86164', '', 'ACTONEL 150MG', '0', '1', ' Merry', '2014-06-28 15:26:21', null, null, '0', null, '', '430000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86165', '', 'NARFOZ SYR', '0', '1', ' Merry', '2014-06-28 16:17:05', null, null, '0', null, '', '62000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86166', '', 'B1 IPI', '0', '1', ' Merry', '2014-06-30 12:49:49', null, null, '0', null, '', '4000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86167', '', 'SUPERTIN TAB', '0', '1', ' Sri', '2014-06-30 18:16:38', null, null, '0', null, '5 BIJI', '33000', '6000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86168', '', 'POLIDENT LEM 60G', '0', '1', ' Merry', '2014-07-02 13:21:55', ' Merry', '2014-07-02 14:24:41', '0', null, '', '35000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86169', '', 'PTU LBR', '0', '1', ' Sri', '2014-07-04 19:19:09', null, null, '0', null, '10 BIJI', '40000', '5000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86170', '', 'PROPEPSA SYR 200ML', '0', '1', ' Merry', '2014-07-07 13:42:03', null, null, '0', null, '', '82000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86171', '', 'ACE MAXS', '0', '1', ' Merry', '2014-07-07 15:55:41', null, null, '0', null, '', '145000', '145000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86172', '', 'REUCID 100MG', '0', '1', ' Merry', '2014-07-07 17:12:48', null, null, '0', null, '10 BIJI', '45000', '10000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86173', '', 'PRORIS IBUPROFEN 200MG', '0', '1', ' Merry', '2014-07-08 17:05:06', null, null, '0', null, '10 BIJI', '60000', '12000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86174', '', 'ZADITEN 100ML', '0', '1', ' Merry', '2014-07-08 18:24:55', null, null, '0', null, '', '170000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86175', '', 'INSTO MOISTURIZER 7,5ML', '0', '1', ' Merry', '2014-07-11 14:15:20', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86176', '', 'TETRACYCLIN 250MG', '0', '1', ' Merry', '2014-07-11 16:09:45', null, null, '0', null, '10 BIJI', '17500', '2500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86177', '', 'TETRACYCLIN 500MG', '0', '1', ' Merry', '2014-07-11 16:10:19', null, null, '0', null, '10 BIJI', '32500', '3500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86178', '', 'VITAMIN B COMPLEX BTL', '0', '1', ' Merry', '2014-07-11 16:11:00', null, null, '0', null, '', '4500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86179', '', 'VITAMIN C BTL', '0', '1', ' Merry', '2014-07-11 16:11:28', null, null, '0', null, '', '40000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86180', '', 'AMOXILIN SYP GENERIK', '0', '1', ' Merry', '2014-07-11 16:21:45', null, null, '0', null, '', '4000', '4000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86182', '', 'BRONSOLVAN TAB', '0', '1', ' Merry', '2014-07-12 10:16:26', null, null, '0', null, '10 BIJI', '50000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86183', '', 'OPTIHEALTH', '0', '1', ' Merry', '2014-07-12 10:27:11', null, null, '0', null, '6 BIJI', '100000', '20000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86184', '', 'DAKTARIN CREAM 5G', '0', '1', ' Merry', '2014-07-12 12:57:45', null, null, '0', null, '', '20000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86185', '', 'GELIGA BALSEM 20GR', '0', '1', ' Merry', '2014-07-14 16:56:27', null, null, '0', null, '', '7000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86186', '', 'ALDACTONE 100MG', '0', '1', ' Ana', '2014-07-15 16:55:21', null, null, '0', null, '10 BIJI', '540000', '55000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86187', '', 'HYDREA 500MG', '0', '1', ' Merry', '2014-07-16 15:04:46', null, null, '0', null, '', '1250000', '12500', 'BTL', 'BIJI', '100', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86188', '', 'ULSAFATE TAB', '0', '1', ' Sri', '2014-07-16 16:48:09', null, null, '0', null, '10 BIJI', '120000', '20000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86189', '', 'BALSAM CAP LANG 40GR', '0', '1', ' Ana', '2014-07-17 13:08:18', null, null, '0', null, '', '12000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86190', '', 'IRETENSA 300 MG', '0', '1', ' Ana', '2014-07-17 18:12:49', null, null, '0', null, '', '130000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86191', '', 'PENFRI 85G', '0', '1', ' Merry', '2014-07-21 15:14:48', null, null, '0', null, '', '85000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86192', '', 'MEDIXON 8MG', '0', '1', ' Merry', '2014-07-23 16:15:56', null, null, '0', null, '', '38000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86193', '', 'NAPREX DROP 15ML', '0', '1', ' Ana', '2014-07-25 17:49:32', null, null, '0', null, '', '35000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86194', '', 'VALDRES TAB', '0', '1', ' Merry', '2014-07-26 12:57:59', null, null, '0', null, '10 BIJI', '67500', '24000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86195', '', 'ERYSANBE 200MG', '0', '1', ' Ana', '2014-07-30 10:17:15', null, null, '0', null, '10 BIJI', '150000', '16000', 'BOX', 'LBR ', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86196', '', 'COUNTERPAIN 60G', '0', '1', ' Merry', '2014-07-31 14:46:18', null, null, '0', null, '', '55000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86197', '', 'DECOLGEN SYR 60ML', '0', '1', ' Merry', '2014-07-31 16:42:29', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86198', '', 'DECOLSIN SYR 60ML', '0', '1', ' Merry', '2014-07-31 16:43:18', ' Merry', '2014-07-31 16:43:27', '0', null, '', '16000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86199', '', 'REDOXON @15BIJI', '0', '1', ' Merry', '2014-08-04 12:39:34', null, null, '0', null, '', '42000', '45000', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86200', '', 'TEH BUNGA CRYSTAL', '0', '1', ' Merry', '2014-08-04 12:50:10', null, null, '0', null, '', '16000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86201', '', 'ZUMAFIB 100MG', '0', '1', ' Merry', '2014-08-05 17:04:03', null, null, '0', null, '10 BIJI', '120000', '40000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86202', '', 'SIBRO', '0', '1', ' Merry', '2014-08-11 10:49:35', null, null, '0', null, '', '90000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86203', '', 'BONVIVA 3MG INJEKSI', '0', '1', ' Merry', '2014-08-11 12:18:37', null, null, '0', null, '', '1350000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86204', '', 'INVEGA 3MG @28TAB', '0', '1', ' Merry', '2014-08-12 14:51:02', ' Merry', '2014-08-12 14:52:16', '0', null, '', '1425000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86205', '', 'CDR@15BIJI', '0', '1', ' Merry', '2014-08-13 14:21:30', null, null, '0', null, '', '42000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86206', '', 'TAMOFEN 10MG', '0', '1', ' Merry', '2014-08-13 17:11:02', null, null, '0', null, '10 BIJI', '95000', '32500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86207', '', 'VITAONE EYE', '0', '1', ' Merry', '2014-08-14 13:37:39', null, null, '0', null, '', '100000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86208', '', 'XPOSE PLATINUM SERUM', '0', '1', ' Merry', '2014-08-14 13:38:22', null, null, '0', null, '', '265000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86209', '', 'BECOMBION EXTRA LYSINE 100ML', '0', '1', ' Merry', '2014-08-15 18:34:23', null, null, '0', null, '', '28000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86210', '', 'MKP SPRAY', '0', '1', ' Merry', '2014-08-18 14:57:27', null, null, '0', null, '', '40000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86211', '', 'RANIVEL SYR 60ML', '0', '1', ' Merry', '2014-08-18 18:42:24', null, null, '0', null, '', '52000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86212', '', 'NA CL 0.9%', '0', '1', ' Merry', '2014-08-18 19:02:57', null, null, '0', null, '', '20000', '0', 'BKS', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86213', '', 'COLTAMI BAG', '0', '1', ' Merry', '2014-08-18 19:05:23', null, null, '0', null, '', '29000', '0', 'BIJI', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86214', '', 'VIZION 2020', '0', '1', ' Merry', '2014-08-20 13:19:08', null, null, '0', null, '', '255000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86215', '', 'PROGESIC SYRUP 60ML', '0', '1', ' Merry', '2014-08-20 18:27:40', null, null, '0', null, '', '21000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86216', '', 'MAXMOR SYP', '0', '1', ' Merry', '2014-08-20 18:54:45', null, null, '0', null, '', '92500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86217', '', 'LITEBITE', '0', '1', ' Merry', '2014-08-21 10:39:07', null, null, '0', null, '', '35000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86218', '', 'VITAONE CALCIUM+VT D3', '0', '1', ' Merry', '2014-08-25 13:21:14', null, null, '0', null, '', '65000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86219', '', 'CAFERGOT TAB', '0', '1', ' Merry', '2014-08-25 15:53:12', null, null, '0', null, '10 BIJI', '815000', '82000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86220', '', 'DIPROSALIC LOTION', '0', '1', ' Ana', '2014-08-25 18:38:27', null, null, '0', null, '', '200000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86221', '', 'SARIDON WHITE&BLACK', '0', '1', ' Merry', '2014-08-26 16:21:12', null, null, '0', null, '', '70000', '7000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86222', '', 'REGIT TAB', '0', '1', ' Merry', '2014-08-28 13:42:25', null, null, '0', null, '10 BIJI', '175000', '35000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86223', '', 'BIOSAN', '0', '1', ' Merry', '2014-08-28 13:43:43', null, null, '0', null, '6 BIJI', '232500', '77500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86224', '', 'TELON KONICARE PLUS', '0', '1', ' Merry', '2014-08-28 15:47:15', null, null, '0', null, '1 BTL', '492000', '41000', 'LUSIN', 'BTL', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86225', '', 'GLUCO DR SUPER SENSOR', '0', '1', ' Merry', '2014-08-28 15:58:57', null, null, '0', null, '', '180000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86226', '', 'EASY TOUCH GCU', '0', '1', ' Merry', '2014-08-28 16:34:58', ' Merry', '2014-08-28 18:50:55', '0', null, '', '290000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86227', '', 'CALADIN BEDAK', '0', '1', ' Merry', '2014-08-29 12:15:26', null, null, '0', null, '', '12000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86228', '', 'EASY TOUCH CHOL', '0', '1', ' Merry', '2014-08-29 12:17:05', ' Merry', '2014-09-13 12:26:20', '0', null, '', '130000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86229', '', 'KONIFLOX', '0', '1', ' Merry', '2014-08-30 14:10:15', null, null, '0', null, '', '32500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86230', '', 'ERLAMYCETIN PLUS', '0', '1', ' Merry', '2014-08-30 14:14:22', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86231', '', 'CITO SALICYL BEDAK', '0', '1', ' Merry', '2014-08-30 14:15:06', null, null, '0', null, '', '5000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86232', '', 'BROXAL', '0', '1', ' Merry', '2014-08-30 14:16:32', null, null, '0', null, '10 BIJI', '80000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86234', '', 'THERMOMETER OMRON', '0', '1', ' Merry', '2014-09-01 12:46:08', null, null, '0', null, '', '40000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86235', '', 'ARTEOPTIC', '0', '1', ' Merry', '2014-09-03 13:54:48', null, null, '0', null, '', '150000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86236', '', 'OPTIXITROL', '0', '1', ' Merry', '2014-09-03 13:57:07', null, null, '0', null, '', '25000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86237', '', 'DUSPATALIN TAB', '0', '1', ' Ana', '2014-09-05 18:23:01', ' Merry', '2014-09-06 18:05:18', '0', null, '10 BIJI', '200000', '40000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86238', '', 'SIMPONI PREFILLED', '0', '1', ' Merry', '2014-09-09 19:01:43', null, null, '0', null, '', '12000000', '0', 'VIAL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86239', '', 'NEUROTAM SYR 100ML', '0', '1', ' Merry', '2014-09-11 17:22:36', null, null, '0', null, '', '67000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86240', '', 'GLIMEFION 4MG', '0', '1', ' Merry', '2014-09-12 11:34:10', null, null, '0', null, '10 BIJI', '187500', '64000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86241', '', 'ILIADIN MOIST', '0', '1', ' Merry', '2014-09-12 18:03:35', null, null, '0', null, '', '17500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86242', '', 'DECOLGEN MASUK ANGIN', '0', '1', ' Merry', '2014-09-13 15:37:15', null, null, '0', null, '', '21000', '2000', 'BOX', 'SACH', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86243', '', 'HUFAGRIP BATUK&PILEK', '0', '1', ' Merry', '2014-09-13 17:20:43', null, null, '0', null, '', '13000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86244', '', 'BODREXIN SYR 56ML', '0', '1', ' Merry', '2014-09-15 15:53:46', null, null, '0', null, '', '8000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86245', '', 'RETIN-A CR 20GR', '0', '1', ' Ana', '2014-09-16 16:11:37', null, null, '0', null, '', '90000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86246', '', 'MIKI BIO C', '0', '1', ' Ana', '2014-09-16 17:34:20', null, null, '0', null, '', '1600000', '42500', 'BOX', 'SACH', '40', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86247', '', 'SERETIDE INHALER 50MG', '0', '1', ' Ana', '2014-09-16 18:50:44', null, null, '0', null, '', '125000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86248', '', 'FLUDEXIN SYR 60ML', '0', '1', ' Merry', '2014-09-17 13:18:13', null, null, '0', null, '', '28000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86249', '', 'OMRON WRIST', '0', '1', ' Merry', '2014-09-18 13:41:46', null, null, '0', null, '', '410000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86250', '', 'OPIXITROL', '0', '1', ' Merry', '2014-09-18 13:45:23', null, null, '0', null, '', '25000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86251', '', 'GANDAPURA 100ML', '0', '1', ' Merry', '2014-09-19 13:11:41', null, null, '0', null, '', '20000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86252', '', 'IKADRYL SYR 100ML', '0', '1', ' Merry', '2014-09-19 13:12:29', null, null, '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86253', '', 'IKASARIAWAN 120ML', '0', '1', ' Merry', '2014-09-19 13:13:13', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86254', '', 'PROBIO-C SPRAY', '0', '1', ' Merry', '2014-09-19 13:14:01', ' Merry', '2014-09-19 13:14:11', '0', null, '', '65000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86255', '', 'TELON NYONYA MENEER 100ML', '0', '1', ' Merry', '2014-09-19 15:08:44', null, null, '0', null, '', '25000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86256', '', 'WEIGHT GAIN', '0', '1', ' Merry', '2014-09-19 18:11:23', null, null, '0', null, '', '425000', '0', 'KLG', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86257', '', 'JUSTIN TAB', '0', '1', ' Merry', '2014-09-20 13:06:31', null, null, '0', null, '10 BIJI', '90000', '20000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86258', '', 'RETIN A 0.1%', '0', '1', ' Merry', '2014-09-23 15:31:50', null, null, '0', null, '', '170000', '0', 'TUB', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86259', '', 'VICKS ANAK 27ML', '0', '1', ' Ana', '2014-09-25 13:16:05', null, null, '0', null, '', '6500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86260', '', 'NATURES BOUNTY FISH OIL', '0', '1', ' Merry', '2014-09-25 16:56:43', null, null, '0', null, '', '355000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86261', '', 'NATURES BOUNTY ESTER C 500', '0', '1', ' Merry', '2014-09-25 16:57:54', null, null, '0', null, '', '98000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86262', '', 'NATURES BOUNTY CORAL CALSIUM', '0', '1', ' Merry', '2014-09-25 16:58:38', null, null, '0', null, '', '160000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86263', '', 'NATURES BOUNTY GLUCOSAMIN', '0', '1', ' Merry', '2014-09-25 16:59:23', null, null, '0', null, '', '375000', '375000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86264', '', 'NATURES BOUNTY SALMON OIL', '0', '1', ' Merry', '2014-09-25 17:00:51', null, null, '0', null, '', '105000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86265', '', 'NATURES BOUNTY MULTIDAY WOMAN', '0', '1', ' Merry', '2014-09-25 17:01:42', null, null, '0', null, '', '200000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86266', '', 'NATURES BOUNTY VISION 20', '0', '1', ' Merry', '2014-09-25 17:04:13', null, null, '0', null, '', '231500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86267', '', 'NATURES BOUNTY C1000', '0', '1', ' Merry', '2014-09-25 17:04:45', null, null, '0', null, '', '180000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86268', '', 'NATURES BOUNTY B COMPLEX', '0', '1', ' Merry', '2014-09-25 17:05:27', null, null, '0', null, '', '210000', '0', 'BTL ', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86269', '', 'NATURES BOUNTY MILK THIXLE', '0', '1', ' Merry', '2014-09-25 17:06:55', null, null, '0', null, '', '200000', '0', 'BTL ', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86270', '', 'NATURES BOUNTY CINNAMON', '0', '1', ' Merry', '2014-09-25 17:07:32', null, null, '0', null, '', '264000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86271', '', 'HCT 25MG LBR', '0', '1', ' Merry', '2014-09-25 18:40:03', null, null, '0', null, '10 BIJI', '20000', '2500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86272', '', 'NATURES BOUNTY GARLIC PARSLEY', '0', '1', ' Ana', '2014-09-26 13:25:34', null, null, '0', null, '', '173000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86273', '', 'NATURES BOUNTY ROYAL JELLY', '0', '1', ' Ana', '2014-09-26 13:29:56', null, null, '0', null, '', '215000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86274', '', 'NATURES BOUNTY HAIR NUTRISI', '0', '1', ' Ana', '2014-09-26 13:31:09', null, null, '0', null, '', '200000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86275', '', 'APTOR', '0', '1', ' Merry', '2014-09-27 12:27:43', null, null, '0', null, '10 BIJI', '38000', '4500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86276', '', 'FUCOIDAN SYRUP 120ML', '0', '1', ' Merry', '2014-09-29 14:50:42', null, null, '0', null, '', '87500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86277', '', 'INTERBI', '0', '1', ' Merry', '2014-09-30 13:18:47', null, null, '0', null, '6 BIJI', '285000', '145000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86278', '', 'IODINE POVIDON 1000ML', '0', '1', ' Merry', '2014-09-30 15:33:08', null, null, '0', null, '', '55000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86279', '', 'IODINE POVIDON 60ML', '0', '1', ' Merry', '2014-09-30 15:34:50', null, null, '0', null, '', '9000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86280', '', 'IODINE POVIDON 30ML', '0', '1', ' Merry', '2014-09-30 15:36:35', null, null, '0', null, '', '6500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86282', '', 'GLUCOS CARE TEH CELUP', '0', '1', ' Merry', '2014-09-30 16:20:48', null, null, '0', null, '', '110000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86283', '', 'ASTHIN FORCE SYR 60ML', '0', '1', ' Merry', '2014-10-01 12:30:28', null, null, '0', null, '', '47500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86284', '', 'ANDROCUR', '0', '1', ' Ana', '2014-10-02 14:53:28', ' Merry', '2014-10-20 15:52:47', '0', null, '@10TAB', '450000', '225000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86285', '', 'PLACTA', '0', '1', ' Merry', '2014-10-04 15:26:53', null, null, '0', null, '10 BIJI', '345000', '115000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86286', '', 'CURCUMA PLUS EMULSION 200ML', '0', '1', ' Merry', '2014-10-06 17:03:29', ' Merry', '2015-03-14 14:19:34', '0', null, '', '22000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86287', '', 'FITCOM GUMMY', '0', '1', ' Merry', '2014-10-06 17:04:06', null, null, '0', null, '', '16000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86288', '', 'CEREBROFORT GOLD 100ML JERUK', '0', '1', ' Merry', '2014-10-06 17:05:20', null, null, '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86289', '', 'CEREBROFORT GOLD 100ML STRAWBERRY', '0', '1', ' Merry', '2014-10-06 17:05:59', null, null, '0', null, '', '15000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86290', '', 'MAGALAT SYRUP 100ML', '0', '1', ' Merry', '2014-10-07 14:49:03', null, null, '0', null, '', '35000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86291', '', 'ALLERON 4MG', '0', '1', ' Merry', '2014-10-07 15:37:49', null, null, '0', null, '10 BIJI', '25000', '2000', 'BOX', 'LBR', '20', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86892', '', 'BACTRIM FORTE', '0', '1', ' Merry', '2014-10-07 18:44:42', null, null, '0', null, '5BIJI', '500000', '25000', 'BOX', 'LBR', '20', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86893', '', 'BIOTHICOL FORTE SYR', '0', '1', ' Merry', '2014-10-08 12:21:15', null, null, '0', null, '', '53000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86894', '', 'NEVANAC 0.1%', '0', '1', ' Merry', '2014-10-08 12:59:26', null, null, '0', null, '', '110000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86895', '', 'VASTIGO', '0', '1', ' Sri', '2014-10-08 17:44:50', null, null, '0', null, '10 BIJI', '95000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86896', '', 'TRIFACYCLIN CR', '0', '1', ' Sri', '2014-10-08 17:45:53', null, null, '0', null, '', '7000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86897', '', 'PK CITO', '0', '1', ' Sri', '2014-10-08 17:46:31', null, null, '0', null, '', '6000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86898', '', 'ZEVASK TAB', '0', '1', ' Sri', '2014-10-08 17:48:47', null, null, '0', null, '10 BIJI', '27500', '10000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86899', '', 'PROFUT TAB', '0', '1', ' Sri', '2014-10-08 17:51:21', null, null, '0', null, '10 BIJI', '25000', '3000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86900', '', 'MECODIAR TAB', '0', '1', ' Sri', '2014-10-08 17:54:12', null, null, '0', null, '6 BIJI', '25000', '3000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86901', '', 'KAOTIN SYR', '0', '1', ' Sri', '2014-10-08 17:58:32', null, null, '0', null, '', '5000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86902', '', 'GRISEOFULVIN 500MG', '0', '1', ' Sri', '2014-10-08 18:08:27', null, null, '0', null, '10 BIJI', '120000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86903', '', 'BLOOD LANCET', '0', '1', ' Merry', '2014-10-09 16:22:36', ' Sri', '2014-12-11 18:54:34', '0', null, '', '25000', '500', 'BOX', 'BIJI', '200', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86904', '', 'MADU TJ 250GR', '0', '1', ' Merry', '2014-10-09 17:19:21', null, null, '0', null, '', '25000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86905', '', 'CICA CARE', '0', '1', ' Merry', '2014-10-10 16:49:23', null, null, '0', null, '', '1000000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86906', '', 'GELIGA BALSEM 10GR', '0', '1', ' Sri', '2014-10-14 11:22:36', null, null, '0', null, '', '4000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86907', '', 'STARDEC MASKER ISI 5', '0', '1', ' Merry', '2014-10-16 12:26:34', null, null, '0', null, '', '7000', '0', 'SACH', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86908', '', 'AVESCO 20MG', '0', '1', ' Sri', '2014-10-17 16:13:25', null, null, '0', null, '', '120000', '40000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86909', '', 'PEDIALYTE SOL 500ML', '0', '1', ' Sri', '2014-10-21 12:37:59', null, null, '0', null, '', '27500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86910', '', 'KANNA CREAM 15ML', '0', '1', ' Sri', '2014-10-21 15:55:49', null, null, '0', null, '', '7000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86911', '', 'PULNA FORTE', '0', '1', ' Sri', '2014-10-21 16:50:48', null, null, '0', null, '10 BIJI', '250000', '25000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86912', '', 'DECUBAL CREAM 20GR', '0', '1', ' Sri', '2014-10-21 16:52:10', null, null, '0', null, '', '22500', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86913', '', 'ANTASIDA DOEN SYR 60ML', '0', '1', ' Sri', '2014-10-21 16:55:28', null, null, '0', null, '', '5000', '5000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86914', '', 'SENSI MASKER 6BIJI', '0', '1', ' Merry', '2014-10-23 12:39:57', null, null, '0', null, '', '10000', '0', 'SACH', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86915', '', 'FLADYSTIN OVULA', '0', '1', ' Merry', '2014-10-23 16:51:53', null, null, '0', null, '', '16000', '0', 'BIJI', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86916', '', 'TIENHE HITAM', '0', '1', ' Sri', '2014-10-27 13:17:51', ' Sri', '2014-10-29 11:18:41', '0', null, '', '26000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86917', '', 'COLERGIS SYR 60ML', '0', '1', ' Merry', '2014-10-28 12:44:29', null, null, '0', null, '', '42000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86918', '', 'ZOLREDAL 2MG', '0', '1', ' Sri', '2014-10-29 18:12:34', null, null, '0', null, '10BIJI', '255000', '85000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86919', '', 'BONDI CAPSUL', '0', '1', ' Ana', '2014-11-04 15:14:24', null, null, '0', null, '10 BIJI', '195000', '65000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86920', '', 'PIMTRAKOL PLUS SYR', '0', '1', ' Sri', '2014-11-08 17:02:05', null, null, '0', null, '', '8000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86921', '', 'RENADINAC 25MG', '0', '1', ' Ana', '2014-11-10 16:23:01', null, null, '0', null, '10 BIJI', '22500', '2500', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86922', '', 'DRAGON GOSOK HSB 20GR', '0', '1', ' Sri', '2014-11-11 16:35:01', null, null, '0', null, '', '20000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86923', '', 'Q 10-DS', '0', '1', ' Ana', '2014-11-12 17:40:39', null, null, '0', null, '', '172000', '0', 'DUS', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86924', '', 'SIFROL 0,75', '0', '1', ' Sri', '2014-11-13 15:29:20', null, null, '0', null, '', '185000', '0', 'LBR', 'LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86925', '', 'XPOSE CC CREM', '0', '1', ' Merry', '2014-11-14 11:17:55', null, null, '0', null, '', '255000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86926', '', 'FARBIVENT', '0', '1', ' Sri', '2014-11-14 16:43:51', null, null, '0', null, '', '100000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86927', '', 'OPTIMAX FOR G', '0', '1', ' Merry', '2014-11-15 13:44:25', null, null, '0', null, '6 BIJI', '260000', '52000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86928', '', 'VELCOX 7,5MG', '0', '1', ' Merry', '2014-11-15 18:34:58', null, null, '0', null, '10 BIJI', '100000', '50000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86929', '', 'VELCOX 15 MG', '0', '1', ' Merry', '2014-11-15 18:36:09', null, null, '0', null, '10 BIJI', '170000', '85000', 'BOX', 'LBR ', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86930', '', 'ALOCLAIR SPRAY', '0', '1', ' Ana', '2014-11-18 17:20:41', null, null, '0', null, '', '85000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86931', '', 'KELO-COTE 15GR', '0', '1', ' Sri', '2014-11-19 15:23:07', null, null, '0', null, '', '550000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86932', '', 'LACTACYD BABY 230ML', '0', '1', ' Merry', '2014-11-20 15:43:49', null, null, '0', null, '', '72000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86933', '', 'XIDANE CAP', '0', '1', ' Merry', '2014-11-21 16:53:17', null, null, '0', null, '10 BIJI', '204000', '68000', 'BOX', 'LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86934', '', 'WATER MELON PERMEN', '0', '1', ' Merry', '2014-11-27 12:22:00', null, null, '0', null, '', '13500', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86935', '', 'BIONEURON', '0', '1', ' Sri', '2014-11-27 18:36:39', ' Merry', '2014-11-28 10:30:49', '0', null, '10 BIJI', '110000', '11000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86936', '', 'LENTIKULAR BTL', '0', '1', ' Merry', '2014-11-28 12:16:43', null, null, '0', null, '', '42000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86937', '', 'MUCOTEIN ', '0', '1', ' Sri', '2014-12-03 17:17:59', null, null, '0', null, '10BIJI', '100000', '50000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86938', '', 'BROCON TAB', '0', '1', ' Sri', '2014-12-04 16:40:58', null, null, '0', null, '10 BIJI', '55000', '8000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86939', '', 'STARCEF 200 MG', '0', '1', ' Merry', '2014-12-04 18:36:20', null, null, '0', null, '10 BIJI', '225000', '0', 'BOX', 'LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86940', '', 'TEMPRA SYR 30ML', '0', '1', ' Merry', '2014-12-08 15:31:29', null, null, '0', null, '', '17000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86941', '', 'COTTON BUD ', '0', '1', ' Sri', '2014-12-09 13:07:43', null, null, '0', null, '', '4000', '0', 'BKS', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86942', '', 'BABY WIPES 10', '0', '1', ' Sri', '2014-12-09 13:08:36', null, null, '0', null, '', '6000', '0', 'BKS', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86943', '', 'ESTER C STRIP', '0', '1', ' Merry', '2014-12-10 14:36:57', null, null, '0', null, '', '5000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86944', '', 'CALNIC TAB', '0', '1', ' Merry', '2014-12-15 17:52:07', null, null, '0', null, '10 BIJI', '112500', '37500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86945', '', 'MADU TJ 500', '0', '1', ' Sri', '2014-12-16 17:04:58', null, null, '0', null, '', '42500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86946', '', 'HYALUB BTL', '0', '1', ' Sri', '2014-12-18 17:26:54', null, null, '0', null, '', '60000', '60000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86947', '', 'TRUXANTHIN', '0', '1', ' Sri', '2014-12-19 17:33:27', null, null, '0', null, '10 BIJI', '180000', '90000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86948', '', 'BENOZYM TAB', '0', '1', ' Sri', '2014-12-24 14:59:07', null, null, '0', null, '10BIJI', '195000', '22500', 'BOX', '10LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86949', '', 'METIFER 500MG', '0', '1', ' Sri', '2015-01-03 16:49:32', null, null, '0', null, '10BIJI', '155000', '16000', 'BOX', '10LBR', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86350', '', 'SIANG PURE OIL', '0', '1', ' Sri', '2015-01-07 10:18:30', null, null, '0', null, '', '50000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86950', '', 'EPISAN 100ML', '0', '1', ' Sri', '2015-01-07 13:22:12', null, null, '0', null, '', '45000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86951', '', 'TORAS 4MG', '0', '1', ' Merry', '2015-01-08 12:39:24', null, null, '0', null, '10BIJI', '75000', '25000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86952', '', 'GLUNOR 500MG', '0', '1', ' Sri', '2015-01-08 13:19:08', null, null, '0', null, '10 BIJI', '50000', '10000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86953', '', 'OPILAX SYUP 60ML', '0', '1', ' Merry', '2015-01-09 16:53:31', null, null, '0', null, '', '40000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86954', '', 'STENIROL 8MG', '0', '1', ' Merry', '2015-01-09 18:16:30', ' Merry', '2015-01-09 18:16:40', '0', null, '10 BIJI', '225000', '45000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86955', '', 'ERLAMICETIN SALEP MATA', '0', '1', ' Merry', '2015-01-12 15:14:48', null, null, '0', null, '', '6000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86956', '', 'INTENSE SHAMPHO 200ML', '0', '1', ' Merry', '2015-01-13 10:01:34', null, null, '0', null, '', '70000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86957', '', 'ASTHIN BOND STRIP', '0', '1', ' Merry', '2015-01-13 18:11:06', null, null, '0', null, '10 BIJI', '270000', '90000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86958', '', 'PROTOPIC 0.5', '0', '1', ' Merry', '2015-01-14 16:22:00', null, null, '0', null, '', '385000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86959', '', 'PRIMPERAN 5MG', '0', '1', ' Merry', '2015-01-14 16:23:12', null, null, '0', null, '10BIJI', '85000', '9000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86960', '', 'VIARTRIL-S 500MG', '0', '1', ' Merry', '2015-01-14 16:25:39', null, null, '0', null, '', '385000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86961', '', 'DECODERM 10GRM', '0', '1', ' Sri', '2015-01-15 13:20:27', null, null, '0', null, '', '28500', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86962', '', 'ANGINTRIZ MR', '0', '1', ' Sri', '2015-01-16 18:41:32', null, null, '0', null, '10BIJI', '110000', '37500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86963', '', 'ROYAL PROPOLIS', '0', '1', ' Merry', '2015-01-17 18:01:53', null, null, '0', null, '', '205000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86964', '', 'ABATE', '0', '1', ' Merry', '2015-01-21 12:58:27', null, null, '0', null, '', '3000', '0', 'SACH', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86965', '', 'MASTIN 100CAP', '0', '1', ' Merry', '2015-01-22 15:31:32', null, null, '0', null, '', '60000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86966', '', 'MIGRAN TAB', '0', '1', ' Sri', '2015-01-23 16:23:40', null, null, '0', null, '4BIJI', '40000', '2000', 'BOX', 'LBR', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86967', '', 'INTERCO 500', '0', '1', ' Ana', '2015-01-26 16:53:28', null, null, '0', null, '10 BIJI', '195000', '20000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86968', '', 'AZARGA 5ML', '0', '1', ' Merry', '2015-01-28 18:00:31', null, null, '0', null, '', '315000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86969', '', 'BRILINTA 90MG', '0', '1', ' Merry', '2015-01-28 18:13:47', null, null, '0', null, '14 TAB', '880000', '220000', 'BOX', 'LBR', '4', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86970', '', 'MERISLON 12MG', '0', '1', ' Ana', '2015-01-29 17:55:04', null, null, '0', null, '10BIJI', '600000', '62000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86971', '', 'VIARTRIL S 1500MG 30SACH', '0', '1', ' Merry', '2015-01-30 15:32:09', null, null, '0', null, '', '600000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86972', '', 'DUALVIS INJEKSI 0,7ML', '0', '1', ' Merry', '2015-01-31 13:41:49', null, null, '0', null, '', '1815000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86973', '', 'PRORIS TAB', '0', '1', ' Merry', '2015-02-02 12:32:03', null, null, '0', null, '10 TAB', '85000', '9000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86974', '', 'NALITIK CAP', '0', '1', ' Merry', '2015-02-02 14:10:23', null, null, '0', null, '10 TAB', '180000', '30000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86975', '', 'SIMRYL 2MG', '0', '1', ' Merry', '2015-02-03 16:37:52', null, null, '0', null, '10TAB', '205000', '45000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86976', '', 'MATAFRES MD', '0', '1', ' Merry', '2015-02-05 17:09:00', null, null, '0', null, '', '30000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86977', '', 'CURCUMA 60ML', '0', '1', ' Merry', '2015-02-05 17:18:50', null, null, '0', null, '', '12500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86978', '', 'IMBOOST C 1500 EFER', '0', '1', ' Merry', '2015-02-05 17:19:48', null, null, '0', null, '', '79000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86979', '', 'PAGODA PASTILES', '0', '1', ' Merry', '2015-02-05 17:22:31', null, null, '0', null, '', '4000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86980', '', 'ESTER C 500 NATURE BOUNTY', '0', '1', ' Merry', '2015-02-05 17:47:07', null, null, '0', null, '', '90000', '350000', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86981', '', 'VERNACEL MD', '0', '1', ' Merry', '2015-02-07 14:41:00', null, null, '0', null, '', '25000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86982', '', 'EPREX 10.000', '0', '1', ' Merry', '2015-02-13 12:44:26', null, null, '0', null, '', '1315000', '0', 'VIAL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86983', '', 'AMMELTZ YOKO LIQUID 48ML', '0', '1', ' Merry', '2015-02-13 15:10:32', null, null, '0', null, '', '31000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86984', '', 'EXJADE 500MG', '0', '1', ' Merry', '2015-02-18 10:45:59', null, null, '0', null, '', '8845000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86985', '', 'PROVULA 50MG', '0', '1', ' Merry', '2015-02-18 17:10:19', null, null, '0', null, '10TAB', '390000', '130000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86986', '', 'ACANTHE BTX-LIKE CR 15GR', '0', '1', ' Ana', '2015-02-21 13:56:41', null, null, '0', null, '', '315', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86987', '', 'ALEGYSAL 5ML', '0', '1', ' Ana', '2015-02-21 13:59:26', null, null, '0', null, '', '82500', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86988', '', 'TERMISIL CR 10GR', '0', '1', ' Ana', '2015-02-21 14:00:02', null, null, '0', null, '', '50000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86989', '', 'PROBI', '0', '1', ' Ana', '2015-02-21 15:15:07', null, null, '0', null, '', '215000', '5500', 'BOX', 'SACH', '40', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86990', '', 'FASIPRIM KAPLET', '0', '1', ' Merry', '2015-02-23 17:02:47', null, null, '0', null, '10 TAB', '40000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86991', '', 'ZORALIN CR 10GR', '0', '1', ' Merry', '2015-02-24 17:13:01', null, null, '0', null, '', '20000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86992', '', 'GAZERO', '0', '1', ' Merry', '2015-02-25 11:05:47', null, null, '0', null, '', '11000', '2000', 'BOX', 'SACH', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86993', '', 'LACTACYD ALL DAY FRESH 150ML', '0', '1', ' Merry', '2015-02-25 16:35:42', null, null, '0', null, '', '42500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86994', '', 'OMEPROS ISI 60', '0', '1', ' Merry', '2015-02-26 14:55:08', null, null, '0', null, '', '210000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86995', '', 'SORPIREN ORAL SOL', '0', '1', ' Merry', '2015-02-26 16:11:13', null, null, '0', null, '', '305000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86996', '', 'ONE TOUCH SELECT', '0', '1', ' Merry', '2015-02-26 16:56:51', null, null, '0', null, '', '250000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86997', '', 'MKP GAJAH 60 ML', '0', '1', ' Ana', '2015-02-28 14:58:45', null, null, '0', null, '', '15000', '0', 'BTL ', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86998', '', 'MKP GAJAH 120ML', '0', '1', ' Ana', '2015-02-28 14:59:24', null, null, '0', null, '', '26000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('86999', '', 'LDLOX CAP', '0', '1', ' Ana', '2015-02-28 18:28:51', null, null, '0', null, '10 TAB', '225000', '75000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87000', '', 'MKP 60ML CAP-LANG', '0', '1', ' Sri', '2015-03-01 14:19:40', null, null, '0', null, '', '16000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87001', '', 'CALSOURCE EFF ORANGE', '0', '1', ' Merry', '2015-03-03 11:56:56', null, null, '0', null, '', '42500', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87002', '', 'LANTUROL 400MG @10TAB', '0', '1', ' Merry', '2015-03-04 14:20:26', null, null, '0', null, '', '40000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87003', '', 'PANTOPRAZOLE 40MG', '0', '1', ' Merry', '2015-03-06 11:13:55', null, null, '0', null, '', '102500', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87004', '', 'BIO GARCINIA', '0', '1', ' Merry', '2015-03-07 14:29:33', null, null, '0', null, '', '60000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87005', '', 'MADUHITAM', '0', '1', ' Merry', '2015-03-09 11:43:23', null, null, '0', null, '', '60000', '0', 'BTL', '', '0', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87006', '', 'HANSAPLAST KOYO HANGAT', '0', '1', ' Merry', '2015-03-09 14:05:15', null, null, '0', null, '', '60000', '6500', 'BOX', 'SACH', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87007', '', 'HANSAPLAST KOYO PANAS', '0', '1', ' Merry', '2015-03-09 14:07:43', null, null, '0', null, '', '60000', '6500', 'BOX', 'SACH', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87008', '', 'ETAFLOX', '0', '1', ' Merry', '2015-03-09 15:39:07', null, null, '0', null, '10 TAB', '100000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87009', '', 'MADURASA MURNI 650ML', '0', '1', ' Merry', '2015-03-10 14:04:23', null, null, '0', null, '', '85000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87010', '', 'MADURASA PREMIUM 650ML', '0', '1', ' Merry', '2015-03-10 14:04:51', null, null, '0', null, '', '100000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87011', '', 'BIPRO', '0', '1', ' Merry', '2015-03-13 16:19:30', null, null, '0', null, '10 TAB', '140000', '47500', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87012', '', 'ACTOSMET 15MG', '0', '1', ' Merry', '2015-03-13 16:21:12', null, null, '0', null, '7 TAB', '82500', '42500', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87013', '', 'GRAPRIMA FORTE', '0', '1', ' Merry', '2015-03-13 18:38:26', null, null, '0', null, '10 TAB', '95000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87014', '', 'EPOTREX 10.000', '0', '1', ' Merry', '2015-03-17 12:44:42', null, null, '0', null, '', '910000', '0', 'VIAL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87015', '', 'SYMBICORT 80', '0', '1', ' Sri', '2015-03-17 17:55:49', null, null, '0', null, '', '220000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87016', '', 'CIPRALEX20MG', '0', '1', ' Merry', '2015-03-18 10:21:04', ' Merry', '2015-03-18 10:21:16', '0', null, '14 BIJI', '1100000', '0', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87017', '', 'LASMALIN TAB', '0', '1', ' Ana', '2015-03-22 16:20:34', ' Sri', '2015-03-23 12:30:51', '0', null, '12000', '110000', '12000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87018', '', 'PYREXIN TAB', '0', '1', ' Sri', '2015-03-23 13:27:45', null, null, '0', null, '10 TAB', '60000', '3500', 'BOX', 'LBR', '20', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87019', '', 'BRAINACT O-DIS 500MG', '0', '1', ' Merry', '2015-03-24 11:05:54', null, null, '0', null, '10 TAB', '375000', '125000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87020', '', 'FALERGI DROP', '0', '1', ' Merry', '2015-03-24 11:34:36', ' Merry', '2015-03-24 11:34:55', '0', null, '', '65000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87021', '', 'SUTRA', '0', '1', ' Merry', '2015-03-25 13:01:33', null, null, '0', null, '', '15000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87022', '', 'DYNAMIC TRIO+GLUCOSAMIN@30', '0', '1', ' Ana', '2015-03-26 13:33:43', null, null, '0', null, '', '197000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87023', '', 'NATUR E@32', '0', '1', ' Ana', '2015-03-26 17:44:42', null, null, '0', null, '', '30000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87024', '', 'CRESTOR5MG', '0', '1', ' Merry', '2015-03-27 15:33:08', ' Merry', '2015-03-28 16:09:52', '0', null, '14 TAB', '250000', '125000', 'BOX', 'LBR', '2', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87025', '', 'TB VIT6', '0', '1', ' Merry', '2015-03-28 14:58:54', null, null, '0', null, '10 TAB', '65000', '7000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87026', '', 'GLYSERIL GUAIAKOLAT 100MG', '0', '1', ' Merry', '2015-03-28 15:05:43', null, null, '0', null, '', '100', '0', 'TAB', 'TAB', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87027', '', 'ARCAPEC', '0', '1', ' Merry', '2015-03-28 15:06:58', null, null, '0', null, '10 TAB', '95000', '10000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87028', '', 'MOLACORT 0,75', '0', '1', ' Merry', '2015-03-28 15:08:24', null, null, '0', null, '10 TAB', '45000', '2500', 'BOX', 'LBR', '20', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87029', '', 'COUNTERPAIN PXM 25GR', '0', '1', ' Merry', '2015-03-31 11:55:32', null, null, '0', null, '', '80000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87030', '', 'HEMAPO 10000', '0', '1', ' Merry', '2015-04-01 10:53:43', null, null, '0', null, '', '592000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87031', '', 'CAPUNG PASTILLES', '0', '1', ' Merry', '2015-04-01 12:54:54', null, null, '0', null, '', '156000', '15000', 'BOX', 'SACH', '12', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87032', '', 'BALSEM CAP-LANG 20GRM', '0', '1', ' Merry', '2015-04-02 12:16:34', null, null, '0', null, '', '7000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87033', '', 'XEPAZYM', '0', '1', ' Merry', '2015-04-07 09:55:00', ' Merry', '2015-04-07 09:55:09', '0', null, '10 BIJI', '75000', '15000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87034', '', 'SOZO FORMULA MANGGATA1', '0', '1', ' Merry', '2015-04-07 13:01:44', null, null, '0', null, '', '210000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87035', '', 'HUMALOG', '0', '1', ' Merry', '2015-04-09 12:54:06', null, null, '0', null, '', '720000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87036', '', 'PIEN TZE HUANG CAP', '0', '1', ' Merry', '2015-04-10 12:05:34', null, null, '0', null, '', '550000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87037', '', 'COUNTERPAIN PATCH', '0', '1', ' Sri', '2015-04-10 12:19:02', null, null, '0', null, '1LBR', '125000', '25000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87038', '', 'PKS SALEP', '0', '1', ' Merry', '2015-04-11 11:22:08', null, null, '0', null, '', '5000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87039', '', 'PARACETAMOL SYP', '0', '1', ' Merry', '2015-04-13 15:20:08', null, null, '0', null, '', '5000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87040', '', 'TRILAC INJEKSI', '0', '1', ' Merry', '2015-04-15 17:43:33', null, null, '0', null, '', '120000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87041', '', 'SILOPECT TAB', '0', '1', ' Merry', '2015-04-16 14:26:57', null, null, '0', null, '10TAB', '100000', '11000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87042', '', 'FLUTAMOL-P SYR 60ML', '0', '1', ' Merry', '2015-04-16 14:27:45', null, null, '0', null, '', '17500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87043', '', 'OCIDERM N CR 5GR', '0', '1', ' Merry', '2015-04-16 14:28:29', null, null, '0', null, '', '18000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87044', '', 'VITAMIN C SINERGI', '0', '1', ' Merry', '2015-04-20 14:00:46', null, null, '0', null, '', '90000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87045', '', 'JOINT CARE SINERGI', '0', '1', ' Merry', '2015-04-20 14:01:35', null, null, '0', null, '', '222500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87046', '', 'CHONDROMAX KRIM', '0', '1', ' Sri', '2015-04-25 15:28:52', null, null, '0', null, '', '110000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87047', '', 'VOSTEON TAB', '0', '1', ' Sri', '2015-04-25 15:36:52', null, null, '0', null, '6TAB', '250000', '55000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87048', '', 'BETADINE FEMININE 60ML', '0', '1', ' Sri', '2015-04-27 11:44:31', null, null, '0', null, '', '20000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87049', '', 'CURCUMAPLUS FRUIT&VEGIE 100ML', '0', '1', ' Sri', '2015-04-27 11:45:34', null, null, '0', null, '', '24000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87050', '', 'NERVA PLUS', '0', '1', ' Ana', '2015-04-27 14:07:30', null, null, '0', null, '10 BIJI', '95000', '19000', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87051', '', 'ACIFAR KRIM', '0', '1', ' Ana', '2015-04-27 17:43:27', null, null, '0', null, '', '7000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87052', '', 'HANSAPLAST ROL KECIL', '0', '1', ' Merry', '2015-04-28 11:31:16', null, null, '0', null, '', '3500', '0', 'ROL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87053', '', 'ROYAL JELLY NATURECARE', '0', '1', ' Merry', '2015-04-28 12:29:09', null, null, '0', null, '', '160000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87054', '', 'NEORAL 25MG', '0', '1', ' Ana', '2015-04-28 16:16:41', null, null, '0', null, '', '875000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87055', '', 'SOLAZUT', '0', '1', ' Ana', '2015-04-28 18:16:47', null, null, '0', null, '4 TAB', '140000', '6000', 'BOX', 'LBR', '25', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87056', '', 'X-FLAM', '0', '1', ' Ana', '2015-05-05 16:25:17', null, null, '0', null, '10 TAB', '70000', '25000', 'BOX', 'LBR', '3', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87057', '', 'OSTEO PENTA-FLEX', '0', '1', ' Merry', '2015-05-06 16:05:59', null, null, '0', null, '', '150000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87058', '', 'VELO OMEGA@30', '0', '1', ' Merry', '2015-05-06 16:06:30', null, null, '0', null, '', '75000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87059', '', 'TAXILAN 500MG/5ML180ML', '0', '1', ' Merry', '2015-05-07 10:24:16', ' Merry', '2015-05-08 10:50:49', '0', null, '', '78000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87060', '', 'MASTIN@60BIJI', '0', '1', ' Merry', '2015-05-11 15:32:04', null, null, '0', null, '', '40000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87061', '', 'RECORMON 10.000', '0', '1', ' Merry', '2015-05-12 14:46:00', null, null, '0', null, '', '6130000', '0', '1', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87062', '', 'BENOSON N KECIL', '0', '1', ' Sri', '2015-05-15 15:38:39', null, null, '0', null, '', '17000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87063', '', 'PUREKIDS AISE BELLY NATURAL60ML', '0', '1', ' Sri', '2015-05-19 17:57:20', null, null, '0', null, '', '30000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87064', '', 'STENIROL16MG', '0', '1', ' Merry', '2015-05-20 14:58:33', null, null, '0', null, '10BIJI', '337500', '67500', 'BOX', 'LBR', '5', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87065', '', 'ALAXAN', '0', '1', ' Merry', '2015-05-20 17:42:19', null, null, '0', null, '10CAP', '45000', '5000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87066', '', 'EASY TOUCH GLUCOSE', '0', '1', ' Merry', '2015-05-22 13:18:13', null, null, '0', null, '', '65000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87067', '', 'ACNE FELDIN SOL', '0', '1', ' Merry', '2015-05-22 17:02:27', null, null, '0', null, '', '33000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87068', '', 'FOLAPLUS TAB', '0', '1', ' Merry', '2015-05-22 17:04:18', null, null, '0', null, '10TAB', '80000', '9000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87069', '', 'HEPATOSOL SUSU', '0', '1', ' Merry', '2015-05-25 17:20:08', null, null, '0', null, '', '95000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87070', '', 'PEI PA MAT ', '0', '1', ' Merry', '2015-05-26 10:38:31', null, null, '0', null, '', '20000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87071', '', 'CARDACE 2.5MG', '0', '1', ' Sri', '2015-05-26 12:31:34', null, null, '0', null, '10TAB', '165000', '30000', 'BOX', 'LBR', '6', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87072', '', 'KALMECO 250MG', '0', '1', ' Merry', '2015-05-26 18:00:25', null, null, '0', null, '10TAB', '145000', '15000', 'BOX', 'LBR', '10', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87073', '', 'MKP AYAM 25ML', '0', '1', ' Merry', '2015-05-27 16:19:29', null, null, '0', null, '', '10000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87074', '', 'HOT IN CREAM TUBE 120GR', '0', '1', ' Merry', '2015-06-03 12:15:59', null, null, '0', null, '', '20000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87075', '', 'HOT IN CREAM TUBE 60GR', '0', '1', ' Merry', '2015-06-03 12:16:42', null, null, '0', null, '', '13000', '0', 'TUBE', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87076', '', 'NP EVENING PRIMROSE OIL @30', '0', '1', ' Merry', '2015-06-03 15:59:09', null, null, '0', null, '', '57000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87077', '', 'GAZGO @30CAP', '0', '1', ' Merry', '2015-06-03 16:00:10', null, null, '0', null, '', '95000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87078', '', 'ALIHABBAT@60', '0', '1', ' Merry', '2015-06-03 16:01:14', null, null, '0', null, '', '230000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87079', '', 'REDWIN@30', '0', '1', ' Merry', '2015-06-03 16:01:58', null, null, '0', null, '', '57000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87080', '', 'NB KULIT MANGGIS@30', '0', '1', ' Merry', '2015-06-03 16:03:06', ' Merry', '2015-06-03 16:07:35', '0', null, '', '37000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87081', '', 'NB KUNYIT PUTIH @30TAB', '0', '1', ' Merry', '2015-06-03 16:04:27', ' Merry', '2015-06-03 16:07:24', '0', null, '', '47000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87082', '', 'NB TEMULAWAK@30CAP', '0', '1', ' Merry', '2015-06-03 16:05:17', ' Merry', '2015-06-03 16:07:14', '0', null, '', '37000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87083', '', 'TIRZAK@10 TEA', '0', '1', ' Merry', '2015-06-03 16:07:00', null, null, '0', null, '', '37000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87084', '', 'TWISTER C LITE 30TAB', '0', '1', ' Merry', '2015-06-03 16:12:38', null, null, '0', null, '', '75000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87085', '', 'SLING TI @15TEA ', '0', '1', ' Merry', '2015-06-03 16:13:31', null, null, '0', null, '', '37000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87086', '', 'VELOCARE @30CAP', '0', '1', ' Merry', '2015-06-03 16:14:13', null, null, '0', null, '', '170000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87087', '', 'ULTRAWAY ACES@30CAP', '0', '1', ' Merry', '2015-06-03 16:15:48', null, null, '0', null, '', '127000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87088', '', 'NEORAL 50MG', '0', '1', ' Merry', '2015-06-03 17:30:42', null, null, '0', null, '', '1675000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87089', '', 'NEORAL 100MG', '0', '1', ' Merry', '2015-06-03 17:31:23', null, null, '0', null, '', '3100000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87090', '', 'BELUNA', '0', '1', ' Merry', '2015-06-04 15:40:00', null, null, '0', null, '', '20000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87091', '', 'BETAMIPLEX', '0', '1', ' Sri', '2015-06-05 11:44:53', null, null, '0', null, '', '14000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87092', '', 'HERBA VOMITS', '0', '1', ' Ana', '2015-06-06 12:53:35', null, null, '0', null, '', '5000', '0', 'LBR', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87093', '', 'SIDOLA SEDANG 60ML', '0', '1', ' Ana', '2015-06-06 14:12:12', null, null, '0', null, '', '17500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87094', '', 'COREWAY OMEGA@30', '0', '1', ' Sri', '2015-06-08 17:03:50', null, null, '0', null, '', '70000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87095', '', 'COREWAY OMEGA@100', '0', '1', ' Sri', '2015-06-08 17:04:37', null, null, '0', null, '', '165000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87096', '', 'REDWIN ISI 100', '0', '1', ' Ana', '2015-06-09 14:44:38', null, null, '0', null, '', '170000', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87097', '', 'NEOTIGASON 25MG', '0', '1', ' Ana', '2015-06-10 10:19:59', null, null, '0', null, '', '4050000', '0', 'BOX', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87098', '', 'DE COUGH STROBERRY', '0', '1', ' Sri', '2015-06-16 16:05:21', null, null, '0', null, '', '12500', '0', 'BTL', '', '1', null, null, null, null, null);
INSERT INTO `tbartikel` VALUES ('87099', '', 'HEZANDRA', '0', '1', ' Merry', '2015-06-16 18:58:34', null, null, '0', null, '10TAB', '144000', '48000', 'BOX', 'LBR', '3', null, null, null, null, null);

-- ----------------------------
-- Table structure for `tbcompany`
-- ----------------------------
DROP TABLE IF EXISTS `tbcompany`;
CREATE TABLE `tbcompany` (
  `CompanyName` varchar(50) DEFAULT NULL,
  `CompanyAddress` varchar(50) DEFAULT NULL,
  `CompanyCity` varchar(50) DEFAULT NULL,
  `CompanyPhone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbcompany
-- ----------------------------
INSERT INTO `tbcompany` VALUES ('MMToys', 'Komp. Mega Grosir Cempaka Mas', 'Blok L No. 20 - 21', '(021) 429 00 155');

-- ----------------------------
-- Table structure for `tbcostcenter`
-- ----------------------------
DROP TABLE IF EXISTS `tbcostcenter`;
CREATE TABLE `tbcostcenter` (
  `Status` int(11) DEFAULT '1',
  `CostNo` varchar(50) DEFAULT NULL,
  `CostName` varchar(50) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  KEY `CostNo` (`CostNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbcostcenter
-- ----------------------------
INSERT INTO `tbcostcenter` VALUES ('1', 'KM', 'TOKO PASAR PAGI', ' SengCui', '2006-05-31 13:06:23', null, null);
INSERT INTO `tbcostcenter` VALUES ('1', 'PGC', 'TOKO CEMPAKA MAS', ' SengCui', '2006-05-31 13:06:12', null, null);
INSERT INTO `tbcostcenter` VALUES ('1', 'RUKO', 'RUKO CEMPAKA MAS', ' SengCui', '2006-05-31 13:05:53', null, null);

-- ----------------------------
-- Table structure for `tbcounter`
-- ----------------------------
DROP TABLE IF EXISTS `tbcounter`;
CREATE TABLE `tbcounter` (
  `TransactionCode` varchar(20) DEFAULT NULL,
  `TransactionYear` int(11) DEFAULT '0',
  `CounterNumber` double DEFAULT '0',
  KEY `TransactionCode` (`TransactionCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbcounter
-- ----------------------------
INSERT INTO `tbcounter` VALUES ('PB', '2013', '2231');
INSERT INTO `tbcounter` VALUES ('KB', '2013', '204');
INSERT INTO `tbcounter` VALUES ('AC', '2013', '15');
INSERT INTO `tbcounter` VALUES ('PB', '2014', '6431');
INSERT INTO `tbcounter` VALUES ('KB', '2014', '528');
INSERT INTO `tbcounter` VALUES ('AC', '2014', '7');
INSERT INTO `tbcounter` VALUES ('PB', '2015', '2676');
INSERT INTO `tbcounter` VALUES ('KB', '2015', '113');

-- ----------------------------
-- Table structure for `tbcurrency`
-- ----------------------------
DROP TABLE IF EXISTS `tbcurrency`;
CREATE TABLE `tbcurrency` (
  `Status` int(11) DEFAULT '1',
  `CurrencyCode` varchar(50) DEFAULT NULL,
  `CurrencyName` varchar(50) DEFAULT NULL,
  `ExchangeRate` double DEFAULT '0',
  KEY `CurrencyCode` (`CurrencyCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbcurrency
-- ----------------------------
INSERT INTO `tbcurrency` VALUES ('1', 'IDR', 'INDONESIA RUPIAH', '1');
INSERT INTO `tbcurrency` VALUES ('1', 'RGM', 'RINGGIT MALAYSIA', '0');
INSERT INTO `tbcurrency` VALUES ('1', 'SGD', 'SINGAPURA DOLLAR', '5600');
INSERT INTO `tbcurrency` VALUES ('1', 'USD', 'AMERIKA DOLLAR', '9600');

-- ----------------------------
-- Table structure for `tbcustomer`
-- ----------------------------
DROP TABLE IF EXISTS `tbcustomer`;
CREATE TABLE `tbcustomer` (
  `CustomerCode` varchar(50) DEFAULT NULL,
  `CustomerName` varchar(50) DEFAULT NULL,
  `CustomerAddress1` varchar(50) DEFAULT NULL,
  `CustomerAddress2` varchar(50) DEFAULT NULL,
  `CustomerPhone` varchar(50) DEFAULT NULL,
  `CustomerStatus` int(11) DEFAULT '0',
  `CustomerContact` varchar(50) DEFAULT NULL,
  `CreditLimit` double DEFAULT '0',
  `PaymentTerm` double DEFAULT '0',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  `OutletCode` varchar(50) DEFAULT NULL,
  KEY `CustomerCode` (`CustomerCode`),
  KEY `OutletCode` (`OutletCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbcustomer
-- ----------------------------

-- ----------------------------
-- Table structure for `tbmerchant`
-- ----------------------------
DROP TABLE IF EXISTS `tbmerchant`;
CREATE TABLE `tbmerchant` (
  `MerchantID` varchar(50) DEFAULT NULL,
  `Description` varchar(50) DEFAULT NULL,
  KEY `MerchantID` (`MerchantID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbmerchant
-- ----------------------------
INSERT INTO `tbmerchant` VALUES ('BCA', null);

-- ----------------------------
-- Table structure for `tboperator`
-- ----------------------------
DROP TABLE IF EXISTS `tboperator`;
CREATE TABLE `tboperator` (
  `Status` decimal(1,0) DEFAULT NULL,
  `ComputerName` varchar(20) DEFAULT NULL,
  `OperatorID` decimal(5,0) DEFAULT NULL,
  `OperatorName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tboperator
-- ----------------------------
INSERT INTO `tboperator` VALUES ('0', '', '3', 'Ida');
INSERT INTO `tboperator` VALUES ('0', 'SENGCUI-NB', '4', 'Rani');
INSERT INTO `tboperator` VALUES ('1', 'SENGCUI-NB', '1', 'Ida');
INSERT INTO `tboperator` VALUES ('1', 'SENGCUI-NB', '2', 'Ida');
INSERT INTO `tboperator` VALUES ('0', 'SENGCUI-NB', '3', 'Rani');
INSERT INTO `tboperator` VALUES ('0', 'SENGCUI-NB', '5', 'Fitri');
INSERT INTO `tboperator` VALUES ('0', 'SENGCUI-NB', '6', 'Fitri');
INSERT INTO `tboperator` VALUES ('0', 'SENGCUI-NB', '3', 'Rani');
INSERT INTO `tboperator` VALUES ('0', 'SENGCUI-NB', '3', 'Rani');
INSERT INTO `tboperator` VALUES ('0', 'SENGCUI-NB', '5', 'Fitri');
INSERT INTO `tboperator` VALUES ('1', 'SENGCUI-NB', '6', 'Fitri');
INSERT INTO `tboperator` VALUES ('1', 'SENGCUI-NB', '5', 'Fitri');
INSERT INTO `tboperator` VALUES ('1', 'SENGCUI-NB', '3', 'Rani');
INSERT INTO `tboperator` VALUES ('1', 'SENGCUI-NB', '4', 'Rani');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '1', 'Ida');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '2', 'Ida');
INSERT INTO `tboperator` VALUES ('0', 'TO2-PC', '1', 'Ida');
INSERT INTO `tboperator` VALUES ('0', 'TO2-PC', '2', 'Ida');
INSERT INTO `tboperator` VALUES ('0', 'TO2-PC', '3', 'Rani');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '1', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '4', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '5', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '6', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '2', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '4', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'TO2-PC', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('1', 'TO2-PC', '2', 'Indah');
INSERT INTO `tboperator` VALUES ('1', 'TO2-PC', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('1', 'TO2-PC', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('1', 'TO2-PC', '4', 'Kartini');
INSERT INTO `tboperator` VALUES ('1', 'TO2-PC', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('1', 'TO2-PC', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '4', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '2', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '3', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '4', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '2', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '2', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '2', 'Kosman');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '1', 'Kosman');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '2', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '3', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '4', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '4', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '5', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '3', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '4', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '2', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '3', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '4', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('1', 'USER01-PC', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '2', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('1', 'USER01-PC', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('1', 'USER01-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER01-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('1', 'USER01-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('1', 'USER02-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('1', 'USER02-PC', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '1', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '3', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '4', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('1', 'USER02-PC', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('1', 'USER01-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('1', 'USER01-PC', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('1', 'USER02-PC', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('1', 'USER02-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('1', 'USER02-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('1', 'WILLY-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('1', 'WILLY-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '2', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Nova');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Kosman');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '3', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '3', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Kosman');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '4', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '2', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '1', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '1', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Kosman');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '2', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '4', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '5', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '4', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('1', 'KASSA2', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Kosman');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '4', 'Merry');
INSERT INTO `tboperator` VALUES ('1', 'KASSA1', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '2', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('1', 'KASSA2', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '6', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'SERVER-PC', '4', 'Laras');
INSERT INTO `tboperator` VALUES ('1', 'SERVER-PC', '1', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('1', 'SERVER-PC', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '5', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('1', 'KASSA2', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '4', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('1', 'KASSA2', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '1', 'Merry');
INSERT INTO `tboperator` VALUES ('1', 'KASSA1', '1', 'Indah');
INSERT INTO `tboperator` VALUES ('1', 'KASSA2', '6', 'Merry');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Indah');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('1', 'KASSA1', '2', 'Kartini');
INSERT INTO `tboperator` VALUES ('0', 'KASSA2', '2', 'Sri');
INSERT INTO `tboperator` VALUES ('1', 'KASSA2', '2', 'Laras');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Sri');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Mami');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('0', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('1', 'KASSA1', '5', 'Rosa');
INSERT INTO `tboperator` VALUES ('1', 'KASSA1', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('1', 'KASSA1', '3', 'Prati');
INSERT INTO `tboperator` VALUES ('1', 'SERVER-PC', '6', 'Ana');
INSERT INTO `tboperator` VALUES ('1', 'SERVER-PC', '4', 'Sri');
INSERT INTO `tboperator` VALUES ('1', 'SERVER-PC', '3', 'Mami');
INSERT INTO `tboperator` VALUES ('1', 'SERVER-PC', '2', 'Indah');

-- ----------------------------
-- Table structure for `tboutlet`
-- ----------------------------
DROP TABLE IF EXISTS `tboutlet`;
CREATE TABLE `tboutlet` (
  `OutletCode` varchar(50) DEFAULT NULL,
  `OutletName` varchar(50) DEFAULT NULL,
  `OutletAddress1` varchar(50) DEFAULT NULL,
  `OutletAddress2` varchar(50) DEFAULT NULL,
  `OutletPhone` varchar(50) DEFAULT NULL,
  `OutletDefault` int(11) DEFAULT '0',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  KEY `OutletCode` (`OutletCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tboutlet
-- ----------------------------
INSERT INTO `tboutlet` VALUES ('BESAR', 'GUDANG BESAR', '', '', '', '1', ' Willy', '2006-12-10 17:59:49', ' Willy', '2006-12-10 18:00:24');
INSERT INTO `tboutlet` VALUES ('KECIL', 'GUDANG KECIL', '', '', '', '0', ' Willy', '2006-12-10 18:00:06', null, null);

-- ----------------------------
-- Table structure for `tbprefik`
-- ----------------------------
DROP TABLE IF EXISTS `tbprefik`;
CREATE TABLE `tbprefik` (
  `AccPrefik` varchar(50) DEFAULT NULL,
  `AccPrefikName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbprefik
-- ----------------------------
INSERT INTO `tbprefik` VALUES ('1', 'ASSET');
INSERT INTO `tbprefik` VALUES ('2', 'LIABILITIES');
INSERT INTO `tbprefik` VALUES ('3', 'EQUITY');
INSERT INTO `tbprefik` VALUES ('4', 'INCOME');
INSERT INTO `tbprefik` VALUES ('5', 'COST OF SALES');
INSERT INTO `tbprefik` VALUES ('6', 'EXPENSES');
INSERT INTO `tbprefik` VALUES ('8', 'OTHER INCOME');
INSERT INTO `tbprefik` VALUES ('9', 'OTHER EXPENSES');

-- ----------------------------
-- Table structure for `tbracikan`
-- ----------------------------
DROP TABLE IF EXISTS `tbracikan`;
CREATE TABLE `tbracikan` (
  `Persentase` double DEFAULT '0',
  `MinCharge` double DEFAULT '0',
  `MaxCharge` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbracikan
-- ----------------------------
INSERT INTO `tbracikan` VALUES ('0', '7500', '10000');

-- ----------------------------
-- Table structure for `tbsupplier`
-- ----------------------------
DROP TABLE IF EXISTS `tbsupplier`;
CREATE TABLE `tbsupplier` (
  `SupplierCode` varchar(50) DEFAULT NULL,
  `SupplierName` varchar(50) DEFAULT NULL,
  `SupplierAddress1` varchar(50) DEFAULT NULL,
  `SupplierAddress2` varchar(50) DEFAULT NULL,
  `SupplierPhone` varchar(50) DEFAULT NULL,
  `SupplierStatus` int(11) DEFAULT '0',
  `SupplierContact` varchar(50) DEFAULT NULL,
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  KEY `SupplierCode` (`SupplierCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsupplier
-- ----------------------------
INSERT INTO `tbsupplier` VALUES ('SZ01', 'ZAINAL', '', '', '', '1', '', ' Prati', '2013-01-29 10:14:40', ' Prati', '2013-01-29 10:14:47');
INSERT INTO `tbsupplier` VALUES ('SS01', 'SRI', '', '', '', '1', '', ' Merry', '2013-01-29 10:25:07', null, null);
INSERT INTO `tbsupplier` VALUES ('SD04', 'BP.DANIEL', '', '', '', '1', '', ' Merry', '2013-01-29 11:00:19', ' Sri', '2015-05-19 15:42:08');
INSERT INTO `tbsupplier` VALUES ('SS05', 'SINERGI', '', '', '', '1', '', ' Merry', '2013-01-29 12:27:39', null, null);
INSERT INTO `tbsupplier` VALUES ('SU06', 'UNIRA ELCARONA', '', '', '', '1', '', ' Merry', '2013-01-29 12:34:01', null, null);
INSERT INTO `tbsupplier` VALUES ('SK07', 'KARTIKA JAYA', '', '', '', '1', '', ' Merry', '2013-01-29 12:38:03', null, null);
INSERT INTO `tbsupplier` VALUES ('SE08', 'EVA SURYA PRATAMA', '', '', '', '1', '', ' Merry', '2013-01-29 12:49:26', null, null);
INSERT INTO `tbsupplier` VALUES ('SB09', 'EVA SURYA PRATAMA', '', '', '', '1', '', ' Merry', '2013-01-29 12:56:15', null, null);
INSERT INTO `tbsupplier` VALUES ('SG010', 'ANUGRAH ARGON MEDICA', '', '', '', '1', '', ' Merry', '2013-01-29 13:26:55', null, null);
INSERT INTO `tbsupplier` VALUES ('SE012', 'EVA SURYA PARATAMA', '', '', '', '1', '', ' Merry', '2013-01-29 17:22:18', null, null);
INSERT INTO `tbsupplier` VALUES ('SK013', 'KIJANG MAS CITRA SEJATI', '', '', '', '1', '', ' Merry', '2013-01-29 17:44:10', null, null);
INSERT INTO `tbsupplier` VALUES ('SP014', 'PARIT PADANG GLOBAL', '', '', '', '1', '', ' Merry', '2013-01-29 17:59:27', null, null);
INSERT INTO `tbsupplier` VALUES ('SS015', 'ANUGRAH ARGON MEDICA', '', '', '', '1', '', ' Merry', '2013-01-29 18:07:42', null, null);
INSERT INTO `tbsupplier` VALUES ('SD017', 'DAFFA FARMA', '', '', '', '1', '', ' Merry', '2013-01-29 18:22:58', null, null);
INSERT INTO `tbsupplier` VALUES ('SD018', 'DODI', '', '', '', '1', '', ' Merry', '2013-01-29 18:30:25', null, null);
INSERT INTO `tbsupplier` VALUES ('SU019', 'UNITED DICO CITAS', '', '', '', '1', '', ' Merry', '2013-01-29 18:36:53', null, null);
INSERT INTO `tbsupplier` VALUES ('SP019', 'PARAZELSUS', '', '', '', '1', '', ' Merry', '2013-01-29 18:44:20', null, null);
INSERT INTO `tbsupplier` VALUES ('SM020', 'MARGA NUSANTARA JAYA', '', '', '', '1', '', ' Merry', '2013-01-29 18:52:53', null, null);
INSERT INTO `tbsupplier` VALUES ('ST022', 'TEMPO', '', '', '', '1', '', ' Merry', '2013-01-29 18:59:51', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK  1', 'RETURAN', '', '', '', '1', '', ' Merry', '2013-01-30 12:28:08', ' Merry', '2013-09-05 12:56:10');
INSERT INTO `tbsupplier` VALUES ('SD05', 'DAFFA FARMA', '', '', '', '1', '', ' Merry', '2013-01-30 17:29:24', null, null);
INSERT INTO `tbsupplier` VALUES ('SV027', 'VAN`S FARMA', '', '', '', '1', '', ' Merry', '2013-01-30 18:03:41', null, null);
INSERT INTO `tbsupplier` VALUES ('SA028', 'APL', '', '', '', '1', '', ' Merry', '2013-01-30 18:13:19', null, null);
INSERT INTO `tbsupplier` VALUES ('ST029', 'TRI MEGAH MAKMUR', '', '', '', '1', '', ' Merry', '2013-01-30 18:45:19', null, null);
INSERT INTO `tbsupplier` VALUES ('SA030', 'ANUGRAH ARGON MEDICA', '', '', '', '1', '', ' Merry', '2013-01-30 18:48:38', null, null);
INSERT INTO `tbsupplier` VALUES ('SS031', 'SEMAR ENAM PULUH', '', '', '', '1', '', ' Merry', '2013-01-30 18:53:35', null, null);
INSERT INTO `tbsupplier` VALUES ('SS032', 'SAN PRIMA SEJATI', '', '', '', '1', '', ' Merry', '2013-01-30 18:56:08', null, null);
INSERT INTO `tbsupplier` VALUES ('SB033', 'BIOMED', '', '', '', '1', '', ' Merry', '2013-01-30 19:05:30', null, null);
INSERT INTO `tbsupplier` VALUES ('SS034', 'SRI', '', '', '', '1', '', ' Merry', '2013-01-30 19:07:48', null, null);
INSERT INTO `tbsupplier` VALUES ('SU034', 'ULI', '', '', '', '1', '', ' Merry', '2013-01-30 19:09:10', null, null);
INSERT INTO `tbsupplier` VALUES ('SK035', 'KEBAYORAN FARMA', '', '', '', '1', '', ' Merry', '2013-01-30 19:16:50', null, null);
INSERT INTO `tbsupplier` VALUES ('SP036', 'PULAU GURU', '', '', '', '1', '', ' Merry', '2013-01-30 19:18:23', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK II', 'PT.BIOTECH ', '', '', '', '1', '', ' Merry', '2013-01-31 14:55:05', ' Sri', '2015-05-19 12:58:20');
INSERT INTO `tbsupplier` VALUES ('SM035', 'MARIA', '', '', '', '1', '', ' Merry', '2013-01-31 16:00:28', null, null);
INSERT INTO `tbsupplier` VALUES ('SD037', 'PT DOSNIROHA', '', '', '', '1', '', ' Merry', '2013-01-31 16:21:34', null, null);
INSERT INTO `tbsupplier` VALUES ('SE038', 'PT ENSEVAL', '', '', '', '1', '', ' Merry', '2013-01-31 16:24:02', null, null);
INSERT INTO `tbsupplier` VALUES ('SP039', ' PT PARIT PADANG', '', '', '', '1', '', ' Merry', '2013-01-31 16:30:26', null, null);
INSERT INTO `tbsupplier` VALUES ('SA040', 'PT ANTARMITRA SEMBADA', '', '', '', '1', '', ' Merry', '2013-01-31 16:32:50', null, null);
INSERT INTO `tbsupplier` VALUES ('SA041', ' APOTIK DAFFA FARMA', '', '', '', '1', '', ' Merry', '2013-01-31 16:36:39', null, null);
INSERT INTO `tbsupplier` VALUES ('SI043', ' IR', '', '', '', '1', '', ' Merry', '2013-01-31 17:59:34', null, null);
INSERT INTO `tbsupplier` VALUES ('SZ043', 'ZAINAL', '', '', '', '1', '', ' Merry', '2013-01-31 18:25:33', null, null);
INSERT INTO `tbsupplier` VALUES ('SH44', 'HERMAN', '', '', '', '1', '', ' Merry', '2013-01-31 19:22:33', null, null);
INSERT INTO `tbsupplier` VALUES ('SA043', 'PT ANTARMITRA JAYA', '', '', '', '1', '', ' Merry', '2013-02-01 12:21:07', null, null);
INSERT INTO `tbsupplier` VALUES ('SM045', ' MPI', '', '', '', '1', '', ' Merry', '2013-02-01 12:33:04', null, null);
INSERT INTO `tbsupplier` VALUES ('SG046', ' GARCIA', '', '', '', '1', '', ' Merry', '2013-02-01 12:38:12', null, null);
INSERT INTO `tbsupplier` VALUES ('SG047', ' GLORIENTA', '', '', '', '1', '', ' Merry', '2013-02-01 16:30:41', null, null);
INSERT INTO `tbsupplier` VALUES ('SW049', ' BPK WAHYU KOYO', '', '', '', '1', '', ' Merry', '2013-02-01 16:36:44', null, null);
INSERT INTO `tbsupplier` VALUES ('SS050', 'BPK SIAN', '', '', '', '1', '', ' Merry', '2013-02-01 16:43:33', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 3', 'BAGIAN SALEP', '', '', '', '1', '', ' Merry', '2013-02-02 13:14:47', null, null);
INSERT INTO `tbsupplier` VALUES ('SR049', 'PT RAJAWALI NUSINDO', '', '', '', '1', '', ' Merry', '2013-02-02 15:12:05', null, null);
INSERT INTO `tbsupplier` VALUES ('SE050', 'BPK EDO', '', '', '', '1', '', ' Merry', '2013-02-02 15:39:16', null, null);
INSERT INTO `tbsupplier` VALUES ('SA051', 'BPK AGUS .A.', '', '', '', '1', '', ' Merry', '2013-02-02 15:44:22', null, null);
INSERT INTO `tbsupplier` VALUES ('SM052', 'MBS', '', '', '', '1', '', ' Merry', '2013-02-02 16:07:36', null, null);
INSERT INTO `tbsupplier` VALUES ('SB052', ' BPK BUDI FRILENS', '', '', '', '1', '', ' Merry', '2013-02-02 18:51:40', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 4', 'BP.SAFFA', '', '', '', '1', '', ' Merry', '2013-02-03 14:15:50', ' Sri', '2015-05-19 15:53:34');
INSERT INTO `tbsupplier` VALUES ('SD052', 'BPK DONI', '', '', '', '1', '', ' Merry', '2013-02-03 15:34:32', null, null);
INSERT INTO `tbsupplier` VALUES ('SK052', 'PT KALLISTA PRIMA', '', '', '', '1', '', ' Merry', '2013-02-04 12:27:06', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 5', ' BAGIAN SANBE ', '', '', '', '1', '', ' Merry', '2013-02-04 13:42:55', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 6', 'GENERIK', '', '', '', '1', '', ' Merry', '2013-02-04 15:00:08', null, null);
INSERT INTO `tbsupplier` VALUES ('SA53', 'BPK ANWAR', '', '', '', '1', '', ' Merry', '2013-02-04 17:35:48', null, null);
INSERT INTO `tbsupplier` VALUES ('SE053', 'BPK ERICK', '', '', '', '1', '', ' Merry', '2013-02-06 13:23:32', null, null);
INSERT INTO `tbsupplier` VALUES ('SM056', 'PT MULTI HUSADA FARMA', '', '', '', '1', '', ' Merry', '2013-02-06 16:58:18', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 7', 'BAGIAN DIBAWAH SANBE', '', '', '', '1', '', ' Merry', '2013-02-06 18:30:40', null, null);
INSERT INTO `tbsupplier` VALUES ('SP056', 'PT PRISMA', '', '', '', '1', '', ' Merry', '2013-02-06 18:53:55', null, null);
INSERT INTO `tbsupplier` VALUES ('SB056', 'PT.BAHTERA SEHAT SEJATERAH', '', '', '', '1', '', ' Merry', '2013-02-07 10:45:27', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 8', 'BAGIAN KIRI(DR ATAS--BAWAH)', '', '', '', '1', '', ' Merry', '2013-02-07 11:14:19', null, null);
INSERT INTO `tbsupplier` VALUES ('SI057', ' PT INCONTECH', '', '', '', '1', '', ' Merry', '2013-02-07 15:44:58', null, null);
INSERT INTO `tbsupplier` VALUES ('SG056', 'BPK GANDI', '', '', '', '1', '', ' Merry', '2013-02-08 16:44:19', null, null);
INSERT INTO `tbsupplier` VALUES ('SY056', 'BP YONO', '', '', '', '1', '', ' Merry', '2013-02-08 18:34:23', null, null);
INSERT INTO `tbsupplier` VALUES ('SM041', 'PT MERAPI UTAMA PHARMA', '', '', '', '1', '', ' Merry', '2013-02-11 14:54:09', null, null);
INSERT INTO `tbsupplier` VALUES ('SS041', 'PT.SAWAH BESAR FARMA', '', '', '', '1', '', ' Merry', '2013-02-12 14:30:46', null, null);
INSERT INTO `tbsupplier` VALUES ('SN057', 'BPK NURDIN', '', '', '', '1', '', ' Merry', '2013-02-12 15:09:26', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 9', 'BAGIAN ATAS KULKAS&SEKITARNY', '', '', '', '1', '', ' Merry', '2013-02-12 16:33:53', null, null);
INSERT INTO `tbsupplier` VALUES ('SB035', 'BP.BUDI', '', '', '', '1', '', ' Merry', '2013-02-13 17:45:01', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 10', 'BAGIAN KACA DEPAN & SEKITARNY', '', '', '', '1', '', ' Merry', '2013-02-14 11:30:02', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 11', 'BAGIAN ASCARDIA & LAIN2', '', '', '', '1', '', ' Merry', '2013-02-14 15:38:43', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 12', 'BAGIAN LIPANTYL & LAIN2', '', '', '', '1', '', ' Merry', '2013-02-14 16:14:39', null, null);
INSERT INTO `tbsupplier` VALUES ('SA022', 'APOTEK CITTA FARMA', '', '', '', '1', '', ' Merry', '2013-02-14 17:50:59', null, null);
INSERT INTO `tbsupplier` VALUES ('SP057', ' PT. PENTA VALENT', '', '', '', '1', '', ' Merry', '2013-02-15 15:36:14', null, null);
INSERT INTO `tbsupplier` VALUES ('SP022', 'PT.MAKMUR', '', '', '', '1', '', ' Merry', '2013-02-16 12:24:11', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 13', 'BAGIAN TETES MATA', '', '', '', '1', '', ' Merry', '2013-02-16 15:37:40', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 14  ', 'BAGIAN LEMARI DEPAN', '', '', '', '1', '', ' Merry', '2013-02-16 16:17:21', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 15', 'PT. GARCIA', '', '', '', '1', '', ' Merry', '2013-02-18 13:45:56', ' Merry', '2013-09-05 12:49:18');
INSERT INTO `tbsupplier` VALUES ('RAK 16', 'PT JAMU IBOE', '', '', '', '1', '', ' Merry', '2013-02-18 13:48:13', null, null);
INSERT INTO `tbsupplier` VALUES ('SB059', 'PT BINA SAN PRIMA', '', '', '', '1', '', ' Merry', '2013-02-19 14:58:50', null, null);
INSERT INTO `tbsupplier` VALUES ('SP061', ' PT PRIMA SOLUSI MEDICA', '', '', '', '1', '', ' Merry', '2013-02-21 13:30:17', null, null);
INSERT INTO `tbsupplier` VALUES ('SI061', 'PT INTI DIVA MANDIRI', '', '', '', '1', '', ' Merry', '2013-02-22 12:05:15', null, null);
INSERT INTO `tbsupplier` VALUES ('SW062', ' BPK WEBI', '', '', '', '1', '', ' Merry', '2013-02-23 18:35:31', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 17', 'BAGIAN MINYAK ANGIN', '', '', '', '1', '', ' Merry', '2013-02-26 18:28:50', null, null);
INSERT INTO `tbsupplier` VALUES ('SN062', 'PT  NUTRI GIZINDO NUSANTARA', '', '', '', '1', '', ' Merry', '2013-02-27 13:33:44', null, null);
INSERT INTO `tbsupplier` VALUES ('ST063', 'BPK TONNY', '', '', '', '1', '', ' Merry', '2013-02-27 17:44:03', null, null);
INSERT INTO `tbsupplier` VALUES ('SB063', 'PT BINTANG KENCANA ARTHA', '', '', '', '1', '', ' Merry', '2013-02-27 18:05:12', null, null);
INSERT INTO `tbsupplier` VALUES ('SK064', 'BPK KARTOLO', '', '', '', '1', '', ' Merry', '2013-03-02 14:15:23', null, null);
INSERT INTO `tbsupplier` VALUES ('SI064', 'BP.MAIKEL', '', '', '', '1', '', ' Merry', '2013-03-09 16:41:52', ' Sri', '2015-05-19 12:27:56');
INSERT INTO `tbsupplier` VALUES ('RAK 18', 'APOTIK LULU SEHAT', '', '', '', '1', '', ' Merry', '2013-03-09 18:28:36', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 19', 'APOTEK SURYA BW', '', '', '', '1', '', ' Merry', '2013-03-09 18:32:45', ' Merry', '2013-09-04 09:06:39');
INSERT INTO `tbsupplier` VALUES ('SM065', 'PT MMM SEJAHTERA', '', '', '', '1', '', ' Merry', '2013-03-11 15:42:45', null, null);
INSERT INTO `tbsupplier` VALUES ('SI066', 'BPK IKRA W', '', '', '', '1', '', ' Merry', '2013-03-11 15:56:06', null, null);
INSERT INTO `tbsupplier` VALUES ('SG066', 'PT GLOBAL HARMONY RETAILINDO', '', '', '', '1', '', ' Merry', '2013-03-11 19:12:37', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 20', 'PT.BIOTECH MARKETING', '', '', '', '1', '', ' Merry', '2013-03-13 15:01:58', null, null);
INSERT INTO `tbsupplier` VALUES ('SD064', 'PT DAYA MUDA AGUNG', '', '', '', '1', '', ' Merry', '2013-03-15 13:25:28', null, null);
INSERT INTO `tbsupplier` VALUES ('SM066', 'PAPI MUJARAB', '', '', '', '1', '', ' Merry', '2013-03-15 18:01:11', null, null);
INSERT INTO `tbsupplier` VALUES ('SB066', 'GUDANG BARBE', '', '', '', '1', '', ' Merry', '2013-03-16 10:59:43', null, null);
INSERT INTO `tbsupplier` VALUES ('SE067', 'BPK EFENDY', '', '', '', '1', '', ' Merry', '2013-03-17 15:13:19', null, null);
INSERT INTO `tbsupplier` VALUES ('SP067', 'APOTIK POPULER KING', '', '', '', '1', '', ' Merry', '2013-03-19 18:25:30', null, null);
INSERT INTO `tbsupplier` VALUES ('SS067', 'PT SAPTA SARI TAMA', '', '', '', '1', '', ' Kosman', '2013-03-20 16:28:37', null, null);
INSERT INTO `tbsupplier` VALUES ('SR068', 'APOTIK RAMA', '', '', '', '1', '', ' Merry', '2013-03-21 14:48:12', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 21', 'APOTIK ANEKA', '', '', '', '1', '', ' Merry', '2013-03-21 16:11:51', null, null);
INSERT INTO `tbsupplier` VALUES ('SA44', 'APOTEK SEHAT JAYA', '', '', '', '1', '', ' Merry', '2013-03-25 12:44:50', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK 22', 'ASIA CENTRAL MEDICA', '', '', '', '1', '', ' Merry', '2013-03-27 15:45:28', ' Merry', '2013-10-01 13:53:18');
INSERT INTO `tbsupplier` VALUES ('RAK 23', 'PT.GLORIENTA', '', '', '', '1', '', ' Merry', '2013-03-28 13:48:31', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK.24', 'PT.PRIMA SOLUSI MEDIKA', '', '', '', '1', '', ' Merry', '2013-04-13 16:33:38', null, null);
INSERT INTO `tbsupplier` VALUES ('RAK.25', 'KEMENGAN', '', '', '', '1', '', ' Merry', '2013-04-13 16:43:15', null, null);
INSERT INTO `tbsupplier` VALUES ('SW068', 'PT WILLNGTON', '', '', '', '1', '', ' Merry', '2013-04-18 18:27:24', null, null);
INSERT INTO `tbsupplier` VALUES ('SA069', 'SURYA NYIUR', '', '', '', '1', '', ' Merry', '2013-04-30 18:28:48', ' Merry', '2013-09-04 11:13:59');
INSERT INTO `tbsupplier` VALUES ('RAK 24', 'PT.NUTRISI ALAM SARI', '', '', '', '1', '', ' Merry', '2013-05-01 16:01:15', null, null);
INSERT INTO `tbsupplier` VALUES ('SZ02', 'SURYA PASIFIC', '', '', '', '1', '', ' Merry', '2013-09-08 16:20:06', null, null);
INSERT INTO `tbsupplier` VALUES ('SZ044', 'SUPERINDO', '', '', '', '1', '', ' Merry', '2013-09-12 15:41:35', null, null);
INSERT INTO `tbsupplier` VALUES ('SZ045', 'CV. ANUGERAH SUKSES ABADI', '', '', '', '1', '', ' Merry', '2014-05-17 16:43:45', null, null);
INSERT INTO `tbsupplier` VALUES ('ST021', 'TALENTA SUKMA SEJATI', '', '', '', '1', '', ' Ana', '2014-07-17 15:59:24', null, null);
INSERT INTO `tbsupplier` VALUES ('SZ046', 'JALUR SUTRAMAS', '', '', '', '1', '', ' Merry', '2014-08-18 13:24:13', null, null);
INSERT INTO `tbsupplier` VALUES ('SZ047', 'APOTEK DAMAI', '', '', '', '1', '', ' Merry', '2014-09-03 19:10:09', null, null);

-- ----------------------------
-- Table structure for `tbsystem`
-- ----------------------------
DROP TABLE IF EXISTS `tbsystem`;
CREATE TABLE `tbsystem` (
  `CompanyName` varchar(50) DEFAULT NULL,
  `CompanyAddress` varchar(50) DEFAULT NULL,
  `CompanyCity` varchar(50) DEFAULT NULL,
  `CompanyPhone` varchar(50) DEFAULT NULL,
  `StrukHeader1` varchar(50) DEFAULT NULL,
  `StrukHeader2` varchar(50) DEFAULT NULL,
  `StrukHeader3` varchar(50) DEFAULT NULL,
  `StrukHeader4` varchar(50) DEFAULT NULL,
  `StrukFooter1` varchar(50) DEFAULT NULL,
  `StrukFooter2` varchar(50) DEFAULT NULL,
  `StrukFooter3` varchar(50) DEFAULT NULL,
  `StrukFooter4` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsystem
-- ----------------------------
INSERT INTO `tbsystem` VALUES ('Apotek SURYA', 'Pancoran', null, null, null, '', '', '', '** TERIMA KASIH **', 'DELIVERY ORDER :', '0877-854-63888', '92 687 687');

-- ----------------------------
-- Table structure for `tbsystem1`
-- ----------------------------
DROP TABLE IF EXISTS `tbsystem1`;
CREATE TABLE `tbsystem1` (
  `CompanyName` varchar(50) DEFAULT NULL,
  `CompanyAddress` varchar(50) DEFAULT NULL,
  `CompanyCity` varchar(50) DEFAULT NULL,
  `CompanyPhone` varchar(50) DEFAULT NULL,
  `StrukHeader1` varchar(50) DEFAULT NULL,
  `StrukHeader2` varchar(50) DEFAULT NULL,
  `StrukHeader3` varchar(50) DEFAULT NULL,
  `StrukHeader4` varchar(50) DEFAULT NULL,
  `StrukFooter1` varchar(50) DEFAULT NULL,
  `StrukFooter2` varchar(50) DEFAULT NULL,
  `StrukFooter3` varchar(50) DEFAULT NULL,
  `StrukFooter4` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbsystem1
-- ----------------------------
INSERT INTO `tbsystem1` VALUES ('MM Toys', 'Cempaka Mas Blok L 20', 'Jakarta', '(021) 42900155', null, '', '', '', '** TERIMA KASIH **', '', '', '');

-- ----------------------------
-- Table structure for `tbuser`
-- ----------------------------
DROP TABLE IF EXISTS `tbuser`;
CREATE TABLE `tbuser` (
  `Status` tinyint(4) DEFAULT '1',
  `UserID` varchar(50) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `Module` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Supervisor` int(11) DEFAULT '0',
  `Menu` varchar(250) DEFAULT NULL,
  KEY `UserName` (`UserName`),
  KEY `UserID` (`UserID`),
  KEY `Status` (`Status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbuser
-- ----------------------------
INSERT INTO `tbuser` VALUES ('0', 'SengCui', 'SengCui', '1', '999', '1', null);
INSERT INTO `tbuser` VALUES ('1', 'Kosman', 'Kosman', '1', '0', '1', null);
INSERT INTO `tbuser` VALUES ('1', 'Ana', 'Ana', '1', '1', '0', null);
INSERT INTO `tbuser` VALUES ('1', 'Laras', 'Laras', '1', '2', '0', null);
INSERT INTO `tbuser` VALUES ('1', 'Rosa', 'Rosa', '1', '3', '0', null);
INSERT INTO `tbuser` VALUES ('1', 'Indah', 'Indah', '1', '4', '0', null);
INSERT INTO `tbuser` VALUES ('1', 'Sri', 'Sri', '1', '5', '0', null);
INSERT INTO `tbuser` VALUES ('1', 'Prati', 'Prati', '1', '6', '0', null);
INSERT INTO `tbuser` VALUES ('1', 'Kartini', 'Kartini', '1', '7', '0', null);
INSERT INTO `tbuser` VALUES ('1', 'Merry', 'Merry', '1', '8', '1', null);
INSERT INTO `tbuser` VALUES ('1', 'Mami', 'Mami', '1', '9', '0', null);

-- ----------------------------
-- Table structure for `tkartustock`
-- ----------------------------
DROP TABLE IF EXISTS `tkartustock`;
CREATE TABLE `tkartustock` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `ReferenceNo` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `NoUrut` int(11) DEFAULT '0',
  `ArtikelCode` varchar(50) DEFAULT NULL,
  `Qty1` int(11) DEFAULT '0',
  `Price1` double DEFAULT '0',
  `Qty2` int(11) DEFAULT NULL,
  `Price2` double DEFAULT NULL,
  `OutletCode` varchar(50) DEFAULT NULL,
  `EntryBy` varchar(50) DEFAULT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `CostPrice` double DEFAULT '0',
  `QtyBeli` double DEFAULT '0',
  `Discount` double DEFAULT '0',
  `Batch` varchar(50) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `Type` int(11) DEFAULT '0',
  KEY `ArtikelCode` (`ArtikelCode`),
  KEY `OutletCode` (`OutletCode`),
  KEY `ReferenceNo` (`ReferenceNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tkartustock
-- ----------------------------
INSERT INTO `tkartustock` VALUES ('1', 'PB130109', '2013-08-31 00:00:00', 'SS050', '1', '1', '81667', '10', '0', '0', '0', 'KECIL', ' Merry', '2013-08-31 10:30:53', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'KASSA1Ana4', '2013-10-04 00:00:00', null, '-1', '1', '01428', '1', '19000', '0', '0', 'KECIL', 'Ana', '2013-10-04 14:13:05', '0', '0', '0', 'BOTOL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'KASSA1Ana4', '2013-10-04 00:00:00', null, '-1', '1', '80059', '1', '31000', '0', '0', 'KECIL', 'Ana', '2013-10-04 14:13:45', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB140152', '2014-01-09 00:00:00', 'SP056', '1', '1', '81547', '5', '0', '0', '0', 'KECIL', ' Merry', '2014-01-09 15:19:57', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB140152', '2014-01-09 00:00:00', 'SP056', '1', '2', '81524', '5', '0', '0', '0', 'KECIL', ' Merry', '2014-01-09 15:20:07', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB140152', '2014-01-09 00:00:00', 'SP056', '1', '3', '01122', '5', '0', '0', '0', 'KECIL', ' Merry', '2014-01-09 15:20:21', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB140152', '2014-01-09 00:00:00', 'SP056', '1', '4', '81630', '10', '0', '0', '0', 'KECIL', ' Merry', '2014-01-09 15:20:32', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB140152', '2014-01-09 00:00:00', 'SP056', '1', '5', '00675', '36', '0', '0', '0', 'KECIL', ' Ana', '2014-01-09 15:29:55', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB140152', '2014-01-09 00:00:00', 'SP056', '1', '6', '81539', '2', '0', '0', '0', 'KECIL', ' Ana', '2014-01-09 15:30:14', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB140152', '2014-01-09 00:00:00', 'SP056', '1', '7', '81231', '1', '0', '0', '0', 'KECIL', ' Ana', '2014-01-09 15:30:22', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB140152', '2014-01-09 00:00:00', 'SP056', '1', '8', '84837', '3', '0', '0', '0', 'KECIL', ' Ana', '2014-01-09 15:32:23', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB140152', '2014-01-09 00:00:00', 'SP056', '1', '9', '81234', '1', '0', '0', '0', 'KECIL', ' Ana', '2014-01-09 15:34:01', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB140152', '2014-01-09 00:00:00', 'SP056', '1', '10', '03102', '5', '0', '0', '0', 'KECIL', ' Ana', '2014-01-09 15:34:09', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB140152', '2014-01-09 00:00:00', 'SP056', '1', '11', '81338', '5', '0', '0', '0', 'KECIL', ' Ana', '2014-01-09 15:34:19', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB140433', '2014-01-24 00:00:00', 'SE053', '1', '1', '85047', '5', '0', '0', '0', 'KECIL', ' Ana', '2014-01-24 18:37:09', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB140433', '2014-01-24 00:00:00', 'SE053', '1', '2', '01003', '3', '0', '0', '0', 'KECIL', ' Ana', '2014-01-24 18:37:25', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB140433', '2014-01-24 00:00:00', 'SE053', '1', '3', '01208', '5', '0', '0', '0', 'KECIL', ' Ana', '2014-01-24 18:37:34', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB140433', '2014-01-24 00:00:00', 'SE053', '1', '4', '80979', '5', '0', '0', '0', 'KECIL', ' Ana', '2014-01-24 18:37:41', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'KASSA2Merry3', '2014-06-17 00:00:00', null, '-1', '1', '01686', '0', '0', '2', '60000', 'KECIL', 'Merry', '2014-06-17 18:04:25', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'KASSA2Merry3', '2014-06-17 00:00:00', null, '-1', '1', '85197', '0', '0', '4', '10000', 'KECIL', 'Merry', '2014-06-17 18:04:44', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'KASSA2Laras1', '2014-08-22 00:00:00', null, '-1', '1', '00410', '1', '21000', '0', '0', 'KECIL', 'Laras', '2014-08-22 10:36:19', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'KASSA2Laras1', '2014-08-22 00:00:00', null, '-1', '1', '02711', '0', '0', '1', '5000', 'KECIL', 'Laras', '2014-08-22 10:36:34', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCPrati6', '2014-09-04 00:00:00', null, '-1', '1', '01174', '5', '160000', '0', '0', 'KECIL', 'Prati', '2014-09-04 15:57:28', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri2', '2014-09-25 00:00:00', null, '-1', '1', '01251', '0', '0', '1', '23000', 'KECIL', 'Sri', '2014-09-25 16:36:00', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri2', '2014-09-25 00:00:00', null, '-1', '1', '01251', '1', '115000', '0', '0', 'KECIL', 'Sri', '2014-09-25 16:36:31', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri2', '2014-09-26 00:00:00', null, '-1', '1', '01077', '1', '44000', '0', '0', 'KECIL', 'Sri', '2014-09-26 15:27:11', '0', '0', '0', 'BOTOL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri2', '2014-09-26 00:00:00', null, '-1', '1', '02999', '0', '0', '1', '140000', 'KECIL', 'Sri', '2014-09-26 16:45:20', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri2', '2014-09-26 00:00:00', null, '-1', '1', '02999', '1', '135000', '0', '140000', 'KECIL', 'Sri', '2014-09-26 16:45:20', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri2', '2014-09-30 00:00:00', null, '-1', '1', '86002', '1', '5000', '0', '0', 'KECIL', 'Sri', '2014-09-30 15:28:32', '0', '0', '0', 'TUB', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri2', '2014-09-30 00:00:00', null, '-1', '1', '81759', '1', '11000', '0', '0', 'KECIL', 'Sri', '2014-09-30 15:28:58', '0', '0', '0', 'TUBE', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri2', '2014-10-01 00:00:00', null, '-1', '1', '81815', '1', '35000', '0', '0', 'KECIL', 'Sri', '2014-10-01 13:18:20', '0', '0', '0', 'BOX', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCMami6', '2014-10-21 00:00:00', null, '-1', '1', '81330', '2', '80000', '0', '0', 'KECIL', 'Mami', '2014-10-21 09:50:35', '0', '0', '0', 'BOX', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCMami6', '2014-10-21 00:00:00', null, '-1', '1', '81330', '0', '0', '2', '17000', 'KECIL', 'Mami', '2014-10-21 09:50:47', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCMami1', '2014-12-10 00:00:00', null, '-1', '1', '81424', '2', '150000', '0', '0', 'KECIL', 'Mami', '2014-12-10 16:34:16', '0', '0', '0', 'BOX', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCMami1', '2014-12-10 00:00:00', null, '-1', '1', '02712', '2', '45000', '0', '0', 'KECIL', 'Mami', '2014-12-10 16:33:56', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCMami1', '2014-12-10 00:00:00', null, '-1', '1', '01013', '1', '30000', '0', '0', 'KECIL', 'Mami', '2014-12-10 16:34:04', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '1', '01821', '15', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:34:54', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '2', '02228', '6', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:35:02', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '3', '00138', '40', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:35:10', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '4', '02062', '10', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:35:19', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '5', '02712', '20', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:35:29', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '6', '00817', '5', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:35:37', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '7', '02711', '54', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:35:45', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '8', '00598', '20', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:35:53', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '9', '02438', '20', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:36:01', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '10', '01479', '5', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:36:11', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '11', '00641', '5', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:36:23', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '12', '02157', '18', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:36:32', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '13', '00894', '3', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:36:39', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '14', '85180', '10', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:36:45', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '15', '00668', '5', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:36:55', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '16', '01281', '10', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:37:37', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '17', '01285', '10', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:37:47', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '18', '01520', '15', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:37:54', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '19', '80656', '5', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:38:05', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '20', '80419', '10', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:38:41', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '21', '80418', '10', '0', '0', '0', 'KECIL', ' Ana', '2014-12-13 13:38:49', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', '1', '22', '81359', '12', '0', '0', '0', 'KECIL', ' Merry', '2014-12-15 17:58:42', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri6', '2015-02-17 00:00:00', null, '-1', '1', '81528', '1', '575000', '0', '0', 'KECIL', 'Sri', '2015-02-17 14:23:48', '0', '0', '0', 'BOX', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri6', '2015-02-17 00:00:00', null, '-1', '1', '85024', '1', '35000', '0', '0', 'KECIL', 'Sri', '2015-02-17 14:23:55', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri6', '2015-02-17 00:00:00', null, '-1', '1', '81276', '1', '35000', '0', '0', 'KECIL', 'Sri', '2015-02-17 14:24:04', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'KASSA2Laras6', '2015-03-30 00:00:00', null, '-1', '1', '81409', '0', '0', '1', '45000', 'KECIL', 'Laras', '2015-03-30 14:02:06', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB151521', '2015-04-03 00:00:00', 'SI043', '1', '1', '01288', '10', '0', '0', '0', 'KECIL', ' Sri', '2015-04-03 13:23:27', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB151521', '2015-04-03 00:00:00', 'SI043', '1', '2', '02688', '5', '0', '0', '0', 'KECIL', ' Sri', '2015-04-03 13:23:36', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCRosa4', '2015-04-05 00:00:00', null, '-1', '1', '81117', '1', '200000', '0', '0', 'KECIL', 'Rosa', '2015-04-05 15:21:24', '0', '0', '0', 'BOX', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCRosa4', '2015-04-05 00:00:00', null, '-1', '1', '81330', '1', '80000', '0', '0', 'KECIL', 'Rosa', '2015-04-05 15:21:28', '0', '0', '0', 'BOX', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'KASSA2Ana1', '2015-04-11 00:00:00', null, '-1', '1', '00605', '0', '0', '1', '36000', 'KECIL', 'Ana', '2015-04-11 16:19:24', '0', '0', '0', '', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna2', '2015-04-21 00:00:00', null, '-1', '1', '80150', '2', '175000', '0', '0', 'KECIL', 'Ana', '2015-04-21 10:05:44', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna2', '2015-04-21 00:00:00', null, '-1', '1', '80730', '0', '0', '4', '22000', 'KECIL', 'Ana', '2015-04-21 10:05:50', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna2', '2015-04-21 00:00:00', null, '-1', '1', '03200', '0', '0', '1', '47500', 'KECIL', 'Ana', '2015-04-21 10:05:56', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna2', '2015-04-21 00:00:00', null, '-1', '1', '81234', '0', '0', '1', '75000', 'KECIL', 'Ana', '2015-04-21 10:06:05', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna2', '2015-04-21 00:00:00', null, '-1', '1', '86199', '1', '42000', '0', '0', 'KECIL', 'Ana', '2015-04-21 10:06:30', '0', '0', '0', 'TUBE', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna2', '2015-04-21 00:00:00', null, '-1', '1', '02226', '0', '0', '2', '6000', 'KECIL', 'Ana', '2015-04-21 10:06:37', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna2', '2015-04-21 00:00:00', null, '-1', '1', '81748', '1', '35000', '0', '0', 'KECIL', 'Ana', '2015-04-21 10:06:49', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna2', '2015-04-21 00:00:00', null, '-1', '1', '81510', '0', '0', '2', '21000', 'KECIL', 'Ana', '2015-04-21 10:07:13', '0', '0', '0', 'TUBE', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna2', '2015-04-21 00:00:00', null, '-1', '1', '02897', '1', '24000', '0', '0', 'KECIL', 'Ana', '2015-04-21 10:07:18', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna2', '2015-04-21 00:00:00', null, '-1', '1', '81289', '1', '53000', '0', '0', 'KECIL', 'Ana', '2015-04-21 10:07:25', '0', '0', '0', 'TUB', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna2', '2015-04-21 00:00:00', null, '-1', '1', '01559', '0', '0', '2', '8000', 'KECIL', 'Ana', '2015-04-21 10:07:31', '0', '0', '0', 'SACHET', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna2', '2015-04-21 00:00:00', null, '-1', '1', '02711', '1', '22500', '0', '0', 'KECIL', 'Ana', '2015-04-21 10:07:37', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna2', '2015-04-21 00:00:00', null, '-1', '1', '86983', '1', '31000', '0', '0', 'KECIL', 'Ana', '2015-04-21 10:40:31', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB151684', '2015-04-14 00:00:00', 'SB063', '1', '1', '01693', '20', '0', '0', '0', 'KECIL', ' Merry', '2015-04-15 10:26:14', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB151684', '2015-04-14 00:00:00', 'SB063', '1', '2', '81264', '20', '0', '0', '0', 'KECIL', ' Merry', '2015-04-15 10:26:21', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'PB151684', '2015-04-14 00:00:00', 'SB063', '1', '3', '01692', '30', '0', '0', '0', 'KECIL', ' Merry', '2015-04-15 10:26:27', '0', '0', '0', '', null, '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna4', '2015-04-29 00:00:00', null, '-1', '1', '80778', '1', '85000', '0', '0', 'KECIL', 'Ana', '2015-04-29 12:39:58', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna4', '2015-04-29 00:00:00', null, '-1', '1', '81520', '1', '130000', '0', '0', 'KECIL', 'Ana', '2015-04-29 12:40:05', '0', '0', '0', 'BOX', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna4', '2015-04-29 00:00:00', null, '-1', '1', '02157', '2', '15000', '0', '0', 'KECIL', 'Ana', '2015-04-29 12:40:20', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna4', '2015-04-29 00:00:00', null, '-1', '1', '81625', '1', '17500', '0', '0', 'KECIL', 'Ana', '2015-04-29 13:33:57', '0', '0', '0', 'BOX', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna4', '2015-04-29 00:00:00', null, '-1', '1', '84857', '1', '45000', '0', '0', 'KECIL', 'Ana', '2015-04-29 12:40:31', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna4', '2015-04-29 00:00:00', null, '-1', '1', '02191', '2', '90000', '0', '0', 'KECIL', 'Ana', '2015-04-29 12:40:39', '0', '0', '0', 'BOTOL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna4', '2015-04-29 00:00:00', null, '-1', '1', '02897', '1', '24000', '0', '0', 'KECIL', 'Ana', '2015-04-29 12:40:47', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna4', '2015-04-29 00:00:00', null, '-1', '1', '81289', '1', '53000', '0', '0', 'KECIL', 'Ana', '2015-04-29 13:35:16', '0', '0', '0', 'TUB', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna4', '2015-04-29 00:00:00', null, '-1', '1', '81276', '1', '35000', '0', '0', 'KECIL', 'Ana', '2015-04-29 12:41:02', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCAna4', '2015-04-29 00:00:00', null, '-1', '1', '85235', '1', '35000', '0', '0', 'KECIL', 'Ana', '2015-04-29 13:34:03', '0', '0', '0', 'SATUAN', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'KASSA1Mami5', '2015-04-30 00:00:00', null, '-1', '1', '80730', '0', '0', '1', '22000', 'KECIL', 'Mami', '2015-04-30 16:43:54', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCMerry5', '2015-05-05 00:00:00', null, '-1', '1', '00545', '0', '0', '1', '52500', 'KECIL', 'Merry', '2015-05-05 17:26:08', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCMerry5', '2015-05-05 00:00:00', null, '-1', '1', '00545', '1', '262500', '0', '0', 'KECIL', 'Merry', '2015-05-05 17:26:37', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCMerry5', '2015-05-05 00:00:00', null, '-1', '1', '85992', '1', '420000', '0', '0', 'KECIL', 'Merry', '2015-05-05 17:29:01', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'KASSA2Ana6', '2015-05-21 00:00:00', null, '-1', '1', '80456', '0', '0', '1', '85000', 'KECIL', 'Ana', '2015-05-21 15:51:00', '0', '0', '0', '', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'PA20150523000222', '2015-05-23 00:00:00', null, '-1', '1', '01474', '1', '180000', '0', '0', 'KECIL', 'Kartini', '2015-05-23 12:49:00', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'PA20150523000222', '2015-05-23 00:00:00', null, '-1', '1', '81388', '0', '0', '1', '137500', 'KECIL', 'Kartini', '2015-05-23 12:49:07', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'PA20150523000222', '2015-05-23 00:00:00', null, '-1', '1', '81326', '0', '0', '1', '16000', 'KECIL', 'Kartini', '2015-05-23 12:49:30', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'PA20150523000229', '2015-05-23 00:00:00', null, '-1', '1', '80058', '0', '0', '1', '31000', 'KECIL', 'Ana', '2015-05-23 12:54:06', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'PA20150523000229', '2015-05-23 00:00:00', null, '-1', '1', '01479', '0', '0', '6', '3000', 'KECIL', 'Ana', '2015-05-23 12:56:55', '0', '0', '0', 'BIJI', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCLaras4', '2015-06-01 00:00:00', null, '-1', '1', '01535', '1', '680000', '0', '0', 'KECIL', 'Laras', '2015-06-01 11:10:58', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCLaras4', '2015-06-01 00:00:00', null, '-1', '1', '81255', '1', '550000', '0', '0', 'KECIL', 'Laras', '2015-06-01 11:11:08', '0', '0', '0', 'BOX', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCLaras4', '2015-06-01 00:00:00', null, '-1', '1', '00122', '0', '0', '3', '49000', 'KECIL', 'Laras', '2015-06-01 11:11:16', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCLaras4', '2015-06-01 00:00:00', null, '-1', '1', '81263', '1', '390000', '0', '0', 'KECIL', 'Laras', '2015-06-01 11:11:20', '0', '0', '0', 'BOX', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCLaras4', '2015-06-01 00:00:00', null, '-1', '1', '01015', '10', '38000', '0', '0', 'KECIL', 'Laras', '2015-06-01 11:11:27', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCLaras4', '2015-06-09 00:00:00', null, '-1', '1', '81453', '0', '0', '1', '35000', 'KECIL', 'Laras', '2015-06-09 16:06:38', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCLaras4', '2015-06-09 00:00:00', null, '-1', '1', '81453', '1', '350000', '0', '0', 'KECIL', 'Laras', '2015-06-09 16:07:27', '0', '0', '0', 'BOX', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCLaras4', '2015-06-09 00:00:00', null, '-1', '1', '00575', '0', '0', '5', '18000', 'KECIL', 'Laras', '2015-06-09 16:07:52', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCLaras4', '2015-06-09 00:00:00', null, '-1', '1', '00575', '1', '90000', '0', '0', 'KECIL', 'Laras', '2015-06-09 16:08:01', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCLaras4', '2015-06-09 00:00:00', null, '-1', '1', '00618', '1', '85000', '0', '0', 'KECIL', 'Laras', '2015-06-09 16:15:46', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCLaras4', '2015-06-09 00:00:00', null, '-1', '1', '00618', '0', '0', '5', '19000', 'KECIL', 'Laras', '2015-06-09 16:15:59', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCLaras4', '2015-06-09 00:00:00', null, '-1', '1', '02515', '1', '200000', '0', '0', 'KECIL', 'Laras', '2015-06-09 16:56:57', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCLaras4', '2015-06-11 00:00:00', null, '-1', '1', '00606', '0', '0', '1', '27000', 'KECIL', 'Laras', '2015-06-11 10:42:11', '0', '0', '0', '', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCPrati2', '2015-06-11 00:00:00', null, '-1', '1', '01241', '1', '455000', '0', '0', 'KECIL', 'Prati', '2015-06-11 12:22:12', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCPrati2', '2015-06-11 00:00:00', null, '-1', '1', '81382', '2', '195000', '0', '0', 'KECIL', 'Prati', '2015-06-11 12:22:27', '0', '0', '0', 'BOX', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCPrati2', '2015-06-11 00:00:00', null, '-1', '1', '00751', '10', '30000', '0', '0', 'KECIL', 'Prati', '2015-06-11 12:22:45', '0', '0', '0', 'BOTOL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCPrati2', '2015-06-11 00:00:00', null, '-1', '1', '01684', '2', '525000', '0', '0', 'KECIL', 'Prati', '2015-06-11 12:26:44', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCPrati2', '2015-06-11 00:00:00', null, '-1', '1', '02080', '40', '45000', '0', '0', 'KECIL', 'Prati', '2015-06-11 12:26:25', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCPrati2', '2015-06-11 00:00:00', null, '-1', '1', '84898', '1', '26000', '0', '0', 'KECIL', 'Prati', '2015-06-11 13:45:40', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCRosa3', '2015-06-13 00:00:00', null, '-1', '1', '00138', '2', '15000', '0', '0', 'KECIL', 'Rosa', '2015-06-13 13:44:52', '0', '0', '0', 'BOX', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCRosa3', '2015-06-13 00:00:00', null, '-1', '1', '81424', '1', '150000', '0', '0', 'KECIL', 'Rosa', '2015-06-13 13:44:56', '0', '0', '0', 'BOX', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCRosa3', '2015-06-13 00:00:00', null, '-1', '1', '00553', '5', '35000', '0', '0', 'KECIL', 'Rosa', '2015-06-13 13:45:46', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCRosa3', '2015-06-13 00:00:00', null, '-1', '1', '00213', '5', '14000', '0', '0', 'KECIL', 'Rosa', '2015-06-13 13:45:52', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri4', '2015-06-16 00:00:00', null, '-1', '1', '00638', '0', '0', '3', '70000', 'KECIL', 'Sri', '2015-06-16 17:34:35', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri4', '2015-06-16 00:00:00', null, '-1', '1', '00638', '1', '210000', '0', '0', 'KECIL', 'Sri', '2015-06-16 17:34:44', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri4', '2015-06-16 00:00:00', null, '-1', '1', '00920', '1', '65000', '0', '0', 'KECIL', 'Sri', '2015-06-16 17:36:03', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri4', '2015-06-16 00:00:00', null, '-1', '1', '01452', '0', '0', '3', '95000', 'KECIL', 'Sri', '2015-06-16 17:38:14', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri4', '2015-06-16 00:00:00', null, '-1', '1', '01452', '1', '285000', '0', '0', 'KECIL', 'Sri', '2015-06-16 17:38:23', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri4', '2015-06-16 00:00:00', null, '-1', '1', '01838', '0', '0', '5', '82500', 'KECIL', 'Sri', '2015-06-16 17:38:35', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri4', '2015-06-16 00:00:00', null, '-1', '1', '01838', '1', '400000', '0', '0', 'KECIL', 'Sri', '2015-06-16 17:38:53', '0', '0', '0', 'DUS', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri4', '2015-06-16 00:00:00', null, '-1', '1', '01066', '1', '35000', '0', '0', 'KECIL', 'Sri', '2015-06-16 17:56:01', '0', '0', '0', 'BTL', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri4', '2015-06-16 00:00:00', null, '-1', '1', '85184', '0', '0', '3', '35000', 'KECIL', 'Sri', '2015-06-16 18:54:21', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri4', '2015-06-16 00:00:00', null, '-1', '1', '85184', '1', '105000', '0', '0', 'KECIL', 'Sri', '2015-06-16 18:54:32', '0', '0', '0', 'BOX', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'SERVER-PCSri4', '2015-06-16 00:00:00', null, '-1', '1', '81392', '0', '0', '12', '39000', 'KECIL', 'Sri', '2015-06-16 18:57:05', '0', '0', '0', 'LBR', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'KASSA1Indah1', '2015-06-16 00:00:00', null, '-1', '1', '02284', '1', '800000', '0', '0', 'KECIL', 'Indah', '2015-06-16 19:01:28', '0', '0', '0', 'BUAH', '', '0');
INSERT INTO `tkartustock` VALUES ('1', 'KASSA1Rosa5', '2015-06-16 00:00:00', null, '-1', '1', '01531', '0', '0', '1', '67500', 'KECIL', 'Rosa', '2015-06-16 19:10:56', '0', '0', '0', 'LBR', '', '0');

-- ----------------------------
-- Table structure for `topnamedetail`
-- ----------------------------
DROP TABLE IF EXISTS `topnamedetail`;
CREATE TABLE `topnamedetail` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `ReferenceNo` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `NoUrut` int(11) DEFAULT '0',
  `ArtikelCode` varchar(50) DEFAULT NULL,
  `Qty` int(11) DEFAULT '0',
  `Price` double DEFAULT '0',
  `OutletCode` varchar(50) DEFAULT NULL,
  `EntryBy` varchar(50) DEFAULT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `ArtikelCode` (`ArtikelCode`),
  KEY `OutletCode` (`OutletCode`),
  KEY `ReferenceNo` (`ReferenceNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topnamedetail
-- ----------------------------
INSERT INTO `topnamedetail` VALUES ('1', 'tRUK050001', '2005-10-04 00:00:00', null, '1', '1', '303861', '528', '0', 'RUK', ' ROSITA', '2005-10-07 20:31:23');
INSERT INTO `topnamedetail` VALUES ('1', 'tRUK050001', '2005-10-04 00:00:00', null, '1', '2', '303861', '192', '0', 'RUK', ' ROSITA', '2005-10-07 20:31:49');

-- ----------------------------
-- Table structure for `topnameheader`
-- ----------------------------
DROP TABLE IF EXISTS `topnameheader`;
CREATE TABLE `topnameheader` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `SupplierCode` varchar(50) DEFAULT NULL,
  `OutletCode` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `Remark` varchar(50) DEFAULT NULL,
  `TotalQty` double DEFAULT '0',
  `TotalNilai` double DEFAULT '0',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  KEY `OutletCode` (`OutletCode`),
  KEY `SupplierCode` (`SupplierCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of topnameheader
-- ----------------------------
INSERT INTO `topnameheader` VALUES ('1', 'tRUK050001', '2005-10-04 00:00:00', null, 'RUK', '1', '131', '720', '0', ' ROSITA', '2005-10-07 20:31:24', ' ROSITA', '2005-10-07 20:31:49');

-- ----------------------------
-- Table structure for `tradjustment`
-- ----------------------------
DROP TABLE IF EXISTS `tradjustment`;
CREATE TABLE `tradjustment` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `SupplierCode` varchar(50) DEFAULT NULL,
  `OutletCode` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `Remark` varchar(50) DEFAULT NULL,
  `TotalQty` double DEFAULT '0',
  `TotalNilai` double DEFAULT '0',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  KEY `OutletCode` (`OutletCode`),
  KEY `SupplierCode` (`SupplierCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tradjustment
-- ----------------------------

-- ----------------------------
-- Table structure for `trbeginingbalance`
-- ----------------------------
DROP TABLE IF EXISTS `trbeginingbalance`;
CREATE TABLE `trbeginingbalance` (
  `AccYear` int(11) DEFAULT '0',
  `AccMonth` int(11) DEFAULT '0',
  `AccNo` varchar(50) DEFAULT NULL,
  `AccDebet` double DEFAULT '0',
  `AccCredit` double DEFAULT '0',
  `AccNormal` double DEFAULT '0',
  `AccCurrency` varchar(50) DEFAULT NULL,
  `AccName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trbeginingbalance
-- ----------------------------
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1110', '0', '0', '2', '1 - IDR', 'KAS RUKO');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1120', '0', '0', '2', '1 - IDR', 'KAS PGC');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1130', '0', '0', '2', '1 - IDR', 'KAS KM');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1140', '0', '0', '2', '1 - IDR', 'PETTY CASH');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1210', '0', '0', '2', '1 - IDR', 'BANK BCA - AC 8770170789');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1220', '0', '0', '2', '1 - IDR', 'BANK BCA - AC 0013380845');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1311', '0', '0', '2', '1 - IDR', 'PAK CHRIST');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1349', '0', '0', '2', '1 - IDR', 'PIUTANG PGC LAIN');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1381', '0', '0', '2', '1 - IDR', 'PIUTANG ROMI');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1382', '0', '0', '2', '1 - IDR', 'PIUTANG FADIL');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1383', '0', '0', '2', '1 - IDR', 'PIUTANG CONG');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1384', '0', '0', '2', '1 - IDR', 'PIUTANG HOY');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1385', '0', '0', '2', '1 - IDR', 'PIUTANG KO SALIM');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1386', '0', '0', '2', '1 - IDR', 'PIUTANG ROSITA');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1387', '0', '0', '2', '1 - IDR', 'PIUTANG ERNI');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1388', '0', '0', '2', '1 - IDR', 'PIUTANG ASUAN');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1389', '0', '0', '2', '1 - IDR', 'PIUTANG METI');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1390', '0', '0', '2', '1 - IDR', 'PIUTANG ALIONG');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1391', '0', '0', '2', '1 - IDR', 'PIUTANG ROBIN');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1392', '0', '0', '2', '1 - IDR', 'PIUTANG SALIM');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1393', '0', '0', '2', '1 - IDR', 'PIUTANG HARRY');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1399', '0', '0', '2', '1 - IDR', 'PIUTANG LAIN-LAIN');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1410', '0', '0', '2', '1 - IDR', 'PERSEDIAAN BARANG');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1420', '0', '0', '2', '1 - IDR', 'PERSEDIAAN SPARE PART');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1490', '0', '0', '2', '1 - IDR', 'PERSEDIAAN LAIN-LAIN');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1510', '0', '0', '2', '1 - IDR', 'SEWA DI BAYAR DI MUKA');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1810', '0', '0', '2', '1 - IDR', 'BANGUNAN');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1820', '0', '0', '2', '1 - IDR', 'KENDARAAN');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1830', '0', '0', '2', '1 - IDR', 'PERALATAN KANTOR');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1910', '0', '0', '0', '1 - IDR', 'AKUM. PENY. BANGUNAN');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1920', '0', '0', '0', '1 - IDR', 'AKUM. PENY. KENDARAAN');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '1930', '0', '0', '0', '1 - IDR', 'AKUM. PENY. PERLENGKAP KANTOR');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '2110', '0', '0', '0', '1 - IDR', 'SUPPLIER ?');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '2210', '0', '0', '0', '1 - IDR', 'HUTANG BANK ?');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '2220', '0', '0', '0', '1 - IDR', 'HUTANG HAGA MM');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '2230', '0', '0', '2', '1 - IDR', 'HUTANG FIF');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '2290', '0', '0', '0', '1 - IDR', 'HUTANG TITIPAN CARD');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '2310', '0', '0', '0', '1 - IDR', 'HUTANG SI ?');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '2410', '0', '0', '0', '1 - IDR', 'BIAYA TELEPON');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '2420', '0', '0', '0', '1 - IDR', 'BIAYA LISTRIK');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '2430', '0', '0', '0', '1 - IDR', 'BIAYA PAM');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '3110', '0', '0', '0', '1 - IDR', 'MODAL ROBIN');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '3120', '0', '0', '0', '1 - IDR', 'MODAL SALIM');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '3130', '0', '0', '0', '1 - IDR', 'MODAL HARRY');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '3910', '0', '0', '0', '1 - IDR', 'LABA RUGI DI TAHAN');
INSERT INTO `trbeginingbalance` VALUES ('2005', '0', '3920', '0', '0', '0', '1 - IDR', 'LABA RUGI TAHUN BERJALAN');

-- ----------------------------
-- Table structure for `trjoborder`
-- ----------------------------
DROP TABLE IF EXISTS `trjoborder`;
CREATE TABLE `trjoborder` (
  `Status` int(11) DEFAULT '1',
  `JobNo` varchar(50) DEFAULT NULL,
  `JobDate` datetime DEFAULT NULL,
  `JobName` varchar(50) DEFAULT NULL,
  `JobDescription` varchar(50) DEFAULT NULL,
  `EntryDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `EntryBy` varchar(50) DEFAULT NULL,
  `ClosedBy` varchar(50) DEFAULT NULL,
  `ClosedDate` datetime DEFAULT NULL,
  KEY `JobNo` (`JobNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trjoborder
-- ----------------------------
INSERT INTO `trjoborder` VALUES ('1', '0001', '2005-06-10 00:00:00', 'TIKET PESAWAT TERBANG', '', '2005-06-10 18:23:08', '', '', null);
INSERT INTO `trjoborder` VALUES ('1', '0003', '2005-08-02 00:00:00', 'BELI KAPAL', '', '2005-08-02 09:45:45', '', '', '2005-08-02 09:46:08');

-- ----------------------------
-- Table structure for `trmutasi`
-- ----------------------------
DROP TABLE IF EXISTS `trmutasi`;
CREATE TABLE `trmutasi` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `OutletDari` varchar(50) DEFAULT NULL,
  `OutletKe` varchar(50) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `TotalQty` double DEFAULT '0',
  `TotalNilai` double DEFAULT '0',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  KEY `OutletKe` (`OutletKe`),
  KEY `OutletDari` (`OutletDari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trmutasi
-- ----------------------------

-- ----------------------------
-- Table structure for `trpenjualan`
-- ----------------------------
DROP TABLE IF EXISTS `trpenjualan`;
CREATE TABLE `trpenjualan` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `CustomerCode` varchar(50) DEFAULT NULL,
  `OutletCode` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `Remark` varchar(50) DEFAULT NULL,
  `TotalQty` double DEFAULT '0',
  `TotalNilai` double DEFAULT '0',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  `TotalBayar` double DEFAULT '0',
  `CustomerRemark` text,
  KEY `OutletCode` (`OutletCode`),
  KEY `CustomerCode` (`CustomerCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `trpergerakan`
-- ----------------------------
DROP TABLE IF EXISTS `trpergerakan`;
CREATE TABLE `trpergerakan` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `SupplierCode` varchar(50) DEFAULT NULL,
  `OutletCode` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `Remark` varchar(50) DEFAULT NULL,
  `TotalPPN` double DEFAULT '0',
  `TotalNilai` double DEFAULT '0',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  `PostingStatus` int(11) DEFAULT '0',
  KEY `OutletCode` (`OutletCode`),
  KEY `SupplierCode` (`SupplierCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `trsaldo`
-- ----------------------------
DROP TABLE IF EXISTS `trsaldo`;
CREATE TABLE `trsaldo` (
  `ArtikelCode` varchar(50) DEFAULT NULL,
  `NoProses` varchar(20) DEFAULT NULL,
  `QtyOpname` double DEFAULT '0',
  `QtyStock` double DEFAULT '0',
  `OutletCode` varchar(50) DEFAULT NULL,
  KEY `ArtikelCode` (`ArtikelCode`),
  KEY `OutletCode` (`OutletCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trsaldo
-- ----------------------------

-- ----------------------------
-- Table structure for `trsaldoacc`
-- ----------------------------
DROP TABLE IF EXISTS `trsaldoacc`;
CREATE TABLE `trsaldoacc` (
  `AccYear` int(11) DEFAULT '0',
  `AccMonth` int(11) DEFAULT '0',
  `AccNo` varchar(50) DEFAULT NULL,
  `AccDebet` double DEFAULT '0',
  `AccCredit` double DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trsaldoacc
-- ----------------------------

-- ----------------------------
-- Table structure for `trsaldojual`
-- ----------------------------
DROP TABLE IF EXISTS `trsaldojual`;
CREATE TABLE `trsaldojual` (
  `ArtikelCode` varchar(50) DEFAULT NULL,
  `QtyJual` double DEFAULT '0',
  KEY `ArtikelCode` (`ArtikelCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trsaldojual
-- ----------------------------

-- ----------------------------
-- Table structure for `trsaldostok`
-- ----------------------------
DROP TABLE IF EXISTS `trsaldostok`;
CREATE TABLE `trsaldostok` (
  `ArtikelCode` varchar(50) DEFAULT NULL,
  `QtyStok` double DEFAULT '0',
  KEY `ArtikelCode` (`ArtikelCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trsaldostok
-- ----------------------------

-- ----------------------------
-- Table structure for `ttradjustment`
-- ----------------------------
DROP TABLE IF EXISTS `ttradjustment`;
CREATE TABLE `ttradjustment` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `SupplierCode` varchar(50) DEFAULT NULL,
  `OutletCode` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `Remark` varchar(50) DEFAULT NULL,
  `TotalQty` double DEFAULT '0',
  `TotalNilai` double DEFAULT '0',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  KEY `OutletCode` (`OutletCode`),
  KEY `SupplierCode` (`SupplierCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ttradjustment
-- ----------------------------

-- ----------------------------
-- Table structure for `ttrmutasi`
-- ----------------------------
DROP TABLE IF EXISTS `ttrmutasi`;
CREATE TABLE `ttrmutasi` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `OutletDari` varchar(50) DEFAULT NULL,
  `OutletKe` varchar(50) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `TotalQty` double DEFAULT '0',
  `TotalNilai` double DEFAULT '0',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  KEY `OutletKe` (`OutletKe`),
  KEY `OutletDari` (`OutletDari`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ttrmutasi
-- ----------------------------
INSERT INTO `ttrmutasi` VALUES ('2', 'RPG050137', '2005-10-26 00:00:00', 'PG', 'RUK', '', '106', '106742', ' ROSITA', '2005-10-26 15:29:52', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'RPG050136', '2005-10-12 00:00:00', 'PG', 'RUK', '', '1440', '1450080', ' METI', '2005-10-12 15:38:26', null, null);
INSERT INTO `ttrmutasi` VALUES ('3', 'RPGC050113', '2005-10-17 00:00:00', 'PGC', 'RUK', '', '21', '146769', ' METI', '2005-10-17 16:03:01', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'RPGC050114', '2005-10-17 00:00:00', 'PGC', 'RUK', '', '8', '89256', ' METI', '2005-10-21 14:20:42', ' METI', '2005-10-21 14:20:51');
INSERT INTO `ttrmutasi` VALUES ('2', 'RPGC050115', '2005-10-21 00:00:00', 'PGC', 'RUK', '', '1', '109007', ' METI', '2005-10-22 09:54:10', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'RPGC050116', '2005-10-22 00:00:00', 'PGC', 'RUK', '', '1', '41434', ' ROSITA', '2005-10-22 13:06:33', null, null);
INSERT INTO `ttrmutasi` VALUES ('1', 'RPGC050110', '2005-09-17 00:00:00', 'PGC', 'RUK', '', '2', '168314', ' METI', '2005-10-03 16:10:14', null, null);
INSERT INTO `ttrmutasi` VALUES ('1', 'RPGC050111', '2005-09-24 00:00:00', 'PGC', 'RUK', '', '2', '463674', ' METI', '2005-10-03 16:10:59', ' METI', '2005-03-10 16:11:29');
INSERT INTO `ttrmutasi` VALUES ('2', 'RPGC050112', '2005-10-13 00:00:00', 'PGC', 'RUK', '', '2', '221235', ' METI', '2005-10-14 12:26:15', ' METI', '2005-10-14 12:26:26');
INSERT INTO `ttrmutasi` VALUES ('3', 'PGC050640', '2005-10-17 00:00:00', 'RUK', 'PGC', '', '1', '1887972', ' SALIM', '2005-10-17 13:53:08', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050641', '2005-10-17 00:00:00', 'RUK', 'PGC', '', '85', '1722808', ' METI', '2005-10-17 14:30:12', ' METI', '2005-10-17 14:32:34');
INSERT INTO `ttrmutasi` VALUES ('2', 'PG050480', '2005-10-18 00:00:00', 'RUK', 'PG', '', '9668', '11542080', ' METI', '2005-10-18 10:17:02', ' METI', '2005-10-18 10:17:48');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050642', '2005-10-18 00:00:00', 'RUK', 'PGC', '', '30', '18409386', ' METI', '2005-10-18 17:37:19', ' METI', '2005-10-18 17:39:11');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050643', '2005-10-19 00:00:00', 'RUK', 'PGC', '', '5', '2146332', ' METI', '2005-10-19 10:30:16', ' METI', '2005-10-19 10:36:21');
INSERT INTO `ttrmutasi` VALUES ('4', 'PGC050644', '2005-10-19 00:00:00', 'RUK', 'PGC', '', '536', '21054007', ' METI', '2005-10-19 12:44:06', ' METI', '2005-10-19 14:30:00');
INSERT INTO `ttrmutasi` VALUES ('3', 'PG050481', '2005-10-19 00:00:00', 'RUK', 'PG', '', '370', '3684930', ' METI', '2005-10-19 13:31:33', ' ROSITA', '2005-10-18 23:38:23');
INSERT INTO `ttrmutasi` VALUES ('2', 'PG050482', '2005-10-19 00:00:00', 'RUK', 'PG', '', '2568', '12611448', ' ROSITA', '2005-10-18 23:49:23', ' ROSITA', '2005-10-18 23:51:10');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050645', '2005-10-19 00:00:00', 'RUK', 'PGC', '', '12', '91968', ' METI', '2005-10-19 15:03:16', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050646', '2005-10-19 00:00:00', 'RUK', 'PGC', '', '25', '81550', ' METI', '2005-10-19 15:34:59', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050647', '2005-10-20 00:00:00', 'RUK', 'PGC', '', '1', '1933859', ' METI', '2005-10-20 13:03:14', null, null);
INSERT INTO `ttrmutasi` VALUES ('3', 'PG050483', '2005-10-20 00:00:00', 'RUK', 'PG', '', '4836', '17789808', ' ROSITA', '2005-10-19 23:20:15', ' ROSITA', '2005-10-19 23:22:29');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050648', '2005-10-20 00:00:00', 'RUK', 'PGC', '', '1', '563150', ' METI', '2005-10-20 13:22:45', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050649', '2005-10-21 00:00:00', 'RUK', 'PGC', '', '93', '5491638', ' METI', '2005-10-21 12:16:29', ' METI', '2005-10-21 12:18:18');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050650', '2005-10-21 00:00:00', 'RUK', 'PGC', '', '46', '3090264', ' METI', '2005-10-21 16:13:26', ' METI', '2005-10-21 16:14:40');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050651', '2005-10-21 00:00:00', 'RUK', 'PGC', '', '6', '1214394', ' METI', '2005-10-21 16:23:34', ' METI', '2005-10-21 16:23:40');
INSERT INTO `ttrmutasi` VALUES ('0', 'PGC050652', '2005-10-22 00:00:00', 'RUK', 'PGC', '', '39', '12460052', ' ROSITA', '2005-10-21 22:45:55', ' ROSITA', '2005-10-22 13:14:56');
INSERT INTO `ttrmutasi` VALUES ('0', 'PGC050652', '2005-10-22 00:00:00', 'RUK', 'PGC', '', '39', '12460052', ' ROSITA', '2005-10-21 22:58:25', ' ROSITA', '2005-10-22 13:14:56');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050653', '2005-10-22 00:00:00', 'RUK', 'PGC', '', '38', '12418618', ' METI', '2005-10-22 13:29:49', ' METI', '2005-10-22 13:31:53');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050654', '2005-10-22 00:00:00', 'RUK', 'PGC', '', '48', '293616', ' METI', '2005-10-22 14:10:37', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PG050484', '2005-10-22 00:00:00', 'RUK', 'PG', '', '1150', '9569820', ' METI', '2005-10-22 15:28:24', ' METI', '2005-10-22 15:31:23');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050655', '2005-10-22 00:00:00', 'RUK', 'PGC', '', '1', '795558', ' METI', '2005-10-22 15:40:50', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050656', '2005-10-22 00:00:00', 'RUK', 'PGC', '', '1', '795558', ' METI', '2005-10-22 15:44:15', null, null);
INSERT INTO `ttrmutasi` VALUES ('3', 'PGC050657', '2005-10-24 00:00:00', 'RUK', 'PGC', '', '2', '2549429', ' ROSITA', '2005-10-24 11:45:24', ' ROSITA', '2005-10-24 11:45:50');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050658', '2005-10-23 00:00:00', 'RUK', 'PGC', '', '572', '652308', ' ROSITA', '2005-10-24 12:20:03', ' ROSITA', '2005-10-24 12:23:04');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050659', '2005-10-24 00:00:00', 'RUK', 'PGC', '', '10', '210070', ' ROSITA', '2005-10-24 13:11:58', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050660', '2005-10-24 00:00:00', 'RUK', 'PGC', '', '13', '4590866', ' ROSITA', '2005-10-24 14:05:43', ' ROSITA', '2005-10-24 14:10:51');
INSERT INTO `ttrmutasi` VALUES ('3', 'PG050485', '2005-10-24 00:00:00', 'RUK', 'PG', '', '1680', '10276560', ' ROSITA', '2005-10-24 14:35:20', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050661', '2005-10-24 00:00:00', 'RUK', 'PGC', '', '31', '1076193', ' ROSITA', '2005-10-24 15:31:20', ' ROSITA', '2005-10-24 15:32:21');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050662', '2005-10-25 00:00:00', 'RUK', 'PGC', '', '9', '1851903', ' SALIM', '2005-10-25 11:06:10', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PG050486', '2005-10-25 00:00:00', 'RUK', 'PG', '', '480', '2936160', ' SALIM', '2005-10-25 11:09:09', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PG050487', '2005-10-26 00:00:00', 'RUK', 'PG', '', '120', '919680', ' SALIM', '2005-10-26 10:22:01', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050663', '2005-10-26 00:00:00', 'RUK', 'PGC', '', '16', '1391796', ' SALIM', '2005-10-26 14:47:51', ' SALIM', '2005-10-26 14:55:35');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050664', '2005-10-26 00:00:00', 'RUK', 'PGC', '', '1', '325610', ' SALIM', '2005-10-26 15:00:56', null, null);
INSERT INTO `ttrmutasi` VALUES ('3', 'PGC050665', '2005-10-27 00:00:00', 'RUK', 'PGC', '', '57', '2928223', ' SALIM', '2005-10-27 13:37:55', ' SALIM', '2005-10-27 13:41:30');
INSERT INTO `ttrmutasi` VALUES ('3', 'PGC050666', '2005-10-27 00:00:00', 'RUK', 'PGC', '', '44', '2938675', ' SALIM', '2005-10-27 13:42:11', ' SALIM', '2005-10-27 13:43:33');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050667', '2005-10-28 00:00:00', 'RUK', 'PGC', '', '1418', '2272648', ' METI', '2005-10-28 14:21:53', ' METI', '2005-10-28 14:28:50');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050668', '2005-10-28 00:00:00', 'RUK', 'PGC', '', '2', '674224', ' METI', '2005-10-28 15:21:40', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050669', '2005-10-28 00:00:00', 'RUK', 'PGC', '', '43', '2860614', ' METI', '2005-10-28 15:45:16', ' METI', '2005-10-28 15:45:31');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050670', '2005-10-28 00:00:00', 'RUK', 'PGC', '', '50', '3512600', ' METI', '2005-10-28 16:20:43', null, null);
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050603', '2005-09-20 00:00:00', 'RUK', 'PGC', '', '1440', '1450080', ' METI', '2005-10-03 15:01:26', null, null);
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050604', '2005-09-20 00:00:00', 'RUK', 'PGC', '', '2', '1353625', ' METI', '2005-10-03 15:02:26', ' METI', '2005-03-10 15:02:33');
INSERT INTO `ttrmutasi` VALUES ('1', 'PG050476', '2005-09-28 00:00:00', 'RUK', 'PG', '', '816', '2192000', ' METI', '2005-10-03 15:12:46', ' METI', '2005-03-10 15:13:01');
INSERT INTO `ttrmutasi` VALUES ('1', 'PG050477', '2005-09-29 00:00:00', 'RUK', 'PG', '', '18', '1800000', ' METI', '2005-10-03 15:14:01', null, null);
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050605', '2005-09-21 00:00:00', 'RUK', 'PGC', '', '2', '3547432', ' METI', '2005-10-03 15:41:01', ' METI', '2005-03-10 15:41:39');
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050606', '2005-09-22 00:00:00', 'RUK', 'PGC', '', '6', '2548950', ' METI', '2005-10-03 15:42:31', null, null);
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050607', '2005-09-22 00:00:00', 'RUK', 'PGC', '', '729', '1941752', ' METI', '2005-10-03 15:45:30', ' METI', '2005-03-10 15:46:00');
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050608', '2005-09-23 00:00:00', 'RUK', 'PGC', '', '32', '17877418', ' METI', '2005-10-03 15:49:45', ' METI', '2005-03-10 15:50:09');
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050611', '2005-09-26 00:00:00', 'RUK', 'PGC', '', '2', '5832766', ' METI', '2005-10-03 16:28:13', null, null);
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050612', '2005-09-27 00:00:00', 'RUK', 'PGC', '', '22', '2995184', ' METI', '2005-10-03 16:28:54', ' METI', '2005-03-10 16:29:55');
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050613', '2005-09-28 00:00:00', 'RUK', 'PGC', '', '2160', '2175120', ' METI', '2005-10-03 16:30:29', null, null);
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050614', '2005-09-28 00:00:00', 'RUK', 'PGC', '', '12', '1200000', ' METI', '2005-10-03 16:30:51', null, null);
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050615', '2005-09-28 00:00:00', 'RUK', 'PGC', '', '22', '185364', ' METI', '2005-10-03 16:31:16', ' METI', '2005-03-10 16:35:41');
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050616', '2005-09-28 00:00:00', 'RUK', 'PGC', '', '2', '217840', ' METI', '2005-10-03 16:39:56', null, null);
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050617', '2005-09-29 00:00:00', 'RUK', 'PGC', '', '9', '22232', ' METI', '2005-10-03 16:40:43', ' METI', '2005-03-10 16:40:54');
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050619', '2005-09-29 00:00:00', 'RUK', 'PGC', '', '10', '665464', ' METI', '2005-10-03 16:43:51', ' METI', '2005-03-10 16:44:28');
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050620', '2005-09-30 00:00:00', 'RUK', 'PGC', '', '12', '8763420', ' METI', '2005-10-03 16:45:33', ' SALIM', '2005-10-14 15:50:07');
INSERT INTO `ttrmutasi` VALUES ('1', 'PGC050621', '2005-09-30 00:00:00', 'RUK', 'PGC', '', '1440', '1450080', ' METI', '2005-10-03 16:46:45', null, null);
INSERT INTO `ttrmutasi` VALUES ('3', 'PGC050622', '2005-10-01 00:00:00', 'RUK', 'PGC', '', '47', '1782429', ' METI', '2005-10-03 16:47:29', ' METI', '2005-03-10 16:48:05');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050623', '2005-10-03 00:00:00', 'RUK', 'PGC', '', '1440', '1450080', ' METI', '2005-10-03 16:51:15', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050624', '2005-10-03 00:00:00', 'RUK', 'PGC', '', '16', '2015179', ' METI', '2005-10-03 16:55:07', ' METI', '2005-10-03 16:55:43');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050625', '2005-10-03 00:00:00', 'RUK', 'PGC', '', '26', '3237834', ' METI', '2005-10-03 16:56:21', ' METI', '2005-10-03 16:56:44');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050626', '2005-10-03 00:00:00', 'RUK', 'PGC', '', '18', '8460220', ' METI', '2005-10-03 17:05:11', ' METI', '2005-10-03 17:07:14');
INSERT INTO `ttrmutasi` VALUES ('2', 'PG050478', '2005-10-04 00:00:00', 'RUK', 'PG', '', '4320', '4350240', ' METI', '2005-10-04 11:44:32', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050627', '2005-10-04 00:00:00', 'RUK', 'PGC', '', '2208', '4506416', ' METI', '2005-10-04 16:22:43', ' METI', '2005-10-06 18:04:14');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050628', '2005-10-06 00:00:00', 'RUK', 'PGC', '', '2', '160000', ' METI', '2005-10-06 10:10:51', ' RAINIE', '2005-10-19 16:24:18');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050629', '2005-10-07 00:00:00', 'RUK', 'PGC', '', '1444', '1769634', ' METI', '2005-10-07 13:58:28', ' METI', '2005-10-07 13:58:54');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050630', '2005-10-08 00:00:00', 'RUK', 'PGC', '', '1457', '7382739', ' METI', '2005-10-08 13:15:43', ' METI', '2005-10-08 13:16:23');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050631', '2005-10-08 00:00:00', 'RUK', 'PGC', '', '1', '3537706', ' METI', '2005-10-08 14:34:25', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050632', '2005-10-10 00:00:00', 'RUK', 'PGC', '', '18', '4721457', ' METI', '2005-10-10 13:19:57', ' METI', '2005-10-10 13:20:46');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050633', '2005-10-10 00:00:00', 'RUK', 'PGC', '', '1440', '1450080', ' METI', '2005-10-10 13:28:25', null, null);
INSERT INTO `ttrmutasi` VALUES ('5', 'PGC050634', '2005-10-12 00:00:00', 'RUK', 'PGC', '', '2968', '3575938', ' METI', '2005-10-12 15:27:47', ' METI', '2005-10-12 15:34:12');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050635', '2005-10-12 00:00:00', 'RUK', 'PGC', '', '10', '752379', ' METI', '2005-10-12 15:30:55', ' METI', '2005-10-12 15:31:10');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050636', '2005-10-12 00:00:00', 'RUK', 'PGC', '', '1440', '1450080', ' METI', '2005-10-12 15:39:03', null, null);
INSERT INTO `ttrmutasi` VALUES ('2', 'PG050479', '2005-10-13 00:00:00', 'RUK', 'PG', '', '42', '2163792', ' METI', '2005-10-13 13:22:43', ' METI', '2005-10-13 13:23:19');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050637', '2005-10-13 00:00:00', 'RUK', 'PGC', '', '31', '4029328', ' METI', '2005-10-13 13:25:28', ' METI', '2005-10-13 13:28:59');
INSERT INTO `ttrmutasi` VALUES ('2', 'PGC050639', '2005-10-15 00:00:00', 'RUK', 'PGC', '', '2', '2144169', ' METI', '2005-10-15 14:05:01', ' METI', '2005-10-15 14:05:09');

-- ----------------------------
-- Table structure for `ttrpenjualan`
-- ----------------------------
DROP TABLE IF EXISTS `ttrpenjualan`;
CREATE TABLE `ttrpenjualan` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `CustomerCode` varchar(50) DEFAULT NULL,
  `OutletCode` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `Remark` varchar(50) DEFAULT NULL,
  `TotalQty` double DEFAULT '0',
  `TotalNilai` double DEFAULT '0',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  `TotalBayar` double DEFAULT '0',
  KEY `OutletCode` (`OutletCode`),
  KEY `CustomerCode` (`CustomerCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ttrpenjualan
-- ----------------------------

-- ----------------------------
-- Table structure for `ttrpergerakan`
-- ----------------------------
DROP TABLE IF EXISTS `ttrpergerakan`;
CREATE TABLE `ttrpergerakan` (
  `Status` int(11) DEFAULT '1',
  `NoBukti` varchar(50) DEFAULT NULL,
  `TglBukti` datetime DEFAULT NULL,
  `SupplierCode` varchar(50) DEFAULT NULL,
  `OutletCode` varchar(50) DEFAULT NULL,
  `JTrans` int(11) DEFAULT '1',
  `Remark` varchar(50) DEFAULT NULL,
  `TotalPPN` double DEFAULT '0',
  `TotalNilai` double DEFAULT '0',
  `CreatedBy` varchar(50) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ChangeBy` varchar(50) DEFAULT NULL,
  `ChangeDate` datetime DEFAULT NULL,
  `PostingStatus` int(11) DEFAULT '0',
  KEY `OutletCode` (`OutletCode`),
  KEY `SupplierCode` (`SupplierCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ttrpergerakan
-- ----------------------------
INSERT INTO `ttrpergerakan` VALUES ('1', 'PB080565', '2008-05-10 00:00:00', 'S059', 'KECIL', '1', 'LUNAS 10/5/08', '28390', '283900', ' Willy', '2008-05-10 14:16:15', null, null, '0');
INSERT INTO `ttrpergerakan` VALUES ('1', 'PB130109', '2013-08-31 00:00:00', 'SS050', 'KECIL', '1', '', '0', '0', ' Merry', '2013-08-31 10:30:53', null, null, '0');
INSERT INTO `ttrpergerakan` VALUES ('1', 'PB140152', '2014-01-09 00:00:00', 'SP056', 'KECIL', '1', '', '0', '0', ' Merry', '2014-01-09 15:19:57', ' Ana', '2014-01-09 15:34:19', '0');
INSERT INTO `ttrpergerakan` VALUES ('1', 'PB140433', '2014-01-24 00:00:00', 'SE053', 'KECIL', '1', '', '0', '0', ' Ana', '2014-01-24 18:37:09', ' Ana', '2014-01-24 18:37:41', '0');
INSERT INTO `ttrpergerakan` VALUES ('1', 'PB146191', '2014-12-13 00:00:00', 'SM066', 'KECIL', '1', '', '0', '0', ' Ana', '2014-12-13 13:34:54', ' Merry', '2014-12-15 17:58:42', '0');
INSERT INTO `ttrpergerakan` VALUES ('1', 'PB151521', '2015-04-03 00:00:00', 'SI043', 'KECIL', '1', '', '0', '0', ' Sri', '2015-04-03 13:23:27', ' Sri', '2015-04-03 13:23:36', '0');
INSERT INTO `ttrpergerakan` VALUES ('1', 'PB151684', '2015-04-14 00:00:00', 'SB063', 'KECIL', '1', '', '0', '0', ' Merry', '2015-04-15 10:26:14', ' Merry', '2015-04-15 10:26:27', '0');
