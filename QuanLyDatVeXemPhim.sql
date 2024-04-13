CREATE DATABASE QuanLyDatVeXemPhim;
USE QuanLyDatVeXemPhim;
DROP DATABASE QuanLyDatVeXemPhim;

--Tạo bảng Phim
DROP TABLE Phim;
CREATE TABLE Phim (
    id_phim INT PRIMARY KEY IDENTITY,
    tieu_de NVARCHAR(255),
    dao_dien NVARCHAR(255),
    the_loai NVARCHAR(255),
    ngay_phat_hanh DATE,
    thoi_luong INT,
    mo_ta NVARCHAR(MAX)
);
INSERT INTO Phim (tieu_de, dao_dien, the_loai, ngay_phat_hanh, thoi_luong, mo_ta)
VALUES 
(N'Phim 1', N'Dao dien 1', N'The loai 1', '2024-01-01', 120, N'Mô tả cho phim 1'),
(N'Phim 2', N'Dao dien 2', N'The loai 2', '2024-02-01', 110, N'Mô tả cho phim 2'),
(N'Phim 3', N'Dao dien 3', N'The loai 1', '2024-03-01', 130, N'Mô tả cho phim 3'),
(N'Phim 4', N'Dao dien 4', N'The loai 2', '2024-04-01', 115, N'Mô tả cho phim 4'),
(N'Phim 5', N'Dao dien 5', N'The loai 3', '2024-05-01', 125, N'Mô tả cho phim 5');
SELECT * FROM Phim

-- Tạo bảng RapChieu
DROP TABLE RapChieu;
CREATE TABLE RapChieu (
    id_rap INT PRIMARY KEY IDENTITY,
    ten_rap NVARCHAR(255),
    dia_diem NVARCHAR(255)
);
INSERT INTO RapChieu (ten_rap, dia_diem)
VALUES 
(N'Rạp 1', N'Địa điểm 1'),
(N'Rạp 2', N'Địa điểm 2'),
(N'Rạp 3', N'Địa điểm 3'),
(N'Rạp 4', N'Địa điểm 4'),
(N'Rạp 5', N'Địa điểm 5');
SELECT * FROM RapChieu

-- Tạo bảng SuatChieu
DROP TABLE SuatChieu;
CREATE TABLE SuatChieu (
    id_suat_chieu INT PRIMARY KEY IDENTITY,
    id_phim INT,
    id_rap INT,
    thoi_gian_bat_dau DATETIME,
	thoi_gian_ket_thuc DATETIME,
    FOREIGN KEY (id_phim) REFERENCES Phim(id_phim),
    FOREIGN KEY (id_rap) REFERENCES RapChieu(id_rap)
);
INSERT INTO SuatChieu (id_phim, id_rap, thoi_gian_bat_dau, thoi_gian_ket_thuc)
VALUES 
(1, 1, '2025-01-01 10:00:00', '2025-01-01 12:00:00'),
(2, 2, '2025-01-02 11:00:00', '2025-01-02 13:00:00'),
(3, 3, '2025-01-03 12:00:00', '2025-01-03 14:00:00'),
(4, 4, '2025-01-04 13:00:00', '2025-01-04 15:00:00'),
(5, 5, '2025-01-05 14:00:00', '2025-01-05 16:00:00');

-- Quý 1 (Tháng 1 - Tháng 3)
INSERT INTO SuatChieu (id_phim, id_rap, thoi_gian_bat_dau, thoi_gian_ket_thuc)
VALUES 
(1, 1, '2024-01-01 10:00:00', '2024-01-01 12:00:00'),
(2, 2, '2024-01-02 11:00:00', '2024-01-02 13:00:00'),
(3, 3, '2024-01-03 12:00:00', '2024-01-03 14:00:00'),
(4, 4, '2024-01-04 13:00:00', '2024-01-04 15:00:00'),
(5, 5, '2024-01-05 14:00:00', '2024-01-05 16:00:00');

