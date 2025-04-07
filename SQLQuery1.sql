CREATE DATABASE QL_WEBSITEBANMAYTINH;
GO

USE QL_WEBSITEBANMAYTINH;
GO

create table NHANVIEN(
	MANV INT PRIMARY KEY NOT NULL,
	HOTENNV NVARCHAR(50) NOT NULL,
	GIOITINH NVARCHAR(3) NOT NULL, 
	SDT NVARCHAR(11), 
	NGAYVAOLAM DATE NOT NULL, 
	LUONG INT NOT NULL,
	MATKHAUNV NVARCHAR (50) NOT NULL ,
	TRANGTHAI NVARCHAR(30) NOT NULL,
	ROLE NVARCHAR(30) NOT NULL ,
	TENTK NVARCHAR(50) NOT NULL
)

create table KHACHHANG (
	MAKH INT PRIMARY KEY NOT NULL,  
	TENKH NVARCHAR(50) NOT NULL,
	GIOITINH NVARCHAR(3) NOT NULL,
	SDT NVARCHAR(11) ,
	DIACHI NVARCHAR(100) , 
	MATKHAUKH NVARCHAR(50) NOT NULL,
	TRANGTHAI NVARCHAR(30) NOT NULL,
	ROLE NVARCHAR(30) NOT NULL
)

create table NHACUNGCAP
(
	MANCC INT PRIMARY KEY NOT NULL , 
	TENNCC NVARCHAR(50) NOT NULL , 
	SDT NVARCHAR(11) NOT NULL , 
	DIACHI NVARCHAR(100) NOT NULL , 
	TRANGTHAI INT NOT NULL 
)

create table SANPHAM
(
	MASP INT PRIMARY KEY NOT NULL, 
	TENSP NVARCHAR (50) NOT NULL , 
	LOAISP NVARCHAR(50) NOT NULL,
	GIANHAP INT NOT NULL , 
	GIABAN INT NOT NULL , 
	SOLUONG INT NOT NULL , 
	TRANGTHAISP NVARCHAR(30) NOT NULL , 
	NHACUNGCAP INT NOT NULL,
	HINHANH NVARCHAR(255) NOT NULL

	CONSTRAINT FK_SANPHAM_NCC FOREIGN KEY (NHACUNGCAP) REFERENCES NHACUNGCAP(MANCC)
)

create table HOADON 
(
	MAHD INT PRIMARY KEY NOT NULL , 
	MANV INT NOT NULL , 
	MAKH INT NOT NULL ,
	NGAYLAPHD DATE NOT NULL ,
	TONGTIEN INT NOT NULL,
	TRANGTHAISP NVARCHAR(30) NOT NULL

	CONSTRAINT FK_HOADON_NHANVIEN FOREIGN KEY (MANV) REFERENCES NHANVIEN(MANV),
    CONSTRAINT FK_HOADON_KHACHHANG FOREIGN KEY (MAKH) REFERENCES KHACHHANG(MAKH)
)

create table CHITIETHD (
	MAHD INT NOT NULL , 
	MASP INT NOT NULL , 
	SOLUONG INT NOT NULL , 
	DONGIA INT NOT NULL , 
	THANHTIEN INT NOT NULL 
	PRIMARY KEY (MAHD, MASP),

	CONSTRAINT FK_CHITIETHD_HOADON FOREIGN KEY (MAHD) REFERENCES HOADON(MAHD),
    CONSTRAINT FK_CHITIETHD_SANPHAM FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)

)


CREATE TABLE TAIKHOAN (
    TENTK NVARCHAR(50) PRIMARY KEY,
    MATKHAU NVARCHAR(255) NOT NULL, 
    LOAITK INT NOT NULL CHECK (LOAITK IN (1, 2)), 
    MaNV INT UNIQUE, 
    FOREIGN KEY (MaNV) REFERENCES NHANVIEN(MANV) ON DELETE CASCADE
);


