select h.nghd,sum(h.trigia)
from hoadon h
group by h.NGHD
order by h.NGHD;