-- Quý 2 (Tháng 4 - Tháng 6)
INSERT INTO SuatChieu (id_phim, id_rap, thoi_gian_bat_dau, thoi_gian_ket_thuc)
VALUES 
(1, 1, '2024-04-01 10:00:00', '2024-04-01 12:00:00'),
(2, 2, '2024-04-02 11:00:00', '2024-04-02 13:00:00'),
(3, 3, '2024-04-03 12:00:00', '2024-04-03 14:00:00'),
(4, 4, '2024-04-04 13:00:00', '2024-04-04 15:00:00'),
(5, 5, '2024-04-05 14:00:00', '2024-04-05 16:00:00');

-- Quý 3 (Tháng 7 - Tháng 9)
INSERT INTO SuatChieu (id_phim, id_rap, thoi_gian_bat_dau, thoi_gian_ket_thuc)
VALUES 
(1, 1, '2024-07-01 10:00:00', '2024-07-01 12:00:00'),
(2, 2, '2024-07-02 11:00:00', '2024-07-02 13:00:00'),
(3, 3, '2024-07-03 12:00:00', '2024-07-03 14:00:00'),
(4, 4, '2024-07-04 13:00:00', '2024-07-04 15:00:00'),
(5, 5, '2024-07-05 14:00:00', '2024-07-05 16:00:00');

-- Quý 4 (Tháng 10 - Tháng 12)
INSERT INTO SuatChieu (id_phim, id_rap, thoi_gian_bat_dau, thoi_gian_ket_thuc)
VALUES 
(1, 1, '2024-10-01 10:00:00', '2024-10-01 12:00:00'),
(2, 2, '2024-10-02 11:00:00', '2024-10-02 13:00:00'),
(3, 3, '2024-10-03 12:00:00', '2024-10-03 14:00:00'),
(4, 4, '2024-10-04 13:00:00', '2024-10-04 15:00:00'),
(5, 5, '2024-10-05 14:00:00', '2024-10-05 16:00:00');
SELECT * FROM SuatChieu

-- Tạo bảng KhachHang
DROP TABLE KhachHang
CREATE TABLE KhachHang (
    id_khach_hang INT PRIMARY KEY IDENTITY,
    ten_khach_hang NVARCHAR(255),
    email NVARCHAR(255),
    so_dien_thoai NVARCHAR(20),
	ve_da_mua NVARCHAR(MAX)
);
INSERT INTO KhachHang (ten_khach_hang, email, so_dien_thoai, ve_da_mua)
VALUES 
(N'Khách hàng 1', 'khachhang1@example.com', '1234567890', NULL),
(N'Khách hàng 2', 'khachhang2@example.com', '0987654321', NULL),
(N'Khách hàng 3', 'khachhang3@example.com', '1112223333', NULL),
(N'Khách hàng 4', 'khachhang4@example.com', '4445556666', NULL),
(N'Khách hàng 5', 'khachhang5@example.com', '7778889999', NULL);
SELECT * FROM KhachHang
SELECT ve_da_mua FROM KhachHang WHERE id_khach_hang = 1

-- Tạo bảng Ve
DROP TABLE Ve
CREATE TABLE Ve (
    id_ve INT PRIMARY KEY IDENTITY,
    id_suat_chieu INT,
    loai_ve NVARCHAR(50),
    so_luong INT,
    don_gia DECIMAL(10,2),
    FOREIGN KEY (id_suat_chieu) REFERENCES SuatChieu(id_suat_chieu),
);

-- Tạo bảng VeDaBan
DROP TABLE VeDaBan
CREATE TABLE VeDaBan (
    id_ve_da_ban INT PRIMARY KEY IDENTITY,
    id_suat_chieu INT,
    id_khach_hang INT,
    loai_ve NVARCHAR(50),
    so_luong INT,
    gia DECIMAL(10,2),
    ngay_mua DATE,
    FOREIGN KEY (id_suat_chieu) REFERENCES SuatChieu(id_suat_chieu),
    FOREIGN KEY (id_khach_hang) REFERENCES KhachHang(id_khach_hang)
);
SELECT * FROM VeDaBan

