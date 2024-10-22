select s.NUOCSX,max(s.GIA) from sanpham s
group by s.NUOCSX;