insert into app_pos.satuan (nama_satuan, keterangan_satuan, created)
	select satuan1, satuan1, CURRENT_TIMESTAMP() from (
	select distinct satuan1 from (
		select distinct satuan1 from tbartikel
		union all
		select distinct satuan2 from tbartikel
	) t where length(satuan1) > 0 order by 1) t;