-----TẠO TRIGGER TỰ ĐỘNG INSERT GIÁ VÉ --------
DROP TRIGGER Tu_Dong_Dien_Gia 
GO
CREATE TRIGGER Tu_Dong_Dien_Gia
ON Ve
AFTER INSERT
AS
BEGIN
    DECLARE @id_suat_chieu INT, @loai_ve NVARCHAR(50), @don_gia DECIMAL(10,2);

    -- Lấy thông tin về loại vé và id suất chiếu từ bảng inserted
    DECLARE cursor_inserted CURSOR FOR
    SELECT id_suat_chieu, loai_ve FROM inserted;

    OPEN cursor_inserted;
    FETCH NEXT FROM cursor_inserted INTO @id_suat_chieu, @loai_ve;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Xác định giá vé dựa trên loại vé
        IF @loai_ve = N'Vé thường' 
            SET @don_gia = 100000; -- Giả sử giá vé thường là 100000 VND
        ELSE IF @loai_ve = N'Vé VIP' 
            SET @don_gia = 150000; -- Giả sử giá vé VIP là 150000 VND

        -- Cập nhật giá vé vào bảng Ve
        UPDATE Ve
        SET don_gia = @don_gia
        WHERE id_suat_chieu = @id_suat_chieu AND loai_ve = @loai_ve;

        FETCH NEXT FROM cursor_inserted INTO @id_suat_chieu, @loai_ve;
    END;

    CLOSE cursor_inserted;
    DEALLOCATE cursor_inserted;
END;
--Chèn dữ liệu vào bảng Ve sau khi chạy trigger để hiện giá vé
INSERT INTO Ve (id_suat_chieu, loai_ve, so_luong) 
VALUES 
(1, N'Vé thường', 20),
(2, N'Vé VIP', 10),
(3, N'Vé thường', 30),
(4, N'Vé thường', 20),
(5, N'Vé VIP', 10),
(6, N'Vé thường', 20),
(7, N'Vé VIP', 10),
(8, N'Vé thường', 30),
(9, N'Vé thường', 20),
(10, N'Vé VIP', 10),
(11, N'Vé thường', 20),
(12, N'Vé VIP', 10),
(13, N'Vé thường', 30),
(14, N'Vé thường', 20),
(15, N'Vé VIP', 10),
(16, N'Vé thường', 20),
(17, N'Vé thường', 30),
(18, N'Vé VIP', 10),
(19, N'Vé thường', 20),
(20, N'Vé VIP', 10),
(21, N'Vé thường', 20),
(22, N'Vé thường', 30),
(23, N'Vé VIP', 10),
(24, N'Vé thường', 20),
(25, N'Vé VIP', 10);
SELECT * FROM Ve;

------TRIGGER TÍNH TỔNG VÉ VÀ TỔNG TIỀN ĐÃ BÁN ĐƯỢC ------
DROP TRIGGER Trig_TinhTongVeDaBan
GO
CREATE TRIGGER Trig_TinhTongVeDaBan
ON VeDaBan
AFTER INSERT, DELETE
AS
BEGIN
    DECLARE @tong_so_ve_thuong INT, @tong_so_ve_vip INT, @tong_tien_da_ban DECIMAL(10,2);

    -- Tính tổng số vé thường đã bán--
    SELECT @tong_so_ve_thuong = ISNULL(SUM(CASE WHEN loai_ve = N'Vé thường' THEN so_luong ELSE 0 END), 0)
    FROM VeDaBan;

    -- Tính tổng số vé VIP đã bán--
    SELECT @tong_so_ve_vip = ISNULL(SUM(CASE WHEN loai_ve = N'Vé VIP' THEN so_luong ELSE 0 END), 0)
    FROM VeDaBan;

    -- Tính tổng số tiền đã bán--
    SELECT @tong_tien_da_ban = ISNULL(SUM(gia * so_luong), 0)
    FROM VeDaBan;

    -- Cập nhật thông tin vào bảng tổng kết (hoặc hiển thị thông tin)--
    -- Ở đây chúng ta sẽ hiển thị thông tin ra màn hình--
    PRINT N'Tổng số vé thường đã bán: ' + CAST(@tong_so_ve_thuong AS NVARCHAR(10));
    PRINT N'Tổng số vé VIP đã bán: ' + CAST(@tong_so_ve_vip AS NVARCHAR(10));
    PRINT N'Tổng số tiền đã bán: ' + CAST(@tong_tien_da_ban AS NVARCHAR(20));
END;

