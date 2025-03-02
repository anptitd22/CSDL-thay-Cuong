select month(h.nghd) as thang,sum(h.trigia) as doanhthu 
from hoadon h
where year(h.nghd)=2006
group by month(h.nghd)
order by thang;