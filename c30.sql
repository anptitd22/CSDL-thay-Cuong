select s.NUOCSX,count(*) as quantity from sanpham s
group by s.NUOCSX;