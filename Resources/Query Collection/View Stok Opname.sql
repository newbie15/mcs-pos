select buku.*, 
	awal+masuk-keluar as buku, 
    opname_masuk, opname_keluar,
	awal+masuk-keluar+ifnull(opname_masuk,0)-ifnull(opname_keluar,0) as fisik,
    so.id_stok_opname
from (
	select i.id_item, i.kode_item, i.nama_item, s.nama_satuan, 
		/* Awal Bulan */
		ifnull((select saldo from kartu_stok ks where ks.id_item = i.id_item and ks.tipe = 'SA' and ks.waktu_transaksi = '2015-06-01'),0) as awal,
        
		/* Transaksi Masuk */
		ifnull((select SUM(masuk) from kartu_stok ks where ks.id_item = i.id_item and ks.masuk > 0 and ks.waktu_transaksi BETWEEN '2015-06-01 00:00:00' AND '2015-06-29 23:59:59'),0) as masuk,
	  
		/* Transaksi Keluar */
		ifnull((select SUM(keluar) from kartu_stok ks where ks.id_item = i.id_item and ks.keluar > 0 and ks.waktu_transaksi BETWEEN '2015-06-01 00:00:00' AND '2015-06-29 23:59:59'),0) as keluar 
	from item i
	join satuan_item si on si.id_item = i.id_item and si.is_satuan_dasar = 1
	join satuan s on s.id_satuan = si.id_satuan) buku
left join stok_opname so on so.id_item = buku.id_item and so.id_departemen = 1 and so.tanggal_opname = '2015-06-29'
order by 5 desc