CREATE TABLE NHAPHANG (
    MANH INT PRIMARY KEY,         
    NGAYNHAP DATE NOT NULL,       
    MANCC INT NOT NULL,         
    MASP INT NOT NULL,           
    SOLUONGNHAP INT NOT NULL,     
    GIANHAP MONEY NOT NULL,       
    FOREIGN KEY (MANCC) REFERENCES NHACUNGCAP(MANCC),
    FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP)
);

CREATE TABLE BAOHANH (
    MABH INT PRIMARY KEY IDENTITY(1,1),  -- Thay AUTO_INCREMENT bằng IDENTITY
    MASP INT NOT NULL,
    THOIGIAN INT NOT NULL, -- Số tháng bảo hành
    DIEUKIEN NVARCHAR(255),
    NGAYBATDAU DATE NOT NULL,
    NGAYHETHAN DATE NOT NULL,
    FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP) ON DELETE CASCADE -- khi xóa,, sửa sản phẩm bảo hành cũng sẽ sửa theo
);

CREATE TABLE KHUYENMAI (
    MAKM INT PRIMARY KEY IDENTITY(1,1),
    TENKM NVARCHAR(255) NOT NULL,
    GIAMGIA FLOAT NOT NULL,
    LOAIKM NVARCHAR(10) CHECK (LOAIKM IN ('%', 'VND')),  -- '%' = giảm theo %, 'VND' = giảm theo số tiền
    NGAYBATDAU DATE NOT NULL,
    NGAYKETTHUC DATE NOT NULL
);


