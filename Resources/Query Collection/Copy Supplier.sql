insert into supplier (kode_supplier, nama_supplier, created)
select SupplierCode, trim(SupplierName), current_timestamp() from apotekdb0616.tbsupplier
order by 2;