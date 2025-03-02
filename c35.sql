select k.MAKH,k.HOTEN,count(*) as solanmua from khachhang k
inner join hoadon h
	on k.MAKH=h.MAKH
group by k.MAKH
order by count(k.HOTEN) desc
limit 1;