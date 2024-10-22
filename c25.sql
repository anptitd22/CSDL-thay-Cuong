SELECT sp.MASP, sp.TENSP
FROM SanPham sp
JOIN (
    SELECT DISTINCT Gia
    FROM SanPham
    ORDER BY Gia DESC
    LIMIT 3
) AS topGia ON sp.Gia = topGia.Gia;
