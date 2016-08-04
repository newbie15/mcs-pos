insert merek_item (nama_merek_item, created)
	select distinct remark, current_timestamp() from apotekdb0616.tbartikel
	where length(remark) > 0;