------THỦ TỤC THÊM THÔNG TIN KHÁCH HÀNG------
DROP PROCEDURE ThemThongTinKhachHang
GO
CREATE PROCEDURE ThemThongTinKhachHang
    @ten_khach_hang NVARCHAR(255),
    @email NVARCHAR(255),
    @so_dien_thoai NVARCHAR(20),
    @ve_da_mua INT
AS
BEGIN
    IF @ten_khach_hang IS NULL OR @email IS NULL
    BEGIN
        PRINT N'Thiếu thông tin khách hàng';
        RETURN;
    END;

    IF EXISTS (SELECT 1 FROM KhachHang WHERE email = @email)
    BEGIN
        PRINT N'Thông tin khách hàng đã tồn tại';
        RETURN;
    END;

    INSERT INTO KhachHang (ten_khach_hang, email, so_dien_thoai, ve_da_mua)
    VALUES (@ten_khach_hang, @email, @so_dien_thoai, @ve_da_mua);

    PRINT N'Thêm thông tin khách hàng thành công';
END;

EXEC ThemThongTinKhachHang
    @ten_khach_hang = N'Khách hàng 6',
    @email = N'khachhang6@example.com',
    @so_dien_thoai = N'0123456789',
    @ve_da_mua = NULL;

EXEC ThemThongTinKhachHang
    @ten_khach_hang = NULL,
    @email = N'khachhang7@example.com',
    @so_dien_thoai = N'0123456789',
    @ve_da_mua = NULL;

EXEC ThemThongTinKhachHang
    @ten_khach_hang = N'Khách hàng 8',
    @email = N'khachhang6@example.com',
    @so_dien_thoai = N'0123456789',
    @ve_da_mua = NULL;
SELECT * FROM KhachHang

---------TẠO THỦ TỤC MUA VÉ XEM PHIM --------------------
DROP PROCEDURE MuaVeXemPhim
GO
CREATE PROCEDURE MuaVeXemPhim
    @id_suat_chieu INT,
    @id_khach_hang INT, 
    @loai_ve NVARCHAR(50),
    @so_luong INT,
    @ngay_mua DATE
AS
BEGIN
    DECLARE @so_luong_con_lai INT;
    DECLARE @gia_ve DECIMAL(10,2);
    DECLARE @thu_trong_tuan INT;

    SET @thu_trong_tuan = DATEPART(WEEKDAY, @ngay_mua);

    
    IF @thu_trong_tuan BETWEEN 2 AND 6 
    BEGIN
        IF @loai_ve = N'Vé thường' 
            SET @gia_ve = 100000;
        ELSE IF @loai_ve = N'Vé VIP' 
            SET @gia_ve = 150000; 
        ELSE
        BEGIN
            PRINT N'Loại vé không hợp lệ';
            RETURN;
        END;
    END
    ELSE 
    BEGIN
        IF @loai_ve = N'Vé thường' 
            SET @gia_ve = 120000; 
        ELSE IF @loai_ve = N'Vé VIP' 
            SET @gia_ve = 170000; 
        ELSE
        BEGIN
            PRINT N'Loại vé không hợp lệ';
            RETURN;
        END;
    END;

    
    SELECT @so_luong_con_lai = SUM(V.so_luong)
    FROM Ve V
    WHERE V.id_suat_chieu = @id_suat_chieu
    AND V.loai_ve = @loai_ve;

   
    IF @so_luong_con_lai >= @so_luong
    BEGIN
        BEGIN TRANSACTION;
      
        INSERT INTO VeDaBan (id_suat_chieu, id_khach_hang, loai_ve, so_luong, gia, ngay_mua)
        VALUES (@id_suat_chieu, @id_khach_hang, @loai_ve, @so_luong, @gia_ve, @ngay_mua);

       
        UPDATE KhachHang
        SET ve_da_mua = CONCAT(ve_da_mua, 
                               ', {"id_suat_chieu": ', CAST(@id_suat_chieu AS NVARCHAR(10)), 
                               ', "loai_ve": "', @loai_ve, 
                               '", "so_luong": ', CAST(@so_luong AS NVARCHAR(10)), 
                               ', "gia": ', CAST(@gia_ve AS NVARCHAR(10)), 
                               ', "ngay_mua": "',@ngay_mua
                              )
        WHERE id_khach_hang = @id_khach_hang;

       
        UPDATE Ve
        SET so_luong = so_luong - @so_luong
        WHERE id_suat_chieu = @id_suat_chieu
        AND loai_ve = @loai_ve;

        
        IF @so_luong_con_lai = @so_luong
        BEGIN
            DELETE FROM Ve
            WHERE id_suat_chieu = @id_suat_chieu
            AND loai_ve = @loai_ve;
        END

        COMMIT TRANSACTION;
        PRINT N'Mua vé thành công';
    END
    ELSE
    BEGIN
        PRINT N'Không đủ vé để mua hoặc không có vé loại cần mua';
    END;
