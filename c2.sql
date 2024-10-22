-- select masp,tensp from sanpham
-- where dvt ='cay' or dvt = 'quyen';

select masp,tensp from sanpham
where dvt regexp 'cay|quyen';