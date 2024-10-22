select h.nghd,sum(c.sl) as quantity from hoadon h
inner join cthd c
	on h.SOHD=c.SOHD
where h.NGHD= '2006-10-28'
group by h.NGHD;