END;
--chạy thủ tục----
EXEC MuaVeXemPhim @id_suat_chieu = 1, @id_khach_hang = 1, @loai_ve = N'Vé thường', @so_luong = 2, @ngay_mua = '2025-01-01'
EXEC MuaVeXemPhim @id_suat_chieu = 13, @id_khach_hang = 2, @loai_ve = N'Vé thường', @so_luong = 3, @ngay_mua = '2024-04-01'
EXEC MuaVeXemPhim @id_suat_chieu = 18, @id_khach_hang = 3, @loai_ve = N'Vé VIP', @so_luong = 4, @ngay_mua = '2024-07-01'
--@ngay_mua ở dòng exec thứ 4 là 05/10/2024, là cuối tuần nên giá vé là 120k
EXEC MuaVeXemPhim @id_suat_chieu = 25, @id_khach_hang = 4, @loai_ve = N'Vé VIP', @so_luong = 5, @ngay_mua = '2024-10-05' 
EXEC MuaVeXemPhim @id_suat_chieu = 5, @id_khach_hang = 5, @loai_ve = N'Vé VIP', @so_luong = 2, @ngay_mua = '2025-01-01'
SELECT * FROM SuatChieu
SELECT * FROM VeDaBan
SELECT * FROM Ve
SELECT * FROM KhachHang

--TẠO THỦ TỤC TÍNH DOANH THU THEO PHIM VÀ QUÝ
DROP PROCEDURE DoanhThuTheoPhimVaQuy
GO
CREATE PROCEDURE DoanhThuTheoPhimVaQuy
    @nam INT,
    @quy INT
AS
BEGIN
    DECLARE @ngay_bat_dau DATE, @ngay_ket_thuc DATE;
    IF @quy = 1 
    BEGIN
        SET @ngay_bat_dau = DATEFROMPARTS(@nam, 1, 1);
        SET @ngay_ket_thuc = DATEFROMPARTS(@nam, 3, 31);
    END
    ELSE IF @quy = 2 
    BEGIN
        SET @ngay_bat_dau = DATEFROMPARTS(@nam, 4, 1);
        SET @ngay_ket_thuc = DATEFROMPARTS(@nam, 6, 30);
    END
    ELSE IF @quy = 3 
    BEGIN
        SET @ngay_bat_dau = DATEFROMPARTS(@nam, 7, 1);
        SET @ngay_ket_thuc = DATEFROMPARTS(@nam, 9, 30);
    END
    ELSE IF @quy = 4 
    BEGIN
        SET @ngay_bat_dau = DATEFROMPARTS(@nam, 10, 1);
        SET @ngay_ket_thuc = DATEFROMPARTS(@nam, 12, 31);
    END
    ELSE
    BEGIN
        PRINT 'Quý không hợp lệ.';
        RETURN;
    END;

    -- Tạo bảng tạm thời để lưu thông tin doanh thu của từng bộ phim
    CREATE TABLE #DoanhThuPhim (
        id_phim INT,
        doanh_thu DECIMAL(10, 2)
    );

    -- Tính doanh thu của từng bộ phim theo quý
    INSERT INTO #DoanhThuPhim (id_phim, doanh_thu)
    SELECT 
        SC.id_phim,
        SUM(VDB.so_luong * VDB.gia) AS doanh_thu
    FROM 
        VeDaBan VDB
    INNER JOIN 
        SuatChieu SC ON VDB.id_suat_chieu = SC.id_suat_chieu
    WHERE 
        VDB.ngay_mua BETWEEN @ngay_bat_dau AND @ngay_ket_thuc
    GROUP BY 
        SC.id_phim;

    -- Hiển thị kết quả
    SELECT 
        P.id_phim,
        P.tieu_de AS ten_phim,
        DTP.doanh_thu
    FROM 
        #DoanhThuPhim DTP
    INNER JOIN 
        Phim P ON DTP.id_phim = P.id_phim;

    -- Xóa bảng tạm thời
    DROP TABLE #DoanhThuPhim;
