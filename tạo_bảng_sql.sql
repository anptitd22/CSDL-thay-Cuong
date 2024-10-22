-- Bảng KHACHHANG (Khách hàng)
CREATE TABLE KHACHHANG (
    MAKH VARCHAR(10) PRIMARY KEY,    -- Mã khách hàng
    HOTEN VARCHAR(100),              -- Họ tên khách hàng
    DCHI VARCHAR(255),               -- Địa chỉ
    SODT VARCHAR(15),                -- Số điện thoại
    NGSINH DATE,                     -- Ngày sinh
    NGDK DATE,                       -- Ngày đăng ký
    DOANHSO DECIMAL(18,2)            -- Tổng trị giá các hóa đơn (doanh số)
);

-- Bảng NHANVIEN (Nhân viên)
CREATE TABLE NHANVIEN (
    MANV VARCHAR(10) PRIMARY KEY,    -- Mã nhân viên
    HOTEN VARCHAR(100),              -- Họ tên nhân viên
    NGVL DATE,                       -- Ngày vào làm
    SODT VARCHAR(15)                 -- Số điện thoại liên lạc
);

-- Bảng SANPHAM (Sản phẩm)
CREATE TABLE SANPHAM (
    MASP VARCHAR(10) PRIMARY KEY,    -- Mã sản phẩm
    TENSP VARCHAR(100),              -- Tên sản phẩm
    DVT VARCHAR(50),                 -- Đơn vị tính
    NUOCSX VARCHAR(100),             -- Nước sản xuất
    GIA DECIMAL(18,2)                -- Giá bán
);

-- Bảng HOADON (Hóa đơn)
CREATE TABLE HOADON (
    SOHD VARCHAR(10) PRIMARY KEY,    -- Số hóa đơn
    NGHD DATE,                       -- Ngày hóa đơn
    MAKH VARCHAR(10),                -- Mã khách hàng (Khóa ngoại)
    MANV VARCHAR(10),                -- Mã nhân viên (Khóa ngoại)
    TRIGIA DECIMAL(18,2),            -- Trị giá hóa đơn
    FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH),
    FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV)
);

-- Bảng CTHD (Chi tiết hóa đơn)
CREATE TABLE CTHD (
    SOHD VARCHAR(10),                -- Số hóa đơn (Khóa ngoại)
    MASP VARCHAR(10),                -- Mã sản phẩm (Khóa ngoại)
    SL INT,                          -- Số lượng
    PRIMARY KEY (SOHD, MASP),        -- Khóa chính kết hợp (SOHD, MASP)
    FOREIGN KEY (SOHD) REFERENCES HOADON(SOHD),
    FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)
);
