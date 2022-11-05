--SCRIPT EDIT DB

USE METADATA
GO

INSERT INTO DDS (TenBang,NgayCapNhat) VALUES ('Fact', '2011-05-17 22:11:37.423')
GO
UPDATE DDS SET NgayCapNhat = '05/17/2011'
GO
update Data_Flow SET NgayCapNhat = '05/17/2011'
GO

USE DDS
GO

CREATE PROC insert_ngaythang @ngay int, @thang int, @nam int
AS
BEGIN TRAN
	BEGIN TRY
		INSERT INTO ThangTrongNam (Thang, Nam) VALUES (@thang, @nam)

		DECLARE @idthang INT

		SELECT @idthang = IDThang FROM ThangTrongNam WHERE Thang = @thang AND Nam = @nam

		INSERT INTO NgayTrongThang (Ngay, IDThang) VALUES (@ngay, @idthang)
	END TRY
	BEGIN CATCH
		PRINT('LỖI HỆ THỐNG')
		ROLLBACK TRAN
	END CATCH
COMMIT TRAN

GO

USE Stage
GO

TRUNCATE TABLE KhachHang_Jade_stage

TRUNCATE TABLE CHITIETHOADON_JADE_STAGE

TRUNCATE TABLE HOADON_JADE_STAGE

USE NDS
GO

DELETE FROM ChiTietHoaDon WHERE NgayCapNhat > '1/1/2020'
DELETE FROM [dbo].[CuaHang] WHERE NgayCapNhat > '1/1/2020'
DELETE FROM ChiTietHoaDon WHERE NgayCapNhat > '1/1/2020'
DELETE FROM [dbo].[HoaDon] WHERE NgayCapNhat > '1/1/2020'
DELETE FROM [dbo].[KhachHang] WHERE NgayCapNhat > '1/1/2020'
DELETE FROM [dbo].[LoaiCuaHang] WHERE NgayCapNhat > '1/1/2020'
DELETE FROM [dbo].[LoaiSanPham] WHERE NgayCapNhat > '1/1/2020'
DELETE FROM [dbo].[NguonDuLieu] WHERE NgayCapNhat > '1/1/2020'
DELETE FROM [dbo].[Nuoc] WHERE NgayCapNhat > '1/1/2020'
DELETE FROM [dbo].[SanPham] WHERE NgayCapNhat > '1/1/2020'