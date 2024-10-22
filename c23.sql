select k.hoten from khachhang k
where k.MAKH in(select h.makh from hoadon h
                where year(h.nghd) = 2006
                and h.trigia in(select max(trigia) from hoadon)); 