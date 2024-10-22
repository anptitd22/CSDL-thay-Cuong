-- create index tim_kiem on sanpham(nuocsx,gia);
-- drop index tim_kiem on sanpham;
select masp,tensp from sanpham
where NUOCSX regexp 'Trung Quoc|Thai Lan'
and gia between 20000 and 30000;