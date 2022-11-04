--SCRIPT EDIT DB

USE METADATA
GO

INSERT INTO DDS (TenBang,NgayCapNhat) VALUES ('Fact', '2011-05-17 22:11:37.423')
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

