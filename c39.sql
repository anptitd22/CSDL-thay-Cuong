select k.makh,k.HOTEN,count(*)as solanmua,topdoanhso.doanhso  from khachhang k
inner join hoadon h
	on k.makh=h.MAKH
inner join (select k2.makh,sum(c2.sl) doanhso from khachhang k2
			inner join hoadon h2
				on k2.makh = h2.makh
			inner join cthd c2
				on c2.sohd = h2.sohd 
			group by h2.makh
            order by sum(c2.sl) desc
            limit 10
			) as topdoanhso on topdoanhso.makh=k.makh
group by k.makh
order by count(k.hoten) desc
limit 1;