select c.sohd from cthd c
where (c.SL between 10 and 20)
and c.masp = 'BB01'
and c.sohd in(select c2.sohd from cthd c2
			where c2.MASP<>c.MASP
			and c2.MASP = 'BB02');
