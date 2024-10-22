select k.makh,k.hoten from khachhang k
where k.makh in (select h.makh from hoadon h
				where h.nghd = '2007-01-01');

-- select k.makh,k.hoten from khachhang k
-- inner join hoadon h
-- 	on k.MAKH=h.MAKH
--     where h.NGHD = '2007-01-01'
-- group by k.makh;