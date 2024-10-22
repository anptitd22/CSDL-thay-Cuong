select s.nuocsx,max(s.gia),min(s.gia),avg(s.gia)
from sanpham s
group by s.NUOCSX;