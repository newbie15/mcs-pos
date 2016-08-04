insert into item (kode_item, nama_item, id_tipe_item, id_jenis_item, id_merek_item, jenis_harga_jual, persen_harga_jual, id_supplier, guid)
	select artikelcode as kode_item, trim(artikelname) as nama_item, 1 as id_tipe_item, 1 as id_jenis_item, 
		ifnull(merek_item.id_merek_item, 1) as id_merek_item,
		1 as jenis_harga_jual, 0 as persen_harga_jual, 1 as id_supplier,
		uuid()
	from apotekdb0616.tbartikel
	left join merek_item on merek_item.nama_merek_item = apotekdb0616.tbartikel.remark;

-- INSERT SATUAN DASAR (multi satuan)
insert into satuan_item (id_item, id_satuan, konversi_jumlah, is_satuan_dasar, harga_pokok, harga_jual)
select item.id_item, satuan.id_satuan, 1 as konversi_jumlah, 1 as is_satuan_dasar, 
	Price2 as harga_pokok, Price2 as harga_jual
from apotekdb0616.tbartikel
join item on item.kode_item = apotekdb0616.tbartikel.ArtikelCode
join satuan on trim(satuan.nama_satuan) = trim(Satuan2)
where length(trim(Satuan2)) > 0 order by Content desc;

-- INSERT SATUAN TAMBAHAN (multi satuan)
insert into satuan_item (id_item, id_satuan, konversi_jumlah, is_satuan_dasar, harga_pokok, harga_jual)
select item.id_item, satuan.id_satuan, Content as konversi_jumlah, 0 as is_satuan_dasar, 
	Price1 as harga_pokok, Price1 as harga_jual
from apotekdb0616.tbartikel
join item on item.kode_item = apotekdb0616.tbartikel.ArtikelCode
join satuan on trim(satuan.nama_satuan) = trim(Satuan1)
where length(trim(Satuan2)) > 0 AND
	ArtikelCode not in ('81795','81172','081132','81144','85289','85288')
order by Content desc;

select * from item where id_item = 1624;

-- INSERT SATUAN DASAR (1 satuan)
insert into satuan_item (id_item, id_satuan, konversi_jumlah, is_satuan_dasar, harga_pokok, harga_jual)
select item.id_item, satuan.id_satuan, 1 as konversi_jumlah, 1 as is_satuan_dasar, 
	Price1 as harga_pokok, Price1 as harga_jual
from apotekdb0616.tbartikel
join item on item.kode_item = apotekdb0616.tbartikel.ArtikelCode
join satuan on trim(satuan.nama_satuan) = trim(Satuan1)
where length(trim(Satuan2)) = 0 order by Content desc;

-- Cek nama ada titik
select nama_item, substr(nama_item, 2, length(nama_item) - 1) from item where nama_item like '.%';
-- update item set nama_item = substr(nama_item, 2, length(nama_item) - 1) where nama_item like '.%';