select s.masp,s.tensp,sum(c.SL) as soluongban from sanpham s
inner join cthd c
	on s.MASP=c.MASP
inner join hoadon h
	on c.SOHD=h.SOHD
where year(h.nghd) = 2006
group by s.MASP
order by soluongban
limit 1;