CREATE TABLE CHITIET_KHUYENMAI (
    MAKM INT NOT NULL, 
    MASP INT NOT NULL, 
    PRIMARY KEY (MAKM, MASP),
    FOREIGN KEY (MAKM) REFERENCES KHUYENMAI(MAKM) ON DELETE CASCADE,
    FOREIGN KEY (MASP) REFERENCES SANPHAM(MASP) ON DELETE CASCADE
);



	--Thêm, cập nhật thông tin nhân viên 
	INSERT INTO NHANVIEN (MANV , HOTENNV , GIOITINH , SDT , NGAYVAOLAM , LUONG , MATKHAUNV , TRANGTHAI , ROLE, TENTK)
	VALUES (001, N'Đỗ Ngọc Thế', 'Nam', '0946080051', '2023-05-15', 10000000, 'the123', N'Hoạt động', N'Nhân viên', 'dothe')
	INSERT INTO NHANVIEN (MANV , HOTENNV , GIOITINH , SDT , NGAYVAOLAM , LUONG , MATKHAUNV , TRANGTHAI , ROLE, TENTK)
	VALUES (002, N'Phạm Minh Tân', 'Nam', '0378008305','2023-03-20', 15000000, 'tan123', N'Hoạt động', N'Thu Ngân', 'tanpham')

	INSERT INTO NHANVIEN (MANV, HOTENNV, GIOITINH, SDT, NGAYVAOLAM, LUONG, MATKHAUNV, TRANGTHAI, ROLE, TENTK) 
	VALUES
	(008, N'Bùi Minh Quân', 'Nam', '0123456789', '2023-04-01', 10000000, 'quan123', N'Hoạt động', N'Nhân viên', 'quanbui'),

	(004, N'Đỗ Minh Nhật', 'Nam', '0987654321', '2022-06-15', 10000000, 'nhat123', N'Hoạt động', N'Quản lý', 'nhatdo'),

	(006, N'Nguyễn Thái Nguyên', 'Nam', '0934567890', '2020-07-22', 11000000, 'nguyen123', N'Nghỉ việc', N'Nhân viên', 'nguyennguyen')

	INSERT INTO NHANVIEN (MANV, HOTENNV, GIOITINH, SDT, NGAYVAOLAM, LUONG, MATKHAUNV, TRANGTHAI, ROLE, TENTK) 
	VALUES
	(005, N'Nguyễn Mỹ Linh', N'Nữ', '0912345678', '2021-03-10', 10000000, 'linh123', N'Hoạt động', N'Nhân viên' ,'linhnguyen'),
	(007, N'Nguyễn Ngọc Bích', N'Nữ', '0901234567', '2022-11-01', 11000000, 'bich123', N'Hoạt động', N'Nhân viên' ,'bichnguyen')



	--Thêm, cập nhật thông tin Admin
	INSERT INTO NHANVIEN (MANV , HOTENNV , GIOITINH , SDT , NGAYVAOLAM , LUONG , MATKHAUNV , TRANGTHAI , ROLE, TENTK )
	VALUES (003, 'admin', 'Nam', '0366789987','2021-03-20', 50000000, 'admin123', N'Hoạt động', 'Admin', 'admin')

	-- Thêm, cập nhật thông tin Khách Hàng
	INSERT INTO KHACHHANG (MAKH , TENKH , GIOITINH , SDT , DIACHI , MATKHAUKH , TRANGTHAI, ROLE)
	VALUES 
	(201, N'Nguyễn Văn Sơn', 'Nam', '0541686410',N'833/A Đường Sò Điệp', 'son123', N'Hoạt động', N'Thân thiết'),
	(202, N'Lê Văn Lý Hải', 'Nam', '0973777333',N'2938 Đường Súp Nghêu', 'hai123', N'Hoạt động', N'Thân thiết'),
	(203, N'Đào Thị Thanh Như', 'Nữ', '0778123123',N'94/125 Đường Ốc Âm Dương', 'nhu123', N'Hoạt động', N'Bình thường'),
	(204, N'Phan Trần Thiên Quốc', 'Nam', '0616345888',N'457 Đường Bào Ngư', 'quoc123', N'Hoạt động', N'Bình thường'),
	(205, N'Đỗ Tài Năng', 'Nam', '0544872531',N'1352B Đường Hải Thượng Lãn Ông', 'nang123', N'Hoạt động', N'Bình thường');


		-- Thêm dữ liệu vào bảng TAIKHOAN từ bảng NHANVIEN
			INSERT INTO TAIKHOAN (TENTK, MATKHAU, LOAITK, MaNV)
			SELECT 
				TENTK, MATKHAUNV, 
				CASE 
					WHEN ROLE = N'Nhân viên' THEN 2 
					WHEN ROLE = N'Thu Ngân' THEN 2  -- Xử lý cho Thu Ngân
					ELSE 1 -- Mặc định là Admin
				END, 
				MaNV
			FROM NHANVIEN;

	-- Thêm, cập nhật thông tin sản phẩm(Laptop)
	INSERT INTO SANPHAM(MASP , TENSP ,LOAISP, GIANHAP, GIABAN, SOLUONG , TRANGTHAISP, NHACUNGCAP ,HINHANH)
	VALUES
		--ASUS
		(111, 'ASUS TUF Gaming A15', 'Laptop', '18000000', '20000000', 10 , N'Còn hàng', 101,' images/asus_gaming_a15.jpg'),
		(112, 'ASUS ROG Strix G16', 'Laptop', '19000000', '21000000', 15 , N'Còn hàng', 101, 'images/asus_rog_strix_g16.png'),
		(113, 'ASUS ZenBook 14 OLED', 'Laptop', '18000000', '21000000', 27 , N'Còn hàng', 101 ,'images/ASUS_ZenBook_14_OLED.jpg'),
		--Acer
		(121, 'Acer Nitro 5', 'Laptop', '15000000', '17000000', 8 , N'Còn hàng', 108,'Acer_Nitro_5.webp'),
		(122, 'Acer Swift 3', 'Laptop', '16000000', '17500000', 9 , N'Còn hàng', 108, 'images/Acer_Swift_3.jpg'),
		(123, 'Acer Aspire 7', 'Laptop', '14500000', '15500000', 0 , N'Hết hàng', 108, 'images/Acer_Aspire_7.jpg'),
		--Dell
		(131, 'Dell XPS 15', 'Laptop', '10000000', '12000000', 5 , N'Còn hàng', 102, 'images/Dell_XPS_15.jpg'),
		(132, 'Dell G15 Gaming', 'Laptop', '12000000', '14500000', 7 , N'Còn hàng', 102,'images/Dell_G15_Gaming.png'),
		(133, 'Dell Latitude 7420', 'Laptop', '11000000', '12500000', 19 , N'Còn hàng', 102, 'images/Dell_Latitude_7420.jpg'),
		--HP
		(141, 'HP Spectre x360', 'Laptop', '15000000', '17000000', 7 , N'Còn hàng', 103, 'images/HP_Spectre_x360.avif'),
		(142, 'HP Victus 16', 'Laptop', '13000000', '14500000', 11 , N'Còn hàng', 103, 'images/HP_Victus_16.jpg'),
		(143, 'HP EliteBook 840', 'Laptop', '11000000', '12500000', 0 , N'Hết hàng', 103, 'images/HP_EliteBook_840.webp'),
		--Lenovo
		(151, 'Lenovo Legion 5 Pro', 'Laptop', '13000000', '14500000', 11 , N'Còn hàng', 104, 'images/Lenovo_Legion 5_Pro.avif'),
		(152, 'Lenovo ThinkPad X1 Carbon', 'Laptop', '20000000', '22000000', 20 , 'Còn hàng', 104, 'images/Lenovo_ThinkPad X1_Carbon.jpg'),
		(153, 'Lenovo IdeaPad Slim 5', 'Laptop', '18000000', '20000000', 20 , 'Còn hàng', 104, 'images/Lenovo_IdeaPad_Slim_5.jpg')
	
	-- Thêm, cập nhật thông tin sản phẩm (Chuột ,bàn phím)
	INSERT INTO SANPHAM (MASP, TENSP, LOAISP, GIANHAP, GIABAN, SOLUONG, TRANGTHAISP, NHACUNGCAP, HINHANH) 
	VALUES 
    -- Chuột Logitech
    (211, 'Logitech G502 Hero', 'Chuột', 800000, 1200000, 20, N'Còn hàng', 109, 'images/Logitech_G502_Hero.webp'),
    (212, 'Logitech G Pro X Superlight', 'Chuột', 1800000, 2200000, 15, N'Còn hàng', 109, 'images/Logitech_G_Pro_X_Superlight.jpg'),
    (213, 'Logitech MX Master 3', 'Chuột', 2000000, 2500000, 10, N'Còn hàng', 109, 'images/Logitech_MX_Master_3.png'),

    -- Bàn phím Logitech
    (214, 'Logitech G915 TKL', 'Bàn phím', 3500000, 4000000, 12, N'Còn hàng', 109, 'images/Logitech_G915_TKL.avif'),
    (215, 'Logitech G Pro Keyboard', 'Bàn phím', 2500000, 3000000, 14, N'Còn hàng', 109, 'images/Logitech_G_Pro_Keyboard.jpeg'),
    (216, 'Logitech MX Keys', 'Bàn phím', 1800000, 2200000, 18, N'Còn hàng', 109, 'images/Logitech_MX_Keys.jpg'),

    -- Chuột Razer
    (217, 'Razer DeathAdder V2', 'Chuột', 900000, 1300000, 15, N'Còn hàng', 110, 'images/Razer_DeathAdder_V2.jpg'),
    (218, 'Razer Viper Ultimate', 'Chuột', 2500000, 3000000, 10, N'Còn hàng', 110, 'images/Razer_Viper_Ultimate.avif'),
    (219, 'Razer Basilisk V3', 'Chuột', 1600000, 2100000, 12, N'Còn hàng', 110, 'images/Razer_Basilisk_V3.avif'),

    -- Bàn phím Razer
    (220, 'Razer Huntsman Mini', 'Bàn phím', 3000000, 3500000, 10, N'Còn hàng', 110, 'images/Razer_Huntsman_Mini.png'),
    (221, 'Razer BlackWidow V4', 'Bàn phím', 3200000, 3700000, 14, N'Còn hàng', 110, 'images/Razer_BlackWidow_V4.jpg'),
    (222, 'Razer Cynosa V2', 'Bàn phím', 1200000, 1600000, 18, N'Còn hàng', 110, 'images/Razer_Cynosa_V2.png'),

    -- Chuột SteelSeries
    (223, 'SteelSeries Rival 600', 'Chuột', 1000000, 1500000, 10, N'Còn hàng', 111, 'images/SteelSeries_Rival_600.avif'),
    (224, 'SteelSeries Aerox 3', 'Chuột', 1200000, 1600000, 12, N'Còn hàng', 111, 'images/SteelSeries_Aerox_3.webp'),
    (225, 'SteelSeries Prime Wireless', 'Chuột', 2000000, 2500000, 10, N'Còn hàng', 111, 'images/SteelSeries_Prime_Wireless.webp'),

    -- Bàn phím SteelSeries
    (226, 'SteelSeries Apex Pro', 'Bàn phím', 4000000, 4500000, 8, N'Còn hàng', 111, 'images/SteelSeries_Apex_Pro.avif'),
    (227, 'SteelSeries Apex 7', 'Bàn phím', 3200000, 3700000, 14, N'Còn hàng', 111, 'images/SteelSeries_Apex_7.jpg'),
    (228, 'SteelSeries Apex 3', 'Bàn phím', 1500000, 2000000, 18, N'Còn hàng', 111, 'images/SteelSeries_Apex_3.jpg'),

    -- Chuột Corsair
    (229, 'Corsair Dark Core RGB', 'Chuột', 1100000, 1600000, 8, N'Còn hàng', 112, 'images/Corsair_Dark_Core_RGB.avif'),
    (230, 'Corsair M65 RGB Elite', 'Chuột', 1300000, 1700000, 9, N'Còn hàng', 112, 'images/Corsair_M65_RGB_Elite.jpg'),
    (231, 'Corsair Harpoon RGB', 'Chuột', 800000, 1200000, 14, N'Còn hàng', 112, 'images/Corsair_Harpoon_RGB.avif'),

    -- Bàn phím Corsair
    (232, 'Corsair K100 RGB', 'Bàn phím', 4500000, 5000000, 6, N'Còn hàng', 112, 'images/Corsair_K100_RGB.jpg'),
    (233, 'Corsair K70 RGB', 'Bàn phím', 3000000, 3500000, 12, N'Còn hàng', 112, 'images/Corsair_K70_RGB.jpg'),
    (234, 'Corsair K55 RGB', 'Bàn phím', 1200000, 1600000, 18, N'Còn hàng', 112, 'images/Corsair_K55_RGB.jpg'),

    -- Chuột HyperX
    (235, 'HyperX Pulsefire FPS Pro', 'Chuột', 750000, 1100000, 12, N'Còn hàng', 113, 'images/HyperX_Pulsefire_FPS_Pro.webp'),
    (236, 'HyperX Pulsefire Haste', 'Chuột', 900000, 1300000, 14, N'Còn hàng', 113, 'images/HyperX_Pulsefire_Haste.jpg'),
    (237, 'HyperX Pulsefire Dart', 'Chuột', 1800000, 2300000, 9, N'Còn hàng', 113, 'images/HyperX_Pulsefire_Dart.jpg'),

    -- Bàn phím HyperX
    (238, 'HyperX Alloy FPS Pro', 'Bàn phím', 2500000, 3000000, 12, N'Còn hàng', 113, 'images/HyperX_Alloy_FPS_Pro.jpg'),
    (239, 'HyperX Alloy Origins', 'Bàn phím', 2800000, 3300000, 10, N'Còn hàng', 113, 'images/HyperX_Alloy_Origins.jpg'),
    (240, 'HyperX Alloy Core RGB', 'Bàn phím', 1200000, 1600000, 16, N'Còn hàng', 113, 'images/HyperX_Alloy_Core_RGB.jpg');


	-- Thêm, cập nhật nhà cung cấp phụ kiện 'laptop '
