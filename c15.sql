select s.masp,s.tensp from sanpham s
where s.MASP not in(select c.MASP from cthd c);