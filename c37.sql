select month(h.nghd) as thang,sum(c.SL) as doanhso from hoadon h
inner join cthd c
	on h.SOHD=c.SOHD
where year(h.nghd) = 2006
group by thang
order by doanhso
limit 1;