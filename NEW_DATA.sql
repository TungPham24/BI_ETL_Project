USE Webtower9
GO
--Khachhang
update KhachHang_WebTower9 set TenKH = 'Phan Kim Tien', NgayCapNhat = GETDATE() where MaKH = '03YD'
update KhachHang_WebTower9 set TenNuoc = 'Jersey - Mississippi', NgayCapNhat = GETDATE() where MaKH = '064P'
insert into KhachHang_WebTower9(MaKH, TenKH, TenNuoc, NgayTao, NgayCapNhat, TrangThai, GioiTinh, SoThich, NgheNghiep)
values ('001A','Nguyen Minh Tu', 'Vietnam', GETDATE(), GETDATE(), 1, 'F','Catwalk', 'Model')
insert into KhachHang_WebTower9(MaKH, TenKH, TenNuoc, NgayTao, NgayCapNhat, TrangThai, GioiTinh, SoThich, NgheNghiep)
values ('001B','Thao Nhi Le', 'Vietnam', GETDATE(), GETDATE(), 1, 'F','Online', 'KOL')

--Hoadon

insert into HoaDon_WebTower9(MaHD,MaKH,MaCH,NgayBan,NgayCapNhat,TrangThai)
values ('001A','001A','YWA4',GETDATE(), GETDATE(), 1)
insert into HoaDon_WebTower9(MaHD,MaKH,MaCH,NgayBan,NgayCapNhat,TrangThai)
values ('001B','001B','NH4E',GETDATE(), GETDATE(), 1)
insert into HoaDon_WebTower9(MaHD,MaKH,MaCH,NgayBan,NgayCapNhat,TrangThai)
values ('001C','IE87','L31J',GETDATE(), GETDATE(), 1)

--CHITIETHOADON

insert into ChiTietHoaDon_WebTower9(machitiet,MaHD,MaSP,NgayTao,NgayCapNhat,TrangThai)
values (2001,'001A','RUVT',GETDATE(), GETDATE(), 1)
insert into ChiTietHoaDon_WebTower9(machitiet,MaHD,MaSP,NgayTao,NgayCapNhat,TrangThai)
values (2002,'001B','RUVT',GETDATE(), GETDATE(), 1)
insert into ChiTietHoaDon_WebTower9(machitiet,MaHD,MaSP,NgayTao,NgayCapNhat,TrangThai)
values (2003,'001C','RUVT',GETDATE(), GETDATE(), 1)

USE Jupiter
GO
---lOAICUAHANG:
insert into LoaiCuaHang_Jupiter(MaLoaiCH,TenLoaiCH,NgayTao,NgayCapNhat,TrangThai)
values ('001A','Maroon', GETDATE(),GETDATE(), 1)
insert into LoaiCuaHang_Jupiter(MaLoaiCH,TenLoaiCH,NgayTao,NgayCapNhat,TrangThai)
values ('001B','PaleVioletRed', GETDATE(),GETDATE(), 1)
insert into LoaiCuaHang_Jupiter(MaLoaiCH,TenLoaiCH,NgayTao,NgayCapNhat,TrangThai)
values ('001C','Darkorange', GETDATE(),GETDATE(), 1)

---cuahang
update CuaHang_Jupiter set LoaiCH = '001A', NgayCapNhat = GETDATE() where MaCH = '008T'
update CuaHang_Jupiter set LoaiCH = '001B', NgayCapNhat = GETDATE() where MaCH = '01NK'
update CuaHang_Jupiter set LoaiCH = '001C', NgayCapNhat = GETDATE() where MaCH = '1FFM'

--loaisanpham
insert into LoaiSanPham_Jupiter(MaLoaiSP,TenLoaiSP,NgayTao,NgayCapNhat,TrangThai)
values ('001A','Little Rock', GETDATE(),GETDATE(), 1)
insert into LoaiSanPham_Jupiter(MaLoaiSP,TenLoaiSP,NgayTao,NgayCapNhat,TrangThai)
values ('001B','Des Moines', GETDATE(),GETDATE(), 1)
insert into LoaiSanPham_Jupiter(MaLoaiSP,TenLoaiSP,NgayTao,NgayCapNhat,TrangThai)
values ('001C','Lincoln', GETDATE(),GETDATE(), 1)

--sanpham
update [dbo].[SanPham_Jupiter] set GiaSP = 15428, NgayCapNhap = GETDATE() where MaSP = '05M'
update [dbo].[SanPham_Jupiter] set LoaiSP = 'E8BM', NgayCapNhap = GETDATE() where MaSP = '0B1T'

--Nuoc
insert into Nuoc_Jupiter (MaNuoc,TenNuoc,NgayTao,NgayCapNhat,TrangThai)
values ('090A','VietNam',GETDATE(),GETDATE(),1)
insert into Nuoc_Jupiter (MaNuoc,TenNuoc,NgayTao,NgayCapNhat,TrangThai)
values ('090B','China',GETDATE(),GETDATE(),1)
insert into Nuoc_Jupiter (MaNuoc,TenNuoc,NgayTao,NgayCapNhat,TrangThai)
values ('090C','Korea',GETDATE(),GETDATE(),1)


USE Jade
GO
--Khachhang
update KhachHang_Jade set TenKH = 'Phan Kim Tien', NgayCapNhat = GETDATE() where MaKH = '008V'
update KhachHang_Jade set DiaChi = 'Vietnam', NgayCapNhat = GETDATE() where MaKH = '00XS'
insert into KhachHang_Jade(MaKH, TenKH, DiaChi, NgayTao, NgayCapNhat, TrangThai, GioiTinh, SoThich, NgheNghiep)
values ('001A','Hoang Thi Thuy', 'Vietnam', GETDATE(), GETDATE(), 1, 'F','Catwalk', 'Model')
insert into KhachHang_Jade(MaKH, TenKH, DiaChi, NgayTao, NgayCapNhat, TrangThai, GioiTinh, SoThich, NgheNghiep)
values ('001B','Mai Kim Tri', 'Vietnam', GETDATE(), GETDATE(), 1, 'F','Online', 'KOL')


--Hoadon

insert into HoaDon_Jade(MaHD,MaKH,MaCH,NgayBan,NgayCapNhat,TrangThai)
values ('001A','00XS','01NK',GETDATE(), GETDATE(), 1)
insert into HoaDon_Jade(MaHD,MaKH,MaCH,NgayBan,NgayCapNhat,TrangThai)
values ('001B','001B','1FFM',GETDATE(), GETDATE(), 1)
insert into HoaDon_Jade(MaHD,MaKH,MaCH,NgayBan,NgayCapNhat,TrangThai)
values ('001C','08CL','1FSY',GETDATE(), GETDATE(), 1)

--CHITIETHOADON

insert into ChiTietHoaDon_Jade(machitiet,MaHD,MaSP,NgayTao,NgayCapNhat,TrangThai)
values (2001,'001A','0C10',GETDATE(), GETDATE(), 1)
insert into ChiTietHoaDon_Jade(machitiet,MaHD,MaSP,NgayTao,NgayCapNhat,TrangThai)
values (2002,'001B','0DLE',GETDATE(), GETDATE(), 1)
insert into ChiTietHoaDon_Jade(machitiet,MaHD,MaSP,NgayTao,NgayCapNhat,TrangThai)
values (2003,'0GDQ','ES3N',GETDATE(), GETDATE(), 1)
