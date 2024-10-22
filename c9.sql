select s.masp,s.tensp from sanpham s
where s.MASP in (select c.masp from cthd c
				where c.sohd in (select h.sohd from hoadon h
								where h.makh in(select k.makh from khachhang k
												where k.hoten = 'Nguyen Van A')));