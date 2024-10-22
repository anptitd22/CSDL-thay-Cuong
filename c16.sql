select s.masp,s.tensp from sanpham s
where s.masp not in(select c.masp from cthd c
					where c.SOHD in(select h.sohd from hoadon h
									where year(h.nghd)=2006));