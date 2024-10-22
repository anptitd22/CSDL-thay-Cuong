select h.sohd,h.trigia from hoadon h
where h.MANV in(select n.manv from nhanvien n
				where n.HOTEN = 'Nguyen Van B')
and h.NGHD='2006-10-10';

-- select h.sohd,h.trigia from hoadon h
-- inner join nhanvien n
-- on h.MANV=n.MANV 
-- where n.HOTEN = 'Nguyen Van B'
and h.NGHD='2006-10-10';