INSERT INTO NHACUNGCAP (MANCC, TENNCC, SDT, DIACHI, TRANGTHAINCC)
VALUES 
    (101, 'ASUS', '0123456789', N'Đài Loan', N'Hoạt động'),
    (108, 'Acer', '0987654321', N'Đài Loan', N'Hoạt động'),
    (102, 'Dell', '09124345678', N'Đài Loan', N'Hoạt động'),
    (103, 'HP', '0901234567', N'Đài Loan', N'Hoạt động'),
    (104, 'Lenovo', '0934567890', N'Đài Loan', N'Hoạt động'),
    (105, 'Apple', '0978765432', N'Đài Loan', N'Hoạt động'),
    (106, 'MSI', '0923456789', N'Đài Loan', N'Hoạt động'),
    (107, 'Razer', '0967890123', N'Đài Loan', N'Hoạt động');
		-- Thêm, cập nhật nhà cung cấp phụ kiện 'chuột,, bán phím'
INSERT INTO NHACUNGCAP (MANCC, TENNCC, SDT, DIACHI, TRANGTHAINCC)
VALUES 
    (109, 'Logitech', '0901111222', N'Mỹ', N'Hoạt động'),
    (110, 'Razer', '0903333444', N'Mỹ', N'Hoạt động'),
    (111, 'SteelSeries', '0905555666', N'Đan Mạch', N'Hoạt động'),
    (112, 'Corsair', '0907777888', N'Mỹ', N'Hoạt động'),
    (113, 'HyperX', '0909999000', N'Mỹ', N'Hoạt động');
	-- 

	-- Thêm, Cập nhật hóa đơn
	INSERT INTO HOADON (MAHD, MANV, MAKH, NGAYLAPHD, TONGTIEN, TRANGTHAIHD)
	VALUES
	(701,001,201,'2024-05-20',24400000, N'Thanh toán'),
	(702,002,202,'2024-05-21',12500000, N'Thanh toán'),
	(703,003,203,'2024-05-22',0, N'Hoàn trả'),
	(704,001,204,'2024-05-22',29000000, N'Thanh toán'),
	(705,002,205,'2024-05-23',0, N'Hủy thanh toán'),
	(706,003,201,'2024-05-24',2200000, N'Thanh toán'),
	(707,001,202,'2024-05-25',860000, N'Hoàn trả'),
	(708,002,203,'2024-05-25',3200000, N'Thanh toán'),
	(709,003,204,'2024-05-27',25100000, N'Thanh toán'),
	(710,001,205,'2024-05-28',25400000, N'Thanh toán');



	--Thêm, cập nhật CTHD 
	INSERT INTO CHITIETHD(MAHD, MASP, SOLUONG, DONGIA, THANHTIEN)
	VALUES
    (701, 111, 1, 20000000, 20000000),
    (701, 213, 2, 2200000, 4400000),

    (702, 133, 1, 12500000, 12500000),
    
    (703, 122, 1, 17500000, 0), -- khách hoàn trả nên tiền = 0

    (704, 151, 2, 14500000, 29000000),

    (705, 111, 1, 20000000, 0), -- khách hàng hủy hóa đơn 

    (706, 235, 2, 1100000, 2200000),

    (707, 113, 1, 21000000, 21000000),
    (707, 226, 1, 4500000, 4500000),

    (708, 224, 2, 1600000, 3200000),

    (709, 153, 1, 20000000, 20000000),
    (709, 219, 1, 2100000, 2100000),
	(709, 215, 1, 3000000, 3000000),

    (710, 152, 1, 22000000, 22000000),
    (710, 230, 2, 1700000, 3400000);


	-- Thêm nhập hàng 
	INSERT INTO NHAPHANG (MANH, NGAYNHAP, MANCC, MASP, SOLUONGNHAP, GIANHAP)
	VALUES
    (811, '2024-06-01', 101, 111, 5, 18000000), -- ASUS TUF Gaming A15
	(821, '2024-06-01', 101, 112, 8, 19000000),  --ASUS ROG Strix G16

    (812, '2024-06-02', 102, 131, 7, 10000000), --Dell XPS 15

    (813, '2024-06-05', 104, 151, 12, 13000000), --Lenovo Legion 5 Pro

	(814, '2024-06-07', 110, 121, 20, 15000000),-- Acer Nitro 5
    (823, '2024-06-07', 110, 122, 7, 16000000), -- Acer Swift 3

    (815, '2024-06-10', 109, 213, 10, 2000000),   -- Logitech MX Master 3
	(810, '2024-06-22', 109, 214, 8, 3500000),	  -- Logitech G915 TKL

    (816, '2024-06-12', 110, 218, 25, 2500000),  -- Razer Viper Ultimate

    (817, '2024-06-15', 111, 224, 20, 1200000),   -- SteelSeries Aerox 3
	(822, '2024-06-22', 111, 227, 8, 3200000),   --  SteelSeries Apex 7

    (818, '2024-06-18', 112, 232, 18, 4500000),  -- Bàn phím Corsair

    (819, '2024-06-20', 113, 240, 22, 1200000);   --Bàn phím HyperX

	-- Thêm,, cập nhật các sản phẩm có bảo hành 
	INSERT INTO BAOHANH (MASP, THOIGIAN, DIEUKIEN, NGAYBATDAU, NGAYHETHAN) 
	VALUES
		(111, 24, N'Chính hãng', '2023-01-15', '2025-01-15'),
		(113, 36, N'Bảo hành VIP', '2023-07-01', '2026-07-01'),
		(122, 12, N'Lỗi nhà sản xuất', '2024-03-10', '2025-03-10'),
		(131, 18, N'Chính hãng', '2023-09-20', '2025-03-20'),
		(133, 24, N'Bảo hành VIP', '2023-12-01', '2025-12-01'),
		(142, 30, N'Lỗi nhà sản xuất', '2023-05-05', '2026-11-05'),
		(151, 36, N'Bảo hành VIP', '2024-02-14', '2027-02-14'),
		(153, 12, N'Chính hãng', '2023-10-25', '2024-10-25'),
		(211, 24, N'Lỗi nhà sản xuất', '2024-01-01', '2026-01-01'),
		(214, 18, N'Bảo hành VIP', '2023-06-15', '2025-12-15'),
		(218, 24, N'Chính hãng', '2023-04-10', '2025-04-10'),
		(221, 12, N'Lỗi nhà sản xuất', '2024-02-05', '2025-02-05'),
		(225, 36, N'Bảo hành VIP', '2023-08-30', '2026-08-30'),
		(230, 24, N'Chính hãng', '2023-11-10', '2025-11-10'),
		(232, 30, N'Lỗi nhà sản xuất', '2023-07-20', '2026-01-20'),
		(237, 18, N'Chính hãng', '2024-01-15', '2025-07-15'),
		(239, 24, N'Bảo hành VIP', '2023-09-05', '2025-09-05');

		-- Thêm, cập nhật khuyến mãi 
		INSERT INTO KHUYENMAI (TENKM, GIAMGIA, LOAIKM, NGAYBATDAU, NGAYKETTHUC) 
		VALUES 
			(N'Giảm giá Tết', 10,'%', '2025-01-25', '2025-02-10'),
			(N'Khuyến mãi hè', 15, '%','2025-06-01', '2025-06-30' ),
			(N'Black Friday', 30, '%','2025-11-25', '2025-11-30'),
			(N'Giảm giá sinh viên', 500000, 'VND','2025-03-01', '2025-12-31'); -- Giảm trực tiếp 500k

		-- Thêm, cập nhật chi tiết - khuyến mãi

	INSERT INTO CHITIET_KHUYENMAI (MAKM, MASP)
	VALUES
		(1, 111), (1, 112), (1, 121), (1, 131), (1, 141), -- Giảm giá Tết
		(2, 113), (2, 122), (2, 132), (2, 142), (2, 152), -- Khuyến mãi hè
		(3, 123), (3, 133), (3, 143), (3, 153), (3, 152), -- Black Friday
		(4, 123), (4, 142), (4,220 ), (4, 230), (4, 239); -- Giảm giá sinh viên







	
	
