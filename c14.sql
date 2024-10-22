select s.masp,s.tensp from sanpham s
where s.MASP in (select c.masp from cthd c
				where c.sohd in(select h.sohd from hoadon h
								where h.nghd = '2007-01-01')
and s.NUOCSX='Trung Quoc');