select s.masp,s.tensp from sanpham s
inner join (select distinct gia from sanpham
			order by gia asc
            limit 3) as topsp
            on topsp.gia = s.gia
and s.nuocsx='Trung Quoc';