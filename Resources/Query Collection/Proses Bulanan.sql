select * from item where id_item = 1881;
select * from stok_opname;
select * from kartu_stok;

/* Saldo Awal */
select sa.id_departemen, sa.id_item, 'SA', '', tanggal_saldo_awal, 0, 0, sa.jumlah * si.konversi_jumlah, id_saldo_awal
from saldo_awal sa
join satuan_item si on si.id_item = sa.id_item and si.id_satuan = sa.id_satuan
where tanggal_saldo_awal = '2015-06-01' and sa.id_departemen = 1;

/* Penjualan */
select p.id_departemen, pd.id_item, 'JL', p.kode_transaksi, p.waktu_transaksi, 0 as masuk, 
	(pd.jumlah - pd.jumlah_refund) * si.konversi_jumlah as keluar, 0 as saldo, null as id_saldo_awal, null as id_pembelian, p.id_penjualan
from penjualan p
join penjualan_detail pd on pd.id_penjualan = p.id_penjualan
join satuan_item si on si.id_item = pd.id_item and si.id_satuan = pd.id_satuan
where p.id_departemen = 1 and p.waktu_transaksi between '2015-06-01' and '2015-06-30 23:59:59'
order by pd.id_item;

/* Pembelian */
select p.id_departemen, pd.id_item, 'BL', p.kode_transaksi, p.waktu_transaksi, 
	pd.jumlah * si.konversi_jumlah as masuk, 0 as keluar, 0 as saldo, null as id_saldo_awal, p.id_pembelian, null
from pembelian p
join pembelian_detail pd on pd.id_pembelian = p.id_pembelian
join satuan_item si on si.id_item = pd.id_item and si.id_satuan = pd.id_satuan
where p.id_departemen = 1 and p.waktu_transaksi between '2015-06-01 00:00:00' and '2015-06-30 23:59:59';

/* Stok Opname */
select so.id_departemen, so.id_item, 'SO', NULL, so.tanggal_opname,
	opname_masuk as masuk, opname_keluar as keluar, 0 as saldo, id_stok_opname
from stok_opname so
where so.id_departemen = 1 and so.tanggal_opname between '2015-06-01 00:00:00' and '2015-06-30 23:59:59';

select id_item, max(waktu_transaksi), saldo
from kartu_stok
where id_departemen = 1 and waktu_transaksi between '2015-06-01 00:00:00' and '2015-06-30 23:59:59';