END;
EXEC DoanhThuTheoPhimVaQuy @nam = 2025, @quy = 1;
EXEC DoanhThuTheoPhimVaQuy @nam = 2024, @quy = 2;
EXEC DoanhThuTheoPhimVaQuy @nam = 2024, @quy = 3;
EXEC DoanhThuTheoPhimVaQuy @nam = 2024, @quy = 4;
SELECT * FROM VeDaBan

---------DOANH THU THEO QUÝ CỦA CẢ DANH SÁCH--------------
DROP PROCEDURE DoanhThuTheoQuy
GO
CREATE PROCEDURE DoanhThuTheoQuy
    @nam INT,
    @quy INT
AS
BEGIN
    DECLARE @ngay_bat_dau DATE, @ngay_ket_thuc DATE;

    -- Xác định ngày bắt đầu và kết thúc của quý
    IF @quy = 1 
    BEGIN
        SET @ngay_bat_dau = DATEFROMPARTS(@nam, 1, 1);
        SET @ngay_ket_thuc = DATEFROMPARTS(@nam, 3, 31);
    END
    ELSE IF @quy = 2 
    BEGIN
        SET @ngay_bat_dau = DATEFROMPARTS(@nam, 4, 1);
        SET @ngay_ket_thuc = DATEFROMPARTS(@nam, 6, 30);
    END
    ELSE IF @quy = 3 
    BEGIN
        SET @ngay_bat_dau = DATEFROMPARTS(@nam, 7, 1);
        SET @ngay_ket_thuc = DATEFROMPARTS(@nam, 9, 30);
    END
    ELSE IF @quy = 4 
    BEGIN
        SET @ngay_bat_dau = DATEFROMPARTS(@nam, 10, 1);
        SET @ngay_ket_thuc = DATEFROMPARTS(@nam, 12, 31);
    END
    ELSE
    BEGIN
        PRINT 'Quý không hợp lệ.';
        RETURN;
    END;

    -- Tính tổng doanh thu từ số tiền bán vé trong quý
    SELECT 
        SUM(VDB.so_luong * VDB.gia) AS doanh_thu
    FROM 
        VeDaBan VDB
    WHERE 
        VDB.ngay_mua BETWEEN @ngay_bat_dau AND @ngay_ket_thuc;
END;

EXEC DoanhThuTheoQuy @nam = 2024, @quy = 4; 
EXEC DoanhThuTheoQuy @nam = 2024, @quy = 3; 
EXEC DoanhThuTheoQuy @nam = 2024, @quy = 2; 
EXEC DoanhThuTheoQuy @nam = 2024, @quy = 1; 
EXEC DoanhThuTheoQuy @nam = 2025, @quy = 1; 
SELECT * FROM VeDaBan

GO
CREATE PROCEDURE TinhTongTienVeBanTheoNam
AS
BEGIN
    SELECT YEAR(vdb.ngay_mua) AS Nam, SUM(vdb.gia * so_luong) AS TongTienVeBan
    FROM VeDaBan vdb
    GROUP BY YEAR(vdb.ngay_mua);
END;
EXEC TinhTongTienVeBanTheoNam;

------THỦ TỤC THỂ HIỆN BỘ PHIM DỰA VÀO NGÀY PHÁT HÀNH
GO
CREATE PROCEDURE GetPhimByNgayPhatHanh
    @start_date DATE,
    @end_date DATE
AS
BEGIN
    SELECT *
    FROM Phim
    WHERE ngay_phat_hanh BETWEEN @start_date AND @end_date;
END;
EXEC GetPhimByNgayPhatHanh @start_date = '2024-01-01', @end_date = '2024-03-01';

