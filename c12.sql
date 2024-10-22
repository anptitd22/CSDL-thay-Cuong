select h.sohd from hoadon h
where h.sohd in(select c.sohd from cthd c
				where (c.SL between 10 and 20)
                and c.MASP regexp 'BB01|BB02');