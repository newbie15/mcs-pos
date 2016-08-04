ALTER TABLE `konsinyasi` 
ADD COLUMN `total_pembayaran` INT(11) NOT NULL DEFAULT '0' COMMENT '' AFTER `keterangan`,
ADD COLUMN `is_lunas` INT(1) NOT NULL DEFAULT '0' COMMENT '' AFTER `total_pembayaran`,
ADD COLUMN `total_biaya_retur` INT(11) NOT NULL DEFAULT '0' COMMENT '' AFTER `total_biaya`;