-------VIEW-------
--View để hiển thị thông tin chi tiết của mỗi suất chiếu, bao gồm thông tin về phim, rap chieu và thoi gian bat dau, ket thuc
DROP VIEW ChiTietSuatChieu
GO
CREATE VIEW ChiTietSuatChieu AS
SELECT SC.id_suat_chieu, P.tieu_de AS ten_phim, P.dao_dien, P.the_loai, P.ngay_phat_hanh, P.thoi_luong,
       RC.ten_rap, RC.dia_diem, SC.thoi_gian_bat_dau, SC.thoi_gian_ket_thuc
FROM SuatChieu SC
JOIN Phim P ON SC.id_phim = P.id_phim
JOIN RapChieu RC ON SC.id_rap = RC.id_rap;
GO
SELECT * FROM ChiTietSuatChieu;

--View để hiển thị tổng số vé đã bán cho mỗi suất chiếu
DROP VIEW TongVeDaBan
GO
CREATE VIEW TongVeDaBan AS
SELECT id_suat_chieu, SUM(so_luong) AS tong_so_ve_da_ban, loai_ve as[loại vé] 
FROM VeDaBan
GROUP BY id_suat_chieu,loai_ve
GO
SELECT * FROM TongVeDaBan;

--View để hiển thị tổng số vé thường và vé VIP đã bán cho mỗi suất chiếu:--
DROP VIEW TongVeDaBanTheoLoai
GO
CREATE VIEW TongVeDaBanTheoLoai AS
SELECT id_suat_chieu,
       SUM(CASE WHEN loai_ve = N'Vé thường' THEN so_luong ELSE 0 END) AS tong_so_ve_thuong,
       SUM(CASE WHEN loai_ve = N'Vé VIP' THEN so_luong ELSE 0 END) AS tong_so_ve_vip
FROM VeDaBan
GROUP BY id_suat_chieu;
GO
SELECT * FROM TongVeDaBanTheoLoai;

--View để hiển thị thông tin vé đã mua của từng khách hàng:
DROP VIEW ThongTinVeDaMua
GO
CREATE VIEW ThongTinVeDaMua AS
SELECT 
    VDB.id_ve_da_ban,
    RC.ten_rap,
    RC.dia_diem,
    SC.thoi_gian_bat_dau,
    SC.thoi_gian_ket_thuc,
    VDB.loai_ve,
    VDB.so_luong,
    VDB.gia,
    KH.ten_khach_hang,
    KH.email,
    KH.so_dien_thoai
FROM 
    VeDaBan VDB
JOIN 
    SuatChieu SC ON VDB.id_suat_chieu = SC.id_suat_chieu
JOIN 
    RapChieu RC ON SC.id_rap = RC.id_rap
JOIN 
    KhachHang KH ON VDB.id_khach_hang = KH.id_khach_hang;
GO
SELECT * FROM ThongTinVeDaMua

--View để hiển thị tổng số vé đã mua và tổng tiền đã bán cho từng khách hàng:
DROP VIEW TongVeTienDaBanTheoKhachHang
GO
ALTER VIEW TongVeTienDaBanTheoKhachHang AS
SELECT id_khach_hang,
       SUM(gia * so_luong) AS tong_tien_da_ban
FROM VeDaBan vdb
GROUP BY id_khach_hang;
GO
SELECT * FROM TongVeTienDaBanTheoKhachHang

--View để hiển thị vé đã mua của một khách hàng dựa trên ID của họ
DROP VIEW VeDaMuaKhachHang
GO
CREATE VIEW VeDaMuaKhachHang AS
SELECT 
    KH.id_khach_hang,
    KH.ten_khach_hang,
    KH.email,
    KH.so_dien_thoai,
    VDB.id_ve_da_ban,
    VDB.id_suat_chieu,
    SC.thoi_gian_bat_dau,
    SC.thoi_gian_ket_thuc,
    VDB.loai_ve,
    VDB.so_luong,
    VDB.gia
FROM 
    KhachHang KH
JOIN 
    VeDaBan VDB ON KH.id_khach_hang = VDB.id_khach_hang
JOIN 
    SuatChieu SC ON VDB.id_suat_chieu = SC.id_suat_chieu;
GO
SELECT * FROM VeDaMuaKhachHang WHERE id_khach_hang = 1;


