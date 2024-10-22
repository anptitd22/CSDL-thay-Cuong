select s.nuocsx,count(s.nuocsx) sosanpham from sanpham s
group by s.nuocsx
having count(s.nuocsx)>=3;