-- select h.sohd from hoadon h
-- inner join cthd c
-- on h.SOHD = c.SOHD
-- where c.MASP regexp 'BB01|BB02'
-- group by h.sohd;

select h.sohd from hoadon h
where h.SOHD in(select c.sohd from cthd c
				where c.MASP regexp 'BB01|BB02');